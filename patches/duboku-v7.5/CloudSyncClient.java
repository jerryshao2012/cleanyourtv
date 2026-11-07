package com.supertws.dubokutv;

import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.SystemClock;
import android.util.Log;

import org.json.JSONObject;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/** Native HTTPS transport. Network errors never escape to playback callers. */
public final class CloudSyncClient {
    public static final String BASE_URL = "https://cleantv-r2-sync.jerry-shao.workers.dev";
    private static final String TAG = "R2Sync";
    private static final int MAX_BODY_BYTES = 65_536;
    private static final ScheduledExecutorService QUEUE = Executors.newSingleThreadScheduledExecutor();
    private static final Object LOCK = new Object();
    private static final CloudSyncGate READ_GATE = new CloudSyncGate();
    private static boolean readScheduled;
    private static int readRetryCount;
    private static long lastReadFinishedAt;
    private static volatile Context appContext;
    private static volatile ProgressSnapshot latest;
    private static volatile ProgressSnapshot retrySnapshot;
    private static volatile boolean draining;
    private static volatile boolean latestImmediate;
    private static volatile int retryCount;
    private static volatile long lastUploadAt;
    private static volatile long pauseUrgentUntilMs;
    private static long captureVersion;
    private static boolean capturePending;
    private static boolean captureImmediate;
    private static Runnable drainRunnable;
    private static ScheduledFuture<?> scheduledDrain;
    private static boolean scheduledRetryBackoff;

    private CloudSyncClient() { }

    public static void initialize(Context context) {
        if (context != null) appContext = context.getApplicationContext();
    }

    /** Queue a committed DB snapshot without doing SQLite work on the caller thread. */
    public static void onCommittedSave() {
        onCommittedSave(false);
    }

    /** Queue the last committed snapshot at app pause, then treat a completing final save as urgent. */
    public static void onActivityPause() {
        pauseUrgentUntilMs = SystemClock.elapsedRealtime() + 10_000L;
        onCommittedSave(true);
    }

    private static void onCommittedSave(boolean immediate) {
        Context context = appContext;
        if (context == null) context = LanSyncManager.getAppContext();
        if (context == null) return;
        initialize(context);
        if (!FamilyIdentity.get(context).isCloudSyncEnabled()) return;
        dirtyPrefs().edit().putBoolean("cloudDirty", true).apply();
        final Context captureContext = context.getApplicationContext();
        synchronized (LOCK) {
            captureVersion++;
            captureImmediate |= immediate || SystemClock.elapsedRealtime() < pauseUrgentUntilMs;
            if (capturePending) return;
            capturePending = true;
        }
        QUEUE.execute(new Runnable() {
            @Override public void run() {
                while (true) {
                    long version;
                    boolean urgent;
                    synchronized (LOCK) {
                        version = captureVersion;
                        urgent = captureImmediate;
                        captureImmediate = false;
                    }
                    captureCommittedSnapshot(captureContext, urgent);
                    synchronized (LOCK) {
                        if (captureVersion == version) {
                            capturePending = false;
                            return;
                        }
                    }
                }
            }
        });
    }

    private static void captureCommittedSnapshot(Context context, boolean immediate) {
        SQLiteDatabase db = null; Cursor cursor = null;
        try {
            FamilyIdentity identity = FamilyIdentity.get(context); identity.ensure();
            db = context.openOrCreateDatabase("record_database", Context.MODE_PRIVATE, null);
            cursor = db.rawQuery("SELECT id,name,episode,progressInMillis,durationInMillis,createdAt,modifiedAt,videoPageUrl,detailPageUrl,posterUrl FROM records ORDER BY modifiedAt DESC LIMIT 20", null);
            org.json.JSONArray records = new org.json.JSONArray();
            while (cursor.moveToNext()) {
                String id = boundedText(cursor.getString(0));
                String name = boundedText(cursor.getString(1));
                if (id.isEmpty() || name.isEmpty()) continue;
                JSONObject row = new JSONObject();
                row.put("id", id); row.put("name", name); row.put("episode", boundedText(cursor.getString(2)));
                row.put("progressInMillis", cursor.getLong(3)); row.put("durationInMillis", cursor.getLong(4));
                row.put("createdAt", cursor.getLong(5)); row.put("modifiedAt", cursor.getLong(6));
                row.put("videoPageUrl", ProgressSnapshot.normalizeUrl(cursor.getString(7)));
                row.put("detailPageUrl", ProgressSnapshot.normalizeUrl(cursor.getString(8)));
                row.put("posterUrl", ProgressSnapshot.normalizeUrl(cursor.getString(9)));
                records.put(row);
            }
            boolean pauseUrgent = SystemClock.elapsedRealtime() < pauseUrgentUntilMs;
            enqueueUpload(context, new ProgressSnapshot(identity.familyId(), identity.deviceId(), System.currentTimeMillis(), records), immediate || pauseUrgent);
        } catch (Exception e) { Log.w(TAG, "Committed snapshot unavailable: " + e.getClass().getSimpleName()); }
        finally { if (cursor != null) cursor.close(); if (db != null) db.close(); }
    }

