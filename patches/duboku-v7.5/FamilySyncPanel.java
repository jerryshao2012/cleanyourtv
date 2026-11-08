package com.supertws.dubokutv;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import org.json.JSONArray;
import org.json.JSONObject;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/** Family controls embedded in the Profile screen's right pane. */
public final class FamilySyncPanel extends ScrollView {
    private final Activity host;
    private final ExecutorService work = Executors.newSingleThreadExecutor();
    private LinearLayout page;
    private TextView status, currentFamily, codeDisplay, cloudSyncValue, lanSyncValue;
    private EditText joinCode, sourceCodes;
    private Button cleanup, mergePreview, mergeCopy;
    private LinearLayout cloudSyncToggle, lanSyncToggle;
    private String previewedCodes = "", copiedCodes = "", joinCodeValue = "", sourceCodeValue = "";
    private String generatedCode = "", statusMessage = "";
    private int screen;
    private boolean previewed;
    private boolean cleanupReady;

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

    private EditText input(String hint, boolean multiline) {
        EditText input = new EditText(host);
        input.setSingleLine(!multiline);
        input.setHint(hint);
        input.setTextColor(Color.WHITE);
        input.setHintTextColor(Color.LTGRAY);
        input.setTextSize(16);
        if (multiline) {
            input.setMinLines(2);
            input.setGravity(Gravity.TOP | Gravity.START);
        }
        return input;
    }

    private void resetPage() {
        status = null;
        cleanup = null;
        cloudSyncToggle = null;
        lanSyncToggle = null;
        cloudSyncValue = null;
        lanSyncValue = null;
        joinCode = null;
        sourceCodes = null;
        mergePreview = null;
        mergeCopy = null;
        page.removeAllViews();
        scrollTo(0, 0);
    }

    @Override protected boolean onRequestFocusInDescendants(int direction, Rect previouslyFocusedRect) {
        if (screen == 0 && cloudSyncToggle != null)
            return cloudSyncToggle.requestFocus(direction, previouslyFocusedRect);
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
        cloudSyncToggle = syncToggleRow("云端同步", true);
        LinearLayout.LayoutParams toggleLayout = new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT);
        toggleLayout.bottomMargin = 16;
        page.addView(cloudSyncToggle, toggleLayout);
        cloudSyncToggle.setOnClickListener(v -> {
            FamilyIdentity id = FamilyIdentity.get(host);
            boolean next = !id.isCloudSyncEnabled();
            id.setCloudSyncEnabled(next);
            updateCloudSyncToggle();
            if (next) CloudSyncClient.fetchOnHistory(host.getApplicationContext());
            setStatus(next ? "已开启家庭云端同步" : "已关闭云端同步（仅保留局域网同步）");
        });
        lanSyncToggle = syncToggleRow("局域网络同步", false);
        lanSyncToggle.setOnClickListener(v -> {
            FamilyIdentity id = FamilyIdentity.get(host);
            boolean next = !id.isLanSyncEnabled();
            id.setLanSyncEnabled(next);
            updateCloudSyncToggle();
            setStatus(next ? "已开启局域网络同步" : "已关闭局域网络同步（仅作为本地播放器）");
        });
        page.addView(lanSyncToggle, new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        page.addView(text("家庭管理", 20, true));
        currentFamily = text("当前家庭：" + FamilyIdentity.get(host).familyId(), 15, false);
        page.addView(currentFamily);
        Button code = actionRow("管理家庭加入码", this::showCode);
        Button join = actionRow("新电视加入家庭", this::showJoin);
        Button merge = actionRow("合并旧家庭记录", this::showMerge);
        boolean enabled = FamilyIdentity.get(host).isCloudSyncEnabled();
        code.setEnabled(enabled);
        join.setEnabled(enabled);
        merge.setEnabled(enabled);
        addStatus();
        updateCloudSyncToggle();
    }

    private void showCode() {
        screen = 1;
        resetPage();
        page.addView(text("家庭加入码", 24, true));
        page.addView(text("把当前加入码输入新电视，即可加入同一家庭。生成新码会使旧码失效。", 16, false));
        page.addView(text("当前家庭：" + FamilyIdentity.get(host).familyId(), 15, false));
        codeDisplay = text(generatedCode.isEmpty() ? "加入码尚未生成" : generatedCode, 24, true);
        page.addView(codeDisplay);
        Button issue = actionRow(generatedCode.isEmpty() ? "生成家庭加入码" : "轮换加入码", () -> showIssueConfirm());
        issue.setEnabled(FamilyIdentity.get(host).isCloudSyncEnabled());
        addStatus();
        issue.requestFocus();
    }

