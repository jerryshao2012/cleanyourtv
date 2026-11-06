const UUID = /^[0-9a-f]{8}-[0-9a-f]{4}-[1-8][0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}$/i;
const B64URL_32 = /^[A-Za-z0-9_-]{43}$/;
const MAX_BODY = 64 * 1024;
const MAX_URL = 2048;

interface Env {
  R2_BUCKET: R2Bucket;
  FAMILY_AUTH: KVNamespace;
  REGISTRATION_COORDINATOR: DurableObjectNamespace<RegistrationCoordinator>;
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
    this.sql.exec('CREATE TABLE IF NOT EXISTS registration_attempts (ip_hash TEXT NOT NULL, occurred_at INTEGER NOT NULL)');
    this.sql.exec('CREATE INDEX IF NOT EXISTS registration_attempts_ip_time ON registration_attempts (ip_hash, occurred_at)');
  }

  async fetch(request: Request): Promise<Response> {
    let body: Record<string, unknown>;
    try { body = await request.json() as Record<string, unknown>; } catch { return error(400, 'invalid_request'); }
    if (!request.url.endsWith('/register') || typeof body.familyId !== 'string' || !validId(body.familyId) || typeof body.secretHash !== 'string' || !/^[0-9a-f]{64}$/.test(body.secretHash) || typeof body.ipHash !== 'string' || !/^[0-9a-f]{64}$/.test(body.ipHash)) return error(400, 'invalid_request');
    return this.storage.transactionSync(() => {
      const rows = this.sql.exec<{ secret_hash: string }>('SELECT secret_hash FROM families WHERE family_id = ?', body.familyId).toArray();
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
}

function fromHex(value: string): Uint8Array { return Uint8Array.from(value.match(/.{2}/g) ?? [], pair => parseInt(pair, 16)); }

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
      if (url.pathname === '/v1/families') return request.method === 'POST' ? await register(request, env) : error(404, 'not_found');
      const match = /^\/v1\/sync\/([^/]+)\/([^/]+)$/.exec(url.pathname);
      if (match) return ['GET', 'PUT'].includes(request.method) ? await sync(request, env, match[1], match[2]) : error(404, 'not_found');
      return error(404, 'not_found');
    } catch { return error(500, 'internal_error'); }
  }
};
