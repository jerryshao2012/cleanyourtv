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
.method constructor <init>(Lcom/supertws/dubokutv/LanSyncManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 135
    iput-object p1, p0, Lcom/supertws/dubokutv/LanSyncManager$2;->this$0:Lcom/supertws/dubokutv/LanSyncManager;

    iput-object p2, p0, Lcom/supertws/dubokutv/LanSyncManager$2;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/supertws/dubokutv/LanSyncManager$2;->val$detailPageUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/supertws/dubokutv/LanSyncManager$2;->val$episode:Ljava/lang/String;

    iput-wide p5, p0, Lcom/supertws/dubokutv/LanSyncManager$2;->val$progressInMillis:J

    iput-wide p7, p0, Lcom/supertws/dubokutv/LanSyncManager$2;->val$remoteModifiedAt:J

    iput-object p9, p0, Lcom/supertws/dubokutv/LanSyncManager$2;->val$id:Ljava/lang/String;

    iput-wide p10, p0, Lcom/supertws/dubokutv/LanSyncManager$2;->val$durationInMillis:J

    iput-object p12, p0, Lcom/supertws/dubokutv/LanSyncManager$2;->val$videoPageUrl:Ljava/lang/String;

    iput-object p13, p0, Lcom/supertws/dubokutv/LanSyncManager$2;->val$posterUrl:Ljava/lang/String;

    iput-object p14, p0, Lcom/supertws/dubokutv/LanSyncManager$2;->val$fromDevice:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .line 138
    move-object/from16 v1, p0

    const-string v0, "records"

    const-string v2, "LanSyncManager"

    .line 140
    const/4 v3, 0x0

    :try_start_0
    iget-object v4, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->this$0:Lcom/supertws/dubokutv/LanSyncManager;

    invoke-static {v4}, Lcom/supertws/dubokutv/LanSyncManager;->access$300(Lcom/supertws/dubokutv/LanSyncManager;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "record_database"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v3}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 141
    if-nez v4, :cond_1

    .line 208
    if-eqz v4, :cond_0

    .line 209
    :try_start_1
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    :try_start_2
    const-string v5, "SELECT id, episode, progressInMillis, modifiedAt FROM records WHERE name = ? OR detailPageUrl = ? ORDER BY modifiedAt DESC LIMIT 1"

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/String;

    iget-object v9, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$name:Ljava/lang/String;

    aput-object v9, v8, v6

    iget-object v9, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$detailPageUrl:Ljava/lang/String;

    const/4 v10, 0x1

    aput-object v9, v8, v10

    invoke-virtual {v4, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 145
    nop

    .line 146
    nop

    .line 147
    nop

    .line 148
    nop

    .line 149
    if-eqz v5, :cond_3

    .line 150
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 151
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 152
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 153
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 154
    const/4 v15, 0x3

    invoke-interface {v5, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    goto :goto_1

    .line 150
    :cond_2
    move-object v11, v3

    move-object v12, v11

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    .line 156
    :goto_1
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 149
    :cond_3
    move-object v11, v3

    move-object v12, v11

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    .line 161
    :goto_2
    nop

    .line 162
    if-nez v11, :cond_4

    .line 163
    const/4 v3, 0x1

    goto :goto_3

    .line 165
    :cond_4
    iget-object v5, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$episode:Ljava/lang/String;

    invoke-static {v5}, Lcom/supertws/dubokutv/LanSyncManager;->parseEpisodeNum(Ljava/lang/String;)I

    move-result v5

    .line 166
    invoke-static {v12}, Lcom/supertws/dubokutv/LanSyncManager;->parseEpisodeNum(Ljava/lang/String;)I

    move-result v3

    .line 167
    if-le v5, v3, :cond_5

    .line 169
    const/4 v3, 0x1

    goto :goto_3

    .line 170
    :cond_5
    if-ne v5, v3, :cond_7

    .line 172
    iget-wide v8, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$progressInMillis:J

    cmp-long v3, v8, v13

    if-gtz v3, :cond_6

    iget-wide v8, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$remoteModifiedAt:J

    cmp-long v3, v8, v15

    if-ltz v3, :cond_8

    .line 173
    :cond_6
    const/4 v3, 0x1

    goto :goto_3

    .line 177
    :cond_7
    iget-wide v8, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$remoteModifiedAt:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v17, 0x7530

    add-long v15, v15, v17

    cmp-long v3, v8, v15

    if-lez v3, :cond_8

    .line 178
    const/4 v3, 0x1

    goto :goto_3

    .line 183
    :cond_8
    const/4 v3, 0x0

    :goto_3
    const-wide/16 v8, 0x3e8

    const-string v5, " @"

    if-nez v3, :cond_a

    .line 184
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignored progress for: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " (remote: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$episode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v6, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$progressInMillis:J

    div-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "s, local: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    div-long/2addr v13, v8

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "s)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 208
    if-eqz v4, :cond_9

    .line 209
    :try_start_4
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 185
    :cond_9
    :goto_4
    return-void

    .line 189
    :cond_a
    :try_start_5
    const-string v3, "name = ? OR detailPageUrl = ?"

    new-array v7, v7, [Ljava/lang/String;

    iget-object v12, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$name:Ljava/lang/String;

    aput-object v12, v7, v6

    iget-object v6, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$detailPageUrl:Ljava/lang/String;

    aput-object v6, v7, v10

    invoke-virtual {v4, v0, v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 191
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 192
    const-string v6, "id"

    if-eqz v11, :cond_b

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_b

    goto :goto_5

    :cond_b
    iget-object v11, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$id:Ljava/lang/String;

    :goto_5
    invoke-virtual {v3, v6, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v6, "name"

    iget-object v7, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$name:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v6, "episode"

    iget-object v7, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$episode:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v6, "progressInMillis"

    iget-wide v10, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$progressInMillis:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 196
    const-string v6, "durationInMillis"

    iget-wide v10, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$durationInMillis:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 197
    const-string v6, "createdAt"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 198
    const-string v6, "modifiedAt"

    iget-wide v10, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$remoteModifiedAt:J

    const-wide/16 v12, 0x0

    cmp-long v7, v10, v12

    if-lez v7, :cond_c

    goto :goto_6

    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    :goto_6
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 199
    const-string v6, "videoPageUrl"

    iget-object v7, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$videoPageUrl:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v6, "detailPageUrl"

    iget-object v7, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$detailPageUrl:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v6, "posterUrl"

    iget-object v7, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$posterUrl:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const/4 v6, 0x5

    const/4 v7, 0x0

    invoke-virtual {v4, v0, v7, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 203
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->bumpSyncVersion()V

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Synced newer remote progress for: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$episode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v5, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$progressInMillis:J

    div-long/2addr v5, v8

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "s from "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v1, Lcom/supertws/dubokutv/LanSyncManager$2;->val$fromDevice:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 208
    if-eqz v4, :cond_d

    .line 209
    :try_start_6
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_9

    :catch_2
    move-exception v0

    goto :goto_9

    .line 208
    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v3, v4

    goto :goto_a

    .line 205
    :catch_3
    move-exception v0

    move-object v3, v4

    goto :goto_8

    .line 208
    :catchall_1
    move-exception v0

    move-object v7, v3

    :goto_7
    move-object v2, v0

    goto :goto_a

    .line 205
    :catch_4
    move-exception v0

    move-object v7, v3

    .line 206
    :goto_8
    :try_start_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error writing sync record: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 208
    if-eqz v3, :cond_d

    .line 209
    :try_start_8
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 212
    :cond_d
    :goto_9
    return-void

    .line 208
    :catchall_2
    move-exception v0

    goto :goto_7

    :goto_a
    if-eqz v3, :cond_e

    .line 209
    :try_start_9
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_b

    :catch_5
    move-exception v0

    .line 211
    :cond_e
    :goto_b
    goto :goto_d

    :goto_c
    throw v2

    :goto_d
    goto :goto_c
.end method
