from pathlib import Path
import unittest


PATCH = Path(__file__).resolve().parents[1]
PLAYER = PATCH / "smali_classes3/com/supertws/dubokutv/presentation/screens/videoPlayer/r.smali"
NOOP = PATCH / "smali_classes3/com/supertws/dubokutv/SkipIntroFocusNoop.smali"
HELPER = PATCH / "smali_classes3/com/supertws/dubokutv/SkipIntroHelper.smali"
BUILD = PATCH / "build_universal_apks.sh"


class SkipIntroFocusTest(unittest.TestCase):
    def test_focus_is_noop_and_click_keeps_fast_forward_action(self):
        player = PLAYER.read_text()
        button = player.split("# --- CleanTV Skip Intro (Fast Forward 30s) ---", 1)[1].split(
            "# --- End Skip Intro ---", 1
        )[0]
        self.assertIn("SkipIntroFocusNoop;->INSTANCE", button)
        self.assertIn("SkipIntroHelper;->INSTANCE", button)
        self.assertNotIn("r;->y:Lrb/a;", button)
        self.assertIn("implements Lrb/a;", NOOP.read_text())
        self.assertIn("invoke-static {}, Lcom/supertws/dubokutv/SkipIntroHelper;->skipIntro()V", HELPER.read_text())

    def test_build_checks_player_focus_patch_mirror(self):
        script = BUILD.read_text()
        self.assertIn("smali_classes3/com/supertws/dubokutv/presentation/screens/videoPlayer/r.smali", script)
        self.assertIn("smali_classes3/com/supertws/dubokutv/SkipIntroFocusNoop.smali", script)


if __name__ == "__main__":
    unittest.main()
