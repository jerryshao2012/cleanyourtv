from pathlib import Path
import unittest

PATCH = Path(__file__).resolve().parents[1]


class LanSyncAckTimeoutTest(unittest.TestCase):
    def test_ack_wait_covers_measured_persist_latency_and_is_diagnosable(self):
        source = (PATCH / "LanSyncManager.java").read_text()
        self.assertIn("private static final long ACK_TIMEOUT_MS = 3000L;", source)
        self.assertIn('Log.i(TAG, "Progress ACK received");', source)
        self.assertIn('Log.i(TAG, "Progress ACK sent");', source)

        smali = (PATCH / "smali_classes3/com/supertws/dubokutv/LanSyncManager.smali").read_text()
        self.assertIn(".field private static final ACK_TIMEOUT_MS:J = 0xbb8L", smali)
        self.assertIn('const-string v0, "Progress ACK received"', smali)
        self.assertIn('const-string v1, "Progress ACK sent"', smali)
        ack_runnable = (PATCH / "smali_classes3/com/supertws/dubokutv/LanSyncManager$5.smali").read_text()
        self.assertIn("const-wide/16 v10, 0xbb8", ack_runnable)


if __name__ == "__main__":
    unittest.main()
