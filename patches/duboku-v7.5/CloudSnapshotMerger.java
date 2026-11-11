package com.supertws.dubokutv;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import org.json.JSONArray;
import org.json.JSONObject;
import java.util.ArrayList;

/** Applies a validated cloud snapshot atomically with the LAN merge lock. */
final class CloudSnapshotMerger {
    static boolean merge(JSONObject snapshot) {
        Context context = LanSyncManager.getAppContext();
        JSONArray rows = snapshot.optJSONArray("records");
        if (context == null || rows == null) throw new IllegalStateException("Snapshot unavailable");
        boolean changed = false;
        ArrayList<Object[]> handoffs = new ArrayList<>();
        ArrayList<Object[]> versions = new ArrayList<>();
        String snapshotDevice = snapshot.optString("deviceId", "");
        String localDevice = FamilyIdentity.get(context).deviceId();
        synchronized (LanSyncManager.class) {
            SQLiteDatabase db = context.openOrCreateDatabase("record_database", Context.MODE_PRIVATE, null);
            try {
                db.beginTransaction();
                try {
                    for (int i = 0; i < rows.length(); i++) {
                        JSONObject row = rows.optJSONObject(i);
                        if (row == null) throw new IllegalArgumentException("Invalid record");
                        String name = row.optString("name", ""), detail = row.optString("detailPageUrl", "");
                        String video = row.optString("videoPageUrl", ""), episode = row.optString("episode", "");
                        long progress = row.optLong("progressInMillis", -1), duration = row.optLong("durationInMillis", -1);
                        long modified = row.optLong("modifiedAt", -1), created = row.optLong("createdAt", 0);
                        if (name.isEmpty() || progress < 0 || duration < 0 || modified < 0 || detail.contains("example.com") || video.contains("example.com")) continue;
                        SyncVersion remoteVersion = SyncVersionStore.fromJson(row.optJSONObject("clockVersion"));
                        if (remoteVersion == null) remoteVersion = new SyncVersion(modified, 0L, snapshotDevice);
                        Cursor c = db.rawQuery("SELECT id,episode,progressInMillis,modifiedAt,durationInMillis,videoPageUrl,detailPageUrl,posterUrl,createdAt FROM records WHERE name = ? OR (detailPageUrl != '' AND detailPageUrl = ?) ORDER BY modifiedAt DESC LIMIT 1", new String[]{name, detail});
                        String id = null, oldEpisode = null, oldVideo = null, oldDetail = null, oldPoster = null;
                        long oldProgress = 0, oldModified = 0, oldDuration = 0, oldCreated = 0;
                        try {
                            if (c.moveToFirst()) {
                                id = c.getString(0); oldEpisode = c.getString(1); oldProgress = c.getLong(2); oldModified = c.getLong(3);
                                oldDuration = c.getLong(4); oldVideo = c.getString(5); oldDetail = c.getString(6); oldPoster = c.getString(7); oldCreated = c.getLong(8);
                            }
                        } finally { c.close(); }
                        SyncVersion localVersion = SyncVersionStore.get(context, name,
                                oldDetail == null || oldDetail.isEmpty() ? detail : oldDetail, oldModified, localDevice);
                        int versionOrder = SyncVersion.compare(remoteVersion.utcMillis, remoteVersion.logicalCounter, remoteVersion.deviceId,
                                localVersion.utcMillis, localVersion.logicalCounter, localVersion.deviceId);
                        boolean accept = id == null || versionOrder > 0;
                        if (!accept) continue;
                        String poster = row.optString("posterUrl", "");
                        if (!poster.startsWith("http://") && !poster.startsWith("https://")) poster = oldPoster == null ? "" : oldPoster;
                        if (detail.isEmpty()) detail = oldDetail == null ? "" : oldDetail;
                        if (video.isEmpty()) video = oldVideo == null ? "" : oldVideo;
                        ContentValues values = new ContentValues();
                        String remoteId = row.optString("id", "");
                        values.put("id", !remoteId.isEmpty() ? remoteId : (id != null && !id.isEmpty() ? id : name));
                        values.put("name", name); values.put("episode", episode); values.put("progressInMillis", progress);
                        values.put("durationInMillis", duration > 0 ? duration : oldDuration);
                        long storedModified = Math.max(modified, remoteVersion.utcMillis);
                        values.put("createdAt", oldCreated > 0 ? oldCreated : (created > 0 ? created : System.currentTimeMillis()));
                        values.put("modifiedAt", storedModified); values.put("videoPageUrl", video); values.put("detailPageUrl", detail); values.put("posterUrl", poster);
                        LanSyncManager.onRemoteProgress(name, storedModified);
                        int updated = id == null ? 0 : db.updateWithOnConflict("records", values, "id = ?", new String[]{id}, SQLiteDatabase.CONFLICT_REPLACE);
                        if (updated == 0 && db.insertWithOnConflict("records", null, values, SQLiteDatabase.CONFLICT_REPLACE) < 0) throw new IllegalStateException("Record write failed");
                        handoffs.add(new Object[]{name, episode, progress, video, storedModified});
                        versions.add(new Object[]{name, detail, remoteVersion});
                        changed = true;
                    }
                    db.setTransactionSuccessful();
                } finally { db.endTransaction(); }
            } finally { db.close(); }
        }
        for (Object[] version : versions) SyncVersionStore.rememberRemote(context, (String) version[0],
                (String) version[1], (SyncVersion) version[2], localDevice);
        for (Object[] handoff : handoffs) LanSyncManager.offerCloudHandoff((String) handoff[0], (String) handoff[1], (Long) handoff[2], (String) handoff[3], (Long) handoff[4]);
        if (changed) LanSyncManager.bumpSyncVersion();
        return changed;
    }
}
