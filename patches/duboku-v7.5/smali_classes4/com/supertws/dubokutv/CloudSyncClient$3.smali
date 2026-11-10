.class Lcom/supertws/dubokutv/CloudSyncClient$3;
.super Ljava/lang/Object;
.source "CloudSyncClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/supertws/dubokutv/CloudSyncClient;->fetchKnownPeers(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$requestGeneration:J


# direct methods
.method constructor <init>(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 357
    iput-wide p1, p0, Lcom/supertws/dubokutv/CloudSyncClient$3;->val$requestGeneration:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .line 359
    move-object/from16 v1, p0

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetREAD_GATE()Lcom/supertws/dubokutv/CloudSyncGate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/supertws/dubokutv/CloudSyncGate;->beginRead()J

    move-result-wide v2

    .line 360
    iget-wide v4, v1, Lcom/supertws/dubokutv/CloudSyncClient$3;->val$requestGeneration:J

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetcloudGeneration()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_e

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$smcloudSyncEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_a

    .line 361
    :cond_0
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetLOCK()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    const/4 v5, 0x0

    :try_start_0
    invoke-static {v5}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputscheduledRead(Ljava/util/concurrent/ScheduledFuture;)V

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 362
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetappContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/supertws/dubokutv/FamilyIdentity;->ensure()V

    .line 363
    invoke-virtual {v4}, Lcom/supertws/dubokutv/FamilyIdentity;->familySecret()Ljava/lang/String;

    move-result-object v6

    .line 364
    invoke-virtual {v4}, Lcom/supertws/dubokutv/FamilyIdentity;->familyId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/supertws/dubokutv/CloudSyncClient;->registerFamily(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 365
    nop

    .line 366
    nop

    .line 367
    invoke-virtual {v4}, Lcom/supertws/dubokutv/FamilyIdentity;->peers()Ljava/util/Set;

    move-result-object v8

    .line 368
    const/4 v9, 0x0

    if-eqz v7, :cond_4

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v0, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 369
    iget-wide v14, v1, Lcom/supertws/dubokutv/CloudSyncClient$3;->val$requestGeneration:J

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetcloudGeneration()J

    move-result-wide v16

    cmp-long v18, v14, v16

    if-nez v18, :cond_3

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$smcloudSyncEnabled()Z

    move-result v14

    if-nez v14, :cond_1

    goto/16 :goto_4

    .line 370
    :cond_1
    add-int/lit8 v14, v0, 0x1

    .line 372
    :try_start_1
    invoke-virtual {v4}, Lcom/supertws/dubokutv/FamilyIdentity;->familyId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v13, v6}, Lcom/supertws/dubokutv/CloudSyncClient;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 373
    move-object/from16 v16, v6

    :try_start_2
    iget-wide v5, v1, Lcom/supertws/dubokutv/CloudSyncClient$3;->val$requestGeneration:J

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetcloudGeneration()J

    move-result-wide v17

    cmp-long v19, v5, v17

    if-nez v19, :cond_2

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$smcloudSyncEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 374
    invoke-virtual {v4}, Lcom/supertws/dubokutv/FamilyIdentity;->familyId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "familyId"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "deviceId"

    .line 375
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 376
    invoke-static {v0}, Lcom/supertws/dubokutv/ProgressSnapshot;->valid(Lorg/json/JSONObject;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 377
    invoke-static {v0, v13}, Lcom/supertws/dubokutv/LanSyncManager;->mergeCloudSnapshot(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    or-int/2addr v0, v12

    move v12, v0

    goto :goto_1

    .line 378
    :cond_2
    add-int/lit8 v11, v11, 0x1

    .line 380
    :goto_1
    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v16, v6

    :goto_2
    add-int/lit8 v11, v11, 0x1

    const-string v5, "R2Sync"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Peer read failed: "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :goto_3
    move v0, v14

    move-object/from16 v6, v16

    const/4 v5, 0x0

    goto/16 :goto_0

    .line 369
    :cond_3
    :goto_4
    return-void

    .line 368
    :cond_4
    const/4 v0, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 382
    :cond_5
    iget-wide v4, v1, Lcom/supertws/dubokutv/CloudSyncClient$3;->val$requestGeneration:J

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetcloudGeneration()J

    move-result-wide v13

    cmp-long v6, v4, v13

    if-nez v6, :cond_d

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$smcloudSyncEnabled()Z

    move-result v4

    if-nez v4, :cond_6

    goto/16 :goto_9

    .line 383
    :cond_6
    const/4 v4, 0x1

    if-nez v11, :cond_7

    const/4 v5, 0x1

    goto :goto_5

    :cond_7
    const/4 v5, 0x0

    :goto_5
    and-int/2addr v5, v7

    .line 384
    const-string v6, "R2Sync"

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cloud read result peers="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " attempted="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " failed="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " merged="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " success="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetREAD_GATE()Lcom/supertws/dubokutv/CloudSyncGate;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v5}, Lcom/supertws/dubokutv/CloudSyncGate;->completeRead(JZ)V

    .line 386
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetLOCK()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 387
    :try_start_3
    iget-wide v7, v1, Lcom/supertws/dubokutv/CloudSyncClient$3;->val$requestGeneration:J

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetcloudGeneration()J

    move-result-wide v10

    cmp-long v0, v7, v10

    if-eqz v0, :cond_8

    monitor-exit v6

    return-void

    .line 388
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputlastReadFinishedAt(J)V

    .line 389
    if-eqz v5, :cond_a

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetREAD_GATE()Lcom/supertws/dubokutv/CloudSyncGate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/supertws/dubokutv/CloudSyncGate;->mayUpload()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 390
    invoke-static {v9}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputreadScheduled(Z)V

    .line 391
    invoke-static {v9}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputreadRetryCount(I)V

    .line 392
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputlatest(Lcom/supertws/dubokutv/ProgressSnapshot;)V

    .line 393
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputretrySnapshot(Lcom/supertws/dubokutv/ProgressSnapshot;)V

    .line 394
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetscheduledDrain()Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetscheduledDrain()Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 395
    :cond_9
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputscheduledDrain(Ljava/util/concurrent/ScheduledFuture;)V

    .line 396
    invoke-static {v9}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputdraining(Z)V

    .line 397
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputdrainRunnable(Ljava/lang/Runnable;)V

    .line 398
    invoke-static {v4}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$smonCommittedSave(Z)V

    goto :goto_8

    .line 400
    :cond_a
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    .line 401
    if-nez v5, :cond_c

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetREAD_GATE()Lcom/supertws/dubokutv/CloudSyncGate;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/supertws/dubokutv/CloudSyncGate;->isCurrent(J)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_6

    :cond_b
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetreadRetryCount()I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    invoke-static {v3}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputreadRetryCount(I)V

    const/4 v3, 0x3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    aget-wide v2, v0, v2

    goto :goto_7

    :cond_c
    :goto_6
    const-wide/16 v2, 0x0

    .line 402
    :goto_7
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetQUEUE()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    invoke-static {v0}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputscheduledRead(Ljava/util/concurrent/ScheduledFuture;)V

    .line 404
    :goto_8
    monitor-exit v6

    .line 405
    return-void

    .line 404
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 382
    :cond_d
    :goto_9
    return-void

    .line 361
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 360
    :cond_e
    :goto_a
    return-void

    nop

    :array_0
    .array-data 8
        0xea60
        0x1d4c0
        0x493e0
        0xdbba0
    .end array-data
.end method
