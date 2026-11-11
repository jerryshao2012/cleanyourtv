import test from 'node:test';
import assert from 'node:assert/strict';
import { DatabaseSync } from 'node:sqlite';
import worker, { RegistrationCoordinator } from '../src/index.ts';

const FAMILY = '123e4567-e89b-42d3-a456-426614174000';
const DEVICE = '223e4567-e89b-42d3-a456-426614174000';
const SECRET = Buffer.alloc(32, 7).toString('base64url');
const SNAPSHOT = { schemaVersion: 2, familyId: FAMILY, deviceId: DEVICE, updatedAt: 1700000000000, records: [] };
function env() {
  const values = new Map();
  const counts = { get: 0, put: 0, delete: 0, list: 0, coordinator: 0 };
  const fault = { failDeleteAfter: null };
  const database = new DatabaseSync(':memory:');
  const storage = { sql: { exec: (query, ...args) => { const statement = database.prepare(query); if (/^\s*(SELECT|PRAGMA)/i.test(query)) return { toArray: () => statement.all(...args) }; statement.run(...args); return { toArray: () => [] }; } }, transactionSync: callback => { database.exec('BEGIN IMMEDIATE'); try { const result = callback(); database.exec('COMMIT'); return result; } catch (error) { database.exec('ROLLBACK'); throw error; } } };
  const coordinator = new RegistrationCoordinator({ storage });
  return { values, counts, database, coordinator, fault, JOIN_CODE_KEY: Buffer.alloc(32, 3).toString('base64url'),
    FETCH: (...args) => fetch(...args),
    REGISTRATION_COORDINATOR: { getByName() { return { fetch: (input, init) => { counts.coordinator++; return coordinator.fetch(new Request(input, init)); } }; } },
    R2_BUCKET: {
      async get(key) { counts.get++; const value = values.get(`r2:${key}`); return value == null ? null : { async json() { return JSON.parse(value); } }; },
      async put(key, value) { counts.put++; values.set(`r2:${key}`, await new Response(value).text()); },
      async delete(key) { counts.delete++; if (fault.failDeleteAfter === 0) { fault.failDeleteAfter = null; throw new Error('injected delete failure'); } if (fault.failDeleteAfter !== null) fault.failDeleteAfter--; values.delete(`r2:${key}`); },
      async list({ prefix, cursor } = {}) {
        counts.list++;
        const objects = [...values.keys()].filter(key => key.startsWith(`r2:${prefix}`)).sort().map(key => ({ key: key.slice(3), etag: 'test-etag' }));
        return { objects, truncated: false, cursor: undefined };
      }
    }
  };
}
async function call(e, path, { method = 'GET', body, auth = SECRET, ip = '192.0.2.4' } = {}) {
  return worker.fetch(new Request(`https://worker.test${path}`, { method, headers: { ...(body === undefined ? {} : { 'content-type': 'application/json' }), ...(auth ? { authorization: `Bearer ${auth}` } : {}), 'CF-Connecting-IP': ip }, body: body === undefined ? undefined : typeof body === 'string' ? body : JSON.stringify(body) }), e);
}
async function create(e, familyId, familySecret = SECRET, ip) {
  return call(e, '/v1/families', { method: 'POST', body: { familyId, familySecret }, auth: null, ...(ip ? { ip } : {}) });
}
test('registers family idempotently and stores its hash only in Durable Object SQL', async () => {
  const e = env();
  assert.equal((await create(e, FAMILY)).status, 201);
  for (let n = 0; n < 15; n++) assert.equal((await create(e, FAMILY)).status, 200);
  assert.equal((await create(e, FAMILY, Buffer.alloc(32, 8).toString('base64url'))).status, 409);
  assert.equal([...e.values.values()].includes(SECRET), false);
  assert.match(e.database.prepare('SELECT secret_hash FROM families WHERE family_id = ?').get(FAMILY).secret_hash, /^[0-9a-f]{64}$/);
  assert.equal('FAMILY_AUTH' in e, false);
  e.database.close();
});
test('serializes concurrent conflicting registrations for one family', async () => {
  const e = env();
  const results = await Promise.all([
    create(e, FAMILY, SECRET, '192.0.2.11'),
    create(e, FAMILY, Buffer.alloc(32, 8).toString('base64url'), '192.0.2.12')
  ]);
  assert.deepEqual(results.map(r => r.status).sort(), [201, 409]);
  e.database.close();
});
test('denies Family A secret when requesting a Family B snapshot', async () => {
  const e = env();
  const familyB = '323e4567-e89b-42d3-a456-426614174010';
  const secretB = Buffer.alloc(32, 8).toString('base64url');
  assert.equal((await create(e, FAMILY, SECRET, '192.0.2.20')).status, 201);
  assert.equal((await create(e, familyB, secretB, '192.0.2.21')).status, 201);
  assert.equal((await call(e, `/v2/sync/${familyB}/${DEVICE}`, { auth: SECRET })).status, 401);
  assert.equal(e.counts.get, 0);
  e.database.close();
});
test('GET returns empty schema and performs exactly one R2 get', async () => {
  const e = env(); await create(e, FAMILY);
  const response = await call(e, `/v2/sync/${FAMILY}/${DEVICE}`);
  assert.equal(response.status, 200);
  assert.deepEqual(await response.json(), { schemaVersion: 2, familyId: FAMILY, deviceId: DEVICE, updatedAt: 0, records: [] });
  assert.deepEqual(e.counts, { get: 1, put: 0, delete: 0, list: 0, coordinator: 2 });
  e.database.close();
});
test('PUT then GET round trips while merging the current snapshot', async () => {
  const e = env(); await create(e, FAMILY);
  assert.equal((await call(e, `/v2/sync/${FAMILY}/${DEVICE}`, { method: 'PUT', body: SNAPSHOT })).status, 204);
  const response = await call(e, `/v2/sync/${FAMILY}/${DEVICE}`);
  assert.deepEqual(await response.json(), SNAPSHOT);
  assert.deepEqual(e.counts, { get: 2, put: 1, delete: 0, list: 0, coordinator: 3 });
  e.database.close();
});

