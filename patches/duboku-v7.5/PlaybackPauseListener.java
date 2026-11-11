package com.supertws.dubokutv;

/** Player callbacks run on the player's application looper. */
final class PlaybackPauseListener implements androidx.media3.common.Player.Listener {
    private static Object registeredPlayer;
    private static PlaybackPauseListener registeredListener;
    private final Object player;
    private boolean wasPlaying;

    private PlaybackPauseListener(Object player, boolean wasPlaying) {
        this.player = player;
        this.wasPlaying = wasPlaying;
    }

    static synchronized void register(Object player) {
        if (player == null || player == registeredPlayer) return;
        try {
            androidx.media3.exoplayer.h0 exoPlayer = (androidx.media3.exoplayer.h0) player;
            PlaybackPauseListener listener = new PlaybackPauseListener(player, exoPlayer.m());
            exoPlayer.f0(listener);
            registeredPlayer = player;
            registeredListener = listener;
            android.util.Log.i("LanSyncManager", "Playback pause listener registered");
        } catch (Throwable e) {
            registeredPlayer = null;
            registeredListener = null;
            android.util.Log.w("LanSyncManager", "Playback pause listener unavailable", e);
        }
    }

    @Override public void onIsPlayingChanged(boolean isPlaying) {
        if (player != LanSyncManager.sActiveExoPlayer) return;
        boolean was = wasPlaying;
        wasPlaying = isPlaying;
        if (was && !isPlaying) LanSyncManager.onActivityPause(null);
    }
}
