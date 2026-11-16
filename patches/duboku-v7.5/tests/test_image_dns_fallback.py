from pathlib import Path
import re
import unittest

PATCH = Path(__file__).parents[1]


def method(source, name):
    match = re.search(rf"\.method[^\n]*{re.escape(name)}\([^\n]*\n(.*?)\.end method", source, re.S)
    if not match:
        raise AssertionError(f"Missing method {name}")
    return match.group(0)


class ImageDnsFallbackTest(unittest.TestCase):
    def test_dns_china_bypass_and_tmdb_rotation(self):
        java = (PATCH / "shim/DubokuCompat.java").read_text()
        self.assertIn("isChinaEnvironment", java)
        self.assertIn("getDubokuCloudflareAddresses", java)
        self.assertIn("getTmdbAddresses", java)
        self.assertIn("executeImageRequest", java)
        self.assertIn("(byte) 104, (byte) 26, (byte) 2, (byte) 208", java)
        self.assertIn("(byte) 143, (byte) 244, (byte) 50, (byte) 83", java)

        smali = (PATCH / "smali_classes3/com/supertws/dubokutv/DubokuCompat.smali").read_text()
        resolve = method(smali, "resolveHost")
        self.assertIn("isChinaEnvironment", resolve)
        self.assertIn("getDubokuCloudflareAddresses", resolve)
        self.assertIn("getTmdbAddresses", resolve)

        exec_req = method(smali, "executeImageRequest")
        self.assertIn("https://wsrv.nl/?url=", exec_req)
        self.assertIn("https://images.weserv.nl/?url=", exec_req)

        china = method(smali, "isChinaEnvironment")
        self.assertIn("Shanghai", china)
        self.assertIn("CN", china)

    def test_coil_headers_and_fallback_attached(self):
        coil_k = (PATCH / "smali/coil/fetch/k.smali").read_text()
        self.assertIn('"User-Agent"', coil_k)
        self.assertIn('"Referer"', coil_k)
        self.assertIn('"https://www.duboku.tv/"', coil_k)
        self.assertIn("executeImageRequest", coil_k)


if __name__ == "__main__":
    unittest.main()
