const ID = /^[a-f0-9]{32}$/i;

export function parseNamespaceList(output) {
  const namespaces = JSON.parse(output);
  if (!Array.isArray(namespaces)) throw new Error('Wrangler returned an invalid KV namespace list.');
  return namespaces;
}

export function parseNamespaceId(output) {
  try {
    const parsed = JSON.parse(output);
    const candidate = Array.isArray(parsed) ? parsed.find(item => item.title === 'FAMILY_AUTH')?.id : parsed?.id ?? parsed?.result?.id;
    if (ID.test(candidate ?? '')) return candidate;
  } catch {}
  const match = output.match(/\b([a-f0-9]{32})\b/i);
  if (!match) throw new Error('Wrangler output did not contain a valid KV namespace ID.');
  return match[1];
}
