.class final Lcom/supertws/dubokutv/CloudSnapshotMerger;
.super Ljava/lang/Object;
.source "CloudSnapshotMerger.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static merge(Lorg/json/JSONObject;)Z
    .locals 39

    .line 14
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 15
    const-string v1, "records"

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 16
    if-eqz v0, :cond_15

    if-eqz v1, :cond_15

    .line 17
    nop

    .line 18
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 19
    const-class v3, Lcom/supertws/dubokutv/LanSyncManager;

    monitor-enter v3

    .line 20
    :try_start_0
    const-string v4, "record_database"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6, v5}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 22
    :try_start_1
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 24
    const/4 v0, 0x0

    const/4 v7, 0x0

    :goto_0
    :try_start_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v0, v8, :cond_12

    .line 25
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 26
    if-eqz v8, :cond_11

    .line 27
    const-string v13, "name"

    const-string v14, ""

    invoke-virtual {v8, v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "detailPageUrl"

    const-string v15, ""

    invoke-virtual {v8, v14, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 28
    const-string v15, "videoPageUrl"

    const-string v5, ""

    invoke-virtual {v8, v15, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v15, "episode"

    const-string v9, ""

    invoke-virtual {v8, v15, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 29
    const-string v15, "progressInMillis"

    const-wide/16 v10, -0x1

    invoke-virtual {v8, v15, v10, v11}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v22

    const-string v15, "durationInMillis"

    invoke-virtual {v8, v15, v10, v11}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v24

    .line 30
    const-string v15, "modifiedAt"

    invoke-virtual {v8, v15, v10, v11}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v10

    const-string v15, "createdAt"

    move/from16 v26, v7

    const-wide/16 v6, 0x0

    invoke-virtual {v8, v15, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v27

    .line 31
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_10

    cmp-long v15, v22, v6

    if-ltz v15, :cond_10

    cmp-long v15, v24, v6

    if-ltz v15, :cond_10

    cmp-long v16, v10, v6

    if-ltz v16, :cond_10

    const-string v6, "example.com"

    invoke-virtual {v14, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_10

    const-string v6, "example.com"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    move/from16 v16, v0

    move-object/from16 v32, v1

    const/4 v7, 0x0

    goto/16 :goto_9

    .line 32
    :cond_0
    const-string v6, "SELECT id,episode,progressInMillis,modifiedAt,durationInMillis,videoPageUrl,detailPageUrl,posterUrl,createdAt FROM records WHERE name = ? OR (detailPageUrl != \'\' AND detailPageUrl = ?) ORDER BY modifiedAt DESC LIMIT 1"

    filled-new-array {v13, v14}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 33
    nop

    .line 34
    nop

    .line 36
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    const/4 v12, 0x5

    if-eqz v7, :cond_1

    .line 37
    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/4 v7, 0x2

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    const/4 v7, 0x3

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 38
    const/4 v7, 0x4

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v12, 0x6

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v32, v1

    const/4 v1, 0x7

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v33, v1

    const/16 v1, 0x8

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v1, v33

    move-wide/from16 v35, v34

    move-wide/from16 v33, v30

    move-object/from16 v30, v16

    move-wide/from16 v37, v18

    move-wide/from16 v18, v20

    move-wide/from16 v20, v37

    goto :goto_1

    .line 36
    :cond_1
    move-object/from16 v32, v1

    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const/16 v30, 0x0

    const-wide/16 v33, 0x0

    const-wide/16 v35, 0x0

    .line 40
    :goto_1
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 41
    if-eqz v30, :cond_3

    cmp-long v6, v10, v18

    if-gtz v6, :cond_3

    if-nez v6, :cond_2

    invoke-static {v9}, Lcom/supertws/dubokutv/LanSyncManager;->parseEpisodeNum(Ljava/lang/String;)I

    move-result v16

    invoke-static/range {v17 .. v17}, Lcom/supertws/dubokutv/LanSyncManager;->parseEpisodeNum(Ljava/lang/String;)I

    move-result v17

    move-wide/from16 v18, v22

    invoke-static/range {v16 .. v21}, Lcom/supertws/dubokutv/ProgressSnapshot;->winsEqualTimestamp(IIJJ)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v6, 0x1

    .line 42
    :goto_3
    if-nez v6, :cond_4

    move/from16 v16, v0

    const/4 v7, 0x0

    goto/16 :goto_9

    .line 43
    :cond_4
    const-string v6, "posterUrl"

    move/from16 v16, v0

    const-string v0, ""

    invoke-virtual {v8, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    const-string v6, "http://"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "https://"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    if-nez v1, :cond_5

    const-string v1, ""

    :cond_5
    move-object v0, v1

    .line 45
    :cond_6
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    if-nez v12, :cond_7

    const-string v1, ""

    move-object v14, v1

    goto :goto_4

    :cond_7
    move-object v14, v12

    .line 46
    :cond_8
    :goto_4
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    if-nez v7, :cond_9

    const-string v1, ""

    move-object v5, v1

    goto :goto_5

    :cond_9
    move-object v5, v7

    .line 47
    :cond_a
    :goto_5
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 48
    const-string v6, "id"

    if-eqz v30, :cond_b

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_b

    goto :goto_6

    :cond_b
    const-string v7, "id"

    invoke-virtual {v8, v7, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    :goto_6
    move-object/from16 v7, v30

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v6, "name"

    invoke-virtual {v1, v6, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "episode"

    invoke-virtual {v1, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "progressInMillis"

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 50
    const-string v6, "durationInMillis"

    if-lez v15, :cond_c

    goto :goto_7

    :cond_c
    move-wide/from16 v24, v33

    :goto_7
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 51
    const-string v6, "createdAt"

    const-wide/16 v7, 0x0

    cmp-long v12, v35, v7

    if-lez v12, :cond_d

    move-wide/from16 v27, v35

    goto :goto_8

    :cond_d
    cmp-long v12, v27, v7

    if-lez v12, :cond_e

    goto :goto_8

    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    :goto_8
    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 52
    const-string v6, "modifiedAt"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "videoPageUrl"

    invoke-virtual {v1, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "detailPageUrl"

    invoke-virtual {v1, v6, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "posterUrl"

    invoke-virtual {v1, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {v13, v10, v11}, Lcom/supertws/dubokutv/LanSyncManager;->onRemoteProgress(Ljava/lang/String;J)V

    .line 54
    const-string v0, "records"

    const/4 v6, 0x5

    const/4 v7, 0x0

    invoke-virtual {v4, v0, v7, v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    const-wide/16 v14, 0x0

    cmp-long v8, v0, v14

    if-ltz v8, :cond_f

    .line 55
    new-array v0, v6, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v13, v0, v1

    const/4 v1, 0x1

    aput-object v9, v0, v1

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v6, 0x2

    aput-object v1, v0, v6

    const/4 v1, 0x3

    aput-object v5, v0, v1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v5, 0x4

    aput-object v1, v0, v5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    const/16 v29, 0x1

    goto :goto_a

    .line 54
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Record write failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 31
    :cond_10
    move/from16 v16, v0

    move-object/from16 v32, v1

    const/4 v7, 0x0

    .line 24
    :goto_9
    move/from16 v29, v26

    :goto_a
    add-int/lit8 v0, v16, 0x1

    move-object v5, v7

    move/from16 v7, v29

    move-object/from16 v1, v32

    const/4 v6, 0x0

    goto/16 :goto_0

    .line 26
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid record"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_12
    move/from16 v26, v7

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 59
    :try_start_5
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 60
    :try_start_6
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 61
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 62
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v3, v1, v2

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v5, v1, v3

    check-cast v5, Ljava/lang/String;

    const/4 v11, 0x2

    aget-object v6, v1, v11

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v12, 0x3

    aget-object v8, v1, v12

    check-cast v8, Ljava/lang/String;

    const/4 v13, 0x4

    aget-object v1, v1, v13

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static/range {v4 .. v10}, Lcom/supertws/dubokutv/LanSyncManager;->offerCloudHandoff(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)V

    goto :goto_b

    .line 63
    :cond_13
    if-eqz v26, :cond_14

    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->bumpSyncVersion()V

    .line 64
    :cond_14
    return v26

    .line 59
    :catchall_1
    move-exception v0

    :try_start_7
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 60
    :catchall_2
    move-exception v0

    :try_start_8
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v0

    .line 61
    :catchall_3
    move-exception v0

    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0

    .line 16
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Snapshot unavailable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
