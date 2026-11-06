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

.field private static final TAG:Ljava/lang/String; = "R2Sync"

.field private static volatile appContext:Landroid/content/Context;

.field private static captureImmediate:Z

.field private static capturePending:Z

.field private static captureVersion:J

.field private static drainRunnable:Ljava/lang/Runnable;

.field private static volatile draining:Z

.field private static volatile lastCloudReadAt:J

.field private static volatile lastUploadAt:J

.field private static volatile latest:Lcom/supertws/dubokutv/ProgressSnapshot;

.field private static volatile latestImmediate:Z

.field private static volatile pauseUrgentUntilMs:J

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

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 46
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

.method static synthetic access$1000()J
    .locals 2

    .line 24
    sget-wide v0, Lcom/supertws/dubokutv/CloudSyncClient;->lastUploadAt:J

    return-wide v0
.end method

.method static synthetic access$1002(J)J
    .locals 0

    .line 24
    sput-wide p0, Lcom/supertws/dubokutv/CloudSyncClient;->lastUploadAt:J

    return-wide p0
.end method

.method static synthetic access$1100()Landroid/content/Context;
    .locals 1

    .line 24
    sget-object v0, Lcom/supertws/dubokutv/CloudSyncClient;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200()Landroid/content/SharedPreferences;
    .locals 1

    .line 24
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->dirtyPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300()J
    .locals 2

    .line 24
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->nextBackoff()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1402(I)I
    .locals 0

    .line 24
    sput p0, Lcom/supertws/dubokutv/CloudSyncClient;->retryCount:I

    return p0
.end method

.method static synthetic access$1502(Z)Z
    .locals 0

    .line 24
    sput-boolean p0, Lcom/supertws/dubokutv/CloudSyncClient;->draining:Z

    return p0
.end method

.method static synthetic access$1600(JZ)V
    .locals 0

    .line 24
    invoke-static {p0, p1, p2}, Lcom/supertws/dubokutv/CloudSyncClient;->scheduleDrainLocked(JZ)V

    return-void
.end method

.method static synthetic access$1702(Ljava/lang/Runnable;)Ljava/lang/Runnable;
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

.method static synthetic access$202(Z)Z
    .locals 0

    .line 24
    sput-boolean p0, Lcom/supertws/dubokutv/CloudSyncClient;->captureImmediate:Z

    return p0
.end method

