from pathlib import Path
import unittest


PATCH = Path(__file__).resolve().parents[1]


class SyncVersionTieTest(unittest.TestCase):
    def test_android_mergers_accept_only_strictly_newer_versions(self):
        cloud = (PATCH / "CloudSnapshotMerger.java").read_text()
        lan = (PATCH / "LanSyncManager.java").read_text()
        self.assertIn("boolean accept = id == null || versionOrder > 0;", cloud)
        self.assertIn("if (versionOrder > 0) accept = true;", lan)
        self.assertNotIn("versionOrder == 0 && remoteVersion.logicalCounter == 0L", cloud + lan)

    def test_packaged_smali_matches_strict_version_rule(self):
        cloud = (PATCH / "smali_classes3/com/supertws/dubokutv/CloudSnapshotMerger.smali").read_text()
        lan = (PATCH / "smali_classes3/com/supertws/dubokutv/LanSyncManager$2.smali").read_text()
        self.assertIn("if-lez v2, :cond_1a8", cloud)
        self.assertNotIn("ProgressSnapshot;->winsEqualTimestamp", cloud)
        self.assertIn("if-lez v0, :cond_fe", lan)
        self.assertNotIn("parseEpisodeNum", lan[lan.index("SyncVersion;->compare"):lan.index(".line 314")])


if __name__ == "__main__":
    unittest.main()