test('v2 sync orders rows by UTC time, logical counter, then device id', async () => {
  const e = env(); await create(e, FAMILY);
  const base = { id: 'episode-1', name: 'Clock test', episode: '第1集', progressInMillis: 1000, durationInMillis: 10000, createdAt: 1, modifiedAt: 100, videoPageUrl: '', detailPageUrl: '', posterUrl: '' };
  const v2 = (clockVersion, row = base) => ({ schemaVersion: 2, familyId: FAMILY, deviceId: DEVICE, updatedAt: clockVersion.utcMillis, records: [{ ...row, clockVersion }] });
  assert.equal((await call(e, `/v2/sync/${FAMILY}/${DEVICE}`, { method: 'PUT', body: v2({ utcMillis: 1000, logicalCounter: 3, deviceId: DEVICE }) })).status, 204);
  assert.equal((await call(e, `/v2/sync/${FAMILY}/${DEVICE}`, { method: 'PUT', body: v2({ utcMillis: 1000, logicalCounter: 2, deviceId: '323e4567-e89b-42d3-a456-426614174000' }, { ...base, episode: '第9集', progressInMillis: 9000 }) })).status, 204);
  let current = await (await call(e, `/v2/sync/${FAMILY}/${DEVICE}`)).json();
  assert.equal(current.records[0].episode, '第1集');
  assert.deepEqual(current.records[0].clockVersion, { utcMillis: 1000, logicalCounter: 3, deviceId: DEVICE });
  assert.equal((await call(e, `/v2/sync/${FAMILY}/${DEVICE}`, { method: 'PUT', body: v2({ utcMillis: 1000, logicalCounter: 4, deviceId: DEVICE }, { ...base, episode: '第2集', progressInMillis: 2000 }) })).status, 204);
  current = await (await call(e, `/v2/sync/${FAMILY}/${DEVICE}`)).json();
  assert.equal(current.records[0].episode, '第2集');
  assert.equal((await call(e, `/v2/sync/${FAMILY}/${DEVICE}`, { method: 'PUT', body: v2({ utcMillis: 1000, logicalCounter: 4, deviceId: '323e4567-e89b-42d3-a456-426614174000' }, { ...base, episode: '第3集', progressInMillis: 3000 }) })).status, 204);
  current = await (await call(e, `/v2/sync/${FAMILY}/${DEVICE}`)).json();
  assert.equal(current.records[0].episode, '第3集');
  assert.equal((await call(e, `/v2/sync/${FAMILY}/${DEVICE}`, { method: 'PUT', body: v2({ utcMillis: 1000, logicalCounter: 4, deviceId: '323e4567-e89b-42d3-a456-426614174000' }, { ...base, episode: '第9集', progressInMillis: 9000 }) })).status, 204);
  current = await (await call(e, `/v2/sync/${FAMILY}/${DEVICE}`)).json();
  assert.equal(current.records[0].episode, '第3集', 'episode/progress cannot override an equal non-legacy version');
  e.database.close();
});

