.class final Lcom/supertws/dubokutv/SyncVersionStore;
.super Ljava/lang/Object;
.source "SyncVersionStore.java"


# static fields
.field private static final PREFS:Ljava/lang/String; = "r2_sync_clock"

.field private static final ROW:Ljava/lang/String; = "row."

.field private static final USED:Ljava/lang/String; = "used."


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fromJson(Lorg/json/JSONObject;)Lcom/supertws/dubokutv/SyncVersion;
    .registers 13

    .line 62
    const/4 v0, 0x0

    if-eqz p0, :cond_99

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_c

    goto/16 :goto_99

    .line 63
    :cond_c
    const-string v1, "utcMillis"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "logicalCounter"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 64
    instance-of v5, v2, Ljava/lang/Number;

    if-eqz v5, :cond_98

    instance-of v5, v4, Ljava/lang/Number;

    if-nez v5, :cond_22

    goto/16 :goto_98

    .line 65
    :cond_22
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v7

    .line 66
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_97

    invoke-static {v5, v6}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_97

    .line 67
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_97

    invoke-static {v7, v8}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_97

    .line 68
    invoke-static {v5, v6}, Ljava/lang/Math;->rint(D)D

    move-result-wide v9

    cmpl-double v2, v5, v9

    if-nez v2, :cond_97

    invoke-static {v7, v8}, Ljava/lang/Math;->rint(D)D

    move-result-wide v9

    cmpl-double v2, v7, v9

    if-nez v2, :cond_97

    const-wide v9, 0x433fffffffffffffL    # 9.007199254740991E15

    cmpl-double v2, v5, v9

    if-gtz v2, :cond_97

    cmpl-double v2, v7, v9

    if-lez v2, :cond_64

    goto :goto_97

    .line 70
    :cond_64
    const-wide/16 v4, -0x1

    invoke-virtual {p0, v1, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v7

    invoke-virtual {p0, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v9

    .line 71
    const-string v1, "deviceId"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 72
    const-wide/16 v1, 0x0

    cmp-long p0, v7, v1

    if-ltz p0, :cond_96

    cmp-long p0, v9, v1

    if-ltz p0, :cond_96

    const-wide v1, 0x1fffffffffffffL

    cmp-long p0, v9, v1

    if-gtz p0, :cond_96

    invoke-static {v11}, Lcom/supertws/dubokutv/FamilyIdentity;->validId(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_90

    goto :goto_96

    .line 73
    :cond_90
    new-instance v6, Lcom/supertws/dubokutv/SyncVersion;

    invoke-direct/range {v6 .. v11}, Lcom/supertws/dubokutv/SyncVersion;-><init>(JJLjava/lang/String;)V

    return-object v6

    .line 72
    :cond_96
    :goto_96
    return-object v0

    .line 69
    :cond_97
    :goto_97
    return-object v0

    .line 64
    :cond_98
    :goto_98
    return-object v0

    .line 62
    :cond_99
    :goto_99
    return-object v0
.end method

.method static declared-synchronized get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/supertws/dubokutv/SyncVersion;
    .registers 14

    const-class v1, Lcom/supertws/dubokutv/SyncVersionStore;

    monitor-enter v1

    .line 35
    if-eqz p0, :cond_3b

    .line 36
    :try_start_5
    invoke-static {p0}, Lcom/supertws/dubokutv/SyncVersionStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 37
    invoke-static {p1, p2}, Lcom/supertws/dubokutv/SyncVersionStore;->rowKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/supertws/dubokutv/SyncVersionStore;->read(Landroid/content/SharedPreferences;Ljava/lang/String;)Lcom/supertws/dubokutv/SyncVersion;

    move-result-object v0

    .line 38
    if-eqz v0, :cond_3b

    .line 39
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "used."

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {p1, p2}, Lcom/supertws/dubokutv/SyncVersionStore;->rowKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_39
    .catchall {:try_start_5 .. :try_end_39} :catchall_4b

    .line 40
    monitor-exit v1

    return-object v0

    .line 43
    :cond_3b
    :try_start_3b
    new-instance v2, Lcom/supertws/dubokutv/SyncVersion;

    const-wide/16 p0, 0x0

    invoke-static {p0, p1, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/supertws/dubokutv/SyncVersion;-><init>(JJLjava/lang/String;)V
    :try_end_49
    .catchall {:try_start_3b .. :try_end_49} :catchall_4b

    monitor-exit v1

    return-object v2

    .line 34
    :catchall_4b
    move-exception v0

    move-object p0, v0

    :try_start_4d
    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4b

    throw p0
.end method

.method static synthetic lambda$prune$0([Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    .line 101
    const/4 v0, 0x1

    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    aget-object p0, p1, v0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    invoke-static {v1, v2, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method static declared-synchronized localCommit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/supertws/dubokutv/SyncVersion;
    .registers 27

    const-class v1, Lcom/supertws/dubokutv/SyncVersionStore;

    monitor-enter v1

    .line 21
    :try_start_3
    invoke-static/range {p0 .. p0}, Lcom/supertws/dubokutv/SyncVersionStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 22
    invoke-static/range {p1 .. p2}, Lcom/supertws/dubokutv/SyncVersionStore;->rowKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/supertws/dubokutv/SyncVersionStore;->read(Landroid/content/SharedPreferences;Ljava/lang/String;)Lcom/supertws/dubokutv/SyncVersion;

    move-result-object v2

    .line 23
    const-wide/16 v3, 0x0

    if-nez v2, :cond_15

    move-wide v5, v3

    goto :goto_17

    :cond_15
    iget-wide v5, v2, Lcom/supertws/dubokutv/SyncVersion;->utcMillis:J

    .line 24
    :goto_17
    move-wide/from16 v7, p3

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 25
    if-eqz v2, :cond_25

    cmp-long v9, v5, v7

    if-ltz v9, :cond_25

    const/4 v9, 0x1

    goto :goto_26

    :cond_25
    const/4 v9, 0x0

    .line 26
    :goto_26
    invoke-static/range {p0 .. p0}, Lcom/supertws/dubokutv/FamilyClock;->now(Landroid/content/Context;)J

    move-result-wide v10

    const-string v12, "clockUtc"

    invoke-interface {v0, v12, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    const-string v14, "clockCounter"

    .line 27
    invoke-interface {v0, v14, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v16

    .line 28
    if-eqz v9, :cond_3e

    iget-wide v3, v2, Lcom/supertws/dubokutv/SyncVersion;->logicalCounter:J

    :cond_3e
    move-wide/from16 v18, v3

    .line 26
    move-object/from16 v20, p5

    invoke-static/range {v10 .. v20}, Lcom/supertws/dubokutv/SyncVersion;->next(JJJJJLjava/lang/String;)Lcom/supertws/dubokutv/SyncVersion;

    move-result-object v2

    .line 29
    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p5

    invoke-static {v0, v3, v4, v2, v5}, Lcom/supertws/dubokutv/SyncVersionStore;->write(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Lcom/supertws/dubokutv/SyncVersion;Ljava/lang/String;)V
    :try_end_4f
    .catchall {:try_start_3 .. :try_end_4f} :catchall_51

    .line 30
    monitor-exit v1

    return-object v2

    .line 20
    :catchall_51
    move-exception v0

    :try_start_52
    monitor-exit v1
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw v0
.end method

.method private static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    .line 118
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "r2_sync_clock"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private static prune(Landroid/content/SharedPreferences;)V
    .registers 9

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "used."

    if-eqz v2, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 98
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-interface {p0, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_3e
    goto :goto_11

    .line 100
    :cond_3f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x14

    if-gt v1, v2, :cond_48

    return-void

    .line 101
    :cond_48
    new-instance v1, Lcom/supertws/dubokutv/SyncVersionStore$0;

    invoke-direct {v1}, Lcom/supertws/dubokutv/SyncVersionStore$0;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 102
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 103
    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_56
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v2

    if-ge v4, v5, :cond_9b

    .line 104
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "row."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 103
    add-int/lit8 v4, v4, 0x1

    goto :goto_56

    .line 106
    :cond_9b
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 107
    return-void
.end method

.method private static read(Landroid/content/SharedPreferences;Ljava/lang/String;)Lcom/supertws/dubokutv/SyncVersion;
    .registers 5

    .line 91
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "row."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/supertws/dubokutv/SyncVersionStore;->fromJson(Lorg/json/JSONObject;)Lcom/supertws/dubokutv/SyncVersion;

    move-result-object p0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    return-object p0

    .line 92
    :catch_23
    move-exception p0

    const/4 p0, 0x0

    return-object p0
.end method

.method static declared-synchronized rememberRemote(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/supertws/dubokutv/SyncVersion;Ljava/lang/String;)V
    .registers 21

    move-object/from16 v0, p3

    const-class v1, Lcom/supertws/dubokutv/SyncVersionStore;

    monitor-enter v1

    .line 48
    if-eqz p0, :cond_50

    if-nez v0, :cond_a

    goto :goto_50

    .line 49
    :cond_a
    :try_start_a
    invoke-static/range {p0 .. p0}, Lcom/supertws/dubokutv/SyncVersionStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 50
    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v13, p4

    invoke-static {v2, v3, v4, v0, v13}, Lcom/supertws/dubokutv/SyncVersionStore;->write(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Lcom/supertws/dubokutv/SyncVersion;Ljava/lang/String;)V

    .line 51
    invoke-static/range {p0 .. p0}, Lcom/supertws/dubokutv/FamilyClock;->now(Landroid/content/Context;)J

    move-result-wide v3

    const-string v5, "clockUtc"

    const-wide/16 v6, 0x0

    invoke-interface {v2, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v5, "clockCounter"

    .line 52
    invoke-interface {v2, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    move-wide v14, v8

    move-wide v7, v5

    move-wide v5, v14

    iget-wide v9, v0, Lcom/supertws/dubokutv/SyncVersion;->utcMillis:J

    iget-wide v11, v0, Lcom/supertws/dubokutv/SyncVersion;->logicalCounter:J

    .line 51
    invoke-static/range {v3 .. v13}, Lcom/supertws/dubokutv/SyncVersion;->next(JJJJJLjava/lang/String;)Lcom/supertws/dubokutv/SyncVersion;

    move-result-object v0

    .line 53
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "clockUtc"

    iget-wide v4, v0, Lcom/supertws/dubokutv/SyncVersion;->utcMillis:J

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "clockCounter"

    iget-wide v4, v0, Lcom/supertws/dubokutv/SyncVersion;->logicalCounter:J

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_4b
    .catchall {:try_start_a .. :try_end_4b} :catchall_4d

    .line 54
    monitor-exit v1

    return-void

    .line 47
    :catchall_4d
    move-exception v0

    :try_start_4e
    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw v0

    .line 48
    :cond_50
    :goto_50
    monitor-exit v1

    return-void
.end method

.method private static rowKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 111
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_36

    .line 112
    const-string v2, ""

    if-nez p0, :cond_10

    move-object p0, v2

    :cond_10
    :try_start_10
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\u0000"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    if-nez p1, :cond_1d

    move-object p1, v2

    :cond_1d
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UTF-8"

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 113
    const/16 p1, 0xb

    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_35} :catch_36

    return-object p0

    .line 114
    :catch_36
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "sync_key_unavailable"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method static toJson(Lcom/supertws/dubokutv/SyncVersion;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 57
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "utcMillis"

    iget-wide v2, p0, Lcom/supertws/dubokutv/SyncVersion;->utcMillis:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0

    iget-wide v1, p0, Lcom/supertws/dubokutv/SyncVersion;->logicalCounter:J

    .line 58
    const-string v3, "logicalCounter"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "deviceId"

    iget-object p0, p0, Lcom/supertws/dubokutv/SyncVersion;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    .line 57
    return-object p0
.end method

.method private static write(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Lcom/supertws/dubokutv/SyncVersion;Ljava/lang/String;)V
    .registers 23

    .line 78
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static/range {p1 .. p2}, Lcom/supertws/dubokutv/SyncVersionStore;->rowKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 79
    iget-wide v3, v1, Lcom/supertws/dubokutv/SyncVersion;->utcMillis:J

    const-string v14, "clockUtc"

    const-wide/16 v5, 0x0

    invoke-interface {v0, v14, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 80
    const-string v15, "clockCounter"

    invoke-interface {v0, v15, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iget-wide v9, v1, Lcom/supertws/dubokutv/SyncVersion;->utcMillis:J

    iget-wide v11, v1, Lcom/supertws/dubokutv/SyncVersion;->logicalCounter:J

    .line 79
    move-wide/from16 v16, v7

    move-wide v7, v5

    move-wide/from16 v5, v16

    move-object/from16 v13, p4

    invoke-static/range {v3 .. v13}, Lcom/supertws/dubokutv/SyncVersion;->next(JJJJJLjava/lang/String;)Lcom/supertws/dubokutv/SyncVersion;

    move-result-object v3

    .line 82
    :try_start_27
    invoke-static {v1}, Lcom/supertws/dubokutv/SyncVersionStore;->toJson(Lcom/supertws/dubokutv/SyncVersion;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2f} :catch_79

    .line 83
    nop

    .line 84
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "row."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "used."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-wide v4, v3, Lcom/supertws/dubokutv/SyncVersion;->utcMillis:J

    .line 86
    invoke-interface {v1, v14, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-wide v2, v3, Lcom/supertws/dubokutv/SyncVersion;->logicalCounter:J

    invoke-interface {v1, v15, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 87
    invoke-static {v0}, Lcom/supertws/dubokutv/SyncVersionStore;->prune(Landroid/content/SharedPreferences;)V

    .line 88
    return-void

    .line 83
    :catch_79
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "sync_version_unavailable"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
