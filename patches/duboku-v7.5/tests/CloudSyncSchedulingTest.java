package com.supertws.dubokutv;

public final class CloudSyncSchedulingTest {
    public static void main(String[] args) {
        assert CloudSyncClient.pendingDrainDelay(30_000L, false) == 30_000L;
        assert CloudSyncClient.pendingDrainDelay(30_000L, true) == 0L;
        assert CloudSyncClient.shouldPreemptDrain(true, false);
        assert !CloudSyncClient.shouldPreemptDrain(true, true);
        assert !CloudSyncClient.shouldPreemptDrain(false, false);
        System.out.println("Cloud sync scheduling tests passed");
    }
}
