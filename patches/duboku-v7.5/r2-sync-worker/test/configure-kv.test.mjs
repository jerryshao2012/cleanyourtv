import test from 'node:test';
import assert from 'node:assert/strict';
import { familyAuthNamespaceId, replaceFamilyAuthNamespaceId } from '../scripts/family-auth-config.mjs';
import { parseNamespaceId, parseNamespaceList } from '../scripts/namespace-output.mjs';

const FAMILY_AUTH_ID = '0123456789abcdef0123456789abcdef';
const OTHER_ID = 'abcdef0123456789abcdef0123456789';
const CONFIG = `[[kv_namespaces]]\nbinding = "OTHER"\nid = "${OTHER_ID}"\n\n[[kv_namespaces]]\nbinding = "FAMILY_AUTH"\nid = "REPLACE_WITH_NAMESPACE_ID"\n`;

test('parses Wrangler 4 namespace list JSON output', () => {
  assert.deepEqual(parseNamespaceList('[{"id":"0123456789abcdef0123456789abcdef","title":"FAMILY_AUTH"}]'), [
    { id: FAMILY_AUTH_ID, title: 'FAMILY_AUTH' }
  ]);
});
test('parses Wrangler create output with a quoted ID', () => {
  assert.equal(parseNamespaceId(`Created KV namespace with ID "${OTHER_ID}"`), OTHER_ID);
});
test('parses Wrangler create JSON output and rejects missing IDs', () => {
  assert.equal(parseNamespaceId(`{"id":"${OTHER_ID}"}`), OTHER_ID);
  assert.throws(() => parseNamespaceId('Created KV namespace successfully'));
});
test('finds and replaces only the FAMILY_AUTH namespace block', () => {
  assert.equal(familyAuthNamespaceId(CONFIG), 'REPLACE_WITH_NAMESPACE_ID');
  const updated = replaceFamilyAuthNamespaceId(CONFIG, FAMILY_AUTH_ID);
  assert.match(updated, new RegExp(`binding = "OTHER"\\nid = "${OTHER_ID}"`));
  assert.match(updated, new RegExp(`binding = "FAMILY_AUTH"\\nid = "${FAMILY_AUTH_ID}"`));
});
test('rejects a missing FAMILY_AUTH block and malformed namespace IDs', () => {
  assert.throws(() => familyAuthNamespaceId(CONFIG.replace('FAMILY_AUTH', 'MISSING')));
  assert.throws(() => familyAuthNamespaceId(CONFIG.replace('REPLACE_WITH_NAMESPACE_ID', 'bad-id')));
  assert.throws(() => replaceFamilyAuthNamespaceId(CONFIG, 'bad-id'));
});
test('rejects missing or duplicate FAMILY_AUTH IDs', () => {
  assert.throws(() => familyAuthNamespaceId(CONFIG.replace('id = "REPLACE_WITH_NAMESPACE_ID"', 'title = "empty"')));
  assert.throws(() => familyAuthNamespaceId(CONFIG.replace('id = "REPLACE_WITH_NAMESPACE_ID"', 'id = "REPLACE_WITH_NAMESPACE_ID"\nid = "' + OTHER_ID + '"')));
});
