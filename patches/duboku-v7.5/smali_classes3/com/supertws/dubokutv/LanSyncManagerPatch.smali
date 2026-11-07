.class public Lcom/supertws/dubokutv/LanSyncManagerPatch;
.super Ljava/lang/Object;
.source "LanSyncManagerPatch.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static runSync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 24

    .line 14
    move-object/from16 v9, p1

    move-object/from16 v1, p2

    move-object/from16 v10, p3

    move-object/from16 v2, p11

    move-object/from16 v3, p12

    const-class v11, Lcom/supertws/dubokutv/LanSyncManager;

    monitor-enter v11

    .line 15
    nop

    .line 17
    const/4 v12, 0x0

    :try_start_0
    const-string v0, "record_database"

    const/4 v13, 0x0

    move-object/from16 v4, p0

    invoke-virtual {v4, v0, v13, v12}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 18
    if-nez v14, :cond_1

    .line 119
    if-eqz v14, :cond_0

    .line 120
    :try_start_1
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 18
    return-void

    .line 22
    :cond_1
    :try_start_3
    nop
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 119
    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v12, v14

    goto/16 :goto_12

    .line 23
    :catch_1
    move-exception v0

    :goto_1
    nop

    .line 25
    :try_start_4
    const-string v0, "SELECT id, episode, progressInMillis, modifiedAt, durationInMillis, videoPageUrl, detailPageUrl, posterUrl FROM records WHERE name = ? OR (detailPageUrl != \'\' AND detailPageUrl = ?) ORDER BY modifiedAt DESC LIMIT 1"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/String;

    aput-object v9, v5, v13

    const/4 v15, 0x1

    aput-object v1, v5, v15

    invoke-virtual {v14, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 27
    nop

    .line 28
    nop

    .line 29
    nop

    .line 30
    nop

    .line 31
    nop

    .line 32
    nop

    .line 33
    nop

    .line 34
    nop

    .line 35
    const/4 v5, 0x5

    const-wide/16 v16, 0x0

    if-eqz v0, :cond_3

    .line 36
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 37
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 38
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 39
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 40
    const/4 v8, 0x3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 41
    const/4 v8, 0x4

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 42
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 43
    const/4 v5, 0x6

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 44
    const/4 v12, 0x7

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    .line 36
    :cond_2
    move-wide/from16 v18, v16

    move-wide/from16 v20, v18

    move-wide/from16 v22, v20

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    .line 46
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v12

    move-object v12, v6

    goto :goto_3

    .line 35
    :cond_3
    move-wide/from16 v18, v16

    move-wide/from16 v20, v18

    move-wide/from16 v22, v20

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    .line 49
    :goto_3
    nop

    .line 50
    if-nez v12, :cond_4

    .line 51
    goto :goto_4

    .line 53
    :cond_4
    cmp-long v6, p6, v20

    if-lez v6, :cond_5

    .line 54
    goto :goto_4

    .line 55
    :cond_5
    cmp-long v6, p6, v20

    if-nez v6, :cond_7

    .line 56
    invoke-static/range {p3 .. p3}, Lcom/supertws/dubokutv/LanSyncManager;->parseEpisodeNum(Ljava/lang/String;)I

    move-result v6

    .line 57
    invoke-static {v7}, Lcom/supertws/dubokutv/LanSyncManager;->parseEpisodeNum(Ljava/lang/String;)I

    move-result v15

    .line 58
    if-le v6, v15, :cond_6

    .line 59
    const/4 v15, 0x1

    goto :goto_4

    .line 60
    :cond_6
    if-ne v6, v15, :cond_7

    cmp-long v6, p4, v18

    if-lez v6, :cond_7

    .line 61
    const/4 v15, 0x1

    goto :goto_4

    .line 66
    :cond_7
    const/4 v15, 0x0

    :goto_4
    if-nez v15, :cond_9

    .line 67
    const-string v0, "LanSyncManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignored progress for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 119
    if-eqz v14, :cond_8

    .line 120
    :try_start_5
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_5

    :catch_2
    move-exception v0

    :cond_8
    :goto_5
    :try_start_6
    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 68
    return-void

    .line 71
    :cond_9
    if-eqz v3, :cond_b

    :try_start_7
    const-string v6, "http://"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    const-string v6, "https://"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 72
    :cond_a
    move-object v0, v3

    goto :goto_6

    :cond_b
    if-eqz v0, :cond_c

    goto :goto_6

    :cond_c
    const-string v0, ""

    .line 73
    :goto_6
    if-eqz v1, :cond_d

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "example.com"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 74
    goto :goto_7

    :cond_d
    if-eqz v5, :cond_e

    move-object v1, v5

    goto :goto_7

    :cond_e
    const-string v1, ""

    .line 75
    :goto_7
    if-eqz v2, :cond_f

    invoke-virtual/range {p11 .. p11}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_f

    const-string v3, "example.com"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 76
    goto :goto_8

    :cond_f
    if-eqz v8, :cond_10

    move-object v6, v8

    goto :goto_9

    :cond_10
    const-string v2, ""

    :goto_8
    move-object v6, v2

    .line 78
    .line 80
    :goto_9
    move-object/from16 v2, p1
    move-wide/from16 v3, p6
    invoke-static {v2, v3, v4}, Lcom/supertws/dubokutv/LanSyncManager;->onRemoteProgress(Ljava/lang/String;J)V
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 81
    const-string v3, "id"

    if-eqz v12, :cond_11

    move-object v4, v12

    goto :goto_a

    :cond_11
    if-eqz p8, :cond_12

    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_12

    move-object/from16 v4, p8

    goto :goto_a

    if-eqz v12, :cond_12

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_12

    move-object v4, v12

    goto :goto_a

    :cond_12
    move-object v4, v9

    :goto_a
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v3, "name"

    invoke-virtual {v2, v3, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v3, "episode"

    invoke-virtual {v2, v3, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v3, "progressInMillis"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 85
    const-string v3, "durationInMillis"

    cmp-long v4, p9, v16

    if-lez v4, :cond_13

    move-wide/from16 v4, p9

    goto :goto_b

    :cond_13
    move-wide/from16 v4, v22

    :goto_b
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 86
    const-string v3, "createdAt"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 87
    const-string v3, "modifiedAt"

    cmp-long v4, p6, v16

    if-lez v4, :cond_14

    move-wide/from16 v4, p6

    goto :goto_c

    :cond_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    :goto_c
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 88
    const-string v3, "videoPageUrl"

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v3, "detailPageUrl"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v1, "posterUrl"

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v0, "records"

    const/4 v1, 0x5

    const/4 v8, 0x0

    invoke-virtual {v14, v0, v8, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J


    const/4 v0, 0x1

    sput-boolean v0, Lcom/supertws/dubokutv/LanSyncManager;->sCloudMergeChanged:Z

    .line 93
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->access$400()Lcom/supertws/dubokutv/HandoffProgress;

    move-result-object v1

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-object v13, v7

    move-object/from16 v21, v8

    move-wide/from16 v7, p6

    invoke-virtual/range {v1 .. v8}, Lcom/supertws/dubokutv/HandoffProgress;->offer(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 96
    :try_start_8
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 97
    nop

    .line 98
    goto :goto_d

    :catch_3
    move-exception v0

    move-object/from16 v21, v14

    .line 100
    :goto_d
    nop

    .line 101
    if-eqz v12, :cond_16

    if-eqz v10, :cond_16

    :try_start_9
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 102
    cmp-long v0, p9, v16

    if-lez v0, :cond_15

    move-wide/from16 v22, p9

    .line 103
    :cond_15
    cmp-long v0, v22, v16

    if-lez v0, :cond_16

    .line 104
    const-wide/16 v0, 0x64

    mul-long v18, v18, v0

    div-long v2, v18, v22

    long-to-int v3, v2

    .line 105
    mul-long v0, v0, p4

    div-long v0, v0, v22

    long-to-int v1, v0

    .line 106
    if-ne v3, v1, :cond_16

    .line 107
    const/4 v13, 0x0

    goto :goto_e

    .line 112
    :cond_16
    const/4 v13, 0x1

    :goto_e
    if-eqz v13, :cond_17

    .line 113
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->bumpSyncVersion()V

    .line 115
    :cond_17
    const-string v0, "LanSyncManager"

    const-wide/16 v1, 0x3e8

    div-long v1, p4, v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Synced newer remote progress for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " @"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "s from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, p13

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (bumpUi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 119
    if-eqz v21, :cond_18

    .line 120
    :try_start_a
    invoke-virtual/range {v21 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_11

    :catch_4
    move-exception v0

    goto :goto_11

    .line 119
    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object/from16 v12, v21

    goto :goto_12

    .line 116
    :catch_5
    move-exception v0

    move-object/from16 v12, v21

    goto :goto_10

    :catch_6
    move-exception v0

    move-object v12, v14

    goto :goto_10

    .line 119
    :catchall_2
    move-exception v0

    move-object/from16 v21, v12

    :goto_f
    move-object v1, v0

    goto :goto_12

    .line 116
    :catch_7
    move-exception v0

    move-object/from16 v21, v12

    .line 117
    :goto_10
    :try_start_b
    const-string v1, "LanSyncManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error writing sync record: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 119
    if-eqz v12, :cond_18

    .line 120
    :try_start_c
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 123
    :cond_18
    :goto_11
    :try_start_d
    monitor-exit v11
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 124
    return-void

    .line 119
    :catchall_3
    move-exception v0

    goto :goto_f

    :goto_12
    if-eqz v12, :cond_19

    .line 120
    :try_start_e
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    goto :goto_13

    :catch_8
    move-exception v0

    .line 122
    :cond_19
    :goto_13
    :try_start_f
    throw v1

    .line 123
    :catchall_4
    move-exception v0

    monitor-exit v11
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    goto :goto_15

    :goto_14
    throw v0

    :goto_15
    goto :goto_14
.end method
