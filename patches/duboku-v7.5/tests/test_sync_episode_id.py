from pathlib import Path
import unittest


PATCH = Path(__file__).resolve().parents[1]


class SyncedEpisodeIdTest(unittest.TestCase):
    def test_lan_merge_prefers_id_for_the_remote_episode(self):
        java = (PATCH / "LanSyncManager.java").read_text()
        self.assertIn(
            "String finalId = (id != null && !id.isEmpty()) ? id : existingId;",
            java,
        )

        smali = (PATCH / "smali_classes3/com/supertws/dubokutv/LanSyncManager$2.smali").read_text()
        id_block = smali.split("    .line 252", 1)[1].split("    .line 255", 1)[0]
        self.assertLess(id_block.index("val$id"), id_block.index("if-eqz v22"))
        self.assertIn("updateWithOnConflict", java)
        self.assertIn("updateWithOnConflict", smali)

        helper = (PATCH / "smali_classes3/com/supertws/dubokutv/LanSyncManagerPatch.smali").read_text()
        helper_id_block = helper.split('const-string v3, "id"', 1)[1].split(
            'const-string v3, "name"', 1
        )[0]
        self.assertIn("p3", helper_id_block)
        self.assertNotIn("p8", helper_id_block)

    def test_cloud_merge_prefers_id_for_the_remote_episode(self):
        java = (PATCH / "CloudSnapshotMerger.java").read_text()
        self.assertIn('String remoteId = row.optString("id", "");', java)
        self.assertIn(
            'values.put("id", !remoteId.isEmpty() ? remoteId : (id != null && !id.isEmpty() ? id : name));',
            java,
        )
        self.assertIn("updateWithOnConflict", java)

        smali = (PATCH / "smali_classes3/com/supertws/dubokutv/CloudSnapshotMerger.smali").read_text()
        id_block = smali.split('    const-string v6, "id"', 1)[1].split(
            '    const-string v6, "name"', 1
        )[0]
        self.assertLess(
            id_block.index("JSONObject;->optString"),
            id_block.index("move-object/from16 v7, v30"),
        )
        self.assertIn("updateWithOnConflict", smali)

        android_test = (PATCH / "tests/android/com/supertws/dubokutv/CloudSnapshotMergerTest.java").read_text()
        self.assertIn('"episode-4".equals(id()) && count() == 1', android_test)


if __name__ == "__main__":
    unittest.main()
