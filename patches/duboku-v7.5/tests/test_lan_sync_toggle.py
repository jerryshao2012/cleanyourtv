from pathlib import Path
import unittest

PATCH = Path(__file__).parents[1]
IDENTITY = (PATCH / "FamilyIdentity.java").read_text()
LAN = (PATCH / "LanSyncManager.java").read_text()
PANEL = (PATCH / "FamilySyncPanel.java").read_text()
SNAPSHOT = (PATCH / "ProgressSnapshot.java").read_text()
IDENTITY_SMALI = (PATCH / "smali_classes3/com/supertws/dubokutv/FamilyIdentity.smali").read_text()
BUILD_PATH = PATCH / "build_universal_apks.sh"
if not BUILD_PATH.exists():
    BUILD_PATH = next(parent / "apks/patches/duboku-v7.5/build_universal_apks.sh" for parent in PATCH.parents
                      if (parent / "apks/patches/duboku-v7.5/build_universal_apks.sh").exists())
BUILD = BUILD_PATH.read_text()


def method_body(source, signature):
    start = source.index(signature)
    opening = source.index("{", start)
    depth = 0
    for index in range(opening, len(source)):
        depth += source[index] == "{"
        depth -= source[index] == "}"
        if depth == 0:
            return source[opening + 1:index]
    raise AssertionError(f"Unclosed method: {signature}")


class LanSyncToggleTest(unittest.TestCase):
    def test_setting_persists_and_controls_lan_receiver(self):
        getter = method_body(IDENTITY, "isLanSyncEnabled()")
        self.assertIn('prefs.getBoolean("lanSyncEnabled", false)', getter)
        setter = method_body(IDENTITY, "setLanSyncEnabled(boolean enabled)")
        self.assertIn('putBoolean("lanSyncEnabled", enabled)', setter)
        self.assertIn(".apply()", setter)
        self.assertIn("LanSyncManager.onLanSyncSettingChanged(enabled)", setter)
        self.assertNotIn("setCloudSyncEnabled", setter)
        init = method_body(LAN, "public static LanSyncManager getInstance(Context context)")
        self.assertIn("isLanSyncEnabled()) sInstance.startReceiver()", init)

    def test_all_lan_network_paths_are_gated(self):
        for signature in ("public synchronized void startReceiver()", "private void handleIncomingJson(String jsonStr",
                          "private void respondAllRecords(final String targetIp)", "public static void requestSyncFromLan()",
                          "private static void sendUdpPacket(String jsonStr", "public static void broadcastProgress(final Object recordObj)"):
            body = method_body(LAN, signature)
            if signature.startswith("private static void sendUdpPacket("):
                body = method_body(LAN, "private static boolean sendUdpPacketResult(")
            elif signature.startswith("public static void broadcastProgress("):
                body = method_body(LAN, "private static void publishPlaybackProgress(")
            self.assertIn("isLanSyncEnabled()", body, signature)
        self.assertIn("currentLanEnabled(manager.mContext)", method_body(LAN, "public static void onAppCreate(Context context)"))

    def test_family_panel_shows_toggle_and_disables_lan_controls(self):
        self.assertIn('setLanSyncEnabled(next)', PANEL)
        self.assertIn('局域网络同步', PANEL)
        home = method_body(PANEL, "private void showHome()")
        self.assertLess(home.index("authLinkButton = actionRow"), home.index('lanSyncToggle = syncToggleRow("局域网络同步", false)'))
        update = method_body(PANEL, "private void updateCloudSyncToggle()")
        self.assertIn("lanSyncValue", update)
        self.assertIn("lanSyncToggle.setEnabled(accountLinked)", update)
        self.assertIn("cloudSyncToggle.setEnabled(accountLinked)", update)

    def test_sync_defaults_are_off_until_account_is_linked(self):
        self.assertIn('prefs.getBoolean("cloudSyncEnabled", false)', IDENTITY)
        self.assertIn('prefs.getBoolean("lanSyncEnabled", false)', IDENTITY)
        initialize = method_body(IDENTITY, "enableSyncDefaultsIfUnset(Context context)")
        self.assertIn('!prefs.contains("cloudSyncEnabled")', initialize)
        self.assertIn('!prefs.contains("lanSyncEnabled")', initialize)
        self.assertIn("enableSyncDefaultsIfUnset(host.getApplicationContext())", PANEL)
        self.assertIn("enableSyncDefaultsIfUnset(Landroid/content/Context;)V", IDENTITY_SMALI)
        self.assertIn('const-string v1, "cloudSyncEnabled"', IDENTITY_SMALI)
        self.assertIn('"$PATCH_DIR/smali_classes6/com/supertws/dubokutv/FamilyIdentity.smali"', BUILD)

    def test_sync_switches_are_local_and_not_shared_with_family(self):
        self.assertIn("getApplicationContext().getSharedPreferences(PREFS, Context.MODE_PRIVATE)", IDENTITY)
        offer = method_body(IDENTITY, "public JSONObject offer(String nonce)")
        snapshot = method_body(SNAPSHOT, "public JSONObject toJson()")
        for key in ("cloudSyncEnabled", "lanSyncEnabled"):
            self.assertNotIn(key, offer)
            self.assertNotIn(key, snapshot)

    def test_family_panel_matches_settings_panel_style(self):
        self.assertIn("setBackgroundColor(Color.TRANSPARENT)", PANEL)
        self.assertIn("page.setPadding(144, 20, 144, 20)", PANEL)
        self.assertIn('syncToggleRow("云端同步", true)', PANEL)
        self.assertIn('syncToggleRow("局域网络同步", false)', PANEL)


if __name__ == "__main__":
    unittest.main()
