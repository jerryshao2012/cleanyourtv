package com.supertws.dubokutv;

import android.app.Activity;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.widget.Toast;
import org.json.JSONObject;

import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.nio.charset.StandardCharsets;
import java.util.Enumeration;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class LanSyncManager {
    private static final String TAG = "LanSyncManager";
    private static final int PORT = 9876;
    private static volatile LanSyncManager sInstance;
    private final Context mContext;
    private boolean mReceiverRunning = false;
    private static final String sCurrentDeviceId = Build.MODEL + "_" + (Build.SERIAL != null ? Build.SERIAL : "tv");
    private static final Pattern EP_PATTERN = Pattern.compile("(\\d+)");
    
    private static volatile String sLastSentName = null;
    private static volatile String sLastSentEpisode = null;
    private static volatile long sLastSentProgressMs = -1;

    // Active player context tracking
    public static volatile Object sActiveExoPlayer = null;
    public static volatile Activity sActiveActivity = null;
    public static volatile Object sActiveVideoAddress = null;
    public static volatile Object sActiveRefreshCallback = null;

    private LanSyncManager(Context context) {
        mContext = context;
        startReceiver();
    }

    public static LanSyncManager getInstance(Context context) {
        if (sInstance == null) {
            synchronized (LanSyncManager.class) {
                if (sInstance == null && context != null) {
                    sInstance = new LanSyncManager(context.getApplicationContext());
                }
            }
        }
        return sInstance;
    }

    public static Context getAppContext() {
        return sInstance != null ? sInstance.mContext : null;
    }

    public static int parseEpisodeNum(String ep) {
        if (ep == null) return 0;
        Matcher m = EP_PATTERN.matcher(ep);
        if (m.find()) {
            try {
                return Integer.parseInt(m.group(1));
            } catch (Exception ignored) {}
        }
        return 0;
    }

    public synchronized void startReceiver() {
        if (mReceiverRunning) return;
        mReceiverRunning = true;
        Thread t = new Thread(new Runnable() {
            @Override
            public void run() {
                DatagramSocket socket = null;
                try {
                    socket = new DatagramSocket(PORT);
                    socket.setBroadcast(true);
                    byte[] buf = new byte[8192];
                    Log.i(TAG, "LanSync UDP Receiver running on port " + PORT + " [Device=" + sCurrentDeviceId + "]");
                    while (mReceiverRunning) {
                        DatagramPacket packet = new DatagramPacket(buf, buf.length);
                        socket.receive(packet);
                        String jsonStr = new String(packet.getData(), 0, packet.getLength(), StandardCharsets.UTF_8);
                        handleIncomingJson(jsonStr, packet.getAddress() != null ? packet.getAddress().getHostAddress() : null);
                    }
                } catch (Exception e) {
                    Log.w(TAG, "Receiver stopped: " + e.getMessage());
                } finally {
                    if (socket != null && !socket.isClosed()) {
                        socket.close();
                    }
                    mReceiverRunning = false;
                }
            }
        });
        t.setDaemon(true);
        t.setName("LanSync-Receiver");
        t.start();
    }

    private void handleIncomingJson(String jsonStr, String senderIp) {
        try {
            JSONObject json = new JSONObject(jsonStr);
            String fromDevice = json.optString("from", "");
            if (sCurrentDeviceId.equals(fromDevice)) {
                return; // Ignore own broadcast
            }

            String action = json.optString("action", "");
            if ("REQUEST_SYNC".equals(action)) {
                Log.i(TAG, "Received REQUEST_SYNC from " + fromDevice + " (" + senderIp + "), responding with all local records...");
                respondAllRecords(senderIp);
                return;
            }

            final String name = json.optString("name", "");
            if (name.isEmpty()) return;

            final String id = json.optString("id");
            final String episode = json.optString("episode");
            final long progressInMillis = json.optLong("progressInMillis");
            final long durationInMillis = json.optLong("durationInMillis");
            final long remoteModifiedAt = json.optLong("modifiedAt");
            final String videoPageUrl = json.optString("videoPageUrl");
            final String detailPageUrl = json.optString("detailPageUrl");
            final String posterUrl = json.optString("posterUrl");

            new Thread(new Runnable() {
                @Override
                public void run() {
                    SQLiteDatabase db = null;
                    try {
                        db = mContext.openOrCreateDatabase("record_database", Context.MODE_PRIVATE, null);
                        if (db == null) return;

                        Cursor c = db.rawQuery("SELECT id, episode, progressInMillis, modifiedAt FROM records WHERE name = ? OR detailPageUrl = ? ORDER BY modifiedAt DESC LIMIT 1",
                                new String[]{name, detailPageUrl});
                        String existingId = null;
                        String existingEp = null;
                        long existingProg = 0;
                        long existingModAt = 0;
                        if (c != null) {
                            if (c.moveToFirst()) {
                                existingId = c.getString(0);
                                existingEp = c.getString(1);
                                existingProg = c.getLong(2);
                                existingModAt = c.getLong(3);
                            }
                            c.close();
                        }

                        // Determine priority:
                        // Priority Rule: Episode number > Progress (if same episode) > Timestamp
                        boolean accept = false;
                        if (existingId == null) {
                            accept = true;
                        } else {
                            int remoteEpNum = parseEpisodeNum(episode);
                            int localEpNum = parseEpisodeNum(existingEp);
                            if (remoteEpNum > localEpNum) {
                                // Remote is a higher episode (e.g. Ep 41 > Ep 40)
                                accept = true;
                            } else if (remoteEpNum == localEpNum) {
                                // Same episode: prioritize progress or timestamp
                                if (progressInMillis > existingProg || remoteModifiedAt >= existingModAt) {
                                    accept = true;
                                }
                            } else {
                                // Remote is lower episode: only accept if remote timestamp is newer by 30s
                                if (remoteModifiedAt > existingModAt + 30000) {
                                    accept = true;
                                }
                            }
                        }

                        if (!accept) {
                            Log.d(TAG, "Ignored progress for: " + name + " (remote: " + episode + " @" + (progressInMillis/1000) + "s, local: " + existingEp + " @" + (existingProg/1000) + "s)");
                            return;
                        }

                        // Delete any duplicate records for this same drama
                        db.delete("records", "name = ? OR detailPageUrl = ?", new String[]{name, detailPageUrl});

                        ContentValues cv = new ContentValues();
                        cv.put("id", (existingId != null && !existingId.isEmpty()) ? existingId : id);
                        cv.put("name", name);
                        cv.put("episode", episode);
                        cv.put("progressInMillis", progressInMillis);
                        cv.put("durationInMillis", durationInMillis);
                        cv.put("createdAt", System.currentTimeMillis());
                        cv.put("modifiedAt", remoteModifiedAt > 0 ? remoteModifiedAt : System.currentTimeMillis());
                        cv.put("videoPageUrl", videoPageUrl);
                        cv.put("detailPageUrl", detailPageUrl);
                        cv.put("posterUrl", posterUrl);
                        db.insertWithOnConflict("records", null, cv, SQLiteDatabase.CONFLICT_REPLACE);
                        bumpSyncVersion();
                        Log.i(TAG, "Synced newer remote progress for: " + name + " " + episode + " @" + (progressInMillis/1000) + "s from " + fromDevice);
                    } catch (Exception e) {
                        Log.w(TAG, "Error writing sync record: " + e.getMessage());
                    } finally {
                        if (db != null) {
                            try { db.close(); } catch (Exception ignored) {}
                        }
                    }
                }
            }).start();
        } catch (Exception e) {
            Log.w(TAG, "Failed to parse incoming UDP json: " + e.getMessage());
        }
    }

    private void respondAllRecords(final String targetIp) {
        new Thread(new Runnable() {
            @Override
            public void run() {
                SQLiteDatabase db = null;
                try {
                    db = mContext.openOrCreateDatabase("record_database", Context.MODE_PRIVATE, null);
                    if (db == null) return;
                    Cursor c = db.rawQuery("SELECT id, name, episode, progressInMillis, durationInMillis, createdAt, modifiedAt, videoPageUrl, detailPageUrl, posterUrl FROM records ORDER BY modifiedAt DESC LIMIT 20", null);
                    if (c != null) {
                        while (c.moveToNext()) {
                            JSONObject json = new JSONObject();
                            json.put("from", sCurrentDeviceId);
                            json.put("id", c.getString(0));
                            json.put("name", c.getString(1));
                            json.put("episode", c.getString(2));
                            json.put("progressInMillis", c.getLong(3));
                            json.put("durationInMillis", c.getLong(4));
                            json.put("createdAt", c.getLong(5));
                            json.put("modifiedAt", c.getLong(6));
                            json.put("videoPageUrl", c.getString(7));
                            json.put("detailPageUrl", c.getString(8));
                            json.put("posterUrl", c.getString(9));

                            sendUdpPacket(json.toString(), targetIp);
                            Thread.sleep(30);
                        }
                        c.close();
                    }
                } catch (Exception e) {
                    Log.w(TAG, "Error in respondAllRecords: " + e.getMessage());
                } finally {
                    if (db != null) {
                        try { db.close(); } catch (Exception ignored) {}
                    }
                }
            }
        }).start();
    }

    public static void requestSyncFromLan() {
        new Thread(new Runnable() {
            @Override
            public void run() {
                try {
                    JSONObject json = new JSONObject();
                    json.put("from", sCurrentDeviceId);
                    json.put("action", "REQUEST_SYNC");
                    sendUdpPacket(json.toString(), null);
                    Log.i(TAG, "Sent REQUEST_SYNC broadcast to LAN");
                } catch (Exception e) {
                    Log.w(TAG, "Error sending REQUEST_SYNC: " + e.getMessage());
                }
            }
        }).start();
    }

    private static void sendUdpPacket(String jsonStr, String directIp) {
        DatagramSocket socket = null;
        try {
            byte[] data = jsonStr.getBytes(StandardCharsets.UTF_8);
            socket = new DatagramSocket();
            socket.setBroadcast(true);

            if (directIp != null && !directIp.isEmpty()) {
                InetAddress addr = InetAddress.getByName(directIp);
                socket.send(new DatagramPacket(data, data.length, addr, 9876));
                socket.send(new DatagramPacket(data, data.length, addr, 9877));
            }

            // Global broadcast
            InetAddress globalBrd = InetAddress.getByName("255.255.255.255");
            socket.send(new DatagramPacket(data, data.length, globalBrd, 9876));
            socket.send(new DatagramPacket(data, data.length, globalBrd, 9877));

            // Interface-specific broadcast addresses
            try {
                Enumeration<NetworkInterface> interfaces = NetworkInterface.getNetworkInterfaces();
                while (interfaces != null && interfaces.hasMoreElements()) {
                    NetworkInterface iface = interfaces.nextElement();
                    if (iface.isLoopback() || !iface.isUp()) continue;
                    for (java.net.InterfaceAddress addr : iface.getInterfaceAddresses()) {
                        InetAddress broadcast = addr.getBroadcast();
                        if (broadcast != null) {
                            socket.send(new DatagramPacket(data, data.length, broadcast, 9876));
                            socket.send(new DatagramPacket(data, data.length, broadcast, 9877));
                        }
                    }
                }
            } catch (Throwable ignored) {}
        } catch (Exception e) {
            Log.w(TAG, "sendUdpPacket error: " + e.getMessage());
        } finally {
            if (socket != null && !socket.isClosed()) {
                socket.close();
            }
        }
    }

    public static void broadcastProgress(final Object recordObj) {
        if (recordObj == null) return;
        new Thread(new Runnable() {
            @Override
            public void run() {
                try {
                    pa.c rec = (pa.c) recordObj;
                    String dramaName = rec.b;
                    String episodeName = rec.c;
                    long progressMs = rec.d;

                    // Only filter if BOTH episode AND progress within 2 seconds are identical
                    if (dramaName != null && dramaName.equals(sLastSentName) 
                            && episodeName != null && episodeName.equals(sLastSentEpisode) 
                            && Math.abs(progressMs - sLastSentProgressMs) < 2000) {
                        return; // video is paused at same position, avoid spamming
                    }
                    sLastSentName = dramaName;
                    sLastSentEpisode = episodeName;
                    sLastSentProgressMs = progressMs;

                    JSONObject json = new JSONObject();
                    json.put("from", sCurrentDeviceId);
                    json.put("id", rec.a);
                    json.put("name", rec.b);
                    json.put("episode", rec.c);
                    json.put("progressInMillis", rec.d);
                    json.put("durationInMillis", rec.e);
                    json.put("modifiedAt", System.currentTimeMillis());
                    json.put("videoPageUrl", rec.h);
                    json.put("detailPageUrl", rec.i);
                    json.put("posterUrl", rec.j);

                    sendUdpPacket(json.toString(), null);
                    Log.i(TAG, "Broadcasted progress update: " + dramaName + " " + episodeName + " @" + (progressMs/1000) + "s");
                } catch (Exception e) {
                    Log.w(TAG, "Failed to broadcast progress: " + e.getMessage());
                }
            }
        }).start();
    }

    public static void registerActivePlayer(Object exoPlayer, Activity activity, Object videoAddress, Object refreshCallback) {
        if (exoPlayer != null) sActiveExoPlayer = exoPlayer;
        if (activity != null) sActiveActivity = activity;
        if (videoAddress != null) sActiveVideoAddress = videoAddress;
        if (refreshCallback != null) sActiveRefreshCallback = refreshCallback;
        try {
            if (videoAddress != null) {
                qa.f0 va = (qa.f0) videoAddress;
                Log.i(TAG, "registerActivePlayer: drama=" + va.b + ", ep=" + va.c + ", callback=" + (sActiveRefreshCallback != null));
            }
        } catch (Throwable ignored) {}
    }

    public static void registerActiveVideo(Object videoAddress, Object refreshCallback) {
        if (videoAddress != null) sActiveVideoAddress = videoAddress;
        if (refreshCallback != null) sActiveRefreshCallback = refreshCallback;
        try {
            if (videoAddress != null) {
                qa.f0 va = (qa.f0) videoAddress;
                Log.i(TAG, "registerActiveVideo: drama=" + va.b + ", ep=" + va.c + ", callback=" + (sActiveRefreshCallback != null));
            }
        } catch (Throwable ignored) {}
    }

    public static void checkSyncOnPlay(Object playerObj) {
        try {
            Log.i(TAG, "checkSyncOnPlay called, sInstance=" + (sInstance != null) + ", sActiveVideoAddress=" + (sActiveVideoAddress != null));
            if (playerObj != null) sActiveExoPlayer = playerObj;
            if (sInstance == null || sActiveVideoAddress == null) return;
            qa.f0 curVa = (qa.f0) sActiveVideoAddress;
            String dramaName = curVa.b;
            String curEpisode = curVa.c;

            SQLiteDatabase db = sInstance.mContext.openOrCreateDatabase("record_database", Context.MODE_PRIVATE, null);
            if (db == null) return;

            Cursor c = db.rawQuery("SELECT episode, progressInMillis, videoPageUrl, modifiedAt FROM records WHERE name = ? ORDER BY modifiedAt DESC LIMIT 1",
                    new String[]{dramaName});
            String latestEp = null;
            long latestProg = 0;
            String latestVideoUrl = null;
            long latestMod = 0;
            if (c != null) {
                if (c.moveToFirst()) {
                    latestEp = c.getString(0);
                    latestProg = c.getLong(1);
                    latestVideoUrl = c.getString(2);
                    latestMod = c.getLong(3);
                }
                c.close();
            }
            db.close();

            if (latestEp == null) return;

            androidx.compose.foundation.layout.s0 player = (androidx.compose.foundation.layout.s0) (playerObj != null ? playerObj : sActiveExoPlayer);

            // Case 1: Same episode
            if (latestEp.equals(curEpisode)) {
                long currentPos = 0;
                try {
                    currentPos = ((androidx.media3.exoplayer.h0) player).R();
                } catch (Throwable ignored) {}

                if (Math.abs(latestProg - currentPos) > 5000) {
                    Log.i(TAG, "checkSyncOnPlay: seeking same episode " + curEpisode + " from " + (currentPos/1000) + "s to " + (latestProg/1000) + "s");
                    if (player != null) {
                        player.s(5, latestProg);
                    }
                    showToast("已同步到 " + (latestProg / 1000) + "秒");
                }
                return;
            }

            // Case 2: Different episode! Jump to the latest synced episode
            Log.i(TAG, "checkSyncOnPlay: newer episode detected! Current=" + curEpisode + ", Synced=" + latestEp);

            String targetVideoPageUrl = latestVideoUrl;
            if (targetVideoPageUrl == null || targetVideoPageUrl.isEmpty()) {
                List episodes = curVa.n;
                if (episodes != null) {
                    for (Object epObj : episodes) {
                        qa.s ep = (qa.s) epObj;
                        if (latestEp.equals(ep.b)) {
                            targetVideoPageUrl = ep.c;
                            break;
                        }
                    }
                }
            }

            if (sActiveRefreshCallback != null && targetVideoPageUrl != null && !targetVideoPageUrl.isEmpty()) {
                Log.i(TAG, "checkSyncOnPlay: invoking refreshCallback with " + targetVideoPageUrl);
                rb.k callback = (rb.k) sActiveRefreshCallback;
                callback.invoke(targetVideoPageUrl);
                showToast("已自动同步跳转至 " + latestEp);
            }
        } catch (Throwable t) {
            Log.w(TAG, "checkSyncOnPlay error: " + t.getMessage(), t);
        }
    }

    public static pa.c resolveLatestRecord(Object recordObj, Object movieDetailsObj) {
        pa.c currentRecord = (pa.c) recordObj;
        try {
            Context ctx = getAppContext();
            if (ctx == null) return currentRecord;

            String dramaName = null;
            String detailPageUrl = null;

            if (movieDetailsObj != null) {
                try {
                    qa.p md = (qa.p) movieDetailsObj;
                    dramaName = md.f;
                    detailPageUrl = md.b;
                } catch (Throwable ignored) {}
            }
            if (currentRecord != null) {
                if (dramaName == null || dramaName.isEmpty()) dramaName = currentRecord.b;
                if (detailPageUrl == null || detailPageUrl.isEmpty()) detailPageUrl = currentRecord.i;
            }

            if ((dramaName == null || dramaName.isEmpty()) && (detailPageUrl == null || detailPageUrl.isEmpty())) {
                return currentRecord;
            }

            SQLiteDatabase db = ctx.openOrCreateDatabase("record_database", Context.MODE_PRIVATE, null);
            if (db == null) return currentRecord;

            Cursor c = null;
            if (dramaName != null && !dramaName.isEmpty() && detailPageUrl != null && !detailPageUrl.isEmpty()) {
                c = db.rawQuery("SELECT id, name, episode, progressInMillis, durationInMillis, createdAt, modifiedAt, videoPageUrl, detailPageUrl, posterUrl FROM records WHERE name = ? OR detailPageUrl = ? ORDER BY modifiedAt DESC LIMIT 1",
                        new String[]{dramaName, detailPageUrl});
            } else if (dramaName != null && !dramaName.isEmpty()) {
                c = db.rawQuery("SELECT id, name, episode, progressInMillis, durationInMillis, createdAt, modifiedAt, videoPageUrl, detailPageUrl, posterUrl FROM records WHERE name = ? ORDER BY modifiedAt DESC LIMIT 1",
                        new String[]{dramaName});
            } else {
                c = db.rawQuery("SELECT id, name, episode, progressInMillis, durationInMillis, createdAt, modifiedAt, videoPageUrl, detailPageUrl, posterUrl FROM records WHERE detailPageUrl = ? ORDER BY modifiedAt DESC LIMIT 1",
                        new String[]{detailPageUrl});
            }

            if (c != null) {
                if (c.moveToFirst()) {
                    String id = c.getString(0);
                    String name = c.getString(1);
                    String episode = c.getString(2);
                    long progress = c.getLong(3);
                    long duration = c.getLong(4);
                    long created = c.getLong(5);
                    long modified = c.getLong(6);
                    String videoUrl = c.getString(7);
                    String detailUrl = c.getString(8);
                    String posterUrl = c.getString(9);
                    c.close();
                    db.close();

                    Log.i(TAG, "resolveLatestRecord for " + name + ": resolved episode=" + episode + ", progress=" + (progress/1000) + "s");
                    return new pa.c(
                        id != null ? id : "",
                        name != null ? name : "",
                        episode != null ? episode : "",
                        progress,
                        duration,
                        created,
                        modified,
                        videoUrl != null ? videoUrl : "",
                        detailUrl != null ? detailUrl : "",
                        posterUrl != null ? posterUrl : ""
                    );
                }
                c.close();
            }
            db.close();
        } catch (Throwable t) {
            Log.w(TAG, "resolveLatestRecord error: " + t.getMessage());
        }
        return currentRecord;
    }

    private static void showToast(final String msg) {
        try {
            if (sActiveActivity != null) {
                new Handler(Looper.getMainLooper()).post(new Runnable() {
                    @Override
                    public void run() {
                        try {
                            Toast.makeText(sActiveActivity, msg, Toast.LENGTH_SHORT).show();
                        } catch (Throwable ignored) {}
                    }
                });
            }
        } catch (Throwable ignored) {}
    }

    public static void onAppCreate(Context context) {
        getInstance(context);
        requestSyncFromLan();
    }

    public static void onActivityResume(Activity activity) {
        sActiveActivity = activity;
        requestSyncFromLan();
    }

    public static String formatButtonText(Object recordObj, Object movieDetailsObj, String fallbackText) {
        try {
            pa.c record = resolveLatestRecord(recordObj, movieDetailsObj);
            if (record != null && record.c != null && !record.c.isEmpty()) {
                int percent = 0;
                if (record.e > 0) {
                    percent = (int) Math.round((record.d * 100.0) / record.e);
                }
                String ep = record.c;
                if (!ep.contains("第") && !ep.contains("集")) {
                    ep = "第" + ep + "集";
                }
                return "继续播放 " + ep + " " + percent + "%";
            }
        } catch (Throwable ignored) {}
        return fallbackText;
    }


    public static final kotlinx.coroutines.flow.r2 sSyncVersionFlow = kotlinx.coroutines.flow.j.b(0);

    public static Object sRoomDb = null;

    public static void bumpSyncVersion() {
        if (sRoomDb != null) {
            try {
                // invoke ((androidx.room.x) sRoomDb).g().b()
                java.lang.reflect.Method gMethod = sRoomDb.getClass().getMethod("g");
                Object tracker = gMethod.invoke(sRoomDb);
                if (tracker != null) {
                    java.lang.reflect.Method bMethod = tracker.getClass().getMethod("b");
                    bMethod.invoke(tracker);
                    Log.i(TAG, "Triggered Room invalidationTracker.refreshVersionsSync()");
                }
            } catch (Throwable t) {
                Log.w(TAG, "Failed to refresh Room tracker: " + t.getMessage());
            }
        }
        if (sSyncVersionFlow != null) {
            try {
                int next = ((Integer) sSyncVersionFlow.getValue()) + 1;
                sSyncVersionFlow.j(next);
                Log.i(TAG, "bumpSyncVersion to " + next);
            } catch (Throwable ignored) {}
        }
    }

}
