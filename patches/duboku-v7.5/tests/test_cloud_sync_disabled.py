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

    def test_cloud_controls_follow_sync_toggle_but_leave_toggle_enabled(self):
        update = method_body(PANEL, "private void updateCloudSyncToggle()")
        self.assertIn("if (child == cloudSyncToggle || child == lanSyncToggle) continue", update)
        self.assertIn("child.setEnabled(enabled &&", update)
        self.assertIn("child.setEnabled(enabled)", update)


if __name__ == "__main__":
    unittest.main()
