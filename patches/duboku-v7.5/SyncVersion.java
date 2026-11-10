package com.supertws.dubokutv;

/** Hybrid logical version for ordering progress through clock skew and offline writes. */
final class SyncVersion {
    static final long MAX_COUNTER = 9_007_199_254_740_991L;
    final long utcMillis;
    final long logicalCounter;
    final String deviceId;

    SyncVersion(long utcMillis, long logicalCounter, String deviceId) {
        this.utcMillis = utcMillis;
        this.logicalCounter = logicalCounter;
        this.deviceId = deviceId == null ? "" : deviceId;
    }

    static int compare(long utcA, long counterA, String deviceA,
                       long utcB, long counterB, String deviceB) {
        int order = Long.compare(utcA, utcB);
        if (order == 0) order = Long.compare(counterA, counterB);
        if (order == 0) order = safe(deviceA).compareTo(safe(deviceB));
        return order;
    }

    static SyncVersion next(long wallMillis, long localUtc, long localCounter,
                            long remoteUtc, long remoteCounter, String deviceId) {
        long utc = Math.max(Math.max(wallMillis, localUtc), remoteUtc);
        long counter;
        if (utc == localUtc && utc == remoteUtc) counter = Math.max(localCounter, remoteCounter) + 1;
        else if (utc == localUtc) counter = localCounter + 1;
        else if (utc == remoteUtc) counter = remoteCounter + 1;
        else counter = 0;
        if (counter < 0 || counter > MAX_COUNTER) { utc++; counter = 0; }
        return new SyncVersion(utc, counter, deviceId);
    }

    private static String safe(String value) { return value == null ? "" : value; }
}
