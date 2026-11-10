from pathlib import Path
import unittest

PATCH = Path(__file__).parents[1]
SCRIPT = PATCH / "build_universal_apks.sh"


class UniversalApkBuildTest(unittest.TestCase):
    def test_release_builder_requires_legacy_base_and_updates_every_distribution_copy(self):
        self.assertTrue(SCRIPT.is_file(), "Use the checked-in universal APK builder")
        source = SCRIPT.read_text()
        self.assertIn("Updated独播库TV_v7.5.apk", source)
        self.assertIn("sdkVersion:'22'", source)
        self.assertIn("libdubokushim.so", source)
        self.assertIn("cleanyourtv/patches/duboku-v7.5", source)
        self.assertIn("DubokuCompat.java", source)
        self.assertIn("DubokuCompat.smali", source)
        self.assertIn("LanSyncManager.java", source)
        self.assertIn("LanSyncManager$2.smali", source)
        self.assertIn("CloudSnapshotMerger.java", source)
        self.assertIn("CloudSnapshotMerger.smali", source)
        self.assertIn("ProgressSyncJobService.java", source)
        self.assertIn("ProgressSyncJobService*.smali", source)
        self.assertIn("ProgressSyncJobService$0.smali", source)
        self.assertIn("FamilySyncPanel.java", source)
        self.assertIn("FamilyAuthClient.java", source)
        self.assertIn("res/raw/isrg_root_x1.pem", source)
        self.assertIn('cp "$PATCH_DIR/res/raw/isrg_root_x1.pem" "$SRC/res/raw/"', source)
        self.assertIn("smali_classes6", source)
        self.assertIn("devices/xiaomi-mibox3/usb-pack/01_独播库TV_v7.5.apk", source)
        self.assertIn("apks/common/独播库TV_v7.5.apk", source)
        self.assertIn("apks/common/Updated独播库TV_v7.5.apk", source)
        self.assertIn('"$PATCH_DIR"/tests/test_*.py', source)
        self.assertIn("tests/test_lan_sync_peer_validation.py", source)
        self.assertIn("tests/test_lan_sync_ack_timeout.py", source)


if __name__ == "__main__":
    unittest.main()