    private void showIssueConfirm() {
        screen = 4;
        resetPage();
        page.addView(text("确认更换加入码？", 24, true));
        page.addView(text("新码生成后，原加入码会立即失效。", 18, false));
        Button confirm = actionRow("确认生成新加入码", this::issueCode);
        confirm.setEnabled(FamilyIdentity.get(host).isCloudSyncEnabled());
        confirm.requestFocus();
        addStatus();
    }

    private void showJoin() {
        screen = 2;
        resetPage();
        page.addView(text("新电视加入当前家庭", 24, true));
        page.addView(text("输入另一台电视显示的家庭加入码。加入后会读取并合并家庭进度。", 16, false));
        joinCode = input("例如 ABCD-EFGH-JKLM-NPQR", false);
        joinCode.setEnabled(FamilyIdentity.get(host).isCloudSyncEnabled());
        joinCode.setText(joinCodeValue);
        joinCode.addTextChangedListener(new TextWatcher() {
            public void beforeTextChanged(CharSequence s, int start, int count, int after) { }
            public void onTextChanged(CharSequence s, int start, int before, int count) { joinCodeValue = s.toString(); }
            public void afterTextChanged(Editable s) { }
        });
        page.addView(joinCode);
        Button join = actionRow("加入并同步家庭进度", this::joinFamily);
        join.setEnabled(FamilyIdentity.get(host).isCloudSyncEnabled());
        addStatus();
        join.requestFocus();
    }

    private void showMerge() {
        screen = 3;
        resetPage();
        page.addView(text("合并旧家庭记录", 24, true));
        page.addView(text("每行输入一个旧家庭加入码。先预览，再复制并核对记录；最后才确认清理旧家庭。", 16, false));
        sourceCodes = input("每行一个旧家庭加入码", true);
        sourceCodes.setEnabled(FamilyIdentity.get(host).isCloudSyncEnabled());
        sourceCodes.setText(sourceCodeValue);
        sourceCodes.addTextChangedListener(new TextWatcher() {
            public void beforeTextChanged(CharSequence s, int start, int count, int after) { }
            public void onTextChanged(CharSequence s, int start, int before, int count) {
                sourceCodeValue = s.toString();
                if (!previewedCodes.equals(sourceCodeValue)) cleanupReady = false;
                updateMergeControls();
            }
            public void afterTextChanged(Editable s) { }
        });
        page.addView(sourceCodes);
        mergePreview = actionRow("预览旧家庭记录", this::previewMerge);
        mergeCopy = actionRow("复制记录到当前家庭", this::copyMerge);
        cleanup = actionRow("确认清理旧 familyId 和快照", this::confirmCleanup);
        updateMergeControls();
        addStatus();
        mergePreview.requestFocus();
    }

    private void showCleanupConfirm() {
        screen = 5;
        resetPage();
        page.addView(text("永久清理旧家庭？", 24, true));
        page.addView(text("旧家庭快照将被删除，旧 familyId 凭据将失效。请先确认当前家庭已显示并可继续播放刚复制的进度。", 18, false));
        Button confirm = actionRow("复制已核验，永久清理", this::cleanUp);
        confirm.setEnabled(FamilyIdentity.get(host).isCloudSyncEnabled() && cleanupReady && copiedCodes.equals(sourceCodeValue));
        confirm.requestFocus();
        addStatus();
    }

    @Override public boolean dispatchKeyEvent(KeyEvent event) {
        if (event.getAction() == KeyEvent.ACTION_DOWN && event.getKeyCode() == KeyEvent.KEYCODE_BACK) {
            if (screen == 4) showCode();
            else if (screen == 5) showMerge();
            else if (screen != 0) showHome();
            else return super.dispatchKeyEvent(event);
            return true;
        }
        return super.dispatchKeyEvent(event);
    }

    private JSONArray codes() {
        JSONArray result = new JSONArray();
        for (String line : sourceCodeValue.split("[,\\n\\r]+"))
            if (!line.trim().isEmpty()) result.put(line.trim());
        return result;
    }

    private void busy(String message) { setStatus(message); }

    private void issueCode() {
        busy("正在连接家庭云端…");
        work.execute(() -> {
            try {
                String code = CloudSyncClient.createJoinCode();
                host.runOnUiThread(() -> {
                    generatedCode = code;
                    showCode();
                    busy("加入码已生成；记下后可在新电视输入。再次生成会立即使旧码失效。");
                });
            } catch (Exception e) { showError("生成加入码", e); }
        });
    }

    private void joinFamily() {
        String code = joinCodeValue.trim();
        if (code.isEmpty()) { busy("请先输入加入码。"); return; }
        busy("正在验证加入码并读取设备列表…");
        work.execute(() -> {
            try {
                JSONObject joined = CloudSyncClient.redeemJoinCode(code);
                FamilyIdentity.get(host).join(joined.getString("familyId"), joined.getString("familySecret"), joined.optJSONArray("deviceIds"));
                CloudSyncClient.fetchOnHistory(host.getApplicationContext());
                host.runOnUiThread(() -> {
                    statusMessage = "已加入家庭，正在读取家庭进度。";
                    showHome();
                });
            } catch (Exception e) { showError("加入家庭", e); }
        });
    }

