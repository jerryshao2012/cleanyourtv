# CleanTV R2 sync Worker

Implements family registration and per-device snapshots, reusable TV join codes, and explicit multi-family snapshot migration. Ordinary sync only accesses known snapshot keys; the one-time merge API lists only the explicitly supplied source family prefixes. Worker stores family-secret hashes in KV and encrypted join-code payloads plus registration, rate-limit, and revoked-family state in one SQLite-backed Durable Object. Snapshot PUTs check the tombstone so a cleaned family cannot recreate its objects or re-register its old identity.

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

Join-code encryption also requires a private 32-byte key. Set it once per environment and never commit or log it. Keep this value stable; rotating it makes existing codes unreadable, so issue new codes afterward:

```sh
python3 -c 'import secrets; print(secrets.token_urlsafe(32))' | npx wrangler@latest secret put JOIN_CODE_KEY
```

## TV join and explicit family merge

- `POST /v1/families/{familyId}/join-code` (current family bearer auth) creates a reusable 80-bit code and replaces the previous code. The Durable Object stores only its hash and an AES-GCM encrypted family credential; `JOIN_CODE_KEY` decrypts it. Reissue invalidates the old code. Issuance is limited to 10 per family per hour.
- `POST /v1/families/join` accepts `{ "joinCode": "XXXX-XXXX-XXXX-XXXX" }` and returns the family credential and current snapshot device IDs. Lookup is limited to 30 attempts per source IP per hour. The new TV stores the received credential in app-private preferences and reads those peer snapshots.
- `POST /v1/families/{targetFamilyId}/merge` accepts `preview`, `copy`, or explicitly confirmed `cleanup` plus source join codes. The target must be the lexicographically smallest family ID. Preview lists only each source prefix. Copy merges snapshots per device, writes target-prefix snapshots and reads them back for verification. Cleanup is accepted only when source snapshots still match the copied manifest; it deletes source snapshots, revokes source family auth and join codes. If cleanup partially fails, retry with the same source codes; copied target snapshots remain.
- The TV app exposes a separate `家庭同步` launcher entry. It can display/rotate the current code, join a family, preview/copy source families and only then open a destructive cleanup confirmation. It does not auto-delete a family. Cleanup is rejected for a source family with no cloud snapshot, so its local-only records cannot be silently stranded; first let that TV upload while online.
- Keep at least one locally reachable copy of each code until merge and cleanup are confirmed. An old TV whose family was cleaned must join the canonical family again using its current join code. The Worker routes and TV screen in this branch are not live until separately deployed/installed.

Merge uses R2 LIST/GET/PUT/DELETE only after the user explicitly starts the operation. This is the sole exception to the normal-sync no-list rule. The operation is capped at 8 source families and 500 snapshots per family.

Production deployment:

- Worker URL: `https://cleantv-r2-sync.jerry-shao.workers.dev`
- 2026-11-07 deployed version (join codes / family merge): `3ffff7a0-f8d9-4caa-9136-f871fe6e72a0`
- Previous progress-sync version (2026-11-05): `511a0c02-cbee-4430-b9d6-87b2ea549918`
- Bound private bucket: `cleanyourtv`
- Registration, join-code, merge manifest and revoked-family coordinator: SQLite-backed Durable Object
- Sony Bravia 4K UR3 installed the matching-signature APK by `adb install -r`; code generation displayed successfully on 2026-11-07.

For a later deployment, confirm the configured bucket and namespace belong to the intended account, then run:

```sh
npx wrangler@latest deploy
```

No S3 credentials, API tokens, family secrets, or other runtime secrets belong in this repository. Do not use production family data for local tests. The deployed Worker is the production endpoint used by the Android client.
