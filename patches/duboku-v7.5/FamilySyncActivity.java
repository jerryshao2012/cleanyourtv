package com.supertws.dubokutv;

import android.app.Activity;
import android.app.AlertDialog;
import android.os.Bundle;
import android.view.Gravity;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.graphics.Color;
import android.graphics.Typeface;
import org.json.JSONArray;
import org.json.JSONObject;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/** Remote-friendly family credential and explicit family-merge screen. */
public final class FamilySyncActivity extends Activity {
    private final ExecutorService work = Executors.newSingleThreadExecutor();
    private TextView status, currentFamily, codeDisplay;
    private EditText joinCode, sourceCodes;
    private Button cleanup, cloudSyncToggle;
    private String previewedCodes = "";
    private String copiedCodes = "";
    private boolean previewed;

    @Override public void onCreate(Bundle state) {
        super.onCreate(state);
        CloudSyncClient.initialize(this);
        LinearLayout page = new LinearLayout(this); page.setOrientation(LinearLayout.VERTICAL); page.setPadding(36, 24, 36, 24); page.setBackgroundColor(Color.rgb(20, 20, 24));
        ScrollView scroll = new ScrollView(this); scroll.setFillViewport(true); scroll.addView(page);
        TextView title = text("家庭同步与合并", 30, true); page.addView(title);
        cloudSyncToggle = button("");
        updateCloudSyncToggle();
        cloudSyncToggle.setOnClickListener(v -> {
            FamilyIdentity id = FamilyIdentity.get(this);
            boolean next = !id.isCloudSyncEnabled();
            id.setCloudSyncEnabled(next);
            updateCloudSyncToggle();
            busy(next ? "已开启家庭云端同步" : "已关闭云端同步（仅保留局域网同步）");
        });
        page.addView(cloudSyncToggle);
        page.addView(text("在已加入的电视生成加入码；新电视可输入加入。多个家庭合并时，先复制核验，再明确确认清理旧家庭。", 18, false));
        currentFamily = text("当前家庭：" + FamilyIdentity.get(this).familyId(), 16, false); page.addView(currentFamily);
        Button issue = button("生成 / 更换加入码（旧码立即失效）"); page.addView(issue); issue.setOnClickListener(v -> confirmIssueCode());
        codeDisplay = text("加入码尚未生成", 25, true); page.addView(codeDisplay);

        page.addView(text("新电视加入当前家庭", 22, true));
        joinCode = input("输入加入码，例如 ABCD-EFGH-JKLM-NPQR", false); page.addView(joinCode);
        Button join = button("加入并同步家庭进度"); page.addView(join); join.setOnClickListener(v -> joinFamily());

        page.addView(text("合并其他 familyId 到当前家庭", 22, true));
        sourceCodes = input("每行一个旧家庭加入码", true); page.addView(sourceCodes);
        Button preview = button("预览旧家庭记录"); page.addView(preview); preview.setOnClickListener(v -> previewMerge());
        Button copy = button("复制记录到当前家庭"); page.addView(copy); copy.setOnClickListener(v -> copyMerge());
        cleanup = button("确认清理旧 familyId 和快照"); cleanup.setEnabled(false); page.addView(cleanup); cleanup.setOnClickListener(v -> confirmCleanup());
        status = text("就绪", 17, false); page.addView(status);
        setContentView(scroll);
        join.requestFocus();
    }

