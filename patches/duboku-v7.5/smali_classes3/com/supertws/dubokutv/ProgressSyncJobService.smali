.class public final Lcom/supertws/dubokutv/ProgressSyncJobService;
.super Landroid/app/job/JobService;
.source "ProgressSyncJobService.java"


# static fields
.field private static final JOB_ID:I = 0x5359
.field private static volatile reschedule:Z
.field private static volatile running:Z


# instance fields
.field private volatile stopped:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method static schedule(Landroid/content/Context;)V
    .registers 6

    .line 18
    if-nez p0, :cond_5

    return-void

    .line 20
    :cond_5
    sget-boolean v0, Lcom/supertws/dubokutv/ProgressSyncJobService;->running:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1
    sput-boolean v0, Lcom/supertws/dubokutv/ProgressSyncJobService;->reschedule:Z
    return-void

    :cond_6
    const-string v0, "R2Sync"
    :try_start_5
    const-string v1, "jobscheduler"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    .line 21
    if-nez v1, :cond_10

    return-void

    .line 22
    :cond_10
    new-instance v2, Landroid/app/job/JobInfo$Builder;

    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/supertws/dubokutv/ProgressSyncJobService;

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 p0, 0x5359

    invoke-direct {v2, p0, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 23
    const/4 p0, 0x1

    invoke-virtual {v2, p0}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    .line 24
    invoke-virtual {v2, p0}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    const-wide/16 v3, 0x7530

    invoke-virtual {v2, v3, v4}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    .line 25
    const-wide/16 v3, 0x7530

    invoke-virtual {v2, v3, v4, p0}, Landroid/app/job/JobInfo$Builder;->setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    .line 26
    invoke-virtual {v2}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result v1

    if-eq v1, p0, :cond_3c

    const-string p0, "Persistent sync job was not scheduled"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_3c} :catch_3d

    .line 30
    :cond_3c
    goto :goto_5c

    .line 28
    :catch_3d
    move-exception p0

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Persistent sync job unavailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :goto_5c
    return-void
.end method


# virtual methods


.method synthetic lambda$onStartJob$0$com-supertws-dubokutv-ProgressSyncJobService(Landroid/content/Context;Landroid/app/job/JobParameters;)V
    .registers 8

    .line 37
    invoke-static {p1}, Lcom/supertws/dubokutv/CloudSyncClient;->onNetworkAvailable(Landroid/content/Context;)V

    .line 38
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0x75300

    add-long/2addr v0, v2

    .line 39
    :goto_b
    iget-boolean v2, p0, Lcom/supertws/dubokutv/ProgressSyncJobService;->stopped:Z

    if-nez v2, :cond_23

    invoke-static {p1}, Lcom/supertws/dubokutv/CloudSyncClient;->needsPersistentSync(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 40
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-gez v4, :cond_23

    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_b

    .line 41
    :cond_23
    iget-boolean v0, p0, Lcom/supertws/dubokutv/ProgressSyncJobService;->stopped:Z
    if-nez v0, :cond_2e
    move-object v4, p1
    invoke-static {p1}, Lcom/supertws/dubokutv/CloudSyncClient;->needsPersistentSync(Landroid/content/Context;)Z
    move-result p1
    move v3, p1
    const/4 v2, 0x0
    invoke-virtual {p0, p2, v2}, Lcom/supertws/dubokutv/ProgressSyncJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V
    sget-boolean v0, Lcom/supertws/dubokutv/ProgressSyncJobService;->reschedule:Z
    if-nez v0, :cond_31
    if-eqz v3, :cond_32
    :cond_31
    const/4 v0, 0x1
    sput-boolean v0, Lcom/supertws/dubokutv/ProgressSyncJobService;->reschedule:Z
    const/4 v0, 0x0
    sput-boolean v0, Lcom/supertws/dubokutv/ProgressSyncJobService;->running:Z
    invoke-static {v4}, Lcom/supertws/dubokutv/ProgressSyncJobService;->schedule(Landroid/content/Context;)V
    sput-boolean v0, Lcom/supertws/dubokutv/ProgressSyncJobService;->reschedule:Z
    goto :cond_33
    :cond_32
    const/4 v0, 0x0
    sput-boolean v0, Lcom/supertws/dubokutv/ProgressSyncJobService;->running:Z
    goto :cond_33
    :cond_2e
    const/4 v0, 0x0
    sput-boolean v0, Lcom/supertws/dubokutv/ProgressSyncJobService;->running:Z
    :cond_33
    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 5

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/supertws/dubokutv/ProgressSyncJobService;->stopped:Z
    const/4 v0, 0x1
    sput-boolean v0, Lcom/supertws/dubokutv/ProgressSyncJobService;->running:Z

    const-string v0, "R2Sync"

    const-string v1, "Persistent sync job started"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-virtual {p0}, Lcom/supertws/dubokutv/ProgressSyncJobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 36
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/supertws/dubokutv/ProgressSyncJobService$0;

    invoke-direct {v2, p0, v0, p1}, Lcom/supertws/dubokutv/ProgressSyncJobService$0;-><init>(Lcom/supertws/dubokutv/ProgressSyncJobService;Landroid/content/Context;Landroid/app/job/JobParameters;)V

    const-string p1, "R2Sync-PersistentJob"

    invoke-direct {v1, v2, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 43
    const/4 p1, 0x1

    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 4

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/supertws/dubokutv/ProgressSyncJobService;->stopped:Z
    const/4 v0, 0x0
    sput-boolean v0, Lcom/supertws/dubokutv/ProgressSyncJobService;->running:Z

    const-string v0, "R2Sync"

    const-string v1, "Persistent sync job stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const/4 v0, 0x1
    return v0
.end method
