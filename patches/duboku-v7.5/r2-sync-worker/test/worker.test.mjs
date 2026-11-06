import test from 'node:test';
import assert from 'node:assert/strict';
import { DatabaseSync } from 'node:sqlite';
import worker, { RegistrationCoordinator } from '../src/index.ts';

const FAMILY = '123e4567-e89b-42d3-a456-426614174000';
const DEVICE = '223e4567-e89b-42d3-a456-426614174000';
const SECRET = Buffer.alloc(32, 7).toString('base64url');
const SNAPSHOT = { schemaVersion: 1, familyId: FAMILY, deviceId: DEVICE, updatedAt: 1700000000000, records: [] };
function env() {
  const values = new Map();
  const counts = { get: 0, put: 0, list: 0, coordinator: 0 };
  const database = new DatabaseSync(':memory:');
  const storage = { sql: { exec: (query, ...args) => { const statement = database.prepare(query); if (/^\s*SELECT/i.test(query)) return { toArray: () => statement.all(...args) }; statement.run(...args); return { toArray: () => [] }; } }, transactionSync: callback => { database.exec('BEGIN IMMEDIATE'); try { const result = callback(); database.exec('COMMIT'); return result; } catch (error) { database.exec('ROLLBACK'); throw error; } } };
  const coordinator = new RegistrationCoordinator({ storage });
  return { values, counts, database, coordinator,
    FAMILY_AUTH: { async get(key) { return values.get(key) ?? null; }, async put(key, value) { values.set(key, value); } },
    REGISTRATION_COORDINATOR: { getByName() { return { fetch: (input, init) => { counts.coordinator++; return coordinator.fetch(new Request(input, init)); } }; } },
    R2_BUCKET: {
      async get(key) { counts.get++; const value = values.get(`r2:${key}`); return value == null ? null : { async json() { return JSON.parse(value); } }; },
      async put(key, value) { counts.put++; values.set(`r2:${key}`, await new Response(value).text()); },
      async list() { counts.list++; throw new Error('list must not be called'); }
    }
  };
}
async function call(e, path, { method = 'GET', body, auth = SECRET, ip = '192.0.2.4' } = {}) {
  return worker.fetch(new Request(`https://worker.test${path}`, { method, headers: { ...(body === undefined ? {} : { 'content-type': 'application/json' }), ...(auth ? { authorization: `Bearer ${auth}` } : {}), 'CF-Connecting-IP': ip }, body: body === undefined ? undefined : typeof body === 'string' ? body : JSON.stringify(body) }), e);
}
async function create(e, familyId, familySecret = SECRET, ip) {
  return call(e, '/v1/families', { method: 'POST', body: { familyId, familySecret }, auth: null, ...(ip ? { ip } : {}) });
}
test('registers family idempotently and stores only hashes', async () => {
  const e = env();
  assert.equal((await create(e, FAMILY)).status, 201);
  for (let n = 0; n < 15; n++) assert.equal((await create(e, FAMILY)).status, 200);
  assert.equal((await create(e, FAMILY, Buffer.alloc(32, 8).toString('base64url'))).status, 409);
  assert.equal([...e.values.values()].includes(SECRET), false);
  assert.match(e.values.get(`family:${FAMILY}`), /^[0-9a-f]{64}$/);
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
  assert.equal((await call(e, `/v1/sync/${familyB}/${DEVICE}`, { auth: SECRET })).status, 401);
  assert.equal(e.counts.get, 0);
  e.database.close();
});
test('GET returns empty schema and performs exactly one R2 get', async () => {
  const e = env(); await create(e, FAMILY);
  const response = await call(e, `/v1/sync/${FAMILY}/${DEVICE}`);
  assert.equal(response.status, 200);
  assert.deepEqual(await response.json(), { schemaVersion: 1, familyId: FAMILY, deviceId: DEVICE, updatedAt: 0, records: [] });
  assert.deepEqual(e.counts, { get: 1, put: 0, list: 0, coordinator: 1 });
  e.database.close();
});
test('PUT then GET round trips with one put and one get and no list', async () => {
  const e = env(); await create(e, FAMILY);
  assert.equal((await call(e, `/v1/sync/${FAMILY}/${DEVICE}`, { method: 'PUT', body: SNAPSHOT })).status, 204);
  const response = await call(e, `/v1/sync/${FAMILY}/${DEVICE}`);
  assert.deepEqual(await response.json(), SNAPSHOT);
  assert.deepEqual(e.counts, { get: 1, put: 1, list: 0, coordinator: 1 });
  e.database.close();
});
test('rejects invalid stored R2 schema and path identity', async () => {
  const e = env(); await create(e, FAMILY);
  e.values.set(`r2:v1/${FAMILY}/${DEVICE}.json`, JSON.stringify({ ...SNAPSHOT, familyId: DEVICE }));
  assert.equal((await call(e, `/v1/sync/${FAMILY}/${DEVICE}`)).status, 500);
  assert.equal(e.counts.get, 1);
  e.values.set(`r2:v1/${FAMILY}/${DEVICE}.json`, '{broken');
  assert.equal((await call(e, `/v1/sync/${FAMILY}/${DEVICE}`)).status, 500);
  assert.equal(e.counts.get, 2);
  e.database.close();
});
test('rejects bad auth, path mismatch, oversized payload and unknown routes', async () => {
  const e = env(); await create(e, FAMILY);
  assert.equal((await call(e, `/v1/sync/${FAMILY}/${DEVICE}`, { auth: Buffer.alloc(32, 9).toString('base64url') })).status, 401);
  assert.equal((await call(e, `/v1/sync/${FAMILY}/${DEVICE}`, { method: 'PUT', body: { ...SNAPSHOT, familyId: DEVICE } })).status, 400);
  assert.equal((await call(e, `/v1/sync/${FAMILY}/${DEVICE}`, { method: 'PUT', body: 'x'.repeat(65537) })).status, 413);
  assert.equal((await call(e, '/not-a-route')).status, 404);
  assert.equal((await call(e, `/v1/sync/${FAMILY}/%ZZ`)).status, 400);
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
  const invalid = { ...SNAPSHOT, records: [{ id: 'x', name: 'show', episode: '1', progressInMillis: -1, durationInMillis: 2, createdAt: 1, modifiedAt: 1, videoPageUrl: '', detailPageUrl: '', posterUrl: '' }] };
  assert.equal((await call(e, `/v1/sync/${FAMILY}/${DEVICE}`, { method: 'PUT', body: invalid })).status, 400);
  const many = { ...SNAPSHOT, records: Array.from({ length: 21 }, () => ({ ...invalid.records[0], progressInMillis: 1 })) };
  assert.equal((await call(e, `/v1/sync/${FAMILY}/${DEVICE}`, { method: 'PUT', body: many })).status, 400);
  const badUrl = { ...SNAPSHOT, records: [{ ...invalid.records[0], progressInMillis: 1, videoPageUrl: 'javascript:alert(1)' }] };
  assert.equal((await call(e, `/v1/sync/${FAMILY}/${DEVICE}`, { method: 'PUT', body: badUrl })).status, 400);
  assert.equal(e.counts.put, 0);
  e.database.close();
});
