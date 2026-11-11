from pathlib import Path
import unittest

PATCH = Path(__file__).resolve().parents[1]


class LanSyncAckTimeoutTest(unittest.TestCase):
    def test_ack_wait_covers_measured_persist_latency_and_is_diagnosable(self):
        source = (PATCH / "LanSyncManager.java").read_text()
        self.assertIn("private static final long ACK_TIMEOUT_MS = 3000L;", source)
        self.assertIn('Log.i(TAG, "Progress ACK received");', source)
        ack_handler = source.split('if ("PROGRESS_ACK".equals(action)) {', 1)[1].split('if (!FamilyIdentity.validId(fromDevice)', 1)[0]
        self.assertIn("ScheduledFuture<?> timeout = sPendingProgress.remove(messageId);", ack_handler)
        self.assertNotIn("CloudSyncClient.onCommittedSave(false);", ack_handler)
        self.assertIn("if (revision[0] > sLatestAckedDirtyRevision) sLatestAckedDirtyRevision = revision[0];", ack_handler)
        self.assertIn("acknowledgedRevision == prefs.getLong(\"cloudDirtyRevision\", 0L)", ack_handler)
        self.assertIn('prefs.edit().putBoolean("cloudDirty", false).apply();', ack_handler)
        self.assertIn('getSharedPreferences("r2_sync_identity", Context.MODE_PRIVATE)', ack_handler)
        self.assertIn("sPendingProgressRevision.put(messageId, new long[] { dirtyRevision });", source)
        self.assertIn('Log.i(TAG, "Progress ACK sent");', source)
        self.assertIn("if (sPendingProgress.remove(messageId) != null) {", source)
        self.assertIn("sPendingProgressRevision.remove(messageId);", source)
        self.assertIn("CloudSyncClient.onCommittedSave(false);", source)
        self.assertIn("if (!critical) CloudSyncClient.onCommittedSave(false);", source)

        smali = (PATCH / "smali_classes3/com/supertws/dubokutv/LanSyncManager.smali").read_text()
        self.assertIn(".field private static final ACK_TIMEOUT_MS:J = 0xbb8L", smali)
        self.assertIn('const-string v1, "Progress ACK received"', smali)
        self.assertIn('const-string v1, "cloudDirtyRevision"', smali)
        self.assertIn('const-string v1, "LAN ACK satisfied cloud dirty revision"', smali)
        self.assertIn('const-string v1, "cloudDirtyRevision"', smali)
        self.assertIn("ProgressSyncJobService;->schedule(Landroid/content/Context;)V", smali)
        self.assertIn('const-string v1, "Progress ACK sent"', smali)
        ack_runnable = (PATCH / "smali_classes3/com/supertws/dubokutv/LanSyncManager$5.smali").read_text()
        self.assertIn("const-wide/16 v10, 0xbb8", ack_runnable)
        self.assertNotIn("handleProgressAck(Ljava/lang/String;Landroid/content/Context;)V", smali)
        self.assertIn("sPendingProgressRevision", smali)
        self.assertNotIn("cloudDirtyRevision(Landroid/content/Context;)J", smali)
        self.assertIn("CloudSyncClient;->onCommittedSave(Z)V", ack_runnable)
        timeout = (PATCH / "smali_classes3/com/supertws/dubokutv/LanSyncManager$5$1.smali").read_text()
        self.assertIn("const/4 v0, 0x0\n\n    invoke-static {v0}, Lcom/supertws/dubokutv/CloudSyncClient;->onCommittedSave(Z)V", timeout)

    def test_clean_peer_read_does_not_force_cloud_upload(self):
        client = (PATCH / "CloudSyncClient.java").read_text()
        self.assertIn('if (dirtyPrefs().getBoolean("cloudDirty", false)) onCommittedSave(true);', client)
        read_task = (PATCH / "smali_classes4/com/supertws/dubokutv/CloudSyncClient$3.smali").read_text()
        upload_gate = read_task.split('const-string v8, "cloudDirty"', 1)[1].split("onCommittedSave(Z)V", 1)[0]
        self.assertIn("SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z", upload_gate)
        self.assertIn("if-eqz v0, :cond_skip_dirty_upload", upload_gate)


if __name__ == "__main__":
    unittest.main()
