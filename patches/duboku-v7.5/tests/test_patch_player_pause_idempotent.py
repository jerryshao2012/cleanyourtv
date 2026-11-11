from pathlib import Path
import subprocess
import sys
import tempfile
import unittest


PATCH = Path(__file__).resolve().parents[1]
PATCHER = PATCH / "patch_player_pause.py"


HOOK = """    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/n0;->y:Landroidx/media3/exoplayer/ExoPlayer;

    check-cast v0, Landroidx/media3/exoplayer/h0;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/h0;->S()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/supertws/dubokutv/LanSyncManager;->onActivityPause(Landroid/app/Activity;)V

    :cond_0
"""


class PatchPlayerPauseIdempotentTest(unittest.TestCase):
    def test_repeated_numeric_label_hooks_normalize_to_one_stable_hook(self):
        with tempfile.TemporaryDirectory() as temp:
            target = Path(temp) / "n0.smali"
            target.write_text(
                ".class public Lcom/supertws/dubokutv/presentation/screens/videoPlayer/n0;\n"
                ".method public final G(Z)V\n    .locals 1\n"
                + HOOK.replace(":cond_0", ":cond_1")
                + HOOK
                + "    iget p1, p0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/n0;->a:I\n"
                + ".end method\n"
            )
            subprocess.run([sys.executable, str(PATCHER), str(target)], check=True)
            first = target.read_text()
            self.assertEqual(first.count("LanSyncManager;->onActivityPause("), 1)
            subprocess.run([sys.executable, str(PATCHER), str(target)], check=True)
            self.assertEqual(target.read_text(), first)


if __name__ == "__main__":
    unittest.main()