test('equal v2 version is idempotent even when episode or progress is larger', async () => {
  const e = env(); await create(e, FAMILY);
  const base = { id: 'episode-1', name: 'Equal version', episode: '第1集', progressInMillis: 1000, durationInMillis: 10000, createdAt: 1, modifiedAt: 100, videoPageUrl: '', detailPageUrl: '', posterUrl: '' };
  const version = { utcMillis: 1000, logicalCounter: 0, deviceId: DEVICE };
  const body = row => ({ schemaVersion: 2, familyId: FAMILY, deviceId: DEVICE, updatedAt: 1000, records: [{ ...row, clockVersion: version }] });
  assert.equal((await call(e, `/v2/sync/${FAMILY}/${DEVICE}`, { method: 'PUT', body: body(base) })).status, 204);
  assert.equal((await call(e, `/v2/sync/${FAMILY}/${DEVICE}`, { method: 'PUT', body: body({ ...base, episode: '第9集', progressInMillis: 9000 }) })).status, 204);
  const current = await (await call(e, `/v2/sync/${FAMILY}/${DEVICE}`)).json();
  assert.equal(current.records[0].episode, '第1集');
  assert.equal(current.records[0].progressInMillis, 1000);
  e.database.close();
});

test('v1 sync endpoint is removed and v2 rejects legacy schema bodies', async () => {
  const e = env(); await create(e, FAMILY);
  assert.equal((await call(e, `/v1/sync/${FAMILY}/${DEVICE}`)).status, 404);
  assert.equal((await call(e, `/v2/sync/${FAMILY}/${DEVICE}`, { method: 'PUT', body: { ...SNAPSHOT, schemaVersion: 1 } })).status, 400);
  assert.equal(e.counts.put, 0);
  e.database.close();
});

test('v2 sync rejects malformed logical clock metadata', async () => {
  const e = env(); await create(e, FAMILY);
  const row = { id: 'x', name: 'show', episode: '1', progressInMillis: 1, durationInMillis: 2, createdAt: 1, modifiedAt: 1, videoPageUrl: '', detailPageUrl: '', posterUrl: '', clockVersion: { utcMillis: 1, logicalCounter: -1, deviceId: DEVICE } };
  assert.equal((await call(e, `/v2/sync/${FAMILY}/${DEVICE}`, { method: 'PUT', body: { schemaVersion: 2, familyId: FAMILY, deviceId: DEVICE, updatedAt: 1, records: [row] } })).status, 400);
  assert.equal(e.counts.put, 0);
  e.database.close();
});

test('creates reusable family join code, redeems it, and rotation revokes the old code', async () => {
  const e = env(); await create(e, FAMILY);
  const issued = await call(e, `/v1/families/${FAMILY}/join-code`, { method: 'POST' });
  assert.equal(issued.status, 201);
  const { joinCode } = await issued.json();
  assert.match(joinCode, /^[23456789ABCDEFGHJKLMNPQRSTUVWXYZ-]{19}$/);
  assert.equal(e.database.prepare('SELECT encrypted_payload FROM join_codes WHERE family_id = ?').get(FAMILY).encrypted_payload.includes(SECRET), false);
  assert.equal([...e.values.values()].includes(joinCode), false);
  const redeemed = await call(e, '/v1/families/join', { method: 'POST', body: { joinCode }, auth: null });
  assert.equal(redeemed.status, 200);
  assert.deepEqual(await redeemed.json(), { familyId: FAMILY, familySecret: SECRET, deviceIds: [] });
  const rotated = await call(e, `/v1/families/${FAMILY}/join-code`, { method: 'POST' });
  assert.equal(rotated.status, 201);
  assert.notEqual((await rotated.json()).joinCode, joinCode);
  assert.equal((await call(e, '/v1/families/join', { method: 'POST', body: { joinCode }, auth: null })).status, 404);
  e.database.close();
});
test('preserves join lookup rate limiting instead of reporting throttling as a bad code', async () => {
  const e = env(); await create(e, FAMILY);
  const issued = await call(e, `/v1/families/${FAMILY}/join-code`, { method: 'POST' });
  const { joinCode } = await issued.json();
  for (let i = 0; i < 30; i++) assert.equal((await call(e, '/v1/families/join', { method: 'POST', body: { joinCode: '2222-2222-2222-2222' }, auth: null })).status, 404);
  assert.equal((await call(e, '/v1/families/join', { method: 'POST', body: { joinCode }, auth: null })).status, 429);
  e.database.close();
});

