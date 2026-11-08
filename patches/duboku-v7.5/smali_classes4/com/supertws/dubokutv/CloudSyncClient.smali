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

.field private static volatile cloudGeneration:J

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

.field private static scheduledRead:Ljava/util/concurrent/ScheduledFuture;
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

    .line 51
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

.method static synthetic access$1000()Lcom/supertws/dubokutv/ProgressSnapshot;
    .locals 1

    .line 24
    sget-object v0, Lcom/supertws/dubokutv/CloudSyncClient;->retrySnapshot:Lcom/supertws/dubokutv/ProgressSnapshot;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/supertws/dubokutv/ProgressSnapshot;)Lcom/supertws/dubokutv/ProgressSnapshot;
    .locals 0

    .line 24
    sput-object p0, Lcom/supertws/dubokutv/CloudSyncClient;->retrySnapshot:Lcom/supertws/dubokutv/ProgressSnapshot;

    return-object p0
.end method

.method static synthetic access$1100()Lcom/supertws/dubokutv/ProgressSnapshot;
    .locals 1

    .line 24
    sget-object v0, Lcom/supertws/dubokutv/CloudSyncClient;->latest:Lcom/supertws/dubokutv/ProgressSnapshot;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/supertws/dubokutv/ProgressSnapshot;)Lcom/supertws/dubokutv/ProgressSnapshot;
    .locals 0

    .line 24
    sput-object p0, Lcom/supertws/dubokutv/CloudSyncClient;->latest:Lcom/supertws/dubokutv/ProgressSnapshot;

    return-object p0
.end method

.method static synthetic access$1200()Z
    .locals 1

    .line 24
    sget-boolean v0, Lcom/supertws/dubokutv/CloudSyncClient;->latestImmediate:Z

    return v0
.end method

.method static synthetic access$1202(Z)Z
    .locals 0

    .line 24
    sput-boolean p0, Lcom/supertws/dubokutv/CloudSyncClient;->latestImmediate:Z

    return p0
.end method

.method static synthetic access$1300()J
    .locals 2

    .line 24
    sget-wide v0, Lcom/supertws/dubokutv/CloudSyncClient;->lastUploadAt:J

    return-wide v0
.end method

.method static synthetic access$1302(J)J
    .locals 0

    .line 24
    sput-wide p0, Lcom/supertws/dubokutv/CloudSyncClient;->lastUploadAt:J

    return-wide p0
.end method

.method static synthetic access$1400()Landroid/content/Context;
    .locals 1

    .line 24
    sget-object v0, Lcom/supertws/dubokutv/CloudSyncClient;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500()Landroid/content/SharedPreferences;
    .locals 1

    .line 24
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->dirtyPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600()J
    .locals 2

    .line 24
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->nextBackoff()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1702(I)I
    .locals 0

    .line 24
    sput p0, Lcom/supertws/dubokutv/CloudSyncClient;->retryCount:I

    return p0
.end method

.method static synthetic access$1802(Z)Z
    .locals 0

    .line 24
    sput-boolean p0, Lcom/supertws/dubokutv/CloudSyncClient;->draining:Z

    return p0
.end method