    private static String boundedText(String value) {
        if (value == null) return "";
        if (value.length() <= 512) return value;
        int end = 512;
        if (Character.isHighSurrogate(value.charAt(end - 1))) end--;
        return value.substring(0, end);
    }

    /** Coalesces progress updates while preserving serial PUTs. Event saves bypass the window. */
    public static void enqueueUpload(Context context, ProgressSnapshot snapshot, boolean immediate) {
        initialize(context);
        if (context != null && !FamilyIdentity.get(context).isCloudSyncEnabled()) return;
        if (snapshot == null) return;
        synchronized (LOCK) {
            latest = snapshot;
            latestImmediate |= immediate;
            if (draining) {
                if (shouldPreemptDrain(immediate, scheduledRetryBackoff)
                        && scheduledDrain != null && scheduledDrain.cancel(false)) {
                    scheduledDrain = null;
                    scheduleDrainLocked(0L, false);
                }
                return;
            }
            draining = true;
            drainRunnable = new Runnable() {
                @Override public void run() {
                    synchronized (LOCK) {
                        scheduledDrain = null;
                        scheduledRetryBackoff = false;
                    }
                    long deferMs = 0;
                    try {
                        while (true) {
                            if (!READ_GATE.mayUpload()) break;
                            ProgressSnapshot current;
                            boolean urgent;
                            long sentVersion;
                            synchronized (LOCK) {
                                boolean retrying = retrySnapshot != null;
                                current = retrying ? retrySnapshot : latest;
                                if (retrying) retrySnapshot = null; else latest = null;
                                urgent = latestImmediate;
                                if (!retrying || latest == null) latestImmediate = false;
                                sentVersion = captureVersion;
                            }
                            if (current == null) break;
                            long wait = 30_000L - (SystemClock.elapsedRealtime() - lastUploadAt);
                            if (!urgent && wait > 0) {
                                boolean urgentArrived;
                                synchronized (LOCK) {
                                    urgentArrived = latestImmediate;
                                    if (urgentArrived) {
                                        if (latest != null) {
                                            current = latest;
                                            latest = null;
                                        }
                                        latestImmediate = false;
                                    } else if (retrySnapshot == null && latest == null) latest = current;
                                }
                                if (!urgentArrived) {
                                    deferMs = wait;
                                    break;
                                }
                                urgent = true;
                            }
                            String secret = FamilyIdentity.get(appContext).familySecret();
                            if (!registerFamily(current.familyId, secret)) {
                                dirtyPrefs().edit().putBoolean("cloudDirty", true).apply();
                                if (!dirtyPrefs().getBoolean("cloudAuthRejected", false)) {
                                    synchronized (LOCK) { retrySnapshot = current; }
                                    deferMs = nextBackoff();
                                }
                                break;
                            }
                            if (!READ_GATE.mayUpload()) {
                                synchronized (LOCK) { if (latest == null) latest = current; }
                                break;
                            }
                            if (put(current, secret)) {
                                Log.i(TAG, "Cloud upload succeeded");
                                retryCount = 0;
                                lastUploadAt = SystemClock.elapsedRealtime();
                                synchronized (LOCK) {
                                    if (sentVersion == captureVersion && !capturePending && latest == null && retrySnapshot == null && READ_GATE.mayUpload()) {
                                        dirtyPrefs().edit().putBoolean("cloudDirty", false).apply();
                                    }
                                }
                            } else {
                                dirtyPrefs().edit().putBoolean("cloudDirty", true).apply();
                                synchronized (LOCK) { retrySnapshot = current; }
                                deferMs = nextBackoff();
                                break;
                            }
                        }
                    } catch (Exception e) { Log.w(TAG, "Upload deferred: " + e.getClass().getSimpleName()); }
                    finally {
                        synchronized (LOCK) {
                            if (!READ_GATE.mayUpload()) {
                                draining = false;
                                drainRunnable = null;
                            } else if (retrySnapshot != null) {
                                draining = true;
                                scheduleDrainLocked(deferMs > 0 ? deferMs : nextBackoff(), true);
                            } else if (latest != null) {
                                draining = true;
                                if (READ_GATE.mayUpload()) scheduleDrainLocked(pendingDrainDelay(deferMs, latestImmediate), false);
                                else { draining = false; drainRunnable = null; }
                            } else {
                                draining = false;
                                drainRunnable = null;
                                scheduledDrain = null;
                                scheduledRetryBackoff = false;
                            }
                        }
                    }
                }
            };
            scheduleDrainLocked(0L, false);
        }
    }

