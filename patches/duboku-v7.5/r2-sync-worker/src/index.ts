const UUID = /^[0-9a-f]{8}-[0-9a-f]{4}-[1-8][0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}$/i;
const B64URL_32 = /^[A-Za-z0-9_-]{43}$/;
const MAX_BODY = 64 * 1024;
const MAX_URL = 2048;
const JOIN_ALPHABET = '23456789ABCDEFGHJKLMNPQRSTUVWXYZ';
const MAX_MERGE_FAMILIES = 8;
const MAX_MERGE_SNAPSHOTS = 500;

interface Env {
  R2_BUCKET: R2Bucket;
  FAMILY_AUTH: KVNamespace;
  REGISTRATION_COORDINATOR: DurableObjectNamespace<RegistrationCoordinator>;
  JOIN_CODE_KEY: string;
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
  const ip = request.headers.get('CF-Connecting-IP');
  if (!ip || ip.length > 128) return error(400, 'invalid_request');
  const hash = await sha256(secret);
  const coordinator = env.REGISTRATION_COORDINATOR.getByName('registration-coordinator');
  const result = await coordinator.fetch('https://coordinator/register', {
    method: 'POST', headers: { 'content-type': 'application/json' },
    body: JSON.stringify({ familyId, secretHash: hex(hash), ipHash: hex(await sha256(new TextEncoder().encode(ip))) })
  });
  if (result.status === 201 || result.status === 200) await env.FAMILY_AUTH.put(`family:${familyId}`, hex(hash));
  return result.status === 201 || result.status === 200 ? json({ familyId, registered: true }, result.status) : result;
}
function hex(bytes: Uint8Array): string { return Array.from(bytes, b => b.toString(16).padStart(2, '0')).join(''); }

async function authorized(request: Request, familyId: string, env: Env): Promise<boolean> {
  const header = request.headers.get('authorization') ?? '';
  const match = /^Bearer ([A-Za-z0-9_-]{43})$/.exec(header);
  const secret = decodeSecret(match?.[1]);
  if (!secret) return false;
  const stored = await env.FAMILY_AUTH.get(`family:${familyId}`);
  return !!stored && /^[0-9a-f]{64}$/.test(stored) && equalHash(await sha256(secret), fromHex(stored));
}

export class RegistrationCoordinator {
  private storage: DurableObjectStorage;
  private sql: SqlStorage;
  constructor(state: DurableObjectState) {
    this.storage = state.storage;
    this.sql = state.storage.sql;
    this.sql.exec('CREATE TABLE IF NOT EXISTS families (family_id TEXT PRIMARY KEY, secret_hash TEXT NOT NULL)');
    this.sql.exec('CREATE TABLE IF NOT EXISTS revoked_families (family_id TEXT PRIMARY KEY, revoked_at INTEGER NOT NULL)');
    this.sql.exec('CREATE TABLE IF NOT EXISTS registration_attempts (ip_hash TEXT NOT NULL, occurred_at INTEGER NOT NULL)');
    this.sql.exec('CREATE INDEX IF NOT EXISTS registration_attempts_ip_time ON registration_attempts (ip_hash, occurred_at)');
    this.sql.exec('CREATE TABLE IF NOT EXISTS join_codes (family_id TEXT PRIMARY KEY, code_hash TEXT NOT NULL UNIQUE, encrypted_payload TEXT NOT NULL)');
    this.sql.exec('CREATE TABLE IF NOT EXISTS join_attempts (kind TEXT NOT NULL, subject_hash TEXT NOT NULL, occurred_at INTEGER NOT NULL)');
    this.sql.exec('CREATE INDEX IF NOT EXISTS join_attempts_subject_time ON join_attempts (kind, subject_hash, occurred_at)');
    this.sql.exec('CREATE TABLE IF NOT EXISTS merge_manifests (target_family_id TEXT PRIMARY KEY, source_families TEXT NOT NULL, source_fingerprint TEXT NOT NULL)');
  }

