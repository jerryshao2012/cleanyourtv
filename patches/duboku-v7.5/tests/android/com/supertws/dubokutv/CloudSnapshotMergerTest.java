package com.supertws.dubokutv;

import android.content.ContextWrapper;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import org.json.JSONArray;
import org.json.JSONObject;
import java.io.File;

public final class CloudSnapshotMergerTest {
    private static final String PATH = "/data/local/tmp/cleantv-cloud-merge-test.db";
    private static JSONObject row(String id, String episode, long modified) throws Exception {
        return new JSONObject().put("id", id).put("name", "isolated-test").put("episode", episode)
                .put("progressInMillis", 1000).put("durationInMillis", 10000)
                .put("createdAt", 100).put("modifiedAt", modified)
                .put("videoPageUrl", "").put("detailPageUrl", "").put("posterUrl", "");
    }
    private static JSONObject snapshot(JSONArray rows) throws Exception { return new JSONObject().put("records", rows); }
    private static String episode() {
        SQLiteDatabase db = SQLiteDatabase.openOrCreateDatabase(PATH, null);
        try (Cursor c = db.rawQuery("SELECT episode FROM records WHERE name = ?", new String[]{"isolated-test"})) {
            return c.moveToFirst() ? c.getString(0) : "";
        } finally { db.close(); }
    }
    private static void check(boolean condition) { if (!condition) throw new AssertionError(); }
    public static void main(String[] args) throws Exception {
        new File(PATH).delete();
        SQLiteDatabase db = SQLiteDatabase.openOrCreateDatabase(PATH, null);
        db.execSQL("CREATE TABLE records(id TEXT PRIMARY KEY NOT NULL,name TEXT NOT NULL,episode TEXT NOT NULL,progressInMillis INTEGER NOT NULL,durationInMillis INTEGER NOT NULL,createdAt INTEGER NOT NULL,modifiedAt INTEGER NOT NULL,videoPageUrl TEXT NOT NULL,detailPageUrl TEXT NOT NULL,posterUrl TEXT NOT NULL)");
        db.close();
        LanSyncManager.context = new ContextWrapper(null) {
            @Override public SQLiteDatabase openOrCreateDatabase(String name, int mode, SQLiteDatabase.CursorFactory factory) {
                return SQLiteDatabase.openOrCreateDatabase(PATH, null);
            }
        };
        try {
            check(CloudSnapshotMerger.merge(snapshot(new JSONArray().put(row("test-id", "第5集", 200)))));
            check("第5集".equals(episode()) && LanSyncManager.handoffs == 1 && LanSyncManager.notifications == 1);
            check(!CloudSnapshotMerger.merge(snapshot(new JSONArray().put(row("test-id", "第6集", 100)))));
            check("第5集".equals(episode()));
            check(CloudSnapshotMerger.merge(snapshot(new JSONArray().put(row("test-id", "第4集", 300)))));
            check("第4集".equals(episode()));
            int handoffs = LanSyncManager.handoffs;
            try {
                CloudSnapshotMerger.merge(snapshot(new JSONArray().put(row("test-id", "第7集", 400)).put(JSONObject.NULL)));
                throw new AssertionError("Invalid record accepted");
            } catch (IllegalArgumentException expected) { }
            check("第4集".equals(episode()) && LanSyncManager.handoffs == handoffs);
            System.out.println("Cloud snapshot merge tests passed");
        } finally { new File(PATH).delete(); }
    }
}
