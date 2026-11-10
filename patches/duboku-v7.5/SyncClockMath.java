package com.supertws.dubokutv;

/** NTP-style clock offset and delay calculations, in milliseconds. */
final class SyncClockMath {
    private SyncClockMath() { }

    static long offsetMillis(long t1, long t2, long t3, long t4) {
        return ((t2 - t1) + (t3 - t4)) / 2;
    }

    static long roundTripMillis(long t1, long t2, long t3, long t4) {
        return (t4 - t1) - (t3 - t2);
    }

    static boolean validRoundTrip(long t1, long t2, long t3, long t4, long maxMillis) {
        if (maxMillis < 0 || t1 <= 0 || t2 <= 0 || t3 <= 0 || t4 <= 0
                || t1 > 253_402_300_799_999L || t2 > 253_402_300_799_999L
                || t3 > 253_402_300_799_999L || t4 > 253_402_300_799_999L) return false;
        long delay = roundTripMillis(t1, t2, t3, t4);
        return delay >= 0 && delay <= maxMillis;
    }

    static long wallStepCorrection(long wallDelta, long elapsedDelta) {
        long difference = wallDelta - elapsedDelta;
        return Math.abs(difference) > 1000L ? -difference : 0L;
    }

    static long correctedTime(long wallMillis, long offsetMillis, long lastEffective, long slewElapsed) {
        long candidate = wallMillis + offsetMillis;
        long floor = Math.max(0L, lastEffective + Math.max(0L, slewElapsed));
        return Math.max(candidate, floor);
    }
}
