package com.supertws.dubokutv;

public final class PlaybackEventTest {
    public static void main(String[] args) {
        assert PlaybackEvent.startsNewEpisode(null, null, "show", "1");
        assert !PlaybackEvent.startsNewEpisode("show", "1", "show", "1");
        assert PlaybackEvent.startsNewEpisode("show", "1", "show", "2");
        assert PlaybackEvent.startsNewEpisode("show", "1", "other", "1");
        assert !PlaybackEvent.startsNewEpisode("show", "1", "show", "");
        assert PlaybackEvent.nearEnd(9600, 10000);
        assert !PlaybackEvent.nearEnd(0, 30000);
        assert !PlaybackEvent.nearEnd(7000, 10000);
        assert !PlaybackEvent.nearEnd(1000, 0);
        assert PlaybackEvent.finalPosition(9500, 10000) == 9500;
        assert PlaybackEvent.finalPosition(12000, 10000) == 10000;
        assert PlaybackEvent.finalPosition(1, 0) == -1;
        System.out.println("Playback event tests passed");
    }
}
