from pathlib import Path
import unittest


PATCH = Path(__file__).resolve().parents[1]
SOURCE = PATCH / "FamilySyncPanel.java"
SMALI = PATCH / "smali_classes5/com/supertws/dubokutv/FamilySyncPanel.smali"
ROUTE = PATCH / "smali_classes3/com/supertws/dubokutv/presentation/screens/profile/FamilySyncRoute.smali"
BUILD = PATCH / "build_universal_apks.sh"
if not BUILD.exists():
    BUILD = next(parent / "apks/patches/duboku-v7.5/build_universal_apks.sh" for parent in PATCH.parents
                 if (parent / "apks/patches/duboku-v7.5/build_universal_apks.sh").exists())


class FamilyPanelNavigationTest(unittest.TestCase):
    def test_inputs_and_confirmations_are_separate_panel_screens(self):
        source = SOURCE.read_text()
        smali = SMALI.read_text()
        for screen in ("showHome", "showCode", "showJoin", "showMerge", "showIssueConfirm", "showCleanupConfirm"):
            self.assertIn(f"{screen}(", source)
            self.assertIn(f"->{screen}(", smali)
        self.assertNotIn("AlertDialog", source)
        self.assertNotIn("就绪", source)
        self.assertNotIn("就绪", smali)
        self.assertNotIn("返回家庭同步", source)
        self.assertNotIn("返回合并记录", source)
        self.assertIn("dispatchKeyEvent(KeyEvent event)", source)
        self.assertIn("dispatchKeyEvent(Landroid/view/KeyEvent;)Z", smali)
        self.assertIn("KEYCODE_BACK", source)
        self.assertIn("Landroid/view/KeyEvent;->getKeyCode()I", smali)
        for label in ("管理家庭加入码", "新电视加入家庭", "合并旧家庭记录"):
            self.assertIn(label, source)

    def test_family_android_view_uses_native_descendant_focus(self):
        source = SOURCE.read_text()
        route = ROUTE.read_text()
        smali = SMALI.read_text()
        self.assertIn("setDescendantFocusability(ViewGroup.FOCUS_AFTER_DESCENDANTS)", source)
        self.assertIn("setFocusable(true)", source)
        self.assertIn("post(() ->", source)
        self.assertIn("Landroidx/compose/foundation/i;->l", route)
        self.assertNotIn("CloudSyncClient;->initialize(Landroid/app/Activity;)V", smali)
        self.assertNotIn("CloudSyncClient;->fetchOnHistory(Landroid/app/Activity;)V", smali)

    def test_build_replaces_stale_base_family_panel_classes(self):
        script = BUILD.read_text()
        self.assertIn("FAMILY_PANEL_CLASSES=", script)
        self.assertIn("-name 'FamilySyncPanel$*.smali'", script)
        self.assertIn("FamilySyncRoute.smali", script)
        self.assertTrue(list((PATCH / "smali_classes5/com/supertws/dubokutv").glob("FamilySyncPanel*.smali")))
        for name in ("FamilySyncPanel$1.smali", "FamilySyncPanel$2.smali"):
            self.assertTrue((PATCH / "smali_classes5/com/supertws/dubokutv" / name).exists(), name)


if __name__ == "__main__":
    unittest.main()
