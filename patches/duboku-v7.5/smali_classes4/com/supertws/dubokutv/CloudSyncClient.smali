.class public final Lcom/supertws/dubokutv/CloudSyncClient;
.super Ljava/lang/Object;
.source "CloudSyncClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/supertws/dubokutv/CloudSyncClient$RequestResult;
    }
.end annotation


# static fields
.field public static final BASE_URL:Ljava/lang/String; = "https://cleantv-r2-sync.jerry-shao.workers.dev"

.field private static final LOCK:Ljava/lang/Object;

.field private static final MAX_BODY_BYTES:I = 0x10000

.field private static final QUEUE:Ljava/util/concurrent/ScheduledExecutorService;

.field private static final READ_GATE:Lcom/supertws/dubokutv/CloudSyncGate;

.field private static final TAG:Ljava/lang/String; = "R2Sync"

.field private static volatile appContext:Landroid/content/Context;

.field private static captureImmediate:Z

.field private static capturePending:Z

.field private static captureVersion:J

.field private static drainRunnable:Ljava/lang/Runnable;

.field private static volatile draining:Z

.field private static lastReadFinishedAt:J

.field private static volatile lastUploadAt:J

.field private static volatile latest:Lcom/supertws/dubokutv/ProgressSnapshot;

.field private static volatile latestImmediate:Z

.field private static volatile pauseUrgentUntilMs:J

.field private static readRetryCount:I

.field private static readScheduled:Z

.field private static volatile retryCount:I

.field private static volatile retrySnapshot:Lcom/supertws/dubokutv/ProgressSnapshot;

.field private static scheduledDrain:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private static scheduledRetryBackoff:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/supertws/dubokutv/CloudSyncClient;->QUEUE:Ljava/util/concurrent/ScheduledExecutorService;

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/supertws/dubokutv/CloudSyncClient;->LOCK:Ljava/lang/Object;

    .line 30
    new-instance v0, Lcom/supertws/dubokutv/CloudSyncGate;

    invoke-direct {v0}, Lcom/supertws/dubokutv/CloudSyncGate;-><init>()V

    sput-object v0, Lcom/supertws/dubokutv/CloudSyncClient;->READ_GATE:Lcom/supertws/dubokutv/CloudSyncGate;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .line 24
    sget-object v0, Lcom/supertws/dubokutv/CloudSyncClient;->LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()J
    .locals 2

    .line 24
    sget-wide v0, Lcom/supertws/dubokutv/CloudSyncClient;->captureVersion:J

    return-wide v0
.end method

.method static synthetic access$1000()Z
    .locals 1

    .line 24
    sget-boolean v0, Lcom/supertws/dubokutv/CloudSyncClient;->latestImmediate:Z

    return v0
.end method

.method static synthetic access$1002(Z)Z
    .locals 0

    .line 24
    sput-boolean p0, Lcom/supertws/dubokutv/CloudSyncClient;->latestImmediate:Z

    return p0
.end method

.method static synthetic access$1100()J
    .locals 2

    .line 24
    sget-wide v0, Lcom/supertws/dubokutv/CloudSyncClient;->lastUploadAt:J

    return-wide v0
.end method

.method static synthetic access$1102(J)J
    .locals 0

    .line 24
    sput-wide p0, Lcom/supertws/dubokutv/CloudSyncClient;->lastUploadAt:J

    return-wide p0
.end method

.method static synthetic access$1200()Landroid/content/Context;
    .locals 1

    .line 24
    sget-object v0, Lcom/supertws/dubokutv/CloudSyncClient;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300()Landroid/content/SharedPreferences;
    .locals 1

    .line 24
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->dirtyPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400()J
    .locals 2

    .line 24
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->nextBackoff()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1502(I)I
    .locals 0

    .line 24
    sput p0, Lcom/supertws/dubokutv/CloudSyncClient;->retryCount:I

    return p0
.end method

.method static synthetic access$1602(Z)Z
    .locals 0

    .line 24
    sput-boolean p0, Lcom/supertws/dubokutv/CloudSyncClient;->draining:Z

    return p0
.end method

