from pathlib import Path
import unittest


PATCH = Path(__file__).resolve().parents[1]


class PlaybackFlushStateTest(unittest.TestCase):
    def test_final_save_requires_ready_or_ended_player(self):
        source = (PATCH / "LanSyncManager.java").read_text()
        flush = source.split("private static boolean flushActivePlayback()", 1)[1].split("public static void register", 1)[0]
        self.assertLess(flush.index("PlaybackEvent.canFlushFinalPosition(playerState)"), flush.index("exoPlayer.M()"))
        self.assertIn('"Final playback flush skipped: player state=" + playerState', flush)

        event = (PATCH / "PlaybackEvent.java").read_text()
        self.assertIn("return playerState == 3 || playerState == 4;", event)
        test = (PATCH / "tests/PlaybackEventTest.java").read_text()
        self.assertIn("assert !PlaybackEvent.canFlushFinalPosition(1);", test)
        self.assertIn("assert !PlaybackEvent.canFlushFinalPosition(2);", test)
        self.assertIn("assert PlaybackEvent.canFlushFinalPosition(3);", test)
        self.assertIn("assert PlaybackEvent.canFlushFinalPosition(4);", test)

    def test_packaged_smali_checks_state_before_reading_position(self):
        source = (PATCH / "smali_classes3/com/supertws/dubokutv/LanSyncManager.smali").read_text()
        flush = source.split(".method private static flushActivePlayback()Z", 1)[1].split(".end method", 1)[0]
        self.assertLess(flush.index("h0;->T()I"), flush.index("PlaybackEvent;->canFlushFinalPosition(I)Z"))
        self.assertLess(flush.index("PlaybackEvent;->canFlushFinalPosition(I)Z"), flush.index("h0;->M()J"))
        self.assertIn("Final playback flush skipped: player state=", flush)

        event = (PATCH / "smali_classes3/com/supertws/dubokutv/PlaybackEvent.smali").read_text()
        guard = event.split(".method static canFlushFinalPosition(I)Z", 1)[1].split(".end method", 1)[0]
        self.assertIn("const/4 v0, 0x3", guard)
        self.assertIn("const/4 v0, 0x4", guard)


if __name__ == "__main__":
    unittest.main()
