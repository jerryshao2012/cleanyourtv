.class Lcom/supertws/dubokutv/LanSyncManager$2;
.super Ljava/lang/Object;
.source "LanSyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/supertws/dubokutv/LanSyncManager;->handleIncomingJson(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/supertws/dubokutv/LanSyncManager;

.field final synthetic val$detailPageUrl:Ljava/lang/String;

.field final synthetic val$durationInMillis:J

.field final synthetic val$episode:Ljava/lang/String;

.field final synthetic val$fromDevice:Ljava/lang/String;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$posterUrl:Ljava/lang/String;

.field final synthetic val$progressInMillis:J

.field final synthetic val$remoteModifiedAt:J

.field final synthetic val$videoPageUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/supertws/dubokutv/LanSyncManager;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 183
    iput-object p1, p0, Lcom/supertws/dubokutv/LanSyncManager$2;->this$0:Lcom/supertws/dubokutv/LanSyncManager;

    iput-object p2, p0, Lcom/supertws/dubokutv/LanSyncManager$2;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/supertws/dubokutv/LanSyncManager$2;->val$detailPageUrl:Ljava/lang/String;

    iput-wide p4, p0, Lcom/supertws/dubokutv/LanSyncManager$2;->val$remoteModifiedAt:J

    iput-object p6, p0, Lcom/supertws/dubokutv/LanSyncManager$2;->val$episode:Ljava/lang/String;

    iput-wide p7, p0, Lcom/supertws/dubokutv/LanSyncManager$2;->val$progressInMillis:J

    iput-object p9, p0, Lcom/supertws/dubokutv/LanSyncManager$2;->val$posterUrl:Ljava/lang/String;

    iput-object p10, p0, Lcom/supertws/dubokutv/LanSyncManager$2;->val$videoPageUrl:Ljava/lang/String;

    iput-object p11, p0, Lcom/supertws/dubokutv/LanSyncManager$2;->val$id:Ljava/lang/String;

    iput-wide p12, p0, Lcom/supertws/dubokutv/LanSyncManager$2;->val$durationInMillis:J

    iput-object p14, p0, Lcom/supertws/dubokutv/LanSyncManager$2;->val$fromDevice:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 33

    move-object/from16 v1, p0

    const-string v0, "Synced newer remote progress for: "

    const-string v2, "Ignored progress for: "

    const-string v3, "Error writing sync record: "

    .line 186
    const-class v4, Lcom/supertws/dubokutv/LanSyncManager;

    monitor-enter v4

    .line 187
    :try_start_0
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->access$400()Z

    move-result v5

    if-nez v5, :cond_0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    return-void

    :cond_0
    const/4 v5, 0x0

    .line 190
    :try_start_1
    iget-object v6, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->this$0:Lcom/supertws/dubokutv/LanSyncManager;

    invoke-static {v6}, Lcom/supertws/dubokutv/LanSyncManager;->access$500(Lcom/supertws/dubokutv/LanSyncManager;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "record_database"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v5}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v6, :cond_2

    if-eqz v6, :cond_1

    .line 299
    :try_start_2
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catch_0
    :cond_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    return-void

    :cond_2
    :try_start_4
    const-string v7, "SELECT id, episode, progressInMillis, modifiedAt, durationInMillis, videoPageUrl, detailPageUrl, posterUrl FROM records WHERE name = ? OR (detailPageUrl != \'\' AND detailPageUrl = ?) ORDER BY modifiedAt DESC LIMIT 1"

    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/String;

    .line 193
    iget-object v11, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$name:Ljava/lang/String;

    aput-object v11, v10, v8

    iget-object v11, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$detailPageUrl:Ljava/lang/String;

    const/4 v12, 0x1

    aput-object v11, v10, v12

    invoke-virtual {v6, v7, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    const/4 v10, 0x5

    if-eqz v7, :cond_4

    .line 204
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 205
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 206
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 207
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    const/4 v9, 0x3

    .line 208
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    const/4 v9, 0x4

    .line 209
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 210
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v8, 0x6

    .line 211
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x7

    .line 212
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    :cond_3
    move-object v8, v5

    move-object v9, v8

    move-object v11, v9

    move-object v12, v11

    move-object v15, v12

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    .line 214
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-wide/from16 v13, v18

    goto :goto_1

    :cond_4
    move-object v8, v5

    move-object v9, v8

    move-object v11, v9

    move-object v12, v11

    move-object v15, v12

    const-wide/16 v13, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x0

    :goto_1
    if-nez v11, :cond_5

    move-object/from16 v22, v11

    :goto_2
    const/4 v10, 0x1

    goto :goto_4

    :cond_5
    move-object/from16 v22, v11

    .line 225
    iget-wide v10, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$remoteModifiedAt:J

    cmp-long v23, v10, v13

    if-lez v23, :cond_6

    :goto_3
    goto :goto_2

    :cond_6
    cmp-long v23, v10, v13

    if-nez v23, :cond_8

    .line 229
    iget-object v10, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$episode:Ljava/lang/String;

    invoke-static {v10}, Lcom/supertws/dubokutv/LanSyncManager;->parseEpisodeNum(Ljava/lang/String;)I

    move-result v10

    .line 230
    invoke-static {v15}, Lcom/supertws/dubokutv/LanSyncManager;->parseEpisodeNum(Ljava/lang/String;)I

    move-result v11

    if-le v10, v11, :cond_7

    goto :goto_3

    :cond_7
    if-ne v10, v11, :cond_8

    .line 233
    iget-wide v10, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$progressInMillis:J

    cmp-long v23, v10, v16

    if-lez v23, :cond_8

    goto :goto_3

    :cond_8
    const/4 v10, 0x0

    :goto_4
    const-wide/16 v23, 0x3e8

    if-nez v10, :cond_a

    const-string v0, "LanSyncManager"

    .line 240
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$name:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (remote: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$episode:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " @"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$progressInMillis:J

    div-long v7, v7, v23

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "s [mod="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$remoteModifiedAt:J

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "], local: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " @"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v7, v16, v23

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "s [mod="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "])"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v6, :cond_9

    .line 299
    :try_start_5
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catch_1
    :cond_9
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    return-void

    .line 245
    :cond_a
    :try_start_7
    iget-object v2, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$posterUrl:Ljava/lang/String;

    if-eqz v2, :cond_c

    const-string v10, "http://"

    invoke-virtual {v2, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$posterUrl:Ljava/lang/String;

    const-string v10, "https://"

    invoke-virtual {v2, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 246
    :cond_b
    iget-object v12, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$posterUrl:Ljava/lang/String;

    goto :goto_5

    :cond_c
    if-eqz v12, :cond_d

    goto :goto_5

    :cond_d
    const-string v12, ""

    .line 247
    :goto_5
    iget-object v2, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$detailPageUrl:Ljava/lang/String;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    iget-object v2, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$detailPageUrl:Ljava/lang/String;

    const-string v10, "example.com"

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 248
    iget-object v8, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$detailPageUrl:Ljava/lang/String;

    goto :goto_6

    :cond_e
    if-eqz v8, :cond_f

    goto :goto_6

    :cond_f
    const-string v8, ""

    .line 249
    :goto_6
    iget-object v2, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$videoPageUrl:Ljava/lang/String;

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v2, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$videoPageUrl:Ljava/lang/String;

    const-string v10, "example.com"

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 250
    iget-object v9, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$videoPageUrl:Ljava/lang/String;

    goto :goto_7

    :cond_10
    if-eqz v9, :cond_11

    goto :goto_7

    :cond_11
    const-string v9, ""

    :goto_7
    .line 252
    iget-object v2, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$id:Ljava/lang/String;

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_12

    iget-object v2, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$id:Ljava/lang/String;

    goto :goto_8

    :cond_12
    if-eqz v22, :cond_13

    move-object/from16 v2, v22

    goto :goto_8

    :cond_13
    move-object v2, v5

    :goto_8
    if-eqz v2, :cond_14

    .line 253
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_15

    :cond_14
    iget-object v2, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$name:Ljava/lang/String;

    .line 255
    :cond_15
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const-string v11, "id"

    .line 256
    invoke-virtual {v10, v11, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "name"

    .line 257
    iget-object v11, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$name:Ljava/lang/String;

    invoke-virtual {v10, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "episode"

    .line 258
    iget-object v11, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$episode:Ljava/lang/String;

    invoke-virtual {v10, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "progressInMillis"

    .line 259
    iget-wide v13, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$progressInMillis:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "durationInMillis"

    .line 260
    iget-wide v13, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$durationInMillis:J

    const-wide/16 v18, 0x0

    cmp-long v11, v13, v18

    if-lez v11, :cond_16

    goto :goto_9

    :cond_16
    move-wide/from16 v13, v20

    :goto_9
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "createdAt"

    .line 261
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "modifiedAt"

    .line 262
    iget-wide v13, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$remoteModifiedAt:J

    const-wide/16 v18, 0x0

    cmp-long v11, v13, v18

    if-lez v11, :cond_17

    goto :goto_a

    :cond_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    :goto_a
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "videoPageUrl"

    .line 263
    invoke-virtual {v10, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "detailPageUrl"

    .line 264
    invoke-virtual {v10, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "posterUrl"

    .line 265
    invoke-virtual {v10, v2, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->access$400()Z

    move-result v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez v2, :cond_19

    if-eqz v6, :cond_18

    .line 299
    :try_start_8
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catch_2
    :cond_18
    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    return-void

    .line 267
    :cond_19
    :try_start_a
    iget-object v2, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$name:Ljava/lang/String;

    iget-wide v11, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$remoteModifiedAt:J

    invoke-static {v2, v11, v12}, Lcom/supertws/dubokutv/LanSyncManager;->onRemoteProgress(Ljava/lang/String;J)V

    if-eqz v22, :insert_remote_record

    const-string v2, "records"

    const-string v7, "id = ?"

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v22, v14, v13

    move-object/from16 v27, v6

    const-string v28, "records"

    move-object/from16 v29, v10

    move-object/from16 v30, v7

    move-object/from16 v31, v14

    const/16 v32, 0x5

    invoke-virtual/range {v27 .. v32}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v13

    if-lez v13, :insert_remote_record

    goto :remote_record_written

    :insert_remote_record
    const-string v2, "records"

    const/4 v7, 0x5

    .line 268
    invoke-virtual {v6, v2, v5, v10, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    :remote_record_written
    .line 269
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->access$600()Lcom/supertws/dubokutv/HandoffProgress;

    move-result-object v25

    iget-object v2, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$name:Ljava/lang/String;

    iget-object v7, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$episode:Ljava/lang/String;

    iget-wide v10, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$progressInMillis:J

    iget-wide v12, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$remoteModifiedAt:J

    move-object/from16 v26, v2

    move-object/from16 v27, v7

    move-wide/from16 v28, v10

    move-object/from16 v30, v9

    move-wide/from16 v31, v12

    invoke-virtual/range {v25 .. v32}, Lcom/supertws/dubokutv/HandoffProgress;->offer(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 274
    :try_start_b
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_b

    :catch_3
    nop

    move-object v5, v6

    :goto_b
    if-eqz v22, :cond_1b

    .line 280
    :try_start_c
    iget-object v2, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$episode:Ljava/lang/String;

    if-eqz v2, :cond_1b

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 281
    iget-wide v6, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$durationInMillis:J

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-lez v2, :cond_1a

    move-wide/from16 v20, v6

    :cond_1a
    cmp-long v2, v20, v8

    if-lez v2, :cond_1b

    const-wide/16 v6, 0x64

    mul-long v16, v16, v6

    .line 283
    div-long v8, v16, v20

    long-to-int v2, v8

    .line 284
    iget-wide v8, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$progressInMillis:J

    mul-long v8, v8, v6

    div-long v8, v8, v20

    long-to-int v6, v8

    if-ne v2, v6, :cond_1b

    const/4 v8, 0x0

    goto :goto_c

    :cond_1b
    const/4 v8, 0x1

    :goto_c
    if-eqz v8, :cond_1c

    .line 292
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->bumpSyncVersion()V

    :cond_1c
    const-string v2, "LanSyncManager"

    .line 294
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$name:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$episode:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " @"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$progressInMillis:J

    div-long v9, v9, v23

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "s from "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$fromDevice:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (bumpUi="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-eqz v5, :cond_1d

    .line 299
    :goto_d
    :try_start_d
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_f

    :catchall_0
    move-exception v0

    move-object v5, v6

    goto :goto_10

    :catch_4
    move-exception v0

    move-object v5, v6

    goto :goto_e

    :catchall_1
    move-exception v0

    goto :goto_10

    :catch_5
    move-exception v0

    :goto_e
    :try_start_e
    const-string v2, "LanSyncManager"

    .line 296
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    if-eqz v5, :cond_1d

    goto :goto_d

    .line 302
    :catch_6
    :cond_1d
    :goto_f
    :try_start_f
    monitor-exit v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    return-void

    :goto_10
    if-eqz v5, :cond_1e

    .line 299
    :try_start_10
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 301
    :catch_7
    :cond_1e
    :try_start_11
    throw v0

    :catchall_2
    move-exception v0

    .line 302
    monitor-exit v4
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    throw v0
.end method
