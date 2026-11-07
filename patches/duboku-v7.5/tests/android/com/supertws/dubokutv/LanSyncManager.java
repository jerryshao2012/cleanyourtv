package com.supertws.dubokutv;

import android.content.Context;

public final class LanSyncManager {
    static Context context;
    static int notifications;
    static int handoffs;
    public static Context getAppContext() { return context; }
    public static int parseEpisodeNum(String episode) {
        try { return Integer.parseInt(episode.replaceAll("[^0-9]", "")); }
        catch (Exception ignored) { return 0; }
    }
    public static void bumpSyncVersion() { notifications++; }
    public static void onRemoteProgress(String name, long modified) { }
    public static void offerCloudHandoff(String name, String episode, long position, String url, long modified) { handoffs++; }
}
