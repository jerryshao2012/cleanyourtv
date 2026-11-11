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

.field final synthetic val$identity:Lcom/supertws/dubokutv/FamilyIdentity;

.field final synthetic val$messageId:Ljava/lang/String;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$posterUrl:Ljava/lang/String;

.field final synthetic val$progressInMillis:J

.field final synthetic val$remoteModifiedAt:J

.field final synthetic val$senderIp:Ljava/lang/String;

.field final synthetic val$versionJson:Lorg/json/JSONObject;

.field final synthetic val$videoPageUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/supertws/dubokutv/LanSyncManager;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;JLjava/lang/String;Lcom/supertws/dubokutv/FamilyIdentity;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 254
    iput-object p1, p0, Lcom/supertws/dubokutv/LanSyncManager$2;->this$0:Lcom/supertws/dubokutv/LanSyncManager;

    iput-object p2, p0, Lcom/supertws/dubokutv/LanSyncManager$2;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/supertws/dubokutv/LanSyncManager$2;->val$detailPageUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/supertws/dubokutv/LanSyncManager$2;->val$versionJson:Lorg/json/JSONObject;

    iput-wide p5, p0, Lcom/supertws/dubokutv/LanSyncManager$2;->val$remoteModifiedAt:J

    iput-object p7, p0, Lcom/supertws/dubokutv/LanSyncManager$2;->val$fromDevice:Ljava/lang/String;

    iput-object p8, p0, Lcom/supertws/dubokutv/LanSyncManager$2;->val$identity:Lcom/supertws/dubokutv/FamilyIdentity;

    iput-object p9, p0, Lcom/supertws/dubokutv/LanSyncManager$2;->val$episode:Ljava/lang/String;

    iput-wide p10, p0, Lcom/supertws/dubokutv/LanSyncManager$2;->val$progressInMillis:J

    iput-object p12, p0, Lcom/supertws/dubokutv/LanSyncManager$2;->val$messageId:Ljava/lang/String;

    iput-object p13, p0, Lcom/supertws/dubokutv/LanSyncManager$2;->val$senderIp:Ljava/lang/String;

    iput-object p14, p0, Lcom/supertws/dubokutv/LanSyncManager$2;->val$posterUrl:Ljava/lang/String;

    iput-object p15, p0, Lcom/supertws/dubokutv/LanSyncManager$2;->val$videoPageUrl:Ljava/lang/String;

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/supertws/dubokutv/LanSyncManager$2;->val$id:Ljava/lang/String;

    move-wide/from16 p1, p17

    iput-wide p1, p0, Lcom/supertws/dubokutv/LanSyncManager$2;->val$durationInMillis:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 38

    .line 257
    move-object/from16 v1, p0

    const-class v2, Lcom/supertws/dubokutv/LanSyncManager;

    monitor-enter v2

    .line 258
    :try_start_5
    # invokes: Lcom/supertws/dubokutv/LanSyncManager;->isLanSyncEnabled()Z
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->access$400()Z

    move-result v0

    if-nez v0, :cond_d

    monitor-exit v2
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_3db

    return-void

    .line 259
    :cond_d
    nop

    .line 261
    const/4 v3, 0x0

    :try_start_f
    iget-object v0, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->this$0:Lcom/supertws/dubokutv/LanSyncManager;

    # getter for: Lcom/supertws/dubokutv/LanSyncManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/supertws/dubokutv/LanSyncManager;->access$500(Lcom/supertws/dubokutv/LanSyncManager;)Landroid/content/Context;

    move-result-object v0

    const-string v4, "record_database"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1c} :catch_3ab
    .catchall {:try_start_f .. :try_end_1c} :catchall_3a7

    .line 262
    if-nez v6, :cond_27

    .line 381
    if-eqz v6, :cond_25

    .line 382
    :try_start_20
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_24
    .catchall {:try_start_20 .. :try_end_23} :catchall_3db

    goto :goto_25

    :catch_24
    move-exception v0

    :cond_25
    :goto_25
    :try_start_25
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_3db

    .line 262
    return-void

    .line 264
    :cond_27
    :try_start_27
    const-string v0, "SELECT id, episode, progressInMillis, modifiedAt, durationInMillis, videoPageUrl, detailPageUrl, posterUrl FROM records WHERE name = ? OR (detailPageUrl != \'\' AND detailPageUrl = ?) ORDER BY modifiedAt DESC LIMIT 1"

    iget-object v4, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$name:Ljava/lang/String;

    iget-object v7, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$detailPageUrl:Ljava/lang/String;

    filled-new-array {v4, v7}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 266
    nop

    .line 267
    nop

    .line 268
    nop

    .line 269
    nop

    .line 270
    nop

    .line 271
    nop

    .line 272
    nop

    .line 273
    nop

    .line 274
    const/4 v4, 0x5

    const/4 v12, 0x1

    const-wide/16 v13, 0x0

    if-eqz v0, :cond_85

    .line 275
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_6f

    .line 276
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 277
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 278
    const/4 v9, 0x2

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 279
    const/4 v11, 0x3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 280
    const/4 v11, 0x4

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 281
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 282
    const/4 v5, 0x6

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 283
    const/4 v12, 0x7

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_78

    .line 275
    :cond_6f
    move-object v5, v3

    move-object v7, v5

    move-object v8, v7

    move-object v11, v8

    move-object v12, v11

    move-wide v9, v13

    move-wide v15, v9

    move-wide/from16 v17, v15

    .line 285
    :goto_78
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v12

    move-wide/from16 v22, v15

    move-wide/from16 v25, v17

    move-object v12, v7

    move-object v15, v8

    move-wide/from16 v16, v9

    goto :goto_90

    .line 274
    :cond_85
    move-object v0, v3

    move-object v5, v0

    move-object v11, v5

    move-object v12, v11

    move-object v15, v12

    move-wide/from16 v16, v13

    move-wide/from16 v22, v16

    move-wide/from16 v25, v22

    .line 288
    :goto_90
    iget-object v7, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$versionJson:Lorg/json/JSONObject;

    invoke-static {v7}, Lcom/supertws/dubokutv/SyncVersionStore;->fromJson(Lorg/json/JSONObject;)Lcom/supertws/dubokutv/SyncVersion;

    move-result-object v7

    .line 289
    if-nez v7, :cond_ab

    new-instance v27, Lcom/supertws/dubokutv/SyncVersion;

    iget-wide v7, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$remoteModifiedAt:J

    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v28

    iget-object v7, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$fromDevice:Ljava/lang/String;

    const-wide/16 v30, 0x0

    move-object/from16 v32, v7

    invoke-direct/range {v27 .. v32}, Lcom/supertws/dubokutv/SyncVersion;-><init>(JJLjava/lang/String;)V

    move-object/from16 v7, v27

    .line 290
    :cond_ab
    iget-object v8, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$identity:Lcom/supertws/dubokutv/FamilyIdentity;

    invoke-virtual {v8}, Lcom/supertws/dubokutv/FamilyIdentity;->deviceId()Ljava/lang/String;

    move-result-object v24

    .line 291
    iget-object v8, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->this$0:Lcom/supertws/dubokutv/LanSyncManager;

    # getter for: Lcom/supertws/dubokutv/LanSyncManager;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/supertws/dubokutv/LanSyncManager;->access$500(Lcom/supertws/dubokutv/LanSyncManager;)Landroid/content/Context;

    move-result-object v19

    iget-object v8, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$name:Ljava/lang/String;

    .line 292
    if-eqz v5, :cond_c5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_c2

    goto :goto_c5

    :cond_c2
    move-object/from16 v21, v5

    goto :goto_c9

    :cond_c5
    :goto_c5
    iget-object v9, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$detailPageUrl:Ljava/lang/String;

    move-object/from16 v21, v9

    .line 291
    :goto_c9
    move-object/from16 v20, v8

    invoke-static/range {v19 .. v24}, Lcom/supertws/dubokutv/SyncVersionStore;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/supertws/dubokutv/SyncVersion;

    move-result-object v8

    move-wide/from16 v9, v22

    .line 295
    nop

    .line 296
    if-nez v12, :cond_da

    .line 297
    move-object/from16 v22, v0

    move-wide/from16 v19, v13

    const/4 v0, 0x1

    goto :goto_11f

    .line 299
    :cond_da
    move-wide/from16 v19, v13

    iget-wide v13, v7, Lcom/supertws/dubokutv/SyncVersion;->utcMillis:J

    iget-wide v3, v7, Lcom/supertws/dubokutv/SyncVersion;->logicalCounter:J

    move-object/from16 v22, v0

    iget-object v0, v7, Lcom/supertws/dubokutv/SyncVersion;->deviceId:Ljava/lang/String;

    move-wide/from16 v29, v3

    iget-wide v3, v8, Lcom/supertws/dubokutv/SyncVersion;->utcMillis:J

    move-wide/from16 v32, v3

    iget-wide v3, v8, Lcom/supertws/dubokutv/SyncVersion;->logicalCounter:J

    iget-object v8, v8, Lcom/supertws/dubokutv/SyncVersion;->deviceId:Ljava/lang/String;

    move-object/from16 v31, v0

    move-wide/from16 v34, v3

    move-object/from16 v36, v8

    move-wide/from16 v27, v13

    invoke-static/range {v27 .. v36}, Lcom/supertws/dubokutv/SyncVersion;->compare(JJLjava/lang/String;JJLjava/lang/String;)I

    move-result v0

    .line 302
    if-lez v0, :cond_fe

    const/4 v0, 0x1

    goto :goto_11f

    .line 303
    :cond_fe
    .line 314
    :cond_11e
    const/4 v0, 0x0

    :goto_11f
    const-wide/16 v3, 0x3e8

    if-nez v0, :cond_19c

    .line 315
    const-string v0, "LanSyncManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignored progress for: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " (remote: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$episode:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " @"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v7, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$progressInMillis:J

    div-long/2addr v7, v3

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "s [mod="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v7, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$remoteModifiedAt:J

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "], local: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " @"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    div-long v3, v16, v3

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "s [mod="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "])"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v0, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$fromDevice:Ljava/lang/String;

    iget-object v3, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$messageId:Ljava/lang/String;

    iget-object v4, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$senderIp:Ljava/lang/String;

    const-string v5, "already_current"

    invoke-static {v0, v3, v5}, Lcom/supertws/dubokutv/LanSyncManager;->completeIncomingProgress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    # invokes: Lcom/supertws/dubokutv/LanSyncManager;->sendProgressAck(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v3, v4, v5}, Lcom/supertws/dubokutv/LanSyncManager;->access$600(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_193
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_193} :catch_3a4
    .catchall {:try_start_27 .. :try_end_193} :catchall_3a2

    .line 381
    if-eqz v6, :cond_19a

    .line 382
    :try_start_195
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_198
    .catch Ljava/lang/Exception; {:try_start_195 .. :try_end_198} :catch_199
    .catchall {:try_start_195 .. :try_end_198} :catchall_3db

    goto :goto_19a

    :catch_199
    move-exception v0

    :cond_19a
    :goto_19a
    :try_start_19a
    monitor-exit v2
    :try_end_19b
    .catchall {:try_start_19a .. :try_end_19b} :catchall_3db

    .line 317
    return-void

    .line 321
    :cond_19c
    :try_start_19c
    iget-object v0, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$posterUrl:Ljava/lang/String;

    if-eqz v0, :cond_1b7

    iget-object v0, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$posterUrl:Ljava/lang/String;

    const-string v8, "http://"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b4

    iget-object v0, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$posterUrl:Ljava/lang/String;

    const-string v8, "https://"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b7

    .line 322
    :cond_1b4
    iget-object v0, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$posterUrl:Ljava/lang/String;

    goto :goto_1be

    :cond_1b7
    if-eqz v22, :cond_1bc

    move-object/from16 v0, v22

    goto :goto_1be

    :cond_1bc
    const-string v0, ""

    .line 323
    :goto_1be
    iget-object v8, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$detailPageUrl:Ljava/lang/String;

    if-eqz v8, :cond_1d7

    iget-object v8, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$detailPageUrl:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1d7

    iget-object v8, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$detailPageUrl:Ljava/lang/String;

    const-string v9, "example.com"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1d7

    .line 324
    iget-object v5, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$detailPageUrl:Ljava/lang/String;

    goto :goto_1dc

    :cond_1d7
    if-eqz v5, :cond_1da

    goto :goto_1dc

    :cond_1da
    const-string v5, ""

    .line 325
    :goto_1dc
    iget-object v8, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$videoPageUrl:Ljava/lang/String;

    if-eqz v8, :cond_1f5

    iget-object v8, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$videoPageUrl:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1f5

    iget-object v8, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$videoPageUrl:Ljava/lang/String;

    const-string v9, "example.com"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1f5

    .line 326
    iget-object v11, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$videoPageUrl:Ljava/lang/String;

    goto :goto_1fa

    :cond_1f5
    if-eqz v11, :cond_1f8

    goto :goto_1fa

    :cond_1f8
    const-string v11, ""

    :goto_1fa
    move-object v13, v11

    .line 328
    iget-object v8, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$id:Ljava/lang/String;

    if-eqz v8, :cond_20a

    iget-object v8, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$id:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_20a

    iget-object v8, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$id:Ljava/lang/String;

    goto :goto_20b

    :cond_20a
    move-object v8, v12

    .line 329
    :goto_20b
    if-eqz v8, :cond_213

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_215

    :cond_213
    iget-object v8, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$name:Ljava/lang/String;

    .line 331
    :cond_215
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 332
    const-string v10, "id"

    invoke-virtual {v9, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string v8, "name"

    iget-object v10, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$name:Ljava/lang/String;

    invoke-virtual {v9, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v8, "episode"

    iget-object v10, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$episode:Ljava/lang/String;

    invoke-virtual {v9, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string v8, "progressInMillis"

    iget-wide v10, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$progressInMillis:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 336
    const-string v8, "durationInMillis"

    iget-wide v10, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$durationInMillis:J

    cmp-long v14, v10, v19

    if-lez v14, :cond_243

    iget-wide v10, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$durationInMillis:J

    goto :goto_245

    :cond_243
    move-wide/from16 v10, v25

    :goto_245
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 337
    const-string v8, "createdAt"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 338
    iget-wide v10, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$remoteModifiedAt:J

    move-wide/from16 v22, v3

    iget-wide v3, v7, Lcom/supertws/dubokutv/SyncVersion;->utcMillis:J

    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 339
    const-string v8, "modifiedAt"

    cmp-long v10, v3, v19

    if-lez v10, :cond_26b

    move-wide v10, v3

    goto :goto_275

    :cond_26b
    iget-object v10, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->this$0:Lcom/supertws/dubokutv/LanSyncManager;

    # getter for: Lcom/supertws/dubokutv/LanSyncManager;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/supertws/dubokutv/LanSyncManager;->access$500(Lcom/supertws/dubokutv/LanSyncManager;)Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/supertws/dubokutv/FamilyClock;->now(Landroid/content/Context;)J

    move-result-wide v10

    :goto_275
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 340
    const-string v8, "videoPageUrl"

    invoke-virtual {v9, v8, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string v8, "detailPageUrl"

    invoke-virtual {v9, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const-string v8, "posterUrl"

    invoke-virtual {v9, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    # invokes: Lcom/supertws/dubokutv/LanSyncManager;->isLanSyncEnabled()Z
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->access$400()Z

    move-result v0
    :try_end_28f
    .catch Ljava/lang/Exception; {:try_start_19c .. :try_end_28f} :catch_3a4
    .catchall {:try_start_19c .. :try_end_28f} :catchall_3a2

    if-nez v0, :cond_29a

    .line 381
    if-eqz v6, :cond_298

    .line 382
    :try_start_293
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_296
    .catch Ljava/lang/Exception; {:try_start_293 .. :try_end_296} :catch_297
    .catchall {:try_start_293 .. :try_end_296} :catchall_3db

    goto :goto_298

    :catch_297
    move-exception v0

    :cond_298
    :goto_298
    :try_start_298
    monitor-exit v2
    :try_end_299
    .catchall {:try_start_298 .. :try_end_299} :catchall_3db

    .line 343
    return-void

    .line 344
    :cond_29a
    :try_start_29a
    iget-object v0, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$name:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/supertws/dubokutv/LanSyncManager;->onRemoteProgress(Ljava/lang/String;J)V

    .line 345
    if-nez v12, :cond_2a7

    move-object v4, v7

    move-object v8, v9

    move-object/from16 v3, v24

    const/4 v0, 0x0

    goto :goto_2bb

    :cond_2a7
    move-object/from16 v27, v7

    const-string v7, "records"

    move-object v8, v9

    const-string v9, "id = ?"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x5

    move-object/from16 v3, v24

    move-object/from16 v4, v27

    invoke-virtual/range {v6 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    .line 347
    :goto_2bb
    if-nez v0, :cond_2d2

    const-string v0, "records"

    const/4 v7, 0x5

    const/4 v9, 0x0

    invoke-virtual {v6, v0, v9, v8, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v7

    cmp-long v0, v7, v19

    if-ltz v0, :cond_2ca

    goto :goto_2d3

    .line 348
    :cond_2ca
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Record write failed"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_2d2
    const/4 v9, 0x0

    .line 350
    :goto_2d3
    # getter for: Lcom/supertws/dubokutv/LanSyncManager;->sHandoff:Lcom/supertws/dubokutv/HandoffProgress;
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->access$700()Lcom/supertws/dubokutv/HandoffProgress;

    move-result-object v27

    iget-object v0, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$name:Ljava/lang/String;

    iget-object v7, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$episode:Ljava/lang/String;

    iget-wide v10, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$progressInMillis:J

    move-wide/from16 v30, v10

    iget-wide v9, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$remoteModifiedAt:J

    move-object/from16 v28, v0

    move-object/from16 v29, v7

    move-wide/from16 v33, v9

    move-object/from16 v32, v13

    invoke-virtual/range {v27 .. v34}, Lcom/supertws/dubokutv/HandoffProgress;->offer(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)V
    :try_end_2ec
    .catch Ljava/lang/Exception; {:try_start_29a .. :try_end_2ec} :catch_3a4
    .catchall {:try_start_29a .. :try_end_2ec} :catchall_3a2

    .line 355
    :try_start_2ec
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2ef
    .catch Ljava/lang/Exception; {:try_start_2ec .. :try_end_2ef} :catch_2f3
    .catchall {:try_start_2ec .. :try_end_2ef} :catchall_3a2

    .line 356
    nop

    .line 357
    const/16 v18, 0x0

    goto :goto_2f6

    :catch_2f3
    move-exception v0

    move-object/from16 v18, v6

    .line 358
    :goto_2f6
    :try_start_2f6
    iget-object v0, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->this$0:Lcom/supertws/dubokutv/LanSyncManager;

    # getter for: Lcom/supertws/dubokutv/LanSyncManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/supertws/dubokutv/LanSyncManager;->access$500(Lcom/supertws/dubokutv/LanSyncManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v6, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$name:Ljava/lang/String;

    invoke-static {v0, v6, v5, v4, v3}, Lcom/supertws/dubokutv/SyncVersionStore;->rememberRemote(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/supertws/dubokutv/SyncVersion;Ljava/lang/String;)V

    .line 359
    iget-object v0, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$fromDevice:Ljava/lang/String;

    iget-object v3, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$messageId:Ljava/lang/String;

    iget-object v4, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$senderIp:Ljava/lang/String;

    const-string v5, "applied"

    invoke-static {v0, v3, v5}, Lcom/supertws/dubokutv/LanSyncManager;->completeIncomingProgress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    # invokes: Lcom/supertws/dubokutv/LanSyncManager;->sendProgressAck(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v3, v4, v5}, Lcom/supertws/dubokutv/LanSyncManager;->access$600(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    nop

    .line 363
    if-eqz v12, :cond_33b

    iget-object v0, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$episode:Ljava/lang/String;

    if-eqz v0, :cond_33b

    iget-object v0, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$episode:Ljava/lang/String;

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33b

    .line 364
    iget-wide v3, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$durationInMillis:J

    cmp-long v0, v3, v19

    if-lez v0, :cond_325

    iget-wide v3, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$durationInMillis:J

    move-wide/from16 v25, v3

    .line 365
    :cond_325
    cmp-long v0, v25, v19

    if-lez v0, :cond_33b

    .line 366
    const-wide/16 v3, 0x64

    mul-long v16, v16, v3

    div-long v5, v16, v25

    long-to-int v0, v5

    .line 367
    iget-wide v5, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$progressInMillis:J

    mul-long v5, v5, v3

    div-long v5, v5, v25

    long-to-int v3, v5

    .line 368
    if-ne v0, v3, :cond_33b

    .line 369
    const/4 v5, 0x0

    goto :goto_33c

    .line 374
    :cond_33b
    const/4 v5, 0x1

    :goto_33c
    if-eqz v5, :cond_341

    .line 375
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->bumpSyncVersion()V

    .line 377
    :cond_341
    const-string v0, "LanSyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Synced newer remote progress for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$episode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " @"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v6, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$progressInMillis:J

    div-long v6, v6, v22

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "s from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$fromDevice:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (bumpUi="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_391
    .catch Ljava/lang/Exception; {:try_start_2f6 .. :try_end_391} :catch_39e
    .catchall {:try_start_2f6 .. :try_end_391} :catchall_399

    .line 381
    if-eqz v18, :cond_3ce

    .line 382
    :try_start_393
    invoke-virtual/range {v18 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_396
    .catch Ljava/lang/Exception; {:try_start_393 .. :try_end_396} :catch_397
    .catchall {:try_start_393 .. :try_end_396} :catchall_3db

    goto :goto_3ce

    :catch_397
    move-exception v0

    goto :goto_3ce

    .line 381
    :catchall_399
    move-exception v0

    move-object v3, v0

    move-object/from16 v6, v18

    goto :goto_3d3

    .line 378
    :catch_39e
    move-exception v0

    move-object/from16 v3, v18

    goto :goto_3ad

    .line 381
    :catchall_3a2
    move-exception v0

    goto :goto_3d2

    .line 378
    :catch_3a4
    move-exception v0

    move-object v3, v6

    goto :goto_3ad

    .line 381
    :catchall_3a7
    move-exception v0

    move-object v3, v0

    const/4 v6, 0x0

    goto :goto_3d3

    .line 378
    :catch_3ab
    move-exception v0

    const/4 v3, 0x0

    .line 379
    :goto_3ad
    :try_start_3ad
    const-string v4, "LanSyncManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error writing sync record: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c9
    .catchall {:try_start_3ad .. :try_end_3c9} :catchall_3d0

    .line 381
    if-eqz v3, :cond_3ce

    .line 382
    :try_start_3cb
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3ce
    .catch Ljava/lang/Exception; {:try_start_3cb .. :try_end_3ce} :catch_397
    .catchall {:try_start_3cb .. :try_end_3ce} :catchall_3db

    .line 385
    :cond_3ce
    :goto_3ce
    :try_start_3ce
    monitor-exit v2
    :try_end_3cf
    .catchall {:try_start_3ce .. :try_end_3cf} :catchall_3db

    .line 386
    return-void

    .line 381
    :catchall_3d0
    move-exception v0

    move-object v6, v3

    :goto_3d2
    move-object v3, v0

    :goto_3d3
    if-eqz v6, :cond_3da

    .line 382
    :try_start_3d5
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3d8
    .catch Ljava/lang/Exception; {:try_start_3d5 .. :try_end_3d8} :catch_3d9
    .catchall {:try_start_3d5 .. :try_end_3d8} :catchall_3db

    goto :goto_3da

    :catch_3d9
    move-exception v0

    .line 384
    :cond_3da
    :goto_3da
    :try_start_3da
    throw v3

    .line 385
    :catchall_3db
    move-exception v0

    monitor-exit v2
    :try_end_3dd
    .catchall {:try_start_3da .. :try_end_3dd} :catchall_3db

    throw v0
.end method
