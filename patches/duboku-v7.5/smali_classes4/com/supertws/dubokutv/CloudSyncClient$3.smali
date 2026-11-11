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
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 369
    iput-wide p1, p0, Lcom/supertws/dubokutv/CloudSyncClient$3;->val$requestGeneration:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 21

    .line 371
    move-object/from16 v1, p0

    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->READ_GATE:Lcom/supertws/dubokutv/CloudSyncGate;
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$900()Lcom/supertws/dubokutv/CloudSyncGate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/supertws/dubokutv/CloudSyncGate;->beginRead()J

    move-result-wide v2

    .line 372
    iget-wide v4, v1, Lcom/supertws/dubokutv/CloudSyncClient$3;->val$requestGeneration:J

    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->cloudGeneration:J
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$500()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_1cb

    # invokes: Lcom/supertws/dubokutv/CloudSyncClient;->cloudSyncEnabled()Z
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$600()Z

    move-result v0

    if-nez v0, :cond_1c

    goto/16 :goto_1cb

    .line 373
    :cond_1c
    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->LOCK:Ljava/lang/Object;
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$000()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    const/4 v5, 0x0

    :try_start_22
    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->scheduledRead:Ljava/util/concurrent/ScheduledFuture;
    invoke-static {v5}, Lcom/supertws/dubokutv/CloudSyncClient;->access$2102(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    monitor-exit v4
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_1c8

    .line 374
    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->appContext:Landroid/content/Context;
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1400()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/supertws/dubokutv/FamilyIdentity;->ensure()V

    .line 375
    invoke-virtual {v4}, Lcom/supertws/dubokutv/FamilyIdentity;->familySecret()Ljava/lang/String;

    move-result-object v6

    .line 376
    invoke-virtual {v4}, Lcom/supertws/dubokutv/FamilyIdentity;->familyId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/supertws/dubokutv/CloudSyncClient;->registerFamily(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 377
    nop

    .line 378
    nop

    .line 379
    invoke-virtual {v4}, Lcom/supertws/dubokutv/FamilyIdentity;->peers()Ljava/util/Set;

    move-result-object v8

    .line 380
    const/4 v9, 0x0

    if-eqz v7, :cond_e1

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v0, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_4d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_e4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 381
    iget-wide v14, v1, Lcom/supertws/dubokutv/CloudSyncClient$3;->val$requestGeneration:J

    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->cloudGeneration:J
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$500()J

    move-result-wide v16

    cmp-long v18, v14, v16

    if-nez v18, :cond_e0

    # invokes: Lcom/supertws/dubokutv/CloudSyncClient;->cloudSyncEnabled()Z
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$600()Z

    move-result v14

    if-nez v14, :cond_6b

    goto/16 :goto_e0

    .line 382
    :cond_6b
    add-int/lit8 v14, v0, 0x1

    .line 384
    :try_start_6d
    invoke-virtual {v4}, Lcom/supertws/dubokutv/FamilyIdentity;->familyId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v13, v6}, Lcom/supertws/dubokutv/CloudSyncClient;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_75} :catch_b5

    .line 385
    move-object/from16 v16, v6

    :try_start_77
    iget-wide v5, v1, Lcom/supertws/dubokutv/CloudSyncClient$3;->val$requestGeneration:J

    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->cloudGeneration:J
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$500()J

    move-result-wide v17

    cmp-long v19, v5, v17

    if-nez v19, :cond_b0

    # invokes: Lcom/supertws/dubokutv/CloudSyncClient;->cloudSyncEnabled()Z
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$600()Z

    move-result v5

    if-eqz v5, :cond_b0

    .line 386
    invoke-virtual {v4}, Lcom/supertws/dubokutv/FamilyIdentity;->familyId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "familyId"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b0

    const-string v5, "deviceId"

    .line 387
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b0

    .line 388
    invoke-static {v0}, Lcom/supertws/dubokutv/ProgressSnapshot;->valid(Lorg/json/JSONObject;)Z

    move-result v5

    if-eqz v5, :cond_b0

    .line 389
    invoke-static {v0, v13}, Lcom/supertws/dubokutv/LanSyncManager;->mergeCloudSnapshot(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_ad} :catch_b3

    or-int/2addr v0, v12

    move v12, v0

    goto :goto_b2

    .line 390
    :cond_b0
    add-int/lit8 v11, v11, 0x1

    .line 392
    :goto_b2
    goto :goto_da

    :catch_b3
    move-exception v0

    goto :goto_b8

    :catch_b5
    move-exception v0

    move-object/from16 v16, v6

    :goto_b8
    add-int/lit8 v11, v11, 0x1

    const-string v5, "R2Sync"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Peer read failed: "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :goto_da
    move v0, v14

    move-object/from16 v6, v16

    const/4 v5, 0x0

    goto/16 :goto_4d

    .line 381
    :cond_e0
    :goto_e0
    return-void

    .line 380
    :cond_e1
    const/4 v0, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 394
    :cond_e4
    iget-wide v4, v1, Lcom/supertws/dubokutv/CloudSyncClient$3;->val$requestGeneration:J

    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->cloudGeneration:J
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$500()J

    move-result-wide v13

    cmp-long v6, v4, v13

    if-nez v6, :cond_1c7

    # invokes: Lcom/supertws/dubokutv/CloudSyncClient;->cloudSyncEnabled()Z
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$600()Z

    move-result v4

    if-nez v4, :cond_f6

    goto/16 :goto_1c7

    .line 395
    :cond_f6
    const/4 v4, 0x1

    if-nez v11, :cond_fb

    const/4 v5, 0x1

    goto :goto_fc

    :cond_fb
    const/4 v5, 0x0

    :goto_fc
    and-int/2addr v5, v7

    .line 396
    const-string v6, "R2Sync"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cloud read result peers="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    .line 397
    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->READ_GATE:Lcom/supertws/dubokutv/CloudSyncGate;
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$900()Lcom/supertws/dubokutv/CloudSyncGate;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v5}, Lcom/supertws/dubokutv/CloudSyncGate;->completeRead(JZ)V

    .line 398
    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->LOCK:Ljava/lang/Object;
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$000()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 399
    :try_start_14d
    iget-wide v7, v1, Lcom/supertws/dubokutv/CloudSyncClient$3;->val$requestGeneration:J

    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->cloudGeneration:J
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$500()J

    move-result-wide v10

    cmp-long v0, v7, v10

    if-eqz v0, :cond_159

    monitor-exit v6

    return-void

    .line 400
    :cond_159
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->lastReadFinishedAt:J
    invoke-static {v7, v8}, Lcom/supertws/dubokutv/CloudSyncClient;->access$2202(J)J

    .line 401
    if-eqz v5, :cond_194

    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->READ_GATE:Lcom/supertws/dubokutv/CloudSyncGate;
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$900()Lcom/supertws/dubokutv/CloudSyncGate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/supertws/dubokutv/CloudSyncGate;->mayUpload()Z

    move-result v0

    if-eqz v0, :cond_194

    .line 402
    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->readScheduled:Z
    invoke-static {v9}, Lcom/supertws/dubokutv/CloudSyncClient;->access$2302(Z)Z

    .line 403
    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->readRetryCount:I
    invoke-static {v9}, Lcom/supertws/dubokutv/CloudSyncClient;->access$2402(I)I

    .line 404
    const/4 v2, 0x0

    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->latest:Lcom/supertws/dubokutv/ProgressSnapshot;
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1102(Lcom/supertws/dubokutv/ProgressSnapshot;)Lcom/supertws/dubokutv/ProgressSnapshot;

    .line 405
    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->retrySnapshot:Lcom/supertws/dubokutv/ProgressSnapshot;
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1002(Lcom/supertws/dubokutv/ProgressSnapshot;)Lcom/supertws/dubokutv/ProgressSnapshot;

    .line 406
    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->scheduledDrain:Ljava/util/concurrent/ScheduledFuture;
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$700()Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    if-eqz v0, :cond_186

    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->scheduledDrain:Ljava/util/concurrent/ScheduledFuture;
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$700()Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 407
    :cond_186
    const/4 v2, 0x0

    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->scheduledDrain:Ljava/util/concurrent/ScheduledFuture;
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->access$702(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 408
    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->draining:Z
    invoke-static {v9}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1802(Z)Z

    .line 409
    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->drainRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1902(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 410
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->dirtyPrefs()Landroid/content/SharedPreferences;
    move-result-object v0
    const-string v8, "cloudDirty"
    const/4 v7, 0x0
    invoke-interface {v0, v8, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    move-result v0
    if-eqz v0, :cond_skip_dirty_upload
    invoke-static {v4}, Lcom/supertws/dubokutv/CloudSyncClient;->onCommittedSave(Z)V

    :cond_skip_dirty_upload
    goto :goto_1c2

    .line 412
    :cond_194
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_1cc

    .line 413
    if-nez v5, :cond_1b3

    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->READ_GATE:Lcom/supertws/dubokutv/CloudSyncGate;
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$900()Lcom/supertws/dubokutv/CloudSyncGate;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/supertws/dubokutv/CloudSyncGate;->isCurrent(J)Z

    move-result v2

    if-nez v2, :cond_1a7

    goto :goto_1b3

    :cond_1a7
    # operator++ for: Lcom/supertws/dubokutv/CloudSyncClient;->readRetryCount:I
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$2408()I

    move-result v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    aget-wide v2, v0, v2

    goto :goto_1b5

    :cond_1b3
    :goto_1b3
    const-wide/16 v2, 0x0

    .line 414
    :goto_1b5
    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->QUEUE:Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$2500()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->scheduledRead:Ljava/util/concurrent/ScheduledFuture;
    invoke-static {v0}, Lcom/supertws/dubokutv/CloudSyncClient;->access$2102(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 416
    :goto_1c2
    monitor-exit v6

    .line 417
    return-void

    .line 416
    :catchall_1c4
    move-exception v0

    monitor-exit v6
    :try_end_1c6
    .catchall {:try_start_14d .. :try_end_1c6} :catchall_1c4

    throw v0

    .line 394
    :cond_1c7
    :goto_1c7
    return-void

    .line 373
    :catchall_1c8
    move-exception v0

    :try_start_1c9
    monitor-exit v4
    :try_end_1ca
    .catchall {:try_start_1c9 .. :try_end_1ca} :catchall_1c8

    throw v0

    .line 372
    :cond_1cb
    :goto_1cb
    return-void

    :array_1cc
    .array-data 8
        0xea60
        0x1d4c0
        0x493e0
        0xdbba0
    .end array-data
.end method
