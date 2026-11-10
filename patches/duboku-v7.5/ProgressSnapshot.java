package com.supertws.dubokutv;

import org.json.JSONArray;
import org.json.JSONObject;

import java.net.URL;
import java.util.Locale;

/** Versioned complete per-device snapshot sent to the sync Worker. */
public final class ProgressSnapshot {
    private static final int MAX_URL_LENGTH = 2048;
    public final String familyId;
    public final String deviceId;
    public final long updatedAt;
    public final JSONArray records;

    public ProgressSnapshot(String familyId, String deviceId, long updatedAt, JSONArray records) {
        this.familyId = familyId; this.deviceId = deviceId; this.updatedAt = updatedAt;
        this.records = records == null ? new JSONArray() : records;
    }

    public JSONObject toJson() throws Exception {
        JSONObject result = new JSONObject().put("schemaVersion", 2).put("familyId", familyId)
                .put("deviceId", deviceId).put("updatedAt", updatedAt).put("records", records);
        if (!valid(result)) throw new IllegalArgumentException("invalid snapshot");
        return result;
    }

    public static ProgressSnapshot fromJson(JSONObject json) {
        if (!valid(json)) throw new IllegalArgumentException("invalid snapshot");
        return new ProgressSnapshot(json.optString("familyId"), json.optString("deviceId"),
                json.optLong("updatedAt"), json.optJSONArray("records"));
    }

    public static boolean valid(JSONObject json) {
        int schema = json == null ? -1 : json.optInt("schemaVersion", -1);
        if (json == null || json.length() != 5 || (schema != 1 && schema != 2) || json.optLong("updatedAt", -1) < 0
                || !FamilyIdentity.validId(json.optString("familyId", ""))
                || !FamilyIdentity.validId(json.optString("deviceId", ""))) return false;
        JSONArray records = json.optJSONArray("records");
        if (records == null || records.length() > 20) return false;
        for (int i = 0; i < records.length(); i++) {
            JSONObject r = records.optJSONObject(i);
            if (r == null || r.length() != (schema == 2 ? 11 : 10)
                    || r.optString("id", "").isEmpty() || r.optString("name", "").isEmpty()
                    || r.optString("id", "").length() > 512 || r.optString("name", "").length() > 512
                    || r.optString("episode", "").length() > 512 || r.optLong("progressInMillis", -1) < 0
                    || r.optLong("durationInMillis", -1) < 0 || r.optLong("createdAt", -1) < 0
                    || r.optLong("modifiedAt", -1) < 0 || !validUrl(r.optString("videoPageUrl", ""))
                    || !validUrl(r.optString("detailPageUrl", "")) || !validUrl(r.optString("posterUrl", ""))) return false;
            if (schema == 2) {
                JSONObject version = r.optJSONObject("clockVersion");
                if (version == null || version.length() != 3 || SyncVersionStore.fromJson(version) == null) return false;
            }
        }
        return true;
    }

    /** Return a Worker-compatible absolute HTTP(S) link, or empty when the local value is unsafe. */
    public static String normalizeUrl(String value) {
        if (value == null) return "";
        String candidate = value.trim();
        if (candidate.isEmpty() || candidate.length() > MAX_URL_LENGTH
                || candidate.toLowerCase(Locale.US).contains("example.com")) return "";
        try {
            URL url = new URL(candidate);
            String protocol = url.getProtocol().toLowerCase(Locale.US);
            return ((protocol.equals("http") || protocol.equals("https"))
                    && url.getHost() != null && !url.getHost().isEmpty()) ? candidate : "";
        } catch (Exception ignored) { return ""; }
    }

    private static boolean validUrl(String value) {
        if (value == null || value.length() > MAX_URL_LENGTH) return false;
        return value.isEmpty() || value.equals(normalizeUrl(value));
    }

    static boolean isWorkerCompatibleUrl(String value) { return validUrl(value); }

    /** Tie breaker shared by local merge checks; it never removes rows on rejection. */
    public static boolean winsEqualTimestamp(int incomingEpisode, int localEpisode, long incomingProgress, long localProgress) {
        return incomingEpisode > localEpisode || (incomingEpisode == localEpisode && incomingProgress > localProgress);
    }
}
