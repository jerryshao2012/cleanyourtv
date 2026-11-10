package com.supertws.dubokutv;

public final class SyncClockMathTest {
    public static void main(String[] args) {
        assert SyncClockMath.offsetMillis(1000, 1510, 1520, 1030) == 500;
        assert SyncClockMath.roundTripMillis(1000, 1510, 1520, 1030) == 20;
        assert SyncClockMath.offsetMillis(1000, 990, 995, 1020) == -17;
        assert SyncClockMath.roundTripMillis(1000, 990, 995, 1020) == 15;
        assert SyncClockMath.correctedTime(1000, 500, 2000, 10) == 2010;
        assert SyncClockMath.correctedTime(1000, -500, 2000, 0) == 2000;
        assert SyncClockMath.validRoundTrip(1000, 1510, 1520, 1030, 5000);
        assert !SyncClockMath.validRoundTrip(1000, 1510, 1520, 1005, 5000);
        assert !SyncClockMath.validRoundTrip(1000, 1510, 1520, 8000, 5000);
        assert !SyncClockMath.validRoundTrip(-1, 1510, 1520, 1030, 5000);
        assert !SyncClockMath.validRoundTrip(253_402_300_800_000L, 1510, 1520, 1030, 5000);
        assert SyncClockMath.wallStepCorrection(3_601_000, 1000) == -3_600_000;
        assert SyncClockMath.wallStepCorrection(-3_599_000, 1000) == 3_600_000;
        assert SyncClockMath.wallStepCorrection(1500, 1000) == 0;
        System.out.println("Sync clock math tests passed");
    }
}
