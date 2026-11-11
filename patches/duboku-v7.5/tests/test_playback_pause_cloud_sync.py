import unittest
from pathlib import Path

PATCH = Path(__file__).resolve().parents[1]


class PlaybackPauseCloudSyncTest(unittest.TestCase):
    def test_player_pause_transition_flushes_final_position(self):
        source = (PATCH / "LanSyncManager.java").read_text()
        self.assertIn("PlaybackPauseListener.register(exoPlayer);", source)
        handler = (PATCH / "PlaybackPauseListener.java").read_text()
        self.assertIn("onIsPlayingChanged(boolean isPlaying)", handler)
        self.assertIn("was && !isPlaying", handler)
        self.assertIn("LanSyncManager.onActivityPause(null)", handler)
        listener = (PATCH / "smali_classes5/com/supertws/dubokutv/PlaybackPauseListener.smali").read_text()
        self.assertIn(".method public final G(Z)V", listener)
        self.assertIn("Playback isPlaying callback received", listener)
        self.assertIn("LanSyncManager;->onActivityPause(Landroid/app/Activity;)V", listener)

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
        pause = pause.split("private static boolean flushActivePlayback", 1)[0]
        self.assertIn("if (!flushActivePlayback()) CloudSyncClient.onActivityPause();", pause)
        flush = source.split("private static boolean flushActivePlayback()", 1)[1]
        flush = flush.split("public static void onHistoryOpened()", 1)[0]
        self.assertIn("CloudSyncClient.onCommittedSave(true);", flush)
        self.assertIn("return true;", flush)
        self.assertIn("return false;", flush)

        smali = (PATCH / "smali_classes3/com/supertws/dubokutv/LanSyncManager.smali").read_text()
        pause = smali.split(".method public static onActivityPause(Landroid/app/Activity;)V", 1)[1]
        pause = pause.split(".end method", 1)[0]
        self.assertIn("->flushActivePlayback()Z", pause)
        self.assertIn("if-nez", pause)
        self.assertIn("CloudSyncClient;->onActivityPause()V", pause)
        self.assertIn(".method private static flushActivePlayback()Z", smali)


if __name__ == "__main__":
    unittest.main()
