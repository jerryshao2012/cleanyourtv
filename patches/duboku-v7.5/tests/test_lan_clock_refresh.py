from pathlib import Path
import unittest


PATCH = Path(__file__).resolve().parents[1]


class LanClockRefreshTest(unittest.TestCase):
    def test_clock_probe_repeats_and_lan_enable_triggers_probe(self):
        source = (PATCH / "LanSyncManager.java").read_text()
        sync = source.split("public static synchronized void syncLanClock()", 1)[1].split(
            "private static void sendUdpPacket(", 1
        )[0]
        toggle = source.split("public static void onLanSyncSettingChanged(boolean enabled)", 1)[1].split(
            "private void handleIncomingJson(", 1
        )[0]
        callback = (PATCH / "smali_classes3/com/supertws/dubokutv/LanSyncManager$8.smali").read_text()
        callback = callback.split(".method public onAvailable(Landroid/net/Network;)V", 1)[1].split(
            ".end method", 1
        )[0]
        smali = (PATCH / "smali_classes3/com/supertws/dubokutv/LanSyncManager.smali").read_text()
        sync_smali = smali.split(".method public static declared-synchronized syncLanClock()V", 1)[1].split(
            ".end method", 1
        )[0]
        toggle_smali = smali.split(".method public static onLanSyncSettingChanged(Z)V", 1)[1].split(
            ".end method", 1
        )[0]
        self.assertIn("private static final long CLOCK_PROBE_INTERVAL_MS = 1_800_000L;", source)
        self.assertIn("long sinceLastProbe = now - sLastClockProbeAt;", sync)
        self.assertIn("long nextDelay = sinceLastProbe < 30_000L ? 30_000L - sinceLastProbe : CLOCK_PROBE_INTERVAL_MS;", sync)
        self.assertIn("sClockRefresh = sSyncQueue.schedule(LanSyncManager::syncLanClock", sync)
        self.assertIn("refresh.cancel(false)", toggle)
        self.assertIn("syncLanClock();", toggle)
        self.assertIn("syncLanClock()", callback)
        self.assertIn("0x1b7740", sync_smali)
        self.assertIn("if-ltz v7, :cond_retry_clock_delay", sync_smali)
        self.assertIn("sub-long v5, v5, v3", sync_smali)
        self.assertIn("sClockRefresh", sync_smali)
        self.assertIn("->syncLanClock()V", toggle_smali)


if __name__ == "__main__":
    unittest.main()