    private void previewMerge() {
        JSONArray source = codes();
        if (source.length() == 0) { busy("请输入至少一个旧家庭加入码。"); return; }
        String input = sourceCodeValue;
        cleanupReady = false;
        updateCloudSyncToggle();
        busy("正在读取旧家庭快照…");
        work.execute(() -> {
            try {
                JSONObject result = CloudSyncClient.mergeFamilies(FamilyIdentity.get(host).familyId(), FamilyIdentity.get(host).familySecret(), "preview", source, false);
                previewed = true;
                previewedCodes = input;
                copiedCodes = "";
                host.runOnUiThread(() -> {
                    updateMergeControls();
                    busy("预览：" + result.optInt("families") + " 个家庭、" + result.optInt("snapshots") + " 条设备快照、" + result.optInt("records") + " 条记录。当前家庭 ID 必须是参与家庭中最小的 ID。");
                });
            } catch (Exception e) { showError("预览合并", e); }
        });
    }

    private void copyMerge() {
        JSONArray source = codes();
        if (!previewed || source.length() == 0 || !previewedCodes.equals(sourceCodeValue)) {
            busy("请先预览当前输入的旧家庭加入码。"); return;
        }
        String input = sourceCodeValue;
        busy("正在复制合并快照…");
        work.execute(() -> {
            try {
                JSONObject result = CloudSyncClient.mergeFamilies(FamilyIdentity.get(host).familyId(), FamilyIdentity.get(host).familySecret(), "copy", source, false);
                JSONArray devices = result.optJSONArray("devices");
                if (devices != null) for (int i = 0; i < devices.length(); i++) FamilyIdentity.get(host).addPeer(devices.optString(i, ""));
                copiedCodes = input;
                CloudSyncClient.fetchOnHistory(host.getApplicationContext());
                host.runOnUiThread(() -> {
                    cleanupReady = true;
                    updateMergeControls();
                    busy("复制完成：" + result.optInt("copiedSnapshots") + " 条快照。请核对新家庭进度；确认无误后再清理旧家庭。");
                });
            } catch (Exception e) { showError("复制合并", e); }
        });
    }

    private void confirmCleanup() {
        if (copiedCodes.isEmpty() || !copiedCodes.equals(sourceCodeValue)) {
            busy("加入码与上次复制不一致，请重新预览并复制。"); return;
        }
        showCleanupConfirm();
    }

    private void cleanUp() {
        JSONArray source = codes();
        busy("正在清理旧家庭云端快照…");
        work.execute(() -> {
            try {
                JSONObject result = CloudSyncClient.mergeFamilies(FamilyIdentity.get(host).familyId(), FamilyIdentity.get(host).familySecret(), "cleanup", source, true);
                previewed = false;
                previewedCodes = "";
                copiedCodes = "";
                sourceCodeValue = "";
                host.runOnUiThread(() -> {
                    cleanupReady = false;
                    statusMessage = "清理完成：" + result.optInt("cleanedFamilies") + " 个旧家庭已删除并撤销凭据。";
                    showMerge();
                });
                CloudSyncClient.fetchOnHistory(host.getApplicationContext());
            } catch (Exception e) { showError("清理旧家庭", e); }
        });
    }

    @Override protected void onDetachedFromWindow() {
        work.shutdownNow();
        super.onDetachedFromWindow();
    }

    private void showError(String action, Exception error) {
        String kind = error.getMessage() == null ? error.getClass().getSimpleName() : error.getMessage();
        host.runOnUiThread(() -> busy(action + "失败：" + kind + "。检查网络、Worker 部署状态和加入码后重试。"));
    }

    private void updateCloudSyncToggle() {
        FamilyIdentity identity = FamilyIdentity.get(host);
        if (cloudSyncValue != null) cloudSyncValue.setText(identity.isCloudSyncEnabled() ? "已开启" : "已关闭");
        if (lanSyncValue != null) lanSyncValue.setText(identity.isLanSyncEnabled() ? "已开启" : "已关闭");
        updateMergeControls();
    }

    private void updateMergeControls() {
        boolean enabled = FamilyIdentity.get(host).isCloudSyncEnabled();
        if (mergePreview != null) mergePreview.setEnabled(enabled);
        if (mergeCopy != null) mergeCopy.setEnabled(enabled && previewed && previewedCodes.equals(sourceCodeValue));
        if (cleanup != null) cleanup.setEnabled(enabled && cleanupReady && copiedCodes.equals(sourceCodeValue));
    }
}
