from pathlib import Path
import unittest


PATCH = Path(__file__).resolve().parents[1]
SOURCE = PATCH / "FamilySyncPanel.java"
SMALI = PATCH / "smali_classes6/com/supertws/dubokutv/FamilySyncPanel.smali"
ROUTE = PATCH / "smali_classes3/com/supertws/dubokutv/presentation/screens/profile/FamilySyncRoute.smali"
BUILD = PATCH / "build_universal_apks.sh"
if not BUILD.exists():
    BUILD = next(parent / "apks/patches/duboku-v7.5/build_universal_apks.sh" for parent in PATCH.parents
                 if (parent / "apks/patches/duboku-v7.5/build_universal_apks.sh").exists())


class FamilyPanelNavigationTest(unittest.TestCase):
    def test_legacy_code_and_merge_screens_are_removed_from_the_panel(self):
        source = SOURCE.read_text()
        home = source.split("private void showHome()", 1)[1].split("private void startAuth()", 1)[0]
        for action in ("showCode", "showJoin", "showMerge", "showIssueConfirm", "showCleanupConfirm", "管理家庭加入码", "新电视加入家庭", "合并旧家庭记录"):
            self.assertNotIn(action, home)
        self.assertNotIn("private void showCode()", source)
        self.assertNotIn("private void showJoin()", source)
        self.assertNotIn("private void showMerge()", source)
        self.assertNotIn("private void previewMerge()", source)
        self.assertNotIn("private void joinFamily()", source)
        self.assertIn('"关联 Google / GitHub 账号（手机扫码）"', home)
        self.assertLess(home.index("authLinkButton = actionRow"), home.index('cloudSyncToggle = syncToggleRow'))

    def test_family_sign_in_uses_qr_and_stops_polling_when_panel_leaves(self):
        source = SOURCE.read_text()
        smali = SMALI.read_text()
        self.assertIn("手机扫码关联账号", source)
        self.assertIn("FamilyAuthClient.create", source)
        self.assertIn("FamilyAuthClient.status", source)
        self.assertIn("/auth/qr/", source)
        self.assertIn("stopAuthPolling(true)", source)
        self.assertIn("identity.setCloudSyncEnabled(true)", source)
        self.assertIn("identity.setLanSyncEnabled(true)", source)
        self.assertIn("cloudSyncToggle.setEnabled(accountLinked)", source)
        self.assertIn("lanSyncToggle.setEnabled(accountLinked)", source)
        self.assertIn("private void returnFromAuth()", source)
        self.assertIn('statusMessage.contains("已连接家庭同步")', source)
        self.assertIn("authLinkButton.requestFocus()", source)
        auth = source.split("private void showAuth()", 1)[1].split("private void pollAuth()", 1)[0]
        self.assertNotIn("取消并返回", auth)
        self.assertIn("authQr.setFocusable(false)", auth)
        self.assertIn("requestFocus();", auth)
        self.assertNotIn("取消并返回", smali)
        self.assertIn("setSingleLine(Z)V", smali)
        self.assertIn("setEllipsize(Landroid/text/TextUtils$TruncateAt;)V", smali)
        self.assertIn("已退出手机扫码登录", source)
        self.assertIn("private void refreshLinkedProviders()", source)
        self.assertIn('"继续使用 Google / GitHub 添加电视"', source)
        self.assertIn("authLinkButton.setSingleLine(true)", source)
        self.assertIn("authLinkButton.setEllipsize", source)
        self.assertIn('result.optString("displayName", "")', source)
        self.assertNotIn("家庭管理", source)
        self.assertNotIn("familyHeader", source)
        self.assertIn('"欢迎，" + linkedDisplayName + "！"', source)
        self.assertIn("updateWelcomeMessage()", source)
        self.assertIn("FamilyAuthClient;->create", smali)

    def test_family_panel_waits_for_right_key_before_native_focus(self):
        source = SOURCE.read_text()
        route = ROUTE.read_text()
        smali = SMALI.read_text()
        self.assertIn("setDescendantFocusability(ViewGroup.FOCUS_AFTER_DESCENDANTS)", source)
        self.assertIn("setFocusable(true)", source)
        self.assertIn("onRequestFocusInDescendants(int direction, Rect previouslyFocusedRect)", source)
        self.assertIn("(accountLinked ? cloudSyncToggle : authLinkButton).requestFocus(direction, previouslyFocusedRect)", source)
        self.assertIn("onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z", smali)
        self.assertIn("cloudSyncToggle", smali)
        home = source.split("private void showHome()", 1)[1].split("private void startAuth()", 1)[0]
        self.assertNotIn("requestFocus", home)
        self.assertNotIn("post(() ->", home)
        self.assertIn("Landroidx/compose/foundation/i;->l", route)
        self.assertNotIn("CloudSyncClient;->initialize(Landroid/app/Activity;)V", smali)
        self.assertNotIn("CloudSyncClient;->fetchOnHistory(Landroid/app/Activity;)V", smali)

    def test_build_replaces_stale_base_family_panel_classes(self):
        script = BUILD.read_text()
        self.assertIn('smali_classes6', script)
        self.assertIn("-name 'FamilySyncPanel$*.smali'", script)
        self.assertIn("FamilySyncRoute.smali", script)
        self.assertTrue(list((PATCH / "smali_classes6/com/supertws/dubokutv").glob("FamilySyncPanel*.smali")))
        self.assertTrue((PATCH / "smali_classes6/com/supertws/dubokutv/FamilyAuthClient.smali").exists())
        self.assertTrue(list((PATCH / "smali_classes6/com/supertws/dubokutv").glob("FamilySyncPanel$$ExternalSyntheticLambda*.smali")))


if __name__ == "__main__":
    unittest.main()
