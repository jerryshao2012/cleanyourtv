from pathlib import Path
import unittest

PATCH = Path(__file__).resolve().parents[1]


class SyncDexLayoutTest(unittest.TestCase):
    def test_progress_snapshot_lives_only_in_classes4(self):
        script = (PATCH / "build_universal_apks.sh").read_text()
        self.assertFalse((PATCH / "smali_classes3/com/supertws/dubokutv/ProgressSnapshot.smali").exists())
        self.assertTrue((PATCH / "smali_classes4/com/supertws/dubokutv/ProgressSnapshot.smali").exists())
        self.assertIn('rm -f "$SRC/smali_classes3/com/supertws/dubokutv/ProgressSnapshot.smali"', script)
        self.assertIn('test -f "$SRC/smali_classes4/com/supertws/dubokutv/ProgressSnapshot.smali"', script)


if __name__ == "__main__":
    unittest.main()
