package com.supertws.dubokutv;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;

public final class PlaybackWriteOrderAndroidTest {
    public static void main(String[] args) throws Exception {
        ByteArrayOutputStream bytes = new ByteArrayOutputStream();
        try (FileInputStream in = new FileInputStream(args[0])) {
            byte[] buffer = new byte[2048];
            for (int n; (n = in.read(buffer)) != -1;) bytes.write(buffer, 0, n);
        }
        String sql = bytes.toString("UTF-8");
        SQLiteDatabase db = SQLiteDatabase.create(null);
        try {
            db.execSQL("CREATE TABLE records(id TEXT PRIMARY KEY,name TEXT,episode TEXT,progressInMillis INTEGER,durationInMillis INTEGER,createdAt INTEGER,modifiedAt INTEGER,videoPageUrl TEXT,detailPageUrl TEXT,posterUrl TEXT)");
            db.execSQL(sql, new Object[]{"id", "show", "28", 2000, 10000, 1, 200, "", "detail", ""});
            db.execSQL(sql, new Object[]{"id", "show", "47", 1000, 10000, 1, 100, "", "detail", ""});
            try (Cursor c = db.rawQuery("SELECT episode,modifiedAt FROM records", null)) {
                if (!c.moveToFirst() || !"28".equals(c.getString(0)) || c.getLong(1) != 200) throw new AssertionError("Older write replaced remote progress");
            }
            db.execSQL(sql, new Object[]{"id", "show", "47", 1000, 10000, 1, 300, "", "detail", ""});
            try (Cursor c = db.rawQuery("SELECT episode,modifiedAt FROM records", null)) {
                if (!c.moveToFirst() || !"47".equals(c.getString(0)) || c.getLong(1) != 300) throw new AssertionError("New playback was not saved");
            }
            System.out.println("Playback write ordering tests passed");
        } finally { db.close(); }
    }
}
