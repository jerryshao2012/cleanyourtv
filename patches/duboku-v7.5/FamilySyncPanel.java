package com.supertws.dubokutv;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.os.Handler;
import android.os.Looper;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.webkit.WebView;
import android.webkit.WebSettings;
import org.json.JSONObject;
import org.json.JSONArray;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/** Family controls embedded in the Profile screen's right pane. */
public final class FamilySyncPanel extends ScrollView {
    private final Activity host;
    private final ExecutorService work = Executors.newSingleThreadExecutor();
    private final Handler authHandler = new Handler(Looper.getMainLooper());
    private LinearLayout page;
    private TextView status, welcomeMessage, currentFamily, cloudSyncValue, lanSyncValue;
    private Button authLinkButton;
    private WebView authQr;
    private LinearLayout cloudSyncToggle, lanSyncToggle;
    private String statusMessage = "";
    private String linkedProviders = "";
    private String linkedDisplayName = "";
    private String linkedProvidersFamilyId = "";
    private boolean accountLinked;
    private String authSessionId = "", authPollSecret = "";
    private int screen;
    private boolean authPolling;

    public FamilySyncPanel(Context context) {
        super(context);
        Context current = context;
        while (!(current instanceof Activity) && current instanceof ContextWrapper) current = ((ContextWrapper) current).getBaseContext();
        if (!(current instanceof Activity)) throw new IllegalArgumentException("Family panel requires an Activity context");
        host = (Activity) current;
        CloudSyncClient.initialize(host.getApplicationContext());
        setFillViewport(true);
        setFocusable(true);
        setFocusableInTouchMode(true);
        setDescendantFocusability(ViewGroup.FOCUS_AFTER_DESCENDANTS);
        setBackgroundColor(Color.TRANSPARENT);
        page = new LinearLayout(host);
        page.setOrientation(LinearLayout.VERTICAL);
        page.setPadding(144, 20, 144, 20);
        addView(page);
        showHome();
    }

    private TextView text(String value, int size, boolean bold) {
        TextView view = new TextView(host);
        view.setText(value);
        view.setTextColor(Color.WHITE);
        view.setTextSize(size);
        view.setPadding(0, 8, 0, 8);
        if (bold) view.setTypeface(Typeface.DEFAULT, Typeface.BOLD);
        return view;
    }

    private Button button(String label) {
        Button button = new Button(host);
        button.setText(label);
        button.setFocusable(true);
        button.setFocusableInTouchMode(true);
        button.setTextSize(16);
        int textColors = host.getResources().getIdentifier("family_sync_button_text", "color", host.getPackageName());
        button.setTextColor(host.getResources().getColorStateList(textColors));
        button.setBackgroundResource(host.getResources().getIdentifier("family_sync_button_focus", "drawable", host.getPackageName()));
        return button;
    }

    private LinearLayout syncToggleRow(String label, boolean cloud) {
        LinearLayout row = new LinearLayout(host);
        row.setOrientation(LinearLayout.HORIZONTAL);
        row.setGravity(Gravity.CENTER_VERTICAL);
        row.setPadding(24, 20, 24, 20);
        row.setMinimumHeight(96);
        row.setFocusable(true);
        row.setFocusableInTouchMode(true);
        row.setClickable(true);
        row.setBackgroundResource(host.getResources().getIdentifier("family_sync_button_focus", "drawable", host.getPackageName()));

        TextView title = text(label, 16, false);
        title.setPadding(0, 0, 0, 0);
        TextView value = text("", 16, false);
        value.setPadding(0, 0, 0, 0);
        if (cloud) cloudSyncValue = value; else lanSyncValue = value;
        row.addView(title, new LinearLayout.LayoutParams(0, LayoutParams.WRAP_CONTENT, 1f));
        row.addView(value, new LinearLayout.LayoutParams(LayoutParams.WRAP_CONTENT, LayoutParams.WRAP_CONTENT));
        row.setOnFocusChangeListener((view, focused) -> {
            int color = focused ? Color.BLACK : Color.WHITE;
            title.setTextColor(color);
            value.setTextColor(color);
        });
        return row;
    }

    private void resetPage() {
        stopAuthPolling(true);
        status = null;
        welcomeMessage = null;
        cloudSyncToggle = null;
        lanSyncToggle = null;
        cloudSyncValue = null;
        lanSyncValue = null;
        authLinkButton = null;
        page.removeAllViews();
        scrollTo(0, 0);
    }

