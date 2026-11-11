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
    .registers 1

    .line 39
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/supertws/dubokutv/CloudSyncClient;->QUEUE:Ljava/util/concurrent/ScheduledExecutorService;

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/supertws/dubokutv/CloudSyncClient;->LOCK:Ljava/lang/Object;

    .line 41
    new-instance v0, Lcom/supertws/dubokutv/CloudSyncGate;

    invoke-direct {v0}, Lcom/supertws/dubokutv/CloudSyncGate;-><init>()V

    sput-object v0, Lcom/supertws/dubokutv/CloudSyncClient;->READ_GATE:Lcom/supertws/dubokutv/CloudSyncGate;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .registers 1

    .line 35
    sget-object v0, Lcom/supertws/dubokutv/CloudSyncClient;->LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()J
    .registers 2

    .line 35
    sget-wide v0, Lcom/supertws/dubokutv/CloudSyncClient;->captureVersion:J

    return-wide v0
.end method

.method static synthetic access$1000()Lcom/supertws/dubokutv/ProgressSnapshot;
    .registers 1

    .line 35
    sget-object v0, Lcom/supertws/dubokutv/CloudSyncClient;->retrySnapshot:Lcom/supertws/dubokutv/ProgressSnapshot;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/supertws/dubokutv/ProgressSnapshot;)Lcom/supertws/dubokutv/ProgressSnapshot;
    .registers 1

    .line 35
    sput-object p0, Lcom/supertws/dubokutv/CloudSyncClient;->retrySnapshot:Lcom/supertws/dubokutv/ProgressSnapshot;

    return-object p0
.end method

.method static synthetic access$1100()Lcom/supertws/dubokutv/ProgressSnapshot;
    .registers 1

    .line 35
    sget-object v0, Lcom/supertws/dubokutv/CloudSyncClient;->latest:Lcom/supertws/dubokutv/ProgressSnapshot;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/supertws/dubokutv/ProgressSnapshot;)Lcom/supertws/dubokutv/ProgressSnapshot;
    .registers 1

    .line 35
    sput-object p0, Lcom/supertws/dubokutv/CloudSyncClient;->latest:Lcom/supertws/dubokutv/ProgressSnapshot;

    return-object p0
.end method

.method static synthetic access$1200()Z
    .registers 1

    .line 35
    sget-boolean v0, Lcom/supertws/dubokutv/CloudSyncClient;->latestImmediate:Z

    return v0
.end method

.method static synthetic access$1202(Z)Z
    .registers 1

    .line 35
    sput-boolean p0, Lcom/supertws/dubokutv/CloudSyncClient;->latestImmediate:Z

    return p0
.end method

.method static synthetic access$1300()J
    .registers 2

    .line 35
    sget-wide v0, Lcom/supertws/dubokutv/CloudSyncClient;->lastUploadAt:J

    return-wide v0
.end method

.method static synthetic access$1302(J)J
    .registers 2

    .line 35
    sput-wide p0, Lcom/supertws/dubokutv/CloudSyncClient;->lastUploadAt:J

    return-wide p0
.end method

.method static synthetic access$1400()Landroid/content/Context;
    .registers 1

    .line 35
    sget-object v0, Lcom/supertws/dubokutv/CloudSyncClient;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500()Landroid/content/SharedPreferences;
    .registers 1

    .line 35
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->dirtyPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600()J
    .registers 2

    .line 35
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->nextBackoff()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1702(I)I
    .registers 1

    .line 35
    sput p0, Lcom/supertws/dubokutv/CloudSyncClient;->retryCount:I

    return p0
.end method

.method static synthetic access$1802(Z)Z
    .registers 1

    .line 35
    sput-boolean p0, Lcom/supertws/dubokutv/CloudSyncClient;->draining:Z

    return p0
.end method

