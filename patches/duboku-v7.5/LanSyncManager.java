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
    private static volatile String sCurrentDeviceId = Build.MODEL + "_" + (Build.SERIAL != null ? Build.SERIAL : "tv");
    private static final Pattern EP_PATTERN = Pattern.compile("(\\d+)");
    
    private static final HandoffProgress sHandoff = new HandoffProgress();
    private static HandoffProgress.Record sPendingHandoff;
    private static String sPendingHandoffName;
    private static volatile String sLastSentName = null;
    private static volatile String sLastSentEpisode = null;
    private static volatile long sLastSentProgressMs = -1;
    private static volatile long sLastRequestSyncTime = 0;

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
            FamilyIdentity identity = FamilyIdentity.get(mContext);
            if ("FAMILY_DISCOVER".equals(action)) {
                try { sendUdpPacket(identity.offer(json.optString("nonce", "")).toString(), senderIp); }
                catch (Exception e) { Log.w(TAG, "Could not send family offer"); }
                return;
            }
            if ("FAMILY_OFFER".equals(action)) {
                if (identity.adopt(json)) CloudSyncClient.fetchKnownPeers(mContext);
                return;
            }
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

            if ((detailPageUrl != null && detailPageUrl.contains("example.com"))
                    || (videoPageUrl != null && videoPageUrl.contains("example.com"))) {
                Log.w(TAG, "Rejected dummy test packet with example.com for: " + name);
                return;
            }

            new Thread(new Runnable() {
                @Override
                public void run() {
                    synchronized (LanSyncManager.class) {
                        SQLiteDatabase db = null;
                        try {
                            db = mContext.openOrCreateDatabase("record_database", Context.MODE_PRIVATE, null);
                            if (db == null) return;

                            Cursor c = db.rawQuery("SELECT id, episode, progressInMillis, modifiedAt, durationInMillis, videoPageUrl, detailPageUrl, posterUrl FROM records WHERE name = ? OR (detailPageUrl != '' AND detailPageUrl = ?) ORDER BY modifiedAt DESC LIMIT 1",
                                    new String[]{name, detailPageUrl});
                            String existingId = null;
                            String existingEp = null;
                            long existingProg = 0;
                            long existingModAt = 0;
                            long existingDur = 0;
                            String existingVideo = null;
                            String existingDetail = null;
                            String existingPoster = null;
                            if (c != null) {
                                if (c.moveToFirst()) {
                                    existingId = c.getString(0);
                                    existingEp = c.getString(1);
                                    existingProg = c.getLong(2);
                                    existingModAt = c.getLong(3);
                                    existingDur = c.getLong(4);
                                    existingVideo = c.getString(5);
                                    existingDetail = c.getString(6);
                                    existingPoster = c.getString(7);
                                }
                                c.close();
                            }

                            // Determine priority:
                            // 1. If remote modified time is newer, it represents user's latest interaction
                            //    (progress forward, episode increment, or intentional rewatch of earlier episode).
                            // 2. Reject stale/out-of-order packets where remoteModifiedAt < existingModAt.
                            boolean accept = false;
                            if (existingId == null) {
                                accept = true;
                            } else {
                                if (remoteModifiedAt > existingModAt) {
                                    accept = true;
                                } else if (remoteModifiedAt == existingModAt) {
                                    // Equal timestamps: higher episode or higher progress wins
                                    int remoteEpNum = parseEpisodeNum(episode);
                                    int localEpNum = parseEpisodeNum(existingEp);
                                    if (remoteEpNum > localEpNum) {
                                        accept = true;
                                    } else if (remoteEpNum == localEpNum && progressInMillis > existingProg) {
                                        accept = true;
                                    }
                                }
                            }

                            if (!accept) {
                                Log.d(TAG, "Ignored progress for: " + name + " (remote: " + episode + " @" + (progressInMillis/1000) + "s [mod=" + remoteModifiedAt + "], local: " + existingEp + " @" + (existingProg/1000) + "s [mod=" + existingModAt + "])");
                                return;
                            }

                            // Preserve valid local URLs if incoming remote values are empty or invalid
                            String finalPoster = (posterUrl != null && (posterUrl.startsWith("http://") || posterUrl.startsWith("https://")))
                                    ? posterUrl : (existingPoster != null ? existingPoster : "");
                            String finalDetail = (detailPageUrl != null && !detailPageUrl.isEmpty() && !detailPageUrl.contains("example.com"))
                                    ? detailPageUrl : (existingDetail != null ? existingDetail : "");
                            String finalVideo = (videoPageUrl != null && !videoPageUrl.isEmpty() && !videoPageUrl.contains("example.com"))
                                    ? videoPageUrl : (existingVideo != null ? existingVideo : "");

                            String finalId = existingId != null ? existingId : ((id != null && !id.isEmpty()) ? id : null);
                            if (finalId == null || finalId.isEmpty()) finalId = name;

                            ContentValues cv = new ContentValues();
                            cv.put("id", finalId);
                            cv.put("name", name);
                            cv.put("episode", episode);
                            cv.put("progressInMillis", progressInMillis);
                            cv.put("durationInMillis", durationInMillis > 0 ? durationInMillis : existingDur);
                            cv.put("createdAt", System.currentTimeMillis());
                            cv.put("modifiedAt", remoteModifiedAt > 0 ? remoteModifiedAt : System.currentTimeMillis());
                            cv.put("videoPageUrl", finalVideo);
                            cv.put("detailPageUrl", finalDetail);
                            cv.put("posterUrl", finalPoster);
                            onRemoteProgress(name, remoteModifiedAt);
                            db.insertWithOnConflict("records", null, cv, SQLiteDatabase.CONFLICT_REPLACE);
                            sHandoff.offer(name, episode, progressInMillis, finalVideo, remoteModifiedAt);

                            // Close write connection first to ensure changes are flushed and locks released
                            // before triggering Room to re-query
                            try {
                                db.close();
                                db = null;
                            } catch (Exception ignored) {}

                            // Throttle UI recomposition: if same episode, only bump UI if integer percentage changed
                            boolean shouldBumpUi = true;
                            if (existingId != null && episode != null && episode.equals(existingEp)) {
                                long effDur = durationInMillis > 0 ? durationInMillis : existingDur;
                                if (effDur > 0) {
                                    int oldPct = (int) (existingProg * 100 / effDur);
                                    int newPct = (int) (progressInMillis * 100 / effDur);
                                    if (oldPct == newPct) {
                                        shouldBumpUi = false;
                                    }
                                }
                            }

                            if (shouldBumpUi) {
                                bumpSyncVersion();
                            }
                            Log.i(TAG, "Synced newer remote progress for: " + name + " " + episode + " @" + (progressInMillis/1000) + "s from " + fromDevice + " (bumpUi=" + shouldBumpUi + ")");
                        } catch (Exception e) {
                            Log.w(TAG, "Error writing sync record: " + e.getMessage());
                        } finally {
                            if (db != null) {
                                try { db.close(); } catch (Exception ignored) {}
                            }
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

    public static void requestSyncDebounced() {
        long now = System.currentTimeMillis();
        if (now - sLastRequestSyncTime < 3000) {
            return; // Debounce within 3 seconds
        }
        sLastRequestSyncTime = now;
        requestSyncFromLan();
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
                    json.put("modifiedAt", rec.g);
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

    public static boolean checkSyncOnPlay(Object playerObj) {
        try {
            if (playerObj == null || sActiveVideoAddress == null) return false;
            qa.f0 current = (qa.f0) sActiveVideoAddress;
            PlaybackSaveGuard.INSTANCE.initialize(getAppContext());
            PlaybackSaveGuard.INSTANCE.onUserPlay(current.b);
            androidx.media3.exoplayer.h0 player = (androidx.media3.exoplayer.h0) playerObj;
            HandoffProgress.Record remote = sHandoff.select(current.b, current.c, player.M());
            if (remote == null) return false;
            if (remote.episode.equals(current.c)) {
                player.s(5, remote.position);
                showToast("已同步到 " + (remote.position / 1000) + "秒");
                return false;
            }
            String episodeId = null;
            List episodes = current.n;
            if (episodes != null) {
                for (Object item : episodes) {
                    qa.s ep = (qa.s) item;
                    if (remote.episode.equals(ep.b)) { episodeId = ep.a; break; }
                }
            }
            if (sActiveRefreshCallback == null || episodeId == null || episodeId.isEmpty()) return false;
            sPendingHandoff = remote;
            sPendingHandoffName = current.b;
            try {
                ((rb.k) sActiveRefreshCallback).invoke(episodeId);
            } catch (Throwable t) {
                sPendingHandoff = null;
                sPendingHandoffName = null;
                throw t;
            }
            return true;
        } catch (Throwable t) {
            Log.w(TAG, "checkSyncOnPlay error: " + t.getMessage(), t);
            return false;
        }
    }

    public static void applyPendingHandoff(Object playerObj) {
        try {
            HandoffProgress.Record pending = sPendingHandoff;
            if (pending == null || sActiveVideoAddress == null) return;
            qa.f0 current = (qa.f0) sActiveVideoAddress;
            if (!pending.episode.equals(current.c) || !sPendingHandoffName.equals(current.b)) return;
            ((androidx.compose.foundation.layout.s0) playerObj).s(5, pending.position);
            sPendingHandoff = null;
            sPendingHandoffName = null;
            showToast("已同步到 " + pending.episode + " " + (pending.position / 1000) + "秒");
        } catch (Throwable t) {
            Log.w(TAG, "applyPendingHandoff error: " + t.getMessage(), t);
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
        LanSyncManager manager = getInstance(context);
        FamilyIdentity identity = FamilyIdentity.get(manager.mContext);
        identity.ensure();
        sCurrentDeviceId = identity.deviceId();
        CloudSyncClient.initialize(manager.mContext);
        CloudSyncClient.fetchOnStartup(manager.mContext);
        new Thread(new Runnable() {
            @Override public void run() {
                try {
                    JSONObject discover = new JSONObject().put("action", "FAMILY_DISCOVER").put("from", sCurrentDeviceId)
                            .put("nonce", java.util.UUID.randomUUID().toString());
                    sendUdpPacket(discover.toString(), null);
                } catch (Exception e) { Log.w(TAG, "Family discovery deferred: " + e.getClass().getSimpleName()); }
                try { Thread.sleep(2000L); } catch (InterruptedException ignored) { Thread.currentThread().interrupt(); }
                FamilyIdentity current = FamilyIdentity.get(manager.mContext);
                CloudSyncClient.registerFamily(current.familyId(), current.familySecret());
                try { sendUdpPacket(current.offer(java.util.UUID.randomUUID().toString()).toString(), null); }
                catch (Exception ignored) { }
            }
        }, "LanSync-Family").start();
        requestSyncFromLan();
    }

    public static void onActivityResume(Activity activity) {
        sActiveActivity = activity;
        requestSyncDebounced();
        CloudSyncClient.fetchOnResume(activity.getApplicationContext());
    }

    public static void onActivityPause(Activity activity) {
        CloudSyncClient.onActivityPause();
    }

    public static void onHistoryOpened() {
        requestSyncDebounced();
        Context context = getAppContext();
        if (context != null) CloudSyncClient.fetchOnHistory(context);
    }

    public static boolean skipUnchangedPlaybackSave(Object record) {
        pa.c rec = (pa.c) record;
        PlaybackSaveGuard.INSTANCE.initialize(getAppContext());
        boolean playing = false;
        try { playing = sActiveExoPlayer != null && ((androidx.compose.foundation.layout.s0) sActiveExoPlayer).m(); }
        catch (Throwable ignored) { }
        return PlaybackSaveGuard.INSTANCE.shouldSkip(rec.b, rec.c, rec.d, playing);
    }

    public static void onRemoteProgress(String name, long modified) {
        try {
            if (name != null && sActiveVideoAddress != null && name.equals(((qa.f0) sActiveVideoAddress).b)) {
                PlaybackSaveGuard.INSTANCE.initialize(getAppContext());
                PlaybackSaveGuard.INSTANCE.remoteUpdated(name, modified);
            }
        } catch (Throwable ignored) { }
    }

    public static void onPlaybackSaveCommitted(Object record) {
        pa.c rec = (pa.c) record;
        PlaybackSaveGuard.INSTANCE.initialize(getAppContext());
        if (!PlaybackSaveGuard.INSTANCE.committedIfCurrent(rec.b, rec.c, rec.d, rec.g)) return;
        broadcastProgress(record);
        CloudSyncClient.onCommittedSave();
    }

    /** Merges one validated peer snapshot in place; stale rows never trigger any delete. */
    public static boolean mergeCloudSnapshot(JSONObject snapshot, String peerId) {
        return CloudSnapshotMerger.merge(snapshot);
    }

    public static void offerCloudHandoff(String name, String episode, long position, String url, long modified) {
        onRemoteProgress(name, modified);
        sHandoff.offer(name, episode, position, url, modified);
    }

    /** Called only after the Room save coroutine has completed successfully. */
    public static void onRecordSaved() {
        CloudSyncClient.onCommittedSave();
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
                // 1. Invoke ((androidx.room.x) sRoomDb).g().b()
                java.lang.reflect.Method gMethod = sRoomDb.getClass().getMethod("g");
                Object tracker = gMethod.invoke(sRoomDb);
                if (tracker != null) {
                    java.lang.reflect.Method bMethod = tracker.getClass().getMethod("b");
                    bMethod.invoke(tracker);
                    Log.i(TAG, "Triggered Room invalidationTracker.refreshVersionsSync()");

                    // 2. Force Room ObservedTableVersions (androidx.room.p) to increment tableId 0 ("records").
                    // Writes via external SQLiteDatabase connections do NOT fire Room's connection-scoped TEMP triggers.
                    try {
                        java.lang.reflect.Field bField = tracker.getClass().getDeclaredField("b");
                        bField.setAccessible(true);
                        Object j0Tracker = bField.get(tracker);
                        if (j0Tracker != null) {
                            java.lang.reflect.Field iField = j0Tracker.getClass().getDeclaredField("i");
                            iField.setAccessible(true);
                            Object observedVersions = iField.get(j0Tracker);
                            if (observedVersions != null) {
                                java.lang.reflect.Method bVersionsMethod = observedVersions.getClass().getMethod("b", java.util.Set.class);
                                bVersionsMethod.invoke(observedVersions, java.util.Collections.singleton(Integer.valueOf(0)));
                                Log.i(TAG, "Triggered ObservedTableVersions.b for table 0 (records)");
                            }
                        }
                    } catch (Throwable t2) {
                        Log.w(TAG, "Failed to update ObservedTableVersions: " + t2.getMessage());
                    }
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
