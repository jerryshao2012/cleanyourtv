package com.supertws.dubokutv;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Base64;
import org.json.JSONObject;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Collections;

/** Keeps per-record HLC metadata outside Room's fixed records schema. */
final class SyncVersionStore {
    private static final String PREFS = "r2_sync_clock";
    private static final String ROW = "row.";
    private static final String USED = "used.";

    private SyncVersionStore() { }

    static synchronized SyncVersion localCommit(Context context, String name, String detail,
                                                long modifiedAt, String deviceId) {
        SharedPreferences prefs = prefs(context);
        SyncVersion row = read(prefs, rowKey(name, detail));
        long rowUtc = row == null ? 0L : row.utcMillis;
        long recordUtc = Math.max(0L, modifiedAt);
        boolean rowWins = row != null && rowUtc >= recordUtc;
        SyncVersion next = SyncVersion.next(FamilyClock.now(context), prefs.getLong("clockUtc", 0L),
                prefs.getLong("clockCounter", 0L), Math.max(rowUtc, recordUtc),
                rowWins ? row.logicalCounter : 0L, deviceId);
        write(prefs, name, detail, next, deviceId);
        return next;
    }

    static synchronized SyncVersion get(Context context, String name, String detail,
                                         long modifiedAt, String deviceId) {
        if (context != null) {
            SharedPreferences prefs = prefs(context);
            SyncVersion version = read(prefs, rowKey(name, detail));
            if (version != null) {
                prefs.edit().putLong(USED + rowKey(name, detail), System.currentTimeMillis()).apply();
                return version;
            }
        }
        return new SyncVersion(Math.max(0L, modifiedAt), 0L, deviceId);
    }

    static synchronized void rememberRemote(Context context, String name, String detail,
                                             SyncVersion version, String localDeviceId) {
        if (context == null || version == null) return;
        SharedPreferences prefs = prefs(context);
        write(prefs, name, detail, version, localDeviceId);
        SyncVersion next = SyncVersion.next(FamilyClock.now(context), prefs.getLong("clockUtc", 0L),
                prefs.getLong("clockCounter", 0L), version.utcMillis, version.logicalCounter, localDeviceId);
        prefs.edit().putLong("clockUtc", next.utcMillis).putLong("clockCounter", next.logicalCounter).apply();
    }

    static JSONObject toJson(SyncVersion version) throws Exception {
        return new JSONObject().put("utcMillis", version.utcMillis)
                .put("logicalCounter", version.logicalCounter).put("deviceId", version.deviceId);
    }

    static SyncVersion fromJson(JSONObject json) {
        if (json == null || json.length() != 3) return null;
        Object utcValue = json.opt("utcMillis"), counterValue = json.opt("logicalCounter");
        if (!(utcValue instanceof Number) || !(counterValue instanceof Number)) return null;
        double utcNumber = ((Number) utcValue).doubleValue(), counterNumber = ((Number) counterValue).doubleValue();
        if (Double.isNaN(utcNumber) || Double.isInfinite(utcNumber)
                || Double.isNaN(counterNumber) || Double.isInfinite(counterNumber)
                || utcNumber != Math.rint(utcNumber) || counterNumber != Math.rint(counterNumber)
                || utcNumber > SyncVersion.MAX_COUNTER || counterNumber > SyncVersion.MAX_COUNTER) return null;
        long utc = json.optLong("utcMillis", -1L), counter = json.optLong("logicalCounter", -1L);
        String device = json.optString("deviceId", "");
        if (utc < 0 || counter < 0 || counter > SyncVersion.MAX_COUNTER || !FamilyIdentity.validId(device)) return null;
        return new SyncVersion(utc, counter, device);
    }

    private static void write(SharedPreferences prefs, String name, String detail,
                              SyncVersion version, String localDeviceId) {
        String key = rowKey(name, detail);
        SyncVersion global = SyncVersion.next(version.utcMillis, prefs.getLong("clockUtc", 0L),
                prefs.getLong("clockCounter", 0L), version.utcMillis, version.logicalCounter, localDeviceId);
        String encoded;
        try { encoded = toJson(version).toString(); }
        catch (Exception e) { throw new IllegalStateException("sync_version_unavailable", e); }
        prefs.edit().putString(ROW + key, encoded)
                .putLong(USED + key, System.currentTimeMillis())
                .putLong("clockUtc", global.utcMillis).putLong("clockCounter", global.logicalCounter).apply();
        prune(prefs);
    }

    private static SyncVersion read(SharedPreferences prefs, String key) {
        try { return fromJson(new JSONObject(prefs.getString(ROW + key, ""))); }
        catch (Exception ignored) { return null; }
    }

    private static void prune(SharedPreferences prefs) {
        ArrayList<String[]> rows = new ArrayList<>();
        for (String key : prefs.getAll().keySet()) if (key.startsWith(USED)) {
            rows.add(new String[]{key.substring(USED.length()), Long.toString(prefs.getLong(key, 0L))});
        }
        if (rows.size() <= 20) return;
        Collections.sort(rows, (a, b) -> Long.compare(Long.parseLong(a[1]), Long.parseLong(b[1])));
        SharedPreferences.Editor edit = prefs.edit();
        for (int i = 0; i < rows.size() - 20; i++) {
            edit.remove(USED + rows.get(i)[0]).remove(ROW + rows.get(i)[0]);
        }
        edit.apply();
    }

    private static String rowKey(String name, String detail) {
        try {
            byte[] digest = MessageDigest.getInstance("SHA-256")
                    .digest(((name == null ? "" : name) + "\u0000" + (detail == null ? "" : detail)).getBytes("UTF-8"));
            return Base64.encodeToString(digest, Base64.URL_SAFE | Base64.NO_WRAP | Base64.NO_PADDING);
        } catch (Exception e) { throw new IllegalStateException("sync_key_unavailable", e); }
    }

    private static SharedPreferences prefs(Context context) {
        return context.getApplicationContext().getSharedPreferences(PREFS, Context.MODE_PRIVATE);
    }
}
