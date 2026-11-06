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

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 148
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 149
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->access$502(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 150
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->access$602(Z)Z

    .line 151
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    .line 152
    nop

    .line 157
    :goto_0
    const-wide/16 v3, 0x0

    const/4 v0, 0x1

    :try_start_1
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$000()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 158
    :try_start_2
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$700()Lcom/supertws/dubokutv/ProgressSnapshot;

    move-result-object v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    .line 159
    :goto_1
    if-eqz v6, :cond_1

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$700()Lcom/supertws/dubokutv/ProgressSnapshot;

    move-result-object v7

    goto :goto_2

    :cond_1
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$800()Lcom/supertws/dubokutv/ProgressSnapshot;

    move-result-object v7

    .line 160
    :goto_2
    if-eqz v6, :cond_2

    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->access$702(Lcom/supertws/dubokutv/ProgressSnapshot;)Lcom/supertws/dubokutv/ProgressSnapshot;

    goto :goto_3

    :cond_2
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->access$802(Lcom/supertws/dubokutv/ProgressSnapshot;)Lcom/supertws/dubokutv/ProgressSnapshot;

    .line 161
    :goto_3
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$900()Z

    move-result v8

    .line 162
    if-eqz v6, :cond_3

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$800()Lcom/supertws/dubokutv/ProgressSnapshot;

    move-result-object v6

    if-nez v6, :cond_4

    :cond_3
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->access$902(Z)Z

    .line 163
    :cond_4
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 164
    if-nez v7, :cond_5

    goto/16 :goto_6

    .line 165
    :cond_5
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1000()J

    move-result-wide v9

    sub-long/2addr v5, v9

    const-wide/16 v9, 0x7530

    sub-long/2addr v9, v5

    .line 166
    if-nez v8, :cond_a

    cmp-long v5, v9, v3

    if-lez v5, :cond_a

    .line 168
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$000()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 169
    :try_start_4
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$900()Z

    move-result v6

    .line 170
    if-eqz v6, :cond_7

    .line 171
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$800()Lcom/supertws/dubokutv/ProgressSnapshot;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 172
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$800()Lcom/supertws/dubokutv/ProgressSnapshot;

    move-result-object v7

    .line 173
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->access$802(Lcom/supertws/dubokutv/ProgressSnapshot;)Lcom/supertws/dubokutv/ProgressSnapshot;

    .line 175
    :cond_6
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->access$902(Z)Z

    goto :goto_4

    .line 176
    :cond_7
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$700()Lcom/supertws/dubokutv/ProgressSnapshot;

    move-result-object v8

    if-nez v8, :cond_8

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$800()Lcom/supertws/dubokutv/ProgressSnapshot;

    move-result-object v8

    if-nez v8, :cond_8

    invoke-static {v7}, Lcom/supertws/dubokutv/CloudSyncClient;->access$802(Lcom/supertws/dubokutv/ProgressSnapshot;)Lcom/supertws/dubokutv/ProgressSnapshot;

    .line 177
    :cond_8
    :goto_4
    monitor-exit v5

    .line 178
    if-nez v6, :cond_9

    .line 179
    nop

    .line 180
    goto/16 :goto_7

    .line 182
    :cond_9
    goto :goto_5

    .line 177
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v6

    .line 184
    :cond_a
    :goto_5
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1100()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/supertws/dubokutv/FamilyIdentity;->familySecret()Ljava/lang/String;

    move-result-object v5

    .line 185
    iget-object v6, v7, Lcom/supertws/dubokutv/ProgressSnapshot;->familyId:Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/supertws/dubokutv/CloudSyncClient;->registerFamily(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 186
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1200()Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "cloudDirty"

    invoke-interface {v5, v6, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 187
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1200()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "cloudAuthRejected"

    invoke-interface {v5, v6, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_b

    .line 188
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$000()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :try_start_6
    invoke-static {v7}, Lcom/supertws/dubokutv/CloudSyncClient;->access$702(Lcom/supertws/dubokutv/ProgressSnapshot;)Lcom/supertws/dubokutv/ProgressSnapshot;

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 189
    :try_start_7
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1300()J

    move-result-wide v9
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_7

    .line 188
    :catchall_1
    move-exception v6

    :try_start_8
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v6

    .line 206
    :cond_b
    :goto_6
    move-wide v9, v3

    goto :goto_7

    .line 193
    :cond_c
    invoke-static {v7, v5}, Lcom/supertws/dubokutv/CloudSyncClient;->put(Lcom/supertws/dubokutv/ProgressSnapshot;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 194
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1402(I)I

    .line 195
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1002(J)J

    .line 196
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1200()Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "cloudDirty"

    invoke-interface {v5, v6, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 203
    goto/16 :goto_0

    .line 198
    :cond_d
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1200()Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "cloudDirty"

    invoke-interface {v5, v6, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 199
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$000()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :try_start_a
    invoke-static {v7}, Lcom/supertws/dubokutv/CloudSyncClient;->access$702(Lcom/supertws/dubokutv/ProgressSnapshot;)Lcom/supertws/dubokutv/ProgressSnapshot;

    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 200
    :try_start_b
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1300()J

    move-result-wide v9
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 201
    nop

    .line 206
    :goto_7
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$000()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 207
    :try_start_c
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$700()Lcom/supertws/dubokutv/ProgressSnapshot;

    move-result-object v6

    if-eqz v6, :cond_f

    .line 208
    invoke-static {v0}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1502(Z)Z

    .line 209
    cmp-long v1, v9, v3

    if-lez v1, :cond_e

    goto :goto_8

    :cond_e
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1300()J

    move-result-wide v9

    :goto_8
    invoke-static {v9, v10, v0}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1600(JZ)V

    goto :goto_9

    .line 210
    :cond_f
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$800()Lcom/supertws/dubokutv/ProgressSnapshot;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 211
    invoke-static {v0}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1502(Z)Z

    .line 212
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$900()Z

    move-result v0

    invoke-static {v9, v10, v0}, Lcom/supertws/dubokutv/CloudSyncClient;->pendingDrainDelay(JZ)J

    move-result-wide v0

    invoke-static {v0, v1, v2}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1600(JZ)V

    goto :goto_9

    .line 214
    :cond_10
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1502(Z)Z

    .line 215
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1702(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 216
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->access$502(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 217
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->access$602(Z)Z

    .line 219
    :goto_9
    monitor-exit v5

    goto :goto_b

    :catchall_2
    move-exception v0

    monitor-exit v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    throw v0

    .line 199
    :catchall_3
    move-exception v6

    :try_start_d
    monitor-exit v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    throw v6
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 163
    :catchall_4
    move-exception v6

    :try_start_f
    monitor-exit v5
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :try_start_10
    throw v6
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 206
    :catchall_5
    move-exception v5

    goto :goto_c

    .line 204
    :catch_0
    move-exception v5

    :try_start_11
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
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 206
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$000()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 207
    :try_start_12
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$700()Lcom/supertws/dubokutv/ProgressSnapshot;

    move-result-object v6

    if-eqz v6, :cond_11

    .line 208
    invoke-static {v0}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1502(Z)Z

    .line 209
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1300()J

    move-result-wide v1

    invoke-static {v1, v2, v0}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1600(JZ)V

    goto :goto_a

    .line 210
    :cond_11
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$800()Lcom/supertws/dubokutv/ProgressSnapshot;

    move-result-object v6

    if-eqz v6, :cond_12

    .line 211
    invoke-static {v0}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1502(Z)Z

    .line 212
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$900()Z

    move-result v0

    invoke-static {v3, v4, v0}, Lcom/supertws/dubokutv/CloudSyncClient;->pendingDrainDelay(JZ)J

    move-result-wide v0

    invoke-static {v0, v1, v2}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1600(JZ)V

    goto :goto_a

    .line 214
    :cond_12
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1502(Z)Z

    .line 215
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1702(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 216
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->access$502(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 217
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->access$602(Z)Z

    .line 219
    :goto_a
    monitor-exit v5

    .line 220
    :goto_b
    nop

    .line 221
    return-void

    .line 219
    :catchall_6
    move-exception v0

    monitor-exit v5
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    throw v0

    .line 206
    :goto_c
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$000()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 207
    :try_start_13
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$700()Lcom/supertws/dubokutv/ProgressSnapshot;

    move-result-object v7

    if-nez v7, :cond_14

    .line 210
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$800()Lcom/supertws/dubokutv/ProgressSnapshot;

    move-result-object v7

    if-eqz v7, :cond_13

    .line 211
    invoke-static {v0}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1502(Z)Z

    .line 212
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$900()Z

    move-result v0

    invoke-static {v3, v4, v0}, Lcom/supertws/dubokutv/CloudSyncClient;->pendingDrainDelay(JZ)J

    move-result-wide v0

    invoke-static {v0, v1, v2}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1600(JZ)V

    goto :goto_d

    .line 214
    :cond_13
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1502(Z)Z

    .line 215
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1702(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 216
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->access$502(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 217
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->access$602(Z)Z

    goto :goto_d

    .line 208
    :cond_14
    invoke-static {v0}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1502(Z)Z

    .line 209
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1300()J

    move-result-wide v1

    invoke-static {v1, v2, v0}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1600(JZ)V

    .line 219
    :goto_d
    monitor-exit v6
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    .line 220
    throw v5

    .line 219
    :catchall_7
    move-exception v0

    :try_start_14
    monitor-exit v6
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    throw v0

    .line 151
    :catchall_8
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    throw v1
.end method
