package com.supertws.dubokutv;

import android.content.Context;
import android.content.SharedPreferences;

final class PlaybackSaveGuard {
    static final PlaybackSaveGuard INSTANCE = new PlaybackSaveGuard();
    private String name;
    private String episode;
    private long position;
    private String blockedName;
    private long blockedModified;
    private SharedPreferences prefs;
    private boolean initialized;

    synchronized void initialize(Context context) {
        if (initialized || context == null) return;
        prefs = context.getSharedPreferences("playback_save_guard", Context.MODE_PRIVATE);
        name = prefs.getString("name", null);
        episode = prefs.getString("episode", null);
        position = prefs.getLong("position", 0);
        blockedName = prefs.getString("blockedName", null);
        blockedModified = prefs.getLong("blockedModified", 0);
        initialized = true;
    }

    synchronized boolean isDuplicate(String name, String episode, long position) {
        return name != null && episode != null && name.equals(this.name)
                && episode.equals(this.episode) && position == this.position;
    }

    synchronized boolean shouldSkip(String name, String episode, long position, boolean playing) {
        return isDuplicate(name, episode, position) || (!playing && name != null && name.equals(blockedName));
    }

    synchronized void remoteUpdated(String name, long modified) {
        if (name == null || name.isEmpty()) return;
        if (name.equals(blockedName) && modified <= blockedModified) return;
        blockedName = name;
        blockedModified = modified;
        if (prefs != null) prefs.edit().putString("blockedName", name).putLong("blockedModified", modified).apply();
    }

    synchronized void onUserPlay(String name) {
        if (name != null && name.equals(blockedName)) {
            blockedName = null;
            blockedModified = 0;
            if (prefs != null) prefs.edit().remove("blockedName").remove("blockedModified").apply();
        }
    }

    synchronized void committed(String name, String episode, long position) {
        committedIfCurrent(name, episode, position, Long.MAX_VALUE);
    }

    synchronized boolean committedIfCurrent(String name, String episode, long position, long modified) {
        if (name != null && name.equals(blockedName) && modified <= blockedModified) return false;
        this.name = name;
        this.episode = episode;
        this.position = position;
        if (name != null && name.equals(blockedName)) { blockedName = null; blockedModified = 0; }
        if (prefs != null) prefs.edit().putString("name", name).putString("episode", episode).putLong("position", position).putString("blockedName", blockedName).putLong("blockedModified", blockedModified).apply();
        return true;
    }
}
