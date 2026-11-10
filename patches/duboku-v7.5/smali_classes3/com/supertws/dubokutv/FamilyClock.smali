.class final Lcom/supertws/dubokutv/FamilyClock;
.super Ljava/lang/Object;
.source "FamilyClock.java"


# static fields
.field private static final MAX_OFFSET_MS:J = 0x493e0L

.field private static final MAX_RTT_MS:J = 0x1388L

.field private static final MAX_SAMPLE_AGE_MS:J = 0x1499700L

.field private static final PREFS:Ljava/lang/String; = "r2_sync_clock"

.field private static final UNCALIBRATED_MS:J = 0x5265c00L


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static accept(Landroid/content/Context;JJZLjava/lang/String;)V
    .registers 27

    .line 64
    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    move/from16 v4, p5

    move-object/from16 v5, p6

    invoke-static/range {p0 .. p0}, Lcom/supertws/dubokutv/FamilyClock;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 65
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 66
    invoke-static {v6, v7, v8}, Lcom/supertws/dubokutv/FamilyClock;->trusted(Landroid/content/SharedPreferences;J)Z

    move-result v9

    .line 67
    invoke-static/range {p0 .. p0}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v10

    invoke-virtual {v10}, Lcom/supertws/dubokutv/FamilyIdentity;->deviceId()Ljava/lang/String;

    move-result-object v10

    .line 68
    const-string v11, "source"

    const-string v12, ""

    invoke-interface {v6, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 69
    invoke-static {v6, v7, v8}, Lcom/supertws/dubokutv/FamilyClock;->uncertainty(Landroid/content/SharedPreferences;J)J

    move-result-wide v14

    .line 70
    if-eqz v4, :cond_46

    .line 71
    const-string v10, "cloud"

    if-eqz v9, :cond_39

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_39

    cmp-long v16, v2, v14

    if-ltz v16, :cond_39

    return-void

    .line 72
    :cond_39
    if-eqz v9, :cond_5c

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5c

    cmp-long v9, v2, v14

    if-lez v9, :cond_5c

    return-void

    .line 74
    :cond_46
    if-nez v9, :cond_f3

    invoke-virtual {v5, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-gez v9, :cond_f3

    .line 75
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5c

    invoke-virtual {v13, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_5c

    goto/16 :goto_f3

    .line 77
    :cond_5c
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    const-string v15, "candidateCount"

    const-wide/32 v16, 0x493e0

    const-string v13, "candidateSource"

    const-string v14, "candidateOffset"

    cmp-long v18, v9, v16

    if-lez v18, :cond_c3

    .line 78
    const-wide/high16 v9, -0x8000000000000000L

    invoke-interface {v6, v14, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v16

    .line 79
    invoke-interface {v6, v13, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 82
    const/16 v18, 0x1

    cmp-long v19, v16, v9

    if-eqz v19, :cond_ab

    .line 80
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ab

    const-wide v9, 0x7ffffffffffff82fL

    cmp-long v12, v16, v9

    if-gtz v12, :cond_ab

    const-wide v9, -0x7ffffffffffff830L    # -9.88E-321

    cmp-long v12, v16, v9

    if-ltz v12, :cond_ab

    sub-long v16, v16, v0

    .line 82
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    const-wide/16 v16, 0x7d0

    cmp-long v12, v9, v16

    if-gtz v12, :cond_ab

    .line 83
    const/4 v9, 0x0

    invoke-interface {v6, v15, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    add-int/lit8 v18, v9, 0x1

    move/from16 v9, v18

    goto :goto_ac

    :cond_ab
    const/4 v9, 0x1

    .line 84
    :goto_ac
    const/4 v10, 0x3

    if-ge v9, v10, :cond_c3

    .line 85
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v13, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 86
    invoke-interface {v0, v15, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 87
    return-void

    .line 90
    :cond_c3
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v9, "targetOffset"

    invoke-interface {v6, v9, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "uncertainty"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 91
    const-string v1, "sampleElapsed"

    invoke-interface {v0, v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "trusted"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 92
    invoke-interface {v0, v11, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v14}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v13}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 93
    invoke-interface {v0, v15}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 94
    return-void

    .line 75
    :cond_f3
    :goto_f3
    return-void
.end method

.method static declared-synchronized isTrusted(Landroid/content/Context;)Z
    .registers 4

    const-class v0, Lcom/supertws/dubokutv/FamilyClock;

    monitor-enter v0

    .line 101
    if-eqz p0, :cond_18

    :try_start_5
    invoke-static {p0}, Lcom/supertws/dubokutv/FamilyClock;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {p0, v1, v2}, Lcom/supertws/dubokutv/FamilyClock;->trusted(Landroid/content/SharedPreferences;J)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    .line 101
    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw p0

    .line 101
    :cond_18
    const/4 p0, 0x0

    :goto_19
    monitor-exit v0

    return p0
.end method

.method static declared-synchronized now(Landroid/content/Context;)J
    .registers 22

    const-class v1, Lcom/supertws/dubokutv/FamilyClock;

    monitor-enter v1

    .line 18
    if-nez p0, :cond_b

    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_ae

    monitor-exit v1

    return-wide v2

    .line 19
    :cond_b
    :try_start_b
    invoke-static/range {p0 .. p0}, Lcom/supertws/dubokutv/FamilyClock;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 21
    const-string v4, "lastElapsed"

    const-wide/16 v5, -0x1

    invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 22
    const-wide/16 v9, 0x0

    cmp-long v4, v7, v9

    if-ltz v4, :cond_29

    cmp-long v11, v2, v7

    if-gez v11, :cond_26

    goto :goto_29

    :cond_26
    sub-long v11, v2, v7

    goto :goto_2a

    :cond_29
    :goto_29
    move-wide v11, v9

    .line 23
    :goto_2a
    const-string v13, "targetOffset"

    invoke-interface {v0, v13, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    .line 24
    const-string v15, "appliedOffset"

    invoke-interface {v0, v15, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v15

    .line 25
    move-wide/from16 v17, v9

    const-string v9, "lastWall"

    invoke-interface {v0, v9, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 26
    if-ltz v4, :cond_55

    cmp-long v4, v2, v7

    if-ltz v4, :cond_55

    cmp-long v4, v5, v17

    if-lez v4, :cond_55

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    invoke-static {v7, v8, v11, v12}, Lcom/supertws/dubokutv/SyncClockMath;->wallStepCorrection(JJ)J

    move-result-wide v4

    .line 28
    add-long/2addr v13, v4

    .line 29
    add-long/2addr v15, v4

    move-wide v4, v13

    goto :goto_56

    .line 31
    :cond_55
    move-wide v4, v13

    :goto_56
    const-wide/16 v6, 0x14

    div-long v6, v11, v6

    const-wide/16 v8, 0x1

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 32
    sub-long v8, v4, v15

    .line 33
    cmp-long v10, v8, v6

    if-lez v10, :cond_68

    add-long/2addr v15, v6

    goto :goto_70

    .line 34
    :cond_68
    neg-long v13, v6

    cmp-long v10, v8, v13

    if-gez v10, :cond_6f

    sub-long/2addr v15, v6

    goto :goto_70

    .line 35
    :cond_6f
    move-wide v15, v4

    .line 36
    :goto_70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const-string v6, "lastEffective"

    .line 37
    move-wide/from16 v7, v17

    invoke-interface {v0, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v17

    .line 36
    move-wide/from16 v19, v11

    invoke-static/range {v13 .. v20}, Lcom/supertws/dubokutv/SyncClockMath;->correctedTime(JJJJ)J

    move-result-wide v6

    move-wide v8, v15

    .line 38
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v10, "targetOffset"

    invoke-interface {v0, v10, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "appliedOffset"

    invoke-interface {v0, v4, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "lastEffective"

    invoke-interface {v0, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "lastWall"

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-interface {v0, v4, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "lastElapsed"

    .line 40
    invoke-interface {v0, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_ac
    .catchall {:try_start_b .. :try_end_ac} :catchall_ae

    .line 41
    monitor-exit v1

    return-wide v6

    .line 17
    :catchall_ae
    move-exception v0

    :try_start_af
    monitor-exit v1
    :try_end_b0
    .catchall {:try_start_af .. :try_end_b0} :catchall_ae

    throw v0
.end method

.method static declared-synchronized observeLanTime(Landroid/content/Context;Ljava/lang/String;JJJJJZ)V
    .registers 25

    const-class v1, Lcom/supertws/dubokutv/FamilyClock;

    monitor-enter v1

    .line 55
    if-eqz p0, :cond_5a

    :try_start_5
    invoke-static {p1}, Lcom/supertws/dubokutv/FamilyIdentity;->validId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 56
    invoke-static {p0}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->peers()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 57
    const-wide/16 v10, 0x1388

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-static/range {v2 .. v11}, Lcom/supertws/dubokutv/SyncClockMath;->validRoundTrip(JJJJJ)Z

    move-result v0

    if-eqz v0, :cond_5a

    const-wide/16 v2, 0x0

    cmp-long v0, p10, v2

    if-ltz v0, :cond_5a

    const-wide/32 v2, 0x5265c00

    cmp-long v0, p10, v2

    if-lez v0, :cond_36

    goto :goto_5a

    .line 59
    :cond_36
    invoke-static/range {p2 .. p9}, Lcom/supertws/dubokutv/SyncClockMath;->roundTripMillis(JJJJ)J

    move-result-wide v2

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    const-wide/16 v4, 0x1

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-long v2, p10, v2

    .line 60
    invoke-static/range {p2 .. p9}, Lcom/supertws/dubokutv/SyncClockMath;->offsetMillis(JJJJ)J

    move-result-wide p2

    move-object/from16 p8, p1

    move-wide p3, p2

    move/from16 p7, p12

    move-wide/from16 p5, v2

    move-object p2, p0

    invoke-static/range {p2 .. p8}, Lcom/supertws/dubokutv/FamilyClock;->accept(Landroid/content/Context;JJZLjava/lang/String;)V
    :try_end_54
    .catchall {:try_start_5 .. :try_end_54} :catchall_56

    .line 61
    monitor-exit v1

    return-void

    .line 54
    :catchall_56
    move-exception v0

    move-object p0, v0

    :try_start_58
    monitor-exit v1
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_56

    throw p0

    .line 58
    :cond_5a
    :goto_5a
    monitor-exit v1

    return-void
.end method

.method static declared-synchronized observeServerTime(Landroid/content/Context;JJJ)V
    .registers 22

    const-class v1, Lcom/supertws/dubokutv/FamilyClock;

    monitor-enter v1

    .line 45
    if-eqz p0, :cond_35

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_35

    cmp-long v0, p5, p3

    if-ltz v0, :cond_35

    sub-long v2, p5, p3

    const-wide/16 v4, 0x1388

    cmp-long v0, v2, v4

    if-lez v0, :cond_18

    goto :goto_35

    .line 47
    :cond_18
    const-wide/16 v4, 0x2

    :try_start_1a
    div-long v6, v2, v4

    add-long v6, p3, v6

    .line 48
    sub-long v9, p1, v6

    div-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    const-string v14, "cloud"

    const/4 v13, 0x1

    move-object v8, p0

    invoke-static/range {v8 .. v14}, Lcom/supertws/dubokutv/FamilyClock;->accept(Landroid/content/Context;JJZLjava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_1a .. :try_end_2f} :catchall_31

    .line 50
    monitor-exit v1

    return-void

    .line 44
    :catchall_31
    move-exception v0

    move-object p0, v0

    :try_start_33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_31

    throw p0

    .line 46
    :cond_35
    :goto_35
    monitor-exit v1

    return-void
.end method

.method private static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    .line 121
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "r2_sync_clock"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method static declared-synchronized source(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-class v0, Lcom/supertws/dubokutv/FamilyClock;

    monitor-enter v0

    .line 105
    if-nez p0, :cond_8

    :try_start_5
    const-string p0, ""

    goto :goto_14

    :cond_8
    invoke-static {p0}, Lcom/supertws/dubokutv/FamilyClock;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "source"

    const-string v2, ""

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_16

    :goto_14
    monitor-exit v0

    return-object p0

    .line 105
    :catchall_16
    move-exception p0

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p0
.end method

.method private static trusted(Landroid/content/SharedPreferences;J)Z
    .registers 9

    .line 115
    const-string v0, "sampleElapsed"

    const-wide/16 v1, -0x1

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 116
    const-string v2, "trusted"

    const/4 v3, 0x0

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_24

    const-wide/16 v4, 0x0

    cmp-long p0, v0, v4

    if-ltz p0, :cond_24

    cmp-long p0, p1, v0

    if-ltz p0, :cond_24

    sub-long/2addr p1, v0

    const-wide/32 v0, 0x1499700

    cmp-long p0, p1, v0

    if-gtz p0, :cond_24

    const/4 v3, 0x1

    :cond_24
    return v3
.end method

.method static declared-synchronized uncertainty(Landroid/content/Context;)J
    .registers 4

    const-class v0, Lcom/supertws/dubokutv/FamilyClock;

    monitor-enter v0

    .line 97
    if-nez p0, :cond_9

    const-wide/32 v1, 0x5265c00

    goto :goto_15

    :cond_9
    :try_start_9
    invoke-static {p0}, Lcom/supertws/dubokutv/FamilyClock;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {p0, v1, v2}, Lcom/supertws/dubokutv/FamilyClock;->uncertainty(Landroid/content/SharedPreferences;J)J

    move-result-wide v1
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_17

    :goto_15
    monitor-exit v0

    return-wide v1

    .line 97
    :catchall_17
    move-exception p0

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw p0
.end method

.method private static uncertainty(Landroid/content/SharedPreferences;J)J
    .registers 10

    .line 109
    const-string v0, "sampleElapsed"

    const-wide/16 v1, -0x1

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 110
    const-wide/16 v2, 0x0

    const-wide/32 v4, 0x5265c00

    cmp-long v6, v0, v2

    if-ltz v6, :cond_2e

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2e

    sub-long/2addr p1, v0

    const-wide/32 v0, 0x1499700

    cmp-long v2, p1, v0

    if-lez v2, :cond_1e

    goto :goto_2e

    .line 111
    :cond_1e
    const-string v0, "uncertainty"

    invoke-interface {p0, v0, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    div-long/2addr p1, v2

    add-long/2addr v0, p1

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0

    .line 110
    :cond_2e
    :goto_2e
    return-wide v4
.end method
