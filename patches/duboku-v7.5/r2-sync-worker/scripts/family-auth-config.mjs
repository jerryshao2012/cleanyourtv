const PLACEHOLDER = 'REPLACE_WITH_NAMESPACE_ID';
const ID = /^[a-f0-9]{32}$/i;

function findBindingIdLine(text) {
  const lines = text.split(/\r?\n/);
  const blocks = [];
  for (let start = 0; start < lines.length; start++) {
    if (!/^\s*\[\[kv_namespaces\]\]\s*(?:#.*)?$/.test(lines[start])) continue;
    let end = start + 1;
    while (end < lines.length && !/^\s*\[\[.*\]\]\s*(?:#.*)?$/.test(lines[end])) end++;
    blocks.push({ start, end });
  }
  const targets = blocks.map(({ start, end }) => ({ start, end, bindings: lines.slice(start + 1, end).filter(line => /^\s*binding\s*=\s*["']FAMILY_AUTH["']\s*(?:#.*)?$/.test(line)).length })).filter(block => block.bindings > 0);
  if (targets.length !== 1 || targets[0].bindings !== 1) throw new Error(`Expected exactly one FAMILY_AUTH KV binding; found ${targets.length}.`);
  const { start, end } = targets[0];
  const ids = [];
  for (let index = start + 1; index < end; index++) if (/^\s*id\s*=/.test(lines[index])) ids.push(index);
  if (ids.length !== 1) throw new Error('Expected exactly one ID in the FAMILY_AUTH KV binding.');
  const index = ids[0];
  const match = /^(\s*id\s*=\s*)["']([^"']*)["'](\s*(?:#.*)?)$/.exec(lines[index]);
  if (!match || (match[2] !== PLACEHOLDER && !ID.test(match[2]))) throw new Error('FAMILY_AUTH KV binding has an invalid namespace ID.');
  return { lines, index, id: match[2] };
}

export function familyAuthNamespaceId(text) {
  return findBindingIdLine(text).id;
}

export function replaceFamilyAuthNamespaceId(text, id) {
  if (!ID.test(id)) throw new Error('Replacement FAMILY_AUTH namespace ID is invalid.');
  const { lines, index } = findBindingIdLine(text);
  lines[index] = lines[index].replace(/^(\s*id\s*=\s*)["'][^"']*["']/, `$1"${id}"`);
  return lines.join(text.includes('\r\n') ? '\r\n' : '\n');
}
