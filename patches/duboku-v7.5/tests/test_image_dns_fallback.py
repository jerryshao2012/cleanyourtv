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
        self.assertIn("getCachedAddresses", java)
        self.assertIn("queryHttpDns", java)
        self.assertIn("executeImageRequest", java)
        self.assertIn("duboku_net_cache.properties", java)
        self.assertIn("119.29.29.29", java)
        self.assertIn("evictHost", java)
        self.assertIn("isProxyHost", java)

        smali = (PATCH / "smali_classes3/com/supertws/dubokutv/DubokuCompat.smali").read_text()
        resolve = method(smali, "resolveHost")
        self.assertIn("isChinaEnvironment", resolve)
        self.assertIn("getCachedAddresses", resolve)
        self.assertIn("queryHttpDns", resolve)

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

    def test_app_init_compat(self):
        app_smali = (PATCH / "smali_classes3/com/supertws/dubokutv/DubokuTvApplication.smali").read_text()
        onCreate = method(app_smali, "onCreate")
        self.assertIn("DubokuCompat;->init(Landroid/content/Context;)V", onCreate)

    def test_update_suppression_in_china(self):
        update_smali = (PATCH / "smali_classes3/com/supertws/dubokutv/presentation/update/UpdateScreenViewModel$checkUpdate$1.smali").read_text()
        invoke_suspend = method(update_smali, "invokeSuspend")
        self.assertIn("DubokuCompat;->isChinaEnvironment()Z", invoke_suspend)
        self.assertIn("Lcom/supertws/dubokutv/presentation/update/m;->a:Lcom/supertws/dubokutv/presentation/update/m;", invoke_suspend)


if __name__ == "__main__":
    unittest.main()
