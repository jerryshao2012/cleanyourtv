from pathlib import Path
import re
import unittest


SMALI = Path(__file__).parents[1] / "smali_classes4/mc/c.smali"


class Android22CleartextPolicyTest(unittest.TestCase):
    def test_api22_returns_default_without_loading_api23_policy_class(self):
        source = SMALI.read_text()
        method = re.search(
            r"\.method public final h\(Ljava/lang/String;\)Z(.*?)\.end method",
            source,
            re.S,
        ).group(1)

        api23_guard = re.search(
            r"const/16 v1, 0x17\s+if-lt v0, v1, :(\w+)", method
        )
        self.assertIsNotNone(api23_guard, "API 22 must branch before referencing NetworkSecurityPolicy")
        legacy_label = re.search(
            rf":{api23_guard.group(1)}\s+const/4 p1, 0x1\s+return p1",
            method,
        )
        self.assertIsNotNone(legacy_label, "API <23 should use Android's default cleartext behavior")


if __name__ == "__main__":
    unittest.main()
