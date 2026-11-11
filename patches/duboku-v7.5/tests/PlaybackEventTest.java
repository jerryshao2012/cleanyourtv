package com.supertws.dubokutv;

public final class PlaybackEventTest {
    public static void main(String[] args) {
        assert PlaybackEvent.startsNewEpisode(null, null, "show", "1");
        assert !PlaybackEvent.startsNewEpisode("show", "1", "show", "1");
        assert PlaybackEvent.startsNewEpisode("show", "1", "show", "2");
        assert PlaybackEvent.startsNewEpisode("show", "1", "other", "1");
        assert !PlaybackEvent.startsNewEpisode("show", "1", "show", "");
        assert PlaybackEvent.nearEnd(9600, 10000);
        assert PlaybackEvent.nearEnd(9500, 10000); // 95% boundary for short clips
        assert !PlaybackEvent.nearEnd(9499, 10000);
        assert PlaybackEvent.nearEnd(580000, 600000); // 30s minimum threshold
        assert PlaybackEvent.nearEnd(3880000, 4000000); // 120s maximum threshold
        assert !PlaybackEvent.nearEnd(3879999, 4000000);
        assert !PlaybackEvent.nearEnd(0, 30000);
        assert !PlaybackEvent.nearEnd(7000, 10000);
        assert !PlaybackEvent.nearEnd(1000, 0);
        assert PlaybackEvent.finalPosition(9500, 10000) == 9500;
        assert PlaybackEvent.finalPosition(12000, 10000) == 10000;
        assert PlaybackEvent.finalPosition(1, 0) == -1;
        assert !PlaybackEvent.canFlushFinalPosition(1);
        assert !PlaybackEvent.canFlushFinalPosition(2);
        assert PlaybackEvent.canFlushFinalPosition(3);
        assert PlaybackEvent.canFlushFinalPosition(4);
        assert PlaybackEvent.isDuplicateFinalFlush("show", "5", 1988000, 1000, "show", "5", 1988000, 2500);
        assert !PlaybackEvent.isDuplicateFinalFlush("show", "5", 1988000, 1000, "show", "5", 1988000, 3000);
        assert !PlaybackEvent.isDuplicateFinalFlush("show", "5", 1988000, 1000, "show", "5", 1989000, 1500);
        assert !PlaybackEvent.isDuplicateFinalFlush("show", "5", 1988000, 1000, "show", "6", 1988000, 1500);
        System.out.println("Playback event tests passed");
    }
}
