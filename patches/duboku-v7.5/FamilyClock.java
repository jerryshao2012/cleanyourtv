package com.supertws.dubokutv;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.SystemClock;

/** App-local UTC estimate shared over LAN; it never changes the TV system clock. */
final class FamilyClock {
    private static final String PREFS = "r2_sync_clock";
    private static final long MAX_RTT_MS = 5000L;
    private static final long MAX_OFFSET_MS = 300_000L;
    private static final long MAX_SAMPLE_AGE_MS = 21_600_000L;
    private static final long UNCALIBRATED_MS = 86_400_000L;

    private FamilyClock() { }

    static synchronized long now(Context context) {
        if (context == null) return System.currentTimeMillis();
        SharedPreferences prefs = prefs(context);
        long elapsed = SystemClock.elapsedRealtime();
        long previousElapsed = prefs.getLong("lastElapsed", -1L);
        long elapsedDelta = previousElapsed < 0 || elapsed < previousElapsed ? 0L : elapsed - previousElapsed;
        long target = prefs.getLong("targetOffset", 0L);
        long applied = prefs.getLong("appliedOffset", 0L);
        long previousWall = prefs.getLong("lastWall", -1L);
        if (previousElapsed >= 0 && elapsed >= previousElapsed && previousWall > 0) {
            long correction = SyncClockMath.wallStepCorrection(System.currentTimeMillis() - previousWall, elapsedDelta);
            target += correction;
            applied += correction;
        }
        long maxSlew = Math.max(1L, elapsedDelta / 20L);
        long difference = target - applied;
        if (difference > maxSlew) applied += maxSlew;
        else if (difference < -maxSlew) applied -= maxSlew;
        else applied = target;
        long effective = SyncClockMath.correctedTime(System.currentTimeMillis(), applied,
                prefs.getLong("lastEffective", 0L), elapsedDelta);
        prefs.edit().putLong("targetOffset", target).putLong("appliedOffset", applied).putLong("lastEffective", effective)
                .putLong("lastWall", System.currentTimeMillis())
                .putLong("lastElapsed", elapsed).apply();
        return effective;
    }

    static synchronized void observeServerTime(Context context, long serverMillis, long sentWall, long receivedWall) {
        if (context == null || serverMillis <= 0 || receivedWall < sentWall
                || receivedWall - sentWall > MAX_RTT_MS) return;
        long midpoint = sentWall + (receivedWall - sentWall) / 2L;
        accept(context, serverMillis - midpoint, Math.max(1000L, (receivedWall - sentWall) / 2L + 1000L),
                true, "cloud");
    }

    static synchronized void observeLanTime(Context context, String peerId,
                                             long t1, long t2, long t3, long t4,
                                             long peerUncertainty, boolean peerTrusted) {
        if (context == null || !FamilyIdentity.validId(peerId)
                || !FamilyIdentity.get(context).peers().contains(peerId)
                || !SyncClockMath.validRoundTrip(t1, t2, t3, t4, MAX_RTT_MS)
                || peerUncertainty < 0 || peerUncertainty > 86_400_000L) return;
        long uncertainty = peerUncertainty + Math.max(1L, SyncClockMath.roundTripMillis(t1, t2, t3, t4) / 2L);
        accept(context, SyncClockMath.offsetMillis(t1, t2, t3, t4), uncertainty, peerTrusted, peerId);
    }

    private static void accept(Context context, long offset, long uncertainty, boolean trusted, String source) {
        SharedPreferences prefs = prefs(context);
        long elapsed = SystemClock.elapsedRealtime();
        boolean currentTrusted = trusted(prefs, elapsed);
        String ownId = FamilyIdentity.get(context).deviceId();
        String currentSource = prefs.getString("source", "");
        long currentUncertainty = uncertainty(prefs, elapsed);
        if (trusted) {
            if (currentTrusted && !"cloud".equals(currentSource) && uncertainty >= currentUncertainty) return;
            if (currentTrusted && "cloud".equals(currentSource) && uncertainty > currentUncertainty) return;
        } else {
            if (currentTrusted || (source.compareTo(ownId) >= 0)
                    || (!currentSource.isEmpty() && currentSource.compareTo(source) <= 0)) return;
        }
        if (Math.abs(offset) > MAX_OFFSET_MS) {
            long candidate = prefs.getLong("candidateOffset", Long.MIN_VALUE);
            String candidateSource = prefs.getString("candidateSource", "");
            int count = candidate != Long.MIN_VALUE && source.equals(candidateSource)
                    && candidate <= Long.MAX_VALUE - 2000L && candidate >= Long.MIN_VALUE + 2000L
                    && Math.abs(candidate - offset) <= 2000L
                    ? prefs.getInt("candidateCount", 0) + 1 : 1;
            if (count < 3) {
                prefs.edit().putLong("candidateOffset", offset).putString("candidateSource", source)
                        .putInt("candidateCount", count).apply();
                return;
            }
        }
        prefs.edit().putLong("targetOffset", offset).putLong("uncertainty", uncertainty)
                .putLong("sampleElapsed", elapsed).putBoolean("trusted", trusted)
                .putString("source", source).remove("candidateOffset").remove("candidateSource")
                .remove("candidateCount").apply();
    }

    static synchronized long uncertainty(Context context) {
        return context == null ? UNCALIBRATED_MS : uncertainty(prefs(context), SystemClock.elapsedRealtime());
    }

    static synchronized boolean isTrusted(Context context) {
        return context != null && trusted(prefs(context), SystemClock.elapsedRealtime());
    }

    static synchronized String source(Context context) {
        return context == null ? "" : prefs(context).getString("source", "");
    }

    private static long uncertainty(SharedPreferences prefs, long elapsed) {
        long sampledAt = prefs.getLong("sampleElapsed", -1L);
        if (sampledAt < 0 || elapsed < sampledAt || elapsed - sampledAt > MAX_SAMPLE_AGE_MS) return UNCALIBRATED_MS;
        return Math.min(UNCALIBRATED_MS, prefs.getLong("uncertainty", UNCALIBRATED_MS) + (elapsed - sampledAt) / 60_000L);
    }

    private static boolean trusted(SharedPreferences prefs, long elapsed) {
        long sampledAt = prefs.getLong("sampleElapsed", -1L);
        return prefs.getBoolean("trusted", false) && sampledAt >= 0 && elapsed >= sampledAt
                && elapsed - sampledAt <= MAX_SAMPLE_AGE_MS;
    }

    private static SharedPreferences prefs(Context context) {
        return context.getApplicationContext().getSharedPreferences(PREFS, Context.MODE_PRIVATE);
    }
}
