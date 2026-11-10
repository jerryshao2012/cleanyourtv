from pathlib import Path
import unittest

PATCH = Path(__file__).resolve().parents[1]


class LanSyncPeerValidationTest(unittest.TestCase):
    def test_unknown_devices_cannot_request_or_publish_progress(self):
        source = (PATCH / "LanSyncManager.java").read_text()
        reply = source.index('if ("TIME_REPLY".equals(action))')
        request = source.index('if ("REQUEST_SYNC".equals(action))', reply)
        guard = source.find(
            "if (!FamilyIdentity.validId(fromDevice) || !identity.peers().contains(fromDevice))",
            reply,
        )
        self.assertGreaterEqual(guard, 0)
        self.assertLess(guard, request)
        self.assertIn("return;", source[guard:request])

        smali = (PATCH / "smali_classes3/com/supertws/dubokutv/LanSyncManager.smali").read_text()
        request_sync = smali.index('const-string v4, "REQUEST_SYNC"')
        ack_return = smali.rfind("return-void", 0, request_sync)
        guarded_dispatch = smali[ack_return:request_sync]
        self.assertIn("FamilyIdentity;->validId(Ljava/lang/String;)Z", guarded_dispatch)
        self.assertIn("FamilyIdentity;->peers()Ljava/util/Set;", guarded_dispatch)
        self.assertIn("Ljava/util/Set;->contains(Ljava/lang/Object;)Z", guarded_dispatch)


if __name__ == "__main__":
    unittest.main()
