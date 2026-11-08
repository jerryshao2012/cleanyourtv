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
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 312
    iput-object p1, p0, Lcom/supertws/dubokutv/LanSyncManager$3;->this$0:Lcom/supertws/dubokutv/LanSyncManager;

    iput-object p2, p0, Lcom/supertws/dubokutv/LanSyncManager$3;->val$targetIp:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v0, 0x0

    .line 317
    :try_start_0
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->access$400()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 318
    :cond_0
    iget-object v1, p0, Lcom/supertws/dubokutv/LanSyncManager$3;->this$0:Lcom/supertws/dubokutv/LanSyncManager;

    invoke-static {v1}, Lcom/supertws/dubokutv/LanSyncManager;->access$500(Lcom/supertws/dubokutv/LanSyncManager;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "record_database"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    if-eqz v1, :cond_1

    .line 346
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_1
    return-void

    :cond_2
    :try_start_2
    const-string v2, "SELECT id, name, episode, progressInMillis, durationInMillis, createdAt, modifiedAt, videoPageUrl, detailPageUrl, posterUrl FROM records ORDER BY modifiedAt DESC LIMIT 20"

    .line 320
    invoke-virtual {v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 322
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 323
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->access$400()Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_1

    .line 324
    :cond_3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "from"

    .line 325
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->access$100()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "id"

    .line 326
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "name"

    const/4 v5, 0x1

    .line 327
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "episode"

    const/4 v5, 0x2

    .line 328
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "progressInMillis"

    const/4 v5, 0x3

    .line 329
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v4, "durationInMillis"

    const/4 v5, 0x4

    .line 330
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v4, "createdAt"

    const/4 v5, 0x5

    .line 331
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v4, "modifiedAt"

    const/4 v5, 0x6

    .line 332
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v4, "videoPageUrl"

    const/4 v5, 0x7

    .line 333
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "detailPageUrl"

    const/16 v5, 0x8

    .line 334
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "posterUrl"

    const/16 v5, 0x9

    .line 335
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 337
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/supertws/dubokutv/LanSyncManager$3;->val$targetIp:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/supertws/dubokutv/LanSyncManager;->access$700(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x1e

    .line 338
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_0

    .line 340
    :cond_4
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_5
    if-eqz v1, :cond_6

    .line 346
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catchall_0
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_5

    :catch_2
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_3
    :try_start_4
    const-string v2, "LanSyncManager"

    .line 343
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in respondAllRecords: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_6

    goto :goto_2

    :catch_3
    :cond_6
    :goto_4
    return-void

    :catchall_1
    move-exception v0

    :goto_5
    if-eqz v1, :cond_7

    .line 346
    :try_start_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 348
    :catch_4
    :cond_7
    throw v0
.end method