.method static synthetic access$1702(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 24
    sput-object p0, Lcom/supertws/dubokutv/CloudSyncClient;->drainRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1800(JZ)V
    .locals 0

    .line 24
    invoke-static {p0, p1, p2}, Lcom/supertws/dubokutv/CloudSyncClient;->scheduleDrainLocked(JZ)V

    return-void
.end method

.method static synthetic access$1902(J)J
    .locals 0

    .line 24
    sput-wide p0, Lcom/supertws/dubokutv/CloudSyncClient;->lastReadFinishedAt:J

    return-wide p0
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 24
    sget-boolean v0, Lcom/supertws/dubokutv/CloudSyncClient;->captureImmediate:Z

    return v0
.end method

.method static synthetic access$2002(Z)Z
    .locals 0

    .line 24
    sput-boolean p0, Lcom/supertws/dubokutv/CloudSyncClient;->readScheduled:Z

    return p0
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    .line 24
    sput-boolean p0, Lcom/supertws/dubokutv/CloudSyncClient;->captureImmediate:Z

    return p0
.end method

.method static synthetic access$2102(I)I
    .locals 0

    .line 24
    sput p0, Lcom/supertws/dubokutv/CloudSyncClient;->readRetryCount:I

    return p0
.end method

.method static synthetic access$2108()I
    .locals 2

    .line 24
    sget v0, Lcom/supertws/dubokutv/CloudSyncClient;->readRetryCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/supertws/dubokutv/CloudSyncClient;->readRetryCount:I

    return v0
.end method

.method static synthetic access$2200(Z)V
    .locals 0

    .line 24
    invoke-static {p0}, Lcom/supertws/dubokutv/CloudSyncClient;->onCommittedSave(Z)V

    return-void
.end method

.method static synthetic access$2300()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 24
    sget-object v0, Lcom/supertws/dubokutv/CloudSyncClient;->QUEUE:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$300(Landroid/content/Context;Z)V
    .locals 0

    .line 24
    invoke-static {p0, p1}, Lcom/supertws/dubokutv/CloudSyncClient;->captureCommittedSnapshot(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 24
    sget-boolean v0, Lcom/supertws/dubokutv/CloudSyncClient;->capturePending:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0

    .line 24
    sput-boolean p0, Lcom/supertws/dubokutv/CloudSyncClient;->capturePending:Z

    return p0
.end method

.method static synthetic access$500()Ljava/util/concurrent/ScheduledFuture;
    .locals 1

    .line 24
    sget-object v0, Lcom/supertws/dubokutv/CloudSyncClient;->scheduledDrain:Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method

.method static synthetic access$502(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 24
    sput-object p0, Lcom/supertws/dubokutv/CloudSyncClient;->scheduledDrain:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method

.method static synthetic access$602(Z)Z
    .locals 0

    .line 24
    sput-boolean p0, Lcom/supertws/dubokutv/CloudSyncClient;->scheduledRetryBackoff:Z

    return p0
.end method

.method static synthetic access$700()Lcom/supertws/dubokutv/CloudSyncGate;
    .locals 1

    .line 24
    sget-object v0, Lcom/supertws/dubokutv/CloudSyncClient;->READ_GATE:Lcom/supertws/dubokutv/CloudSyncGate;

    return-object v0
.end method

.method static synthetic access$800()Lcom/supertws/dubokutv/ProgressSnapshot;
    .locals 1

    .line 24
    sget-object v0, Lcom/supertws/dubokutv/CloudSyncClient;->retrySnapshot:Lcom/supertws/dubokutv/ProgressSnapshot;

    return-object v0
.end method

.method static synthetic access$802(Lcom/supertws/dubokutv/ProgressSnapshot;)Lcom/supertws/dubokutv/ProgressSnapshot;
    .locals 0

    .line 24
    sput-object p0, Lcom/supertws/dubokutv/CloudSyncClient;->retrySnapshot:Lcom/supertws/dubokutv/ProgressSnapshot;

    return-object p0
.end method

.method static synthetic access$900()Lcom/supertws/dubokutv/ProgressSnapshot;
    .locals 1

    .line 24
    sget-object v0, Lcom/supertws/dubokutv/CloudSyncClient;->latest:Lcom/supertws/dubokutv/ProgressSnapshot;

    return-object v0
.end method

.method static synthetic access$902(Lcom/supertws/dubokutv/ProgressSnapshot;)Lcom/supertws/dubokutv/ProgressSnapshot;
    .locals 0

    .line 24
    sput-object p0, Lcom/supertws/dubokutv/CloudSyncClient;->latest:Lcom/supertws/dubokutv/ProgressSnapshot;

    return-object p0
.end method

.method private static boundedText(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 128
    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 129
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x200

    if-gt v0, v1, :cond_1

    return-object p0

    .line 130
    :cond_1
    nop

    .line 131
    const/16 v0, 0x1ff

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v1, 0x1ff

    .line 132
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static captureCommittedSnapshot(Landroid/content/Context;Z)V
    .locals 13

    .line 102
    nop

    .line 104
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/supertws/dubokutv/FamilyIdentity;->ensure()V

    .line 105
    const-string v2, "record_database"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v0}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :try_start_1
    const-string v4, "SELECT id,name,episode,progressInMillis,durationInMillis,createdAt,modifiedAt,videoPageUrl,detailPageUrl,posterUrl FROM records ORDER BY modifiedAt DESC LIMIT 20"

    invoke-virtual {v2, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 107
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 108
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    const/4 v10, 0x1

    if-eqz v4, :cond_2

    .line 109
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/supertws/dubokutv/CloudSyncClient;->boundedText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 110
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/supertws/dubokutv/CloudSyncClient;->boundedText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 111
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    .line 112
    :cond_1
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 113
    const-string v7, "id"

    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "name"

    invoke-virtual {v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "episode"

    const/4 v5, 0x2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/supertws/dubokutv/CloudSyncClient;->boundedText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    const-string v4, "progressInMillis"

    const/4 v5, 0x3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v6, v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v4, "durationInMillis"

    const/4 v5, 0x4

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v6, v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 115
    const-string v4, "createdAt"

    const/4 v5, 0x5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v6, v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v4, "modifiedAt"

    const/4 v5, 0x6

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v6, v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 116
    const-string v4, "videoPageUrl"

    const/4 v5, 0x7

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/supertws/dubokutv/ProgressSnapshot;->normalizeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    const-string v4, "detailPageUrl"

    const/16 v5, 0x8

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/supertws/dubokutv/ProgressSnapshot;->normalizeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    const-string v4, "posterUrl"

    const/16 v5, 0x9

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/supertws/dubokutv/ProgressSnapshot;->normalizeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    invoke-virtual {v9, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 120
    goto/16 :goto_0

    .line 121
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sget-wide v6, Lcom/supertws/dubokutv/CloudSyncClient;->pauseUrgentUntilMs:J

    cmp-long v8, v4, v6

    if-gez v8, :cond_3

    const/4 v11, 0x1

    goto :goto_1

    :cond_3
    const/4 v11, 0x0

    .line 122
    :goto_1
    new-instance v12, Lcom/supertws/dubokutv/ProgressSnapshot;

    invoke-virtual {v1}, Lcom/supertws/dubokutv/FamilyIdentity;->familyId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/supertws/dubokutv/FamilyIdentity;->deviceId()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object v4, v12

    invoke-direct/range {v4 .. v9}, Lcom/supertws/dubokutv/ProgressSnapshot;-><init>(Ljava/lang/String;Ljava/lang/String;JLorg/json/JSONArray;)V

    if-nez p1, :cond_4

    if-eqz v11, :cond_5

    :cond_4
    const/4 v3, 0x1

    :cond_5
    invoke-static {p0, v12, v3}, Lcom/supertws/dubokutv/CloudSyncClient;->enqueueUpload(Landroid/content/Context;Lcom/supertws/dubokutv/ProgressSnapshot;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 124
    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    if-eqz v2, :cond_8

    goto :goto_3

    .line 123
    :catch_0
    move-exception p0

    goto :goto_2

    .line 124
    :catchall_0
    move-exception p0

    move-object v2, v0

    goto :goto_4

    .line 123
    :catch_1
    move-exception p0

    move-object v2, v0

    :goto_2
    :try_start_2
    const-string p1, "R2Sync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Committed snapshot unavailable: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 124
    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_7
    if-eqz v2, :cond_8

    :goto_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 125
    :cond_8
    return-void

    .line 124
    :catchall_1
    move-exception p0

    :goto_4
    if-eqz v0, :cond_9

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_9
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_a
    goto :goto_6

    :goto_5
    throw p0

    :goto_6
    goto :goto_5
.end method

.method public static createJoinCode()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 363
    sget-object v0, Lcom/supertws/dubokutv/CloudSyncClient;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v0

    .line 364
    invoke-virtual {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->familyId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->familySecret()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/supertws/dubokutv/CloudSyncClient;->registerFamily(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 365
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/v1/families/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->familyId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->enc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/join-code"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->familySecret()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v1, v0, v2}, Lcom/supertws/dubokutv/CloudSyncClient;->postJson(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 366
    const-string v1, "joinCode"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 367
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 368
    return-object v0

    .line 367
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "join_code_unavailable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "family_unavailable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static dirtyPrefs()Landroid/content/SharedPreferences;
    .locals 3

    .line 340
    sget-object v0, Lcom/supertws/dubokutv/CloudSyncClient;->appContext:Landroid/content/Context;

    const-string v1, "r2_sync_identity"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static enc(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 506
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static enqueueUpload(Landroid/content/Context;Lcom/supertws/dubokutv/ProgressSnapshot;Z)V
    .locals 3

    .line 137
    invoke-static {p0}, Lcom/supertws/dubokutv/CloudSyncClient;->initialize(Landroid/content/Context;)V

    .line 138
    if-nez p1, :cond_0

    return-void

    .line 139
    :cond_0
    sget-object p0, Lcom/supertws/dubokutv/CloudSyncClient;->LOCK:Ljava/lang/Object;

    monitor-enter p0

    .line 140
    :try_start_0
    sput-object p1, Lcom/supertws/dubokutv/CloudSyncClient;->latest:Lcom/supertws/dubokutv/ProgressSnapshot;

    .line 141
    sget-boolean p1, Lcom/supertws/dubokutv/CloudSyncClient;->latestImmediate:Z

    or-int/2addr p1, p2

    sput-boolean p1, Lcom/supertws/dubokutv/CloudSyncClient;->latestImmediate:Z

    .line 142
    sget-boolean p1, Lcom/supertws/dubokutv/CloudSyncClient;->draining:Z

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 143
    sget-boolean p1, Lcom/supertws/dubokutv/CloudSyncClient;->scheduledRetryBackoff:Z

    invoke-static {p2, p1}, Lcom/supertws/dubokutv/CloudSyncClient;->shouldPreemptDrain(ZZ)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/supertws/dubokutv/CloudSyncClient;->scheduledDrain:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p1, :cond_1

    .line 144
    invoke-interface {p1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 145
    const/4 p1, 0x0

    sput-object p1, Lcom/supertws/dubokutv/CloudSyncClient;->scheduledDrain:Ljava/util/concurrent/ScheduledFuture;

    .line 146
    invoke-static {v0, v1, v2}, Lcom/supertws/dubokutv/CloudSyncClient;->scheduleDrainLocked(JZ)V

    .line 148
    :cond_1
    monitor-exit p0

    return-void

    .line 150
    :cond_2
    const/4 p1, 0x1

    sput-boolean p1, Lcom/supertws/dubokutv/CloudSyncClient;->draining:Z

    .line 151
    new-instance p1, Lcom/supertws/dubokutv/CloudSyncClient$2;

    invoke-direct {p1}, Lcom/supertws/dubokutv/CloudSyncClient$2;-><init>()V

    sput-object p1, Lcom/supertws/dubokutv/CloudSyncClient;->drainRunnable:Ljava/lang/Runnable;

    .line 244
    invoke-static {v0, v1, v2}, Lcom/supertws/dubokutv/CloudSyncClient;->scheduleDrainLocked(JZ)V

    .line 245
    monitor-exit p0

    .line 246
    return-void

    .line 245
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static fetchKnownPeers(Landroid/content/Context;)V
    .locals 1

    .line 275
    const-string v0, "peer"

    invoke-static {p0, v0}, Lcom/supertws/dubokutv/CloudSyncClient;->fetchKnownPeers(Landroid/content/Context;Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method private static fetchKnownPeers(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    .line 282
    invoke-static {p0}, Lcom/supertws/dubokutv/CloudSyncClient;->initialize(Landroid/content/Context;)V

    .line 283
    const-string p0, "R2Sync"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cloud read requested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    sget-object p0, Lcom/supertws/dubokutv/CloudSyncClient;->LOCK:Ljava/lang/Object;

    monitor-enter p0

    .line 286
    :try_start_0
    sget-boolean v0, Lcom/supertws/dubokutv/CloudSyncClient;->readScheduled:Z

    if-eqz v0, :cond_0

    const-string v0, "peer"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 287
    :cond_0
    sget-object v0, Lcom/supertws/dubokutv/CloudSyncClient;->READ_GATE:Lcom/supertws/dubokutv/CloudSyncGate;

    invoke-virtual {v0}, Lcom/supertws/dubokutv/CloudSyncGate;->requestRead()V

    .line 288
    sget-boolean v0, Lcom/supertws/dubokutv/CloudSyncClient;->readScheduled:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    .line 289
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/supertws/dubokutv/CloudSyncClient;->readScheduled:Z

    .line 290
    sget-wide v0, Lcom/supertws/dubokutv/CloudSyncClient;->lastReadFinishedAt:J

    const-wide/16 v2, 0x7d0

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_2

    move-wide v0, v4

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v6, Lcom/supertws/dubokutv/CloudSyncClient;->lastReadFinishedAt:J

    sub-long/2addr v0, v6

    sub-long v0, v2, v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 291
    :goto_0
    const-string v6, "startup"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move-wide v2, v4

    :goto_1
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 292
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    sget-object p0, Lcom/supertws/dubokutv/CloudSyncClient;->QUEUE:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p1, Lcom/supertws/dubokutv/CloudSyncClient$3;

    invoke-direct {p1}, Lcom/supertws/dubokutv/CloudSyncClient$3;-><init>()V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, p1, v0, v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 337
    return-void

    .line 292
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static fetchOnHistory(Landroid/content/Context;)V
    .locals 1

    .line 279
    const-string v0, "history"

    invoke-static {p0, v0}, Lcom/supertws/dubokutv/CloudSyncClient;->fetchKnownPeers(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static fetchOnResume(Landroid/content/Context;)V
    .locals 1

    .line 278
    const-string v0, "resume"

    invoke-static {p0, v0}, Lcom/supertws/dubokutv/CloudSyncClient;->fetchKnownPeers(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static fetchOnStartup(Landroid/content/Context;)V
    .locals 1

    .line 277
    const-string v0, "startup"

    invoke-static {p0, v0}, Lcom/supertws/dubokutv/CloudSyncClient;->fetchKnownPeers(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static fitPayload(Lorg/json/JSONObject;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 421
    invoke-static {p0}, Lcom/supertws/dubokutv/CloudSyncClient;->payloadBytes(Lorg/json/JSONObject;)I

    move-result v0

    const/4 v1, 0x1

    const/high16 v2, 0x10000

    if-gt v0, v2, :cond_0

    return v1

    .line 422
    :cond_0
    const-string v0, "records"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 423
    const/4 v3, 0x0

    if-nez v0, :cond_1

    return v3

    .line 424
    :cond_1
    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/String;

    const-string v6, "posterUrl"

    aput-object v6, v5, v3

    const-string v6, "detailPageUrl"

    aput-object v6, v5, v1

    const/4 v6, 0x2

    const-string v7, "videoPageUrl"

    aput-object v7, v5, v6

    .line 425
    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_7

    aget-object v7, v5, v6

    .line 426
    :goto_1
    invoke-static {p0}, Lcom/supertws/dubokutv/CloudSyncClient;->payloadBytes(Lorg/json/JSONObject;)I

    move-result v8

    if-le v8, v2, :cond_6

    .line 427
    nop

    .line 428
    nop

    .line 429
    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v11

    const-string v12, ""

    if-ge v9, v11, :cond_4

    .line 430
    invoke-virtual {v0, v9}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 431
    if-nez v11, :cond_2

    goto :goto_3

    .line 432
    :cond_2
    invoke-virtual {v11, v7, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 433
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-le v12, v10, :cond_3

    .line 434
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v10

    .line 435
    move v8, v9

    .line 429
    :cond_3
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 438
    :cond_4
    if-gez v8, :cond_5

    goto :goto_4

    .line 439
    :cond_5
    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v8, v7, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 440
    goto :goto_1

    .line 425
    :cond_6
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 442
    :cond_7
    invoke-static {p0}, Lcom/supertws/dubokutv/CloudSyncClient;->payloadBytes(Lorg/json/JSONObject;)I

    move-result p0

    if-gt p0, v2, :cond_8

    goto :goto_5

    :cond_8
    const/4 v1, 0x0

    :goto_5
    return v1
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 392
    nop

    .line 394
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "GET"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/v1/sync/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/supertws/dubokutv/CloudSyncClient;->enc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1}, Lcom/supertws/dubokutv/CloudSyncClient;->enc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, p2}, Lcom/supertws/dubokutv/CloudSyncClient;->open(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 395
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0

    .line 396
    const/16 p1, 0xc8

    if-ne p0, p1, :cond_1

    .line 400
    new-instance p0, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/supertws/dubokutv/CloudSyncClient;->read(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 400
    :cond_0
    return-object p0

    .line 397
    :cond_1
    :try_start_1
    const-string p1, "R2Sync"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cloud read HTTP "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cloud read failed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 401
    :catchall_0
    move-exception p0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    throw p0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 0

    .line 52
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/supertws/dubokutv/CloudSyncClient;->appContext:Landroid/content/Context;

    .line 53
    :cond_0
    return-void
.end method

.method public static mergeFamilies(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Z)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 377
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "action"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "sourceCodes"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p3

    .line 378
    const-string v0, "cleanup"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "confirmed"

    invoke-virtual {p3, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 379
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "/v1/families/"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p0}, Lcom/supertws/dubokutv/CloudSyncClient;->enc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, "/merge"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p3}, Lcom/supertws/dubokutv/CloudSyncClient;->postJson(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private static nextBackoff()J
    .locals 3

    .line 269
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    .line 270
    sget v1, Lcom/supertws/dubokutv/CloudSyncClient;->retryCount:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/supertws/dubokutv/CloudSyncClient;->retryCount:I

    const/4 v2, 0x3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    aget-wide v1, v0, v1

    return-wide v1

    :array_0
    .array-data 8
        0xea60
        0x1d4c0
        0x493e0
        0xdbba0
    .end array-data
.end method

.method public static onActivityPause()V
    .locals 4

    .line 62
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    sput-wide v0, Lcom/supertws/dubokutv/CloudSyncClient;->pauseUrgentUntilMs:J

    .line 63
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/supertws/dubokutv/CloudSyncClient;->onCommittedSave(Z)V

    .line 64
    return-void
.end method

.method public static onCommittedSave()V
    .locals 1

    .line 57
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/supertws/dubokutv/CloudSyncClient;->onCommittedSave(Z)V

    .line 58
    return-void
.end method

.method private static onCommittedSave(Z)V
    .locals 8

    .line 67
    sget-object v0, Lcom/supertws/dubokutv/CloudSyncClient;->appContext:Landroid/content/Context;

    .line 68
    if-nez v0, :cond_0

    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 69
    :cond_0
    if-nez v0, :cond_1

    return-void

    .line 70
    :cond_1
    invoke-static {v0}, Lcom/supertws/dubokutv/CloudSyncClient;->initialize(Landroid/content/Context;)V

    .line 71
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->dirtyPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "cloudDirty"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 72
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 73
    sget-object v1, Lcom/supertws/dubokutv/CloudSyncClient;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 74
    :try_start_0
    sget-wide v4, Lcom/supertws/dubokutv/CloudSyncClient;->captureVersion:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    sput-wide v4, Lcom/supertws/dubokutv/CloudSyncClient;->captureVersion:J

    .line 75
    sget-boolean v2, Lcom/supertws/dubokutv/CloudSyncClient;->captureImmediate:Z

    if-nez p0, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sget-wide v6, Lcom/supertws/dubokutv/CloudSyncClient;->pauseUrgentUntilMs:J

    cmp-long p0, v4, v6

    if-gez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :goto_1
    or-int/2addr p0, v2

    sput-boolean p0, Lcom/supertws/dubokutv/CloudSyncClient;->captureImmediate:Z

    .line 76
    sget-boolean p0, Lcom/supertws/dubokutv/CloudSyncClient;->capturePending:Z

    if-eqz p0, :cond_4

    monitor-exit v1

    return-void

    .line 77
    :cond_4
    sput-boolean v3, Lcom/supertws/dubokutv/CloudSyncClient;->capturePending:Z

    .line 78
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    sget-object p0, Lcom/supertws/dubokutv/CloudSyncClient;->QUEUE:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/supertws/dubokutv/CloudSyncClient$1;

    invoke-direct {v1, v0}, Lcom/supertws/dubokutv/CloudSyncClient$1;-><init>(Landroid/content/Context;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 99
    return-void

    .line 78
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static open(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 497
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://cleantv-r2-sync.jerry-shao.workers.dev"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 498
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 499
    invoke-virtual {p1, p0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v0, 0xfa0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v0, 0x1388

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 500
    const-string v0, "Accept"

    const-string v1, "application/json"

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bearer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Authorization"

    invoke-virtual {p1, v0, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    :cond_0
    const-string p2, "POST"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "PUT"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const-string p0, "Content-Type"

    const-string p2, "application/json; charset=utf-8"

    invoke-virtual {p1, p0, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    :cond_2
    return-object p1
.end method

.method private static payloadBytes(Lorg/json/JSONObject;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 446
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    array-length p0, p0

    return p0
.end method

.method static pendingDrainDelay(JZ)J
    .locals 0

    .line 261
    if-eqz p2, :cond_0

    const-wide/16 p0, 0x0

    :cond_0
    return-wide p0
.end method

.method private static postJson(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 383
    const-string v0, "POST"

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p0, p1, p2}, Lcom/supertws/dubokutv/CloudSyncClient;->requestDetailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supertws/dubokutv/CloudSyncClient$RequestResult;

    move-result-object p0

    .line 384
    iget p1, p0, Lcom/supertws/dubokutv/CloudSyncClient$RequestResult;->code:I

    const/16 p2, 0xc8

    if-lt p1, p2, :cond_0

    iget p1, p0, Lcom/supertws/dubokutv/CloudSyncClient$RequestResult;->code:I

    const/16 p2, 0x12c

    if-ge p1, p2, :cond_0

    .line 388
    new-instance p1, Lorg/json/JSONObject;

    iget-object p0, p0, Lcom/supertws/dubokutv/CloudSyncClient$RequestResult;->errorBody:Ljava/lang/String;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 385
    :cond_0
    iget-object p0, p0, Lcom/supertws/dubokutv/CloudSyncClient$RequestResult;->errorBody:Ljava/lang/String;

    invoke-static {p0}, Lcom/supertws/dubokutv/CloudSyncClient;->safeWorkerErrorBody(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 386
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "error"

    const-string v0, "request_failed"

    invoke-virtual {p2, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static put(Lcom/supertws/dubokutv/ProgressSnapshot;Ljava/lang/String;)Z
    .locals 6

    .line 406
    const-string v0, "R2Sync"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/supertws/dubokutv/ProgressSnapshot;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    .line 407
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->fitPayload(Lorg/json/JSONObject;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 408
    const-string p0, "Snapshot upload HTTP 413 body={\"error\":\"payload_too_large\"}"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    return v1

    .line 411
    :cond_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 412
    const-string v3, "PUT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/v1/sync/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/supertws/dubokutv/ProgressSnapshot;->familyId:Ljava/lang/String;

    invoke-static {v5}, Lcom/supertws/dubokutv/CloudSyncClient;->enc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object p0, p0, Lcom/supertws/dubokutv/ProgressSnapshot;->deviceId:Ljava/lang/String;

    invoke-static {p0}, Lcom/supertws/dubokutv/CloudSyncClient;->enc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0, p1, v2}, Lcom/supertws/dubokutv/CloudSyncClient;->requestDetailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supertws/dubokutv/CloudSyncClient$RequestResult;

    move-result-object p0

    .line 413
    iget p1, p0, Lcom/supertws/dubokutv/CloudSyncClient$RequestResult;->code:I

    const/16 v2, 0xcc

    if-ne p1, v2, :cond_1

    const/4 p0, 0x1

    return p0

    .line 414
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Snapshot upload HTTP "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v2, p0, Lcom/supertws/dubokutv/CloudSyncClient$RequestResult;->code:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " body="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/supertws/dubokutv/CloudSyncClient$RequestResult;->errorBody:Ljava/lang/String;

    invoke-static {p0}, Lcom/supertws/dubokutv/CloudSyncClient;->safeWorkerErrorBody(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Snapshot upload deferred: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :goto_0
    return v1
.end method

.method private static read(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 508
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 509
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 510
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    const-string p0, "UTF-8"

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static redeemJoinCode(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 372
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "joinCode"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "/v1/families/join"

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/supertws/dubokutv/CloudSyncClient;->postJson(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static registerFamily(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 16

    .line 344
    const-string v0, "/v1/families"

    const-string v1, "POST"

    const-string v2, "R2Sync"

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->dirtyPrefs()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "cloudAuthRejected"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    return v5

    .line 346
    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "familyId"

    move-object/from16 v7, p0

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v6, "familySecret"

    move-object/from16 v7, p1

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 347
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v1, v0, v7, v6}, Lcom/supertws/dubokutv/CloudSyncClient;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 348
    const/16 v8, 0xc8

    const/4 v9, 0x1

    if-eq v6, v8, :cond_8

    const/16 v10, 0xc9

    if-ne v6, v10, :cond_1

    goto/16 :goto_3

    .line 349
    :cond_1
    const/16 v11, 0x191

    if-ne v6, v11, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->dirtyPrefs()Landroid/content/SharedPreferences;

    move-result-object v14

    const-string v15, "familyCreatedAt"

    move/from16 p0, v6

    const-wide/16 v5, 0x0

    invoke-interface {v14, v15, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    sub-long/2addr v12, v5

    const-wide/32 v5, 0xea60

    cmp-long v14, v12, v5

    if-gez v14, :cond_6

    .line 350
    const/4 v5, 0x4

    new-array v6, v5, [J

    fill-array-data v6, :array_0

    move/from16 v12, p0

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v5, :cond_4

    aget-wide v14, v6, v13

    .line 351
    invoke-static {v14, v15}, Landroid/os/SystemClock;->sleep(J)V

    .line 352
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v0, v7, v12}, Lcom/supertws/dubokutv/CloudSyncClient;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 353
    if-eq v12, v8, :cond_3

    if-ne v12, v10, :cond_2

    goto :goto_1

    .line 350
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 353
    :cond_3
    :goto_1
    return v9

    .line 350
    :cond_4
    move v6, v12

    goto :goto_2

    .line 349
    :cond_5
    move/from16 p0, v6

    .line 356
    :cond_6
    move/from16 v6, p0

    :goto_2
    if-ne v6, v11, :cond_7

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->dirtyPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v4, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 357
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Family registration HTTP "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    goto :goto_4

    .line 348
    :cond_8
    :goto_3
    return v9

    .line 358
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Family registration deferred: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :goto_4
    const/4 v1, 0x0

    return v1

    :array_0
    .array-data 8
        0x3e8
        0x7d0
        0x1388
        0x2710
    .end array-data
.end method

.method private static request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 450
    invoke-static {p0, p1, p2, p3}, Lcom/supertws/dubokutv/CloudSyncClient;->requestDetailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supertws/dubokutv/CloudSyncClient$RequestResult;

    move-result-object p0

    iget p0, p0, Lcom/supertws/dubokutv/CloudSyncClient$RequestResult;->code:I

    return p0
.end method

.method private static requestDetailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supertws/dubokutv/CloudSyncClient$RequestResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 460
    nop

    .line 462
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/supertws/dubokutv/CloudSyncClient;->open(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 463
    if-eqz p3, :cond_0

    .line 464
    const/4 p1, 0x1

    :try_start_1
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 465
    const-string p1, "UTF-8"

    invoke-virtual {p3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 466
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 468
    :cond_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    .line 469
    const/16 p2, 0x190

    if-lt p1, p2, :cond_1

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    .line 470
    :goto_0
    const-string p3, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 471
    if-eqz p2, :cond_2

    .line 472
    :try_start_2
    invoke-static {p2}, Lcom/supertws/dubokutv/CloudSyncClient;->read(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    throw p1

    .line 474
    :cond_2
    :goto_1
    new-instance p2, Lcom/supertws/dubokutv/CloudSyncClient$RequestResult;

    invoke-direct {p2, p1, p3}, Lcom/supertws/dubokutv/CloudSyncClient$RequestResult;-><init>(ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 475
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 474
    :cond_3
    return-object p2

    .line 475
    :catchall_1
    move-exception p1

    goto :goto_2

    :catchall_2
    move-exception p1

    const/4 p0, 0x0

    :goto_2
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    throw p1
.end method

.method private static safeWorkerErrorBody(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 479
    const-string v0, "{\"error\":\"unknown\"}"

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x80

    if-le v1, v2, :cond_0

    goto/16 :goto_3

    .line 481
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "error"

    const-string v2, ""

    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 482
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_1
    goto/16 :goto_0

    :sswitch_0
    const-string v1, "invalid_request"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "invalid_join_code"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xa

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "payload_too_large"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "invalid_snapshot"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "family_read_failed"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x12

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "not_found"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x9

    goto/16 :goto_1

    :sswitch_6
    const-string v1, "source_snapshot_unavailable"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xd

    goto/16 :goto_1

    :sswitch_7
    const-string v1, "family_conflict"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x6

    goto/16 :goto_1

    :sswitch_8
    const-string v1, "internal_error"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    goto/16 :goto_1

    :sswitch_9
    const-string v1, "merge_copy_required"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xf

    goto/16 :goto_1

    :sswitch_a
    const-string v1, "unauthorized"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_b
    const-string v1, "invalid_path"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_c
    const-string v1, "invalid_json"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_d
    const-string v1, "invalid_family_order"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xb

    goto :goto_1

    :sswitch_e
    const-string v1, "merge_cleanup_failed"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x11

    goto :goto_1

    :sswitch_f
    const-string v1, "merge_copy_failed"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x10

    goto :goto_1

    :sswitch_10
    const-string v1, "join_code_unavailable"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x13

    goto :goto_1

    :sswitch_11
    const-string v1, "rate_limited"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_12
    const-string v1, "source_changed_recopy_required"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xe

    goto :goto_1

    :sswitch_13
    const-string v1, "duplicate_source"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xc

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 491
    goto :goto_2

    .line 490
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{\"error\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\"}"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 491
    :goto_2
    return-object v0

    .line 493
    :catch_0
    move-exception p0

    return-object v0

    .line 479
    :cond_2
    :goto_3
    const-string p0, "{\"error\":\"unavailable\"}"

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e739a31 -> :sswitch_13
        -0x6b3f85d9 -> :sswitch_12
        -0x60e696c5 -> :sswitch_11
        -0x5fc1588d -> :sswitch_10
        -0x3e20d40 -> :sswitch_f
        0x6920d1f -> :sswitch_e
        0x1901cbfb -> :sswitch_d
        0x1f685630 -> :sswitch_c
        0x1f6acd6d -> :sswitch_b
        0x250258f4 -> :sswitch_a
        0x2cbaf562 -> :sswitch_9
        0x2e6e3a06 -> :sswitch_8
        0x4220924d -> :sswitch_7
        0x5e14e7f9 -> :sswitch_6
        0x604afb16 -> :sswitch_5
        0x6ebe26ab -> :sswitch_4
        0x70cb5b0c -> :sswitch_3
        0x7c47531f -> :sswitch_2
        0x7cc5579a -> :sswitch_1
        0x7e34a447 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static scheduleDrainLocked(JZ)V
    .locals 3

    .line 250
    sget-object v0, Lcom/supertws/dubokutv/CloudSyncClient;->drainRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    return-void

    .line 251
    :cond_0
    sput-boolean p2, Lcom/supertws/dubokutv/CloudSyncClient;->scheduledRetryBackoff:Z

    .line 252
    const-wide/16 v1, 0x0

    cmp-long p2, p0, v1

    if-lez p2, :cond_1

    sget-object p2, Lcom/supertws/dubokutv/CloudSyncClient;->QUEUE:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p2, v0, p0, p1, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    sput-object p0, Lcom/supertws/dubokutv/CloudSyncClient;->scheduledDrain:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 254
    :cond_1
    const/4 p0, 0x0

    sput-object p0, Lcom/supertws/dubokutv/CloudSyncClient;->scheduledDrain:Ljava/util/concurrent/ScheduledFuture;

    .line 255
    const/4 p0, 0x0

    sput-boolean p0, Lcom/supertws/dubokutv/CloudSyncClient;->scheduledRetryBackoff:Z

    .line 256
    sget-object p0, Lcom/supertws/dubokutv/CloudSyncClient;->QUEUE:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p0, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 258
    :goto_0
    return-void
.end method

.method static shouldPreemptDrain(ZZ)Z
    .locals 0

    .line 265
    if-eqz p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
