# CleanTV R2 sync Worker

Implements `POST /v1/families`, `GET /v1/sync/{familyId}/{deviceId}` and `PUT /v1/sync/{familyId}/{deviceId}`. R2 keys are derived only from validated IDs, and the Worker never lists R2 objects. Family registration and rolling IP limits run through one SQLite-backed Durable Object; it stores only family-secret hashes and hashed source IPs. KV stores the family-secret hashes used for bearer authorization. The Durable Object is authoritative for atomic registration decisions and rate limits only, so sync requests do not queue behind registration work.

## Local tests

Requires Node.js 22.6 or newer; tests use Node's built-in runner and SQLite, with no npm dependencies:

```sh
node --experimental-strip-types --test test/worker.test.mjs
```

## Configure Wrangler

The config binds the existing private `cleanyourtv` bucket. Wrangler requires a real KV namespace ID. After logging in to the intended account, this command finds or creates `FAMILY_AUTH` and writes its actual ID into `wrangler.toml`:

```sh
npx wrangler@latest login
node scripts/configure-kv.mjs
```

For local development, run:

```sh
npx wrangler@latest dev
```

Production deployment (2026-11-05):

- Worker URL: `https://cleantv-r2-sync.jerry-shao.workers.dev`
- Deployed version: `511a0c02-cbee-4430-b9d6-87b2ea549918`
- Bound private bucket: `cleanyourtv`
- Registration rate-limit coordinator: SQLite-backed Durable Object

For a later deployment, confirm the configured bucket and namespace belong to the intended account, then run:

```sh
npx wrangler@latest deploy
```

No S3 credentials, API tokens, family secrets, or other runtime secrets belong in this repository. Do not use production family data for local tests. The deployed Worker is the production endpoint used by the Android client.
