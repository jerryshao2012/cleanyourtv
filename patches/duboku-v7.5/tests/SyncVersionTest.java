package com.supertws.dubokutv;

public final class SyncVersionTest {
    public static void main(String[] args) {
        assert SyncVersion.compare(100, 0, "a", 99, 9, "z") > 0;
        assert SyncVersion.compare(100, 2, "a", 100, 1, "z") > 0;
        assert SyncVersion.compare(100, 1, "b", 100, 1, "a") > 0;
        assert SyncVersion.compare(100, 1, "a", 100, 1, "a") == 0;

        SyncVersion afterReceive = SyncVersion.next(90, 100, 2, 100, 4, "device-b");
        assert afterReceive.utcMillis == 100;
        assert afterReceive.logicalCounter == 5;
        assert "device-b".equals(afterReceive.deviceId);

        SyncVersion fromWallClock = SyncVersion.next(110, 100, 2, 100, 4, "device-b");
        assert fromWallClock.utcMillis == 110;
        assert fromWallClock.logicalCounter == 0;
        SyncVersion afterCounterLimit = SyncVersion.next(90, 100, SyncVersion.MAX_COUNTER, 100, 0, "device-b");
        assert afterCounterLimit.utcMillis == 101;
        assert afterCounterLimit.logicalCounter == 0;
        System.out.println("Sync version tests passed");
    }
}