    /** Must be called with LOCK held; it preserves one active drain runnable and one serial PUT lane. */
    private static void scheduleDrainLocked(long delayMs, boolean retryBackoff) {
        if (drainRunnable == null) return;
        scheduledRetryBackoff = retryBackoff;
        if (delayMs > 0) scheduledDrain = QUEUE.schedule(drainRunnable, delayMs, TimeUnit.MILLISECONDS);
        else {
            scheduledDrain = null;
            scheduledRetryBackoff = false;
            QUEUE.execute(drainRunnable);
        }
    }

    static long pendingDrainDelay(long deferMs, boolean immediate) {
        return immediate ? 0L : deferMs;
    }

    static boolean shouldPreemptDrain(boolean immediate, boolean retryBackoff) {
        return immediate && !retryBackoff;
    }

    private static long nextBackoff() {
        long[] delays = {60_000L, 120_000L, 300_000L, 900_000L};
        return delays[Math.min(retryCount++, delays.length - 1)];
    }

    /** Fetches each known peer once per resume; callers merge returned snapshots locally. */
    public static void fetchKnownPeers(Context context) {
        fetchKnownPeers(context, "peer");
    }
    public static void fetchOnStartup(Context context) { fetchKnownPeers(context, "startup"); }
    public static void fetchOnResume(Context context) { fetchKnownPeers(context, "resume"); }
    public static void fetchOnHistory(Context context) { fetchKnownPeers(context, "history"); }

    private static void fetchKnownPeers(Context context, String reason) {
        initialize(context);
        if (context != null && !FamilyIdentity.get(context).isCloudSyncEnabled()) return;
        Log.i(TAG, "Cloud read requested: " + reason);
        final long delay;
        synchronized (LOCK) {
            if (readScheduled && !"peer".equals(reason)) return;
            READ_GATE.requestRead();
            if (readScheduled) return;
            readScheduled = true;
            long throttle = lastReadFinishedAt == 0 ? 0 : Math.max(0, 2000L - (SystemClock.elapsedRealtime() - lastReadFinishedAt));
            delay = Math.max(throttle, "startup".equals(reason) ? 2000L : 0L);
        }
        QUEUE.schedule(new Runnable() {
            @Override public void run() {
                final long generation = READ_GATE.beginRead();
                final FamilyIdentity identity = FamilyIdentity.get(appContext); identity.ensure();
                String secret = identity.familySecret();
                boolean success = registerFamily(identity.familyId(), secret);
                boolean changed = false;
                int count = 0, failed = 0;
                java.util.Set<String> peers = identity.peers();
                if (success) for (String peer : peers) {
                    count++;
                    try {
                        JSONObject response = get(identity.familyId(), peer, secret);
                        if (identity.familyId().equals(response.optString("familyId"))
                                && peer.equals(response.optString("deviceId"))
                                && ProgressSnapshot.valid(response)) {
                            changed |= LanSyncManager.mergeCloudSnapshot(response, peer);
                        } else { failed++; }
                    }
                    catch (Exception e) { failed++; Log.w(TAG, "Peer read failed: " + e.getClass().getSimpleName()); }
                }
                success &= failed == 0;
                Log.i(TAG, "Cloud read result peers=" + peers.size() + " attempted=" + count + " failed=" + failed + " merged=" + changed + " success=" + success);
                READ_GATE.completeRead(generation, success);
                synchronized (LOCK) {
                    lastReadFinishedAt = SystemClock.elapsedRealtime();
                    if (success && READ_GATE.mayUpload()) {
                        readScheduled = false;
                        readRetryCount = 0;
                        latest = null;
                        retrySnapshot = null;
                        if (scheduledDrain != null) scheduledDrain.cancel(false);
                        scheduledDrain = null;
                        draining = false;
                        drainRunnable = null;
                        onCommittedSave(true);
                    } else {
                        long[] delays = {60_000L, 120_000L, 300_000L, 900_000L};
                        long delay = success || !READ_GATE.isCurrent(generation) ? 0L : delays[Math.min(readRetryCount++, delays.length - 1)];
                        QUEUE.schedule(this, delay, TimeUnit.MILLISECONDS);
                    }
                }
            }
        }, delay, TimeUnit.MILLISECONDS);
    }

