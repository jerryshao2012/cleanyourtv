package com.supertws.dubokutv;

final class PlaybackEvent {
    private PlaybackEvent() { }

    static boolean startsNewEpisode(String previousName, String previousEpisode,
                                    String name, String episode) {
        return name != null && !name.isEmpty() && episode != null && !episode.isEmpty()
                && (!name.equals(previousName) || !episode.equals(previousEpisode));
    }

    static boolean nearEnd(long position, long duration) {
        if (position <= 0 || duration <= 0 || position > duration) return false;
        long remaining = duration - position;
        long threshold = Math.min(120_000L, Math.max(30_000L, duration / 20L));
        return remaining <= threshold && position >= duration * 0.95d;
    }

    static long finalPosition(long position, long duration) {
        return position < 0 || duration <= 0 ? -1L : Math.min(position, duration);
    }

    static boolean canFlushFinalPosition(int playerState) {
        return playerState == 3 || playerState == 4;
    }

    static boolean isDuplicateFinalFlush(String previousName, String previousEpisode,
                                         long previousPosition, long previousAt,
                                         String name, String episode, long position, long now) {
        return name != null && episode != null && name.equals(previousName)
                && episode.equals(previousEpisode) && position == previousPosition
                && now >= previousAt && now - previousAt < 2_000L;
    }
}