test('refuses cleanup when the source family has no cloud snapshots to preserve', async () => {
  const e = env();
  const sourceFamily = '323e4567-e89b-42d3-a456-426614174010';
  const sourceSecret = Buffer.alloc(32, 8).toString('base64url');
  assert.equal((await create(e, FAMILY)).status, 201);
  assert.equal((await create(e, sourceFamily, sourceSecret)).status, 201);
  const issued = await call(e, `/v1/families/${sourceFamily}/join-code`, { method: 'POST', auth: sourceSecret });
  const { joinCode } = await issued.json();
  assert.equal((await call(e, `/v1/families/${FAMILY}/merge`, { method: 'POST', body: { action: 'copy', sourceCodes: [joinCode] } })).status, 200);
  const cleanup = await call(e, `/v1/families/${FAMILY}/merge`, { method: 'POST', body: { action: 'cleanup', sourceCodes: [joinCode], confirmed: true } });
  assert.equal(cleanup.status, 409);
  assert.equal((await cleanup.json()).error, 'source_snapshot_unavailable');
  assert.ok(e.database.prepare('SELECT family_id FROM families WHERE family_id = ?').get(sourceFamily));
  e.database.close();
});
test('copies every source snapshot into the canonical family and deletes source only after explicit cleanup', async () => {
  const e = env();
  const sourceFamily = '323e4567-e89b-42d3-a456-426614174010';
  const sourceSecret = Buffer.alloc(32, 8).toString('base64url');
  const sourceDevice = '423e4567-e89b-42d3-a456-426614174010';
  const sourceDevice2 = '523e4567-e89b-42d3-a456-426614174010';
  assert.equal((await create(e, FAMILY)).status, 201);
  assert.equal((await create(e, sourceFamily, sourceSecret)).status, 201);
  const codeResponse = await call(e, `/v1/families/${sourceFamily}/join-code`, { method: 'POST', auth: sourceSecret });
  const sourceCode = (await codeResponse.json()).joinCode;
  const sourceRow = { id: 'show-1', name: 'Test Show', episode: '第5集', progressInMillis: 2000, durationInMillis: 10000, createdAt: 1, modifiedAt: 5, videoPageUrl: '', detailPageUrl: '', posterUrl: '' };
  const sourceSnapshot = { schemaVersion: 2, familyId: sourceFamily, deviceId: sourceDevice, updatedAt: 20000,
    records: [{ ...sourceRow, clockVersion: { utcMillis: 20000, logicalCounter: 1, deviceId: sourceDevice } }] };
  const targetSnapshot = { schemaVersion: 2, familyId: FAMILY, deviceId: sourceDevice, updatedAt: 10000,
    records: [{ ...sourceRow, episode: '第9集', progressInMillis: 9000, modifiedAt: 999999,
      clockVersion: { utcMillis: 10000, logicalCounter: 1, deviceId: sourceDevice } }] };
  assert.equal((await call(e, `/v2/sync/${sourceFamily}/${sourceDevice}`, { method: 'PUT', body: sourceSnapshot, auth: sourceSecret })).status, 204);
  assert.equal((await call(e, `/v2/sync/${FAMILY}/${sourceDevice}`, { method: 'PUT', body: targetSnapshot })).status, 204);
  const secondSourcePut = await call(e, `/v2/sync/${sourceFamily}/${sourceDevice2}`, { method: 'PUT', auth: sourceSecret,
    body: { ...sourceSnapshot, deviceId: sourceDevice2, records: [{ ...sourceSnapshot.records[0], id: 'show-2', name: 'Other Show', clockVersion: { ...sourceSnapshot.records[0].clockVersion, deviceId: sourceDevice2 } }] } });
  assert.equal(secondSourcePut.status, 204, await secondSourcePut.text());
  const joined = await call(e, '/v1/families/join', { method: 'POST', body: { joinCode: sourceCode }, auth: null });
  assert.deepEqual((await joined.json()).deviceIds, [sourceDevice, sourceDevice2].sort());
  const preview = await call(e, `/v1/families/${FAMILY}/merge`, { method: 'POST', body: { action: 'preview', sourceCodes: [sourceCode] } });
  assert.equal(preview.status, 200);
  assert.deepEqual(await preview.json(), { families: 1, snapshots: 2, records: 2, deviceIds: [sourceDevice, sourceDevice2] });
  assert.equal((await call(e, `/v1/families/${FAMILY}/merge`, { method: 'POST', body: { action: 'cleanup', sourceCodes: [sourceCode], confirmed: true } })).status, 409);
  const copied = await call(e, `/v1/families/${FAMILY}/merge`, { method: 'POST', body: { action: 'copy', sourceCodes: [sourceCode] } });
  assert.equal(copied.status, 200);
  const mergedSnapshot = await call(e, `/v2/sync/${FAMILY}/${sourceDevice}`, { auth: SECRET });
  assert.equal(mergedSnapshot.status, 200);
  assert.equal((await mergedSnapshot.json()).records[0].episode, '第5集');
  assert.equal((await call(e, `/v2/sync/${sourceFamily}/${sourceDevice}`, { auth: sourceSecret })).status, 200);
  assert.equal((await call(e, `/v2/sync/${sourceFamily}/${sourceDevice}`, { method: 'PUT', auth: sourceSecret,
    body: { ...SNAPSHOT, familyId: sourceFamily, deviceId: sourceDevice, records: [{ ...sourceRow, clockVersion: sourceSnapshot.records[0].clockVersion, progressInMillis: 3000, modifiedAt: 6 }] } })).status, 204);
  assert.equal((await call(e, `/v1/families/${FAMILY}/merge`, { method: 'POST', body: { action: 'cleanup', sourceCodes: [sourceCode], confirmed: true } })).status, 409);
  assert.equal((await call(e, `/v1/families/${FAMILY}/merge`, { method: 'POST', body: { action: 'copy', sourceCodes: [sourceCode] } })).status, 200);
  e.fault.failDeleteAfter = 1;
  assert.equal((await call(e, `/v1/families/${FAMILY}/merge`, { method: 'POST', body: { action: 'cleanup', sourceCodes: [sourceCode], confirmed: true } })).status, 500);
  const cleaned = await call(e, `/v1/families/${FAMILY}/merge`, { method: 'POST', body: { action: 'cleanup', sourceCodes: [sourceCode], confirmed: true } });
  assert.equal(cleaned.status, 200);
  assert.equal((await call(e, `/v2/sync/${sourceFamily}/${sourceDevice}`, { auth: sourceSecret })).status, 401);
  assert.equal((await create(e, sourceFamily, sourceSecret)).status, 410);
  assert.equal((await call(e, `/v2/sync/${FAMILY}/${sourceDevice}`, { auth: SECRET })).status, 200);
  e.database.close();
});
test('rejects invalid stored R2 schema and path identity', async () => {
  const e = env(); await create(e, FAMILY);
  e.values.set(`r2:v1/${FAMILY}/${DEVICE}.json`, JSON.stringify({ ...SNAPSHOT, familyId: DEVICE }));
  assert.equal((await call(e, `/v2/sync/${FAMILY}/${DEVICE}`)).status, 500);
  assert.equal(e.counts.get, 1);
  e.values.set(`r2:v1/${FAMILY}/${DEVICE}.json`, '{broken');
  assert.equal((await call(e, `/v2/sync/${FAMILY}/${DEVICE}`)).status, 500);
  assert.equal(e.counts.get, 2);
  e.database.close();
});
test('rejects bad auth, path mismatch, oversized payload and unknown routes', async () => {
  const e = env(); await create(e, FAMILY);
  assert.equal((await call(e, `/v2/sync/${FAMILY}/${DEVICE}`, { auth: Buffer.alloc(32, 9).toString('base64url') })).status, 401);
  assert.equal((await call(e, `/v2/sync/${FAMILY}/${DEVICE}`, { method: 'PUT', body: { ...SNAPSHOT, familyId: DEVICE } })).status, 400);
  assert.equal((await call(e, `/v2/sync/${FAMILY}/${DEVICE}`, { method: 'PUT', body: 'x'.repeat(65537) })).status, 413);
  assert.equal((await call(e, '/not-a-route')).status, 404);
  assert.equal((await call(e, `/v2/sync/${FAMILY}/%ZZ`)).status, 400);
  assert.equal(e.counts.put, 0); assert.equal(e.counts.list, 0);
  e.database.close();
});
test('enforces ten registrations in a rolling hour, including across the hour boundary', async () => {
  const e = env();
  const originalNow = Date.now;
  try {
    Date.now = () => 1_800_000_000_000;
    for (let n = 0; n < 10; n++) {
      const id = `123e4567-e89b-42d3-a456-${String(n).padStart(12, '0')}`;
      assert.equal((await create(e, id, SECRET, '198.51.100.2')).status, 201);
    }
    Date.now = () => 1_800_003_599_000;
    assert.equal((await create(e, '323e4567-e89b-42d3-a456-000000000010', SECRET, '198.51.100.2')).status, 429);
    Date.now = () => 1_800_003_601_000;
    assert.equal((await create(e, '323e4567-e89b-42d3-a456-000000000010', SECRET, '198.51.100.2')).status, 201);
  } finally { Date.now = originalNow; e.database.close(); }
});
test('rejects negative progress, more than 20 records, and invalid URL schemes', async () => {
  const e = env(); await create(e, FAMILY);
  const invalid = { ...SNAPSHOT, records: [{ id: 'x', name: 'show', episode: '1', progressInMillis: -1, durationInMillis: 2, createdAt: 1, modifiedAt: 1, videoPageUrl: '', detailPageUrl: '', posterUrl: '', clockVersion: { utcMillis: 1, logicalCounter: 0, deviceId: DEVICE } }] };
  assert.equal((await call(e, `/v2/sync/${FAMILY}/${DEVICE}`, { method: 'PUT', body: invalid })).status, 400);
  const many = { ...SNAPSHOT, records: Array.from({ length: 21 }, () => ({ ...invalid.records[0], progressInMillis: 1 })) };
  assert.equal((await call(e, `/v2/sync/${FAMILY}/${DEVICE}`, { method: 'PUT', body: many })).status, 400);
  const badUrl = { ...SNAPSHOT, records: [{ ...invalid.records[0], progressInMillis: 1, videoPageUrl: 'javascript:alert(1)' }] };
  assert.equal((await call(e, `/v2/sync/${FAMILY}/${DEVICE}`, { method: 'PUT', body: badUrl })).status, 400);
  assert.equal(e.counts.put, 0);
  e.database.close();
});

