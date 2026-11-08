package com.supertws.dubokutv;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.ContextWrapper;
import android.graphics.Color;
import android.graphics.Typeface;
import android.view.Gravity;
import android.view.View;
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
    private Button cleanup;
    private LinearLayout cloudSyncToggle, lanSyncToggle;
    private String previewedCodes = "", copiedCodes = "";
    private boolean previewed;
    private boolean cleanupReady;

    public FamilySyncPanel(Context context) {
        super(context);
        Context current = context;
        while (!(current instanceof Activity) && current instanceof ContextWrapper) current = ((ContextWrapper) current).getBaseContext();
        if (!(current instanceof Activity)) throw new IllegalArgumentException("Family panel requires an Activity context");
        host = (Activity) current;
        CloudSyncClient.initialize(host);
        setFillViewport(true);
        setBackgroundColor(Color.TRANSPARENT);
        page = new LinearLayout(context);
        page.setOrientation(LinearLayout.VERTICAL);
        page.setPadding(144, 20, 144, 20);
        addView(page);

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
            if (next) CloudSyncClient.fetchOnHistory(host);
            busy(next ? "已开启家庭云端同步" : "已关闭云端同步（仅保留局域网同步）");
        });
        lanSyncToggle = syncToggleRow("局域网络同步", false);
        lanSyncToggle.setOnClickListener(v -> {
            FamilyIdentity id = FamilyIdentity.get(host);
            boolean next = !id.isLanSyncEnabled();
            id.setLanSyncEnabled(next);
            updateCloudSyncToggle();
            busy(next ? "已开启局域网络同步" : "已关闭局域网络同步（仅作为本地播放器）");
        });
        page.addView(lanSyncToggle, new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        page.addView(text("管理家庭加入码、加入其他电视，或安全合并旧家庭。", 16, false));
        currentFamily = text("当前家庭：" + FamilyIdentity.get(host).familyId(), 15, false);
        page.addView(currentFamily);

        Button issue = button("生成 / 更换加入码（旧码立即失效）");
        page.addView(issue);
        issue.setOnClickListener(v -> confirmIssueCode());
        codeDisplay = text("加入码尚未生成", 22, true);
        page.addView(codeDisplay);

        page.addView(text("新电视加入当前家庭", 20, true));
        joinCode = input("输入加入码，例如 ABCD-EFGH-JKLM-NPQR", false);
        page.addView(joinCode);
        Button join = button("加入并同步家庭进度");
        page.addView(join);
        join.setOnClickListener(v -> joinFamily());

        page.addView(text("合并其他 familyId 到当前家庭", 20, true));
        sourceCodes = input("每行一个旧家庭加入码", true);
        page.addView(sourceCodes);
        Button preview = button("预览旧家庭记录");
        page.addView(preview);
        preview.setOnClickListener(v -> previewMerge());
        Button copy = button("复制记录到当前家庭");
        page.addView(copy);
        copy.setOnClickListener(v -> copyMerge());
        cleanup = button("确认清理旧 familyId 和快照");
        cleanup.setEnabled(false);
        page.addView(cleanup);
        cleanup.setOnClickListener(v -> confirmCleanup());
        status = text("就绪", 16, false);
        page.addView(status);
        updateCloudSyncToggle();
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

    private JSONArray codes() {
        JSONArray result = new JSONArray();
        for (String line : sourceCodes.getText().toString().split("[,\\n\\r]+"))
            if (!line.trim().isEmpty()) result.put(line.trim());
        return result;
    }

    private void busy(String message) { status.setText(message); }

    private void confirmIssueCode() {
        new AlertDialog.Builder(host).setTitle("生成新的家庭加入码？")
                .setMessage("生成后，当前旧加入码会立即失效。确认要更换吗？")
                .setNegativeButton("取消", (d, w) -> { })
                .setPositiveButton("确认更换", (d, w) -> issueCode()).show();
    }

    private void issueCode() {
        busy("正在连接家庭云端…");
        work.execute(() -> {
            try {
                String code = CloudSyncClient.createJoinCode();
                host.runOnUiThread(() -> {
                    codeDisplay.setText(code);
                    busy("加入码已生成；记下后可在新电视输入。再次生成会立即使旧码失效。");
                });
            } catch (Exception e) { showError("生成加入码", e); }
        });
    }

    private void joinFamily() {
        String code = joinCode.getText().toString().trim();
        if (code.isEmpty()) { busy("请先输入加入码。"); return; }
        busy("正在验证加入码并读取设备列表…");
        work.execute(() -> {
            try {
                JSONObject joined = CloudSyncClient.redeemJoinCode(code);
                FamilyIdentity.get(host).join(joined.getString("familyId"), joined.getString("familySecret"), joined.optJSONArray("deviceIds"));
                currentFamily.post(() -> currentFamily.setText("当前家庭：" + FamilyIdentity.get(host).familyId()));
                CloudSyncClient.fetchOnHistory(host);
                host.runOnUiThread(() -> busy("已加入家庭，正在读取家庭进度。"));
            } catch (Exception e) { showError("加入家庭", e); }
        });
    }

    private void previewMerge() {
        JSONArray source = codes();
        if (source.length() == 0) { busy("请输入至少一个旧家庭加入码。"); return; }
        String input = sourceCodes.getText().toString();
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
                    updateCloudSyncToggle();
                    busy("预览：" + result.optInt("families") + " 个家庭、" + result.optInt("snapshots") + " 条设备快照、" + result.optInt("records") + " 条记录。当前家庭 ID 必须是参与家庭中最小的 ID。");
                });
            } catch (Exception e) { showError("预览合并", e); }
        });
    }

    private void copyMerge() {
        JSONArray source = codes();
        if (!previewed || source.length() == 0 || !previewedCodes.equals(sourceCodes.getText().toString())) {
            busy("请先预览当前输入的旧家庭加入码。"); return;
        }
        String input = sourceCodes.getText().toString();
        busy("正在复制合并快照…");
        work.execute(() -> {
            try {
                JSONObject result = CloudSyncClient.mergeFamilies(FamilyIdentity.get(host).familyId(), FamilyIdentity.get(host).familySecret(), "copy", source, false);
                JSONArray devices = result.optJSONArray("devices");
                if (devices != null) for (int i = 0; i < devices.length(); i++) FamilyIdentity.get(host).addPeer(devices.optString(i, ""));
                copiedCodes = input;
                CloudSyncClient.fetchOnHistory(host);
                host.runOnUiThread(() -> {
                    cleanupReady = true;
                    updateCloudSyncToggle();
                    busy("复制完成：" + result.optInt("copiedSnapshots") + " 条快照。请核对新家庭进度；确认无误后再清理旧家庭。");
                });
            } catch (Exception e) { showError("复制合并", e); }
        });
    }

    private void confirmCleanup() {
        if (copiedCodes.isEmpty() || !copiedCodes.equals(sourceCodes.getText().toString())) {
            busy("加入码与上次复制不一致，请重新预览并复制。"); return;
        }
        new AlertDialog.Builder(host).setTitle("永久清理旧家庭？")
                .setMessage("旧家庭快照将被删除，旧 familyId 凭据将失效。请确认新家庭已显示并可继续播放旧进度。")
                .setNegativeButton("取消", (d, w) -> { })
                .setPositiveButton("复制已核验，永久清理", (d, w) -> cleanUp()).show();
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
                host.runOnUiThread(() -> { cleanupReady = false; updateCloudSyncToggle(); });
                CloudSyncClient.fetchOnHistory(host);
                host.runOnUiThread(() -> busy("清理完成：" + result.optInt("cleanedFamilies") + " 个旧家庭已删除并撤销凭据。"));
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
        boolean enabled = identity.isCloudSyncEnabled();
        cloudSyncValue.setText(enabled ? "已开启" : "已关闭");
        lanSyncValue.setText(identity.isLanSyncEnabled() ? "已开启" : "已关闭");
        for (int i = 0; i < page.getChildCount(); i++) {
            View child = page.getChildAt(i);
            if (child == cloudSyncToggle || child == lanSyncToggle) continue;
            if (child instanceof Button) child.setEnabled(enabled && (child != cleanup || cleanupReady));
            else if (child instanceof EditText) child.setEnabled(enabled);
        }
    }
}
