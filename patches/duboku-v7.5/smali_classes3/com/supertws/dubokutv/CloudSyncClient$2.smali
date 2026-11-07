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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 153
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 154
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->access$502(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 155
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->access$602(Z)Z

    .line 156
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    .line 157
    nop

    .line 160
    :goto_0
    const-wide/16 v3, 0x0

    const/4 v0, 0x1

    :try_start_1
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$700()Lcom/supertws/dubokutv/CloudSyncGate;

    move-result-object v5

    invoke-virtual {v5}, Lcom/supertws/dubokutv/CloudSyncGate;->mayUpload()Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_6

    .line 164
    :cond_0
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$000()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 165
    :try_start_2
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$800()Lcom/supertws/dubokutv/ProgressSnapshot;

    move-result-object v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 166
    :goto_1
    if-eqz v6, :cond_2

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$800()Lcom/supertws/dubokutv/ProgressSnapshot;

    move-result-object v7

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$900()Lcom/supertws/dubokutv/ProgressSnapshot;

    move-result-object v7

    .line 167
    :goto_2
    if-eqz v6, :cond_3

    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->access$802(Lcom/supertws/dubokutv/ProgressSnapshot;)Lcom/supertws/dubokutv/ProgressSnapshot;

    goto :goto_3

    :cond_3
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->access$902(Lcom/supertws/dubokutv/ProgressSnapshot;)Lcom/supertws/dubokutv/ProgressSnapshot;

    .line 168
    :goto_3
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1000()Z

    move-result v8

    .line 169
    if-eqz v6, :cond_4

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$900()Lcom/supertws/dubokutv/ProgressSnapshot;

    move-result-object v6

    if-nez v6, :cond_5

    :cond_4
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1002(Z)Z

    .line 170
    :cond_5
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$100()J

    move-result-wide v9

    .line 171
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 172
    if-nez v7, :cond_6

    goto/16 :goto_6

    .line 173
    :cond_6
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1100()J

    move-result-wide v11

    sub-long/2addr v5, v11

    const-wide/16 v11, 0x7530

    sub-long/2addr v11, v5

    .line 174
    if-nez v8, :cond_b

    cmp-long v5, v11, v3

    if-lez v5, :cond_b

    .line 176
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$000()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    .line 177
    :try_start_4
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1000()Z

    move-result v6

    .line 178
    if-eqz v6, :cond_8

    .line 179
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$900()Lcom/supertws/dubokutv/ProgressSnapshot;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 180
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$900()Lcom/supertws/dubokutv/ProgressSnapshot;

    move-result-object v7

    .line 181
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->access$902(Lcom/supertws/dubokutv/ProgressSnapshot;)Lcom/supertws/dubokutv/ProgressSnapshot;

    .line 183
    :cond_7
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1002(Z)Z

    goto :goto_4

    .line 184
    :cond_8
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$800()Lcom/supertws/dubokutv/ProgressSnapshot;

    move-result-object v8

    if-nez v8, :cond_9

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$900()Lcom/supertws/dubokutv/ProgressSnapshot;

    move-result-object v8

    if-nez v8, :cond_9

    invoke-static {v7}, Lcom/supertws/dubokutv/CloudSyncClient;->access$902(Lcom/supertws/dubokutv/ProgressSnapshot;)Lcom/supertws/dubokutv/ProgressSnapshot;

    .line 185
    :cond_9
    :goto_4
    monitor-exit v5

    .line 186
    if-nez v6, :cond_a

    .line 187
    nop

    .line 188
    goto/16 :goto_7

    .line 190
    :cond_a
    goto :goto_5

    .line 185
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v6

    .line 192
    :cond_b
    :goto_5
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1200()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/supertws/dubokutv/FamilyIdentity;->familySecret()Ljava/lang/String;

    move-result-object v5

    .line 193
    iget-object v6, v7, Lcom/supertws/dubokutv/ProgressSnapshot;->familyId:Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/supertws/dubokutv/CloudSyncClient;->registerFamily(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 194
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1300()Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "cloudDirty"

    invoke-interface {v5, v6, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 195
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1300()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "cloudAuthRejected"

    invoke-interface {v5, v6, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_e

    .line 196
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$000()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    :try_start_6
    invoke-static {v7}, Lcom/supertws/dubokutv/CloudSyncClient;->access$802(Lcom/supertws/dubokutv/ProgressSnapshot;)Lcom/supertws/dubokutv/ProgressSnapshot;

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 197
    :try_start_7
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1400()J

    move-result-wide v11
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto/16 :goto_7

    .line 196
    :catchall_1
    move-exception v6

    :try_start_8
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v6

    .line 201
    :cond_c
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$700()Lcom/supertws/dubokutv/CloudSyncGate;

    move-result-object v6

    invoke-virtual {v6}, Lcom/supertws/dubokutv/CloudSyncGate;->mayUpload()Z

    move-result v6

    if-nez v6, :cond_f

    .line 202
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$000()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    :try_start_a
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$900()Lcom/supertws/dubokutv/ProgressSnapshot;

    move-result-object v6

    if-nez v6, :cond_d

    invoke-static {v7}, Lcom/supertws/dubokutv/CloudSyncClient;->access$902(Lcom/supertws/dubokutv/ProgressSnapshot;)Lcom/supertws/dubokutv/ProgressSnapshot;

    :cond_d
    monitor-exit v5

    .line 203
    nop

    .line 223
    :cond_e
    :goto_6
    move-wide v11, v3

    goto/16 :goto_7

    .line 202
    :catchall_2
    move-exception v6

    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v6

    .line 205
    :cond_f
    invoke-static {v7, v5}, Lcom/supertws/dubokutv/CloudSyncClient;->put(Lcom/supertws/dubokutv/ProgressSnapshot;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 206
    const-string v5, "R2Sync"

    const-string v6, "Cloud upload succeeded"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1502(I)I

    .line 208
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1102(J)J

    .line 209
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$000()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 210
    :try_start_c
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$100()J

    move-result-wide v6

    cmp-long v8, v9, v6

    if-nez v8, :cond_10

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$400()Z

    move-result v6

    if-nez v6, :cond_10

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$900()Lcom/supertws/dubokutv/ProgressSnapshot;

    move-result-object v6

    if-nez v6, :cond_10

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$800()Lcom/supertws/dubokutv/ProgressSnapshot;

    move-result-object v6

    if-nez v6, :cond_10

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$700()Lcom/supertws/dubokutv/CloudSyncGate;

    move-result-object v6

    invoke-virtual {v6}, Lcom/supertws/dubokutv/CloudSyncGate;->mayUpload()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 211
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1300()Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "cloudDirty"

    invoke-interface {v6, v7, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 213
    :cond_10
    monitor-exit v5

    .line 220
    goto/16 :goto_0

    .line 213
    :catchall_3
    move-exception v6

    monitor-exit v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    throw v6

    .line 215
    :cond_11
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1300()Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "cloudDirty"

    invoke-interface {v5, v6, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 216
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$000()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    :try_start_e
    invoke-static {v7}, Lcom/supertws/dubokutv/CloudSyncClient;->access$802(Lcom/supertws/dubokutv/ProgressSnapshot;)Lcom/supertws/dubokutv/ProgressSnapshot;

    monitor-exit v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 217
    :try_start_f
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1400()J

    move-result-wide v11
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 218
    nop

    .line 223
    :goto_7
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$000()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 224
    :try_start_10
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$700()Lcom/supertws/dubokutv/CloudSyncGate;

    move-result-object v6

    invoke-virtual {v6}, Lcom/supertws/dubokutv/CloudSyncGate;->mayUpload()Z

    move-result v6

    if-nez v6, :cond_12

    .line 225
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1602(Z)Z

    .line 226
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1702(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    goto :goto_9

    .line 227
    :cond_12
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$800()Lcom/supertws/dubokutv/ProgressSnapshot;

    move-result-object v6

    if-eqz v6, :cond_14

    .line 228
    invoke-static {v0}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1602(Z)Z

    .line 229
    cmp-long v1, v11, v3

    if-lez v1, :cond_13

    goto :goto_8

    :cond_13
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1400()J

    move-result-wide v11

    :goto_8
    invoke-static {v11, v12, v0}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1800(JZ)V

    goto :goto_9

    .line 230
    :cond_14
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$900()Lcom/supertws/dubokutv/ProgressSnapshot;

    move-result-object v3

    if-eqz v3, :cond_16

    .line 231
    invoke-static {v0}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1602(Z)Z

    .line 232
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$700()Lcom/supertws/dubokutv/CloudSyncGate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/supertws/dubokutv/CloudSyncGate;->mayUpload()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1000()Z

    move-result v0

    invoke-static {v11, v12, v0}, Lcom/supertws/dubokutv/CloudSyncClient;->pendingDrainDelay(JZ)J

    move-result-wide v0

    invoke-static {v0, v1, v2}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1800(JZ)V

    goto :goto_9

    .line 233
    :cond_15
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1602(Z)Z

    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1702(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    goto :goto_9

    .line 235
    :cond_16
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1602(Z)Z

    .line 236
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1702(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 237
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->access$502(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 238
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->access$602(Z)Z

    .line 240
    :goto_9
    monitor-exit v5

    .line 241
    :goto_a
    goto/16 :goto_c

    .line 240
    :catchall_4
    move-exception v0

    monitor-exit v5
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    throw v0

    .line 216
    :catchall_5
    move-exception v6

    :try_start_11
    monitor-exit v5
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    :try_start_12
    throw v6
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    .line 171
    :catchall_6
    move-exception v6

    :try_start_13
    monitor-exit v5
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    :try_start_14
    throw v6
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    .line 223
    :catchall_7
    move-exception v5

    goto/16 :goto_d

    .line 221
    :catch_0
    move-exception v5

    :try_start_15
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
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    .line 223
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$000()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 224
    :try_start_16
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$700()Lcom/supertws/dubokutv/CloudSyncGate;

    move-result-object v6

    invoke-virtual {v6}, Lcom/supertws/dubokutv/CloudSyncGate;->mayUpload()Z

    move-result v6

    if-nez v6, :cond_17

    .line 225
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1602(Z)Z

    .line 226
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1702(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    goto :goto_b

    .line 227
    :cond_17
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$800()Lcom/supertws/dubokutv/ProgressSnapshot;

    move-result-object v6

    if-eqz v6, :cond_18

    .line 228
    invoke-static {v0}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1602(Z)Z

    .line 229
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1400()J

    move-result-wide v1

    invoke-static {v1, v2, v0}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1800(JZ)V

    goto :goto_b

    .line 230
    :cond_18
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$900()Lcom/supertws/dubokutv/ProgressSnapshot;

    move-result-object v6

    if-eqz v6, :cond_1a

    .line 231
    invoke-static {v0}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1602(Z)Z

    .line 232
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$700()Lcom/supertws/dubokutv/CloudSyncGate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/supertws/dubokutv/CloudSyncGate;->mayUpload()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1000()Z

    move-result v0

    invoke-static {v3, v4, v0}, Lcom/supertws/dubokutv/CloudSyncClient;->pendingDrainDelay(JZ)J

    move-result-wide v0

    invoke-static {v0, v1, v2}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1800(JZ)V

    goto :goto_b

    .line 233
    :cond_19
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1602(Z)Z

    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1702(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    goto :goto_b

    .line 235
    :cond_1a
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1602(Z)Z

    .line 236
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1702(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 237
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->access$502(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 238
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->access$602(Z)Z

    .line 240
    :goto_b
    monitor-exit v5

    goto/16 :goto_a

    .line 242
    :goto_c
    return-void

    .line 240
    :catchall_8
    move-exception v0

    monitor-exit v5
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    throw v0

    .line 223
    :goto_d
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$000()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 224
    :try_start_17
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$700()Lcom/supertws/dubokutv/CloudSyncGate;

    move-result-object v7

    invoke-virtual {v7}, Lcom/supertws/dubokutv/CloudSyncGate;->mayUpload()Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 227
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$800()Lcom/supertws/dubokutv/ProgressSnapshot;

    move-result-object v7

    if-nez v7, :cond_1d

    .line 230
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$900()Lcom/supertws/dubokutv/ProgressSnapshot;

    move-result-object v7

    if-eqz v7, :cond_1c

    .line 231
    invoke-static {v0}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1602(Z)Z

    .line 232
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$700()Lcom/supertws/dubokutv/CloudSyncGate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/supertws/dubokutv/CloudSyncGate;->mayUpload()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1000()Z

    move-result v0

    invoke-static {v3, v4, v0}, Lcom/supertws/dubokutv/CloudSyncClient;->pendingDrainDelay(JZ)J

    move-result-wide v0

    invoke-static {v0, v1, v2}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1800(JZ)V

    goto :goto_e

    .line 233
    :cond_1b
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1602(Z)Z

    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1702(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    goto :goto_e

    .line 235
    :cond_1c
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1602(Z)Z

    .line 236
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1702(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 237
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->access$502(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 238
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->access$602(Z)Z

    goto :goto_e

    .line 228
    :cond_1d
    invoke-static {v0}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1602(Z)Z

    .line 229
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1400()J

    move-result-wide v1

    invoke-static {v1, v2, v0}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1800(JZ)V

    goto :goto_e

    .line 225
    :cond_1e
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1602(Z)Z

    .line 226
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1702(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 240
    :goto_e
    monitor-exit v6
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    .line 241
    throw v5

    .line 240
    :catchall_9
    move-exception v0

    :try_start_18
    monitor-exit v6
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    throw v0

    .line 156
    :catchall_a
    move-exception v1

    :try_start_19
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_a

    throw v1
.end method