test('creates a short-lived TV sign-in session and keeps its polling secret separate', async () => {
  const e = env(); await create(e, FAMILY);
  const response = await call(e, `/v1/family-auth/sessions?familyId=${FAMILY}`, { method: 'POST' });
  assert.equal(response.status, 201);
  const session = await response.json();
  assert.match(session.sessionId, /^[A-Za-z0-9_-]{43}$/);
  assert.match(session.pollSecret, /^[A-Za-z0-9_-]{43}$/);
  assert.equal(new URL(session.url).pathname, `/auth/${session.sessionId}`);
  assert.equal((await call(e, `/v1/family-auth/sessions/${session.sessionId}`)).status, 401);
  assert.equal((await call(e, `/v1/family-auth/sessions/${session.sessionId}`, { auth: session.pollSecret })).status, 200);
  const qr = await call(e, `/auth/qr/${session.sessionId}.svg`);
  assert.equal(qr.headers.get('content-type'), 'image/svg+xml; charset=utf-8');
  const svg = await qr.text();
  assert.ok(svg.length > 1000);
  const dark = new Set([...svg.matchAll(/M(\d+) (\d+)h1v1h-1z/g)].map(([, x, y]) => `${x},${y}`));
  const at = (x, y) => dark.has(`${x},${y}`) ? 1 : 0;
  const bits = [...Array(6)].map((_, i) => at(8, i)).concat(at(8, 7), at(8, 8), at(7, 8), [...Array(6)].map((_, i) => at(5 - i, 8)));
  const actual = bits.reduce((value, bit, i) => value | (bit << i), 0);
  let remainder = 8;
  for (let i = 0; i < 10; i++) remainder = (remainder << 1) ^ (((remainder >>> 9) & 1) * 0x537);
  assert.equal(actual, ((8 << 10) | remainder) ^ 0x5412, 'format bits must declare QR error correction L and mask 0');
  e.database.close();
});

