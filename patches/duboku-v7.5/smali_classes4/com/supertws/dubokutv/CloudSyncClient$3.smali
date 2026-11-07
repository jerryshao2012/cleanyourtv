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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 295
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$700()Lcom/supertws/dubokutv/CloudSyncGate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/supertws/dubokutv/CloudSyncGate;->beginRead()J

    move-result-wide v0

    .line 296
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1200()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/supertws/dubokutv/FamilyIdentity;->ensure()V

    .line 297
    invoke-virtual {v2}, Lcom/supertws/dubokutv/FamilyIdentity;->familySecret()Ljava/lang/String;

    move-result-object v3

    .line 298
    invoke-virtual {v2}, Lcom/supertws/dubokutv/FamilyIdentity;->familyId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/supertws/dubokutv/CloudSyncClient;->registerFamily(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 299
    nop

    .line 300
    nop

    .line 301
    invoke-virtual {v2}, Lcom/supertws/dubokutv/FamilyIdentity;->peers()Ljava/util/Set;

    move-result-object v5

    .line 302
    const/4 v6, 0x0

    if-eqz v4, :cond_1

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 303
    add-int/lit8 v9, v9, 0x1

    .line 305
    :try_start_0
    invoke-virtual {v2}, Lcom/supertws/dubokutv/FamilyIdentity;->familyId()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v11, v3}, Lcom/supertws/dubokutv/CloudSyncClient;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 306
    invoke-virtual {v2}, Lcom/supertws/dubokutv/FamilyIdentity;->familyId()Ljava/lang/String;

    move-result-object v13

    const-string v14, "familyId"

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const-string v13, "deviceId"

    .line 307
    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 308
    invoke-static {v12}, Lcom/supertws/dubokutv/ProgressSnapshot;->valid(Lorg/json/JSONObject;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 309
    invoke-static {v12, v11}, Lcom/supertws/dubokutv/LanSyncManager;->mergeCloudSnapshot(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    or-int/2addr v8, v11

    goto :goto_1

    .line 310
    :cond_0
    add-int/lit8 v10, v10, 0x1

    .line 312
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v11

    add-int/lit8 v10, v10, 0x1

    const-string v12, "R2Sync"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Peer read failed: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :goto_2
    goto :goto_0

    .line 302
    :cond_1
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 314
    :cond_2
    const/4 v2, 0x1

    if-nez v10, :cond_3

    const/4 v3, 0x1

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    and-int/2addr v3, v4

    .line 315
    const-string v4, "R2Sync"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cloud read result peers="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " attempted="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " failed="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " merged="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " success="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$700()Lcom/supertws/dubokutv/CloudSyncGate;

    move-result-object v4

    invoke-virtual {v4, v0, v1, v3}, Lcom/supertws/dubokutv/CloudSyncGate;->completeRead(JZ)V

    .line 317
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$000()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 318
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1902(J)J

    .line 319
    if-eqz v3, :cond_5

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$700()Lcom/supertws/dubokutv/CloudSyncGate;

    move-result-object v5

    invoke-virtual {v5}, Lcom/supertws/dubokutv/CloudSyncGate;->mayUpload()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 320
    invoke-static {v6}, Lcom/supertws/dubokutv/CloudSyncClient;->access$2002(Z)Z

    .line 321
    invoke-static {v6}, Lcom/supertws/dubokutv/CloudSyncClient;->access$2102(I)I

    .line 322
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/supertws/dubokutv/CloudSyncClient;->access$902(Lcom/supertws/dubokutv/ProgressSnapshot;)Lcom/supertws/dubokutv/ProgressSnapshot;

    .line 323
    invoke-static {v0}, Lcom/supertws/dubokutv/CloudSyncClient;->access$802(Lcom/supertws/dubokutv/ProgressSnapshot;)Lcom/supertws/dubokutv/ProgressSnapshot;

    .line 324
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$500()Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$500()Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    invoke-interface {v1, v6}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 325
    :cond_4
    invoke-static {v0}, Lcom/supertws/dubokutv/CloudSyncClient;->access$502(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 326
    invoke-static {v6}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1602(Z)Z

    .line 327
    invoke-static {v0}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1702(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 328
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->access$2200(Z)V

    goto :goto_6

    .line 330
    :cond_5
    const/4 v2, 0x4

    new-array v2, v2, [J

    fill-array-data v2, :array_0

    .line 331
    if-nez v3, :cond_7

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$700()Lcom/supertws/dubokutv/CloudSyncGate;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/supertws/dubokutv/CloudSyncGate;->isCurrent(J)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$2108()I

    move-result v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    aget-wide v0, v2, v0

    goto :goto_5

    :cond_7
    :goto_4
    const-wide/16 v0, 0x0

    .line 332
    :goto_5
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$2300()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, p0, v0, v1, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 334
    :goto_6
    monitor-exit v4

    .line 335
    return-void

    .line 334
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_8

    :goto_7
    throw v0

    :goto_8
    goto :goto_7

    nop

    :array_0
    .array-data 8
        0xea60
        0x1d4c0
        0x493e0
        0xdbba0
    .end array-data
.end method
