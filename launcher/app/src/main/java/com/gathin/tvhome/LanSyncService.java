package com.gathin.tvhome;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.util.Log;

import org.json.JSONObject;

import java.io.File;
import java.io.FileOutputStream;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.nio.charset.StandardCharsets;

/**
 * Background daemon receiver in CleanTV to mirror playback progress across the home LAN.
 * Listens on dedicated UDP port 9877 so it never conflicts with port 9876.
 */
public final class LanSyncService {
    private static final String TAG = "CleanTV.LanSync";
    private static final int PORT = 9877;
    private static volatile boolean sRunning = false;
    private static Context sAppContext;

    public static synchronized void start(Context context) {
        if (sRunning) return;
        sAppContext = context.getApplicationContext();
        sRunning = true;

        Thread t = new Thread(new Runnable() {
            @Override
            public void run() {
                DatagramSocket socket = null;
                try {
                    socket = new DatagramSocket(PORT);
                    socket.setBroadcast(true);
                    byte[] buf = new byte[4096];
                    Log.i(TAG, "LanSync daemon listener active on dedicated UDP port " + PORT);
                    String selfId = Build.MODEL;

                    while (sRunning) {
                        DatagramPacket packet = new DatagramPacket(buf, buf.length);
                        socket.receive(packet);
                        String jsonStr = new String(packet.getData(), 0, packet.getLength(), StandardCharsets.UTF_8);
                        handlePacket(jsonStr, selfId);
                    }
                } catch (Exception e) {
                    Log.w(TAG, "LanSync daemon listener ended: " + e.getMessage());
                } finally {
                    if (socket != null && !socket.isClosed()) {
                        socket.close();
                    }
                    sRunning = false;
                }
            }
        });
        t.setName("CleanTV-LanSync");
        t.setDaemon(true);
        t.start();
    }

    private static void handlePacket(String json, String selfId) {
        try {
            JSONObject obj = new JSONObject(json);
            String from = obj.optString("from", "");
            if (from.contains(selfId)) return; // Ignore own broadcasts

            String name = obj.optString("name", "");
            if (name.isEmpty()) return;

            // 1. Save to launcher private SharedPreferences
            if (sAppContext != null) {
                SharedPreferences sp = sAppContext.getSharedPreferences("lan_sync_prefs", Context.MODE_PRIVATE);
                long modAt = obj.optLong("modifiedAt", 0);
                long savedModAt = sp.getLong("modifiedAt", 0);
                if (modAt > savedModAt) {
                    sp.edit()
                            .putLong("modifiedAt", modAt)
                            .putString("latest_json", json)
                            .apply();

                    // 2. Write to public external storage for Duboku and other TV apps to read
                    writeSharedFile(json);
                    Log.i(TAG, "Mirrored latest progress: " + name + " " + obj.optString("episode") + " from " + from);
                }
            }
        } catch (Exception e) {
            Log.w(TAG, "handlePacket error: " + e.getMessage());
        }
    }

    private static void writeSharedFile(String json) {
        try {
            File f = new File(android.os.Environment.getExternalStorageDirectory(), "lan_sync_record.json");
            try (FileOutputStream fos = new FileOutputStream(f)) {
                fos.write(json.getBytes(StandardCharsets.UTF_8));
            }
        } catch (Exception ignored) {}
    }
}