test('links Google and GitHub stable IDs and rejects a provider identity already linked elsewhere', async () => {
  const e = env(); await create(e, FAMILY);
  e.GOOGLE_CLIENT_ID = 'google-client'; e.GOOGLE_CLIENT_SECRET = 'google-secret';
  e.GITHUB_CLIENT_ID = 'github-client'; e.GITHUB_CLIENT_SECRET = 'github-secret';
  const session = await (await call(e, `/v1/family-auth/sessions?familyId=${FAMILY}`, { method: 'POST' })).json();
  assert.match(await (await call(e, `/auth/${session.sessionId}`)).text(), /Google/);
  assert.match(await (await call(e, `/auth/${session.sessionId}`)).text(), /GitHub/);
  e.FETCH = async input => String(input).includes('oauth2.googleapis.com/token') ? Response.json({ access_token: 'google-token' }) : Response.json({ sub: 'google-subject', name: 'Alice Example' });
  const googleStart = await call(e, `/v1/family-auth/sessions/${session.sessionId}/oauth/google`, { auth: null });
  const googleState = new URL(googleStart.headers.get('location')).searchParams.get('state');
  assert.equal((await call(e, `/v1/oauth/google/callback?code=good&state=${googleState}`, { auth: null })).status, 200);
  assert.equal((await call(e, `/v1/oauth/google/callback?code=good&state=${googleState}`, { auth: null })).status, 400);
  const linked = await (await call(e, `/v1/family-auth/sessions/${session.sessionId}`, { auth: session.pollSecret })).json();
  assert.deepEqual(Object.fromEntries(Object.entries(linked).filter(([key]) => key !== 'familyTicket' && key !== 'familyId')), { status: 'linked', provider: 'google', displayName: 'Alice Example' });

  const githubSession = await (await call(e, `/v1/family-auth/sessions?familyId=${FAMILY}`, { method: 'POST' })).json();
  e.FETCH = async input => String(input).includes('github.com/login/oauth/access_token') ? Response.json({ access_token: 'github-token' }) : Response.json({ id: 9876, name: 'Bob Example', login: 'bob' });
  const githubStart = await call(e, `/v1/family-auth/sessions/${githubSession.sessionId}/oauth/github`, { auth: null });
  const githubState = new URL(githubStart.headers.get('location')).searchParams.get('state');
  assert.equal((await call(e, `/v1/oauth/github/callback?code=good&state=${githubState}`, { auth: null })).status, 200);
  assert.deepEqual(await (await call(e, `/v1/families/${FAMILY}/accounts`)).json(), {
    accounts: [{ provider: 'github', displayName: 'Bob Example' }, { provider: 'google', displayName: 'Alice Example' }],
    providers: ['github', 'google']
  });

  const familyB = '323e4567-e89b-42d3-a456-426614174010', secretB = Buffer.alloc(32, 8).toString('base64url');
  await create(e, familyB, secretB);
  const second = await (await call(e, `/v1/family-auth/sessions?familyId=${familyB}`, { method: 'POST', auth: secretB })).json();
  const secondStart = await call(e, `/v1/family-auth/sessions/${second.sessionId}/oauth/github`, { auth: null });
  const secondState = new URL(secondStart.headers.get('location')).searchParams.get('state');
  assert.equal((await call(e, `/v1/oauth/github/callback?code=good&state=${secondState}`, { auth: null })).status, 409);
  e.database.close();
});

