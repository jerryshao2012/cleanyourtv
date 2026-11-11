import unittest
from pathlib import Path

PATCH = Path(__file__).resolve().parents[1]


class PlaybackPauseCloudSyncTest(unittest.TestCase):
    def test_player_pause_transition_flushes_final_position(self):
        patcher = (PATCH / "patch_player_pause.py").read_text()
        self.assertNotIn("getValue()Ljava/lang/Object;", patcher)
        self.assertIn("if-nez p1, :cond_sync_pause_done", patcher)
        self.assertIn("Landroidx/media3/exoplayer/h0;->S()Z", patcher)
        self.assertIn("LanSyncManager;->onActivityPause(Landroid/app/Activity;)V", patcher)
        self.assertIn("hook_pattern.subn", patcher)
        self.assertIn("Unrecognized pause hook in n0.smali", patcher)
        manager = (PATCH / "smali_classes3/com/supertws/dubokutv/LanSyncManager.smali").read_text()
        self.assertNotIn("PlaybackPauseListener", manager)
        build = (PATCH / "build_universal_apks.sh").read_text()
        self.assertIn('if [ ! -f "$PLAYER_LISTENER" ]; then', build)
        self.assertIn('PLAYER_LISTENER="$SRC/smali_classes4/com/supertws/dubokutv/presentation/screens/videoPlayer/n0.smali"', build)
        self.assertIn('python3 "$PATCH_DIR/patch_player_pause.py" "$PLAYER_LISTENER"', build)
        self.assertNotIn('grep -q "cond_sync_pause_done"', build)
        self.assertIn('mv "$PLAYER_LISTENER" "$SRC/smali_classes4/com/supertws/dubokutv/presentation/screens/videoPlayer/n0.smali"', build)

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
        flush = source.split("private static synchronized boolean flushActivePlayback()", 1)[1]
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
        self.assertIn(".method private static declared-synchronized flushActivePlayback()Z", smali)
        self.assertIn("PlaybackEvent;->isDuplicateFinalFlush", smali)
        self.assertIn("Skipped duplicate final playback flush", source)


if __name__ == "__main__":
    unittest.main()
