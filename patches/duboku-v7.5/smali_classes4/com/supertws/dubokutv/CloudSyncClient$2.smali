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
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 197
    iput-wide p1, p0, Lcom/supertws/dubokutv/CloudSyncClient$2;->val$generation:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 199
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetLOCK()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 200
    :try_start_0
    iget-wide v1, p0, Lcom/supertws/dubokutv/CloudSyncClient$2;->val$generation:J

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetcloudGeneration()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-nez v5, :cond_2b

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$smcloudSyncEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_10

    .line 201
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputscheduledDrain(Ljava/util/concurrent/ScheduledFuture;)V

    .line 202
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputscheduledRetryBackoff(Z)V

    .line 203
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    .line 204
    nop

    .line 207
    :goto_0
    const-wide/16 v3, 0x0

    const/4 v0, 0x1

    :try_start_1
    iget-wide v5, p0, Lcom/supertws/dubokutv/CloudSyncClient$2;->val$generation:J

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetcloudGeneration()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-nez v9, :cond_17

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$smcloudSyncEnabled()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetREAD_GATE()Lcom/supertws/dubokutv/CloudSyncGate;

    move-result-object v5

    invoke-virtual {v5}, Lcom/supertws/dubokutv/CloudSyncGate;->mayUpload()Z

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_7

    .line 211
    :cond_1
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetLOCK()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 212
    :try_start_2
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetretrySnapshot()Lcom/supertws/dubokutv/ProgressSnapshot;

    move-result-object v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    .line 213
    :goto_1
    if-eqz v6, :cond_3

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetretrySnapshot()Lcom/supertws/dubokutv/ProgressSnapshot;

    move-result-object v7

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetlatest()Lcom/supertws/dubokutv/ProgressSnapshot;

    move-result-object v7

    .line 214
    :goto_2
    if-eqz v6, :cond_4

    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputretrySnapshot(Lcom/supertws/dubokutv/ProgressSnapshot;)V

    goto :goto_3

    :cond_4
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputlatest(Lcom/supertws/dubokutv/ProgressSnapshot;)V

    .line 215
    :goto_3
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetlatestImmediate()Z

    move-result v8

    .line 216
    if-eqz v6, :cond_5

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetlatest()Lcom/supertws/dubokutv/ProgressSnapshot;

    move-result-object v6

    if-nez v6, :cond_6

    :cond_5
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputlatestImmediate(Z)V

    .line 217
    :cond_6
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetcaptureVersion()J

    move-result-wide v9

    .line 218
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 219
    if-nez v7, :cond_7

    goto/16 :goto_7

    .line 220
    :cond_7
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetlastUploadAt()J

    move-result-wide v11

    sub-long/2addr v5, v11

    const-wide/16 v11, 0x7530

    sub-long/2addr v11, v5

    .line 221
    if-nez v8, :cond_c

    cmp-long v5, v11, v3

    if-lez v5, :cond_c

    .line 223
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetLOCK()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    .line 224
    :try_start_4
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetlatestImmediate()Z

    move-result v6

    .line 225
    if-eqz v6, :cond_9

    .line 226
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetlatest()Lcom/supertws/dubokutv/ProgressSnapshot;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 227
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetlatest()Lcom/supertws/dubokutv/ProgressSnapshot;

    move-result-object v7

    .line 228
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputlatest(Lcom/supertws/dubokutv/ProgressSnapshot;)V

    .line 230
    :cond_8
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputlatestImmediate(Z)V

    goto :goto_4

    .line 231
    :cond_9
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetretrySnapshot()Lcom/supertws/dubokutv/ProgressSnapshot;

    move-result-object v8

    if-nez v8, :cond_a

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetlatest()Lcom/supertws/dubokutv/ProgressSnapshot;

    move-result-object v8

    if-nez v8, :cond_a

    invoke-static {v7}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputlatest(Lcom/supertws/dubokutv/ProgressSnapshot;)V

    .line 232
    :cond_a
    :goto_4
    monitor-exit v5

    .line 233
    if-nez v6, :cond_b

    .line 234
    nop

    .line 235
    goto/16 :goto_8

    .line 237
    :cond_b
    goto :goto_5

    .line 232
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v6

    .line 239
    :cond_c
    :goto_5
    iget-wide v5, p0, Lcom/supertws/dubokutv/CloudSyncClient$2;->val$generation:J

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetcloudGeneration()J

    move-result-wide v11

    cmp-long v8, v5, v11

    if-nez v8, :cond_17

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$smcloudSyncEnabled()Z

    move-result v5

    if-nez v5, :cond_d

    goto/16 :goto_7

    .line 240
    :cond_d
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetappContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/supertws/dubokutv/FamilyIdentity;->familySecret()Ljava/lang/String;

    move-result-object v5

    .line 241
    iget-object v6, v7, Lcom/supertws/dubokutv/ProgressSnapshot;->familyId:Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/supertws/dubokutv/CloudSyncClient;->registerFamily(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 242
    iget-wide v11, p0, Lcom/supertws/dubokutv/CloudSyncClient$2;->val$generation:J

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetcloudGeneration()J

    move-result-wide v13

    cmp-long v8, v11, v13

    if-nez v8, :cond_17

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$smcloudSyncEnabled()Z

    move-result v8

    if-nez v8, :cond_e

    goto/16 :goto_7

    .line 243
    :cond_e
    if-nez v6, :cond_f

    .line 244
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$smdirtyPrefs()Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "cloudDirty"

    invoke-interface {v5, v6, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 245
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$smdirtyPrefs()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "cloudAuthRejected"

    invoke-interface {v5, v6, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_17

    .line 246
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetLOCK()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    :try_start_6
    invoke-static {v7}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputretrySnapshot(Lcom/supertws/dubokutv/ProgressSnapshot;)V

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 247
    :try_start_7
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$smnextBackoff()J

    move-result-wide v11
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto/16 :goto_8

    .line 246
    :catchall_1
    move-exception v6

    :try_start_8
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v6

    .line 251
    :cond_f
    iget-wide v11, p0, Lcom/supertws/dubokutv/CloudSyncClient$2;->val$generation:J

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetcloudGeneration()J

    move-result-wide v13

    cmp-long v6, v11, v13

    if-nez v6, :cond_15

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$smcloudSyncEnabled()Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetREAD_GATE()Lcom/supertws/dubokutv/CloudSyncGate;

    move-result-object v6

    invoke-virtual {v6}, Lcom/supertws/dubokutv/CloudSyncGate;->mayUpload()Z

    move-result v6

    if-nez v6, :cond_10

    goto/16 :goto_6

    .line 255
    :cond_10
    invoke-static {v7, v5}, Lcom/supertws/dubokutv/CloudSyncClient;->put(Lcom/supertws/dubokutv/ProgressSnapshot;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 256
    iget-wide v5, p0, Lcom/supertws/dubokutv/CloudSyncClient$2;->val$generation:J

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetcloudGeneration()J

    move-result-wide v7

    cmp-long v11, v5, v7

    if-nez v11, :cond_17

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$smcloudSyncEnabled()Z

    move-result v5

    if-nez v5, :cond_11

    goto/16 :goto_7

    .line 257
    :cond_11
    const-string v5, "R2Sync"

    const-string v6, "Cloud upload succeeded"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputretryCount(I)V

    .line 259
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputlastUploadAt(J)V

    .line 260
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetLOCK()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 261
    :try_start_a
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetcaptureVersion()J

    move-result-wide v6

    cmp-long v8, v9, v6

    if-nez v8, :cond_12

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetcapturePending()Z

    move-result v6

    if-nez v6, :cond_12

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetlatest()Lcom/supertws/dubokutv/ProgressSnapshot;

    move-result-object v6

    if-nez v6, :cond_12

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetretrySnapshot()Lcom/supertws/dubokutv/ProgressSnapshot;

    move-result-object v6

    if-nez v6, :cond_12

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetREAD_GATE()Lcom/supertws/dubokutv/CloudSyncGate;

    move-result-object v6

    invoke-virtual {v6}, Lcom/supertws/dubokutv/CloudSyncGate;->mayUpload()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 262
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$smdirtyPrefs()Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "cloudDirty"

    invoke-interface {v6, v7, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 264
    :cond_12
    monitor-exit v5

    .line 272
    goto/16 :goto_0

    .line 264
    :catchall_2
    move-exception v6

    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v6

    .line 266
    :cond_13
    iget-wide v5, p0, Lcom/supertws/dubokutv/CloudSyncClient$2;->val$generation:J

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetcloudGeneration()J

    move-result-wide v8

    cmp-long v10, v5, v8

    if-nez v10, :cond_17

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$smcloudSyncEnabled()Z

    move-result v5

    if-nez v5, :cond_14

    goto :goto_7

    .line 267
    :cond_14
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$smdirtyPrefs()Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "cloudDirty"

    invoke-interface {v5, v6, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 268
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetLOCK()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :try_start_c
    invoke-static {v7}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputretrySnapshot(Lcom/supertws/dubokutv/ProgressSnapshot;)V

    monitor-exit v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 269
    :try_start_d
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$smnextBackoff()J

    move-result-wide v11
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 270
    goto :goto_8

    .line 268
    :catchall_3
    move-exception v6

    :try_start_e
    monitor-exit v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :try_start_f
    throw v6

    .line 252
    :cond_15
    :goto_6
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetLOCK()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    :try_start_10
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetlatest()Lcom/supertws/dubokutv/ProgressSnapshot;

    move-result-object v6

    if-nez v6, :cond_16

    invoke-static {v7}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputlatest(Lcom/supertws/dubokutv/ProgressSnapshot;)V

    :cond_16
    monitor-exit v5

    .line 253
    goto :goto_7

    .line 252
    :catchall_4
    move-exception v6

    monitor-exit v5
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    :try_start_11
    throw v6
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 218
    :catchall_5
    move-exception v6

    :try_start_12
    monitor-exit v5
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    :try_start_13
    throw v6
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    .line 275
    :cond_17
    :goto_7
    move-wide v11, v3

    :goto_8
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetLOCK()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 276
    :try_start_14
    iget-wide v6, p0, Lcom/supertws/dubokutv/CloudSyncClient$2;->val$generation:J

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetcloudGeneration()J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-eqz v10, :cond_18

    goto/16 :goto_a

    .line 278
    :cond_18
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$smcloudSyncEnabled()Z

    move-result v6

    if-nez v6, :cond_19

    .line 279
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputlatest(Lcom/supertws/dubokutv/ProgressSnapshot;)V

    .line 280
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputretrySnapshot(Lcom/supertws/dubokutv/ProgressSnapshot;)V

    .line 281
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputlatestImmediate(Z)V

    .line 282
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputdraining(Z)V

    .line 283
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputdrainRunnable(Ljava/lang/Runnable;)V

    .line 284
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputscheduledDrain(Ljava/util/concurrent/ScheduledFuture;)V

    goto :goto_a

    .line 285
    :cond_19
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetREAD_GATE()Lcom/supertws/dubokutv/CloudSyncGate;

    move-result-object v6

    invoke-virtual {v6}, Lcom/supertws/dubokutv/CloudSyncGate;->mayUpload()Z

    move-result v6

    if-nez v6, :cond_1a

    .line 286
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputdraining(Z)V

    .line 287
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputdrainRunnable(Ljava/lang/Runnable;)V

    goto :goto_a

    .line 288
    :cond_1a
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetretrySnapshot()Lcom/supertws/dubokutv/ProgressSnapshot;

    move-result-object v6

    if-eqz v6, :cond_1c

    .line 289
    invoke-static {v0}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputdraining(Z)V

    .line 290
    cmp-long v1, v11, v3

    if-lez v1, :cond_1b

    goto :goto_9

    :cond_1b
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$smnextBackoff()J

    move-result-wide v11

    :goto_9
    invoke-static {v11, v12, v0}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$smscheduleDrainLocked(JZ)V

    goto :goto_a

    .line 291
    :cond_1c
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetlatest()Lcom/supertws/dubokutv/ProgressSnapshot;

    move-result-object v3

    if-eqz v3, :cond_1e

    .line 292
    invoke-static {v0}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputdraining(Z)V

    .line 293
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetREAD_GATE()Lcom/supertws/dubokutv/CloudSyncGate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/supertws/dubokutv/CloudSyncGate;->mayUpload()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetlatestImmediate()Z

    move-result v0

    invoke-static {v11, v12, v0}, Lcom/supertws/dubokutv/CloudSyncClient;->pendingDrainDelay(JZ)J

    move-result-wide v0

    invoke-static {v0, v1, v2}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$smscheduleDrainLocked(JZ)V

    goto :goto_a

    .line 294
    :cond_1d
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputdraining(Z)V

    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputdrainRunnable(Ljava/lang/Runnable;)V

    goto :goto_a

    .line 296
    :cond_1e
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputdraining(Z)V

    .line 297
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputdrainRunnable(Ljava/lang/Runnable;)V

    .line 298
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputscheduledDrain(Ljava/util/concurrent/ScheduledFuture;)V

    .line 299
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputscheduledRetryBackoff(Z)V

    .line 301
    :goto_a
    monitor-exit v5

    .line 302
    :goto_b
    goto/16 :goto_d

    .line 301
    :catchall_6
    move-exception v0

    monitor-exit v5
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    throw v0

    .line 275
    :catchall_7
    move-exception v5

    goto/16 :goto_e

    .line 273
    :catch_0
    move-exception v5

    :try_start_15
    const-string v6, "R2Sync"

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Upload deferred: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    .line 275
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetLOCK()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 276
    :try_start_16
    iget-wide v6, p0, Lcom/supertws/dubokutv/CloudSyncClient$2;->val$generation:J

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetcloudGeneration()J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-eqz v10, :cond_1f

    goto :goto_c

    .line 278
    :cond_1f
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$smcloudSyncEnabled()Z

    move-result v6

    if-nez v6, :cond_20

    .line 279
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputlatest(Lcom/supertws/dubokutv/ProgressSnapshot;)V

    .line 280
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputretrySnapshot(Lcom/supertws/dubokutv/ProgressSnapshot;)V

    .line 281
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputlatestImmediate(Z)V

    .line 282
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputdraining(Z)V

    .line 283
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputdrainRunnable(Ljava/lang/Runnable;)V

    .line 284
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputscheduledDrain(Ljava/util/concurrent/ScheduledFuture;)V

    goto :goto_c

    .line 285
    :cond_20
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetREAD_GATE()Lcom/supertws/dubokutv/CloudSyncGate;

    move-result-object v6

    invoke-virtual {v6}, Lcom/supertws/dubokutv/CloudSyncGate;->mayUpload()Z

    move-result v6

    if-nez v6, :cond_21

    .line 286
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputdraining(Z)V

    .line 287
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputdrainRunnable(Ljava/lang/Runnable;)V

    goto :goto_c

    .line 288
    :cond_21
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetretrySnapshot()Lcom/supertws/dubokutv/ProgressSnapshot;

    move-result-object v6

    if-eqz v6, :cond_22

    .line 289
    invoke-static {v0}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputdraining(Z)V

    .line 290
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$smnextBackoff()J

    move-result-wide v1

    invoke-static {v1, v2, v0}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$smscheduleDrainLocked(JZ)V

    goto :goto_c

    .line 291
    :cond_22
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetlatest()Lcom/supertws/dubokutv/ProgressSnapshot;

    move-result-object v6

    if-eqz v6, :cond_24

    .line 292
    invoke-static {v0}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputdraining(Z)V

    .line 293
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetREAD_GATE()Lcom/supertws/dubokutv/CloudSyncGate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/supertws/dubokutv/CloudSyncGate;->mayUpload()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetlatestImmediate()Z

    move-result v0

    invoke-static {v3, v4, v0}, Lcom/supertws/dubokutv/CloudSyncClient;->pendingDrainDelay(JZ)J

    move-result-wide v0

    invoke-static {v0, v1, v2}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$smscheduleDrainLocked(JZ)V

    goto :goto_c

    .line 294
    :cond_23
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputdraining(Z)V

    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputdrainRunnable(Ljava/lang/Runnable;)V

    goto :goto_c

    .line 296
    :cond_24
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputdraining(Z)V

    .line 297
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputdrainRunnable(Ljava/lang/Runnable;)V

    .line 298
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputscheduledDrain(Ljava/util/concurrent/ScheduledFuture;)V

    .line 299
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputscheduledRetryBackoff(Z)V

    .line 301
    :goto_c
    monitor-exit v5

    goto/16 :goto_b

    .line 303
    :goto_d
    return-void

    .line 301
    :catchall_8
    move-exception v0

    monitor-exit v5
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    throw v0

    .line 275
    :goto_e
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetLOCK()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 276
    :try_start_17
    iget-wide v7, p0, Lcom/supertws/dubokutv/CloudSyncClient$2;->val$generation:J

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetcloudGeneration()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-nez v11, :cond_2a

    .line 278
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$smcloudSyncEnabled()Z

    move-result v7

    if-eqz v7, :cond_29

    .line 285
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetREAD_GATE()Lcom/supertws/dubokutv/CloudSyncGate;

    move-result-object v7

    invoke-virtual {v7}, Lcom/supertws/dubokutv/CloudSyncGate;->mayUpload()Z

    move-result v7

    if-eqz v7, :cond_28

    .line 288
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetretrySnapshot()Lcom/supertws/dubokutv/ProgressSnapshot;

    move-result-object v7

    if-nez v7, :cond_27

    .line 291
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetlatest()Lcom/supertws/dubokutv/ProgressSnapshot;

    move-result-object v7

    if-eqz v7, :cond_26

    .line 292
    invoke-static {v0}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputdraining(Z)V

    .line 293
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetREAD_GATE()Lcom/supertws/dubokutv/CloudSyncGate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/supertws/dubokutv/CloudSyncGate;->mayUpload()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetlatestImmediate()Z

    move-result v0

    invoke-static {v3, v4, v0}, Lcom/supertws/dubokutv/CloudSyncClient;->pendingDrainDelay(JZ)J

    move-result-wide v0

    invoke-static {v0, v1, v2}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$smscheduleDrainLocked(JZ)V

    goto :goto_f

    .line 294
    :cond_25
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputdraining(Z)V

    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputdrainRunnable(Ljava/lang/Runnable;)V

    goto :goto_f

    .line 296
    :cond_26
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputdraining(Z)V

    .line 297
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputdrainRunnable(Ljava/lang/Runnable;)V

    .line 298
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputscheduledDrain(Ljava/util/concurrent/ScheduledFuture;)V

    .line 299
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputscheduledRetryBackoff(Z)V

    goto :goto_f

    .line 289
    :cond_27
    invoke-static {v0}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputdraining(Z)V

    .line 290
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$smnextBackoff()J

    move-result-wide v1

    invoke-static {v1, v2, v0}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$smscheduleDrainLocked(JZ)V

    goto :goto_f

    .line 286
    :cond_28
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputdraining(Z)V

    .line 287
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputdrainRunnable(Ljava/lang/Runnable;)V

    goto :goto_f

    .line 279
    :cond_29
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputlatest(Lcom/supertws/dubokutv/ProgressSnapshot;)V

    .line 280
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputretrySnapshot(Lcom/supertws/dubokutv/ProgressSnapshot;)V

    .line 281
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputlatestImmediate(Z)V

    .line 282
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputdraining(Z)V

    .line 283
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputdrainRunnable(Ljava/lang/Runnable;)V

    .line 284
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputscheduledDrain(Ljava/util/concurrent/ScheduledFuture;)V

    .line 301
    :cond_2a
    :goto_f
    monitor-exit v6
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    .line 302
    throw v5

    .line 301
    :catchall_9
    move-exception v0

    :try_start_18
    monitor-exit v6
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    throw v0

    .line 200
    :cond_2b
    :goto_10
    :try_start_19
    monitor-exit v0

    return-void

    .line 203
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_a

    throw v1
.end method
