.class Lcom/supertws/dubokutv/CloudSyncClient$2;
.super Ljava/lang/Object;
.source "CloudSyncClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/supertws/dubokutv/CloudSyncClient;->enqueueUpload(Landroid/content/Context;Lcom/supertws/dubokutv/ProgressSnapshot;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$generation:J


# direct methods
.method constructor <init>(J)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 209
    iput-wide p1, p0, Lcom/supertws/dubokutv/CloudSyncClient$2;->val$generation:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .line 211
    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->LOCK:Ljava/lang/Object;
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 212
    :try_start_5
    iget-wide v1, p0, Lcom/supertws/dubokutv/CloudSyncClient$2;->val$generation:J

    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->cloudGeneration:J
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$500()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-nez v5, :cond_3a9

    # invokes: Lcom/supertws/dubokutv/CloudSyncClient;->cloudSyncEnabled()Z
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$600()Z

    move-result v1

    if-nez v1, :cond_17

    goto/16 :goto_3a9

    .line 213
    :cond_17
    const/4 v1, 0x0

    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->scheduledDrain:Ljava/util/concurrent/ScheduledFuture;
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->access$702(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 214
    const/4 v2, 0x0

    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->scheduledRetryBackoff:Z
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->access$802(Z)Z

    .line 215
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_3ab

    .line 216
    nop

    .line 219
    :goto_21
    const-wide/16 v3, 0x0

    const/4 v0, 0x1

    :try_start_24
    iget-wide v5, p0, Lcom/supertws/dubokutv/CloudSyncClient$2;->val$generation:J

    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->cloudGeneration:J
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$500()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-nez v9, :cond_1f6

    # invokes: Lcom/supertws/dubokutv/CloudSyncClient;->cloudSyncEnabled()Z
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$600()Z

    move-result v5

    if-eqz v5, :cond_1f6

    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->READ_GATE:Lcom/supertws/dubokutv/CloudSyncGate;
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$900()Lcom/supertws/dubokutv/CloudSyncGate;

    move-result-object v5

    invoke-virtual {v5}, Lcom/supertws/dubokutv/CloudSyncGate;->mayUpload()Z

    move-result v5

    if-nez v5, :cond_40

    goto/16 :goto_1f6

    .line 223
    :cond_40
    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->LOCK:Ljava/lang/Object;
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$000()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_45} :catch_283
    .catchall {:try_start_24 .. :try_end_45} :catchall_280

    .line 224
    :try_start_45
    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->retrySnapshot:Lcom/supertws/dubokutv/ProgressSnapshot;
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1000()Lcom/supertws/dubokutv/ProgressSnapshot;

    move-result-object v6

    if-eqz v6, :cond_4d

    const/4 v6, 0x1

    goto :goto_4e

    :cond_4d
    const/4 v6, 0x0

    .line 225
    :goto_4e
    if-eqz v6, :cond_55

    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->retrySnapshot:Lcom/supertws/dubokutv/ProgressSnapshot;
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1000()Lcom/supertws/dubokutv/ProgressSnapshot;

    move-result-object v7

    goto :goto_59

    :cond_55
    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->latest:Lcom/supertws/dubokutv/ProgressSnapshot;
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1100()Lcom/supertws/dubokutv/ProgressSnapshot;

    move-result-object v7

    .line 226
    :goto_59
    if-eqz v6, :cond_5f

    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->retrySnapshot:Lcom/supertws/dubokutv/ProgressSnapshot;
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1002(Lcom/supertws/dubokutv/ProgressSnapshot;)Lcom/supertws/dubokutv/ProgressSnapshot;

    goto :goto_62

    :cond_5f
    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->latest:Lcom/supertws/dubokutv/ProgressSnapshot;
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1102(Lcom/supertws/dubokutv/ProgressSnapshot;)Lcom/supertws/dubokutv/ProgressSnapshot;

    .line 227
    :goto_62
    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->latestImmediate:Z
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1200()Z

    move-result v8

    .line 228
    if-eqz v6, :cond_6e

    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->latest:Lcom/supertws/dubokutv/ProgressSnapshot;
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1100()Lcom/supertws/dubokutv/ProgressSnapshot;

    move-result-object v6

    if-nez v6, :cond_71

    :cond_6e
    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->latestImmediate:Z
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1202(Z)Z

    .line 229
    :cond_71
    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->captureVersion:J
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$100()J

    move-result-wide v9

    .line 230
    monitor-exit v5
    :try_end_76
    .catchall {:try_start_45 .. :try_end_76} :catchall_1f3

    .line 231
    if-nez v7, :cond_7a

    goto/16 :goto_1f6

    .line 232
    :cond_7a
    :try_start_7a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->lastUploadAt:J
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1300()J

    move-result-wide v11

    sub-long/2addr v5, v11

    const-wide/16 v11, 0x7530

    sub-long/2addr v11, v5

    .line 233
    if-nez v8, :cond_c1

    cmp-long v5, v11, v3

    if-lez v5, :cond_c1

    .line 235
    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->LOCK:Ljava/lang/Object;
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$000()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_91} :catch_283
    .catchall {:try_start_7a .. :try_end_91} :catchall_280

    .line 236
    :try_start_91
    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->latestImmediate:Z
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1200()Z

    move-result v6

    .line 237
    if-eqz v6, :cond_a8

    .line 238
    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->latest:Lcom/supertws/dubokutv/ProgressSnapshot;
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1100()Lcom/supertws/dubokutv/ProgressSnapshot;

    move-result-object v8

    if-eqz v8, :cond_a4

    .line 239
    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->latest:Lcom/supertws/dubokutv/ProgressSnapshot;
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1100()Lcom/supertws/dubokutv/ProgressSnapshot;

    move-result-object v7

    .line 240
    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->latest:Lcom/supertws/dubokutv/ProgressSnapshot;
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1102(Lcom/supertws/dubokutv/ProgressSnapshot;)Lcom/supertws/dubokutv/ProgressSnapshot;

    .line 242
    :cond_a4
    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->latestImmediate:Z
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1202(Z)Z

    goto :goto_b7

    .line 243
    :cond_a8
    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->retrySnapshot:Lcom/supertws/dubokutv/ProgressSnapshot;
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1000()Lcom/supertws/dubokutv/ProgressSnapshot;

    move-result-object v8

    if-nez v8, :cond_b7

    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->latest:Lcom/supertws/dubokutv/ProgressSnapshot;
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1100()Lcom/supertws/dubokutv/ProgressSnapshot;

    move-result-object v8

    if-nez v8, :cond_b7

    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->latest:Lcom/supertws/dubokutv/ProgressSnapshot;
    invoke-static {v7}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1102(Lcom/supertws/dubokutv/ProgressSnapshot;)Lcom/supertws/dubokutv/ProgressSnapshot;

    .line 244
    :cond_b7
    :goto_b7
    monitor-exit v5

    .line 245
    if-nez v6, :cond_bd

    .line 246
    nop

    .line 247
    goto/16 :goto_1f7

    .line 249
    :cond_bd
    goto :goto_c1

    .line 244
    :catchall_be
    move-exception v6

    monitor-exit v5
    :try_end_c0
    .catchall {:try_start_91 .. :try_end_c0} :catchall_be

    :try_start_c0
    throw v6

    .line 251
    :cond_c1
    :goto_c1
    iget-wide v5, p0, Lcom/supertws/dubokutv/CloudSyncClient$2;->val$generation:J

    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->cloudGeneration:J
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$500()J

    move-result-wide v11

    cmp-long v8, v5, v11

    if-nez v8, :cond_1f6

    # invokes: Lcom/supertws/dubokutv/CloudSyncClient;->cloudSyncEnabled()Z
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$600()Z

    move-result v5

    if-nez v5, :cond_d3

    goto/16 :goto_1f6

    .line 252
    :cond_d3
    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->appContext:Landroid/content/Context;
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1400()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/supertws/dubokutv/FamilyIdentity;->familySecret()Ljava/lang/String;

    move-result-object v5

    .line 253
    iget-object v6, v7, Lcom/supertws/dubokutv/ProgressSnapshot;->familyId:Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/supertws/dubokutv/CloudSyncClient;->registerFamily(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 254
    iget-wide v11, p0, Lcom/supertws/dubokutv/CloudSyncClient$2;->val$generation:J

    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->cloudGeneration:J
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$500()J

    move-result-wide v13

    cmp-long v8, v11, v13

    if-nez v8, :cond_1f6

    # invokes: Lcom/supertws/dubokutv/CloudSyncClient;->cloudSyncEnabled()Z
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$600()Z

    move-result v8

    if-nez v8, :cond_f7

    goto/16 :goto_1f6

    .line 255
    :cond_f7
    if-nez v6, :cond_128

    .line 256
    # invokes: Lcom/supertws/dubokutv/CloudSyncClient;->dirtyPrefs()Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1500()Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "cloudDirty"

    invoke-interface {v5, v6, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 257
    # invokes: Lcom/supertws/dubokutv/CloudSyncClient;->dirtyPrefs()Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1500()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "cloudAuthRejected"

    invoke-interface {v5, v6, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_1f6

    .line 258
    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->LOCK:Ljava/lang/Object;
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$000()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_11b} :catch_283
    .catchall {:try_start_c0 .. :try_end_11b} :catchall_280

    :try_start_11b
    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->retrySnapshot:Lcom/supertws/dubokutv/ProgressSnapshot;
    invoke-static {v7}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1002(Lcom/supertws/dubokutv/ProgressSnapshot;)Lcom/supertws/dubokutv/ProgressSnapshot;

    monitor-exit v5
    :try_end_11f
    .catchall {:try_start_11b .. :try_end_11f} :catchall_125

    .line 259
    :try_start_11f
    # invokes: Lcom/supertws/dubokutv/CloudSyncClient;->nextBackoff()J
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1600()J

    move-result-wide v11
    :try_end_123
    .catch Ljava/lang/Exception; {:try_start_11f .. :try_end_123} :catch_283
    .catchall {:try_start_11f .. :try_end_123} :catchall_280

    goto/16 :goto_1f7

    .line 258
    :catchall_125
    move-exception v6

    :try_start_126
    monitor-exit v5
    :try_end_127
    .catchall {:try_start_126 .. :try_end_127} :catchall_125

    :try_start_127
    throw v6

    .line 263
    :cond_128
    iget-wide v11, p0, Lcom/supertws/dubokutv/CloudSyncClient$2;->val$generation:J

    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->cloudGeneration:J
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$500()J

    move-result-wide v13

    cmp-long v6, v11, v13

    if-nez v6, :cond_1e0

    # invokes: Lcom/supertws/dubokutv/CloudSyncClient;->cloudSyncEnabled()Z
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$600()Z

    move-result v6

    if-eqz v6, :cond_1e0

    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->READ_GATE:Lcom/supertws/dubokutv/CloudSyncGate;
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$900()Lcom/supertws/dubokutv/CloudSyncGate;

    move-result-object v6

    invoke-virtual {v6}, Lcom/supertws/dubokutv/CloudSyncGate;->mayUpload()Z

    move-result v6

    if-nez v6, :cond_144

    goto/16 :goto_1e0

    .line 267
    :cond_144
    invoke-static {v7, v5}, Lcom/supertws/dubokutv/CloudSyncClient;->put(Lcom/supertws/dubokutv/ProgressSnapshot;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1ad

    .line 268
    iget-wide v5, p0, Lcom/supertws/dubokutv/CloudSyncClient$2;->val$generation:J

    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->cloudGeneration:J
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$500()J

    move-result-wide v7

    cmp-long v11, v5, v7

    if-nez v11, :cond_1f6

    # invokes: Lcom/supertws/dubokutv/CloudSyncClient;->cloudSyncEnabled()Z
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$600()Z

    move-result v5

    if-nez v5, :cond_15c

    goto/16 :goto_1f6

    .line 269
    :cond_15c
    const-string v5, "R2Sync"

    const-string v6, "Cloud upload succeeded"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->retryCount:I
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1702(I)I

    .line 271
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->lastUploadAt:J
    invoke-static {v5, v6}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1302(J)J

    .line 272
    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->LOCK:Ljava/lang/Object;
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$000()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_172
    .catch Ljava/lang/Exception; {:try_start_127 .. :try_end_172} :catch_283
    .catchall {:try_start_127 .. :try_end_172} :catchall_280

    .line 273
    :try_start_172
    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->captureVersion:J
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$100()J

    move-result-wide v6

    cmp-long v8, v9, v6

    if-nez v8, :cond_1a7

    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->capturePending:Z
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$400()Z

    move-result v6

    if-nez v6, :cond_1a7

    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->latest:Lcom/supertws/dubokutv/ProgressSnapshot;
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1100()Lcom/supertws/dubokutv/ProgressSnapshot;

    move-result-object v6

    if-nez v6, :cond_1a7

    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->retrySnapshot:Lcom/supertws/dubokutv/ProgressSnapshot;
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1000()Lcom/supertws/dubokutv/ProgressSnapshot;

    move-result-object v6

    if-nez v6, :cond_1a7

    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->READ_GATE:Lcom/supertws/dubokutv/CloudSyncGate;
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$900()Lcom/supertws/dubokutv/CloudSyncGate;

    move-result-object v6

    invoke-virtual {v6}, Lcom/supertws/dubokutv/CloudSyncGate;->mayUpload()Z

    move-result v6

    if-eqz v6, :cond_1a7

    .line 274
    # invokes: Lcom/supertws/dubokutv/CloudSyncClient;->dirtyPrefs()Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1500()Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "cloudDirty"

    invoke-interface {v6, v7, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 276
    :cond_1a7
    monitor-exit v5

    .line 284
    goto/16 :goto_21

    .line 276
    :catchall_1aa
    move-exception v6

    monitor-exit v5
    :try_end_1ac
    .catchall {:try_start_172 .. :try_end_1ac} :catchall_1aa

    :try_start_1ac
    throw v6

    .line 278
    :cond_1ad
    iget-wide v5, p0, Lcom/supertws/dubokutv/CloudSyncClient$2;->val$generation:J

    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->cloudGeneration:J
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$500()J

    move-result-wide v8

    cmp-long v10, v5, v8

    if-nez v10, :cond_1f6

    # invokes: Lcom/supertws/dubokutv/CloudSyncClient;->cloudSyncEnabled()Z
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$600()Z

    move-result v5

    if-nez v5, :cond_1be

    goto :goto_1f6

    .line 279
    :cond_1be
    # invokes: Lcom/supertws/dubokutv/CloudSyncClient;->dirtyPrefs()Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1500()Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "cloudDirty"

    invoke-interface {v5, v6, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 280
    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->LOCK:Ljava/lang/Object;
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$000()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1d4
    .catch Ljava/lang/Exception; {:try_start_1ac .. :try_end_1d4} :catch_283
    .catchall {:try_start_1ac .. :try_end_1d4} :catchall_280

    :try_start_1d4
    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->retrySnapshot:Lcom/supertws/dubokutv/ProgressSnapshot;
    invoke-static {v7}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1002(Lcom/supertws/dubokutv/ProgressSnapshot;)Lcom/supertws/dubokutv/ProgressSnapshot;

    monitor-exit v5
    :try_end_1d8
    .catchall {:try_start_1d4 .. :try_end_1d8} :catchall_1dd

    .line 281
    :try_start_1d8
    # invokes: Lcom/supertws/dubokutv/CloudSyncClient;->nextBackoff()J
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1600()J

    move-result-wide v11
    :try_end_1dc
    .catch Ljava/lang/Exception; {:try_start_1d8 .. :try_end_1dc} :catch_283
    .catchall {:try_start_1d8 .. :try_end_1dc} :catchall_280

    .line 282
    goto :goto_1f7

    .line 280
    :catchall_1dd
    move-exception v6

    :try_start_1de
    monitor-exit v5
    :try_end_1df
    .catchall {:try_start_1de .. :try_end_1df} :catchall_1dd

    :try_start_1df
    throw v6

    .line 264
    :cond_1e0
    :goto_1e0
    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->LOCK:Ljava/lang/Object;
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$000()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1e5
    .catch Ljava/lang/Exception; {:try_start_1df .. :try_end_1e5} :catch_283
    .catchall {:try_start_1df .. :try_end_1e5} :catchall_280

    :try_start_1e5
    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->latest:Lcom/supertws/dubokutv/ProgressSnapshot;
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1100()Lcom/supertws/dubokutv/ProgressSnapshot;

    move-result-object v6

    if-nez v6, :cond_1ee

    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->latest:Lcom/supertws/dubokutv/ProgressSnapshot;
    invoke-static {v7}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1102(Lcom/supertws/dubokutv/ProgressSnapshot;)Lcom/supertws/dubokutv/ProgressSnapshot;

    :cond_1ee
    monitor-exit v5

    .line 265
    goto :goto_1f6

    .line 264
    :catchall_1f0
    move-exception v6

    monitor-exit v5
    :try_end_1f2
    .catchall {:try_start_1e5 .. :try_end_1f2} :catchall_1f0

    :try_start_1f2
    throw v6
    :try_end_1f3
    .catch Ljava/lang/Exception; {:try_start_1f2 .. :try_end_1f3} :catch_283
    .catchall {:try_start_1f2 .. :try_end_1f3} :catchall_280

    .line 230
    :catchall_1f3
    move-exception v6

    :try_start_1f4
    monitor-exit v5
    :try_end_1f5
    .catchall {:try_start_1f4 .. :try_end_1f5} :catchall_1f3

    :try_start_1f5
    throw v6
    :try_end_1f6
    .catch Ljava/lang/Exception; {:try_start_1f5 .. :try_end_1f6} :catch_283
    .catchall {:try_start_1f5 .. :try_end_1f6} :catchall_280

    .line 287
    :cond_1f6
    :goto_1f6
    move-wide v11, v3

    :goto_1f7
    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->LOCK:Ljava/lang/Object;
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$000()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 288
    :try_start_1fc
    iget-wide v6, p0, Lcom/supertws/dubokutv/CloudSyncClient$2;->val$generation:J

    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->cloudGeneration:J
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$500()J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-eqz v10, :cond_208

    goto/16 :goto_27a

    .line 290
    :cond_208
    # invokes: Lcom/supertws/dubokutv/CloudSyncClient;->cloudSyncEnabled()Z
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$600()Z

    move-result v6

    if-nez v6, :cond_221

    .line 291
    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->latest:Lcom/supertws/dubokutv/ProgressSnapshot;
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1102(Lcom/supertws/dubokutv/ProgressSnapshot;)Lcom/supertws/dubokutv/ProgressSnapshot;

    .line 292
    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->retrySnapshot:Lcom/supertws/dubokutv/ProgressSnapshot;
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1002(Lcom/supertws/dubokutv/ProgressSnapshot;)Lcom/supertws/dubokutv/ProgressSnapshot;

    .line 293
    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->latestImmediate:Z
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1202(Z)Z

    .line 294
    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->draining:Z
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1802(Z)Z

    .line 295
    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->drainRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1902(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 296
    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->scheduledDrain:Ljava/util/concurrent/ScheduledFuture;
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->access$702(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_27a

    .line 297
    :cond_221
    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->READ_GATE:Lcom/supertws/dubokutv/CloudSyncGate;
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$900()Lcom/supertws/dubokutv/CloudSyncGate;

    move-result-object v6

    invoke-virtual {v6}, Lcom/supertws/dubokutv/CloudSyncGate;->mayUpload()Z

    move-result v6

    if-nez v6, :cond_232

    .line 298
    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->draining:Z
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1802(Z)Z

    .line 299
    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->drainRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1902(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    goto :goto_27a

    .line 300
    :cond_232
    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->retrySnapshot:Lcom/supertws/dubokutv/ProgressSnapshot;
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1000()Lcom/supertws/dubokutv/ProgressSnapshot;

    move-result-object v6

    if-eqz v6, :cond_248

    .line 301
    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->draining:Z
    invoke-static {v0}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1802(Z)Z

    .line 302
    cmp-long v1, v11, v3

    if-lez v1, :cond_240

    goto :goto_244

    :cond_240
    # invokes: Lcom/supertws/dubokutv/CloudSyncClient;->nextBackoff()J
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1600()J

    move-result-wide v11

    :goto_244
    # invokes: Lcom/supertws/dubokutv/CloudSyncClient;->scheduleDrainLocked(JZ)V
    invoke-static {v11, v12, v0}, Lcom/supertws/dubokutv/CloudSyncClient;->access$2000(JZ)V

    goto :goto_27a

    .line 303
    :cond_248
    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->latest:Lcom/supertws/dubokutv/ProgressSnapshot;
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1100()Lcom/supertws/dubokutv/ProgressSnapshot;

    move-result-object v3

    if-eqz v3, :cond_26e

    .line 304
    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->draining:Z
    invoke-static {v0}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1802(Z)Z

    .line 305
    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->READ_GATE:Lcom/supertws/dubokutv/CloudSyncGate;
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$900()Lcom/supertws/dubokutv/CloudSyncGate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/supertws/dubokutv/CloudSyncGate;->mayUpload()Z

    move-result v0

    if-eqz v0, :cond_267

    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->latestImmediate:Z
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1200()Z

    move-result v0

    invoke-static {v11, v12, v0}, Lcom/supertws/dubokutv/CloudSyncClient;->pendingDrainDelay(JZ)J

    move-result-wide v0

    # invokes: Lcom/supertws/dubokutv/CloudSyncClient;->scheduleDrainLocked(JZ)V
    invoke-static {v0, v1, v2}, Lcom/supertws/dubokutv/CloudSyncClient;->access$2000(JZ)V

    goto :goto_27a

    .line 306
    :cond_267
    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->draining:Z
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1802(Z)Z

    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->drainRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1902(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    goto :goto_27a

    .line 308
    :cond_26e
    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->draining:Z
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1802(Z)Z

    .line 309
    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->drainRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1902(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 310
    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->scheduledDrain:Ljava/util/concurrent/ScheduledFuture;
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->access$702(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 311
    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->scheduledRetryBackoff:Z
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->access$802(Z)Z

    .line 313
    :goto_27a
    monitor-exit v5

    .line 314
    :goto_27b
    goto/16 :goto_324

    .line 313
    :catchall_27d
    move-exception v0

    monitor-exit v5
    :try_end_27f
    .catchall {:try_start_1fc .. :try_end_27f} :catchall_27d

    throw v0

    .line 287
    :catchall_280
    move-exception v5

    goto/16 :goto_328

    .line 285
    :catch_283
    move-exception v5

    :try_start_284
    const-string v6, "R2Sync"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Upload deferred: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a4
    .catchall {:try_start_284 .. :try_end_2a4} :catchall_280

    .line 287
    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->LOCK:Ljava/lang/Object;
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$000()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 288
    :try_start_2a9
    iget-wide v6, p0, Lcom/supertws/dubokutv/CloudSyncClient$2;->val$generation:J

    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->cloudGeneration:J
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$500()J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-eqz v10, :cond_2b4

    goto :goto_321

    .line 290
    :cond_2b4
    # invokes: Lcom/supertws/dubokutv/CloudSyncClient;->cloudSyncEnabled()Z
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$600()Z

    move-result v6

    if-nez v6, :cond_2cd

    .line 291
    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->latest:Lcom/supertws/dubokutv/ProgressSnapshot;
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1102(Lcom/supertws/dubokutv/ProgressSnapshot;)Lcom/supertws/dubokutv/ProgressSnapshot;

    .line 292
    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->retrySnapshot:Lcom/supertws/dubokutv/ProgressSnapshot;
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1002(Lcom/supertws/dubokutv/ProgressSnapshot;)Lcom/supertws/dubokutv/ProgressSnapshot;

    .line 293
    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->latestImmediate:Z
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1202(Z)Z

    .line 294
    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->draining:Z
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1802(Z)Z

    .line 295
    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->drainRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1902(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 296
    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->scheduledDrain:Ljava/util/concurrent/ScheduledFuture;
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->access$702(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_321

    .line 297
    :cond_2cd
    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->READ_GATE:Lcom/supertws/dubokutv/CloudSyncGate;
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$900()Lcom/supertws/dubokutv/CloudSyncGate;

    move-result-object v6

    invoke-virtual {v6}, Lcom/supertws/dubokutv/CloudSyncGate;->mayUpload()Z

    move-result v6

    if-nez v6, :cond_2de

    .line 298
    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->draining:Z
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1802(Z)Z

    .line 299
    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->drainRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1902(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    goto :goto_321

    .line 300
    :cond_2de
    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->retrySnapshot:Lcom/supertws/dubokutv/ProgressSnapshot;
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1000()Lcom/supertws/dubokutv/ProgressSnapshot;

    move-result-object v6

    if-eqz v6, :cond_2ef

    .line 301
    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->draining:Z
    invoke-static {v0}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1802(Z)Z

    .line 302
    # invokes: Lcom/supertws/dubokutv/CloudSyncClient;->nextBackoff()J
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1600()J

    move-result-wide v1

    # invokes: Lcom/supertws/dubokutv/CloudSyncClient;->scheduleDrainLocked(JZ)V
    invoke-static {v1, v2, v0}, Lcom/supertws/dubokutv/CloudSyncClient;->access$2000(JZ)V

    goto :goto_321

    .line 303
    :cond_2ef
    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->latest:Lcom/supertws/dubokutv/ProgressSnapshot;
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1100()Lcom/supertws/dubokutv/ProgressSnapshot;

    move-result-object v6

    if-eqz v6, :cond_315

    .line 304
    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->draining:Z
    invoke-static {v0}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1802(Z)Z

    .line 305
    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->READ_GATE:Lcom/supertws/dubokutv/CloudSyncGate;
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$900()Lcom/supertws/dubokutv/CloudSyncGate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/supertws/dubokutv/CloudSyncGate;->mayUpload()Z

    move-result v0

    if-eqz v0, :cond_30e

    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->latestImmediate:Z
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1200()Z

    move-result v0

    invoke-static {v3, v4, v0}, Lcom/supertws/dubokutv/CloudSyncClient;->pendingDrainDelay(JZ)J

    move-result-wide v0

    # invokes: Lcom/supertws/dubokutv/CloudSyncClient;->scheduleDrainLocked(JZ)V
    invoke-static {v0, v1, v2}, Lcom/supertws/dubokutv/CloudSyncClient;->access$2000(JZ)V

    goto :goto_321

    .line 306
    :cond_30e
    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->draining:Z
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1802(Z)Z

    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->drainRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1902(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    goto :goto_321

    .line 308
    :cond_315
    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->draining:Z
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1802(Z)Z

    .line 309
    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->drainRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1902(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 310
    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->scheduledDrain:Ljava/util/concurrent/ScheduledFuture;
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->access$702(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 311
    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->scheduledRetryBackoff:Z
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->access$802(Z)Z

    .line 313
    :goto_321
    monitor-exit v5

    goto/16 :goto_27b

    .line 315
    :goto_324
    return-void

    .line 313
    :catchall_325
    move-exception v0

    monitor-exit v5
    :try_end_327
    .catchall {:try_start_2a9 .. :try_end_327} :catchall_325

    throw v0

    .line 287
    :goto_328
    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->LOCK:Ljava/lang/Object;
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$000()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 288
    :try_start_32d
    iget-wide v7, p0, Lcom/supertws/dubokutv/CloudSyncClient$2;->val$generation:J

    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->cloudGeneration:J
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$500()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-nez v11, :cond_3a4

    .line 290
    # invokes: Lcom/supertws/dubokutv/CloudSyncClient;->cloudSyncEnabled()Z
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$600()Z

    move-result v7

    if-eqz v7, :cond_392

    .line 297
    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->READ_GATE:Lcom/supertws/dubokutv/CloudSyncGate;
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$900()Lcom/supertws/dubokutv/CloudSyncGate;

    move-result-object v7

    invoke-virtual {v7}, Lcom/supertws/dubokutv/CloudSyncGate;->mayUpload()Z

    move-result v7

    if-eqz v7, :cond_38b

    .line 300
    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->retrySnapshot:Lcom/supertws/dubokutv/ProgressSnapshot;
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1000()Lcom/supertws/dubokutv/ProgressSnapshot;

    move-result-object v7

    if-nez v7, :cond_380

    .line 303
    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->latest:Lcom/supertws/dubokutv/ProgressSnapshot;
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1100()Lcom/supertws/dubokutv/ProgressSnapshot;

    move-result-object v7

    if-eqz v7, :cond_373

    .line 304
    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->draining:Z
    invoke-static {v0}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1802(Z)Z

    .line 305
    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->READ_GATE:Lcom/supertws/dubokutv/CloudSyncGate;
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$900()Lcom/supertws/dubokutv/CloudSyncGate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/supertws/dubokutv/CloudSyncGate;->mayUpload()Z

    move-result v0

    if-eqz v0, :cond_36c

    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->latestImmediate:Z
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1200()Z

    move-result v0

    invoke-static {v3, v4, v0}, Lcom/supertws/dubokutv/CloudSyncClient;->pendingDrainDelay(JZ)J

    move-result-wide v0

    # invokes: Lcom/supertws/dubokutv/CloudSyncClient;->scheduleDrainLocked(JZ)V
    invoke-static {v0, v1, v2}, Lcom/supertws/dubokutv/CloudSyncClient;->access$2000(JZ)V

    goto :goto_3a4

    .line 306
    :cond_36c
    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->draining:Z
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1802(Z)Z

    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->drainRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1902(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    goto :goto_3a4

    .line 308
    :cond_373
    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->draining:Z
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1802(Z)Z

    .line 309
    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->drainRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1902(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 310
    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->scheduledDrain:Ljava/util/concurrent/ScheduledFuture;
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->access$702(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 311
    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->scheduledRetryBackoff:Z
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->access$802(Z)Z

    goto :goto_3a4

    .line 301
    :cond_380
    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->draining:Z
    invoke-static {v0}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1802(Z)Z

    .line 302
    # invokes: Lcom/supertws/dubokutv/CloudSyncClient;->nextBackoff()J
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1600()J

    move-result-wide v1

    # invokes: Lcom/supertws/dubokutv/CloudSyncClient;->scheduleDrainLocked(JZ)V
    invoke-static {v1, v2, v0}, Lcom/supertws/dubokutv/CloudSyncClient;->access$2000(JZ)V

    goto :goto_3a4

    .line 298
    :cond_38b
    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->draining:Z
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1802(Z)Z

    .line 299
    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->drainRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1902(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    goto :goto_3a4

    .line 291
    :cond_392
    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->latest:Lcom/supertws/dubokutv/ProgressSnapshot;
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1102(Lcom/supertws/dubokutv/ProgressSnapshot;)Lcom/supertws/dubokutv/ProgressSnapshot;

    .line 292
    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->retrySnapshot:Lcom/supertws/dubokutv/ProgressSnapshot;
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1002(Lcom/supertws/dubokutv/ProgressSnapshot;)Lcom/supertws/dubokutv/ProgressSnapshot;

    .line 293
    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->latestImmediate:Z
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1202(Z)Z

    .line 294
    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->draining:Z
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1802(Z)Z

    .line 295
    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->drainRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1902(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 296
    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->scheduledDrain:Ljava/util/concurrent/ScheduledFuture;
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->access$702(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 313
    :cond_3a4
    :goto_3a4
    monitor-exit v6
    :try_end_3a5
    .catchall {:try_start_32d .. :try_end_3a5} :catchall_3a6

    .line 314
    throw v5

    .line 313
    :catchall_3a6
    move-exception v0

    :try_start_3a7
    monitor-exit v6
    :try_end_3a8
    .catchall {:try_start_3a7 .. :try_end_3a8} :catchall_3a6

    throw v0

    .line 212
    :cond_3a9
    :goto_3a9
    :try_start_3a9
    monitor-exit v0

    return-void

    .line 215
    :catchall_3ab
    move-exception v1

    monitor-exit v0
    :try_end_3ad
    .catchall {:try_start_3a9 .. :try_end_3ad} :catchall_3ab

    throw v1
.end method
