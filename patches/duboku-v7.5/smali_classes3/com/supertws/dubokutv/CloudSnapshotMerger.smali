.class final Lcom/supertws/dubokutv/CloudSnapshotMerger;
.super Ljava/lang/Object;
.source "CloudSnapshotMerger.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static merge(Lorg/json/JSONObject;)Z
    .registers 62

    .line 14
    move-object/from16 v0, p0

    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 15
    const-string v2, "records"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 16
    if-eqz v1, :cond_3a1

    if-eqz v6, :cond_3a1

    .line 17
    nop

    .line 18
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 19
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 20
    const-string v2, "deviceId"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 21
    invoke-static {v1}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->deviceId()Ljava/lang/String;

    move-result-object v5

    .line 22
    const-class v15, Lcom/supertws/dubokutv/LanSyncManager;

    monitor-enter v15

    .line 23
    :try_start_2e
    const-string v0, "record_database"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_39e

    .line 25
    :try_start_36
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_398

    .line 27
    const/4 v0, 0x0

    const/16 v16, 0x0

    :goto_3c
    :try_start_3c
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v0, v9, :cond_31b

    .line 28
    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 29
    if-eqz v9, :cond_312

    .line 30
    const-string v2, "name"

    const-string v10, ""

    invoke-virtual {v9, v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v10, "detailPageUrl"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 31
    const-string v11, "videoPageUrl"

    const-string v12, ""

    invoke-virtual {v9, v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "episode"

    const-string v13, ""

    invoke-virtual {v9, v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 32
    const-string v13, "progressInMillis"
    :try_end_6a
    .catchall {:try_start_3c .. :try_end_6a} :catchall_390

    move-object/from16 v22, v4

    const-wide/16 v3, -0x1

    :try_start_6e
    invoke-virtual {v9, v13, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v25

    const-string v13, "durationInMillis"

    invoke-virtual {v9, v13, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v29

    .line 33
    const-string v13, "modifiedAt"

    invoke-virtual {v9, v13, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v13, "createdAt"

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    const-wide/16 v6, 0x0

    invoke-virtual {v9, v13, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v33

    .line 34
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_2f6

    cmp-long v13, v25, v6

    if-ltz v13, :cond_2f6

    cmp-long v35, v29, v6

    if-ltz v35, :cond_2f6

    cmp-long v13, v3, v6

    if-ltz v13, :cond_2f6

    const-string v13, "example.com"

    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2f6

    const-string v13, "example.com"

    invoke-virtual {v11, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_b8

    move v6, v0

    move-object v0, v1

    move-object v1, v8

    move-object/from16 v7, v22

    move-object/from16 v2, v32

    const/4 v12, 0x0

    const/16 v44, 0x0

    goto/16 :goto_300

    .line 35
    :cond_b8
    const-string v13, "clockVersion"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    invoke-static {v13}, Lcom/supertws/dubokutv/SyncVersionStore;->fromJson(Lorg/json/JSONObject;)Lcom/supertws/dubokutv/SyncVersion;

    move-result-object v13

    .line 36
    if-nez v13, :cond_de

    move-object v13, v9

    new-instance v9, Lcom/supertws/dubokutv/SyncVersion;

    move-object/from16 v24, v12

    move-object/from16 v23, v13

    const-wide/16 v12, 0x0

    move-wide/from16 v36, v6

    move-object/from16 v17, v11

    const/4 v6, 0x3

    const/4 v7, 0x2

    move-wide/from16 v59, v3

    move-object v3, v10

    move-wide/from16 v10, v59

    const/4 v4, 0x1

    invoke-direct/range {v9 .. v14}, Lcom/supertws/dubokutv/SyncVersion;-><init>(JJLjava/lang/String;)V

    move-object v13, v9

    goto :goto_ee

    :cond_de
    move-wide/from16 v36, v6

    move-object/from16 v23, v9

    move-object/from16 v17, v11

    move-object/from16 v24, v12

    const/4 v6, 0x3

    const/4 v7, 0x2

    move-wide/from16 v59, v3

    move-object v3, v10

    move-wide/from16 v10, v59

    const/4 v4, 0x1

    .line 37
    :goto_ee
    const-string v9, "SELECT id,episode,progressInMillis,modifiedAt,durationInMillis,videoPageUrl,detailPageUrl,posterUrl,createdAt FROM records WHERE name = ? OR (detailPageUrl != \'\' AND detailPageUrl = ?) ORDER BY modifiedAt DESC LIMIT 1"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v12
    :try_end_f4
    .catchall {:try_start_6e .. :try_end_f4} :catchall_30d

    move-object/from16 v6, v22

    :try_start_f6
    invoke-virtual {v6, v9, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9
    :try_end_fa
    .catchall {:try_start_f6 .. :try_end_fa} :catchall_2f2

    .line 38
    nop

    .line 39
    nop

    .line 41
    :try_start_fc
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    const/4 v7, 0x5

    if-eqz v12, :cond_131

    .line 42
    const/4 v12, 0x0

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/4 v4, 0x2

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    const/4 v4, 0x3

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v39

    .line 43
    const/4 v4, 0x4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v41

    invoke-interface {v9, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/4 v4, 0x6

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x7

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/16 v7, 0x8

    invoke-interface {v9, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v45
    :try_end_12f
    .catchall {:try_start_fc .. :try_end_12f} :catchall_2ec

    move-object v7, v4

    goto :goto_141

    .line 41
    :cond_131
    move-wide/from16 v27, v36

    move-wide/from16 v39, v27

    move-wide/from16 v41, v39

    move-wide/from16 v45, v41

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 45
    :goto_141
    :try_start_141
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 46
    nop

    .line 47
    if-eqz v7, :cond_153

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v4
    :try_end_14b
    .catchall {:try_start_141 .. :try_end_14b} :catchall_2f2

    if-eqz v4, :cond_14e

    goto :goto_153

    :cond_14e
    move v4, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v7

    goto :goto_157

    :cond_153
    :goto_153
    move v4, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    .line 46
    :goto_157
    move-object/from16 v21, v3

    move v9, v4

    move-object/from16 p0, v6

    move-object/from16 v6, v23

    move-wide/from16 v3, v39

    const/16 v43, 0x4

    const/16 v44, 0x0

    const/16 v47, 0x1

    move-object/from16 v40, v7

    move-object/from16 v39, v24

    const/4 v7, 0x0

    :try_start_16b
    invoke-static/range {v0 .. v5}, Lcom/supertws/dubokutv/SyncVersionStore;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/supertws/dubokutv/SyncVersion;

    move-result-object v2

    .line 48
    iget-wide v3, v13, Lcom/supertws/dubokutv/SyncVersion;->utcMillis:J

    move-object/from16 v58, v8

    iget-wide v7, v13, Lcom/supertws/dubokutv/SyncVersion;->logicalCounter:J

    move-wide/from16 v48, v3

    iget-object v3, v13, Lcom/supertws/dubokutv/SyncVersion;->deviceId:Ljava/lang/String;

    move-object/from16 v52, v3

    iget-wide v3, v2, Lcom/supertws/dubokutv/SyncVersion;->utcMillis:J

    move-wide/from16 v53, v3

    iget-wide v3, v2, Lcom/supertws/dubokutv/SyncVersion;->logicalCounter:J

    iget-object v2, v2, Lcom/supertws/dubokutv/SyncVersion;->deviceId:Ljava/lang/String;

    move-object/from16 v57, v2

    move-wide/from16 v55, v3

    move-wide/from16 v50, v7

    invoke-static/range {v48 .. v57}, Lcom/supertws/dubokutv/SyncVersion;->compare(JJLjava/lang/String;JJLjava/lang/String;)I

    move-result v2

    .line 50
    if-eqz v19, :cond_1aa

    if-lez v2, :cond_1a8

    goto :goto_1aa

    :cond_1a8
    const/4 v3, 0x0

    goto :goto_1ab

    :cond_1aa
    :goto_1aa
    const/4 v3, 0x1

    .line 52
    :goto_1ab
    if-nez v3, :cond_1b7

    move-object/from16 v7, p0

    move v6, v9

    move-object/from16 v2, v32

    move-object/from16 v1, v58

    const/4 v12, 0x0

    goto/16 :goto_300

    .line 53
    :cond_1b7
    const-string v2, "posterUrl"

    const-string v3, ""

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 54
    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1d4

    const-string v3, "https://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1d4

    if-nez v12, :cond_1d3

    const-string v12, ""

    :cond_1d3
    move-object v2, v12

    .line 55
    :cond_1d4
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1e2

    if-nez v40, :cond_1df

    const-string v3, ""

    goto :goto_1e4

    :cond_1df
    move-object/from16 v3, v40

    goto :goto_1e4

    :cond_1e2
    move-object/from16 v3, v21

    .line 56
    :goto_1e4
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1f3

    if-nez v18, :cond_1f0

    const-string v4, ""

    move-object/from16 v18, v4

    :cond_1f0
    move-object/from16 v4, v18

    goto :goto_1f5

    :cond_1f3
    move-object/from16 v4, v17

    .line 57
    :goto_1f5
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 58
    const-string v8, "id"

    const-string v12, ""

    invoke-virtual {v6, v8, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 59
    const-string v8, "id"

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_20b

    goto :goto_217

    :cond_20b
    if-eqz v19, :cond_216

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_216

    move-object/from16 v6, v19

    goto :goto_217

    :cond_216
    move-object v6, v1

    :goto_217
    invoke-virtual {v7, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v6, "name"

    invoke-virtual {v7, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "episode"

    move-object/from16 v8, v39

    invoke-virtual {v7, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "progressInMillis"

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v7, v6, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 61
    const-string v6, "durationInMillis"

    if-lez v35, :cond_234

    goto :goto_236

    :cond_234
    move-wide/from16 v29, v41

    :goto_236
    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v7, v6, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 62
    move-object/from16 v24, v8

    move v6, v9

    iget-wide v8, v13, Lcom/supertws/dubokutv/SyncVersion;->utcMillis:J

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 63
    const-string v10, "createdAt"

    cmp-long v11, v45, v36

    if-lez v11, :cond_24f

    move-wide/from16 v33, v45

    goto :goto_258

    :cond_24f
    cmp-long v11, v33, v36

    if-lez v11, :cond_254

    goto :goto_258

    :cond_254
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v33

    :goto_258
    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 64
    const-string v10, "modifiedAt"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v10, "videoPageUrl"

    invoke-virtual {v7, v10, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "detailPageUrl"

    invoke-virtual {v7, v10, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "posterUrl"

    invoke-virtual {v7, v10, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {v1, v8, v9}, Lcom/supertws/dubokutv/LanSyncManager;->onRemoteProgress(Ljava/lang/String;J)V

    .line 66
    if-nez v19, :cond_281

    const/4 v2, 0x0

    move-object v10, v7

    move-object/from16 v7, p0

    goto :goto_299

    :cond_281
    const-string v17, "records"

    move-object/from16 v2, v19

    const-string v19, "id = ?"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v20
    :try_end_28b
    .catchall {:try_start_16b .. :try_end_28b} :catchall_2e7

    const/16 v21, 0x5

    move-object/from16 v16, p0

    move-object/from16 v18, v7

    :try_start_291
    invoke-virtual/range {v16 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v2
    :try_end_295
    .catchall {:try_start_291 .. :try_end_295} :catchall_2e2

    move-object/from16 v7, v16

    move-object/from16 v10, v18

    .line 67
    :goto_299
    if-nez v2, :cond_2b0

    :try_start_29b
    const-string v2, "records"

    const/4 v11, 0x5

    const/4 v12, 0x0

    invoke-virtual {v7, v2, v12, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v16

    cmp-long v2, v16, v36

    if-ltz v2, :cond_2a8

    goto :goto_2b1

    :cond_2a8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Record write failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b0
    const/4 v12, 0x0

    .line 68
    :goto_2b1
    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v11, 0x5

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v1, v9, v44

    aput-object v24, v9, v47

    const/16 v22, 0x2

    aput-object v2, v9, v22

    const/16 v38, 0x3

    aput-object v4, v9, v38

    aput-object v8, v9, v43

    move-object/from16 v2, v32

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v44

    aput-object v3, v4, v47

    const/16 v22, 0x2

    aput-object v13, v4, v22

    move-object/from16 v1, v58

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    const/16 v16, 0x1

    goto :goto_300

    .line 73
    :catchall_2e2
    move-exception v0

    move-object/from16 v7, v16

    goto/16 :goto_392

    :catchall_2e7
    move-exception v0

    move-object/from16 v7, p0

    goto/16 :goto_392

    .line 45
    :catchall_2ec
    move-exception v0

    move-object v7, v6

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    .line 73
    :catchall_2f2
    move-exception v0

    move-object v7, v6

    goto/16 :goto_392

    .line 34
    :cond_2f6
    move v6, v0

    move-object v0, v1

    move-object v1, v8

    move-object/from16 v7, v22

    move-object/from16 v2, v32

    const/4 v12, 0x0

    const/16 v44, 0x0

    .line 27
    :goto_300
    add-int/lit8 v3, v6, 0x1

    move-object v8, v1

    move-object v4, v7

    move-object/from16 v6, v31

    move-object v1, v0

    move-object v7, v2

    move v0, v3

    move-object v2, v12

    const/4 v3, 0x0

    goto/16 :goto_3c

    .line 73
    :catchall_30d
    move-exception v0

    move-object/from16 v7, v22

    goto/16 :goto_392

    .line 29
    :cond_312
    move-object v7, v4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid record"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_31b
    move-object v0, v1

    move-object v2, v7

    move-object v1, v8

    const/16 v43, 0x4

    const/16 v44, 0x0

    const/16 v47, 0x1

    move-object v7, v4

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_328
    .catchall {:try_start_29b .. :try_end_328} :catchall_38e

    .line 73
    :try_start_328
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_32b
    .catchall {:try_start_328 .. :try_end_32b} :catchall_396

    .line 74
    :try_start_32b
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 75
    monitor-exit v15
    :try_end_32f
    .catchall {:try_start_32b .. :try_end_32f} :catchall_39e

    .line 76
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_333
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_351

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    aget-object v4, v3, v44

    check-cast v4, Ljava/lang/String;

    aget-object v6, v3, v47

    check-cast v6, Ljava/lang/String;

    const/16 v22, 0x2

    aget-object v3, v3, v22

    check-cast v3, Lcom/supertws/dubokutv/SyncVersion;

    invoke-static {v0, v4, v6, v3, v5}, Lcom/supertws/dubokutv/SyncVersionStore;->rememberRemote(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/supertws/dubokutv/SyncVersion;Ljava/lang/String;)V

    goto :goto_333

    .line 78
    :cond_351
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_355
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_388

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    aget-object v2, v1, v44

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    aget-object v2, v1, v47

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    const/16 v22, 0x2

    aget-object v2, v1, v22

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/16 v38, 0x3

    aget-object v2, v1, v38

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    aget-object v1, v1, v43

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static/range {v3 .. v9}, Lcom/supertws/dubokutv/LanSyncManager;->offerCloudHandoff(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)V

    goto :goto_355

    .line 79
    :cond_388
    if-eqz v16, :cond_38d

    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->bumpSyncVersion()V

    .line 80
    :cond_38d
    return v16

    .line 73
    :catchall_38e
    move-exception v0

    goto :goto_392

    :catchall_390
    move-exception v0

    move-object v7, v4

    :goto_392
    :try_start_392
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_396
    .catchall {:try_start_392 .. :try_end_396} :catchall_396

    .line 74
    :catchall_396
    move-exception v0

    goto :goto_39a

    :catchall_398
    move-exception v0

    move-object v7, v4

    :goto_39a
    :try_start_39a
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v0

    .line 75
    :catchall_39e
    move-exception v0

    monitor-exit v15
    :try_end_3a0
    .catchall {:try_start_39a .. :try_end_3a0} :catchall_39e

    throw v0

    .line 16
    :cond_3a1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Snapshot unavailable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