test('a later TV using the same provider identity claims the existing family once', async () => {
  const e = env(); await create(e, FAMILY);
  e.GOOGLE_CLIENT_ID = 'google-client'; e.GOOGLE_CLIENT_SECRET = 'google-secret';
  const signIn = async mode => {
    const session = await (await call(e, `/v1/family-auth/sessions?familyId=${FAMILY}&mode=${mode}`, { method: 'POST' })).json();
    const start = await call(e, `/v1/family-auth/sessions/${session.sessionId}/oauth/google`, { auth: null });
    const state = new URL(start.headers.get('location')).searchParams.get('state');
    e.FETCH = async input => String(input).includes('oauth2.googleapis.com/token') ? Response.json({ access_token: 'google-token' }) : Response.json({ sub: 'stable-household-account', name: 'Alice' });
    assert.equal((await call(e, `/v1/oauth/google/callback?code=ok&state=${state}`, { auth: null })).status, 200);
    const result = await (await call(e, `/v1/family-auth/sessions/${session.sessionId}`, { auth: session.pollSecret })).json();
    return { session, result, claimed: await call(e, `/v1/family-auth/sessions/${session.sessionId}/claim`, { method: 'POST', auth: result.familyTicket }) };
  };
  const first = await signIn('link');
  assert.equal(first.result.status, 'linked');
  assert.deepEqual(await first.claimed.json(), { familyId: FAMILY, familySecret: SECRET });
  const second = await signIn('join');
  assert.deepEqual(await second.claimed.json(), { familyId: FAMILY, familySecret: SECRET });
  assert.equal((await call(e, `/v1/family-auth/sessions/${second.session.sessionId}/claim`, { method: 'POST', auth: second.result.familyTicket })).status, 401);
  e.database.close();
});

