from pathlib import Path
import re
import unittest

PATCH = Path(__file__).parents[1]


def method(source, name):
    match = re.search(rf"\.method[^\n]*{re.escape(name)}\([^\n]*\n(.*?)\.end method", source, re.S)
    if not match:
        raise AssertionError(f"Missing method {name}")
    return match.group(0)


class LegacyImageUrlTest(unittest.TestCase):
    def test_api22_fallback_converts_any_https_host(self):
        java = (PATCH / "shim/DubokuCompat.java").read_text()
        source = java[java.index("public static String fixImageUrl"):]
        source = source[:source.index("\n    }") + 6]
        self.assertIn("Build.VERSION.SDK_INT < 26", source)
        self.assertIn('url.startsWith("https://")', source)
        self.assertIn('"http://" + url.substring(8)', source)
        self.assertNotIn("pic.dbokutv.com", source)

        smali = (PATCH / "smali_classes3/com/supertws/dubokutv/DubokuCompat.smali").read_text()
        body = method(smali, "fixImageUrl")
        self.assertIn('const-string v0, "https://"', body)
        self.assertIn('const-string v1, "http://"', body)
        self.assertNotIn("pic.dbokutv.com", body)


if __name__ == "__main__":
    unittest.main()
