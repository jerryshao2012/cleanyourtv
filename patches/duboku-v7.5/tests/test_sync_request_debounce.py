from pathlib import Path
import unittest

PATCH = Path(__file__).resolve().parents[1]


class SyncRequestDebounceTest(unittest.TestCase):
    def test_duplicate_sync_requests_are_debounced_in_loaded_smali(self):
        source = (PATCH / "LanSyncManager.java").read_text()
        self.assertIn("now - sLastIncomingSyncResponseAt < SYNC_RESPONSE_DEBOUNCE_MS", source)
        self.assertIn("SYNC_RESPONSE_DEBOUNCE_MS", source)

        manager = (PATCH / "smali_classes3/com/supertws/dubokutv/LanSyncManager.smali").read_text()
        self.assertIn("SystemClock;->elapsedRealtime()J", manager)
        self.assertIn("Skipped duplicate REQUEST_SYNC", manager)
        self.assertIn("sLastIncomingSyncResponseAt:J", manager)


if __name__ == "__main__":
    unittest.main()
