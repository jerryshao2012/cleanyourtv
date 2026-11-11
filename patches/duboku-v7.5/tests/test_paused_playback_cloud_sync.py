import unittest
from pathlib import Path

PATCH = Path(__file__).resolve().parents[1]


class PausedPlaybackCloudSyncTest(unittest.TestCase):
    def test_paused_committed_save_is_critical_in_source_and_loaded_smali(self):
        source = (PATCH / "LanSyncManager.java").read_text()
        save = source.split("public static void onPlaybackSaveCommitted(Object record)", 1)[1]
        self.assertIn("critical |= sActiveExoPlayer != null", save)
        self.assertIn("!((androidx.compose.foundation.layout.s0) sActiveExoPlayer).m()", save)
        self.assertIn("if (critical) CloudSyncClient.onCommittedSave(true);", save)

        smali = (PATCH / "smali_classes3/com/supertws/dubokutv/LanSyncManager.smali").read_text()
        save = smali.split(".method public static onPlaybackSaveCommitted(Ljava/lang/Object;)V", 1)[1]
        save = save.split(".end method", 1)[0]
        self.assertIn("sget-object v3, Lcom/supertws/dubokutv/LanSyncManager;->sActiveExoPlayer:Ljava/lang/Object;", save)
        self.assertIn("invoke-virtual {v3}, Landroidx/compose/foundation/layout/s0;->m()Z", save)
        self.assertIn("CloudSyncClient;->onCommittedSave(Z)V", save)


if __name__ == "__main__":
    unittest.main()