    private TextView text(String value, int size, boolean bold) {
        TextView view = new TextView(this); view.setText(value); view.setTextColor(Color.WHITE); view.setTextSize(size); view.setPadding(0, 12, 0, 12);
        if (bold) view.setTypeface(Typeface.DEFAULT, Typeface.BOLD);
        return view;
    }
    private Button button(String label) {
        Button button = new Button(this); button.setText(label); button.setFocusable(true); button.setFocusableInTouchMode(true); button.setTextSize(18);
        button.setTextColor(Color.WHITE);
        button.setBackgroundResource(getResources().getIdentifier("family_sync_button_focus", "drawable", getPackageName()));
        return button;
    }
    private EditText input(String hint, boolean multiline) {
        EditText input = new EditText(this); input.setSingleLine(!multiline); input.setHint(hint); input.setTextColor(Color.WHITE); input.setHintTextColor(Color.LTGRAY); input.setTextSize(18);
        if (multiline) { input.setMinLines(2); input.setGravity(Gravity.TOP | Gravity.START); }
        return input;
    }
    private JSONArray codes() {
        JSONArray result = new JSONArray();
        for (String line : sourceCodes.getText().toString().split("[,\\n\\r]+")) if (!line.trim().isEmpty()) result.put(line.trim());
        return result;
    }
    private void busy(String message) { status.setText(message); }
    private void confirmIssueCode() {
        new AlertDialog.Builder(this).setTitle("生成新的家庭加入码？")
                .setMessage("生成后，当前旧加入码会立即失效。确认要更换吗？")
                .setNegativeButton("取消", (d, w) -> { })
                .setPositiveButton("确认更换", (d, w) -> issueCode()).show();
    }
    private void issueCode() {
        busy("正在连接家庭云端…");
        work.execute(() -> { try { String code = CloudSyncClient.createJoinCode(); runOnUiThread(() -> { codeDisplay.setText(code); busy("加入码已生成；记下后可在新电视输入。再次生成会立即使旧码失效。"); }); }
            catch (Exception e) { showError("生成加入码", e); } });
    }
    private void joinFamily() {
        String code = joinCode.getText().toString().trim(); if (code.isEmpty()) { busy("请先输入加入码。"); return; }
        busy("正在验证加入码并读取设备列表…");
        work.execute(() -> { try {
            JSONObject joined = CloudSyncClient.redeemJoinCode(code);
            JSONArray devices = joined.optJSONArray("deviceIds");
            FamilyIdentity.get(this).join(joined.getString("familyId"), joined.getString("familySecret"), devices);
            currentFamily.post(() -> currentFamily.setText("当前家庭：" + FamilyIdentity.get(this).familyId()));
            CloudSyncClient.fetchOnHistory(this);
            runOnUiThread(() -> busy("已加入家庭，正在读取家庭进度。"));
        } catch (Exception e) { showError("加入家庭", e); } });
    }
    private void previewMerge() {
        JSONArray source = codes(); if (source.length() == 0) { busy("请输入至少一个旧家庭加入码。"); return; }
        String input = sourceCodes.getText().toString();
        busy("正在读取旧家庭快照…");
        work.execute(() -> { try {
            JSONObject result = CloudSyncClient.mergeFamilies(FamilyIdentity.get(this).familyId(), FamilyIdentity.get(this).familySecret(), "preview", source, false);
            previewed = true; previewedCodes = input; copiedCodes = "";
            runOnUiThread(() -> { cleanup.setEnabled(false); busy("预览：" + result.optInt("families") + " 个家庭、" + result.optInt("snapshots") + " 条设备快照、" + result.optInt("records") + " 条记录。当前家庭 ID 必须是参与家庭中最小的 ID。"); });
        } catch (Exception e) { showError("预览合并", e); } });
    }
    private void copyMerge() {
        JSONArray source = codes(); if (!previewed || source.length() == 0 || !previewedCodes.equals(sourceCodes.getText().toString())) { busy("请先预览当前输入的旧家庭加入码。"); return; }
        String input = sourceCodes.getText().toString(); busy("正在复制合并快照…");
        work.execute(() -> { try {
            JSONObject result = CloudSyncClient.mergeFamilies(FamilyIdentity.get(this).familyId(), FamilyIdentity.get(this).familySecret(), "copy", source, false);
            JSONArray devices = result.optJSONArray("devices"); if (devices != null) for (int i = 0; i < devices.length(); i++) FamilyIdentity.get(this).addPeer(devices.optString(i, ""));
            copiedCodes = input;
            CloudSyncClient.fetchOnHistory(this);
            runOnUiThread(() -> { cleanup.setEnabled(true); busy("复制完成：" + result.optInt("copiedSnapshots") + " 条快照。请核对新家庭进度；确认无误后再清理旧家庭。"); });
        } catch (Exception e) { showError("复制合并", e); } });
    }
    private void confirmCleanup() {
        if (copiedCodes.isEmpty() || !copiedCodes.equals(sourceCodes.getText().toString())) { busy("加入码与上次复制不一致，请重新预览并复制。"); return; }
        new AlertDialog.Builder(this).setTitle("永久清理旧家庭？")
                .setMessage("旧家庭快照将被删除，旧 familyId 凭据将失效。请确认新家庭已显示并可继续播放旧进度。")
                .setNegativeButton("取消", (d, w) -> { }).setPositiveButton("复制已核验，永久清理", (d, w) -> cleanUp()).show();
    }
    private void cleanUp() {
        JSONArray source = codes(); busy("正在清理旧家庭云端快照…");
        work.execute(() -> { try {
            JSONObject result = CloudSyncClient.mergeFamilies(FamilyIdentity.get(this).familyId(), FamilyIdentity.get(this).familySecret(), "cleanup", source, true);
            previewed = false; previewedCodes = ""; copiedCodes = ""; cleanup.post(() -> cleanup.setEnabled(false));
            CloudSyncClient.fetchOnHistory(this);
            runOnUiThread(() -> busy("清理完成：" + result.optInt("cleanedFamilies") + " 个旧家庭已删除并撤销凭据。"));
        } catch (Exception e) { showError("清理旧家庭", e); } });
    }
    private void showError(String action, Exception error) {
        String kind = error.getMessage() == null ? error.getClass().getSimpleName() : error.getMessage();
        runOnUiThread(() -> busy(action + "失败：" + kind + "。检查网络、Worker 部署状态和加入码后重试。"));
    }

    private void updateCloudSyncToggle() {
        boolean enabled = FamilyIdentity.get(this).isCloudSyncEnabled();
        cloudSyncToggle.setText("云端同步设置：[" + (enabled ? "已开启" : "已关闭") + "] （点击切换，关闭后仅局域网同步）");
    }
}
