const UUID = /^[0-9a-f]{8}-[0-9a-f]{4}-[1-8][0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}$/i;
const B64URL_32 = /^[A-Za-z0-9_-]{43}$/;
const MAX_BODY = 64 * 1024;
const MAX_URL = 2048;
const JOIN_ALPHABET = '23456789ABCDEFGHJKLMNPQRSTUVWXYZ';
const MAX_MERGE_FAMILIES = 8;
const MAX_MERGE_SNAPSHOTS = 500;

interface Env {
  R2_BUCKET: R2Bucket;
  REGISTRATION_COORDINATOR: DurableObjectNamespace<RegistrationCoordinator>;
  JOIN_CODE_KEY: string;
  GOOGLE_CLIENT_ID?: string;
  GOOGLE_CLIENT_SECRET?: string;
  GITHUB_CLIENT_ID?: string;
  GITHUB_CLIENT_SECRET?: string;
  FETCH?: typeof fetch;
}
interface RecordItem {
  id: string; name: string; episode: string;
  progressInMillis: number; durationInMillis: number;
  createdAt: number; modifiedAt: number;
  videoPageUrl: string; detailPageUrl: string; posterUrl: string;
}
interface Snapshot {
  schemaVersion: 1; familyId: string; deviceId: string; updatedAt: number; records: RecordItem[];
}

const json = (data: unknown, status = 200) => new Response(JSON.stringify(data), { status, headers: { 'content-type': 'application/json; charset=utf-8', 'cache-control': 'no-store' } });
const error = (status: number, code: string) => json({ error: code }, status);
const validId = (value: string) => UUID.test(value);