    private static SharedPreferences dirtyPrefs() {
        return appContext.getSharedPreferences("r2_sync_identity", Context.MODE_PRIVATE);
    }

    public static boolean registerFamily(String familyId, String secret) {
        if (dirtyPrefs().getBoolean("cloudAuthRejected", false)) return false;
        try {
            JSONObject body = new JSONObject().put("familyId", familyId).put("familySecret", secret);
            int code = request("POST", "/v1/families", null, body.toString());
            if (code == 200 || code == 201) return true;
            if (code == 401 && System.currentTimeMillis() - dirtyPrefs().getLong("familyCreatedAt", 0) < 60_000L) {
                for (long delay : new long[]{1000, 2000, 5000, 10000}) {
                    SystemClock.sleep(delay);
                    code = request("POST", "/v1/families", null, body.toString());
                    if (code == 200 || code == 201) return true;
                }
            }
            if (code == 401) dirtyPrefs().edit().putBoolean("cloudAuthRejected", true).apply();
            Log.w(TAG, "Family registration HTTP " + code);
        } catch (Exception e) { Log.w(TAG, "Family registration deferred: " + e.getClass().getSimpleName()); }
        return false;
    }

    public static String createJoinCode() throws Exception {
        FamilyIdentity identity = FamilyIdentity.get(appContext);
        if (!registerFamily(identity.familyId(), identity.familySecret())) throw new IllegalStateException("family_unavailable");
        JSONObject result = postJson("/v1/families/" + enc(identity.familyId()) + "/join-code", identity.familySecret(), new JSONObject());
        String code = result.optString("joinCode", "");
        if (code.isEmpty()) throw new IllegalStateException("join_code_unavailable");
        return code;
    }

    public static JSONObject redeemJoinCode(String code) throws Exception {
        return postJson("/v1/families/join", null, new JSONObject().put("joinCode", code));
    }

    public static JSONObject mergeFamilies(String targetFamilyId, String targetSecret, String action,
                                             org.json.JSONArray sourceCodes, boolean confirmed) throws Exception {
        JSONObject body = new JSONObject().put("action", action).put("sourceCodes", sourceCodes);
        if ("cleanup".equals(action)) body.put("confirmed", confirmed);
        return postJson("/v1/families/" + enc(targetFamilyId) + "/merge", targetSecret, body);
    }

    private static JSONObject postJson(String path, String secret, JSONObject body) throws Exception {
        RequestResult result = requestDetailed("POST", path, secret, body.toString());
        if (result.code < 200 || result.code >= 300) {
            String error = safeWorkerErrorBody(result.errorBody);
            throw new IllegalStateException(new JSONObject(error).optString("error", "request_failed"));
        }
        return new JSONObject(result.errorBody);
    }

    public static JSONObject get(String familyId, String deviceId, String secret) throws Exception {
        int code = 0; HttpURLConnection c = null;
        try {
            c = open("GET", "/v1/sync/" + enc(familyId) + "/" + enc(deviceId), secret);
            code = c.getResponseCode();
            if (code != 200) {
                Log.w(TAG, "Cloud read HTTP " + code);
                throw new IllegalStateException("Cloud read failed");
            }
            return new JSONObject(read(c.getInputStream()));
        } finally { if (c != null) c.disconnect(); }
    }

    public static boolean put(ProgressSnapshot snapshot, String secret) {
        try {
            JSONObject body = snapshot.toJson();
            if (!fitPayload(body)) {
                Log.w(TAG, "Snapshot upload HTTP 413 body={\"error\":\"payload_too_large\"}");
                return false;
            }
            String payload = body.toString();
            RequestResult result = requestDetailed("PUT", "/v1/sync/" + enc(snapshot.familyId) + "/" + enc(snapshot.deviceId), secret, payload);
            if (result.code == 204) return true;
            Log.w(TAG, "Snapshot upload HTTP " + result.code + " body=" + safeWorkerErrorBody(result.errorBody));
        } catch (Exception e) { Log.w(TAG, "Snapshot upload deferred: " + e.getClass().getSimpleName()); }
        return false;
    }