.method static synthetic access$1902(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 1

    .line 35
    sput-object p0, Lcom/supertws/dubokutv/CloudSyncClient;->drainRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$200()Z
    .registers 1

    .line 35
    sget-boolean v0, Lcom/supertws/dubokutv/CloudSyncClient;->captureImmediate:Z

    return v0
.end method

.method static synthetic access$2000(JZ)V
    .registers 3

    .line 35
    invoke-static {p0, p1, p2}, Lcom/supertws/dubokutv/CloudSyncClient;->scheduleDrainLocked(JZ)V

    return-void
.end method

.method static synthetic access$202(Z)Z
    .registers 1

    .line 35
    sput-boolean p0, Lcom/supertws/dubokutv/CloudSyncClient;->captureImmediate:Z

    return p0
.end method

.method static synthetic access$2102(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .registers 1

    .line 35
    sput-object p0, Lcom/supertws/dubokutv/CloudSyncClient;->scheduledRead:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method

.method static synthetic access$2202(J)J
    .registers 2

    .line 35
    sput-wide p0, Lcom/supertws/dubokutv/CloudSyncClient;->lastReadFinishedAt:J

    return-wide p0
.end method

.method static synthetic access$2302(Z)Z
    .registers 1

    .line 35
    sput-boolean p0, Lcom/supertws/dubokutv/CloudSyncClient;->readScheduled:Z

    return p0
.end method

.method static synthetic access$2402(I)I
    .registers 1

    .line 35
    sput p0, Lcom/supertws/dubokutv/CloudSyncClient;->readRetryCount:I

    return p0
.end method

.method static synthetic access$2408()I
    .registers 2

    .line 35
    sget v0, Lcom/supertws/dubokutv/CloudSyncClient;->readRetryCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/supertws/dubokutv/CloudSyncClient;->readRetryCount:I

    return v0
.end method

.method static synthetic access$2500()Ljava/util/concurrent/ScheduledExecutorService;
    .registers 1

    .line 35
    sget-object v0, Lcom/supertws/dubokutv/CloudSyncClient;->QUEUE:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$300(Landroid/content/Context;Z)V
    .registers 2

    .line 35
    invoke-static {p0, p1}, Lcom/supertws/dubokutv/CloudSyncClient;->captureCommittedSnapshot(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$400()Z
    .registers 1

    .line 35
    sget-boolean v0, Lcom/supertws/dubokutv/CloudSyncClient;->capturePending:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .registers 1

    .line 35
    sput-boolean p0, Lcom/supertws/dubokutv/CloudSyncClient;->capturePending:Z

    return p0
.end method

.method static synthetic access$500()J
    .registers 2

    .line 35
    sget-wide v0, Lcom/supertws/dubokutv/CloudSyncClient;->cloudGeneration:J

    return-wide v0
.end method

.method static synthetic access$600()Z
    .registers 1

    .line 35
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->cloudSyncEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700()Ljava/util/concurrent/ScheduledFuture;
    .registers 1

    .line 35
    sget-object v0, Lcom/supertws/dubokutv/CloudSyncClient;->scheduledDrain:Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method

.method static synthetic access$702(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .registers 1

    .line 35
    sput-object p0, Lcom/supertws/dubokutv/CloudSyncClient;->scheduledDrain:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method

.method static synthetic access$802(Z)Z
    .registers 1

    .line 35
    sput-boolean p0, Lcom/supertws/dubokutv/CloudSyncClient;->scheduledRetryBackoff:Z

    return p0
.end method

.method static synthetic access$900()Lcom/supertws/dubokutv/CloudSyncGate;
    .registers 1

    .line 35
    sget-object v0, Lcom/supertws/dubokutv/CloudSyncClient;->READ_GATE:Lcom/supertws/dubokutv/CloudSyncGate;

    return-object v0
.end method

.method private static boundedText(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 184
    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    .line 185
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x200

    if-gt v0, v1, :cond_e

    return-object p0

    .line 186
    :cond_e
    nop

    .line 187
    const/16 v0, 0x1ff

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/16 v1, 0x1ff

    .line 188
    :cond_1d
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static cancelPendingCloudSync()V
    .registers 5

    .line 69
    sget-object v0, Lcom/supertws/dubokutv/CloudSyncClient;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    :try_start_3
    sget-wide v1, Lcom/supertws/dubokutv/CloudSyncClient;->cloudGeneration:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    sput-wide v1, Lcom/supertws/dubokutv/CloudSyncClient;->cloudGeneration:J

    .line 71
    sget-object v1, Lcom/supertws/dubokutv/CloudSyncClient;->scheduledDrain:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 72
    :cond_12
    sget-object v1, Lcom/supertws/dubokutv/CloudSyncClient;->scheduledRead:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_19

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 73
    :cond_19
    const/4 v1, 0x0

    sput-object v1, Lcom/supertws/dubokutv/CloudSyncClient;->scheduledDrain:Ljava/util/concurrent/ScheduledFuture;

    .line 74
    sput-object v1, Lcom/supertws/dubokutv/CloudSyncClient;->scheduledRead:Ljava/util/concurrent/ScheduledFuture;

    .line 75
    sput-boolean v2, Lcom/supertws/dubokutv/CloudSyncClient;->readScheduled:Z

    .line 76
    sput-object v1, Lcom/supertws/dubokutv/CloudSyncClient;->latest:Lcom/supertws/dubokutv/ProgressSnapshot;

    .line 77
    sput-object v1, Lcom/supertws/dubokutv/CloudSyncClient;->retrySnapshot:Lcom/supertws/dubokutv/ProgressSnapshot;

    .line 78
    sput-boolean v2, Lcom/supertws/dubokutv/CloudSyncClient;->latestImmediate:Z

    .line 79
    sput-boolean v2, Lcom/supertws/dubokutv/CloudSyncClient;->draining:Z

    .line 80
    sput-object v1, Lcom/supertws/dubokutv/CloudSyncClient;->drainRunnable:Ljava/lang/Runnable;

    .line 81
    sput-boolean v2, Lcom/supertws/dubokutv/CloudSyncClient;->scheduledRetryBackoff:Z

    .line 82
    sput v2, Lcom/supertws/dubokutv/CloudSyncClient;->retryCount:I

    .line 83
    sput v2, Lcom/supertws/dubokutv/CloudSyncClient;->readRetryCount:I

    .line 84
    sget-object v1, Lcom/supertws/dubokutv/CloudSyncClient;->READ_GATE:Lcom/supertws/dubokutv/CloudSyncGate;

    invoke-virtual {v1}, Lcom/supertws/dubokutv/CloudSyncGate;->requestRead()V

    .line 85
    invoke-virtual {v1}, Lcom/supertws/dubokutv/CloudSyncGate;->beginRead()J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/supertws/dubokutv/CloudSyncGate;->completeRead(JZ)V

    .line 86
    monitor-exit v0

    .line 87
    return-void

    .line 86
    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_3f

    throw v1
.end method

.method private static captureCommittedSnapshot(Landroid/content/Context;Z)V
    .registers 18

    .line 156
    move-object/from16 v0, p0

    .line 158
    const/4 v1, 0x0

    :try_start_3
    invoke-static/range {p0 .. p0}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/supertws/dubokutv/FamilyIdentity;->ensure()V

    .line 159
    const-string v2, "record_database"

    const/4 v8, 0x0

    invoke-virtual {v0, v2, v8, v1}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_11} :catch_10f
    .catchall {:try_start_3 .. :try_end_11} :catchall_10c

    .line 160
    :try_start_11
    const-string v2, "SELECT id,name,episode,progressInMillis,durationInMillis,createdAt,modifiedAt,videoPageUrl,detailPageUrl,posterUrl FROM records ORDER BY modifiedAt DESC LIMIT 20"

    invoke-virtual {v9, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_17} :catch_10a
    .catchall {:try_start_11 .. :try_end_17} :catchall_13c

    .line 161
    :try_start_17
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    .line 162
    :cond_1c
    :goto_1c
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    const/4 v12, 0x1

    if-eqz v1, :cond_d4

    .line 163
    invoke-interface {v10, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->boundedText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->boundedText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 165
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1c

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_40

    goto :goto_1c

    .line 166
    :cond_40
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 167
    const-string v3, "id"

    invoke-virtual {v12, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "name"

    invoke-virtual {v12, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "episode"

    const/4 v3, 0x2

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/supertws/dubokutv/CloudSyncClient;->boundedText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    const-string v1, "progressInMillis"

    const/4 v3, 0x3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v12, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "durationInMillis"

    const/4 v3, 0x4

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v12, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 169
    const-string v1, "createdAt"

    const/4 v3, 0x5

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v12, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "modifiedAt"

    const/4 v3, 0x6

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v12, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 170
    const-string v13, "clockVersion"

    .line 171
    const/16 v14, 0x8

    invoke-interface {v10, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v7}, Lcom/supertws/dubokutv/FamilyIdentity;->deviceId()Ljava/lang/String;

    move-result-object v15

    .line 170
    move-object/from16 v1, p0

    move-object v3, v4

    move-wide v4, v5

    move-object v6, v15

    invoke-static/range {v1 .. v6}, Lcom/supertws/dubokutv/SyncVersionStore;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/supertws/dubokutv/SyncVersion;

    move-result-object v1

    invoke-static {v1}, Lcom/supertws/dubokutv/SyncVersionStore;->toJson(Lcom/supertws/dubokutv/SyncVersion;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v12, v13, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    const-string v1, "videoPageUrl"

    const/4 v2, 0x7

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/supertws/dubokutv/ProgressSnapshot;->normalizeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    const-string v1, "detailPageUrl"

    invoke-interface {v10, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/supertws/dubokutv/ProgressSnapshot;->normalizeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    const-string v1, "posterUrl"

    const/16 v2, 0x9

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/supertws/dubokutv/ProgressSnapshot;->normalizeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    invoke-virtual {v11, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 176
    goto/16 :goto_1c

    .line 177
    :cond_d4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sget-wide v3, Lcom/supertws/dubokutv/CloudSyncClient;->pauseUrgentUntilMs:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_e0

    const/4 v13, 0x1

    goto :goto_e1

    :cond_e0
    const/4 v13, 0x0

    .line 178
    :goto_e1
    new-instance v14, Lcom/supertws/dubokutv/ProgressSnapshot;

    invoke-virtual {v7}, Lcom/supertws/dubokutv/FamilyIdentity;->familyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Lcom/supertws/dubokutv/FamilyIdentity;->deviceId()Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p0 .. p0}, Lcom/supertws/dubokutv/FamilyClock;->now(Landroid/content/Context;)J

    move-result-wide v4

    move-object v1, v14

    move-object v6, v11

    invoke-direct/range {v1 .. v6}, Lcom/supertws/dubokutv/ProgressSnapshot;-><init>(Ljava/lang/String;Ljava/lang/String;JLorg/json/JSONArray;)V

    if-nez p1, :cond_f8

    if-eqz v13, :cond_f9

    :cond_f8
    const/4 v8, 0x1

    :cond_f9
    invoke-static {v0, v14, v8}, Lcom/supertws/dubokutv/CloudSyncClient;->enqueueUpload(Landroid/content/Context;Lcom/supertws/dubokutv/ProgressSnapshot;Z)V
    :try_end_fc
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_fc} :catch_107
    .catchall {:try_start_17 .. :try_end_fc} :catchall_104

    .line 180
    if-eqz v10, :cond_101

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_101
    if-eqz v9, :cond_13b

    goto :goto_138

    :catchall_104
    move-exception v0

    move-object v1, v10

    goto :goto_13d

    .line 179
    :catch_107
    move-exception v0

    move-object v1, v10

    goto :goto_111

    :catch_10a
    move-exception v0

    goto :goto_111

    .line 180
    :catchall_10c
    move-exception v0

    move-object v9, v1

    goto :goto_13d

    .line 179
    :catch_10f
    move-exception v0

    move-object v9, v1

    :goto_111
    :try_start_111
    const-string v2, "R2Sync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Committed snapshot unavailable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_131
    .catchall {:try_start_111 .. :try_end_131} :catchall_13c

    .line 180
    if-eqz v1, :cond_136

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_136
    if-eqz v9, :cond_13b

    :goto_138
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 181
    :cond_13b
    return-void

    .line 180
    :catchall_13c
    move-exception v0

    :goto_13d
    if-eqz v1, :cond_142

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_142
    if-eqz v9, :cond_147

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_147
    throw v0
.end method

.method private static cloudSyncEnabled()Z
    .registers 1

    .line 90
    sget-object v0, Lcom/supertws/dubokutv/CloudSyncClient;->appContext:Landroid/content/Context;

    .line 91
    if-eqz v0, :cond_10

    invoke-static {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->isCloudSyncEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public static configureTls(Ljava/net/HttpURLConnection;)V
    .registers 6

    .line 623
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->isMiBox3Api22()Z

    move-result v0

    if-eqz v0, :cond_44

    instance-of v0, p0, Ljavax/net/ssl/HttpsURLConnection;

    if-nez v0, :cond_b

    goto :goto_44

    .line 625
    :cond_b
    :try_start_b
    const-string v0, "TLSv1.2"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 626
    const-string v1, "cleantv-r2-sync.jerry-shao.workers.dev"

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2d

    .line 627
    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->workerTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    goto :goto_2e

    :cond_2d
    move-object v1, v2

    .line 628
    :goto_2e
    invoke-virtual {v0, v2, v1, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 629
    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_3a} :catch_3b

    .line 632
    goto :goto_43

    .line 630
    :catch_3b
    move-exception p0

    .line 631
    const-string v0, "R2Sync"

    const-string v1, "TLS 1.2 setup unavailable"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 633
    :goto_43
    return-void

    .line 623
    :cond_44
    :goto_44
    return-void
.end method

.method public static createJoinCode()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 458
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->requireCloudSyncEnabled()V

    .line 459
    sget-object v0, Lcom/supertws/dubokutv/CloudSyncClient;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v0

    .line 460
    invoke-virtual {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->familyId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->familySecret()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/supertws/dubokutv/CloudSyncClient;->registerFamily(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 461
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->requireCloudSyncEnabled()V

    .line 462
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

    .line 463
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->requireCloudSyncEnabled()V

    .line 464
    const-string v1, "joinCode"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 465
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5a

    .line 466
    return-object v0

    .line 465
    :cond_5a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "join_code_unavailable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
    :cond_62
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "family_unavailable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static dirtyPrefs()Landroid/content/SharedPreferences;
    .registers 3

    .line 422
    sget-object v0, Lcom/supertws/dubokutv/CloudSyncClient;->appContext:Landroid/content/Context;

    const-string v1, "r2_sync_identity"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static enc(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 686
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static enqueueUpload(Landroid/content/Context;Lcom/supertws/dubokutv/ProgressSnapshot;Z)V
    .registers 8

    .line 193
    invoke-static {p0}, Lcom/supertws/dubokutv/CloudSyncClient;->initialize(Landroid/content/Context;)V

    .line 194
    if-eqz p0, :cond_10

    invoke-static {p0}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/supertws/dubokutv/FamilyIdentity;->isCloudSyncEnabled()Z

    move-result p0

    if-nez p0, :cond_10

    return-void

    .line 195
    :cond_10
    if-nez p1, :cond_13

    return-void

    .line 196
    :cond_13
    sget-object p0, Lcom/supertws/dubokutv/CloudSyncClient;->LOCK:Ljava/lang/Object;

    monitor-enter p0

    .line 197
    :try_start_16
    sget-wide v0, Lcom/supertws/dubokutv/CloudSyncClient;->cloudGeneration:J

    .line 198
    sput-object p1, Lcom/supertws/dubokutv/CloudSyncClient;->latest:Lcom/supertws/dubokutv/ProgressSnapshot;

    .line 199
    sget-boolean p1, Lcom/supertws/dubokutv/CloudSyncClient;->latestImmediate:Z

    or-int/2addr p1, p2

    sput-boolean p1, Lcom/supertws/dubokutv/CloudSyncClient;->latestImmediate:Z

    .line 200
    sget-boolean p1, Lcom/supertws/dubokutv/CloudSyncClient;->draining:Z

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    if-eqz p1, :cond_40

    .line 201
    sget-boolean p1, Lcom/supertws/dubokutv/CloudSyncClient;->scheduledRetryBackoff:Z

    invoke-static {p2, p1}, Lcom/supertws/dubokutv/CloudSyncClient;->shouldPreemptDrain(ZZ)Z

    move-result p1

    if-eqz p1, :cond_3e

    sget-object p1, Lcom/supertws/dubokutv/CloudSyncClient;->scheduledDrain:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p1, :cond_3e

    .line 202
    invoke-interface {p1, v4}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 203
    const/4 p1, 0x0

    sput-object p1, Lcom/supertws/dubokutv/CloudSyncClient;->scheduledDrain:Ljava/util/concurrent/ScheduledFuture;

    .line 204
    invoke-static {v2, v3, v4}, Lcom/supertws/dubokutv/CloudSyncClient;->scheduleDrainLocked(JZ)V

    .line 206
    :cond_3e
    monitor-exit p0

    return-void

    .line 208
    :cond_40
    const/4 p1, 0x1

    sput-boolean p1, Lcom/supertws/dubokutv/CloudSyncClient;->draining:Z

    .line 209
    new-instance p1, Lcom/supertws/dubokutv/CloudSyncClient$2;

    invoke-direct {p1, v0, v1}, Lcom/supertws/dubokutv/CloudSyncClient$2;-><init>(J)V

    sput-object p1, Lcom/supertws/dubokutv/CloudSyncClient;->drainRunnable:Ljava/lang/Runnable;

    .line 317
    invoke-static {v2, v3, v4}, Lcom/supertws/dubokutv/CloudSyncClient;->scheduleDrainLocked(JZ)V

    .line 318
    monitor-exit p0

    .line 319
    return-void

    .line 318
    :catchall_4f
    move-exception p1

    monitor-exit p0
    :try_end_51
    .catchall {:try_start_16 .. :try_end_51} :catchall_4f

    throw p1
.end method

.method public static fetchKnownPeers(Landroid/content/Context;)V
    .registers 2

    .line 348
    const-string v0, "peer"

    invoke-static {p0, v0}, Lcom/supertws/dubokutv/CloudSyncClient;->fetchKnownPeers(Landroid/content/Context;Ljava/lang/String;)V

    .line 349
    return-void
.end method

.method private static fetchKnownPeers(Landroid/content/Context;Ljava/lang/String;)V
    .registers 12

    .line 355
    invoke-static {p0}, Lcom/supertws/dubokutv/CloudSyncClient;->initialize(Landroid/content/Context;)V

    .line 356
    if-eqz p0, :cond_10

    invoke-static {p0}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/supertws/dubokutv/FamilyIdentity;->isCloudSyncEnabled()Z

    move-result p0

    if-nez p0, :cond_10

    return-void

    .line 357
    :cond_10
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

    .line 360
    sget-object p0, Lcom/supertws/dubokutv/CloudSyncClient;->LOCK:Ljava/lang/Object;

    monitor-enter p0

    .line 361
    :try_start_2b
    sget-boolean v0, Lcom/supertws/dubokutv/CloudSyncClient;->readScheduled:Z

    if-eqz v0, :cond_39

    const-string v0, "peer"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    monitor-exit p0

    return-void

    .line 362
    :cond_39
    sget-object v0, Lcom/supertws/dubokutv/CloudSyncClient;->READ_GATE:Lcom/supertws/dubokutv/CloudSyncGate;

    invoke-virtual {v0}, Lcom/supertws/dubokutv/CloudSyncGate;->requestRead()V

    .line 363
    sget-boolean v0, Lcom/supertws/dubokutv/CloudSyncClient;->readScheduled:Z

    if-eqz v0, :cond_44

    monitor-exit p0

    return-void

    .line 364
    :cond_44
    const/4 v0, 0x1

    sput-boolean v0, Lcom/supertws/dubokutv/CloudSyncClient;->readScheduled:Z

    .line 365
    sget-wide v0, Lcom/supertws/dubokutv/CloudSyncClient;->cloudGeneration:J

    .line 366
    sget-wide v2, Lcom/supertws/dubokutv/CloudSyncClient;->lastReadFinishedAt:J

    const-wide/16 v4, 0x7d0

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-nez v8, :cond_55

    move-wide v2, v6

    goto :goto_62

    :cond_55
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-wide v8, Lcom/supertws/dubokutv/CloudSyncClient;->lastReadFinishedAt:J

    sub-long/2addr v2, v8

    sub-long v2, v4, v2

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 367
    :goto_62
    const-string v8, "startup"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6b

    goto :goto_6c

    :cond_6b
    move-wide v4, v6

    :goto_6c
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 368
    monitor-exit p0
    :try_end_71
    .catchall {:try_start_2b .. :try_end_71} :catchall_81

    .line 369
    sget-object p0, Lcom/supertws/dubokutv/CloudSyncClient;->QUEUE:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p1, Lcom/supertws/dubokutv/CloudSyncClient$3;

    invoke-direct {p1, v0, v1}, Lcom/supertws/dubokutv/CloudSyncClient$3;-><init>(J)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, p1, v2, v3, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    sput-object p0, Lcom/supertws/dubokutv/CloudSyncClient;->scheduledRead:Ljava/util/concurrent/ScheduledFuture;

    .line 419
    return-void

    .line 368
    :catchall_81
    move-exception p1

    :try_start_82
    monitor-exit p0
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_81

    throw p1
.end method

.method public static fetchOnHistory(Landroid/content/Context;)V
    .registers 2

    .line 352
    const-string v0, "history"

    invoke-static {p0, v0}, Lcom/supertws/dubokutv/CloudSyncClient;->fetchKnownPeers(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static fetchOnResume(Landroid/content/Context;)V
    .registers 2

    .line 351
    const-string v0, "resume"

    invoke-static {p0, v0}, Lcom/supertws/dubokutv/CloudSyncClient;->fetchKnownPeers(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static fetchOnStartup(Landroid/content/Context;)V
    .registers 2

    .line 350
    const-string v0, "startup"

    invoke-static {p0, v0}, Lcom/supertws/dubokutv/CloudSyncClient;->fetchKnownPeers(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static findTrustManager(Ljavax/net/ssl/TrustManagerFactory;)Ljavax/net/ssl/X509TrustManager;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 674
    invoke-virtual {p0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_14

    aget-object v2, p0, v1

    .line 675
    instance-of v3, v2, Ljavax/net/ssl/X509TrustManager;

    if-eqz v3, :cond_11

    check-cast v2, Ljavax/net/ssl/X509TrustManager;

    return-object v2

    .line 674
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 677
    :cond_14
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "x509_trust_manager_unavailable"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static fitPayload(Lorg/json/JSONObject;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 530
    invoke-static {p0}, Lcom/supertws/dubokutv/CloudSyncClient;->payloadBytes(Lorg/json/JSONObject;)I

    move-result v0

    const/4 v1, 0x1

    const/high16 v2, 0x10000

    if-gt v0, v2, :cond_a

    return v1

    .line 531
    :cond_a
    const-string v0, "records"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 532
    const/4 v3, 0x0

    if-nez v0, :cond_14

    return v3

    .line 533
    :cond_14
    const-string v4, "detailPageUrl"

    const-string v5, "videoPageUrl"

    const-string v6, "posterUrl"

    filled-new-array {v6, v4, v5}, [Ljava/lang/String;

    move-result-object v4

    .line 534
    const/4 v5, 0x0

    :goto_1f
    const/4 v6, 0x3

    if-ge v5, v6, :cond_5e

    aget-object v6, v4, v5

    .line 535
    :goto_24
    invoke-static {p0}, Lcom/supertws/dubokutv/CloudSyncClient;->payloadBytes(Lorg/json/JSONObject;)I

    move-result v7

    if-le v7, v2, :cond_5b

    .line 536
    nop

    .line 537
    nop

    .line 538
    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_2f
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v10

    const-string v11, ""

    if-ge v8, v10, :cond_50

    .line 539
    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 540
    if-nez v10, :cond_3e

    goto :goto_4d

    .line 541
    :cond_3e
    invoke-virtual {v10, v6, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 542
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-le v11, v9, :cond_4d

    .line 543
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v9

    .line 544
    move v7, v8

    .line 538
    :cond_4d
    :goto_4d
    add-int/lit8 v8, v8, 0x1

    goto :goto_2f

    .line 547
    :cond_50
    if-gez v7, :cond_53

    goto :goto_5b

    .line 548
    :cond_53
    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7, v6, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 549
    goto :goto_24

    .line 534
    :cond_5b
    :goto_5b
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    .line 551
    :cond_5e
    invoke-static {p0}, Lcom/supertws/dubokutv/CloudSyncClient;->payloadBytes(Lorg/json/JSONObject;)I

    move-result p0

    if-gt p0, v2, :cond_65

    goto :goto_66

    :cond_65
    const/4 v1, 0x0

    :goto_66
    return v1
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 497
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->requireCloudSyncEnabled()V

    .line 498
    nop

    .line 500
    const/4 v0, 0x0

    :try_start_5
    const-string v1, "GET"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/v2/sync/"

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

    .line 501
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0

    .line 502
    const/16 p1, 0xc8

    if-ne p0, p1, :cond_4f

    .line 506
    new-instance p0, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/supertws/dubokutv/CloudSyncClient;->read(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 507
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->requireCloudSyncEnabled()V
    :try_end_48
    .catchall {:try_start_5 .. :try_end_48} :catchall_6f

    .line 508
    nop

    .line 509
    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 508
    :cond_4e
    return-object p0

    .line 503
    :cond_4f
    :try_start_4f
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

    .line 504
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cloud read failed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_6f
    .catchall {:try_start_4f .. :try_end_6f} :catchall_6f

    .line 509
    :catchall_6f
    move-exception p0

    if-eqz v0, :cond_75

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_75
    throw p0
.end method

.method public static initialize(Landroid/content/Context;)V
    .registers 1

    .line 65
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/supertws/dubokutv/CloudSyncClient;->appContext:Landroid/content/Context;

    .line 66
    :cond_8
    return-void
.end method

.method private static isMiBox3Api22()Z
    .registers 4

    .line 636
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    const/4 v2, 0x0

    if-ne v0, v1, :cond_67

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 637
    const-string v1, "xiaomi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_67

    .line 638
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 639
    const-string v1, "mibox3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_65

    const-string v1, "mi box 3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_65

    .line 640
    const-string v1, "mdz-16"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_65

    const-string v1, "once"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_66

    :cond_65
    const/4 v2, 0x1

    .line 639
    :cond_66
    return v2

    .line 637
    :cond_67
    :goto_67
    return v2
.end method

.method public static synchronized markCloudDirty(Landroid/content/Context;)V
    .registers 7

    invoke-static {p0}, Lcom/supertws/dubokutv/CloudSyncClient;->initialize(Landroid/content/Context;)V
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->cloudSyncEnabled()Z
    move-result v0
    if-eqz v0, :cond_dirty_done

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->dirtyPrefs()Landroid/content/SharedPreferences;
    move-result-object v0
    const-string v1, "cloudDirtyRevision"
    const-wide/16 v2, 0x0
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    move-result-wide v2
    const-wide/16 v4, 0x1
    add-long/2addr v2, v4
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object v0
    const-string v1, "cloudDirty"
    const/4 v4, 0x1
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    move-result-object v0
    const-string v1, "cloudDirtyRevision"
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    move-result-object v0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    invoke-static {p0}, Lcom/supertws/dubokutv/ProgressSyncJobService;->schedule(Landroid/content/Context;)V

    :cond_dirty_done
    return-void
.end method





.method public static mergeFamilies(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Z)Lorg/json/JSONObject;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 478
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->requireCloudSyncEnabled()V

    .line 479
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "action"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "sourceCodes"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p3

    .line 480
    const-string v0, "cleanup"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_21

    const-string p2, "confirmed"

    invoke-virtual {p3, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 481
    :cond_21
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

    .line 482
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->requireCloudSyncEnabled()V

    .line 483
    return-object p0
.end method

.method private static networkErrorName(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 4

    .line 681
    move-object v0, p0

    .line 682
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eq v1, v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_1

    .line 683
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-ne v0, p0, :cond_28

    const-string p0, ""

    goto :goto_43

    :cond_28
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_43
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static nextBackoff()J
    .registers 3

    .line 342
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_14

    .line 343
    sget v1, Lcom/supertws/dubokutv/CloudSyncClient;->retryCount:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/supertws/dubokutv/CloudSyncClient;->retryCount:I

    const/4 v2, 0x3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    aget-wide v1, v0, v1

    return-wide v1

    :array_14
    .array-data 8
        0xea60
        0x1d4c0
        0x493e0
        0xdbba0
    .end array-data
.end method

.method public static onActivityPause()V
    .registers 4

    .line 115
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    sput-wide v0, Lcom/supertws/dubokutv/CloudSyncClient;->pauseUrgentUntilMs:J

    .line 116
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/supertws/dubokutv/CloudSyncClient;->onCommittedSave(Z)V

    .line 117
    return-void
.end method

.method public static onCommittedSave()V
    .registers 1

    .line 100
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/supertws/dubokutv/CloudSyncClient;->onCommittedSave(Z)V

    .line 101
    return-void
.end method

.method public static onCommittedSave(Z)V
    .registers 9

    .line 120
    sget-object v0, Lcom/supertws/dubokutv/CloudSyncClient;->appContext:Landroid/content/Context;

    .line 121
    if-nez v0, :cond_8

    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 122
    :cond_8
    if-nez v0, :cond_b

    return-void

    .line 123
    :cond_b
    invoke-static {v0}, Lcom/supertws/dubokutv/CloudSyncClient;->initialize(Landroid/content/Context;)V

    .line 124
    invoke-static {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/supertws/dubokutv/FamilyIdentity;->isCloudSyncEnabled()Z

    move-result v1

    if-nez v1, :cond_19

    return-void

    .line 125
    :cond_19
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->dirtyPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "cloudDirty"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {v0}, Lcom/supertws/dubokutv/ProgressSyncJobService;->schedule(Landroid/content/Context;)V

    .line 126
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 127
    sget-object v1, Lcom/supertws/dubokutv/CloudSyncClient;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 128
    :try_start_32
    sget-wide v4, Lcom/supertws/dubokutv/CloudSyncClient;->captureVersion:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    sput-wide v4, Lcom/supertws/dubokutv/CloudSyncClient;->captureVersion:J

    .line 129
    sget-boolean v2, Lcom/supertws/dubokutv/CloudSyncClient;->captureImmediate:Z

    if-nez p0, :cond_4a

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sget-wide v6, Lcom/supertws/dubokutv/CloudSyncClient;->pauseUrgentUntilMs:J

    cmp-long p0, v4, v6

    if-gez p0, :cond_48

    goto :goto_4a

    :cond_48
    const/4 p0, 0x0

    goto :goto_4b

    :cond_4a
    :goto_4a
    const/4 p0, 0x1

    :goto_4b
    or-int/2addr p0, v2

    sput-boolean p0, Lcom/supertws/dubokutv/CloudSyncClient;->captureImmediate:Z

    .line 130
    sget-boolean p0, Lcom/supertws/dubokutv/CloudSyncClient;->capturePending:Z

    if-eqz p0, :cond_54

    monitor-exit v1

    return-void

    .line 131
    :cond_54
    sput-boolean v3, Lcom/supertws/dubokutv/CloudSyncClient;->capturePending:Z

    .line 132
    monitor-exit v1
    :try_end_57
    .catchall {:try_start_32 .. :try_end_57} :catchall_62

    .line 133
    sget-object p0, Lcom/supertws/dubokutv/CloudSyncClient;->QUEUE:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/supertws/dubokutv/CloudSyncClient$1;

    invoke-direct {v1, v0}, Lcom/supertws/dubokutv/CloudSyncClient$1;-><init>(Landroid/content/Context;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 153
    return-void

    .line 132
    :catchall_62
    move-exception p0

    :try_start_63
    monitor-exit v1
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    throw p0
.end method

.method public static onNetworkAvailable(Landroid/content/Context;)V
    .registers 4

    .line 109
    invoke-static {p0}, Lcom/supertws/dubokutv/CloudSyncClient;->initialize(Landroid/content/Context;)V

    .line 110
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->cloudSyncEnabled()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->dirtyPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "cloudDirty"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {p0}, Lcom/supertws/dubokutv/CloudSyncClient;->fetchKnownPeers(Landroid/content/Context;)V

    .line 111
    :cond_19
    return-void
.end method

.method public static needsPersistentSync(Landroid/content/Context;)Z
    .registers 3

    invoke-static {p0}, Lcom/supertws/dubokutv/CloudSyncClient;->initialize(Landroid/content/Context;)V
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->cloudSyncEnabled()Z
    move-result v0
    if-eqz v0, :cond_19

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->dirtyPrefs()Landroid/content/SharedPreferences;
    move-result-object v0
    const-string v1, "cloudDirty"
    const/4 v2, 0x0
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    move-result v1
    if-eqz v1, :cond_19

    const-string v1, "cloudAuthRejected"
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    move-result v0
    if-eqz v0, :cond_18

    :cond_19
    const/4 v0, 0x0
    return v0

    :cond_18
    const/4 v0, 0x1
    return v0
.end method

.method private static open(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 612
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

    .line 613
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 614
    invoke-static {p1}, Lcom/supertws/dubokutv/CloudSyncClient;->configureTls(Ljava/net/HttpURLConnection;)V

    .line 615
    invoke-virtual {p1, p0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v0, 0xfa0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v0, 0x1388

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 616
    const-string v0, "Accept"

    const-string v1, "application/json"

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    if-eqz p2, :cond_4f

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

    .line 618
    :cond_4f
    const-string p2, "POST"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5f

    const-string p2, "PUT"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_66

    :cond_5f
    const-string p0, "Content-Type"

    const-string p2, "application/json; charset=utf-8"

    invoke-virtual {p1, p0, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    :cond_66
    return-object p1
.end method

.method private static payloadBytes(Lorg/json/JSONObject;)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 555
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    array-length p0, p0

    return p0
.end method

.method static pendingDrainDelay(JZ)J
    .registers 3

    .line 334
    if-eqz p2, :cond_4

    const-wide/16 p0, 0x0

    :cond_4
    return-wide p0
.end method

.method private static postJson(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 487
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->requireCloudSyncEnabled()V

    .line 488
    const-string v0, "POST"

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p0, p1, p2}, Lcom/supertws/dubokutv/CloudSyncClient;->requestDetailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supertws/dubokutv/CloudSyncClient$RequestResult;

    move-result-object p0

    .line 489
    iget p1, p0, Lcom/supertws/dubokutv/CloudSyncClient$RequestResult;->code:I

    const/16 p2, 0xc8

    if-lt p1, p2, :cond_21

    iget p1, p0, Lcom/supertws/dubokutv/CloudSyncClient$RequestResult;->code:I

    const/16 p2, 0x12c

    if-ge p1, p2, :cond_21

    .line 493
    new-instance p1, Lorg/json/JSONObject;

    iget-object p0, p0, Lcom/supertws/dubokutv/CloudSyncClient$RequestResult;->errorBody:Ljava/lang/String;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 490
    :cond_21
    iget-object p0, p0, Lcom/supertws/dubokutv/CloudSyncClient$RequestResult;->errorBody:Ljava/lang/String;

    invoke-static {p0}, Lcom/supertws/dubokutv/CloudSyncClient;->safeWorkerErrorBody(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 491
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
    .registers 8

    .line 513
    const-string v0, "R2Sync"

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->cloudSyncEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 515
    :cond_a
    :try_start_a
    invoke-virtual {p0}, Lcom/supertws/dubokutv/ProgressSnapshot;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    .line 516
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->fitPayload(Lorg/json/JSONObject;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 517
    const-string p0, "Snapshot upload HTTP 413 body={\"error\":\"payload_too_large\"}"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    return v2

    .line 520
    :cond_1a
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 521
    const-string v3, "PUT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/v2/sync/"

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

    .line 522
    iget p1, p0, Lcom/supertws/dubokutv/CloudSyncClient$RequestResult;->code:I

    const/16 v1, 0xcc

    if-ne p1, v1, :cond_55

    const/4 p0, 0x1

    return p0

    .line 523
    :cond_55
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
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_7d} :catch_7e

    .line 524
    goto :goto_9d

    :catch_7e
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

    .line 525
    :goto_9d
    return v2
.end method

.method private static read(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 688
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 689
    :goto_9
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_15

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_9

    .line 690
    :cond_15
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    const-string p0, "UTF-8"

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static redeemJoinCode(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 470
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->requireCloudSyncEnabled()V

    .line 471
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "joinCode"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "/v1/families/join"

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/supertws/dubokutv/CloudSyncClient;->postJson(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    .line 472
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->requireCloudSyncEnabled()V

    .line 473
    return-object p0
.end method

.method public static registerFamily(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 426
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->cloudSyncEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 427
    :cond_8
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->dirtyPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "cloudAuthRejected"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_15

    return v1

    .line 429
    :cond_15
    :try_start_15
    invoke-static {p0, p1}, Lcom/supertws/dubokutv/CloudSyncClient;->registerFamilyForAuth(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_1a

    .line 430
    const/4 p0, 0x1

    return p0

    .line 431
    :catch_1a
    move-exception p0

    .line 432
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Family registration deferred: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "R2Sync"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    return v1
.end method

.method public static registerFamilyForAuth(Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 438
    const-string v0, "/v1/families"

    const-string v1, "POST"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "familyId"

    invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v2, "familySecret"

    invoke-virtual {p0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    .line 441
    :try_start_15
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, p1}, Lcom/supertws/dubokutv/CloudSyncClient;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 442
    const/16 v3, 0xc8

    if-eq p1, v3, :cond_90

    const/16 v4, 0xc9

    if-ne p1, v4, :cond_27

    goto :goto_90

    .line 443
    :cond_27
    const/16 v5, 0x191

    if-ne p1, v5, :cond_62

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->dirtyPrefs()Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "familyCreatedAt"

    const-wide/16 v10, 0x0

    invoke-interface {v8, v9, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/32 v8, 0xea60

    cmp-long v10, v6, v8

    if-gez v10, :cond_62

    .line 444
    const/4 v6, 0x4

    new-array v7, v6, [J

    fill-array-data v7, :array_b0

    const/4 v8, 0x0

    :goto_4a
    if-ge v8, v6, :cond_62

    aget-wide v9, v7, v8

    .line 445
    invoke-static {v9, v10}, Landroid/os/SystemClock;->sleep(J)V

    .line 446
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, v2, p1}, Lcom/supertws/dubokutv/CloudSyncClient;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_59} :catch_91

    .line 447
    if-eq p1, v3, :cond_61

    if-ne p1, v4, :cond_5e

    goto :goto_61

    .line 444
    :cond_5e
    add-int/lit8 v8, v8, 0x1

    goto :goto_4a

    .line 447
    :cond_61
    :goto_61
    return-void

    .line 452
    :cond_62
    nop

    .line 453
    if-ne p1, v5, :cond_77

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->dirtyPrefs()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "cloudAuthRejected"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 454
    :cond_77
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "family_registration_http_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 442
    :cond_90
    :goto_90
    return-void

    .line 450
    :catch_91
    move-exception p0

    .line 451
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "family_registration_network_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/supertws/dubokutv/CloudSyncClient;->networkErrorName(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :array_b0
    .array-data 8
        0x3e8
        0x7d0
        0x1388
        0x2710
    .end array-data
.end method

.method private static request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 559
    invoke-static {p0, p1, p2, p3}, Lcom/supertws/dubokutv/CloudSyncClient;->requestDetailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supertws/dubokutv/CloudSyncClient$RequestResult;

    move-result-object p0

    iget p0, p0, Lcom/supertws/dubokutv/CloudSyncClient$RequestResult;->code:I

    return p0
.end method

.method private static requestDetailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supertws/dubokutv/CloudSyncClient$RequestResult;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 569
    nop

    .line 570
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 572
    :try_start_5
    invoke-static {p0, p1, p2}, Lcom/supertws/dubokutv/CloudSyncClient;->open(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_68

    .line 573
    if-eqz p3, :cond_1f

    .line 574
    const/4 p1, 0x1

    :try_start_c
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 575
    const-string p1, "UTF-8"

    invoke-virtual {p3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 576
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 578
    :cond_1f
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    .line 579
    const/16 p2, 0x190

    if-lt p1, p2, :cond_2c

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p2

    goto :goto_30

    :cond_2c
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    .line 580
    :goto_30
    const-string p3, ""
    :try_end_32
    .catchall {:try_start_c .. :try_end_32} :catchall_66

    .line 581
    if-eqz p2, :cond_41

    .line 582
    :try_start_34
    invoke-static {p2}, Lcom/supertws/dubokutv/CloudSyncClient;->read(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p3
    :try_end_38
    .catchall {:try_start_34 .. :try_end_38} :catchall_3c

    :try_start_38
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    goto :goto_41

    :catchall_3c
    move-exception p1

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    throw p1

    .line 584
    :cond_41
    :goto_41
    const-string p2, "Date"

    const-wide/16 v0, -0x1

    invoke-virtual {p0, p2, v0, v1}, Ljava/net/HttpURLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v1

    .line 585
    const-wide/16 v5, 0x0

    cmp-long p2, v1, v5

    if-lez p2, :cond_5b

    .line 586
    sget-object v0, Lcom/supertws/dubokutv/CloudSyncClient;->appContext:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static/range {v0 .. v6}, Lcom/supertws/dubokutv/FamilyClock;->observeServerTime(Landroid/content/Context;JJJ)V

    .line 587
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->syncLanClock()V

    .line 589
    :cond_5b
    new-instance p2, Lcom/supertws/dubokutv/CloudSyncClient$RequestResult;

    invoke-direct {p2, p1, p3}, Lcom/supertws/dubokutv/CloudSyncClient$RequestResult;-><init>(ILjava/lang/String;)V
    :try_end_60
    .catchall {:try_start_38 .. :try_end_60} :catchall_66

    .line 590
    if-eqz p0, :cond_65

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 589
    :cond_65
    return-object p2

    .line 590
    :catchall_66
    move-exception p1

    goto :goto_6a

    :catchall_68
    move-exception p1

    const/4 p0, 0x0

    :goto_6a
    if-eqz p0, :cond_6f

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6f
    throw p1
.end method

.method private static requireCloudSyncEnabled()V
    .registers 2

    .line 95
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->cloudSyncEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 96
    return-void

    .line 95
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cloud_sync_disabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static safeWorkerErrorBody(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 594
    const-string v0, "{\"error\":\"unknown\"}"

    if-eqz p0, :cond_124

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x80

    if-le v1, v2, :cond_e

    goto/16 :goto_124

    .line 596
    :cond_e
    :try_start_e
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "error"

    const-string v2, ""

    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 597
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_128

    :cond_22
    goto/16 :goto_102

    :sswitch_24
    const-string v1, "invalid_request"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v1, 0x0

    goto/16 :goto_103

    :sswitch_2f
    const-string v1, "invalid_join_code"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/16 v1, 0xa

    goto/16 :goto_103

    :sswitch_3b
    const-string v1, "payload_too_large"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v1, 0x3

    goto/16 :goto_103

    :sswitch_46
    const-string v1, "invalid_snapshot"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v1, 0x2

    goto/16 :goto_103

    :sswitch_51
    const-string v1, "family_read_failed"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/16 v1, 0x12

    goto/16 :goto_103

    :sswitch_5d
    const-string v1, "not_found"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/16 v1, 0x9

    goto/16 :goto_103

    :sswitch_69
    const-string v1, "source_snapshot_unavailable"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/16 v1, 0xd

    goto/16 :goto_103

    :sswitch_75
    const-string v1, "family_conflict"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v1, 0x6

    goto/16 :goto_103

    :sswitch_80
    const-string v1, "internal_error"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/16 v1, 0x8

    goto/16 :goto_103

    :sswitch_8c
    const-string v1, "merge_copy_required"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/16 v1, 0xf

    goto/16 :goto_103

    :sswitch_98
    const-string v1, "unauthorized"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v1, 0x4

    goto :goto_103

    :sswitch_a2
    const-string v1, "invalid_path"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v1, 0x5

    goto :goto_103

    :sswitch_ac
    const-string v1, "invalid_json"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v1, 0x1

    goto :goto_103

    :sswitch_b6
    const-string v1, "invalid_family_order"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/16 v1, 0xb

    goto :goto_103

    :sswitch_c1
    const-string v1, "merge_cleanup_failed"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/16 v1, 0x11

    goto :goto_103

    :sswitch_cc
    const-string v1, "merge_copy_failed"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/16 v1, 0x10

    goto :goto_103

    :sswitch_d7
    const-string v1, "join_code_unavailable"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/16 v1, 0x13

    goto :goto_103

    :sswitch_e2
    const-string v1, "rate_limited"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v1, 0x7

    goto :goto_103

    :sswitch_ec
    const-string v1, "source_changed_recopy_required"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/16 v1, 0xe

    goto :goto_103

    :sswitch_f7
    const-string v1, "duplicate_source"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/16 v1, 0xc

    goto :goto_103

    :goto_102
    const/4 v1, -0x1

    :goto_103
    packed-switch v1, :pswitch_data_17a

    .line 606
    goto :goto_121

    .line 605
    :pswitch_107
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
    :try_end_120
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_120} :catch_122

    return-object p0

    .line 606
    :goto_121
    return-object v0

    .line 608
    :catch_122
    move-exception p0

    return-object v0

    .line 594
    :cond_124
    :goto_124
    const-string p0, "{\"error\":\"unavailable\"}"

    return-object p0

    nop

    :sswitch_data_128
    .sparse-switch
        -0x7e739a31 -> :sswitch_f7
        -0x6b3f85d9 -> :sswitch_ec
        -0x60e696c5 -> :sswitch_e2
        -0x5fc1588d -> :sswitch_d7
        -0x3e20d40 -> :sswitch_cc
        0x6920d1f -> :sswitch_c1
        0x1901cbfb -> :sswitch_b6
        0x1f685630 -> :sswitch_ac
        0x1f6acd6d -> :sswitch_a2
        0x250258f4 -> :sswitch_98
        0x2cbaf562 -> :sswitch_8c
        0x2e6e3a06 -> :sswitch_80
        0x4220924d -> :sswitch_75
        0x5e14e7f9 -> :sswitch_69
        0x604afb16 -> :sswitch_5d
        0x6ebe26ab -> :sswitch_51
        0x70cb5b0c -> :sswitch_46
        0x7c47531f -> :sswitch_3b
        0x7cc5579a -> :sswitch_2f
        0x7e34a447 -> :sswitch_24
    .end sparse-switch

    :pswitch_data_17a
    .packed-switch 0x0
        :pswitch_107
        :pswitch_107
        :pswitch_107
        :pswitch_107
        :pswitch_107
        :pswitch_107
        :pswitch_107
        :pswitch_107
        :pswitch_107
        :pswitch_107
        :pswitch_107
        :pswitch_107
        :pswitch_107
        :pswitch_107
        :pswitch_107
        :pswitch_107
        :pswitch_107
        :pswitch_107
        :pswitch_107
        :pswitch_107
    .end packed-switch
.end method

.method private static scheduleDrainLocked(JZ)V
    .registers 6

    .line 323
    sget-object v0, Lcom/supertws/dubokutv/CloudSyncClient;->drainRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_5

    return-void

    .line 324
    :cond_5
    sput-boolean p2, Lcom/supertws/dubokutv/CloudSyncClient;->scheduledRetryBackoff:Z

    .line 325
    const-wide/16 v1, 0x0

    cmp-long p2, p0, v1

    if-lez p2, :cond_18

    sget-object p2, Lcom/supertws/dubokutv/CloudSyncClient;->QUEUE:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p2, v0, p0, p1, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    sput-object p0, Lcom/supertws/dubokutv/CloudSyncClient;->scheduledDrain:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_23

    .line 327
    :cond_18
    const/4 p0, 0x0

    sput-object p0, Lcom/supertws/dubokutv/CloudSyncClient;->scheduledDrain:Ljava/util/concurrent/ScheduledFuture;

    .line 328
    const/4 p0, 0x0

    sput-boolean p0, Lcom/supertws/dubokutv/CloudSyncClient;->scheduledRetryBackoff:Z

    .line 329
    sget-object p0, Lcom/supertws/dubokutv/CloudSyncClient;->QUEUE:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p0, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 331
    :goto_23
    return-void
.end method

.method static shouldPreemptDrain(ZZ)Z
    .registers 2

    .line 338
    if-eqz p0, :cond_6

    if-nez p1, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private static workerTrustManager()Ljavax/net/ssl/X509TrustManager;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 644
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    .line 645
    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/security/KeyStore;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 646
    invoke-static {v0}, Lcom/supertws/dubokutv/CloudSyncClient;->findTrustManager(Ljavax/net/ssl/TrustManagerFactory;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    .line 648
    sget-object v2, Lcom/supertws/dubokutv/CloudSyncClient;->appContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/supertws/dubokutv/CloudSyncClient;->appContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "isrg_root_x1"

    const-string v5, "raw"

    invoke-virtual {v2, v4, v5, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 649
    if-eqz v2, :cond_6c

    .line 650
    sget-object v3, Lcom/supertws/dubokutv/CloudSyncClient;->appContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 652
    :try_start_33
    const-string v3, "X.509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;
    :try_end_3f
    .catchall {:try_start_33 .. :try_end_3f} :catchall_67

    .line 653
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 655
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .line 656
    invoke-virtual {v2, v1, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 657
    const-string v1, "isrg-root-x1"

    invoke-virtual {v2, v1, v3}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 658
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    .line 659
    invoke-virtual {v1, v2}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 660
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->findTrustManager(Ljavax/net/ssl/TrustManagerFactory;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v1

    .line 661
    new-instance v2, Lcom/supertws/dubokutv/CloudSyncClient$4;

    invoke-direct {v2, v0, v1}, Lcom/supertws/dubokutv/CloudSyncClient$4;-><init>(Ljavax/net/ssl/X509TrustManager;Ljavax/net/ssl/X509TrustManager;)V

    return-object v2

    .line 653
    :catchall_67
    move-exception v0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v0

    .line 649
    :cond_6c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "worker_trust_anchor_missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