.method static synthetic access$300(Landroid/content/Context;Z)V
    .locals 0

    .line 24
    invoke-static {p0, p1}, Lcom/supertws/dubokutv/CloudSyncClient;->captureCommittedSnapshot(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$402(Z)Z
    .locals 0

    .line 24
    sput-boolean p0, Lcom/supertws/dubokutv/CloudSyncClient;->capturePending:Z

    return p0
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

.method static synthetic access$700()Lcom/supertws/dubokutv/ProgressSnapshot;
    .locals 1

    .line 24
    sget-object v0, Lcom/supertws/dubokutv/CloudSyncClient;->retrySnapshot:Lcom/supertws/dubokutv/ProgressSnapshot;

    return-object v0
.end method

.method static synthetic access$702(Lcom/supertws/dubokutv/ProgressSnapshot;)Lcom/supertws/dubokutv/ProgressSnapshot;
    .locals 0

    .line 24
    sput-object p0, Lcom/supertws/dubokutv/CloudSyncClient;->retrySnapshot:Lcom/supertws/dubokutv/ProgressSnapshot;

    return-object p0
.end method

.method static synthetic access$800()Lcom/supertws/dubokutv/ProgressSnapshot;
    .locals 1

    .line 24
    sget-object v0, Lcom/supertws/dubokutv/CloudSyncClient;->latest:Lcom/supertws/dubokutv/ProgressSnapshot;

    return-object v0
.end method

.method static synthetic access$802(Lcom/supertws/dubokutv/ProgressSnapshot;)Lcom/supertws/dubokutv/ProgressSnapshot;
    .locals 0

    .line 24
    sput-object p0, Lcom/supertws/dubokutv/CloudSyncClient;->latest:Lcom/supertws/dubokutv/ProgressSnapshot;

    return-object p0
.end method

.method static synthetic access$900()Z
    .locals 1

    .line 24
    sget-boolean v0, Lcom/supertws/dubokutv/CloudSyncClient;->latestImmediate:Z

    return v0
.end method

.method static synthetic access$902(Z)Z
    .locals 0

    .line 24
    sput-boolean p0, Lcom/supertws/dubokutv/CloudSyncClient;->latestImmediate:Z

    return p0
.end method

.method private static boundedText(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 123
    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 124
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x200

    if-gt v0, v1, :cond_1

    return-object p0

    .line 125
    :cond_1
    nop

    .line 126
    const/16 v0, 0x1ff

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v1, 0x1ff

    .line 127
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static captureCommittedSnapshot(Landroid/content/Context;Z)V
    .locals 13

    .line 97
    nop

    .line 99
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/supertws/dubokutv/FamilyIdentity;->ensure()V

    .line 100
    const-string v2, "record_database"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v0}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :try_start_1
    const-string v4, "SELECT id,name,episode,progressInMillis,durationInMillis,createdAt,modifiedAt,videoPageUrl,detailPageUrl,posterUrl FROM records ORDER BY modifiedAt DESC LIMIT 20"

    invoke-virtual {v2, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 102
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 103
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    const/4 v10, 0x1

    if-eqz v4, :cond_2

    .line 104
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/supertws/dubokutv/CloudSyncClient;->boundedText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 105
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/supertws/dubokutv/CloudSyncClient;->boundedText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 106
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    .line 107
    :cond_1
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 108
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

    .line 109
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

    .line 110
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

    .line 111
    const-string v4, "videoPageUrl"

    const/4 v5, 0x7

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/supertws/dubokutv/ProgressSnapshot;->normalizeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    const-string v4, "detailPageUrl"

    const/16 v5, 0x8

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/supertws/dubokutv/ProgressSnapshot;->normalizeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    const-string v4, "posterUrl"

    const/16 v5, 0x9

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/supertws/dubokutv/ProgressSnapshot;->normalizeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    invoke-virtual {v9, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 115
    goto/16 :goto_0

    .line 116
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

    .line 117
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

    .line 119
    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    if-eqz v2, :cond_8

    goto :goto_3

    .line 118
    :catch_0
    move-exception p0

    goto :goto_2

    .line 119
    :catchall_0
    move-exception p0

    move-object v2, v0

    goto :goto_4

    .line 118
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

    .line 119
    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_7
    if-eqz v2, :cond_8

    :goto_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 120
    :cond_8
    return-void

    .line 119
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

.method private static dirtyPrefs()Landroid/content/SharedPreferences;
    .locals 3

    .line 280
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

    .line 412
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static enqueueUpload(Landroid/content/Context;Lcom/supertws/dubokutv/ProgressSnapshot;Z)V
    .locals 3

    .line 132
    invoke-static {p0}, Lcom/supertws/dubokutv/CloudSyncClient;->initialize(Landroid/content/Context;)V

    .line 133
    if-nez p1, :cond_0

    return-void

    .line 134
    :cond_0
    sget-object p0, Lcom/supertws/dubokutv/CloudSyncClient;->LOCK:Ljava/lang/Object;

    monitor-enter p0

    .line 135
    :try_start_0
    sput-object p1, Lcom/supertws/dubokutv/CloudSyncClient;->latest:Lcom/supertws/dubokutv/ProgressSnapshot;

    .line 136
    sget-boolean p1, Lcom/supertws/dubokutv/CloudSyncClient;->latestImmediate:Z

    or-int/2addr p1, p2

    sput-boolean p1, Lcom/supertws/dubokutv/CloudSyncClient;->latestImmediate:Z

    .line 137
    sget-boolean p1, Lcom/supertws/dubokutv/CloudSyncClient;->draining:Z

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 138
    sget-boolean p1, Lcom/supertws/dubokutv/CloudSyncClient;->scheduledRetryBackoff:Z

    invoke-static {p2, p1}, Lcom/supertws/dubokutv/CloudSyncClient;->shouldPreemptDrain(ZZ)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/supertws/dubokutv/CloudSyncClient;->scheduledDrain:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p1, :cond_1

    .line 139
    invoke-interface {p1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 140
    const/4 p1, 0x0

    sput-object p1, Lcom/supertws/dubokutv/CloudSyncClient;->scheduledDrain:Ljava/util/concurrent/ScheduledFuture;

    .line 141
    invoke-static {v0, v1, v2}, Lcom/supertws/dubokutv/CloudSyncClient;->scheduleDrainLocked(JZ)V

    .line 143
    :cond_1
    monitor-exit p0

    return-void

    .line 145
    :cond_2
    const/4 p1, 0x1

    sput-boolean p1, Lcom/supertws/dubokutv/CloudSyncClient;->draining:Z

    .line 146
    new-instance p1, Lcom/supertws/dubokutv/CloudSyncClient$2;

    invoke-direct {p1}, Lcom/supertws/dubokutv/CloudSyncClient$2;-><init>()V

    sput-object p1, Lcom/supertws/dubokutv/CloudSyncClient;->drainRunnable:Ljava/lang/Runnable;

    .line 223
    invoke-static {v0, v1, v2}, Lcom/supertws/dubokutv/CloudSyncClient;->scheduleDrainLocked(JZ)V

    .line 224
    monitor-exit p0

    .line 225
    return-void

    .line 224
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static fetchKnownPeers(Landroid/content/Context;)V
    .locals 7

    .line 254
    invoke-static {p0}, Lcom/supertws/dubokutv/CloudSyncClient;->initialize(Landroid/content/Context;)V

    .line 255
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 256
    sget-object p0, Lcom/supertws/dubokutv/CloudSyncClient;->LOCK:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-wide v2, Lcom/supertws/dubokutv/CloudSyncClient;->lastCloudReadAt:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7d0

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    sput-wide v0, Lcom/supertws/dubokutv/CloudSyncClient;->lastCloudReadAt:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    sget-object p0, Lcom/supertws/dubokutv/CloudSyncClient;->appContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/supertws/dubokutv/FamilyIdentity;->ensure()V

    .line 258
    sget-object v0, Lcom/supertws/dubokutv/CloudSyncClient;->QUEUE:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/supertws/dubokutv/CloudSyncClient$3;

    invoke-direct {v1, p0}, Lcom/supertws/dubokutv/CloudSyncClient$3;-><init>(Lcom/supertws/dubokutv/FamilyIdentity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 277
    return-void

    .line 256
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static fitPayload(Lorg/json/JSONObject;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 329
    invoke-static {p0}, Lcom/supertws/dubokutv/CloudSyncClient;->payloadBytes(Lorg/json/JSONObject;)I

    move-result v0

    const/4 v1, 0x1

    const/high16 v2, 0x10000

    if-gt v0, v2, :cond_0

    return v1

    .line 330
    :cond_0
    const-string v0, "records"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 331
    const/4 v3, 0x0

    if-nez v0, :cond_1

    return v3

    .line 332
    :cond_1
    const-string v4, "detailPageUrl"

    const-string v5, "videoPageUrl"

    const-string v6, "posterUrl"

    filled-new-array {v6, v4, v5}, [Ljava/lang/String;

    move-result-object v4

    .line 333
    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x3

    if-ge v5, v6, :cond_7

    aget-object v6, v4, v5

    .line 334
    :goto_1
    invoke-static {p0}, Lcom/supertws/dubokutv/CloudSyncClient;->payloadBytes(Lorg/json/JSONObject;)I

    move-result v7

    if-le v7, v2, :cond_6

    .line 335
    nop

    .line 336
    nop

    .line 337
    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v10

    const-string v11, ""

    if-ge v8, v10, :cond_4

    .line 338
    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 339
    if-nez v10, :cond_2

    goto :goto_3

    .line 340
    :cond_2
    invoke-virtual {v10, v6, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 341
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-le v11, v9, :cond_3

    .line 342
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v9

    .line 343
    move v7, v8

    .line 337
    :cond_3
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 346
    :cond_4
    if-gez v7, :cond_5

    goto :goto_4

    .line 347
    :cond_5
    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7, v6, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 348
    goto :goto_1

    .line 333
    :cond_6
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 350
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

    .line 303
    nop

    .line 305
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

    .line 306
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0

    .line 307
    const/16 p1, 0xc8

    if-ne p0, p1, :cond_1

    .line 308
    new-instance p0, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/supertws/dubokutv/CloudSyncClient;->read(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 308
    :cond_0
    return-object p0

    .line 307
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTTP "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 309
    :catchall_0
    move-exception p0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    throw p0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 0

    .line 49
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/supertws/dubokutv/CloudSyncClient;->appContext:Landroid/content/Context;

    .line 50
    :cond_0
    return-void
.end method

.method private static nextBackoff()J
    .locals 3

    .line 248
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    .line 249
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

    .line 59
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    sput-wide v0, Lcom/supertws/dubokutv/CloudSyncClient;->pauseUrgentUntilMs:J

    .line 60
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/supertws/dubokutv/CloudSyncClient;->onCommittedSave(Z)V

    .line 61
    return-void
.end method

.method public static onCommittedSave()V
    .locals 1

    .line 54
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/supertws/dubokutv/CloudSyncClient;->onCommittedSave(Z)V

    .line 55
    return-void
.end method

.method private static onCommittedSave(Z)V
    .locals 8

    .line 64
    sget-object v0, Lcom/supertws/dubokutv/CloudSyncClient;->appContext:Landroid/content/Context;

    .line 65
    if-nez v0, :cond_0

    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 66
    :cond_0
    if-nez v0, :cond_1

    return-void

    .line 67
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 68
    sget-object v1, Lcom/supertws/dubokutv/CloudSyncClient;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 69
    :try_start_0
    sget-wide v2, Lcom/supertws/dubokutv/CloudSyncClient;->captureVersion:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Lcom/supertws/dubokutv/CloudSyncClient;->captureVersion:J

    .line 70
    sget-boolean v2, Lcom/supertws/dubokutv/CloudSyncClient;->captureImmediate:Z

    const/4 v3, 0x1

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

    .line 71
    sget-boolean p0, Lcom/supertws/dubokutv/CloudSyncClient;->capturePending:Z

    if-eqz p0, :cond_4

    monitor-exit v1

    return-void

    .line 72
    :cond_4
    sput-boolean v3, Lcom/supertws/dubokutv/CloudSyncClient;->capturePending:Z

    .line 73
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    sget-object p0, Lcom/supertws/dubokutv/CloudSyncClient;->QUEUE:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/supertws/dubokutv/CloudSyncClient$1;

    invoke-direct {v1, v0}, Lcom/supertws/dubokutv/CloudSyncClient$1;-><init>(Landroid/content/Context;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 94
    return-void

    .line 73
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

    .line 403
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

    .line 404
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 405
    invoke-virtual {p1, p0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v0, 0xfa0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v0, 0x1388

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 406
    const-string v0, "Accept"

    const-string v1, "application/json"

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
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

    .line 408
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

    .line 409
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

    .line 354
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

    .line 240
    if-eqz p2, :cond_0

    const-wide/16 p0, 0x0

    :cond_0
    return-wide p0
.end method

.method public static put(Lcom/supertws/dubokutv/ProgressSnapshot;Ljava/lang/String;)Z
    .locals 6

    .line 314
    const-string v0, "R2Sync"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/supertws/dubokutv/ProgressSnapshot;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    .line 315
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->fitPayload(Lorg/json/JSONObject;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 316
    const-string p0, "Snapshot upload HTTP 413 body={\"error\":\"payload_too_large\"}"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    return v1

    .line 319
    :cond_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 320
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

    .line 321
    iget p1, p0, Lcom/supertws/dubokutv/CloudSyncClient$RequestResult;->code:I

    const/16 v2, 0xcc

    if-ne p1, v2, :cond_1

    const/4 p0, 0x1

    return p0

    .line 322
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

    .line 323
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

    .line 324
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

    .line 414
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 415
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 416
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    const-string p0, "UTF-8"

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static registerFamily(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 16

    .line 284
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

    .line 286
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

    .line 287
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v1, v0, v7, v6}, Lcom/supertws/dubokutv/CloudSyncClient;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 288
    const/16 v8, 0xc8

    const/4 v9, 0x1

    if-eq v6, v8, :cond_8

    const/16 v10, 0xc9

    if-ne v6, v10, :cond_1

    goto/16 :goto_3

    .line 289
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

    .line 290
    const/4 v5, 0x4

    new-array v6, v5, [J

    fill-array-data v6, :array_0

    move/from16 v12, p0

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v5, :cond_4

    aget-wide v14, v6, v13

    .line 291
    invoke-static {v14, v15}, Landroid/os/SystemClock;->sleep(J)V

    .line 292
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v0, v7, v12}, Lcom/supertws/dubokutv/CloudSyncClient;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 293
    if-eq v12, v8, :cond_3

    if-ne v12, v10, :cond_2

    goto :goto_1

    .line 290
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 293
    :cond_3
    :goto_1
    return v9

    .line 290
    :cond_4
    move v6, v12

    goto :goto_2

    .line 289
    :cond_5
    move/from16 p0, v6

    .line 296
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

    .line 297
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

    .line 298
    goto :goto_4

    .line 288
    :cond_8
    :goto_3
    return v9

    .line 298
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

    .line 299
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

    .line 358
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

    .line 368
    nop

    .line 370
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/supertws/dubokutv/CloudSyncClient;->open(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 371
    if-eqz p3, :cond_0

    .line 372
    const/4 p1, 0x1

    :try_start_1
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 373
    const-string p1, "UTF-8"

    invoke-virtual {p3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 374
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 376
    :cond_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    .line 377
    const-string p2, ""

    .line 378
    const/16 p3, 0x190

    if-lt p1, p3, :cond_1

    .line 379
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 380
    if-eqz p3, :cond_1

    .line 381
    :try_start_2
    invoke-static {p3}, Lcom/supertws/dubokutv/CloudSyncClient;->read(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p3}, Ljava/io/InputStream;->close()V

    throw p1

    .line 384
    :cond_1
    :goto_0
    new-instance p3, Lcom/supertws/dubokutv/CloudSyncClient$RequestResult;

    invoke-direct {p3, p1, p2}, Lcom/supertws/dubokutv/CloudSyncClient$RequestResult;-><init>(ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 385
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 384
    :cond_2
    return-object p3

    .line 385
    :catchall_1
    move-exception p1

    goto :goto_1

    :catchall_2
    move-exception p1

    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    throw p1
.end method

.method private static safeWorkerErrorBody(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 389
    const-string v0, "{\"error\":\"unknown\"}"

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x80

    if-le v1, v2, :cond_0

    goto/16 :goto_3

    .line 391
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "error"

    const-string v2, ""

    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 392
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

    goto :goto_1

    :sswitch_1
    const-string v1, "payload_too_large"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_2
    const-string v1, "invalid_snapshot"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v1, "not_found"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x9

    goto :goto_1

    :sswitch_4
    const-string v1, "family_conflict"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_5
    const-string v1, "internal_error"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    goto :goto_1

    :sswitch_6
    const-string v1, "unauthorized"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_7
    const-string v1, "invalid_path"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_8
    const-string v1, "invalid_json"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_9
    const-string v1, "rate_limited"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x7

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 397
    goto :goto_2

    .line 396
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

    .line 397
    :goto_2
    return-object v0

    .line 399
    :catch_0
    move-exception p0

    return-object v0

    .line 389
    :cond_2
    :goto_3
    const-string p0, "{\"error\":\"unavailable\"}"

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x60e696c5 -> :sswitch_9
        0x1f685630 -> :sswitch_8
        0x1f6acd6d -> :sswitch_7
        0x250258f4 -> :sswitch_6
        0x2e6e3a06 -> :sswitch_5
        0x4220924d -> :sswitch_4
        0x604afb16 -> :sswitch_3
        0x70cb5b0c -> :sswitch_2
        0x7c47531f -> :sswitch_1
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
    .end packed-switch
.end method

.method private static scheduleDrainLocked(JZ)V
    .locals 3

    .line 229
    sget-object v0, Lcom/supertws/dubokutv/CloudSyncClient;->drainRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    return-void

    .line 230
    :cond_0
    sput-boolean p2, Lcom/supertws/dubokutv/CloudSyncClient;->scheduledRetryBackoff:Z

    .line 231
    const-wide/16 v1, 0x0

    cmp-long p2, p0, v1

    if-lez p2, :cond_1

    sget-object p2, Lcom/supertws/dubokutv/CloudSyncClient;->QUEUE:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p2, v0, p0, p1, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    sput-object p0, Lcom/supertws/dubokutv/CloudSyncClient;->scheduledDrain:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 233
    :cond_1
    const/4 p0, 0x0

    sput-object p0, Lcom/supertws/dubokutv/CloudSyncClient;->scheduledDrain:Ljava/util/concurrent/ScheduledFuture;

    .line 234
    const/4 p0, 0x0

    sput-boolean p0, Lcom/supertws/dubokutv/CloudSyncClient;->scheduledRetryBackoff:Z

    .line 235
    sget-object p0, Lcom/supertws/dubokutv/CloudSyncClient;->QUEUE:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p0, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 237
    :goto_0
    return-void
.end method

.method static shouldPreemptDrain(ZZ)Z
    .locals 0

    .line 244
    if-eqz p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
