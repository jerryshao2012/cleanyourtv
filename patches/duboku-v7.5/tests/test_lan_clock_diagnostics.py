from pathlib import Path
import unittest


PATCH = Path(__file__).resolve().parents[1]


class LanClockDiagnosticsTest(unittest.TestCase):
    def test_clock_reply_logs_sample_offset_rtt_and_family_uncertainty(self):
        source = (PATCH / "LanSyncManager.java").read_text()
        reply = source.split('if ("TIME_REPLY".equals(action))', 1)[1].split('if ("PROGRESS_ACK".equals(action))', 1)[0]
        self.assertIn("SyncClockMath.offsetMillis(t1, t2, t3, t4)", reply)
        self.assertIn("SyncClockMath.roundTripMillis(t1, t2, t3, t4)", reply)
        self.assertIn('" sampleOffsetMs=" + offsetMs', reply)
        self.assertIn('" rttMs=" + rttMs', reply)
        self.assertIn('" familyUncertaintyMs="', reply)

    def test_packaged_smali_computes_and_logs_offset_and_rtt(self):
        smali = (PATCH / "smali_classes3/com/supertws/dubokutv/LanSyncManager.smali").read_text()
        reply = smali.split('const-string v4, "TIME_REPLY"', 1)[1].split('const-string v4, "PROGRESS_ACK"', 1)[0]
        self.assertIn("SyncClockMath;->offsetMillis(JJJJ)J", reply)
        self.assertIn("SyncClockMath;->roundTripMillis(JJJJ)J", reply)
        self.assertIn('" sampleOffsetMs="', reply)
        self.assertIn('" rttMs="', reply)
        self.assertIn('" familyUncertaintyMs="', reply)


if __name__ == "__main__":
    unittest.main()
