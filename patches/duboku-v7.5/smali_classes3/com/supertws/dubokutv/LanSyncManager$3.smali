.class Lcom/supertws/dubokutv/LanSyncManager$3;
.super Ljava/lang/Object;
.source "LanSyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/supertws/dubokutv/LanSyncManager;->respondAllRecords(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/supertws/dubokutv/LanSyncManager;

.field final synthetic val$targetIp:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/supertws/dubokutv/LanSyncManager;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 395
    iput-object p1, p0, Lcom/supertws/dubokutv/LanSyncManager$3;->this$0:Lcom/supertws/dubokutv/LanSyncManager;

    iput-object p2, p0, Lcom/supertws/dubokutv/LanSyncManager$3;->val$targetIp:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .line 398
    nop

    .line 400
    const/4 v1, 0x0

    :try_start_2
    # invokes: Lcom/supertws/dubokutv/LanSyncManager;->isLanSyncEnabled()Z
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->access$400()Z

    move-result v0

    if-nez v0, :cond_a

    .line 430
    nop

    .line 400
    return-void

    .line 401
    :cond_a
    iget-object v0, p0, Lcom/supertws/dubokutv/LanSyncManager$3;->this$0:Lcom/supertws/dubokutv/LanSyncManager;

    # getter for: Lcom/supertws/dubokutv/LanSyncManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/supertws/dubokutv/LanSyncManager;->access$500(Lcom/supertws/dubokutv/LanSyncManager;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "record_database"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_17} :catch_f1
    .catchall {:try_start_2 .. :try_end_17} :catchall_ed

    .line 402
    if-nez v2, :cond_21

    .line 430
    if-eqz v2, :cond_20

    .line 431
    :try_start_1b
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1e} :catch_1f

    goto :goto_20

    :catch_1f
    move-exception v0

    .line 402
    :cond_20
    :goto_20
    return-void

    .line 403
    :cond_21
    :try_start_21
    const-string v0, "SELECT id, name, episode, progressInMillis, durationInMillis, createdAt, modifiedAt, videoPageUrl, detailPageUrl, posterUrl FROM records ORDER BY modifiedAt DESC LIMIT 20"

    invoke-virtual {v2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 404
    if-eqz v0, :cond_e0

    .line 405
    :goto_29
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_dd

    .line 406
    # invokes: Lcom/supertws/dubokutv/LanSyncManager;->isLanSyncEnabled()Z
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->access$400()Z

    move-result v1

    if-nez v1, :cond_37

    goto/16 :goto_dd

    .line 407
    :cond_37
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 408
    const-string v4, "from"

    # getter for: Lcom/supertws/dubokutv/LanSyncManager;->sCurrentDeviceId:Ljava/lang/String;
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->access$100()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 409
    const-string v4, "id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 410
    const-string v4, "name"

    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 411
    const-string v4, "episode"

    const/4 v6, 0x2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 412
    const-string v4, "progressInMillis"

    const/4 v6, 0x3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v1, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 413
    const-string v4, "durationInMillis"

    const/4 v6, 0x4

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v1, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 414
    const-string v4, "createdAt"

    const/4 v6, 0x5

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v1, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 415
    const-string v4, "modifiedAt"

    const/4 v6, 0x6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v1, v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 416
    const-string v4, "clockVersion"

    iget-object v7, p0, Lcom/supertws/dubokutv/LanSyncManager$3;->this$0:Lcom/supertws/dubokutv/LanSyncManager;

    # getter for: Lcom/supertws/dubokutv/LanSyncManager;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/supertws/dubokutv/LanSyncManager;->access$500(Lcom/supertws/dubokutv/LanSyncManager;)Landroid/content/Context;

    move-result-object v8

    .line 417
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v5, 0x8

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    # getter for: Lcom/supertws/dubokutv/LanSyncManager;->sCurrentDeviceId:Ljava/lang/String;
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->access$100()Ljava/lang/String;

    move-result-object v13

    .line 416
    invoke-static/range {v8 .. v13}, Lcom/supertws/dubokutv/SyncVersionStore;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/supertws/dubokutv/SyncVersion;

    move-result-object v6

    invoke-static {v6}, Lcom/supertws/dubokutv/SyncVersionStore;->toJson(Lcom/supertws/dubokutv/SyncVersion;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 418
    const-string v4, "videoPageUrl"

    const/4 v6, 0x7

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 419
    const-string v4, "detailPageUrl"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 420
    const-string v4, "posterUrl"

    const/16 v5, 0x9

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 422
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/supertws/dubokutv/LanSyncManager$3;->val$targetIp:Ljava/lang/String;

    # invokes: Lcom/supertws/dubokutv/LanSyncManager;->sendUdpPacket(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v4}, Lcom/supertws/dubokutv/LanSyncManager;->access$800(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const-wide/16 v4, 0x1e

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 424
    goto/16 :goto_29

    .line 425
    :cond_dd
    :goto_dd
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_e0} :catch_ea
    .catchall {:try_start_21 .. :try_end_e0} :catchall_e8

    .line 430
    :cond_e0
    if-eqz v2, :cond_113

    .line 431
    :try_start_e2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_e5} :catch_e6

    goto :goto_113

    :catch_e6
    move-exception v0

    goto :goto_113

    .line 430
    :catchall_e8
    move-exception v0

    goto :goto_ef

    .line 427
    :catch_ea
    move-exception v0

    move-object v1, v2

    goto :goto_f2

    .line 430
    :catchall_ed
    move-exception v0

    move-object v2, v1

    :goto_ef
    move-object v1, v0

    goto :goto_114

    .line 427
    :catch_f1
    move-exception v0

    .line 428
    :goto_f2
    :try_start_f2
    const-string v2, "LanSyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in respondAllRecords: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10e
    .catchall {:try_start_f2 .. :try_end_10e} :catchall_ed

    .line 430
    if-eqz v1, :cond_113

    .line 431
    :try_start_110
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_110 .. :try_end_113} :catch_e6

    .line 434
    :cond_113
    :goto_113
    return-void

    .line 430
    :goto_114
    if-eqz v2, :cond_11b

    .line 431
    :try_start_116
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_119
    .catch Ljava/lang/Exception; {:try_start_116 .. :try_end_119} :catch_11a

    goto :goto_11b

    :catch_11a
    move-exception v0

    .line 433
    :cond_11b
    :goto_11b
    throw v1
.end method