  async fetch(request: Request): Promise<Response> {
    let body: Record<string, unknown>;
    try { body = await request.json() as Record<string, unknown>; } catch { return error(400, 'invalid_request'); }
    const path = new URL(request.url).pathname;
    if (path === '/register') {
      if (typeof body.familyId !== 'string' || !validId(body.familyId) || typeof body.secretHash !== 'string' || !/^[0-9a-f]{64}$/.test(body.secretHash) || typeof body.ipHash !== 'string' || !/^[0-9a-f]{64}$/.test(body.ipHash)) return error(400, 'invalid_request');
      return this.storage.transactionSync(() => {
      const rows = this.sql.exec<{ secret_hash: string }>('SELECT secret_hash FROM families WHERE family_id = ?', body.familyId).toArray();
      if (this.sql.exec('SELECT family_id FROM revoked_families WHERE family_id = ?', body.familyId).toArray().length) return error(410, 'family_revoked');
      if (rows.length) return equalHash(fromHex(rows[0].secret_hash), fromHex(body.secretHash)) ? json({ familyId: body.familyId, registered: true }, 200) : error(409, 'family_conflict');
      const now = Date.now();
      this.sql.exec('DELETE FROM registration_attempts WHERE occurred_at <= ?', now - 3_600_000);
      const attempts = this.sql.exec<{ count: number }>('SELECT COUNT(*) AS count FROM registration_attempts WHERE ip_hash = ?', body.ipHash).toArray()[0].count;
      if (attempts >= 10) return error(429, 'rate_limited');
      this.sql.exec('INSERT INTO registration_attempts (ip_hash, occurred_at) VALUES (?, ?)', body.ipHash, now);
      this.sql.exec('INSERT INTO families (family_id, secret_hash) VALUES (?, ?)', body.familyId, body.secretHash);
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
    if (path === '/family/status') {
      if (typeof body.familyId !== 'string' || !validId(body.familyId)) return error(400, 'invalid_request');
      const rows = this.sql.exec('SELECT family_id FROM revoked_families WHERE family_id = ?', body.familyId).toArray();
      return json({ revoked: rows.length > 0 });
    }
    if (path === '/family/revoke-many') {
      if (!Array.isArray(body.familyIds) || body.familyIds.length < 1 || body.familyIds.length > MAX_MERGE_FAMILIES || body.familyIds.some(id => typeof id !== 'string' || !validId(id))) return error(400, 'invalid_request');
      return this.storage.transactionSync(() => {
        for (const familyId of body.familyIds as string[]) {
          this.sql.exec('INSERT OR IGNORE INTO revoked_families (family_id, revoked_at) VALUES (?, ?)', familyId, Date.now());
          this.sql.exec('DELETE FROM families WHERE family_id = ?', familyId);
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
}

function fromHex(value: string): Uint8Array { return Uint8Array.from(value.match(/.{2}/g) ?? [], pair => parseInt(pair, 16)); }

async function familyJoinCode(request: Request, env: Env, familyId: string): Promise<Response> {
  if (!validId(familyId)) return error(400, 'invalid_path');
  if (!(await authorized(request, familyId, env))) return error(401, 'unauthorized');
  const status = await coordinator(env, 'family/status', { familyId });
  if (status.status !== 200) return error(503, 'internal_error');
  if ((await status.json() as { revoked?: boolean }).revoked) return error(401, 'unauthorized');
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
  const stored = await env.FAMILY_AUTH.get(`family:${payload.familyId}`);
  const secretHash = hex(await sha256(decodeSecret(payload.familySecret)!));
  if (!stored || !equalHash(fromHex(stored), fromHex(secretHash))) return error(404, 'invalid_join_code');
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
    const sourceAuth = await env.FAMILY_AUTH.get(`family:${source.familyId}`);
    if (!sourceAuth || !equalHash(fromHex(sourceAuth), await sha256(decodeSecret(source.familySecret)!))) return error(404, 'invalid_join_code');
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
  for (const source of sources) await env.FAMILY_AUTH.delete(`family:${source.familyId}`);
  const cleared = await coordinator(env, 'merge/clear', { targetFamilyId });
  if (cleared.status !== 200) return error(500, 'merge_cleanup_failed');
  return json({ cleanedFamilies: sources.map(item => item.familyId) });
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
    const status = await coordinator(env, 'family/status', { familyId });
    if (status.status !== 200) return error(503, 'internal_error');
    if ((await status.json() as { revoked?: boolean }).revoked) return error(401, 'unauthorized');
    await env.R2_BUCKET.put(key, JSON.stringify(data), { httpMetadata: { contentType: 'application/json; charset=utf-8' } });
    return new Response(null, { status: 204 });
  }
  return error(404, 'not_found');
}

export default {
  async fetch(request: Request, env: Env): Promise<Response> {
    try {
      const url = new URL(request.url);
      if (url.pathname === '/v1/families') return request.method === 'POST' ? await register(request, env) : error(404, 'not_found');
      if (url.pathname === '/v1/families/join') return request.method === 'POST' ? await redeemJoinCode(request, env) : error(404, 'not_found');
      const joinMatch = /^\/v1\/families\/([^/]+)\/join-code$/.exec(url.pathname);
      if (joinMatch) return request.method === 'POST' ? await familyJoinCode(request, env, joinMatch[1]) : error(404, 'not_found');
      const mergeMatch = /^\/v1\/families\/([^/]+)\/merge$/.exec(url.pathname);
      if (mergeMatch) return request.method === 'POST' ? await mergeFamilies(request, env, mergeMatch[1]) : error(404, 'not_found');
      const match = /^\/v1\/sync\/([^/]+)\/([^/]+)$/.exec(url.pathname);
      if (match) return ['GET', 'PUT'].includes(request.method) ? await sync(request, env, match[1], match[2]) : error(404, 'not_found');
      return error(404, 'not_found');
    } catch { return error(500, 'internal_error'); }
  }
};
