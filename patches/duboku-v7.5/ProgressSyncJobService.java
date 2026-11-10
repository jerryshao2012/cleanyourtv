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
    private volatile boolean stopped;

    static void schedule(Context context) {
        if (context == null) return;
        try {
            JobScheduler scheduler = (JobScheduler) context.getSystemService(Context.JOB_SCHEDULER_SERVICE);
            if (scheduler == null) return;
            JobInfo request = new JobInfo.Builder(JOB_ID, new ComponentName(context, ProgressSyncJobService.class))
                    .setRequiredNetworkType(JobInfo.NETWORK_TYPE_ANY)
                    .setPersisted(true)
                    .setBackoffCriteria(30_000L, JobInfo.BACKOFF_POLICY_EXPONENTIAL)
                    .build();
            if (scheduler.schedule(request) != JobScheduler.RESULT_SUCCESS) Log.w("R2Sync", "Persistent sync job was not scheduled");
        } catch (RuntimeException e) {
            Log.w("R2Sync", "Persistent sync job unavailable: " + e.getClass().getSimpleName());
        }
    }

    @Override public boolean onStartJob(final JobParameters params) {
        stopped = false;
        final Context context = getApplicationContext();
        new Thread(() -> {
            CloudSyncClient.onNetworkAvailable(context);
            long deadline = SystemClock.elapsedRealtime() + 8 * 60_000L;
            while (!stopped && CloudSyncClient.needsPersistentSync(context)
                    && SystemClock.elapsedRealtime() < deadline) SystemClock.sleep(1000L);
            if (!stopped) jobFinished(params, CloudSyncClient.needsPersistentSync(context));
        }, "R2Sync-PersistentJob").start();
        return true;
    }

    @Override public boolean onStopJob(JobParameters params) {
        stopped = true;
        return true;
    }
}
