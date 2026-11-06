import { spawnSync } from 'node:child_process';
import { randomUUID } from 'node:crypto';
import { open, readFile, rename, stat, unlink } from 'node:fs/promises';
import { fileURLToPath } from 'node:url';
import { familyAuthNamespaceId, replaceFamilyAuthNamespaceId } from './family-auth-config.mjs';
import { parseNamespaceId, parseNamespaceList } from './namespace-output.mjs';

const config = new URL('../wrangler.toml', import.meta.url);
const original = await readFile(config, 'utf8');
const configuredId = familyAuthNamespaceId(original);
const run = args => {
  const result = spawnSync('npx', ['--yes', 'wrangler@latest', ...args], { encoding: 'utf8' });
  if (result.status !== 0) throw new Error(result.stderr || `Wrangler command failed: ${args.join(' ')}`);
  return result.stdout;
};
const namespaces = parseNamespaceList(run(['kv', 'namespace', 'list']));
const existing = namespaces.find(item => item.title === 'FAMILY_AUTH');
const id = existing?.id ?? parseNamespaceId(run(['kv', 'namespace', 'create', 'FAMILY_AUTH']));
if (!/^[a-f0-9]{32}$/i.test(id)) throw new Error('Wrangler did not return a valid FAMILY_AUTH namespace ID.');
if (configuredId !== id) {
  const path = fileURLToPath(config);
  const temp = `${path}.${process.pid}.${randomUUID()}.tmp`;
  let handle;
  try {
    handle = await open(temp, 'wx', (await stat(path)).mode);
    await handle.writeFile(replaceFamilyAuthNamespaceId(original, id));
    await handle.sync();
    await handle.close();
    handle = undefined;
    await rename(temp, path);
  } catch (error) {
    if (handle) await handle.close().catch(() => {});
    await unlink(temp).catch(() => {});
    throw error;
  }
}
console.log(`Configured FAMILY_AUTH namespace ${id}.`);
