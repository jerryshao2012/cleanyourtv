import unittest
from pathlib import Path

PATCH = Path(__file__).resolve().parents[1]


class PlaybackPauseCloudSyncTest(unittest.TestCase):
    def test_database_save_callback_does_not_read_player_state_off_main_thread(self):
        source = (PATCH / "LanSyncManager.java").read_text()
        save = source.split("public static void onPlaybackSaveCommitted(Object record)", 1)[1]
        save = save.split("public static boolean mergeCloudSnapshot", 1)[0]
        self.assertNotIn("sActiveExoPlayer", save)
        self.assertIn("if (critical) CloudSyncClient.onCommittedSave(true);", save)

        smali = (PATCH / "smali_classes3/com/supertws/dubokutv/LanSyncManager.smali").read_text()
        save = smali.split(".method public static onPlaybackSaveCommitted(Ljava/lang/Object;)V", 1)[1]
        save = save.split(".end method", 1)[0]
        self.assertNotIn("sActiveExoPlayer", save)
        self.assertNotIn("s0;->m()Z", save)

    def test_activity_background_flushes_final_position_and_requests_urgent_cloud_sync(self):
        source = (PATCH / "LanSyncManager.java").read_text()
        pause = source.split("public static void onActivityPause(Activity activity)", 1)[1]
        pause = pause.split("private static void flushActivePlayback", 1)[0]
        self.assertIn("flushActivePlayback();", pause)
        self.assertIn("CloudSyncClient.onActivityPause();", pause)

        smali = (PATCH / "smali_classes3/com/supertws/dubokutv/LanSyncManager.smali").read_text()
        pause = smali.split(".method public static onActivityPause(Landroid/app/Activity;)V", 1)[1]
        pause = pause.split(".end method", 1)[0]
        self.assertIn("->flushActivePlayback()V", pause)
        self.assertIn("CloudSyncClient;->onActivityPause()V", pause)


if __name__ == "__main__":
    unittest.main()
