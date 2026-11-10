from pathlib import Path
import re
import unittest

PATCH = Path(__file__).parents[1]
IDENTITY = (PATCH / "FamilyIdentity.java").read_text()
CLIENT = (PATCH / "CloudSyncClient.java").read_text()
PANEL = (PATCH / "FamilySyncPanel.java").read_text()


def method_body(source, signature):
    start = source.index(signature)
    opening = source.index("{", start)
    depth = 0
    for index in range(opening, len(source)):
        depth += source[index] == "{"
        depth -= source[index] == "}"
        if depth == 0:
            return source[opening + 1:index]
    raise AssertionError(f"Unclosed method: {signature}")


class CloudSyncDisabledTest(unittest.TestCase):
    def test_disabling_sync_cancels_pending_cloud_work(self):
        setter = method_body(IDENTITY, "setCloudSyncEnabled(boolean enabled)")
        cancel = method_body(CLIENT, "cancelPendingCloudSync()")
        self.assertIn("CloudSyncClient.cancelPendingCloudSync()", setter)
        for state in ("scheduledDrain.cancel(false)", "scheduledRead.cancel(false)",
                      "latest = null", "retrySnapshot = null", "cloudGeneration++"):
            self.assertIn(state, cancel)

    def test_disabled_state_guards_cloud_requests(self):
        cancel = method_body(CLIENT, "requireCloudSyncEnabled()")
        self.assertIn("cloudSyncEnabled()", cancel)
        for method in ("createJoinCode()", "redeemJoinCode(String code)",
                       "mergeFamilies(String targetFamilyId", "postJson(String path",
                       "get(String familyId", "put(ProgressSnapshot snapshot"):
            self.assertIn("requireCloudSyncEnabled()" if method.startswith(("create", "redeem", "merge", "post", "get")) else "cloudSyncEnabled()",
                          method_body(CLIENT, method))

    def test_cloud_controls_follow_sync_toggle(self):
        home = method_body(PANEL, "private void showHome()")
        self.assertNotIn("showJoin()", PANEL)
        self.assertNotIn("showMerge()", PANEL)
        self.assertIn("authLinkButton.setEnabled(true)",
                      method_body(PANEL, "private void updateCloudSyncToggle()"))
        self.assertNotIn("请先开启云端同步", PANEL)

    def test_explicit_account_link_registers_while_sync_is_off(self):
        auth = (PATCH / "FamilyAuthClient.java").read_text()
        self.assertIn("registerFamilyForAuth(familyId, familySecret)", auth)
        register = method_body(CLIENT, "registerFamilyForAuth(String familyId, String secret)")
        self.assertNotIn("cloudSyncEnabled()", register)
        self.assertIn('"family_registration_network_" + networkErrorName(e)', register)
        self.assertIn('"family_registration_http_" + code', register)
        normal_register = method_body(CLIENT, "registerFamily(String familyId, String secret)")
        self.assertIn('if (!cloudSyncEnabled()) return false;', normal_register)
        self.assertIn('dirtyPrefs().getBoolean("cloudAuthRejected", false)', normal_register)

    def test_auth_errors_are_not_mislabeled_as_worker_outages(self):
        show_error = method_body(PANEL, "private void showError(String action, Exception error)")
        self.assertNotIn("检查网络和 Worker 部署状态", show_error)

    def test_api_22_https_explicitly_uses_tls_12_without_changing_validation(self):
        configure = method_body(CLIENT, "configureTls(HttpURLConnection connection)")
        self.assertIn("!isMiBox3Api22()", configure)
        self.assertIn('SSLContext.getInstance("TLSv1.2")', configure)
        self.assertIn("setSSLSocketFactory(context.getSocketFactory())", configure)
        self.assertNotIn("HostnameVerifier", configure)
        self.assertIn('"cleantv-r2-sync.jerry-shao.workers.dev".equals(connection.getURL().getHost())', configure)
        trust = method_body(CLIENT, "private static X509TrustManager workerTrustManager()")
        self.assertIn("platform.checkServerTrusted(chain, authType)", trust)
        self.assertIn("extra.checkServerTrusted(chain, authType)", trust)
        self.assertIn('getIdentifier("isrg_root_x1", "raw"', trust)
        self.assertNotIn("return true", trust)
        self.assertIn("CloudSyncClient.configureTls(connection)", (PATCH / "FamilyAuthClient.java").read_text())
        self.assertIn('root.getClass().getSimpleName()', method_body(CLIENT, "networkErrorName(Throwable error)"))
        device_gate = method_body(CLIENT, "private static boolean isMiBox3Api22()")
        self.assertIn("Build.VERSION.SDK_INT != Build.VERSION_CODES.LOLLIPOP_MR1", device_gate)
        self.assertIn('"xiaomi".equalsIgnoreCase(Build.MANUFACTURER)', device_gate)
        self.assertIn('identity.contains("mdz-16")', device_gate)


if __name__ == "__main__":
    unittest.main()