test('lists only linked provider names for the authenticated family', async () => {
  const e = env(); await create(e, FAMILY);
  const otherFamily = '323e4567-e89b-42d3-a456-426614174010';
  const otherSecret = Buffer.alloc(32, 8).toString('base64url');
  await create(e, otherFamily, otherSecret, '192.0.2.99');
  e.database.prepare('INSERT INTO family_provider_links (provider,subject,family_id,linked_at,display_name) VALUES (?,?,?,?,?)').run('google', 'private-google-id', FAMILY, Date.now(), 'Alice');
  e.database.prepare('INSERT INTO family_provider_links (provider,subject,family_id,linked_at,display_name) VALUES (?,?,?,?,?)').run('github', 'private-github-id', FAMILY, Date.now(), 'Bob');
  assert.deepEqual(await (await call(e, `/v1/families/${FAMILY}/accounts`)).json(), {
    accounts: [{ provider: 'github', displayName: 'Bob' }, { provider: 'google', displayName: 'Alice' }],
    providers: ['github', 'google']
  });
  assert.equal((await call(e, `/v1/families/${FAMILY}/accounts`, { auth: otherSecret })).status, 401);
  assert.equal((await call(e, `/v1/families/${FAMILY}/accounts`, { auth: null })).status, 401);
  e.database.close();
});

test('expires and cancels sessions; rejects a missing provider configuration', async () => {
  const e = env(); await create(e, FAMILY);
  const oldNow = Date.now;
  try {
    Date.now = () => 2_000_000_000_000;
    const session = await (await call(e, `/v1/family-auth/sessions?familyId=${FAMILY}`, { method: 'POST' })).json();
    assert.equal((await call(e, `/v1/family-auth/sessions/${session.sessionId}/oauth/google`, { auth: null })).status, 503);
    Date.now = () => 2_000_000_000_100;
    const pending = await (await call(e, `/v1/family-auth/sessions?familyId=${FAMILY}`, { method: 'POST' })).json();
    assert.equal((await call(e, `/v1/family-auth/sessions/${pending.sessionId}/cancel`, { method: 'POST', auth: pending.pollSecret })).status, 200);
    assert.equal((await (await call(e, `/v1/family-auth/sessions/${pending.sessionId}`, { auth: pending.pollSecret })).json()).status, 'cancelled');
    Date.now = () => 2_000_000_300_200;
    assert.equal((await (await call(e, `/v1/family-auth/sessions/${session.sessionId}`, { auth: session.pollSecret })).json()).status, 'expired');
  } finally { Date.now = oldNow; e.database.close(); }
});

test('shows a recoverable provider error and does not link an account when token exchange fails', async () => {
  const e = env(); await create(e, FAMILY);
  e.GOOGLE_CLIENT_ID = 'google-client'; e.GOOGLE_CLIENT_SECRET = 'google-secret';
  const session = await (await call(e, `/v1/family-auth/sessions?familyId=${FAMILY}`, { method: 'POST' })).json();
  const start = await call(e, `/v1/family-auth/sessions/${session.sessionId}/oauth/google`, { auth: null });
  const state = new URL(start.headers.get('location')).searchParams.get('state');
  e.FETCH = async () => new Response('{}', { status: 401 });
  const callback = await call(e, `/v1/oauth/google/callback?code=bad&state=${state}`, { auth: null });
  assert.equal(callback.status, 400);
  assert.match(await callback.text(), /could not be completed/);
  assert.equal((await (await call(e, `/v1/family-auth/sessions/${session.sessionId}`, { auth: session.pollSecret })).json()).status, 'pending');
  e.database.close();
});