function decodeSecret(value: unknown): Uint8Array | null {
  if (typeof value !== 'string' || !B64URL_32.test(value)) return null;
  try {
    const raw = atob(value.replace(/-/g, '+').replace(/_/g, '/') + '=');
    const bytes = Uint8Array.from(raw, c => c.charCodeAt(0));
    return bytes.length === 32 && btoa(String.fromCharCode(...bytes)).replace(/\+/g, '-').replace(/\//g, '_').replace(/=+$/, '') === value ? bytes : null;
  } catch { return null; }
}

async function sha256(bytes: Uint8Array): Promise<Uint8Array> {
  return new Uint8Array(await crypto.subtle.digest('SHA-256', bytes));
}
function base64url(bytes: Uint8Array): string { return btoa(String.fromCharCode(...bytes)).replace(/\+/g, '-').replace(/\//g, '_').replace(/=+$/, ''); }
function normalizeJoinCode(value: unknown): string | null {
  if (typeof value !== 'string') return null;
  const normalized = value.toUpperCase().replace(/[ -]/g, '');
  return /^[23456789ABCDEFGHJKLMNPQRSTUVWXYZ]{16}$/.test(normalized) ? normalized : null;
}
function newJoinCode(): string {
  const bytes = crypto.getRandomValues(new Uint8Array(10));
  let accumulator = 0, bits = 0, result = '';
  for (const byte of bytes) {
    accumulator = (accumulator << 8) | byte; bits += 8;
    while (bits >= 5) { bits -= 5; result += JOIN_ALPHABET[(accumulator >> bits) & 31]; }
  }
  return result.match(/.{4}/g)!.join('-');
}
async function encryptionKey(env: Env): Promise<CryptoKey> {
  const raw = decodeSecret(env.JOIN_CODE_KEY);
  if (!raw) throw new Error('join code key unavailable');
  return crypto.subtle.importKey('raw', raw, 'AES-GCM', false, ['encrypt', 'decrypt']);
}
async function encryptJoinPayload(value: unknown, env: Env): Promise<string> {
  const iv = crypto.getRandomValues(new Uint8Array(12));
  const ciphertext = new Uint8Array(await crypto.subtle.encrypt({ name: 'AES-GCM', iv }, await encryptionKey(env), new TextEncoder().encode(JSON.stringify(value))));
  const combined = new Uint8Array(iv.length + ciphertext.length); combined.set(iv); combined.set(ciphertext, iv.length);
  return base64url(combined);
}
async function decryptJoinPayload(value: unknown, env: Env): Promise<{ familyId: string; familySecret: string } | null> {
  if (typeof value !== 'string' || !/^[A-Za-z0-9_-]{60,200}$/.test(value)) return null;
  try {
    const rawText = atob(value.replace(/-/g, '+').replace(/_/g, '/') + '='.repeat((4 - value.length % 4) % 4));
    const raw = Uint8Array.from(rawText, c => c.charCodeAt(0));
    if (raw.length < 29) return null;
    const plain = await crypto.subtle.decrypt({ name: 'AES-GCM', iv: raw.slice(0, 12) }, await encryptionKey(env), raw.slice(12));
    const payload = JSON.parse(new TextDecoder().decode(plain));
    return validId(payload?.familyId) && decodeSecret(payload?.familySecret) ? payload : null;
  } catch { return null; }
}
async function decryptFamilySecret(value: unknown, env: Env): Promise<string | null> {
  if (typeof value !== 'string' || !/^[A-Za-z0-9_-]{60,200}$/.test(value)) return null;
  try {
    const rawText = atob(value.replace(/-/g, '+').replace(/_/g, '/') + '='.repeat((4 - value.length % 4) % 4));
    const raw = Uint8Array.from(rawText, c => c.charCodeAt(0));
    if (raw.length < 29) return null;
    const plain = await crypto.subtle.decrypt({ name: 'AES-GCM', iv: raw.slice(0, 12) }, await encryptionKey(env), raw.slice(12));
    const secret = JSON.parse(new TextDecoder().decode(plain))?.familySecret;
    return decodeSecret(secret) ? secret : null;
  } catch { return null; }
}
async function coordinator(env: Env, path: string, body: unknown): Promise<Response> {
  return env.REGISTRATION_COORDINATOR.getByName('registration-coordinator').fetch(`https://coordinator/${path}`, {
    method: 'POST', headers: { 'content-type': 'application/json' }, body: JSON.stringify(body)
  });
}
function equalHash(a: Uint8Array, b: Uint8Array): boolean {
  let diff = a.length ^ b.length;
  for (let i = 0; i < Math.max(a.length, b.length); i++) diff |= (a[i] ?? 0) ^ (b[i] ?? 0);
  return diff === 0;
}
function newToken(): string { return base64url(crypto.getRandomValues(new Uint8Array(32))); }
async function hashText(value: string): Promise<string> { return hex(await sha256(new TextEncoder().encode(value))); }

// QR version 5-L is enough for the fixed Worker URL and a 256-bit session ID.
function qrSvg(value: string): string {
  const bytes = new TextEncoder().encode(value);
  if (bytes.length > 106) throw new Error('QR input too long');
  const bits: number[] = [];
  const append = (n: number, length: number) => { for (let i = length - 1; i >= 0; i--) bits.push((n >>> i) & 1); };
  append(4, 4); append(bytes.length, 8); for (const byte of bytes) append(byte, 8);
  for (let i = 0; i < Math.min(4, 864 - bits.length); i++) bits.push(0);
  while (bits.length % 8) bits.push(0);
  const data: number[] = [];
  for (let i = 0; i < bits.length; i += 8) data.push(bits.slice(i, i + 8).reduce((a, b) => (a << 1) | b, 0));
  for (let pad = 0xec; data.length < 108; pad ^= 0xec ^ 0x11) data.push(pad);
  const mul = (x: number, y: number) => {
    let z = 0;
    for (let i = 7; i >= 0; i--) { z = ((z << 1) ^ ((z >>> 7) * 0x11d)) & 255; z ^= ((y >>> i) & 1) * x; }
    return z;
  };
  const divisor = Array(26).fill(0); divisor[25] = 1;
  let root = 1;
  for (let i = 0; i < 26; i++) {
    for (let j = 0; j < 26; j++) { divisor[j] = mul(divisor[j], root); if (j + 1 < 26) divisor[j] ^= divisor[j + 1]; }
    root = mul(root, 2);
  }
  const remainder = Array(26).fill(0);
  for (const byte of data) {
    const factor = byte ^ remainder.shift()!; remainder.push(0);
    for (let i = 0; i < 26; i++) remainder[i] ^= mul(divisor[i], factor);
  }
  const codewords = [...data, ...remainder], size = 37;
  const modules = Array.from({ length: size }, () => Array(size).fill(false));
  const fixed = Array.from({ length: size }, () => Array(size).fill(false));
  const set = (x: number, y: number, dark: boolean) => { if (x >= 0 && x < size && y >= 0 && y < size) { modules[y][x] = dark; fixed[y][x] = true; } };
  const finder = (left: number, top: number) => {
    for (let dy = -1; dy <= 7; dy++) for (let dx = -1; dx <= 7; dx++) {
      const d = Math.max(Math.abs(dx - 3), Math.abs(dy - 3));
      set(left + dx, top + dy, dx >= 0 && dx <= 6 && dy >= 0 && dy <= 6 && (d === 3 || d <= 1));
    }
  };
  finder(0, 0); finder(30, 0); finder(0, 30);
  for (let i = 8; i < size - 8; i++) { set(6, i, i % 2 === 0); set(i, 6, i % 2 === 0); }
  for (let dy = -2; dy <= 2; dy++) for (let dx = -2; dx <= 2; dx++) set(30 + dx, 30 + dy, Math.max(Math.abs(dx), Math.abs(dy)) !== 1);
  const format = 8;
  let rem = format;
  for (let i = 0; i < 10; i++) rem = (rem << 1) ^ (((rem >>> 9) & 1) * 0x537);
  const formatBits = ((format << 10) | rem) ^ 0x5412;
  for (let i = 0; i <= 5; i++) set(8, i, ((formatBits >>> i) & 1) !== 0);
  set(8, 7, ((formatBits >>> 6) & 1) !== 0); set(8, 8, ((formatBits >>> 7) & 1) !== 0); set(7, 8, ((formatBits >>> 8) & 1) !== 0);
  for (let i = 9; i < 15; i++) set(14 - i, 8, ((formatBits >>> i) & 1) !== 0);
  for (let i = 0; i < 8; i++) set(size - 1 - i, 8, ((formatBits >>> i) & 1) !== 0);
  for (let i = 8; i < 15; i++) set(8, size - 15 + i, ((formatBits >>> i) & 1) !== 0);
  set(8, size - 8, true);
  let bitIndex = 0, upward = true;
  for (let right = size - 1; right >= 1; right -= 2) {
    if (right === 6) right--;
    for (let vert = 0; vert < size; vert++) {
      const y = upward ? size - 1 - vert : vert;
      for (let offset = 0; offset < 2; offset++) {
        const x = right - offset;
        if (fixed[y][x]) continue;
        let dark = bitIndex < codewords.length * 8 && ((codewords[bitIndex >>> 3] >>> (7 - (bitIndex & 7))) & 1) !== 0;
        bitIndex++;
        if ((x + y) % 2 === 0) dark = !dark;
        modules[y][x] = dark;
      }
    }
    upward = !upward;
  }
  let path = '';
  for (let y = 0; y < size; y++) for (let x = 0; x < size; x++) if (modules[y][x]) path += `M${x} ${y}h1v1h-1z`;
  return `<svg xmlns="http://www.w3.org/2000/svg" viewBox="-4 -4 45 45" shape-rendering="crispEdges"><path fill="#fff" d="M-4-4h45v45H-4z"/><path fill="#000" d="${path}"/></svg>`;
}

async function readBody(request: Request): Promise<{ text: string } | { status: 413 } | { status: 400 }> {
  const length = Number(request.headers.get('content-length'));
  if (Number.isFinite(length) && length > MAX_BODY) return { status: 413 };
  if (!request.body) return { status: 400 };
  const reader = request.body.getReader();
  const chunks: Uint8Array[] = [];
  let total = 0;
  try {
    while (true) {
      const { done, value } = await reader.read();
      if (done) break;
      total += value.byteLength;
      if (total > MAX_BODY) { await reader.cancel(); return { status: 413 }; }
      chunks.push(value);
    }
  } catch { return { status: 400 }; }
  const merged = new Uint8Array(total);
  let offset = 0;
  for (const chunk of chunks) { merged.set(chunk, offset); offset += chunk.byteLength; }
  try { return { text: new TextDecoder('utf-8', { fatal: true }).decode(merged) }; }
  catch { return { status: 400 }; }
}

function isUrl(value: unknown): value is string {
  if (typeof value !== 'string' || value.length > MAX_URL) return false;
  if (value === '') return true;
  try { const url = new URL(value); return (url.protocol === 'http:' || url.protocol === 'https:') && !!url.hostname; }
  catch { return false; }
}
function validSnapshot(value: unknown, familyId: string, deviceId: string): value is Snapshot {
  if (!value || typeof value !== 'object' || Array.isArray(value)) return false;
  const s = value as Record<string, unknown>;
  if (Object.keys(s).sort().join(',') !== 'deviceId,familyId,records,schemaVersion,updatedAt') return false;
  if (s.schemaVersion !== 1 || s.familyId !== familyId || s.deviceId !== deviceId || !Number.isSafeInteger(s.updatedAt) || (s.updatedAt as number) < 0 || !Array.isArray(s.records) || s.records.length > 20) return false;
  return s.records.every(item => {
    if (!item || typeof item !== 'object' || Array.isArray(item)) return false;
    const r = item as Record<string, unknown>;
    if (Object.keys(r).sort().join(',') !== 'createdAt,detailPageUrl,durationInMillis,episode,id,modifiedAt,name,posterUrl,progressInMillis,videoPageUrl') return false;
    return ['id', 'name', 'episode'].every(k => typeof r[k] === 'string' && (r[k] as string).length <= 512)
      && ['progressInMillis', 'durationInMillis', 'createdAt', 'modifiedAt'].every(k => Number.isSafeInteger(r[k]) && (r[k] as number) >= 0)
      && ['videoPageUrl', 'detailPageUrl', 'posterUrl'].every(k => isUrl(r[k]));
  });
}

async function register(request: Request, env: Env): Promise<Response> {
  const body = await readBody(request);
  if ('status' in body) return error(body.status, body.status === 413 ? 'payload_too_large' : 'invalid_json');
  let data: unknown;
  try { data = JSON.parse(body.text); } catch { return error(400, 'invalid_json'); }
  if (!data || typeof data !== 'object' || Array.isArray(data) || Object.keys(data).sort().join(',') !== 'familyId,familySecret') return error(400, 'invalid_request');
      const { familyId, familySecret } = data as Record<string, unknown>;
  const secret = decodeSecret(familySecret);
  if (typeof familyId !== 'string' || !validId(familyId) || !secret) return error(400, 'invalid_request');
  const secretCipher = await encryptJoinPayload({ familySecret }, env);
  const ip = request.headers.get('CF-Connecting-IP');
  if (!ip || ip.length > 128) return error(400, 'invalid_request');
  const hash = await sha256(secret);
  const coordinator = env.REGISTRATION_COORDINATOR.getByName('registration-coordinator');
  const result = await coordinator.fetch('https://coordinator/register', {
    method: 'POST', headers: { 'content-type': 'application/json' },
    body: JSON.stringify({ familyId, secretHash: hex(hash), secretCipher, ipHash: hex(await sha256(new TextEncoder().encode(ip))) })
  });
  return result.status === 201 || result.status === 200 ? json({ familyId, registered: true }, result.status) : result;
}
function hex(bytes: Uint8Array): string { return Array.from(bytes, b => b.toString(16).padStart(2, '0')).join(''); }

async function authorized(request: Request, familyId: string, env: Env): Promise<boolean> {
  const header = request.headers.get('authorization') ?? '';
  const match = /^Bearer ([A-Za-z0-9_-]{43})$/.exec(header);
  const secret = decodeSecret(match?.[1]);
  if (!secret) return false;
  return verifySecret(env, familyId, hex(await sha256(secret)));
}
async function verifySecret(env: Env, familyId: string, secretHash: string): Promise<boolean> {
  const result = await coordinator(env, 'family/authorize', { familyId, secretHash });
  if (result.status !== 200) throw new Error('family authorization unavailable');
  const body = await result.json() as { authorized?: unknown };
  if (typeof body.authorized !== 'boolean') throw new Error('invalid family authorization response');
  return body.authorized;
}

export class RegistrationCoordinator {
  private storage: DurableObjectStorage;
  private sql: SqlStorage;
  constructor(state: DurableObjectState) {
    this.storage = state.storage;
    this.sql = state.storage.sql;
    this.sql.exec('CREATE TABLE IF NOT EXISTS families (family_id TEXT PRIMARY KEY, secret_hash TEXT NOT NULL, secret_cipher TEXT)');
    if (!this.sql.exec<{ name: string }>('PRAGMA table_info(families)').toArray().some(column => column.name === 'secret_cipher')) this.sql.exec('ALTER TABLE families ADD COLUMN secret_cipher TEXT');
    this.sql.exec('CREATE TABLE IF NOT EXISTS family_credentials (family_id TEXT PRIMARY KEY, secret_cipher TEXT NOT NULL)');
    this.sql.exec('CREATE TABLE IF NOT EXISTS revoked_families (family_id TEXT PRIMARY KEY, revoked_at INTEGER NOT NULL)');
    this.sql.exec('CREATE TABLE IF NOT EXISTS registration_attempts (ip_hash TEXT NOT NULL, occurred_at INTEGER NOT NULL)');
    this.sql.exec('CREATE INDEX IF NOT EXISTS registration_attempts_ip_time ON registration_attempts (ip_hash, occurred_at)');
    this.sql.exec('CREATE TABLE IF NOT EXISTS join_codes (family_id TEXT PRIMARY KEY, code_hash TEXT NOT NULL UNIQUE, encrypted_payload TEXT NOT NULL)');
    this.sql.exec('CREATE TABLE IF NOT EXISTS join_attempts (kind TEXT NOT NULL, subject_hash TEXT NOT NULL, occurred_at INTEGER NOT NULL)');
    this.sql.exec('CREATE INDEX IF NOT EXISTS join_attempts_subject_time ON join_attempts (kind, subject_hash, occurred_at)');
    this.sql.exec('CREATE TABLE IF NOT EXISTS merge_manifests (target_family_id TEXT PRIMARY KEY, source_families TEXT NOT NULL, source_fingerprint TEXT NOT NULL)');
    this.sql.exec('CREATE TABLE IF NOT EXISTS family_auth_sessions (session_hash TEXT PRIMARY KEY, poll_hash TEXT NOT NULL, family_id TEXT NOT NULL, created_at INTEGER NOT NULL, expires_at INTEGER NOT NULL, status TEXT NOT NULL, provider TEXT, subject TEXT, join_mode INTEGER NOT NULL DEFAULT 0, ticket_hash TEXT)');
    this.sql.exec('CREATE TABLE IF NOT EXISTS family_auth_states (state_hash TEXT PRIMARY KEY, session_hash TEXT NOT NULL, provider TEXT NOT NULL, expires_at INTEGER NOT NULL)');
    this.sql.exec('CREATE TABLE IF NOT EXISTS family_provider_links (provider TEXT NOT NULL, subject TEXT NOT NULL, family_id TEXT NOT NULL, linked_at INTEGER NOT NULL, display_name TEXT, PRIMARY KEY (provider, subject))');
    if (!this.sql.exec<{ name: string }>('PRAGMA table_info(family_auth_sessions)').toArray().some(column => column.name === 'subject')) this.sql.exec('ALTER TABLE family_auth_sessions ADD COLUMN subject TEXT');
    if (!this.sql.exec<{ name: string }>('PRAGMA table_info(family_auth_sessions)').toArray().some(column => column.name === 'join_mode')) this.sql.exec('ALTER TABLE family_auth_sessions ADD COLUMN join_mode INTEGER NOT NULL DEFAULT 0');
    if (!this.sql.exec<{ name: string }>('PRAGMA table_info(family_auth_sessions)').toArray().some(column => column.name === 'ticket_hash')) this.sql.exec('ALTER TABLE family_auth_sessions ADD COLUMN ticket_hash TEXT');
    if (!this.sql.exec<{ name: string }>('PRAGMA table_info(family_provider_links)').toArray().some(column => column.name === 'display_name')) this.sql.exec('ALTER TABLE family_provider_links ADD COLUMN display_name TEXT');
  }

  async fetch(request: Request): Promise<Response> {
    let body: Record<string, unknown>;
    try { body = await request.json() as Record<string, unknown>; } catch { return error(400, 'invalid_request'); }
    const path = new URL(request.url).pathname;
    if (path.startsWith('/auth/')) return this.auth(path, body);
    if (path === '/register') {
      if (typeof body.familyId !== 'string' || !validId(body.familyId) || typeof body.secretHash !== 'string' || !/^[0-9a-f]{64}$/.test(body.secretHash) || typeof body.secretCipher !== 'string' || typeof body.ipHash !== 'string' || !/^[0-9a-f]{64}$/.test(body.ipHash)) return error(400, 'invalid_request');
      return this.storage.transactionSync(() => {
      const rows = this.sql.exec<{ secret_hash: string }>('SELECT secret_hash FROM families WHERE family_id = ?', body.familyId).toArray();
      if (this.sql.exec('SELECT family_id FROM revoked_families WHERE family_id = ?', body.familyId).toArray().length) return error(410, 'family_revoked');
      if (rows.length) {
        if (!equalHash(fromHex(rows[0].secret_hash), fromHex(body.secretHash))) return error(409, 'family_conflict');
        this.sql.exec('INSERT INTO family_credentials (family_id, secret_cipher) VALUES (?, ?) ON CONFLICT(family_id) DO UPDATE SET secret_cipher=excluded.secret_cipher', body.familyId, body.secretCipher);
        return json({ familyId: body.familyId, registered: true }, 200);
      }
      const now = Date.now();
      this.sql.exec('DELETE FROM registration_attempts WHERE occurred_at <= ?', now - 3_600_000);
      const attempts = this.sql.exec<{ count: number }>('SELECT COUNT(*) AS count FROM registration_attempts WHERE ip_hash = ?', body.ipHash).toArray()[0].count;
      if (attempts >= 10) return error(429, 'rate_limited');
      this.sql.exec('INSERT INTO registration_attempts (ip_hash, occurred_at) VALUES (?, ?)', body.ipHash, now);
      this.sql.exec('INSERT INTO families (family_id, secret_hash, secret_cipher) VALUES (?, ?, ?)', body.familyId, body.secretHash, body.secretCipher);
      this.sql.exec('INSERT INTO family_credentials (family_id, secret_cipher) VALUES (?, ?)', body.familyId, body.secretCipher);
      return json({ familyId: body.familyId, registered: true }, 201);
      });
    }
    if (path === '/join-code/issue') {
      if (typeof body.familyId !== 'string' || !validId(body.familyId) || typeof body.codeHash !== 'string' || !/^[0-9a-f]{64}$/.test(body.codeHash) || typeof body.encryptedPayload !== 'string' || typeof body.subjectHash !== 'string' || !/^[0-9a-f]{64}$/.test(body.subjectHash)) return error(400, 'invalid_request');
      return this.storage.transactionSync(() => {
        const now = Date.now();
        this.sql.exec('DELETE FROM join_attempts WHERE occurred_at <= ?', now - 3_600_000);
        const attempts = this.sql.exec<{ count: number }>("SELECT COUNT(*) AS count FROM join_attempts WHERE kind = 'issue' AND subject_hash = ?", body.subjectHash).toArray()[0].count;
        if (attempts >= 10) return error(429, 'rate_limited');
        this.sql.exec("INSERT INTO join_attempts (kind, subject_hash, occurred_at) VALUES ('issue', ?, ?)", body.subjectHash, now);
        this.sql.exec('DELETE FROM join_codes WHERE family_id = ?', body.familyId);
        this.sql.exec('INSERT INTO join_codes (family_id, code_hash, encrypted_payload) VALUES (?, ?, ?)', body.familyId, body.codeHash, body.encryptedPayload);
        return json({ registered: true }, 201);
      });
    }
    if (path === '/join-code/lookup') {
      if (typeof body.codeHash !== 'string' || !/^[0-9a-f]{64}$/.test(body.codeHash) || typeof body.ipHash !== 'string' || !/^[0-9a-f]{64}$/.test(body.ipHash)) return error(400, 'invalid_request');
      return this.storage.transactionSync(() => {
        const now = Date.now();
        this.sql.exec('DELETE FROM join_attempts WHERE occurred_at <= ?', now - 3_600_000);
        const attempts = this.sql.exec<{ count: number }>("SELECT COUNT(*) AS count FROM join_attempts WHERE kind = 'lookup' AND subject_hash = ?", body.ipHash).toArray()[0].count;
        if (attempts >= 30) return error(429, 'rate_limited');
        this.sql.exec("INSERT INTO join_attempts (kind, subject_hash, occurred_at) VALUES ('lookup', ?, ?)", body.ipHash, now);
        const rows = this.sql.exec<{ encrypted_payload: string }>('SELECT encrypted_payload FROM join_codes WHERE code_hash = ?', body.codeHash).toArray();
        return rows.length ? json({ encryptedPayload: rows[0].encrypted_payload }) : error(404, 'not_found');
      });
    }
    if (path === '/join-code/revoke') {
      if (typeof body.familyId !== 'string' || !validId(body.familyId)) return error(400, 'invalid_request');
      this.sql.exec('DELETE FROM join_codes WHERE family_id = ?', body.familyId);
      return json({ revoked: true });
    }
    if (path === '/family/authorize') {
      if (typeof body.familyId !== 'string' || !validId(body.familyId) || typeof body.secretHash !== 'string' || !/^[0-9a-f]{64}$/.test(body.secretHash)) return error(400, 'invalid_request');
      const rows = this.sql.exec<{ secret_hash: string }>('SELECT secret_hash FROM families WHERE family_id = ?', body.familyId).toArray();
      const revoked = this.sql.exec('SELECT family_id FROM revoked_families WHERE family_id = ?', body.familyId).toArray().length > 0;
      return json({ authorized: !revoked && rows.length === 1 && equalHash(fromHex(rows[0].secret_hash), fromHex(body.secretHash)) });
    }
    if (path === '/family/revoke-many') {
      if (!Array.isArray(body.familyIds) || body.familyIds.length < 1 || body.familyIds.length > MAX_MERGE_FAMILIES || body.familyIds.some(id => typeof id !== 'string' || !validId(id))) return error(400, 'invalid_request');
      return this.storage.transactionSync(() => {
        for (const familyId of body.familyIds as string[]) {
          this.sql.exec('INSERT OR IGNORE INTO revoked_families (family_id, revoked_at) VALUES (?, ?)', familyId, Date.now());
          this.sql.exec('DELETE FROM families WHERE family_id = ?', familyId);
          this.sql.exec('DELETE FROM family_credentials WHERE family_id = ?', familyId);
          this.sql.exec('DELETE FROM join_codes WHERE family_id = ?', familyId);
        }
        return json({ revoked: true });
      });
    }
    if (path === '/merge/mark') {
      if (typeof body.targetFamilyId !== 'string' || !validId(body.targetFamilyId) || !Array.isArray(body.sourceFamilies) || body.sourceFamilies.some(id => typeof id !== 'string' || !validId(id)) || !Array.isArray(body.sourceSnapshotHashes) || body.sourceSnapshotHashes.some(hash => typeof hash !== 'string' || !/^[0-9a-f-]{36}:[0-9a-f-]{36}:[0-9a-f]{64}$/i.test(hash))) return error(400, 'invalid_request');
      this.sql.exec('INSERT OR REPLACE INTO merge_manifests (target_family_id, source_families, source_fingerprint) VALUES (?, ?, ?)', body.targetFamilyId, JSON.stringify(body.sourceFamilies), JSON.stringify(body.sourceSnapshotHashes));
      return json({ saved: true });
    }
    if (path === '/merge/get') {
      if (typeof body.targetFamilyId !== 'string' || !validId(body.targetFamilyId)) return error(400, 'invalid_request');
      const rows = this.sql.exec<{ source_families: string; source_fingerprint: string }>('SELECT source_families, source_fingerprint FROM merge_manifests WHERE target_family_id = ?', body.targetFamilyId).toArray();
      if (!rows.length) return error(404, 'not_found');
      try { return json({ sourceFamilies: JSON.parse(rows[0].source_families), sourceSnapshotHashes: JSON.parse(rows[0].source_fingerprint) }); }
      catch { return error(500, 'internal_error'); }
    }
    if (path === '/merge/clear') {
      if (typeof body.targetFamilyId !== 'string' || !validId(body.targetFamilyId)) return error(400, 'invalid_request');
      this.sql.exec('DELETE FROM merge_manifests WHERE target_family_id = ?', body.targetFamilyId);
      return json({ cleared: true });
    }
    return error(404, 'not_found');
  }

  private auth(path: string, body: Record<string, unknown>): Response {
    const now = body.now;
    if (!Number.isSafeInteger(now)) return error(400, 'invalid_request');
    return this.storage.transactionSync(() => {
      if (path === '/auth/create-session') {
        if (typeof body.sessionHash !== 'string' || !/^[0-9a-f]{64}$/.test(body.sessionHash) || typeof body.pollHash !== 'string' || !/^[0-9a-f]{64}$/.test(body.pollHash) || typeof body.familyId !== 'string' || !validId(body.familyId) || typeof body.joinMode !== 'boolean' || !Number.isSafeInteger(body.expiresAt) || body.expiresAt !== (now as number) + 300_000) return error(400, 'invalid_request');
        const family = this.sql.exec('SELECT family_id FROM families WHERE family_id=?', body.familyId).toArray();
        const revoked = this.sql.exec('SELECT family_id FROM revoked_families WHERE family_id=?', body.familyId).toArray().length > 0;
        if (!family.length || revoked) return error(401, 'unauthorized');
        this.sql.exec('DELETE FROM family_auth_sessions WHERE expires_at<=?', now);
        this.sql.exec('DELETE FROM family_auth_states WHERE expires_at<=?', now);
        this.sql.exec("INSERT INTO family_auth_sessions (session_hash,poll_hash,family_id,created_at,expires_at,status,join_mode) VALUES (?,?,?,?,?,'pending',?)", body.sessionHash, body.pollHash, body.familyId, now, body.expiresAt, body.joinMode ? 1 : 0);
        return json({ created: true }, 201);
      }
      if (path === '/auth/get-secret') {
        if (typeof body.familyId !== 'string' || !validId(body.familyId)) return error(400, 'invalid_request');
        const row = this.sql.exec<{ secret_cipher: string }>('SELECT secret_cipher FROM family_credentials WHERE family_id=?', body.familyId).toArray()[0];
        if (!row || !row.secret_cipher || this.sql.exec('SELECT family_id FROM revoked_families WHERE family_id=?', body.familyId).toArray().length) return error(404, 'family_unavailable');
        return json({ secretCipher: row.secret_cipher });
      }
      if (path === '/auth/consume-state') {
        if (typeof body.stateHash !== 'string' || !/^[0-9a-f]{64}$/.test(body.stateHash)) return error(400, 'invalid_request');
        const state = this.sql.exec<{ session_hash: string; provider: string; expires_at: number }>('SELECT session_hash,provider,expires_at FROM family_auth_states WHERE state_hash=?', body.stateHash).toArray()[0];
        if (!state || state.provider !== body.provider || state.expires_at <= (now as number)) return error(400, 'invalid_state');
        this.sql.exec('DELETE FROM family_auth_states WHERE state_hash=?', body.stateHash);
        const session = this.sql.exec<{ family_id: string; expires_at: number; status: string }>('SELECT family_id,expires_at,status FROM family_auth_sessions WHERE session_hash=?', state.session_hash).toArray()[0];
        if (!session || session.status !== 'pending' || session.expires_at <= (now as number)) return error(400, 'invalid_session');
        return json({ sessionHash: state.session_hash, familyId: session.family_id });
      }
      if (path === '/auth/list-links') {
        if (typeof body.familyId !== 'string' || !validId(body.familyId)) return error(400, 'invalid_request');
        if (!this.sql.exec('SELECT family_id FROM families WHERE family_id=?', body.familyId).toArray().length || this.sql.exec('SELECT family_id FROM revoked_families WHERE family_id=?', body.familyId).toArray().length) return error(401, 'unauthorized');
        const accounts = this.sql.exec<{ provider: string; display_name: string | null }>('SELECT provider,display_name FROM family_provider_links WHERE family_id=? ORDER BY provider,linked_at DESC', body.familyId).toArray().map(row => ({ provider: row.provider, displayName: row.display_name ?? '' }));
        return json({ accounts, providers: [...new Set(accounts.map(account => account.provider))] });
      }
      if (typeof body.sessionHash !== 'string' || !/^[0-9a-f]{64}$/.test(body.sessionHash)) return error(400, 'invalid_request');
      const session = this.sql.exec<{ poll_hash: string; family_id: string; expires_at: number; status: string; provider: string | null; subject: string | null; join_mode: number; ticket_hash: string | null }>('SELECT poll_hash,family_id,expires_at,status,provider,subject,join_mode,ticket_hash FROM family_auth_sessions WHERE session_hash=?', body.sessionHash).toArray()[0];
      if (path === '/auth/page-session') return session ? json({ status: session.expires_at <= (now as number) ? 'expired' : session.status }) : error(404, 'not_found');
      if (path === '/auth/status' || path === '/auth/cancel') {
        if (!session || typeof body.pollHash !== 'string' || !/^[0-9a-f]{64}$/.test(body.pollHash) || !equalHash(fromHex(session.poll_hash), fromHex(body.pollHash))) return error(401, 'unauthorized');
        let status = session.expires_at <= (now as number) && session.status === 'pending' ? 'expired' : session.status;
        if (path === '/auth/cancel' && status === 'pending') { status = 'cancelled'; this.sql.exec("UPDATE family_auth_sessions SET status='cancelled' WHERE session_hash=? AND status='pending'", body.sessionHash); }
        const account = status === 'linked' && session.provider && session.subject
          ? this.sql.exec<{ display_name: string | null }>('SELECT display_name FROM family_provider_links WHERE provider=? AND subject=? AND family_id=?', session.provider, session.subject, session.family_id).toArray()[0]
          : undefined;
        return json({ status, ...(status === 'linked' && session.provider ? { provider: session.provider, displayName: account?.display_name ?? '', familyId: session.family_id } : {}) });
      }
      if (path === '/auth/claim-family') {
        if (!session || session.status !== 'linked' || session.expires_at <= (now as number) || typeof body.ticketHash !== 'string' || !/^[0-9a-f]{64}$/.test(body.ticketHash) || !session.ticket_hash || !equalHash(fromHex(session.ticket_hash), fromHex(body.ticketHash))) return error(401, 'unauthorized');
        const account = session.provider && session.subject ? this.sql.exec<{ family_id: string }>('SELECT family_id FROM family_provider_links WHERE provider=? AND subject=?', session.provider, session.subject).toArray()[0] : undefined;
        const familyId = account?.family_id ?? session.family_id;
        const family = this.sql.exec<{ family_id: string }>('SELECT family_id FROM families WHERE family_id=?', familyId).toArray()[0];
        if (!family) return error(404, 'family_unavailable');
        this.sql.exec('UPDATE family_auth_sessions SET ticket_hash=NULL WHERE session_hash=?', body.sessionHash);
        return json({ familyId });
      }
      if (path === '/auth/issue-ticket') {
        if (!session || typeof body.pollHash !== 'string' || !/^[0-9a-f]{64}$/.test(body.pollHash) || !equalHash(fromHex(session.poll_hash), fromHex(body.pollHash)) || session.status !== 'linked' || session.expires_at <= (now as number) || typeof body.ticketHash !== 'string' || !/^[0-9a-f]{64}$/.test(body.ticketHash)) return error(401, 'unauthorized');
        const previous = this.sql.exec<{ ticket_hash: string | null }>('SELECT ticket_hash FROM family_auth_sessions WHERE session_hash=?', body.sessionHash).toArray()[0];
        if (previous.ticket_hash) return json({ issued: true });
        this.sql.exec('UPDATE family_auth_sessions SET ticket_hash=? WHERE session_hash=?', body.ticketHash, body.sessionHash);
        return json({ issued: true });
      }
      if (path === '/auth/begin-oauth') {
        if (!session || session.expires_at <= (now as number) || session.status !== 'pending' || typeof body.stateHash !== 'string' || !/^[0-9a-f]{64}$/.test(body.stateHash) || !['google', 'github'].includes(String(body.provider))) return error(400, 'invalid_session');
        this.sql.exec('INSERT INTO family_auth_states (state_hash,session_hash,provider,expires_at) VALUES (?,?,?,?)', body.stateHash, body.sessionHash, body.provider, session.expires_at);
        return json({ started: true });
      }
      if (path === '/auth/link') {
        if (typeof body.familyId !== 'string' || !validId(body.familyId) || typeof body.provider !== 'string' || !['google', 'github'].includes(body.provider) || typeof body.subject !== 'string' || !body.subject || body.subject.length > 255 || typeof body.displayName !== 'string') return error(400, 'invalid_request');
        if (!session || session.family_id !== body.familyId || session.status !== 'pending' || session.expires_at <= (now as number)) return error(400, 'invalid_session');
        if (!this.sql.exec('SELECT family_id FROM families WHERE family_id=?', body.familyId).toArray().length || this.sql.exec('SELECT family_id FROM revoked_families WHERE family_id=?', body.familyId).toArray().length) return error(401, 'unauthorized');
        const existing = this.sql.exec<{ family_id: string }>('SELECT family_id FROM family_provider_links WHERE provider=? AND subject=?', body.provider, body.subject).toArray()[0];
        const targetFamilyId = session.join_mode && existing ? existing.family_id : body.familyId;
        if (existing && existing.family_id !== body.familyId && !session.join_mode) return error(409, 'account_already_linked');
        if (session.join_mode && existing && !this.sql.exec('SELECT family_id FROM families WHERE family_id=?', existing.family_id).toArray().length) return error(409, 'family_unavailable');
        const displayName = cleanDisplayName(body.displayName);
        if (!displayName) return error(400, 'invalid_request');
        this.sql.exec('INSERT INTO family_provider_links (provider,subject,family_id,linked_at,display_name) VALUES (?,?,?,?,?) ON CONFLICT(provider,subject) DO UPDATE SET family_id=excluded.family_id,linked_at=excluded.linked_at,display_name=excluded.display_name', body.provider, body.subject, targetFamilyId, now, displayName);
        const ticketHash = typeof body.ticketHash === 'string' && /^[0-9a-f]{64}$/.test(body.ticketHash) ? body.ticketHash : null;
        this.sql.exec("UPDATE family_auth_sessions SET status='linked',provider=?,subject=?,family_id=? WHERE session_hash=? AND status='pending'", body.provider, body.subject, targetFamilyId, body.sessionHash);
        return json({ linked: true, familyId: targetFamilyId });
      }
      return error(404, 'not_found');
    });
  }
}

function fromHex(value: string): Uint8Array { return Uint8Array.from(value.match(/.{2}/g) ?? [], pair => parseInt(pair, 16)); }
function cleanDisplayName(value: string): string { return Array.from(value.replace(/[\u0000-\u001f\u007f]/g, '').replace(/\s+/g, ' ').trim()).slice(0, 80).join(''); }
function escapeHtml(value: string): string { return value.replace(/[&<>"']/g, char => ({ '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;', "'": '&#39;' })[char]!); }

async function familyJoinCode(request: Request, env: Env, familyId: string): Promise<Response> {
  if (!validId(familyId)) return error(400, 'invalid_path');
  if (!(await authorized(request, familyId, env))) return error(401, 'unauthorized');
  const match = /^Bearer ([A-Za-z0-9_-]{43})$/.exec(request.headers.get('authorization') ?? '');
  if (!match) return error(401, 'unauthorized');
  try {
    const joinCode = newJoinCode();
    const encryptedPayload = await encryptJoinPayload({ familyId, familySecret: match[1] }, env);
    const result = await coordinator(env, 'join-code/issue', {
      familyId, codeHash: hex(await sha256(new TextEncoder().encode(joinCode.replace(/-/g, '')))), encryptedPayload,
      subjectHash: hex(await sha256(new TextEncoder().encode(familyId)))
    });
    return result.status === 201 ? json({ familyId, joinCode }, 201) : result;
  } catch { return error(500, 'internal_error'); }
}

async function familyLinkedAccounts(request: Request, env: Env, familyId: string): Promise<Response> {
  if (!validId(familyId)) return error(400, 'invalid_path');
  if (!(await authorized(request, familyId, env))) return error(401, 'unauthorized');
  return coordinator(env, 'auth/list-links', { familyId, now: Date.now() });
}

async function lookupJoinCode(env: Env, code: string, ip: string): Promise<{ familyId: string; familySecret: string } | { status: number } | null> {
  const found = await coordinator(env, 'join-code/lookup', {
    codeHash: hex(await sha256(new TextEncoder().encode(code))), ipHash: hex(await sha256(new TextEncoder().encode(ip)))
  });
  if (found.status === 429) return { status: 429 };
  if (found.status !== 200) return null;
  return decryptJoinPayload((await found.json() as { encryptedPayload?: unknown }).encryptedPayload, env);
}

async function redeemJoinCode(request: Request, env: Env): Promise<Response> {
  const body = await readBody(request);
  if ('status' in body) return error(body.status, body.status === 413 ? 'payload_too_large' : 'invalid_json');
  let data: unknown;
  try { data = JSON.parse(body.text); } catch { return error(400, 'invalid_json'); }
  if (!data || typeof data !== 'object' || Array.isArray(data) || Object.keys(data as object).join(',') !== 'joinCode') return error(400, 'invalid_request');
  const code = normalizeJoinCode((data as Record<string, unknown>).joinCode);
  const ip = request.headers.get('CF-Connecting-IP');
  if (!code || !ip || ip.length > 128) return error(400, 'invalid_request');
  const lookup = await lookupJoinCode(env, code, ip);
  if (!lookup) return error(404, 'invalid_join_code');
  if ('status' in lookup) return error(429, 'rate_limited');
  const payload = lookup;
  const secretHash = hex(await sha256(decodeSecret(payload.familySecret)!));
  let payloadAuthorized: boolean;
  try { payloadAuthorized = await verifySecret(env, payload.familyId, secretHash); }
  catch { return error(503, 'authorization_unavailable'); }
  if (!payloadAuthorized) return error(404, 'invalid_join_code');
  try {
    const { snapshots } = await listFamilySnapshots(env, payload.familyId);
    return json({ ...payload, deviceIds: [...new Set(snapshots.map(snapshot => snapshot.deviceId))].sort() });
  } catch { return error(500, 'family_read_failed'); }
}

function episodeNum(value: string): number { const match = /(\d+)/.exec(value); return match ? Number(match[1]) : 0; }
function wins(incoming: RecordItem, current: RecordItem): boolean {
  const incomingEpisode = episodeNum(incoming.episode), currentEpisode = episodeNum(current.episode);
  return incoming.modifiedAt > current.modifiedAt || (incoming.modifiedAt === current.modifiedAt &&
    (incomingEpisode > currentEpisode || (incomingEpisode === currentEpisode && incoming.progressInMillis > current.progressInMillis)));
}
function mergeRecord(rows: RecordItem[], incoming: RecordItem): void {
  const index = rows.findIndex(row => row.name === incoming.name || (!!incoming.detailPageUrl && row.detailPageUrl === incoming.detailPageUrl));
  if (index < 0) { rows.push(incoming); return; }
  const old = rows[index];
  if (!wins(incoming, old)) return;
  rows[index] = { ...old, ...incoming, createdAt: old.createdAt || incoming.createdAt,
    durationInMillis: incoming.durationInMillis || old.durationInMillis,
    videoPageUrl: incoming.videoPageUrl || old.videoPageUrl,
    detailPageUrl: incoming.detailPageUrl || old.detailPageUrl,
    posterUrl: incoming.posterUrl || old.posterUrl };
}

async function listFamilySnapshots(env: Env, familyId: string): Promise<{ snapshots: Snapshot[]; fingerprintParts: string[] }> {
  const snapshots: Snapshot[] = [], fingerprintParts: string[] = [];
  let cursor: string | undefined;
  do {
    const page = await env.R2_BUCKET.list({ prefix: `v1/${familyId}/`, cursor });
    for (const object of page.objects) {
      const match = new RegExp(`^v1/${familyId}/([0-9a-f-]{36})\\.json$`, 'i').exec(object.key);
      if (!match || !validId(match[1])) throw new Error('invalid family object key');
      const stored = await env.R2_BUCKET.get(object.key);
      if (!stored) throw new Error('family object changed during merge');
      const snapshot: unknown = await stored.json();
      if (!validSnapshot(snapshot, familyId, match[1])) throw new Error('invalid family snapshot');
      snapshots.push(snapshot);
      fingerprintParts.push(`${match[1]}:${hex(await sha256(new TextEncoder().encode(JSON.stringify(snapshot))))}`);
      if (snapshots.length > MAX_MERGE_SNAPSHOTS) throw new Error('too many family snapshots');
    }
    cursor = page.truncated ? page.cursor : undefined;
    if (page.truncated && !cursor) throw new Error('invalid list cursor');
  } while (cursor);
  return { snapshots, fingerprintParts };
}

async function mergeFamilies(request: Request, env: Env, targetFamilyId: string): Promise<Response> {
  if (!validId(targetFamilyId)) return error(400, 'invalid_path');
  if (!(await authorized(request, targetFamilyId, env))) return error(401, 'unauthorized');
  const body = await readBody(request);
  if ('status' in body) return error(body.status, body.status === 413 ? 'payload_too_large' : 'invalid_json');
  let data: unknown;
  try { data = JSON.parse(body.text); } catch { return error(400, 'invalid_json'); }
  if (!data || typeof data !== 'object' || Array.isArray(data)) return error(400, 'invalid_request');
  const input = data as Record<string, unknown>;
  const expectedKeys = input.action === 'cleanup' ? 'action,confirmed,sourceCodes' : 'action,sourceCodes';
  if (Object.keys(input).sort().join(',') !== expectedKeys || !['preview', 'copy', 'cleanup'].includes(String(input.action)) || !Array.isArray(input.sourceCodes) || input.sourceCodes.length < 1 || input.sourceCodes.length > MAX_MERGE_FAMILIES || input.sourceCodes.some(code => !normalizeJoinCode(code)) || (input.action === 'cleanup' && input.confirmed !== true)) return error(400, 'invalid_request');
  const ip = request.headers.get('CF-Connecting-IP');
  if (!ip || ip.length > 128) return error(400, 'invalid_request');
  const sources: { familyId: string; familySecret: string }[] = [];
  const seenCodes = new Set<string>();
  for (const rawCode of input.sourceCodes) {
    const code = normalizeJoinCode(rawCode)!;
    if (seenCodes.has(code)) return error(400, 'duplicate_source');
    seenCodes.add(code);
    const lookup = await lookupJoinCode(env, code, ip);
    if (!lookup) return error(404, 'invalid_join_code');
    if ('status' in lookup) return error(429, 'rate_limited');
    const source = lookup;
    if (source.familyId === targetFamilyId || source.familyId < targetFamilyId || sources.some(item => item.familyId === source.familyId)) return error(409, 'invalid_family_order');
    let sourceAuthorized: boolean;
    try { sourceAuthorized = await verifySecret(env, source.familyId, hex(await sha256(decodeSecret(source.familySecret)!))); }
    catch { return error(503, 'authorization_unavailable'); }
    if (!sourceAuthorized) return error(404, 'invalid_join_code');
    sources.push(source);
  }
  sources.sort((a, b) => a.familyId.localeCompare(b.familyId));
  const loaded: { familyId: string; snapshots: Snapshot[]; fingerprintParts: string[] }[] = [];
  try {
    for (const source of sources) loaded.push({ familyId: source.familyId, ...await listFamilySnapshots(env, source.familyId) });
  } catch { return error(409, 'source_snapshot_unavailable'); }
  const snapshots = loaded.flatMap(item => item.snapshots);
  const deviceIds = [...new Set(snapshots.map(snapshot => snapshot.deviceId))].sort();
  const sourceSnapshotHashes = loaded.flatMap(item => item.fingerprintParts.map(part => `${item.familyId}:${part}`)).sort();
  if (input.action === 'preview') return json({ families: loaded.length, snapshots: snapshots.length, records: snapshots.reduce((count, snapshot) => count + snapshot.records.length, 0), deviceIds });
  if (input.action === 'copy') {
    const byDevice = new Map<string, Snapshot[]>();
    for (const snapshot of snapshots) byDevice.set(snapshot.deviceId, [...(byDevice.get(snapshot.deviceId) ?? []), snapshot]);
    try {
      for (const [deviceId, group] of byDevice) {
        const key = `v1/${targetFamilyId}/${deviceId}.json`, target = await env.R2_BUCKET.get(key);
        if (target) {
          const value: unknown = await target.json();
          if (!validSnapshot(value, targetFamilyId, deviceId)) throw new Error('invalid target snapshot');
          group.unshift(value);
        }
        const records: RecordItem[] = [];
        let updatedAt = 0;
        for (const snapshot of group) { updatedAt = Math.max(updatedAt, snapshot.updatedAt); for (const row of snapshot.records) mergeRecord(records, row); }
        records.sort((a, b) => b.modifiedAt - a.modifiedAt);
        const merged: Snapshot = { schemaVersion: 1, familyId: targetFamilyId, deviceId, updatedAt, records: records.slice(0, 20) };
        await env.R2_BUCKET.put(key, JSON.stringify(merged), { httpMetadata: { contentType: 'application/json; charset=utf-8' } });
        const verified = await env.R2_BUCKET.get(key);
        if (!verified) throw new Error('merge copy verification failed');
        const verifiedValue: unknown = await verified.json();
        if (!validSnapshot(verifiedValue, targetFamilyId, deviceId)) throw new Error('merge copy verification failed');
        if (JSON.stringify(verifiedValue) !== JSON.stringify(merged)) throw new Error('merge copy verification mismatch');
      }
    } catch { return error(500, 'merge_copy_failed'); }
    const marked = await coordinator(env, 'merge/mark', { targetFamilyId, sourceFamilies: loaded.map(item => item.familyId), sourceSnapshotHashes });
    if (marked.status !== 200) return error(500, 'merge_state_failed');
    return json({ copiedSnapshots: snapshots.length, devices: deviceIds });
  }
  const manifestResponse = await coordinator(env, 'merge/get', { targetFamilyId });
  if (manifestResponse.status !== 200) return error(409, 'merge_copy_required');
  const manifest = await manifestResponse.json() as { sourceFamilies: string[]; sourceSnapshotHashes: string[] };
  if (JSON.stringify(manifest.sourceFamilies) !== JSON.stringify(loaded.map(item => item.familyId)) || sourceSnapshotHashes.some(hash => !manifest.sourceSnapshotHashes.includes(hash))) return error(409, 'source_changed_recopy_required');
  if (sources.some(source => !manifest.sourceSnapshotHashes.some(hash => hash.startsWith(`${source.familyId}:`)))) return error(409, 'source_snapshot_unavailable');
  for (const source of sources) {
    try {
      for (const snapshot of loaded.find(item => item.familyId === source.familyId)!.snapshots) await env.R2_BUCKET.delete(`v1/${source.familyId}/${snapshot.deviceId}.json`);
    } catch { return error(500, 'merge_cleanup_failed'); }
  }
  const revoked = await coordinator(env, 'family/revoke-many', { familyIds: sources.map(item => item.familyId) });
  if (revoked.status !== 200) return error(500, 'merge_cleanup_failed');
  const cleared = await coordinator(env, 'merge/clear', { targetFamilyId });
  if (cleared.status !== 200) return error(500, 'merge_cleanup_failed');
  return json({ cleanedFamilies: sources.map(item => item.familyId) });
}

function authPage(message: string, status = 200): Response {
  return new Response(`<!doctype html><html><meta name="viewport" content="width=device-width"><title>Family sign-in</title><body style="font:18px system-ui;max-width:34rem;margin:12vh auto;padding:1rem"><h1>Family Sync</h1>${message}</body></html>`, { status, headers: { 'content-type': 'text/html; charset=utf-8', 'cache-control': 'no-store', 'content-security-policy': "default-src 'none'; style-src 'unsafe-inline'; base-uri 'none'; form-action 'none'; frame-ancestors 'none'", 'x-content-type-options': 'nosniff', 'referrer-policy': 'no-referrer' } });
}
async function createAuthSession(request: Request, env: Env): Promise<Response> {
  const familyId = new URL(request.url).searchParams.get('familyId') ?? '';
  const joinMode = new URL(request.url).searchParams.get('mode') === 'join';
  if (!validId(familyId) || !(await authorized(request, familyId, env))) return error(401, 'unauthorized');
  const sessionId = newToken(), pollSecret = newToken(), now = Date.now();
  const result = await coordinator(env, 'auth/create-session', { sessionHash: await hashText(sessionId), pollHash: await hashText(pollSecret), familyId, joinMode, now, expiresAt: now + 300_000 });
  if (result.status !== 201) return result;
  return json({ sessionId, pollSecret, url: `${new URL(request.url).origin}/auth/${sessionId}`, expiresAt: now + 300_000 }, 201);
}
async function authSession(request: Request, env: Env, sessionId: string, action: 'status' | 'cancel'): Promise<Response> {
  if (!/^[A-Za-z0-9_-]{43}$/.test(sessionId)) return error(400, 'invalid_session');
  const pollSecret = request.headers.get('authorization')?.replace(/^Bearer /, '') ?? '';
  if (!/^[A-Za-z0-9_-]{43}$/.test(pollSecret)) return error(401, 'unauthorized');
  const result = await coordinator(env, `auth/${action}`, { sessionHash: await hashText(sessionId), pollHash: await hashText(pollSecret), now: Date.now() });
  if (result.status !== 200) return error(result.status, 'unauthorized');
  if (action === 'cancel') return result;
  const data = await result.json() as Record<string, unknown>;
  if (data.status === 'linked' && typeof data.familyId === 'string') {
    const ticket = newToken();
    const stored = await coordinator(env, 'auth/issue-ticket', { sessionHash: await hashText(sessionId), pollHash: await hashText(pollSecret), ticketHash: await hashText(ticket), now: Date.now() });
    if (!stored.ok) return stored;
    data.familyTicket = ticket;
  }
  return json(data);
}
async function claimFamily(request: Request, env: Env, sessionId: string): Promise<Response> {
  if (!/^[A-Za-z0-9_-]{43}$/.test(sessionId)) return error(400, 'invalid_session');
  const ticket = request.headers.get('authorization')?.replace(/^Bearer /, '') ?? '';
  if (!/^[A-Za-z0-9_-]{43}$/.test(ticket)) return error(401, 'unauthorized');
  const result = await coordinator(env, 'auth/claim-family', { sessionHash: await hashText(sessionId), ticketHash: await hashText(ticket), now: Date.now() });
  if (!result.ok) return result;
  const data = await result.json() as { familyId: string };
  const secret = await coordinator(env, 'auth/get-secret', { familyId: data.familyId, now: Date.now() });
  if (!secret.ok) return error(500, 'credential_unavailable');
  const encrypted = await secret.json() as { secretCipher: string };
  const familySecret = await decryptFamilySecret(encrypted.secretCipher, env);
  if (!familySecret) return error(500, 'credential_decryption_failed');
  return json({ familyId: data.familyId, familySecret });
}
async function phonePage(sessionId: string, env: Env): Promise<Response> {
  if (!/^[A-Za-z0-9_-]{43}$/.test(sessionId)) return error(404, 'not_found');
  const result = await coordinator(env, 'auth/page-session', { sessionHash: await hashText(sessionId), now: Date.now() });
  if (!result.ok || (await result.json() as { status: string }).status !== 'pending') return authPage('<p>This sign-in request has expired or is already complete. Start again from your TV.</p>');
  const buttons = [['google', 'Google', env.GOOGLE_CLIENT_ID && env.GOOGLE_CLIENT_SECRET], ['github', 'GitHub', env.GITHUB_CLIENT_ID && env.GITHUB_CLIENT_SECRET]]
    .map(([provider, label, configured]) => configured ? `<p><a href="/v1/family-auth/sessions/${sessionId}/oauth/${provider}">Continue with ${label}</a></p>` : `<p>${label} sign-in is not configured yet.</p>`).join('');
  return authPage(`<p>Choose an account to link to the family shown on your TV.</p>${buttons}<p>This request expires in five minutes.</p>`);
}
async function qrImage(request: Request, env: Env, sessionId: string): Promise<Response> {
  if (!/^[A-Za-z0-9_-]{43}$/.test(sessionId)) return error(404, 'not_found');
  const result = await coordinator(env, 'auth/page-session', { sessionHash: await hashText(sessionId), now: Date.now() });
  if (!result.ok || (await result.json() as { status: string }).status !== 'pending') return error(404, 'not_found');
  try { return new Response(qrSvg(`${new URL(request.url).origin}/auth/${sessionId}`), { headers: { 'content-type': 'image/svg+xml; charset=utf-8', 'cache-control': 'no-store', 'x-content-type-options': 'nosniff' } }); }
  catch { return error(500, 'internal_error'); }
}
async function beginOAuth(request: Request, env: Env, sessionId: string, provider: string): Promise<Response> {
  if (!/^[A-Za-z0-9_-]{43}$/.test(sessionId) || !['google', 'github'].includes(provider)) return error(400, 'invalid_request');
  const clientId = provider === 'google' ? env.GOOGLE_CLIENT_ID : env.GITHUB_CLIENT_ID;
  if (!clientId) return error(503, 'provider_unconfigured');
  const state = newToken();
  const saved = await coordinator(env, 'auth/begin-oauth', { sessionHash: await hashText(sessionId), stateHash: await hashText(state), provider, now: Date.now() });
  if (!saved.ok) return saved;
  const url = new URL(provider === 'google' ? 'https://accounts.google.com/o/oauth2/v2/auth' : 'https://github.com/login/oauth/authorize');
  url.searchParams.set('client_id', clientId);
  url.searchParams.set('redirect_uri', `${new URL(request.url).origin}/v1/oauth/${provider}/callback`);
  url.searchParams.set('response_type', 'code'); url.searchParams.set('state', state);
  url.searchParams.set('scope', provider === 'google' ? 'openid profile' : 'read:user');
  if (provider === 'google') url.searchParams.set('prompt', 'select_account');
  return Response.redirect(url.toString(), 302);
}
async function oauthCallback(request: Request, env: Env, provider: string): Promise<Response> {
  const url = new URL(request.url), code = url.searchParams.get('code') ?? '', state = url.searchParams.get('state') ?? '';
  if (!['google', 'github'].includes(provider) || !code || code.length > 2048 || !/^[A-Za-z0-9_-]{43}$/.test(state)) return authPage('<p>Sign-in could not be completed. Return to the TV and try again.</p>', 400);
  const consumed = await coordinator(env, 'auth/consume-state', { stateHash: await hashText(state), provider, now: Date.now() });
  if (!consumed.ok) return authPage('<p>This sign-in request is invalid or has expired. Return to the TV and try again.</p>', 400);
  const { sessionHash, familyId } = await consumed.json() as { sessionHash: string; familyId: string };
  const clientId = provider === 'google' ? env.GOOGLE_CLIENT_ID : env.GITHUB_CLIENT_ID;
  const clientSecret = provider === 'google' ? env.GOOGLE_CLIENT_SECRET : env.GITHUB_CLIENT_SECRET;
  if (!clientId || !clientSecret) return authPage('<p>This provider is not configured. Return to the TV.</p>', 503);
  const redirectUri = `${url.origin}/v1/oauth/${provider}/callback`, fetcher = env.FETCH ?? fetch;
  try {
    let subject = '', displayName = '';
    if (provider === 'google') {
      const tokenResponse = await fetcher('https://oauth2.googleapis.com/token', { method: 'POST', headers: { 'content-type': 'application/x-www-form-urlencoded' }, body: new URLSearchParams({ code, client_id: clientId, client_secret: clientSecret, redirect_uri: redirectUri, grant_type: 'authorization_code' }) });
      if (!tokenResponse.ok) throw new Error('provider');
      const tokenData = await tokenResponse.json() as { access_token?: string };
      if (!tokenData.access_token) throw new Error('provider');
      const profile = await fetcher('https://openidconnect.googleapis.com/v1/userinfo', { headers: { authorization: `Bearer ${tokenData.access_token}` } });
      if (!profile.ok) throw new Error('provider');
      const account = await profile.json() as { sub?: string; name?: string; given_name?: string };
      subject = account.sub ?? '';
      displayName = cleanDisplayName(account.name ?? account.given_name ?? '') || 'Google user';
    } else {
      const tokenResponse = await fetcher('https://github.com/login/oauth/access_token', { method: 'POST', headers: { accept: 'application/json', 'content-type': 'application/json' }, body: JSON.stringify({ code, client_id: clientId, client_secret: clientSecret, redirect_uri: redirectUri }) });
      if (!tokenResponse.ok) throw new Error('provider');
      const tokenData = await tokenResponse.json() as { access_token?: string };
      if (!tokenData.access_token) throw new Error('provider');
      const profile = await fetcher('https://api.github.com/user', { headers: { authorization: `Bearer ${tokenData.access_token}`, accept: 'application/vnd.github+json', 'user-agent': 'CleanTV-FamilySync' } });
      if (!profile.ok) throw new Error('provider');
      const account = await profile.json() as { id?: number; name?: string | null; login?: string };
      subject = Number.isSafeInteger(account.id) ? String(account.id) : '';
      displayName = cleanDisplayName(account.name ?? account.login ?? '') || 'GitHub user';
    }
    if (!subject || subject.length > 255) throw new Error('provider');
    const linked = await coordinator(env, 'auth/link', { sessionHash, familyId, provider, subject, displayName, now: Date.now() });
    if (linked.status === 409) return authPage('<p>This account is already linked to another family. Sign in with a different account.</p>', 409);
    if (!linked.ok) throw new Error('link');
    return authPage(`<p>Welcome, ${escapeHtml(displayName)}. Your account is linked to this family. You can return to your TV.</p>`);
  } catch { return authPage('<p>Sign-in could not be completed. Return to the TV and try again.</p>', 400); }
}

async function sync(request: Request, env: Env, familyId: string, deviceId: string): Promise<Response> {
  if (!validId(familyId) || !validId(deviceId)) return error(400, 'invalid_path');
  if (!(await authorized(request, familyId, env))) return error(401, 'unauthorized');
  const key = `v1/${familyId}/${deviceId}.json`;
  if (request.method === 'GET') {
    const object = await env.R2_BUCKET.get(key);
    if (!object) return json({ schemaVersion: 1, familyId, deviceId, updatedAt: 0, records: [] });
    try {
      const stored: unknown = await object.json();
      return validSnapshot(stored, familyId, deviceId) ? json(stored) : error(500, 'internal_error');
    } catch { return error(500, 'internal_error'); }
  }
  if (request.method === 'PUT') {
    const body = await readBody(request);
    if ('status' in body) return error(body.status, body.status === 413 ? 'payload_too_large' : 'invalid_json');
    let data: unknown;
    try { data = JSON.parse(body.text); } catch { return error(400, 'invalid_json'); }
    if (!validSnapshot(data, familyId, deviceId)) return error(400, 'invalid_snapshot');
    await env.R2_BUCKET.put(key, JSON.stringify(data), { httpMetadata: { contentType: 'application/json; charset=utf-8' } });
    return new Response(null, { status: 204 });
  }
  return error(404, 'not_found');
}

export default {
  async fetch(request: Request, env: Env): Promise<Response> {
    try {
      const url = new URL(request.url);
      if (url.pathname === '/v1/family-auth/sessions' && request.method === 'POST') return await createAuthSession(request, env);
      const claimMatch = /^\/v1\/family-auth\/sessions\/([^/]+)\/claim$/.exec(url.pathname);
      if (claimMatch && request.method === 'POST') return await claimFamily(request, env, claimMatch[1]);
      const authMatch = /^\/v1\/family-auth\/sessions\/([^/]+)(?:\/(oauth\/(google|github)|cancel))?$/.exec(url.pathname);
      if (authMatch) {
        const [, sessionId, nested, provider] = authMatch;
        if (nested?.startsWith('oauth/')) return request.method === 'GET' ? await beginOAuth(request, env, sessionId, provider) : error(404, 'not_found');
        if (nested === 'cancel') return request.method === 'POST' ? await authSession(request, env, sessionId, 'cancel') : error(404, 'not_found');
        return request.method === 'GET' ? await authSession(request, env, sessionId, 'status') : error(404, 'not_found');
      }
      const pageMatch = /^\/auth\/([^/]+)$/.exec(url.pathname);
      if (pageMatch && request.method === 'GET') return await phonePage(pageMatch[1], env);
      const qrMatch = /^\/auth\/qr\/([A-Za-z0-9_-]+)\.svg$/.exec(url.pathname);
      if (qrMatch && request.method === 'GET') return await qrImage(request, env, qrMatch[1]);
      const callbackMatch = /^\/v1\/oauth\/(google|github)\/callback$/.exec(url.pathname);
      if (callbackMatch && request.method === 'GET') return await oauthCallback(request, env, callbackMatch[1]);
      if (url.pathname === '/v1/families') return request.method === 'POST' ? await register(request, env) : error(404, 'not_found');
      if (url.pathname === '/v1/families/join') return request.method === 'POST' ? await redeemJoinCode(request, env) : error(404, 'not_found');
      const joinMatch = /^\/v1\/families\/([^/]+)\/join-code$/.exec(url.pathname);
      if (joinMatch) return request.method === 'POST' ? await familyJoinCode(request, env, joinMatch[1]) : error(404, 'not_found');
      const accountsMatch = /^\/v1\/families\/([^/]+)\/accounts$/.exec(url.pathname);
      if (accountsMatch) return request.method === 'GET' ? await familyLinkedAccounts(request, env, accountsMatch[1]) : error(404, 'not_found');
      const mergeMatch = /^\/v1\/families\/([^/]+)\/merge$/.exec(url.pathname);
      if (mergeMatch) return request.method === 'POST' ? await mergeFamilies(request, env, mergeMatch[1]) : error(404, 'not_found');
      const match = /^\/v1\/sync\/([^/]+)\/([^/]+)$/.exec(url.pathname);
      if (match) return ['GET', 'PUT'].includes(request.method) ? await sync(request, env, match[1], match[2]) : error(404, 'not_found');
      return error(404, 'not_found');
    } catch { return error(500, 'internal_error'); }
  }
};
