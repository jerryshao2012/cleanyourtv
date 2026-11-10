from pathlib import Path
import unittest

PATCH = Path(__file__).resolve().parents[1]


class LanSyncMessageDedupTest(unittest.TestCase):
    def test_duplicate_progress_message_is_acknowledged_without_another_db_worker(self):
        source = (PATCH / "LanSyncManager.java").read_text()
        self.assertIn("ConcurrentHashMap<String, String> sIncomingProgress", source)
        self.assertIn("sIncomingProgress.putIfAbsent(key, \"pending\")", source)
        self.assertIn("completeIncomingProgress(fromDevice, messageId, \"applied\")", source)
        self.assertIn("completeIncomingProgress(fromDevice, messageId, \"already_current\")", source)
        self.assertIn("if (!claimIncomingProgress(fromDevice, messageId, senderIp)) return;", source)
        self.assertIn('"snapshot:" + id + ":" + episode + ":" + progressInMillis', source)

        handler = (PATCH / "smali_classes3/com/supertws/dubokutv/LanSyncManager.smali").read_text()
        self.assertIn("sIncomingProgress:Ljava/util/concurrent/ConcurrentHashMap;", handler)
        self.assertIn("claimIncomingProgress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z", handler)
        self.assertIn("check-cast v1, Ljava/lang/String;", handler)
        self.assertIn('const-string v0, "snapshot:"', handler)
        self.assertIn('invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;', handler)
        self.assertIn('invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;', handler)
        self.assertIn("move-result v0\n    if-eqz v0, :make_snapshot_message_id", handler)
        worker = (PATCH / "smali_classes3/com/supertws/dubokutv/LanSyncManager$2.smali").read_text()
        self.assertIn("completeIncomingProgress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", worker)


if __name__ == "__main__":
    unittest.main()
