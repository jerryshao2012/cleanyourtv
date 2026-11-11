package com.supertws.dubokutv;

import android.content.ComponentName;
import android.app.job.JobInfo;
import android.app.job.JobParameters;
import android.app.job.JobScheduler;
import android.app.job.JobService;
import android.content.Context;
import android.os.SystemClock;
import android.util.Log;

/** Persisted network-constrained cloud retry; dirty state remains the source of truth. */
public final class ProgressSyncJobService extends JobService {
    private static final int JOB_ID = 0x5359;
    private static volatile boolean running;
    private static volatile boolean reschedule;
    private volatile boolean stopped;

    static void schedule(Context context) {
        if (context == null) return;
        if (running) {
            reschedule = true;
            return;
        }
        try {
            JobScheduler scheduler = (JobScheduler) context.getSystemService(Context.JOB_SCHEDULER_SERVICE);
            if (scheduler == null) return;
            JobInfo request = new JobInfo.Builder(JOB_ID, new ComponentName(context, ProgressSyncJobService.class))
                    .setRequiredNetworkType(JobInfo.NETWORK_TYPE_ANY)
                    .setPersisted(true)
                    .setMinimumLatency(30_000L)
                    .setBackoffCriteria(30_000L, JobInfo.BACKOFF_POLICY_EXPONENTIAL)
                    .build();
            if (scheduler.schedule(request) != JobScheduler.RESULT_SUCCESS) Log.w("R2Sync", "Persistent sync job was not scheduled");
        } catch (RuntimeException e) {
            Log.w("R2Sync", "Persistent sync job unavailable: " + e.getClass().getSimpleName());
        }
    }

    @Override public boolean onStartJob(final JobParameters params) {
        stopped = false;
        running = true;
        Log.i("R2Sync", "Persistent sync job started");
        final Context context = getApplicationContext();
        new Thread(() -> {
            CloudSyncClient.onNetworkAvailable(context);
            long deadline = SystemClock.elapsedRealtime() + 8 * 60_000L;
            while (!stopped && CloudSyncClient.needsPersistentSync(context)
                    && SystemClock.elapsedRealtime() < deadline) SystemClock.sleep(1000L);
            if (!stopped) {
                boolean retry = CloudSyncClient.needsPersistentSync(context);
                jobFinished(params, false);
                running = false;
                if (reschedule || retry) {
                    reschedule = false;
                    schedule(context);
                }
            }
        }, "R2Sync-PersistentJob").start();
        return true;
    }

    @Override public boolean onStopJob(JobParameters params) {
        stopped = true;
        running = false;
        Log.i("R2Sync", "Persistent sync job stopped");
        return true;
    }
}