    @Override protected boolean onRequestFocusInDescendants(int direction, Rect previouslyFocusedRect) {
        if (screen == 0 && authLinkButton != null)
            return (accountLinked ? cloudSyncToggle : authLinkButton).requestFocus(direction, previouslyFocusedRect);
        return super.onRequestFocusInDescendants(direction, previouslyFocusedRect);
    }

    private void addStatus() {
        status = text(statusMessage, 16, false);
        page.addView(status);
    }

    private void setStatus(String message) {
        statusMessage = message;
        if (status != null) status.setText(message);
    }

    private Button actionRow(String label, Runnable action) {
        Button row = button(label);
        LinearLayout.LayoutParams layout = new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT);
        layout.bottomMargin = 12;
        page.addView(row, layout);
        row.setOnClickListener(v -> action.run());
        return row;
    }

    private void showHome() {
        screen = 0;
        resetPage();
        page.addView(text("家庭", 28, false));
        welcomeMessage = text("", 18, false);
        page.addView(welcomeMessage);
        updateWelcomeMessage();
        authLinkButton = actionRow("关联 Google / GitHub 账号（手机扫码）", this::startAuth);
        updateAuthLinkButton();
        cloudSyncToggle = syncToggleRow("云端同步", true);
        cloudSyncToggle.setEnabled(false);
        LinearLayout.LayoutParams toggleLayout = new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT);
        toggleLayout.bottomMargin = 16;
        cloudSyncToggle.setOnClickListener(v -> {
            FamilyIdentity id = FamilyIdentity.get(host);
            boolean next = !id.isCloudSyncEnabled();
            id.setCloudSyncEnabled(next);
            updateCloudSyncToggle();
            if (next) CloudSyncClient.fetchOnHistory(host.getApplicationContext());
            setStatus(next ? "已开启家庭云端同步" : "已关闭云端同步（仅保留局域网同步）");
        });
        lanSyncToggle = syncToggleRow("局域网络同步", false);
        lanSyncToggle.setEnabled(false);
        lanSyncToggle.setOnClickListener(v -> {
            FamilyIdentity id = FamilyIdentity.get(host);
            boolean next = !id.isLanSyncEnabled();
            id.setLanSyncEnabled(next);
            updateCloudSyncToggle();
            setStatus(next ? "已开启局域网络同步" : "已关闭局域网络同步（仅作为本地播放器）");
        });
        page.addView(cloudSyncToggle, toggleLayout);
        page.addView(lanSyncToggle, new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        currentFamily = text("当前家庭：" + FamilyIdentity.get(host).familyId(), 15, false);
        page.addView(currentFamily);
        refreshLinkedProviders();
        addStatus();
        updateCloudSyncToggle();
    }

    private void startAuth() {
        showAuth();
        setStatus("正在创建手机扫码登录…");
        String family = FamilyIdentity.get(host).familyId(), secret = FamilyIdentity.get(host).familySecret();
        work.execute(() -> {
            try {
                JSONObject session = FamilyAuthClient.create(family, secret);
                String id = session.getString("sessionId"), poll = session.getString("pollSecret");
                host.runOnUiThread(() -> {
                    if (screen != 6) { work.execute(() -> { try { FamilyAuthClient.cancel(id, poll); } catch (Exception ignored) { } }); return; }
                    authSessionId = id; authPollSecret = poll;
                    String pageHtml = "<!doctype html><html><meta name=viewport content='width=device-width,initial-scale=1'><body style='margin:0;background:#fff;text-align:center;font:16px sans-serif'><img alt='Scan with your phone to link Google or GitHub' style='display:block;width:180px;height:180px;margin:auto' src='/auth/qr/" + id + ".svg'></body></html>";
                    authQr.loadDataWithBaseURL(CloudSyncClient.BASE_URL + "/", pageHtml, "text/html", "UTF-8", null);
                    authPolling = true;
                    busy("请用手机扫描二维码并完成登录；此码五分钟后失效。");
                    pollAuth();
                });
            } catch (Exception e) { showError("创建扫码登录", e); }
        });
    }

    private void showAuth() {
        screen = 6;
        resetPage();
        page.addView(text("手机扫码关联账号", 24, true));
        page.addView(text("扫描二维码后在手机上选择 Google 或 GitHub。已有账号会自动加入该账号的家庭；首次登录将建立家庭。", 16, false));
        authQr = new WebView(host);
        WebSettings settings = authQr.getSettings();
        settings.setJavaScriptEnabled(false);
        settings.setDomStorageEnabled(false);
        settings.setAllowFileAccess(false);
        settings.setSupportZoom(false);
        authQr.setFocusable(false);
        authQr.setFocusableInTouchMode(false);
        page.addView(authQr, new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, 360));
        addStatus();
        requestFocus();
    }

    private void pollAuth() {
        if (!authPolling || screen != 6 || authSessionId.isEmpty()) return;
        String id = authSessionId, poll = authPollSecret;
        work.execute(() -> {
            try {
                JSONObject result = FamilyAuthClient.status(id, poll);
                String state = result.optString("status", "pending");
                host.runOnUiThread(() -> {
                    if (!authPolling || screen != 6 || !id.equals(authSessionId)) return;
                    if ("linked".equals(state)) {
                        authPolling = false;
                        if (authQr != null) authQr.loadDataWithBaseURL(null, "<html><body style='font:24px sans-serif;text-align:center;padding:4em'>账号已关联</body></html>", "text/html", "UTF-8", null);
                        String provider = result.optString("provider", "provider");
                        String displayName = result.optString("displayName", "").trim();
                        String ticket = result.optString("familyTicket", "");
                        busy("正在连接该账号的家庭…");
                        work.execute(() -> {
                            try {
                                JSONObject credentials = FamilyAuthClient.claimFamily(id, ticket);
                                FamilyIdentity.get(host).adoptSignedInFamily(credentials.getString("familyId"), credentials.getString("familySecret"));
                                FamilyIdentity identity = FamilyIdentity.get(host);
                                identity.setCloudSyncEnabled(true);
                                identity.setLanSyncEnabled(true);
                                CloudSyncClient.fetchOnHistory(host.getApplicationContext());
                                host.runOnUiThread(() -> {
                                    if (screen != 6) return;
                                    accountLinked = true;
                                    linkedDisplayName = displayName;
                                    rememberLinkedProvider(provider);
                                    updateWelcomeMessage();
                                    updateCloudSyncToggle();
                                    busy((displayName.isEmpty() ? "" : "欢迎，" + displayName + "！") + "已连接家庭同步。按返回回到家庭设置。");
                                });
                            } catch (Exception e) { host.runOnUiThread(() -> showError("连接家庭", e)); }
                        });
                    } else if ("expired".equals(state) || "cancelled".equals(state)) {
                        authPolling = false;
                        if (authQr != null) authQr.loadDataWithBaseURL(null, "<html><body style='font:24px sans-serif;text-align:center;padding:4em'>此登录码已失效</body></html>", "text/html", "UTF-8", null);
                        busy("扫码登录已" + ("expired".equals(state) ? "过期" : "取消") + "，请返回后重新开始。");
                    } else authHandler.postDelayed(this::pollAuth, 2000);
                });
            } catch (Exception e) {
                host.runOnUiThread(() -> { if (authPolling && screen == 6) authHandler.postDelayed(this::pollAuth, 5000); });
            }
        });
    }

    private void stopAuthPolling(boolean cancel) {
        boolean wasPolling = authPolling;
        authPolling = false;
        authHandler.removeCallbacksAndMessages(null);
        if (cancel && wasPolling && !authSessionId.isEmpty()) {
            String id = authSessionId, poll = authPollSecret;
            work.execute(() -> { try { FamilyAuthClient.cancel(id, poll); } catch (Exception ignored) { } });
        }
        authSessionId = "";
        authPollSecret = "";
        if (authQr != null) { authQr.destroy(); authQr = null; }
    }

    private void returnFromAuth() {
        boolean linked = statusMessage.contains("已连接家庭同步");
        boolean ended = statusMessage.startsWith("扫码登录已");
        showHome();
        if (!linked && !ended) setStatus("已退出手机扫码登录。");
        if (authLinkButton != null) authLinkButton.requestFocus();
    }

    private void updateAuthLinkButton() {
        if (authLinkButton == null) return;
        String label = linkedProviders.isEmpty() ? "关联 Google / GitHub 账号（手机扫码）" : "继续使用 Google / GitHub 添加电视";
        authLinkButton.setText(label);
        authLinkButton.setSingleLine(true);
        authLinkButton.setEllipsize(android.text.TextUtils.TruncateAt.END);
        authLinkButton.setEnabled(true);
    }

    private void rememberLinkedProvider(String provider) {
        if (!"google".equals(provider) && !"github".equals(provider)) return;
        boolean google = linkedProviders.contains("Google") || "google".equals(provider);
        boolean github = linkedProviders.contains("GitHub") || "github".equals(provider);
        linkedProviders = google && github ? "Google 和 GitHub" : google ? "Google" : "GitHub";
        linkedProvidersFamilyId = FamilyIdentity.get(host).familyId();
    }

    private void refreshLinkedProviders() {
        String family = FamilyIdentity.get(host).familyId();
        String secret = FamilyIdentity.get(host).familySecret();
        if (!family.equals(linkedProvidersFamilyId)) {
            linkedProvidersFamilyId = family;
            linkedProviders = "";
            linkedDisplayName = "";
            updateWelcomeMessage();
            updateAuthLinkButton();
        }
        work.execute(() -> {
            try {
                JSONObject response = FamilyAuthClient.accounts(family, secret);
                JSONArray accounts = response.optJSONArray("accounts"), providers = response.optJSONArray("providers");
                boolean google = false, github = false;
                String displayName = "";
                if (accounts != null) for (int i = 0; i < accounts.length(); i++) {
                    JSONObject account = accounts.optJSONObject(i);
                    if (account == null) continue;
                    String provider = account.optString("provider", "");
                    google |= "google".equals(provider);
                    github |= "github".equals(provider);
                    if (displayName.isEmpty()) displayName = account.optString("displayName", "").trim();
                }
                if (accounts == null && providers != null) for (int i = 0; i < providers.length(); i++) {
                    String provider = providers.optString(i, "");
                    google |= "google".equals(provider);
                    github |= "github".equals(provider);
                }
                String linked = google && github ? "Google 和 GitHub" : google ? "Google" : github ? "GitHub" : "";
                String welcomeName = displayName;
                host.runOnUiThread(() -> {
                    if (screen == 0 && family.equals(FamilyIdentity.get(host).familyId())) {
                        accountLinked = !linked.isEmpty();
                        if (accountLinked) FamilyIdentity.get(host).enableSyncDefaultsIfUnset(host.getApplicationContext());
                        linkedProviders = linked;
                        linkedDisplayName = welcomeName;
                        updateWelcomeMessage();
                        updateAuthLinkButton();
                        updateCloudSyncToggle();
                    }
                });
            } catch (Exception ignored) { }
        });
    }

    @Override public boolean dispatchKeyEvent(KeyEvent event) {
        if (event.getAction() == KeyEvent.ACTION_DOWN && event.getKeyCode() == KeyEvent.KEYCODE_BACK) {
            if (screen == 6) returnFromAuth();
            else if (screen != 0) showHome();
            else return super.dispatchKeyEvent(event);
            return true;
        }
        return super.dispatchKeyEvent(event);
    }

    private void busy(String message) { setStatus(message); }

    @Override protected void onDetachedFromWindow() {
        stopAuthPolling(true);
        work.shutdownNow();
        super.onDetachedFromWindow();
    }

    private void showError(String action, Exception error) {
        String kind = error.getMessage() == null ? error.getClass().getSimpleName() : error.getMessage();
        host.runOnUiThread(() -> busy(action + "失败：" + kind + "。检查网络和 Worker 部署状态后重试。"));
    }

    private void updateCloudSyncToggle() {
        FamilyIdentity identity = FamilyIdentity.get(host);
        if (cloudSyncValue != null) cloudSyncValue.setText(identity.isCloudSyncEnabled() ? "已开启" : "已关闭");
        if (lanSyncValue != null) lanSyncValue.setText(identity.isLanSyncEnabled() ? "已开启" : "已关闭");
        if (cloudSyncToggle != null) cloudSyncToggle.setEnabled(accountLinked);
        if (lanSyncToggle != null) lanSyncToggle.setEnabled(accountLinked);
        if (authLinkButton != null) authLinkButton.setEnabled(true);
    }

    private void updateWelcomeMessage() {
        if (welcomeMessage != null) welcomeMessage.setText(linkedDisplayName.isEmpty() ? "" : "欢迎，" + linkedDisplayName + "！");
    }
}
