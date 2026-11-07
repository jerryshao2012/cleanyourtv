package com.supertws.dubokutv;

public final class PlaybackSaveGuardTest {
    public static void main(String[] args) {
        PlaybackSaveGuard guard = new PlaybackSaveGuard();
        assert !guard.isDuplicate("show", "47", 12000);
        guard.committed("show", "47", 12000);
        assert guard.isDuplicate("show", "47", 12000);
        assert !guard.isDuplicate("show", "47", 13000);
        assert !guard.isDuplicate("show", "28", 12000);
        assert !guard.isDuplicate("other", "47", 12000);
        guard.committed("show", "28", 12000);
        assert !guard.isDuplicate("show", "47", 12000);
        guard.remoteUpdated("show", 200);
        assert guard.shouldSkip("show", "47", 13000, false);
        assert !guard.shouldSkip("show", "47", 13000, true);
        assert !guard.shouldSkip("other", "47", 13000, false);
        assert !guard.committedIfCurrent("show", "47", 13000, 100);
        assert guard.shouldSkip("show", "47", 13000, false);
        guard.onUserPlay("show");
        assert !guard.shouldSkip("show", "47", 13000, false);
        System.out.println("Playback save guard tests passed");
    }
}
