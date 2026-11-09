# CleanTV R2 sync Worker

Implements family registration and per-device snapshots, reusable TV join codes, and explicit multi-family snapshot migration. Ordinary sync only accesses known snapshot keys; the one-time merge API lists only explicitly supplied source-family prefixes. Family-secret hashes, encrypted join-code payloads, registration, rate limits, merge manifests, and revoked-family state live in one SQLite-backed Durable Object. Each authenticated request asks that Durable Object to validate the secret hash and revocation state. The Worker uses no Workers KV binding or KV operations. Snapshot PUTs check the tombstone so a cleaned family cannot recreate its objects or re-register its old identity.

This is the local source configuration. Production deployment `8c506743-98f7-4e74-b3d3-afedc0157ee6` is deployed without a KV binding. The old namespace is intentionally retained while account-level usage is monitored.

## Local tests

Requires Node.js 22.6 or newer; tests use Node's built-in runner and SQLite, with no npm dependencies:

```sh
node --experimental-strip-types --test test/worker.test.mjs
```

## Configure Wrangler

The config binds the existing private `cleanyourtv` bucket and the SQLite-backed Durable Object. No KV namespace is needed. For a new environment, log in to the intended account and deploy the Worker:

```sh
npx wrangler@latest login
npx wrangler@latest deploy
```

For local development, run:

```sh
npx wrangler@latest dev
```

## Google and GitHub family sign-in

Create one Google OAuth web client and one GitHub OAuth application. Set each provider's callback URL to the deployed Worker origin followed by `/v1/oauth/google/callback` or `/v1/oauth/github/callback` (for example, `https://cleantv-r2-sync.jerry-shao.workers.dev/v1/oauth/google/callback`). Keep the client credentials in Cloudflare Worker secrets:

```sh
npx wrangler@latest secret put GOOGLE_CLIENT_ID
npx wrangler@latest secret put GOOGLE_CLIENT_SECRET
npx wrangler@latest secret put GITHUB_CLIENT_ID
npx wrangler@latest secret put GITHUB_CLIENT_SECRET
```

The TV creates a five-minute session with a separate polling secret, then shows a QR code containing only the public session URL. The phone completes OAuth; the Worker exchanges the code, stores the provider's stable subject ID and display name linked to the current family, and discards the provider access token. Google uses the OpenID Connect `sub`; GitHub uses the numeric account ID. Email addresses and avatars are not stored or used for identity. TV join codes and family-secret snapshot authorization remain unchanged. Deploy only after setting provider secrets; an unconfigured provider is shown as unavailable on the phone page.

The provider link is an identity association only; it does not provide the credentials used for progress sync. The app continues to authorize snapshots with its family ID and family secret. The Worker retains only the provider display name for the TV's welcome message; it does not retain email addresses, avatars, or provider tokens. The family settings page can read linked provider names with the family secret. After linking, the welcome appears beside `家庭管理` in the Profile > Family panel header, so transient status messages remain available for actions and errors. The TV's provider action label stays on one line; the QR screen uses the remote Back button to cancel and return.

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
- 2026-11-07 deployed version (KV-free family authorization): `8c506743-98f7-4e74-b3d3-afedc0157ee6`
- Previous version (join codes / family merge): `3ffff7a0-f8d9-4caa-9136-f871fe6e72a0`
- Previous progress-sync version (2026-11-05): `511a0c02-cbee-4430-b9d6-87b2ea549918`
- Bound private bucket: `cleanyourtv`
- Registration, family-secret hashes, authorization, join-code, merge manifest and revoked-family coordinator: SQLite-backed Durable Object
- Workers KV: not bound or used
- Post-deploy smoke: existing Hisense family registration returned 200, snapshot GET returned 200, snapshot PUT returned 204, Durable Object authorization returned 200; no Worker exceptions observed.
- Sony Bravia 4K UR3 installed the matching-signature APK by `adb install -r`; code generation displayed successfully on 2026-11-07.
- 2026-11-09 Worker release `6e2462d5-bcab-43f5-bf80-c03460784e1a` includes Google/GitHub QR sign-in, stored display names, and corrected QR format bits for camera recognition. Worker tests pass. The refreshed APK is installed on the Sony UR3 and the Family panel renders; its older provider links have no saved display names, so a new phone OAuth completion is still needed to verify the personalized header on that TV (see the app patch notes).

For a later deployment, confirm the configured bucket belongs to the intended account, then run:

```sh
npx wrangler@latest deploy
```

No S3 credentials, API tokens, family secrets, or other runtime secrets belong in this repository. Do not use production family data for local tests. The deployed Worker is the production endpoint used by the Android client.