.method static synthetic access$1902(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 24
    sput-object p0, Lcom/supertws/dubokutv/CloudSyncClient;->drainRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 24
    sget-boolean v0, Lcom/supertws/dubokutv/CloudSyncClient;->captureImmediate:Z

    return v0
.end method

.method static synthetic access$2000(JZ)V
    .locals 0

    .line 24
    invoke-static {p0, p1, p2}, Lcom/supertws/dubokutv/CloudSyncClient;->scheduleDrainLocked(JZ)V

    return-void
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    .line 24
    sput-boolean p0, Lcom/supertws/dubokutv/CloudSyncClient;->captureImmediate:Z

    return p0
.end method

.method static synthetic access$2102(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 24
    sput-object p0, Lcom/supertws/dubokutv/CloudSyncClient;->scheduledRead:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method

.method static synthetic access$2202(J)J
    .locals 0

    .line 24
    sput-wide p0, Lcom/supertws/dubokutv/CloudSyncClient;->lastReadFinishedAt:J

    return-wide p0
.end method

.method static synthetic access$2302(Z)Z
    .locals 0

    .line 24
    sput-boolean p0, Lcom/supertws/dubokutv/CloudSyncClient;->readScheduled:Z

    return p0
.end method

.method static synthetic access$2402(I)I
    .locals 0

    .line 24
    sput p0, Lcom/supertws/dubokutv/CloudSyncClient;->readRetryCount:I

    return p0
.end method

.method static synthetic access$2408()I
    .locals 2

    .line 24
    sget v0, Lcom/supertws/dubokutv/CloudSyncClient;->readRetryCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/supertws/dubokutv/CloudSyncClient;->readRetryCount:I

    return v0
.end method

.method static synthetic access$2500(Z)V
    .locals 0

    .line 24
    invoke-static {p0}, Lcom/supertws/dubokutv/CloudSyncClient;->onCommittedSave(Z)V

    return-void
.end method

.method static synthetic access$2600()Ljava/util/concurrent/ScheduledExecutorService;
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

.method static synthetic access$500()J
    .locals 2

    .line 24
    sget-wide v0, Lcom/supertws/dubokutv/CloudSyncClient;->cloudGeneration:J

    return-wide v0
.end method

.method static synthetic access$600()Z
    .locals 1

    .line 24
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->cloudSyncEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700()Ljava/util/concurrent/ScheduledFuture;
    .locals 1

    .line 24
    sget-object v0, Lcom/supertws/dubokutv/CloudSyncClient;->scheduledDrain:Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method

.method static synthetic access$702(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 24
    sput-object p0, Lcom/supertws/dubokutv/CloudSyncClient;->scheduledDrain:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method

.method static synthetic access$802(Z)Z
    .locals 0

    .line 24
    sput-boolean p0, Lcom/supertws/dubokutv/CloudSyncClient;->scheduledRetryBackoff:Z

    return p0
.end method

.method static synthetic access$900()Lcom/supertws/dubokutv/CloudSyncGate;
    .locals 1

    .line 24
    sget-object v0, Lcom/supertws/dubokutv/CloudSyncClient;->READ_GATE:Lcom/supertws/dubokutv/CloudSyncGate;

    return-object v0
.end method

.method private static boundedText(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 161
    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 162
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x200

    if-gt v0, v1, :cond_1

    return-object p0

    .line 163
    :cond_1
    nop

    .line 164
    const/16 v0, 0x1ff

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v1, 0x1ff

    .line 165
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static cancelPendingCloudSync()V
    .locals 5

    .line 58
    sget-object v0, Lcom/supertws/dubokutv/CloudSyncClient;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 59
    :try_start_0
    sget-wide v1, Lcom/supertws/dubokutv/CloudSyncClient;->cloudGeneration:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    sput-wide v1, Lcom/supertws/dubokutv/CloudSyncClient;->cloudGeneration:J

    .line 60
    sget-object v1, Lcom/supertws/dubokutv/CloudSyncClient;->scheduledDrain:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 61
    :cond_0
    sget-object v1, Lcom/supertws/dubokutv/CloudSyncClient;->scheduledRead:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_1

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 62
    :cond_1
    const/4 v1, 0x0

    sput-object v1, Lcom/supertws/dubokutv/CloudSyncClient;->scheduledDrain:Ljava/util/concurrent/ScheduledFuture;

    .line 63
    sput-object v1, Lcom/supertws/dubokutv/CloudSyncClient;->scheduledRead:Ljava/util/concurrent/ScheduledFuture;

    .line 64
    sput-boolean v2, Lcom/supertws/dubokutv/CloudSyncClient;->readScheduled:Z

    .line 65
    sput-object v1, Lcom/supertws/dubokutv/CloudSyncClient;->latest:Lcom/supertws/dubokutv/ProgressSnapshot;

    .line 66
    sput-object v1, Lcom/supertws/dubokutv/CloudSyncClient;->retrySnapshot:Lcom/supertws/dubokutv/ProgressSnapshot;

    .line 67
    sput-boolean v2, Lcom/supertws/dubokutv/CloudSyncClient;->latestImmediate:Z

    .line 68
    sput-boolean v2, Lcom/supertws/dubokutv/CloudSyncClient;->draining:Z

    .line 69
    sput-object v1, Lcom/supertws/dubokutv/CloudSyncClient;->drainRunnable:Ljava/lang/Runnable;

    .line 70
    sput-boolean v2, Lcom/supertws/dubokutv/CloudSyncClient;->scheduledRetryBackoff:Z

    .line 71
    sput v2, Lcom/supertws/dubokutv/CloudSyncClient;->retryCount:I

    .line 72
    sput v2, Lcom/supertws/dubokutv/CloudSyncClient;->readRetryCount:I

    .line 73
    sget-object v1, Lcom/supertws/dubokutv/CloudSyncClient;->READ_GATE:Lcom/supertws/dubokutv/CloudSyncGate;

    invoke-virtual {v1}, Lcom/supertws/dubokutv/CloudSyncGate;->requestRead()V

    .line 74
    invoke-virtual {v1}, Lcom/supertws/dubokutv/CloudSyncGate;->beginRead()J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/supertws/dubokutv/CloudSyncGate;->completeRead(JZ)V

    .line 75
    monitor-exit v0

    .line 76
    return-void

    .line 75
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static captureCommittedSnapshot(Landroid/content/Context;Z)V
    .locals 13

    .line 135
    nop

    .line 137
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/supertws/dubokutv/FamilyIdentity;->ensure()V

    .line 138
    const-string v2, "record_database"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v0}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :try_start_1
    const-string v4, "SELECT id,name,episode,progressInMillis,durationInMillis,createdAt,modifiedAt,videoPageUrl,detailPageUrl,posterUrl FROM records ORDER BY modifiedAt DESC LIMIT 20"

    invoke-virtual {v2, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 140
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 141
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    const/4 v10, 0x1

    if-eqz v4, :cond_2

    .line 142
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/supertws/dubokutv/CloudSyncClient;->boundedText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 143
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/supertws/dubokutv/CloudSyncClient;->boundedText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 144
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    .line 145
    :cond_1
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 146
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

    .line 147
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

    .line 148
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

    .line 149
    const-string v4, "videoPageUrl"

    const/4 v5, 0x7

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/supertws/dubokutv/ProgressSnapshot;->normalizeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    const-string v4, "detailPageUrl"

    const/16 v5, 0x8

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/supertws/dubokutv/ProgressSnapshot;->normalizeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    const-string v4, "posterUrl"

    const/16 v5, 0x9

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/supertws/dubokutv/ProgressSnapshot;->normalizeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    invoke-virtual {v9, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 153
    goto/16 :goto_0

    .line 154
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

    .line 155
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

    .line 157
    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    if-eqz v2, :cond_8

    goto :goto_3

    .line 156
    :catch_0
    move-exception p0

    goto :goto_2

    .line 157
    :catchall_0
    move-exception p0

    move-object v2, v0

    goto :goto_4

    .line 156
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

    .line 157
    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_7
    if-eqz v2, :cond_8

    :goto_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 158
    :cond_8
    return-void

    .line 157
    :catchall_1
    move-exception p0

    :goto_4
    if-eqz v0, :cond_9

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_9
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_a
    throw p0
.end method

.method private static cloudSyncEnabled()Z
    .locals 1

    .line 79
    sget-object v0, Lcom/supertws/dubokutv/CloudSyncClient;->appContext:Landroid/content/Context;

    .line 80
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->isCloudSyncEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static createJoinCode()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 424
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->requireCloudSyncEnabled()V

    .line 425
    sget-object v0, Lcom/supertws/dubokutv/CloudSyncClient;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v0

    .line 426
    invoke-virtual {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->familyId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->familySecret()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/supertws/dubokutv/CloudSyncClient;->registerFamily(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 427
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->requireCloudSyncEnabled()V

    .line 428
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

    .line 429
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->requireCloudSyncEnabled()V

    .line 430
    const-string v1, "joinCode"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 431
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 432
    return-object v0

    .line 431
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "join_code_unavailable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 426
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "family_unavailable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static dirtyPrefs()Landroid/content/SharedPreferences;
    .locals 3

    .line 399
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

    .line 581
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static enqueueUpload(Landroid/content/Context;Lcom/supertws/dubokutv/ProgressSnapshot;Z)V
    .locals 5

    .line 170
    invoke-static {p0}, Lcom/supertws/dubokutv/CloudSyncClient;->initialize(Landroid/content/Context;)V

    .line 171
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/supertws/dubokutv/FamilyIdentity;->isCloudSyncEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 172
    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 173
    :cond_1
    sget-object p0, Lcom/supertws/dubokutv/CloudSyncClient;->LOCK:Ljava/lang/Object;

    monitor-enter p0

    .line 174
    :try_start_0
    sget-wide v0, Lcom/supertws/dubokutv/CloudSyncClient;->cloudGeneration:J

    .line 175
    sput-object p1, Lcom/supertws/dubokutv/CloudSyncClient;->latest:Lcom/supertws/dubokutv/ProgressSnapshot;

    .line 176
    sget-boolean p1, Lcom/supertws/dubokutv/CloudSyncClient;->latestImmediate:Z

    or-int/2addr p1, p2

    sput-boolean p1, Lcom/supertws/dubokutv/CloudSyncClient;->latestImmediate:Z

    .line 177
    sget-boolean p1, Lcom/supertws/dubokutv/CloudSyncClient;->draining:Z

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    if-eqz p1, :cond_3

    .line 178
    sget-boolean p1, Lcom/supertws/dubokutv/CloudSyncClient;->scheduledRetryBackoff:Z

    invoke-static {p2, p1}, Lcom/supertws/dubokutv/CloudSyncClient;->shouldPreemptDrain(ZZ)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/supertws/dubokutv/CloudSyncClient;->scheduledDrain:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p1, :cond_2

    .line 179
    invoke-interface {p1, v4}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 180
    const/4 p1, 0x0

    sput-object p1, Lcom/supertws/dubokutv/CloudSyncClient;->scheduledDrain:Ljava/util/concurrent/ScheduledFuture;

    .line 181
    invoke-static {v2, v3, v4}, Lcom/supertws/dubokutv/CloudSyncClient;->scheduleDrainLocked(JZ)V

    .line 183
    :cond_2
    monitor-exit p0

    return-void

    .line 185
    :cond_3
    const/4 p1, 0x1

    sput-boolean p1, Lcom/supertws/dubokutv/CloudSyncClient;->draining:Z

    .line 186
    new-instance p1, Lcom/supertws/dubokutv/CloudSyncClient$2;

    invoke-direct {p1, v0, v1}, Lcom/supertws/dubokutv/CloudSyncClient$2;-><init>(J)V

    sput-object p1, Lcom/supertws/dubokutv/CloudSyncClient;->drainRunnable:Ljava/lang/Runnable;

    .line 294
    invoke-static {v2, v3, v4}, Lcom/supertws/dubokutv/CloudSyncClient;->scheduleDrainLocked(JZ)V

    .line 295
    monitor-exit p0

    .line 296
    return-void

    .line 295
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static fetchKnownPeers(Landroid/content/Context;)V
    .locals 1

    .line 325
    const-string v0, "peer"

    invoke-static {p0, v0}, Lcom/supertws/dubokutv/CloudSyncClient;->fetchKnownPeers(Landroid/content/Context;Ljava/lang/String;)V

    .line 326
    return-void
.end method

.method private static fetchKnownPeers(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10

    .line 332
    invoke-static {p0}, Lcom/supertws/dubokutv/CloudSyncClient;->initialize(Landroid/content/Context;)V

    .line 333
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/supertws/dubokutv/FamilyIdentity;->isCloudSyncEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 334
    :cond_0
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

    .line 337
    sget-object p0, Lcom/supertws/dubokutv/CloudSyncClient;->LOCK:Ljava/lang/Object;

    monitor-enter p0

    .line 338
    :try_start_0
    sget-boolean v0, Lcom/supertws/dubokutv/CloudSyncClient;->readScheduled:Z

    if-eqz v0, :cond_1

    const-string v0, "peer"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    .line 339
    :cond_1
    sget-object v0, Lcom/supertws/dubokutv/CloudSyncClient;->READ_GATE:Lcom/supertws/dubokutv/CloudSyncGate;

    invoke-virtual {v0}, Lcom/supertws/dubokutv/CloudSyncGate;->requestRead()V

    .line 340
    sget-boolean v0, Lcom/supertws/dubokutv/CloudSyncClient;->readScheduled:Z

    if-eqz v0, :cond_2

    monitor-exit p0

    return-void

    .line 341
    :cond_2
    const/4 v0, 0x1

    sput-boolean v0, Lcom/supertws/dubokutv/CloudSyncClient;->readScheduled:Z

    .line 342
    sget-wide v0, Lcom/supertws/dubokutv/CloudSyncClient;->cloudGeneration:J

    .line 343
    sget-wide v2, Lcom/supertws/dubokutv/CloudSyncClient;->lastReadFinishedAt:J

    const-wide/16 v4, 0x7d0

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-nez v8, :cond_3

    move-wide v2, v6

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-wide v8, Lcom/supertws/dubokutv/CloudSyncClient;->lastReadFinishedAt:J

    sub-long/2addr v2, v8

    sub-long v2, v4, v2

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 344
    :goto_0
    const-string v8, "startup"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    move-wide v4, v6

    :goto_1
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 345
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    sget-object p0, Lcom/supertws/dubokutv/CloudSyncClient;->QUEUE:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p1, Lcom/supertws/dubokutv/CloudSyncClient$3;

    invoke-direct {p1, v0, v1}, Lcom/supertws/dubokutv/CloudSyncClient$3;-><init>(J)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, p1, v2, v3, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    sput-object p0, Lcom/supertws/dubokutv/CloudSyncClient;->scheduledRead:Ljava/util/concurrent/ScheduledFuture;

    .line 396
    return-void

    .line 345
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

    .line 329
    const-string v0, "history"

    invoke-static {p0, v0}, Lcom/supertws/dubokutv/CloudSyncClient;->fetchKnownPeers(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static fetchOnResume(Landroid/content/Context;)V
    .locals 1

    .line 328
    const-string v0, "resume"

    invoke-static {p0, v0}, Lcom/supertws/dubokutv/CloudSyncClient;->fetchKnownPeers(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static fetchOnStartup(Landroid/content/Context;)V
    .locals 1

    .line 327
    const-string v0, "startup"

    invoke-static {p0, v0}, Lcom/supertws/dubokutv/CloudSyncClient;->fetchKnownPeers(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static fitPayload(Lorg/json/JSONObject;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 496
    invoke-static {p0}, Lcom/supertws/dubokutv/CloudSyncClient;->payloadBytes(Lorg/json/JSONObject;)I

    move-result v0

    const/4 v1, 0x1

    const/high16 v2, 0x10000

    if-gt v0, v2, :cond_0

    return v1

    .line 497
    :cond_0
    const-string v0, "records"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 498
    const/4 v3, 0x0

    if-nez v0, :cond_1

    return v3

    .line 499
    :cond_1
    const-string v4, "detailPageUrl"

    const-string v5, "videoPageUrl"

    const-string v6, "posterUrl"

    filled-new-array {v6, v4, v5}, [Ljava/lang/String;

    move-result-object v4

    .line 500
    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x3

    if-ge v5, v6, :cond_7

    aget-object v6, v4, v5

    .line 501
    :goto_1
    invoke-static {p0}, Lcom/supertws/dubokutv/CloudSyncClient;->payloadBytes(Lorg/json/JSONObject;)I

    move-result v7

    if-le v7, v2, :cond_6

    .line 502
    nop

    .line 503
    nop

    .line 504
    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v10

    const-string v11, ""

    if-ge v8, v10, :cond_4

    .line 505
    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 506
    if-nez v10, :cond_2

    goto :goto_3

    .line 507
    :cond_2
    invoke-virtual {v10, v6, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 508
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-le v11, v9, :cond_3

    .line 509
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v9

    .line 510
    move v7, v8

    .line 504
    :cond_3
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 513
    :cond_4
    if-gez v7, :cond_5

    goto :goto_4

    .line 514
    :cond_5
    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7, v6, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 515
    goto :goto_1

    .line 500
    :cond_6
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 517
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

    .line 463
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->requireCloudSyncEnabled()V

    .line 464
    nop

    .line 466
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

    .line 467
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0

    .line 468
    const/16 p1, 0xc8

    if-ne p0, p1, :cond_1

    .line 472
    new-instance p0, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/supertws/dubokutv/CloudSyncClient;->read(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 473
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->requireCloudSyncEnabled()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    nop

    .line 475
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 474
    :cond_0
    return-object p0

    .line 469
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

    .line 470
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cloud read failed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 475
    :catchall_0
    move-exception p0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    throw p0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 0

    .line 54
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/supertws/dubokutv/CloudSyncClient;->appContext:Landroid/content/Context;

    .line 55
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

    .line 444
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->requireCloudSyncEnabled()V

    .line 445
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "action"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "sourceCodes"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p3

    .line 446
    const-string v0, "cleanup"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "confirmed"

    invoke-virtual {p3, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 447
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

    .line 448
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->requireCloudSyncEnabled()V

    .line 449
    return-object p0
.end method

.method private static nextBackoff()J
    .locals 3

    .line 319
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    .line 320
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

    .line 94
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    sput-wide v0, Lcom/supertws/dubokutv/CloudSyncClient;->pauseUrgentUntilMs:J

    .line 95
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/supertws/dubokutv/CloudSyncClient;->onCommittedSave(Z)V

    .line 96
    return-void
.end method

.method public static onCommittedSave()V
    .locals 1

    .line 89
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/supertws/dubokutv/CloudSyncClient;->onCommittedSave(Z)V

    .line 90
    return-void
.end method

.method private static onCommittedSave(Z)V
    .locals 8

    .line 99
    sget-object v0, Lcom/supertws/dubokutv/CloudSyncClient;->appContext:Landroid/content/Context;

    .line 100
    if-nez v0, :cond_0

    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 101
    :cond_0
    if-nez v0, :cond_1

    return-void

    .line 102
    :cond_1
    invoke-static {v0}, Lcom/supertws/dubokutv/CloudSyncClient;->initialize(Landroid/content/Context;)V

    .line 103
    invoke-static {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/supertws/dubokutv/FamilyIdentity;->isCloudSyncEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 104
    :cond_2
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->dirtyPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "cloudDirty"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 105
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 106
    sget-object v1, Lcom/supertws/dubokutv/CloudSyncClient;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 107
    :try_start_0
    sget-wide v4, Lcom/supertws/dubokutv/CloudSyncClient;->captureVersion:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    sput-wide v4, Lcom/supertws/dubokutv/CloudSyncClient;->captureVersion:J

    .line 108
    sget-boolean v2, Lcom/supertws/dubokutv/CloudSyncClient;->captureImmediate:Z

    if-nez p0, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sget-wide v6, Lcom/supertws/dubokutv/CloudSyncClient;->pauseUrgentUntilMs:J

    cmp-long p0, v4, v6

    if-gez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p0, 0x1

    :goto_1
    or-int/2addr p0, v2

    sput-boolean p0, Lcom/supertws/dubokutv/CloudSyncClient;->captureImmediate:Z

    .line 109
    sget-boolean p0, Lcom/supertws/dubokutv/CloudSyncClient;->capturePending:Z

    if-eqz p0, :cond_5

    monitor-exit v1

    return-void

    .line 110
    :cond_5
    sput-boolean v3, Lcom/supertws/dubokutv/CloudSyncClient;->capturePending:Z

    .line 111
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    sget-object p0, Lcom/supertws/dubokutv/CloudSyncClient;->QUEUE:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/supertws/dubokutv/CloudSyncClient$1;

    invoke-direct {v1, v0}, Lcom/supertws/dubokutv/CloudSyncClient$1;-><init>(Landroid/content/Context;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 132
    return-void

    .line 111
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

    .line 572
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

    .line 573
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 574
    invoke-virtual {p1, p0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v0, 0xfa0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v0, 0x1388

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 575
    const-string v0, "Accept"

    const-string v1, "application/json"

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
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

    .line 577
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

    .line 578
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

    .line 521
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

    .line 311
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

    .line 453
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->requireCloudSyncEnabled()V

    .line 454
    const-string v0, "POST"

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p0, p1, p2}, Lcom/supertws/dubokutv/CloudSyncClient;->requestDetailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supertws/dubokutv/CloudSyncClient$RequestResult;

    move-result-object p0

    .line 455
    iget p1, p0, Lcom/supertws/dubokutv/CloudSyncClient$RequestResult;->code:I

    const/16 p2, 0xc8

    if-lt p1, p2, :cond_0

    iget p1, p0, Lcom/supertws/dubokutv/CloudSyncClient$RequestResult;->code:I

    const/16 p2, 0x12c

    if-ge p1, p2, :cond_0

    .line 459
    new-instance p1, Lorg/json/JSONObject;

    iget-object p0, p0, Lcom/supertws/dubokutv/CloudSyncClient$RequestResult;->errorBody:Ljava/lang/String;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 456
    :cond_0
    iget-object p0, p0, Lcom/supertws/dubokutv/CloudSyncClient$RequestResult;->errorBody:Ljava/lang/String;

    invoke-static {p0}, Lcom/supertws/dubokutv/CloudSyncClient;->safeWorkerErrorBody(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 457
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

    .line 479
    const-string v0, "R2Sync"

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->cloudSyncEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 481
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/supertws/dubokutv/ProgressSnapshot;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    .line 482
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->fitPayload(Lorg/json/JSONObject;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 483
    const-string p0, "Snapshot upload HTTP 413 body={\"error\":\"payload_too_large\"}"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    return v2

    .line 486
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 487
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

    invoke-static {v3, p0, p1, v1}, Lcom/supertws/dubokutv/CloudSyncClient;->requestDetailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supertws/dubokutv/CloudSyncClient$RequestResult;

    move-result-object p0

    .line 488
    iget p1, p0, Lcom/supertws/dubokutv/CloudSyncClient$RequestResult;->code:I

    const/16 v1, 0xcc

    if-ne p1, v1, :cond_2

    const/4 p0, 0x1

    return p0

    .line 489
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Snapshot upload HTTP "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lcom/supertws/dubokutv/CloudSyncClient$RequestResult;->code:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " body="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 490
    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Snapshot upload deferred: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 491
    :goto_0
    return v2
.end method

.method private static read(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 583
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 584
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 585
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

    .line 436
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->requireCloudSyncEnabled()V

    .line 437
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "joinCode"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "/v1/families/join"

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/supertws/dubokutv/CloudSyncClient;->postJson(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    .line 438
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->requireCloudSyncEnabled()V

    .line 439
    return-object p0
.end method

.method public static registerFamily(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 16

    .line 403
    const-string v0, "/v1/families"

    const-string v1, "POST"

    const-string v2, "R2Sync"

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->cloudSyncEnabled()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return v4

    .line 404
    :cond_0
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->dirtyPrefs()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v5, "cloudAuthRejected"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    return v4

    .line 406
    :cond_1
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

    .line 407
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v1, v0, v7, v6}, Lcom/supertws/dubokutv/CloudSyncClient;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 408
    const/16 v8, 0xc8

    if-eq v6, v8, :cond_8

    const/16 v10, 0xc9

    if-ne v6, v10, :cond_2

    goto :goto_2

    .line 409
    :cond_2
    const/16 v11, 0x191

    if-ne v6, v11, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->dirtyPrefs()Landroid/content/SharedPreferences;

    move-result-object v14

    const-string v15, "familyCreatedAt"

    const-wide/16 v9, 0x0

    invoke-interface {v14, v15, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    sub-long/2addr v12, v9

    const-wide/32 v9, 0xea60

    cmp-long v14, v12, v9

    if-gez v14, :cond_6

    .line 410
    const/4 v9, 0x4

    new-array v10, v9, [J

    fill-array-data v10, :array_0

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v9, :cond_6

    aget-wide v13, v10, v12

    .line 411
    invoke-static {v13, v14}, Landroid/os/SystemClock;->sleep(J)V

    .line 412
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->cloudSyncEnabled()Z

    move-result v6

    if-nez v6, :cond_3

    return v4

    .line 413
    :cond_3
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v0, v7, v6}, Lcom/supertws/dubokutv/CloudSyncClient;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 414
    if-eq v6, v8, :cond_5

    const/16 v13, 0xc9

    if-ne v6, v13, :cond_4

    goto :goto_1

    .line 410
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 414
    :cond_5
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 417
    :cond_6
    if-ne v6, v11, :cond_7

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->dirtyPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 418
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

    .line 419
    goto :goto_3

    .line 408
    :cond_8
    :goto_2
    const/4 v0, 0x1

    return v0

    .line 419
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

    .line 420
    :goto_3
    return v4

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

    .line 525
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

    .line 535
    nop

    .line 537
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/supertws/dubokutv/CloudSyncClient;->open(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 538
    if-eqz p3, :cond_0

    .line 539
    const/4 p1, 0x1

    :try_start_1
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 540
    const-string p1, "UTF-8"

    invoke-virtual {p3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 541
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 543
    :cond_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    .line 544
    const/16 p2, 0x190

    if-lt p1, p2, :cond_1

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    .line 545
    :goto_0
    const-string p3, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 546
    if-eqz p2, :cond_2

    .line 547
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

    .line 549
    :cond_2
    :goto_1
    new-instance p2, Lcom/supertws/dubokutv/CloudSyncClient$RequestResult;

    invoke-direct {p2, p1, p3}, Lcom/supertws/dubokutv/CloudSyncClient$RequestResult;-><init>(ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 550
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 549
    :cond_3
    return-object p2

    .line 550
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

.method private static requireCloudSyncEnabled()V
    .locals 2

    .line 84
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->cloudSyncEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    return-void

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cloud_sync_disabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static safeWorkerErrorBody(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 554
    const-string v0, "{\"error\":\"unknown\"}"

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x80

    if-le v1, v2, :cond_0

    goto/16 :goto_3

    .line 556
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "error"

    const-string v2, ""

    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 557
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

    .line 566
    goto :goto_2

    .line 565
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

    .line 566
    :goto_2
    return-object v0

    .line 568
    :catch_0
    move-exception p0

    return-object v0

    .line 554
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

    .line 300
    sget-object v0, Lcom/supertws/dubokutv/CloudSyncClient;->drainRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    return-void

    .line 301
    :cond_0
    sput-boolean p2, Lcom/supertws/dubokutv/CloudSyncClient;->scheduledRetryBackoff:Z

    .line 302
    const-wide/16 v1, 0x0

    cmp-long p2, p0, v1

    if-lez p2, :cond_1

    sget-object p2, Lcom/supertws/dubokutv/CloudSyncClient;->QUEUE:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p2, v0, p0, p1, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    sput-object p0, Lcom/supertws/dubokutv/CloudSyncClient;->scheduledDrain:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 304
    :cond_1
    const/4 p0, 0x0

    sput-object p0, Lcom/supertws/dubokutv/CloudSyncClient;->scheduledDrain:Ljava/util/concurrent/ScheduledFuture;

    .line 305
    const/4 p0, 0x0

    sput-boolean p0, Lcom/supertws/dubokutv/CloudSyncClient;->scheduledRetryBackoff:Z

    .line 306
    sget-object p0, Lcom/supertws/dubokutv/CloudSyncClient;->QUEUE:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p0, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 308
    :goto_0
    return-void
.end method

.method static shouldPreemptDrain(ZZ)Z
    .locals 0

    .line 315
    if-eqz p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