    /** Remove only links, in least-useful-first order, if needed to fit the Worker body cap. */
    private static boolean fitPayload(JSONObject body) throws Exception {
        if (payloadBytes(body) <= MAX_BODY_BYTES) return true;
        org.json.JSONArray records = body.optJSONArray("records");
        if (records == null) return false;
        String[] fields = {"posterUrl", "detailPageUrl", "videoPageUrl"};
        for (String field : fields) {
            while (payloadBytes(body) > MAX_BODY_BYTES) {
                int longestIndex = -1;
                int longestLength = 0;
                for (int i = 0; i < records.length(); i++) {
                    JSONObject row = records.optJSONObject(i);
                    if (row == null) continue;
                    String value = row.optString(field, "");
                    if (value.length() > longestLength) {
                        longestLength = value.length();
                        longestIndex = i;
                    }
                }
                if (longestIndex < 0) break;
                records.getJSONObject(longestIndex).put(field, "");
            }
        }
        return payloadBytes(body) <= MAX_BODY_BYTES;
    }

    private static int payloadBytes(JSONObject body) throws Exception {
        return body.toString().getBytes("UTF-8").length;
    }

    private static int request(String method, String path, String secret, String body) throws Exception {
        return requestDetailed(method, path, secret, body).code;
    }

    private static final class RequestResult {
        final int code;
        final String errorBody;
        RequestResult(int code, String errorBody) { this.code = code; this.errorBody = errorBody; }
    }

    private static RequestResult requestDetailed(String method, String path, String secret, String body) throws Exception {
        HttpURLConnection c = null;
        try {
            c = open(method, path, secret);
            if (body != null) {
                c.setDoOutput(true);
                byte[] bytes = body.getBytes("UTF-8");
                OutputStream out = c.getOutputStream(); out.write(bytes); out.close();
            }
            int code = c.getResponseCode();
            InputStream response = code >= 400 ? c.getErrorStream() : c.getInputStream();
            String responseBody = "";
            if (response != null) {
                try { responseBody = read(response); } finally { response.close(); }
            }
            return new RequestResult(code, responseBody);
        } finally { if (c != null) c.disconnect(); }
    }

    private static String safeWorkerErrorBody(String raw) {
        if (raw == null || raw.length() > 128) return "{\"error\":\"unavailable\"}";
        try {
            String code = new JSONObject(raw).optString("error", "");
            switch (code) {
                case "invalid_request": case "invalid_json": case "invalid_snapshot":
                case "payload_too_large": case "unauthorized": case "invalid_path":
                case "family_conflict": case "rate_limited": case "internal_error":
                case "not_found": case "invalid_join_code":
                case "invalid_family_order": case "duplicate_source": case "source_snapshot_unavailable":
                case "source_changed_recopy_required": case "merge_copy_required":
                case "merge_copy_failed": case "merge_cleanup_failed": case "family_read_failed":
                case "join_code_unavailable": return "{\"error\":\"" + code + "\"}";
                default: return "{\"error\":\"unknown\"}";
            }
        } catch (Exception ignored) { return "{\"error\":\"unknown\"}"; }
    }

    private static HttpURLConnection open(String method, String path, String secret) throws Exception {
        URL url = new URL(BASE_URL + path);
        HttpURLConnection c = (HttpURLConnection) url.openConnection();
        c.setRequestMethod(method); c.setConnectTimeout(4000); c.setReadTimeout(5000);
        c.setRequestProperty("Accept", "application/json");
        if (secret != null) c.setRequestProperty("Authorization", "Bearer " + secret);
        if (method.equals("POST") || method.equals("PUT")) c.setRequestProperty("Content-Type", "application/json; charset=utf-8");
        return c;
    }

    private static String enc(String value) throws Exception { return URLEncoder.encode(value, "UTF-8"); }
    private static String read(InputStream in) throws Exception {
        ByteArrayOutputStream out = new ByteArrayOutputStream(); byte[] buf = new byte[4096]; int n;
        while ((n = in.read(buf)) != -1) out.write(buf, 0, n);
        in.close(); return out.toString("UTF-8");
    }
}
