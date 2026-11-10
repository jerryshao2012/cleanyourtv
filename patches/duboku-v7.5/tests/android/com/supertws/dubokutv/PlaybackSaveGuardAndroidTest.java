package com.supertws.dubokutv;

import android.content.ContextWrapper;
import android.content.SharedPreferences;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public final class PlaybackSaveGuardAndroidTest {
    private static final class Prefs implements SharedPreferences, SharedPreferences.Editor {
        private final Map<String, Object> values = new HashMap<>();
        public Map<String, ?> getAll() { return values; }
        public String getString(String key, String fallback) { Object v = values.get(key); return v instanceof String ? (String) v : fallback; }
        public long getLong(String key, long fallback) { Object v = values.get(key); return v instanceof Long ? (Long) v : fallback; }
        public int getInt(String key, int fallback) { return fallback; }
        public float getFloat(String key, float fallback) { return fallback; }
        public boolean getBoolean(String key, boolean fallback) { return fallback; }
        public Set<String> getStringSet(String key, Set<String> fallback) { return fallback; }
        public boolean contains(String key) { return values.containsKey(key); }
        public Editor edit() { return this; }
        public void registerOnSharedPreferenceChangeListener(OnSharedPreferenceChangeListener listener) { }
        public void unregisterOnSharedPreferenceChangeListener(OnSharedPreferenceChangeListener listener) { }
        public Editor putString(String key, String value) { values.put(key, value); return this; }
        public Editor putLong(String key, long value) { values.put(key, value); return this; }
        public Editor putStringSet(String key, Set<String> value) { throw new UnsupportedOperationException(); }
        public Editor putInt(String key, int value) { throw new UnsupportedOperationException(); }
        public Editor putFloat(String key, float value) { throw new UnsupportedOperationException(); }
        public Editor putBoolean(String key, boolean value) { throw new UnsupportedOperationException(); }
        public Editor remove(String key) { values.remove(key); return this; }
        public Editor clear() { values.clear(); return this; }
        public boolean commit() { return true; }
        public void apply() { }
    }
    public static void main(String[] args) {
        final Prefs prefs = new Prefs();
        ContextWrapper context = new ContextWrapper(null) {
            @Override public SharedPreferences getSharedPreferences(String name, int mode) { return prefs; }
        };
        PlaybackSaveGuard first = new PlaybackSaveGuard();
        first.initialize(context);
        if (first.isDuplicate("show", "47", 12000)) throw new AssertionError();
        first.committed("show", "47", 12000);
        first.remoteUpdated("show", 200);
        PlaybackSaveGuard restarted = new PlaybackSaveGuard();
        restarted.initialize(context);
        if (!restarted.isDuplicate("show", "47", 12000)) throw new AssertionError("Paused position was not retained");
        if (restarted.isDuplicate("show", "28", 12000) || restarted.isDuplicate("show", "47", 12001)) throw new AssertionError("New playback was suppressed");
        if (!restarted.shouldSkip("show", "47", 13000, false)) throw new AssertionError("Paused stale write allowed");
        if (!restarted.isBlockedByRemote("show", 200)) throw new AssertionError("Remote version was not marked newer");
        if (restarted.isBlockedByRemote("show", 201)) throw new AssertionError("Newer local version stayed blocked");
        if (restarted.committedIfCurrent("show", "47", 13000, 100)) throw new AssertionError("Queued stale save accepted");
        if (!restarted.shouldSkip("show", "47", 13000, false)) throw new AssertionError("Stale completion cleared remote guard");
        if (restarted.shouldSkip("show", "47", 13000, true)) throw new AssertionError("Actual playback suppressed");
        restarted.onUserPlay("show");
        PlaybackSaveGuard resumed = new PlaybackSaveGuard();
        resumed.initialize(context);
        if (resumed.shouldSkip("show", "47", 13000, false)) throw new AssertionError("Play intent not retained");
        System.out.println("Playback save persistence tests passed");
    }
}
