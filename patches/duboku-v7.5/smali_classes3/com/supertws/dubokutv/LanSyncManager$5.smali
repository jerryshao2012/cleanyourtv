.class Lcom/supertws/dubokutv/LanSyncManager$5;
.super Ljava/lang/Object;
.source "LanSyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/supertws/dubokutv/LanSyncManager;->publishPlaybackProgress(Ljava/lang/Object;ZLcom/supertws/dubokutv/SyncVersion;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$committedVersion:Lcom/supertws/dubokutv/SyncVersion;

.field final synthetic val$critical:Z

.field final synthetic val$recordObj:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;ZLcom/supertws/dubokutv/SyncVersion;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 552
    iput-object p1, p0, Lcom/supertws/dubokutv/LanSyncManager$5;->val$recordObj:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/supertws/dubokutv/LanSyncManager$5;->val$critical:Z

    iput-object p3, p0, Lcom/supertws/dubokutv/LanSyncManager$5;->val$committedVersion:Lcom/supertws/dubokutv/SyncVersion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$run$0(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 3

    .line 600
    # getter for: Lcom/supertws/dubokutv/LanSyncManager;->sPendingProgress:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->access$1200()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    # invokes: Lcom/supertws/dubokutv/LanSyncManager;->sendUdpPacket(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p0, p1}, Lcom/supertws/dubokutv/LanSyncManager;->access$800(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method static synthetic lambda$run$1(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 3

    .line 601
    # getter for: Lcom/supertws/dubokutv/LanSyncManager;->sPendingProgress:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->access$1200()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    # invokes: Lcom/supertws/dubokutv/LanSyncManager;->sendUdpPacket(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p0, p1}, Lcom/supertws/dubokutv/LanSyncManager;->access$800(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .line 556
    const/4 v1, 0x1

    :try_start_1
    # invokes: Lcom/supertws/dubokutv/LanSyncManager;->isLanSyncEnabled()Z
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->access$400()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->onCommittedSave(Z)V

    return-void

    .line 557
    :cond_b
    iget-object v0, p0, Lcom/supertws/dubokutv/LanSyncManager$5;->val$recordObj:Ljava/lang/Object;

    check-cast v0, Lpa/c;

    .line 558
    iget-object v2, v0, Lpa/c;->b:Ljava/lang/String;

    .line 559
    iget-object v3, v0, Lpa/c;->c:Ljava/lang/String;

    .line 560
    iget-wide v4, v0, Lpa/c;->d:J

    .line 561
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    .line 564
    const-class v7, Lcom/supertws/dubokutv/LanSyncManager;

    monitor-enter v7
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_20} :catch_164

    .line 565
    :try_start_20
    iget-boolean v8, p0, Lcom/supertws/dubokutv/LanSyncManager$5;->val$critical:Z

    if-nez v8, :cond_4e

    if-eqz v2, :cond_4e

    # getter for: Lcom/supertws/dubokutv/LanSyncManager;->sLastSentName:Ljava/lang/String;
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->access$900()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4e

    if-eqz v3, :cond_4e

    .line 566
    # getter for: Lcom/supertws/dubokutv/LanSyncManager;->sLastSentEpisode:Ljava/lang/String;
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->access$1000()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4e

    .line 567
    # getter for: Lcom/supertws/dubokutv/LanSyncManager;->sLastSentProgressMs:J
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->access$1100()J

    move-result-wide v8

    sub-long v8, v4, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/16 v10, 0x7d0

    cmp-long v12, v8, v10

    if-gez v12, :cond_4e

    .line 568
    monitor-exit v7

    return-void

    .line 570
    :cond_4e
    # setter for: Lcom/supertws/dubokutv/LanSyncManager;->sLastSentName:Ljava/lang/String;
    invoke-static {v2}, Lcom/supertws/dubokutv/LanSyncManager;->access$902(Ljava/lang/String;)Ljava/lang/String;

    .line 571
    # setter for: Lcom/supertws/dubokutv/LanSyncManager;->sLastSentEpisode:Ljava/lang/String;
    invoke-static {v3}, Lcom/supertws/dubokutv/LanSyncManager;->access$1002(Ljava/lang/String;)Ljava/lang/String;

    .line 572
    # setter for: Lcom/supertws/dubokutv/LanSyncManager;->sLastSentProgressMs:J
    invoke-static {v4, v5}, Lcom/supertws/dubokutv/LanSyncManager;->access$1102(J)J

    .line 573
    monitor-exit v7
    :try_end_58
    .catchall {:try_start_20 .. :try_end_58} :catchall_161

    .line 575
    :try_start_58
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 576
    const-string v8, "from"

    # getter for: Lcom/supertws/dubokutv/LanSyncManager;->sCurrentDeviceId:Ljava/lang/String;
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->access$100()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 577
    const-string v8, "id"

    iget-object v9, v0, Lpa/c;->a:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 578
    const-string v8, "name"

    iget-object v9, v0, Lpa/c;->b:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 579
    const-string v8, "episode"

    iget-object v9, v0, Lpa/c;->c:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 580
    const-string v8, "progressInMillis"

    iget-wide v9, v0, Lpa/c;->d:J

    invoke-virtual {v7, v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 581
    const-string v8, "durationInMillis"

    iget-wide v9, v0, Lpa/c;->e:J

    invoke-virtual {v7, v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 582
    const-string v8, "modifiedAt"

    iget-wide v9, v0, Lpa/c;->g:J

    invoke-virtual {v7, v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 583
    iget-object v8, p0, Lcom/supertws/dubokutv/LanSyncManager$5;->val$committedVersion:Lcom/supertws/dubokutv/SyncVersion;

    if-nez v8, :cond_a7

    .line 584
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->getAppContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, v0, Lpa/c;->b:Ljava/lang/String;

    iget-object v11, v0, Lpa/c;->i:Ljava/lang/String;

    iget-wide v12, v0, Lpa/c;->g:J

    # getter for: Lcom/supertws/dubokutv/LanSyncManager;->sCurrentDeviceId:Ljava/lang/String;
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->access$100()Ljava/lang/String;

    move-result-object v14

    invoke-static/range {v9 .. v14}, Lcom/supertws/dubokutv/SyncVersionStore;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/supertws/dubokutv/SyncVersion;

    move-result-object v8

    goto :goto_a9

    .line 585
    :cond_a7
    iget-object v8, p0, Lcom/supertws/dubokutv/LanSyncManager$5;->val$committedVersion:Lcom/supertws/dubokutv/SyncVersion;

    .line 586
    :goto_a9
    const-string v9, "clockVersion"

    invoke-static {v8}, Lcom/supertws/dubokutv/SyncVersionStore;->toJson(Lcom/supertws/dubokutv/SyncVersion;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v7, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 587
    const-string v8, "messageId"

    invoke-virtual {v7, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 588
    const-string v8, "videoPageUrl"

    iget-object v9, v0, Lpa/c;->h:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 589
    const-string v8, "detailPageUrl"

    iget-object v9, v0, Lpa/c;->i:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 590
    const-string v8, "posterUrl"

    iget-object v0, v0, Lpa/c;->j:Ljava/lang/String;

    invoke-virtual {v7, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 592
    nop

    .line 593
    iget-boolean v0, p0, Lcom/supertws/dubokutv/LanSyncManager$5;->val$critical:Z

    if-nez v0, :cond_109

    .line 594
    # getter for: Lcom/supertws/dubokutv/LanSyncManager;->sSyncQueue:Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->access$1300()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v8, Lcom/supertws/dubokutv/LanSyncManager$5$1;

    invoke-direct {v8, p0, v6}, Lcom/supertws/dubokutv/LanSyncManager$5$1;-><init>(Lcom/supertws/dubokutv/LanSyncManager$5;Ljava/lang/String;)V

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v10, 0xbb8

    invoke-interface {v0, v8, v10, v11, v9}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    .line 599
    # getter for: Lcom/supertws/dubokutv/LanSyncManager;->sPendingProgress:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->access$1200()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v8

    invoke-virtual {v8, v6, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    # getter for: Lcom/supertws/dubokutv/LanSyncManager;->sSyncQueue:Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->access$1300()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v8, Lcom/supertws/dubokutv/LanSyncManager$5$0;

    invoke-direct {v8, v6, v7}, Lcom/supertws/dubokutv/LanSyncManager$5$0;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v10, 0xfa

    invoke-interface {v0, v8, v10, v11, v9}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 601
    # getter for: Lcom/supertws/dubokutv/LanSyncManager;->sSyncQueue:Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->access$1300()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v8, Lcom/supertws/dubokutv/LanSyncManager$5$2;

    invoke-direct {v8, v6, v7}, Lcom/supertws/dubokutv/LanSyncManager$5$2;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v10, 0x1f4

    invoke-interface {v0, v8, v10, v11, v9}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 603
    :cond_109
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    # invokes: Lcom/supertws/dubokutv/LanSyncManager;->sendUdpPacketResult(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v7}, Lcom/supertws/dubokutv/LanSyncManager;->access$1400(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12b

    .line 604
    # getter for: Lcom/supertws/dubokutv/LanSyncManager;->sPendingProgress:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->access$1200()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    .line 605
    if-eqz v0, :cond_124

    const/4 v6, 0x0

    invoke-interface {v0, v6}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 606
    :cond_124
    iget-boolean v0, p0, Lcom/supertws/dubokutv/LanSyncManager$5;->val$critical:Z

    if-nez v0, :cond_12b

    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->onCommittedSave(Z)V

    .line 608
    :cond_12b
    const-string v0, "LanSyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Broadcasted progress update: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " @"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_160
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_160} :catch_164

    .line 612
    goto :goto_188

    .line 573
    :catchall_161
    move-exception v0

    :try_start_162
    monitor-exit v7
    :try_end_163
    .catchall {:try_start_162 .. :try_end_163} :catchall_161

    :try_start_163
    throw v0
    :try_end_164
    .catch Ljava/lang/Exception; {:try_start_163 .. :try_end_164} :catch_164

    .line 609
    :catch_164
    move-exception v0

    .line 610
    const-string v2, "LanSyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to broadcast progress: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    iget-boolean v0, p0, Lcom/supertws/dubokutv/LanSyncManager$5;->val$critical:Z

    if-nez v0, :cond_188

    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->onCommittedSave(Z)V

    .line 613
    :cond_188
    :goto_188
    return-void
.end method
