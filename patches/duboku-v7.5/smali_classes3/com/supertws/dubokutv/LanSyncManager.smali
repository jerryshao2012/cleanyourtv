.class public Lcom/supertws/dubokutv/LanSyncManager;
.super Ljava/lang/Object;
.source "LanSyncManager.java"


# static fields
.field private static final ACK_TIMEOUT_MS:J = 0x2bcL

.field private static final EP_PATTERN:Ljava/util/regex/Pattern;

.field private static final PORT:I = 0x2694

.field private static final TAG:Ljava/lang/String; = "LanSyncManager"

.field public static volatile sActiveActivity:Landroid/app/Activity;

.field public static volatile sActiveExoPlayer:Ljava/lang/Object;

.field public static volatile sActiveRefreshCallback:Ljava/lang/Object;

.field public static volatile sActiveVideoAddress:Ljava/lang/Object;

.field private static final sClockProbes:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sCurrentDeviceId:Ljava/lang/String;

.field private static final sHandoff:Lcom/supertws/dubokutv/HandoffProgress;

.field private static volatile sInstance:Lcom/supertws/dubokutv/LanSyncManager;

.field private static volatile sLastClockProbeAt:J

.field private static volatile sLastRequestSyncTime:J

.field private static volatile sLastSentEpisode:Ljava/lang/String;

.field private static volatile sLastSentName:Ljava/lang/String;

.field private static volatile sLastSentProgressMs:J

.field private static sNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private static sPendingHandoff:Lcom/supertws/dubokutv/HandoffProgress$Record;

.field private static sPendingHandoffName:Ljava/lang/String;

.field private static final sPendingProgress:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;>;"
        }
    .end annotation
.end field

.field public static sRoomDb:Ljava/lang/Object;

.field private static final sSyncQueue:Ljava/util/concurrent/ScheduledExecutorService;

.field public static final sSyncVersionFlow:Lkotlinx/coroutines/flow/r2;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private volatile mReceiverRunning:Z

.field private volatile mReceiverSocket:Ljava/net/DatagramSocket;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    if-eqz v1, :cond_18

    sget-object v1, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    goto :goto_1a

    :cond_18
    const-string v1, "tv"

    :goto_1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sCurrentDeviceId:Ljava/lang/String;

    .line 42
    const-string v0, "(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/supertws/dubokutv/LanSyncManager;->EP_PATTERN:Ljava/util/regex/Pattern;

    .line 44
    new-instance v0, Lcom/supertws/dubokutv/HandoffProgress;

    invoke-direct {v0}, Lcom/supertws/dubokutv/HandoffProgress;-><init>()V

    sput-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sHandoff:Lcom/supertws/dubokutv/HandoffProgress;

    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sLastSentName:Ljava/lang/String;

    .line 48
    sput-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sLastSentEpisode:Ljava/lang/String;

    .line 49
    const-wide/16 v1, -0x1

    sput-wide v1, Lcom/supertws/dubokutv/LanSyncManager;->sLastSentProgressMs:J

    .line 50
    const-wide/16 v1, 0x0

    sput-wide v1, Lcom/supertws/dubokutv/LanSyncManager;->sLastRequestSyncTime:J

    .line 52
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    sput-object v1, Lcom/supertws/dubokutv/LanSyncManager;->sSyncQueue:Ljava/util/concurrent/ScheduledExecutorService;

    .line 53
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/supertws/dubokutv/LanSyncManager;->sPendingProgress:Ljava/util/concurrent/ConcurrentHashMap;

    .line 54
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/supertws/dubokutv/LanSyncManager;->sClockProbes:Ljava/util/concurrent/ConcurrentHashMap;

    .line 59
    sput-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sActiveExoPlayer:Ljava/lang/Object;

    .line 60
    sput-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sActiveActivity:Landroid/app/Activity;

    .line 61
    sput-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sActiveVideoAddress:Ljava/lang/Object;

    .line 62
    sput-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sActiveRefreshCallback:Ljava/lang/Object;

    .line 969
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/flow/j;->b(Ljava/lang/Object;)Lkotlinx/coroutines/flow/r2;

    move-result-object v1

    sput-object v1, Lcom/supertws/dubokutv/LanSyncManager;->sSyncVersionFlow:Lkotlinx/coroutines/flow/r2;

    .line 971
    sput-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sRoomDb:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/supertws/dubokutv/LanSyncManager;->mReceiverRunning:Z

    .line 65
    iput-object p1, p0, Lcom/supertws/dubokutv/LanSyncManager;->mContext:Landroid/content/Context;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/supertws/dubokutv/LanSyncManager;)Ljava/net/DatagramSocket;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/supertws/dubokutv/LanSyncManager;->mReceiverSocket:Ljava/net/DatagramSocket;

    return-object p0
.end method

.method static synthetic access$002(Lcom/supertws/dubokutv/LanSyncManager;Ljava/net/DatagramSocket;)Ljava/net/DatagramSocket;
    .registers 2

    .line 34
    iput-object p1, p0, Lcom/supertws/dubokutv/LanSyncManager;->mReceiverSocket:Ljava/net/DatagramSocket;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 34
    sget-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sCurrentDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .registers 1

    .line 34
    sget-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sLastSentEpisode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 34
    sput-object p0, Lcom/supertws/dubokutv/LanSyncManager;->sLastSentEpisode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100()J
    .registers 2

    .line 34
    sget-wide v0, Lcom/supertws/dubokutv/LanSyncManager;->sLastSentProgressMs:J

    return-wide v0
.end method

.method static synthetic access$1102(J)J
    .registers 2

    .line 34
    sput-wide p0, Lcom/supertws/dubokutv/LanSyncManager;->sLastSentProgressMs:J

    return-wide p0
.end method

.method static synthetic access$1200()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 34
    sget-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sPendingProgress:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$1300()Ljava/util/concurrent/ScheduledExecutorService;
    .registers 1

    .line 34
    sget-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sSyncQueue:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$1400(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    .line 34
    invoke-static {p0, p1}, Lcom/supertws/dubokutv/LanSyncManager;->sendUdpPacketResult(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Landroid/content/Context;)Z
    .registers 1

    .line 34
    invoke-static {p0}, Lcom/supertws/dubokutv/LanSyncManager;->currentLanEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/supertws/dubokutv/LanSyncManager;)Z
    .registers 1

    .line 34
    iget-boolean p0, p0, Lcom/supertws/dubokutv/LanSyncManager;->mReceiverRunning:Z

    return p0
.end method

.method static synthetic access$202(Lcom/supertws/dubokutv/LanSyncManager;Z)Z
    .registers 2

    .line 34
    iput-boolean p1, p0, Lcom/supertws/dubokutv/LanSyncManager;->mReceiverRunning:Z

    return p1
.end method

.method static synthetic access$300(Lcom/supertws/dubokutv/LanSyncManager;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/supertws/dubokutv/LanSyncManager;->handleIncomingJson(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400()Z
    .registers 1

    .line 34
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->isLanSyncEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/supertws/dubokutv/LanSyncManager;)Landroid/content/Context;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/supertws/dubokutv/LanSyncManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 34
    invoke-static {p0, p1, p2, p3}, Lcom/supertws/dubokutv/LanSyncManager;->sendProgressAck(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700()Lcom/supertws/dubokutv/HandoffProgress;
    .registers 1

    .line 34
    sget-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sHandoff:Lcom/supertws/dubokutv/HandoffProgress;

    return-object v0
.end method

.method static synthetic access$800(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    .line 34
    invoke-static {p0, p1}, Lcom/supertws/dubokutv/LanSyncManager;->sendUdpPacket(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900()Ljava/lang/String;
    .registers 1

    .line 34
    sget-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sLastSentName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 34
    sput-object p0, Lcom/supertws/dubokutv/LanSyncManager;->sLastSentName:Ljava/lang/String;

    return-object p0
.end method

.method public static applyPendingHandoff(Ljava/lang/Object;)V
    .registers 5

    .line 682
    :try_start_0
    sget-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sPendingHandoff:Lcom/supertws/dubokutv/HandoffProgress$Record;

    .line 683
    if-eqz v0, :cond_5e

    sget-object v1, Lcom/supertws/dubokutv/LanSyncManager;->sActiveVideoAddress:Ljava/lang/Object;

    if-nez v1, :cond_9

    goto :goto_5e

    .line 684
    :cond_9
    sget-object v1, Lcom/supertws/dubokutv/LanSyncManager;->sActiveVideoAddress:Ljava/lang/Object;

    check-cast v1, Lqa/f0;

    .line 685
    iget-object v2, v0, Lcom/supertws/dubokutv/HandoffProgress$Record;->episode:Ljava/lang/String;

    iget-object v3, v1, Lqa/f0;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    sget-object v2, Lcom/supertws/dubokutv/LanSyncManager;->sPendingHandoffName:Ljava/lang/String;

    iget-object v1, v1, Lqa/f0;->b:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    goto :goto_5d

    .line 686
    :cond_22
    check-cast p0, Landroidx/compose/foundation/layout/s0;

    iget-wide v1, v0, Lcom/supertws/dubokutv/HandoffProgress$Record;->position:J

    const/4 v3, 0x5

    invoke-virtual {p0, v3, v1, v2}, Landroidx/compose/foundation/layout/s0;->s(IJ)V

    .line 687
    const/4 p0, 0x0

    sput-object p0, Lcom/supertws/dubokutv/LanSyncManager;->sPendingHandoff:Lcom/supertws/dubokutv/HandoffProgress$Record;

    .line 688
    sput-object p0, Lcom/supertws/dubokutv/LanSyncManager;->sPendingHandoffName:Ljava/lang/String;

    .line 689
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5df2\u540c\u6b65\u5230 "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object v1, v0, Lcom/supertws/dubokutv/HandoffProgress$Record;->episode:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-wide v0, v0, Lcom/supertws/dubokutv/HandoffProgress$Record;->position:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\u79d2"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/supertws/dubokutv/LanSyncManager;->showToast(Ljava/lang/String;)V
    :try_end_5c
    .catchall {:try_start_0 .. :try_end_5c} :catchall_5f

    .line 692
    goto :goto_7c

    .line 685
    :cond_5d
    :goto_5d
    return-void

    .line 683
    :cond_5e
    :goto_5e
    return-void

    .line 690
    :catchall_5f
    move-exception p0

    .line 691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyPendingHandoff error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LanSyncManager"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 693
    :goto_7c
    return-void
.end method

.method public static broadcastProgress(Ljava/lang/Object;)V
    .registers 3

    .line 540
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/supertws/dubokutv/LanSyncManager;->publishPlaybackProgress(Ljava/lang/Object;ZLcom/supertws/dubokutv/SyncVersion;)V

    .line 541
    return-void
.end method

.method public static bumpSyncVersion()V
    .registers 8

    .line 974
    const-string v0, "b"

    sget-object v1, Lcom/supertws/dubokutv/LanSyncManager;->sRoomDb:Ljava/lang/Object;

    const/4 v2, 0x1

    const-string v3, "LanSyncManager"

    if-eqz v1, :cond_b4

    .line 977
    :try_start_9
    sget-object v1, Lcom/supertws/dubokutv/LanSyncManager;->sRoomDb:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "g"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 978
    sget-object v4, Lcom/supertws/dubokutv/LanSyncManager;->sRoomDb:Ljava/lang/Object;

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 979
    if-eqz v1, :cond_98

    .line 980
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v4, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 981
    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    const-string v4, "Triggered Room invalidationTracker.refreshVersionsSync()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_9 .. :try_end_36} :catchall_99

    .line 987
    :try_start_36
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 988
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 989
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 990
    if-eqz v1, :cond_7c

    .line 991
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v6, "i"

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 992
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 993
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 994
    if-eqz v1, :cond_7c

    .line 995
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    new-array v6, v2, [Ljava/lang/Class;

    const-class v7, Ljava/util/Set;

    aput-object v7, v6, v5

    invoke-virtual {v4, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 996
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v4, v6, v5

    invoke-virtual {v0, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    const-string v0, "Triggered ObservedTableVersions.b for table 0 (records)"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7c
    .catchall {:try_start_36 .. :try_end_7c} :catchall_7d

    .line 1002
    :cond_7c
    goto :goto_98

    .line 1000
    :catchall_7d
    move-exception v0

    .line 1001
    :try_start_7e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to update ObservedTableVersions: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_98
    .catchall {:try_start_7e .. :try_end_98} :catchall_99

    .line 1006
    :cond_98
    :goto_98
    goto :goto_b4

    .line 1004
    :catchall_99
    move-exception v0

    .line 1005
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to refresh Room tracker: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    :cond_b4
    :goto_b4
    sget-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sSyncVersionFlow:Lkotlinx/coroutines/flow/r2;

    if-eqz v0, :cond_e7

    .line 1010
    :try_start_b8
    sget-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sSyncVersionFlow:Lkotlinx/coroutines/flow/r2;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v2

    .line 1011
    sget-object v1, Lcom/supertws/dubokutv/LanSyncManager;->sSyncVersionFlow:Lkotlinx/coroutines/flow/r2;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/r2;->j(Ljava/lang/Object;)V

    .line 1012
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bumpSyncVersion to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e4
    .catchall {:try_start_b8 .. :try_end_e4} :catchall_e5

    goto :goto_e6

    .line 1013
    :catchall_e5
    move-exception v0

    :goto_e6
    nop

    .line 1015
    :cond_e7
    return-void
.end method

.method public static checkSyncOnPlay(Ljava/lang/Object;)Z
    .registers 8

    .line 643
    const/4 v0, 0x0

    if-eqz p0, :cond_c9

    :try_start_3
    sget-object v1, Lcom/supertws/dubokutv/LanSyncManager;->sActiveVideoAddress:Ljava/lang/Object;

    if-nez v1, :cond_9

    goto/16 :goto_c9

    .line 644
    :cond_9
    sget-object v1, Lcom/supertws/dubokutv/LanSyncManager;->sActiveVideoAddress:Ljava/lang/Object;

    check-cast v1, Lqa/f0;

    .line 645
    sget-object v2, Lcom/supertws/dubokutv/PlaybackSaveGuard;->INSTANCE:Lcom/supertws/dubokutv/PlaybackSaveGuard;

    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/supertws/dubokutv/PlaybackSaveGuard;->initialize(Landroid/content/Context;)V

    .line 646
    sget-object v2, Lcom/supertws/dubokutv/PlaybackSaveGuard;->INSTANCE:Lcom/supertws/dubokutv/PlaybackSaveGuard;

    iget-object v3, v1, Lqa/f0;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/supertws/dubokutv/PlaybackSaveGuard;->onUserPlay(Ljava/lang/String;)V

    .line 647
    check-cast p0, Landroidx/media3/exoplayer/h0;

    .line 648
    sget-object v2, Lcom/supertws/dubokutv/LanSyncManager;->sHandoff:Lcom/supertws/dubokutv/HandoffProgress;

    iget-object v3, v1, Lqa/f0;->b:Ljava/lang/String;

    iget-object v4, v1, Lqa/f0;->c:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/h0;->M()J

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/supertws/dubokutv/HandoffProgress;->select(Ljava/lang/String;Ljava/lang/String;J)Lcom/supertws/dubokutv/HandoffProgress$Record;

    move-result-object v2

    .line 649
    if-nez v2, :cond_30

    return v0

    .line 650
    :cond_30
    iget-object v3, v2, Lcom/supertws/dubokutv/HandoffProgress$Record;->episode:Ljava/lang/String;

    iget-object v4, v1, Lqa/f0;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 651
    iget-wide v3, v2, Lcom/supertws/dubokutv/HandoffProgress$Record;->position:J

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v3, v4}, Landroidx/media3/exoplayer/h0;->s(IJ)V

    .line 652
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5df2\u540c\u6b65\u5230 "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-wide v1, v2, Lcom/supertws/dubokutv/HandoffProgress$Record;->position:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\u79d2"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/supertws/dubokutv/LanSyncManager;->showToast(Ljava/lang/String;)V

    .line 653
    return v0

    .line 655
    :cond_62
    nop

    .line 656
    iget-object p0, v1, Lqa/f0;->n:Ljava/util/List;

    .line 657
    const/4 v3, 0x0

    if-eqz p0, :cond_86

    .line 658
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_86

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 659
    check-cast v4, Lqa/s;

    .line 660
    iget-object v5, v2, Lcom/supertws/dubokutv/HandoffProgress$Record;->episode:Ljava/lang/String;

    iget-object v6, v4, Lqa/s;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_85

    iget-object p0, v4, Lqa/s;->a:Ljava/lang/String;

    goto :goto_87

    .line 661
    :cond_85
    goto :goto_6c

    .line 663
    :cond_86
    move-object p0, v3

    :goto_87
    sget-object v4, Lcom/supertws/dubokutv/LanSyncManager;->sActiveRefreshCallback:Ljava/lang/Object;

    if-eqz v4, :cond_aa

    if-eqz p0, :cond_aa

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_94

    goto :goto_aa

    .line 664
    :cond_94
    sput-object v2, Lcom/supertws/dubokutv/LanSyncManager;->sPendingHandoff:Lcom/supertws/dubokutv/HandoffProgress$Record;

    .line 665
    iget-object v1, v1, Lqa/f0;->b:Ljava/lang/String;

    sput-object v1, Lcom/supertws/dubokutv/LanSyncManager;->sPendingHandoffName:Ljava/lang/String;
    :try_end_9a
    .catchall {:try_start_3 .. :try_end_9a} :catchall_ab

    .line 667
    :try_start_9a
    sget-object v1, Lcom/supertws/dubokutv/LanSyncManager;->sActiveRefreshCallback:Ljava/lang/Object;

    check-cast v1, Lrb/k;

    invoke-interface {v1, p0}, Lrb/k;->invoke(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_a1
    .catchall {:try_start_9a .. :try_end_a1} :catchall_a4

    .line 672
    nop

    .line 673
    const/4 p0, 0x1

    return p0

    .line 668
    :catchall_a4
    move-exception p0

    .line 669
    :try_start_a5
    sput-object v3, Lcom/supertws/dubokutv/LanSyncManager;->sPendingHandoff:Lcom/supertws/dubokutv/HandoffProgress$Record;

    .line 670
    sput-object v3, Lcom/supertws/dubokutv/LanSyncManager;->sPendingHandoffName:Ljava/lang/String;

    .line 671
    throw p0
    :try_end_aa
    .catchall {:try_start_a5 .. :try_end_aa} :catchall_ab

    .line 663
    :cond_aa
    :goto_aa
    return v0

    .line 674
    :catchall_ab
    move-exception p0

    .line 675
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkSyncOnPlay error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LanSyncManager"

    invoke-static {v2, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 676
    return v0

    .line 643
    :cond_c9
    :goto_c9
    return v0
.end method

.method private static currentLanEnabled(Landroid/content/Context;)Z
    .registers 1

    .line 817
    invoke-static {p0}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/supertws/dubokutv/FamilyIdentity;->isLanSyncEnabled()Z

    move-result p0

    return p0
.end method

.method private static flushActivePlayback()V
    .registers 28

    .line 848
    sget-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sActiveExoPlayer:Ljava/lang/Object;

    .line 849
    sget-object v1, Lcom/supertws/dubokutv/LanSyncManager;->sActiveVideoAddress:Ljava/lang/Object;

    .line 850
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->getAppContext()Landroid/content/Context;

    move-result-object v2

    .line 851
    if-eqz v0, :cond_189

    if-eqz v1, :cond_189

    if-nez v2, :cond_10

    goto/16 :goto_189

    .line 852
    :cond_10
    nop

    .line 853
    nop

    .line 855
    const/4 v8, 0x0

    :try_start_13
    check-cast v1, Lqa/f0;

    .line 856
    check-cast v0, Landroidx/media3/exoplayer/h0;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/h0;->M()J

    move-result-wide v3

    const-wide v5, 0x7fffffffffffffffL

    invoke-static {v3, v4, v5, v6}, Lcom/supertws/dubokutv/PlaybackEvent;->finalPosition(JJ)J

    move-result-wide v3

    .line 857
    const-wide/16 v9, 0x0

    cmp-long v0, v3, v9

    if-ltz v0, :cond_14d

    iget-object v0, v1, Lqa/f0;->b:Ljava/lang/String;

    if-eqz v0, :cond_14d

    iget-object v0, v1, Lqa/f0;->c:Ljava/lang/String;

    if-nez v0, :cond_34

    goto/16 :goto_14d

    .line 858
    :cond_34
    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->markCloudDirty(Landroid/content/Context;)V

    .line 860
    const-class v7, Lcom/supertws/dubokutv/LanSyncManager;

    monitor-enter v7
    :try_end_3a
    .catchall {:try_start_13 .. :try_end_3a} :catchall_150

    .line 861
    :try_start_3a
    const-string v0, "record_database"

    const/4 v11, 0x0

    invoke-virtual {v2, v0, v11, v8}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_145

    .line 862
    :try_start_41
    const-string v0, "SELECT id,name,episode,progressInMillis,durationInMillis,createdAt,modifiedAt,videoPageUrl,detailPageUrl,posterUrl FROM records WHERE name = ? AND episode = ? ORDER BY modifiedAt DESC LIMIT 1"

    iget-object v13, v1, Lqa/f0;->b:Ljava/lang/String;

    iget-object v1, v1, Lqa/f0;->c:Ljava/lang/String;

    filled-new-array {v13, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_4f
    .catchall {:try_start_41 .. :try_end_4f} :catchall_141

    .line 864
    :try_start_4f
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_61

    monitor-exit v7
    :try_end_56
    .catchall {:try_start_4f .. :try_end_56} :catchall_13f

    .line 893
    if-eqz v1, :cond_5b

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 894
    :cond_5b
    if-eqz v12, :cond_60

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 864
    :cond_60
    return-void

    .line 865
    :cond_61
    :try_start_61
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/4 v11, 0x2

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 866
    const/4 v11, 0x4

    move-wide/from16 v17, v5

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/4 v11, 0x5

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    const/4 v11, 0x6

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 867
    const/4 v11, 0x7

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    const/16 v11, 0x8

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v11, 0x9

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 868
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_94
    .catchall {:try_start_61 .. :try_end_94} :catchall_13f

    .line 869
    cmp-long v1, v5, v9

    if-lez v1, :cond_137

    cmp-long v1, v19, v17

    if-nez v1, :cond_9e

    goto/16 :goto_137

    .line 870
    :cond_9e
    :try_start_9e
    invoke-static {v3, v4, v5, v6}, Lcom/supertws/dubokutv/PlaybackEvent;->finalPosition(JJ)J

    move-result-wide v17

    .line 871
    invoke-static {v2}, Lcom/supertws/dubokutv/FamilyClock;->now(Landroid/content/Context;)J

    move-result-wide v3

    const-wide/16 v9, 0x1

    add-long v9, v19, v9

    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v23

    .line 872
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 873
    const-string v3, "progressInMillis"

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "modifiedAt"

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 874
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_c8
    .catchall {:try_start_9e .. :try_end_c8} :catchall_141

    .line 876
    :try_start_c8
    const-string v3, "records"

    const-string v4, "id = ?"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v3, v1, v4, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1
    :try_end_d4
    .catchall {:try_start_c8 .. :try_end_d4} :catchall_132

    if-eq v1, v0, :cond_e1

    .line 878
    :try_start_d6
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    monitor-exit v7
    :try_end_da
    .catchall {:try_start_d6 .. :try_end_da} :catchall_141

    .line 893
    nop

    .line 894
    if-eqz v12, :cond_e0

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 876
    :cond_e0
    return-void

    .line 877
    :cond_e1
    :try_start_e1
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_e4
    .catchall {:try_start_e1 .. :try_end_e4} :catchall_132

    .line 878
    :try_start_e4
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 879
    new-instance v13, Lpa/c;

    move-wide/from16 v19, v5

    invoke-direct/range {v13 .. v27}, Lpa/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    monitor-exit v7
    :try_end_ef
    .catchall {:try_start_e4 .. :try_end_ef} :catchall_141

    .line 881
    if-eqz v12, :cond_f5

    :try_start_f1
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move-object v12, v8

    .line 882
    :cond_f5
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->bumpSyncVersion()V

    .line 883
    sget-object v1, Lcom/supertws/dubokutv/PlaybackSaveGuard;->INSTANCE:Lcom/supertws/dubokutv/PlaybackSaveGuard;

    invoke-virtual {v1, v2}, Lcom/supertws/dubokutv/PlaybackSaveGuard;->initialize(Landroid/content/Context;)V

    .line 884
    sget-object v1, Lcom/supertws/dubokutv/PlaybackSaveGuard;->INSTANCE:Lcom/supertws/dubokutv/PlaybackSaveGuard;

    iget-object v3, v13, Lpa/c;->b:Ljava/lang/String;

    iget-object v4, v13, Lpa/c;->c:Ljava/lang/String;

    iget-wide v5, v13, Lpa/c;->d:J

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/supertws/dubokutv/PlaybackSaveGuard;->committed(Ljava/lang/String;Ljava/lang/String;J)V

    .line 885
    iget-object v3, v13, Lpa/c;->b:Ljava/lang/String;

    iget-object v4, v13, Lpa/c;->i:Ljava/lang/String;

    iget-wide v5, v13, Lpa/c;->g:J

    .line 886
    invoke-static {v2}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/supertws/dubokutv/FamilyIdentity;->deviceId()Ljava/lang/String;

    move-result-object v7

    .line 885
    invoke-static/range {v2 .. v7}, Lcom/supertws/dubokutv/SyncVersionStore;->localCommit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/supertws/dubokutv/SyncVersion;

    move-result-object v1

    .line 887
    invoke-static {v13, v0, v1}, Lcom/supertws/dubokutv/LanSyncManager;->publishPlaybackProgress(Ljava/lang/Object;ZLcom/supertws/dubokutv/SyncVersion;)V

    .line 888
    invoke-static {v0}, Lcom/supertws/dubokutv/CloudSyncClient;->onCommittedSave(Z)V

    .line 889
    const-string v0, "LanSyncManager"

    const-string v1, "Flushed final playback position before pause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_127
    .catchall {:try_start_f1 .. :try_end_127} :catchall_12e

    .line 893
    nop

    .line 894
    if-eqz v12, :cond_17c

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_17c

    .line 890
    :catchall_12e
    move-exception v0

    move-object v1, v8

    move-object v8, v12

    goto :goto_152

    .line 878
    :catchall_132
    move-exception v0

    :try_start_133
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 869
    :cond_137
    :goto_137
    monitor-exit v7
    :try_end_138
    .catchall {:try_start_133 .. :try_end_138} :catchall_141

    .line 893
    nop

    .line 894
    if-eqz v12, :cond_13e

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 869
    :cond_13e
    return-void

    .line 880
    :catchall_13f
    move-exception v0

    goto :goto_143

    :catchall_141
    move-exception v0

    move-object v1, v8

    :goto_143
    move-object v8, v12

    goto :goto_147

    :catchall_145
    move-exception v0

    move-object v1, v8

    :goto_147
    :try_start_147
    monitor-exit v7
    :try_end_148
    .catchall {:try_start_147 .. :try_end_148} :catchall_14b

    :try_start_148
    throw v0
    :try_end_149
    .catchall {:try_start_148 .. :try_end_149} :catchall_149

    .line 890
    :catchall_149
    move-exception v0

    goto :goto_152

    .line 880
    :catchall_14b
    move-exception v0

    goto :goto_147

    .line 893
    :cond_14d
    :goto_14d
    nop

    .line 894
    nop

    .line 857
    return-void

    .line 890
    :catchall_150
    move-exception v0

    move-object v1, v8

    .line 891
    :goto_152
    :try_start_152
    const-string v2, "LanSyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Final playback flush deferred: "

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
    :try_end_172
    .catchall {:try_start_152 .. :try_end_172} :catchall_17d

    .line 893
    if-eqz v1, :cond_177

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 894
    :cond_177
    if-eqz v8, :cond_17c

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 896
    :cond_17c
    :goto_17c
    return-void

    .line 893
    :catchall_17d
    move-exception v0

    if-eqz v1, :cond_183

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 894
    :cond_183
    if-eqz v8, :cond_188

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 895
    :cond_188
    throw v0

    .line 851
    :cond_189
    :goto_189
    return-void
.end method

.method public static formatButtonText(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 952
    const-string v0, "\u96c6"

    const-string v1, "\u7b2c"

    :try_start_4
    invoke-static {p0, p1}, Lcom/supertws/dubokutv/LanSyncManager;->resolveLatestRecord(Ljava/lang/Object;Ljava/lang/Object;)Lpa/c;

    move-result-object p0

    .line 953
    if-eqz p0, :cond_79

    iget-object p1, p0, Lpa/c;->c:Ljava/lang/String;

    if-eqz p1, :cond_79

    iget-object p1, p0, Lpa/c;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_79

    .line 954
    nop

    .line 955
    iget-wide v2, p0, Lpa/c;->e:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_30

    .line 956
    iget-wide v2, p0, Lpa/c;->d:J

    long-to-double v2, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double v2, v2, v4

    iget-wide v4, p0, Lpa/c;->e:J

    long-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int p1, v2

    goto :goto_31

    .line 955
    :cond_30
    const/4 p1, 0x0

    .line 958
    :goto_31
    iget-object p0, p0, Lpa/c;->c:Ljava/lang/String;

    .line 959
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_54

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_54

    .line 960
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 962
    :cond_54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7ee7\u7eed\u64ad\u653e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "%"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_77
    .catchall {:try_start_4 .. :try_end_77} :catchall_78

    return-object p0

    .line 964
    :catchall_78
    move-exception p0

    :cond_79
    nop

    .line 965
    return-object p2
.end method

.method public static getAppContext()Landroid/content/Context;
    .registers 1

    .line 81
    sget-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sInstance:Lcom/supertws/dubokutv/LanSyncManager;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sInstance:Lcom/supertws/dubokutv/LanSyncManager;

    iget-object v0, v0, Lcom/supertws/dubokutv/LanSyncManager;->mContext:Landroid/content/Context;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/supertws/dubokutv/LanSyncManager;
    .registers 3

    .line 69
    sget-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sInstance:Lcom/supertws/dubokutv/LanSyncManager;

    if-nez v0, :cond_30

    .line 70
    const-class v0, Lcom/supertws/dubokutv/LanSyncManager;

    monitor-enter v0

    .line 71
    :try_start_7
    sget-object v1, Lcom/supertws/dubokutv/LanSyncManager;->sInstance:Lcom/supertws/dubokutv/LanSyncManager;

    if-nez v1, :cond_2b

    if-eqz p0, :cond_2b

    .line 72
    new-instance v1, Lcom/supertws/dubokutv/LanSyncManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/supertws/dubokutv/LanSyncManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/supertws/dubokutv/LanSyncManager;->sInstance:Lcom/supertws/dubokutv/LanSyncManager;

    .line 73
    sget-object p0, Lcom/supertws/dubokutv/LanSyncManager;->sInstance:Lcom/supertws/dubokutv/LanSyncManager;

    iget-object p0, p0, Lcom/supertws/dubokutv/LanSyncManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/supertws/dubokutv/FamilyIdentity;->isLanSyncEnabled()Z

    move-result p0

    if-eqz p0, :cond_2b

    sget-object p0, Lcom/supertws/dubokutv/LanSyncManager;->sInstance:Lcom/supertws/dubokutv/LanSyncManager;

    invoke-virtual {p0}, Lcom/supertws/dubokutv/LanSyncManager;->startReceiver()V

    .line 75
    :cond_2b
    monitor-exit v0

    goto :goto_30

    :catchall_2d
    move-exception p0

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_2d

    throw p0

    .line 77
    :cond_30
    :goto_30
    sget-object p0, Lcom/supertws/dubokutv/LanSyncManager;->sInstance:Lcom/supertws/dubokutv/LanSyncManager;

    return-object p0
.end method

.method private handleIncomingJson(Ljava/lang/String;Ljava/lang/String;)V
    .registers 28

    .line 166
    move-object/from16 v1, p0

    move-object/from16 v13, p2

    const-string v7, "LanSyncManager"

    const-string v0, ""

    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->isLanSyncEnabled()Z

    move-result v2

    if-nez v2, :cond_f

    return-void

    .line 168
    :cond_f
    :try_start_f
    new-instance v2, Lorg/json/JSONObject;

    move-object/from16 v3, p1

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 169
    const-string v3, "from"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 170
    sget-object v3, Lcom/supertws/dubokutv/LanSyncManager;->sCurrentDeviceId:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 171
    return-void

    .line 174
    :cond_25
    const-string v3, "action"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 175
    iget-object v4, v1, Lcom/supertws/dubokutv/LanSyncManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v8

    .line 176
    const-string v4, "FAMILY_DISCOVER"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_37} :catch_27a

    const-string v5, "nonce"

    if-eqz v4, :cond_53

    .line 177
    :try_start_3b
    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/supertws/dubokutv/FamilyIdentity;->offer(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v13}, Lcom/supertws/dubokutv/LanSyncManager;->sendUdpPacket(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_4a} :catch_4b

    goto :goto_51

    .line 178
    :catch_4b
    move-exception v0

    :try_start_4c
    const-string v0, "Could not send family offer"

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_51
    nop

    .line 179
    return-void

    .line 181
    :cond_53
    const-string v4, "FAMILY_OFFER"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 182
    invoke-virtual {v8, v2}, Lcom/supertws/dubokutv/FamilyIdentity;->adopt(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_66

    iget-object v0, v1, Lcom/supertws/dubokutv/LanSyncManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/supertws/dubokutv/CloudSyncClient;->fetchKnownPeers(Landroid/content/Context;)V

    .line 183
    :cond_66
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->syncLanClock()V

    .line 184
    return-void

    .line 186
    :cond_6a
    const-string v4, "TIME_PROBE"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_70} :catch_27a

    const-string v6, "t1"

    const-wide/16 v10, -0x1

    const-string v12, "to"

    if-eqz v4, :cond_c4

    .line 187
    :try_start_78
    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 188
    invoke-virtual {v2, v12, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    invoke-virtual {v2, v6, v10, v11}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 190
    invoke-static {v9}, Lcom/supertws/dubokutv/FamilyIdentity;->validId(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c3

    invoke-virtual {v8}, Lcom/supertws/dubokutv/FamilyIdentity;->peers()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c3

    .line 191
    invoke-static {v3}, Lcom/supertws/dubokutv/FamilyIdentity;->validId(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c3

    const-string v2, "*"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_aa

    sget-object v2, Lcom/supertws/dubokutv/LanSyncManager;->sCurrentDeviceId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c3

    :cond_aa
    const-wide/16 v10, 0x0

    cmp-long v0, v4, v10

    if-gez v0, :cond_b1

    goto :goto_c3

    .line 192
    :cond_b1
    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/supertws/dubokutv/LanSyncManager$9;

    move-object v2, v9

    move-object v6, v13

    invoke-direct/range {v0 .. v6}, Lcom/supertws/dubokutv/LanSyncManager$9;-><init>(Lcom/supertws/dubokutv/LanSyncManager;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    const-string v2, "LanSync-TimeReply"

    invoke-direct {v8, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 201
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 202
    return-void

    .line 191
    :cond_c3
    :goto_c3
    return-void

    .line 204
    :cond_c4
    const-string v4, "TIME_REPLY"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15d

    .line 205
    invoke-virtual {v2, v12, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    sget-object v4, Lcom/supertws/dubokutv/LanSyncManager;->sClockProbes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 207
    invoke-static {v9}, Lcom/supertws/dubokutv/FamilyIdentity;->validId(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15c

    invoke-virtual {v8}, Lcom/supertws/dubokutv/FamilyIdentity;->peers()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15c

    sget-object v5, Lcom/supertws/dubokutv/LanSyncManager;->sCurrentDeviceId:Ljava/lang/String;

    .line 208
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15c

    invoke-static {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->validId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15c

    if-eqz v4, :cond_15c

    .line 209
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, -0x2

    invoke-virtual {v2, v6, v14, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v0, v12, v5

    if-eqz v0, :cond_10b

    goto :goto_15c

    .line 210
    :cond_10b
    iget-object v8, v1, Lcom/supertws/dubokutv/LanSyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-string v0, "t2"

    invoke-virtual {v2, v0, v10, v11}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v12

    const-string v0, "t3"

    .line 211
    invoke-virtual {v2, v0, v10, v11}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const-string v0, "uncertaintyMs"

    .line 212
    const-wide/32 v5, 0x5265c00

    invoke-virtual {v2, v0, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v18

    const-string v0, "trusted"

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v20

    .line 210
    move-wide v10, v3

    invoke-static/range {v8 .. v20}, Lcom/supertws/dubokutv/FamilyClock;->observeLanTime(Landroid/content/Context;Ljava/lang/String;JJJJJZ)V

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LAN clock sample from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " offset/uncertainty="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/supertws/dubokutv/LanSyncManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/supertws/dubokutv/FamilyClock;->uncertainty(Landroid/content/Context;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    return-void

    .line 209
    :cond_15c
    :goto_15c
    return-void

    .line 216
    :cond_15d
    const-string v4, "PROGRESS_ACK"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_163
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_163} :catch_27a

    const-string v5, "messageId"

    if-eqz v4, :cond_1b2

    .line 217
    :try_start_167
    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 218
    const-string v4, "status"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 219
    invoke-static {v9}, Lcom/supertws/dubokutv/FamilyIdentity;->validId(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b1

    invoke-virtual {v8}, Lcom/supertws/dubokutv/FamilyIdentity;->peers()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b1

    sget-object v5, Lcom/supertws/dubokutv/LanSyncManager;->sCurrentDeviceId:Ljava/lang/String;

    .line 220
    invoke-virtual {v2, v12, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b1

    .line 221
    invoke-static {v3}, Lcom/supertws/dubokutv/FamilyIdentity;->validId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b1

    const-string v0, "applied"

    .line 222
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a3

    const-string v0, "already_current"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b1

    .line 223
    :cond_1a3
    sget-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sPendingProgress:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    .line 224
    if-eqz v0, :cond_1b1

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 226
    :cond_1b1
    return-void

    .line 228
    :cond_1b2
    invoke-static {v9}, Lcom/supertws/dubokutv/FamilyIdentity;->validId(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_unknown_peer

    invoke-virtual {v8}, Lcom/supertws/dubokutv/FamilyIdentity;->peers()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_unknown_peer

    const-string v4, "REQUEST_SYNC"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e4

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received REQUEST_SYNC from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "), responding with all local records..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-direct {v1, v13}, Lcom/supertws/dubokutv/LanSyncManager;->respondAllRecords(Ljava/lang/String;)V

    .line 231
    return-void

    :cond_unknown_peer
    const-string v0, "Rejected LAN sync packet from unknown device"

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 234
    :cond_1e4
    const-string v3, "name"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 235
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1f1

    return-void

    .line 237
    :cond_1f1
    const-string v4, "id"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 238
    const-string v4, "episode"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 239
    const-string v6, "progressInMillis"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 240
    const-string v6, "durationInMillis"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v17

    .line 241
    const-string v6, "modifiedAt"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 242
    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 243
    const-string v0, "clockVersion"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 244
    const-string v5, "videoPageUrl"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 245
    const-string v6, "detailPageUrl"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 246
    move-object/from16 p1, v0

    const-string v0, "posterUrl"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_22d
    .catch Ljava/lang/Exception; {:try_start_167 .. :try_end_22d} :catch_27a

    .line 248
    const-string v2, "example.com"

    if-eqz v6, :cond_237

    :try_start_231
    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_23f

    :cond_237
    if-eqz v5, :cond_256

    .line 249
    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_256

    .line 250
    :cond_23f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rejected dummy test packet with example.com for: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    return-void

    .line 254
    :cond_256
    new-instance v2, Ljava/lang/Thread;

    move-object/from16 v19, v2

    move-object v2, v3

    move-object v3, v6

    move-wide/from16 v23, v14

    move-object v14, v0

    move-object v15, v5

    move-wide/from16 v5, v23

    new-instance v0, Lcom/supertws/dubokutv/LanSyncManager$2;
    :try_end_264
    .catch Ljava/lang/Exception; {:try_start_231 .. :try_end_264} :catch_27a

    move-object/from16 v22, v7

    move-object v7, v9

    move-object/from16 v21, v19

    move-object v9, v4

    move-object/from16 v4, p1

    :try_start_26c
    invoke-direct/range {v0 .. v18}, Lcom/supertws/dubokutv/LanSyncManager$2;-><init>(Lcom/supertws/dubokutv/LanSyncManager;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;JLjava/lang/String;Lcom/supertws/dubokutv/FamilyIdentity;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    move-object/from16 v1, v21

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 387
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_277
    .catch Ljava/lang/Exception; {:try_start_26c .. :try_end_277} :catch_278

    .line 390
    goto :goto_299

    .line 388
    :catch_278
    move-exception v0

    goto :goto_27d

    :catch_27a
    move-exception v0

    move-object/from16 v22, v7

    .line 389
    :goto_27d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse incoming UDP json: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v22

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :goto_299
    return-void
.end method

.method private static isLanSyncEnabled()Z
    .registers 1

    .line 139
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 140
    if-eqz v0, :cond_12

    invoke-static {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->isLanSyncEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method static synthetic lambda$syncLanClock$1(Ljava/lang/String;)Ljava/lang/Long;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 478
    sget-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sClockProbes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic lambda$syncLanClock$2()V
    .registers 8

    .line 475
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 476
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 477
    sget-object v3, Lcom/supertws/dubokutv/LanSyncManager;->sClockProbes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    sget-object v3, Lcom/supertws/dubokutv/LanSyncManager;->sSyncQueue:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v4, Lcom/supertws/dubokutv/LanSyncManager$0;

    invoke-direct {v4, v0}, Lcom/supertws/dubokutv/LanSyncManager$0;-><init>(Ljava/lang/String;)V

    const-wide/16 v5, 0x1388

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v5, v6, v7}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 480
    :try_start_23
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "action"

    const-string v5, "TIME_PROBE"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "from"

    sget-object v5, Lcom/supertws/dubokutv/LanSyncManager;->sCurrentDeviceId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "to"

    const-string v5, "*"

    .line 481
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "nonce"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "t1"

    invoke-virtual {v3, v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1

    .line 482
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/supertws/dubokutv/LanSyncManager;->sendUdpPacket(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_54} :catch_55

    .line 483
    goto :goto_7b

    :catch_55
    move-exception v1

    sget-object v2, Lcom/supertws/dubokutv/LanSyncManager;->sClockProbes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LAN clock probe deferred: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LanSyncManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :goto_7b
    return-void
.end method

.method public static mergeCloudSnapshot(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .registers 2

    .line 937
    invoke-static {p0}, Lcom/supertws/dubokutv/CloudSnapshotMerger;->merge(Lorg/json/JSONObject;)Z

    move-result p0

    return p0
.end method

.method public static offerCloudHandoff(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)V
    .registers 15

    .line 941
    invoke-static {p0, p5, p6}, Lcom/supertws/dubokutv/LanSyncManager;->onRemoteProgress(Ljava/lang/String;J)V

    .line 942
    sget-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sHandoff:Lcom/supertws/dubokutv/HandoffProgress;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/supertws/dubokutv/HandoffProgress;->offer(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)V

    .line 943
    return-void
.end method

.method public static onActivityPause(Landroid/app/Activity;)V
    .registers 1

    .line 843
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->flushActivePlayback()V

    .line 844
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->onActivityPause()V

    .line 845
    return-void
.end method

.method public static onActivityResume(Landroid/app/Activity;)V
    .registers 1

    .line 836
    sput-object p0, Lcom/supertws/dubokutv/LanSyncManager;->sActiveActivity:Landroid/app/Activity;

    .line 837
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->requestSyncDebounced()V

    .line 838
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->syncLanClock()V

    .line 839
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/supertws/dubokutv/CloudSyncClient;->fetchOnResume(Landroid/content/Context;)V

    .line 840
    return-void
.end method

.method public static onAppCreate(Landroid/content/Context;)V
    .registers 3

    .line 789
    invoke-static {p0}, Lcom/supertws/dubokutv/LanSyncManager;->getInstance(Landroid/content/Context;)Lcom/supertws/dubokutv/LanSyncManager;

    move-result-object p0

    .line 790
    iget-object v0, p0, Lcom/supertws/dubokutv/LanSyncManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v0

    .line 791
    invoke-virtual {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->ensure()V

    .line 792
    invoke-virtual {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->deviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sCurrentDeviceId:Ljava/lang/String;

    .line 793
    iget-object v0, p0, Lcom/supertws/dubokutv/LanSyncManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/supertws/dubokutv/CloudSyncClient;->initialize(Landroid/content/Context;)V

    .line 794
    iget-object v0, p0, Lcom/supertws/dubokutv/LanSyncManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/supertws/dubokutv/LanSyncManager;->registerCloudRecovery(Landroid/content/Context;)V

    .line 795
    iget-object v0, p0, Lcom/supertws/dubokutv/LanSyncManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/supertws/dubokutv/CloudSyncClient;->fetchOnStartup(Landroid/content/Context;)V

    .line 796
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->syncLanClock()V

    .line 797
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/supertws/dubokutv/LanSyncManager$7;

    invoke-direct {v1, p0}, Lcom/supertws/dubokutv/LanSyncManager$7;-><init>(Lcom/supertws/dubokutv/LanSyncManager;)V

    const-string p0, "LanSync-Family"

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 812
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 813
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->requestSyncFromLan()V

    .line 814
    return-void
.end method

.method public static onHistoryOpened()V
    .registers 1

    .line 899
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->requestSyncDebounced()V

    .line 900
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 901
    if-eqz v0, :cond_c

    invoke-static {v0}, Lcom/supertws/dubokutv/CloudSyncClient;->fetchOnHistory(Landroid/content/Context;)V

    .line 902
    :cond_c
    return-void
.end method

.method public static onLanSyncSettingChanged(Z)V
    .registers 2

    .line 155
    sget-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sInstance:Lcom/supertws/dubokutv/LanSyncManager;

    .line 156
    if-nez v0, :cond_5

    return-void

    .line 157
    :cond_5
    if-eqz p0, :cond_e

    .line 158
    invoke-virtual {v0}, Lcom/supertws/dubokutv/LanSyncManager;->startReceiver()V

    .line 159
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->requestSyncFromLan()V

    goto :goto_11

    .line 161
    :cond_e
    invoke-virtual {v0}, Lcom/supertws/dubokutv/LanSyncManager;->stopReceiver()V

    .line 163
    :goto_11
    return-void
.end method

.method public static onPlaybackSaveCommitted(Ljava/lang/Object;)V
    .registers 11

    .line 923
    move-object v0, p0

    check-cast v0, Lpa/c;

    .line 924
    sget-object v1, Lcom/supertws/dubokutv/PlaybackSaveGuard;->INSTANCE:Lcom/supertws/dubokutv/PlaybackSaveGuard;

    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/supertws/dubokutv/PlaybackSaveGuard;->initialize(Landroid/content/Context;)V

    .line 925
    sget-object v1, Lcom/supertws/dubokutv/PlaybackSaveGuard;->INSTANCE:Lcom/supertws/dubokutv/PlaybackSaveGuard;

    iget-object v2, v0, Lpa/c;->b:Ljava/lang/String;

    iget-object v3, v0, Lpa/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/supertws/dubokutv/PlaybackSaveGuard;->isNewPlaybackEvent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_26

    iget-wide v3, v0, Lpa/c;->d:J

    iget-wide v5, v0, Lpa/c;->e:J

    .line 926
    invoke-static {v3, v4, v5, v6}, Lcom/supertws/dubokutv/PlaybackEvent;->nearEnd(JJ)Z

    move-result v1

    if-eqz v1, :cond_24

    goto :goto_26

    :cond_24
    const/4 v1, 0x0

    goto :goto_27

    :cond_26
    :goto_26
    const/4 v1, 0x1

    .line 927
    :goto_27
    sget-object v3, Lcom/supertws/dubokutv/PlaybackSaveGuard;->INSTANCE:Lcom/supertws/dubokutv/PlaybackSaveGuard;

    iget-object v4, v0, Lpa/c;->b:Ljava/lang/String;

    iget-object v5, v0, Lpa/c;->c:Ljava/lang/String;

    iget-wide v6, v0, Lpa/c;->d:J

    iget-wide v8, v0, Lpa/c;->g:J

    invoke-virtual/range {v3 .. v9}, Lcom/supertws/dubokutv/PlaybackSaveGuard;->committedIfCurrent(Ljava/lang/String;Ljava/lang/String;JJ)Z

    move-result v3

    if-nez v3, :cond_38

    return-void

    .line 928
    :cond_38
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->getAppContext()Landroid/content/Context;

    move-result-object v4

    .line 929
    invoke-static {v4}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/supertws/dubokutv/FamilyIdentity;->deviceId()Ljava/lang/String;

    move-result-object v9

    .line 930
    iget-object v5, v0, Lpa/c;->b:Ljava/lang/String;

    iget-object v6, v0, Lpa/c;->i:Ljava/lang/String;

    iget-wide v7, v0, Lpa/c;->g:J

    invoke-static/range {v4 .. v9}, Lcom/supertws/dubokutv/SyncVersionStore;->localCommit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/supertws/dubokutv/SyncVersion;

    move-result-object v0

    .line 931
    invoke-static {p0, v1, v0}, Lcom/supertws/dubokutv/LanSyncManager;->publishPlaybackProgress(Ljava/lang/Object;ZLcom/supertws/dubokutv/SyncVersion;)V

    .line 932
    if-eqz v1, :cond_56

    invoke-static {v2}, Lcom/supertws/dubokutv/CloudSyncClient;->onCommittedSave(Z)V

    .line 933
    :cond_56
    return-void
.end method

.method public static onRecordSaved()V
    .registers 0

    .line 947
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->onCommittedSave()V

    .line 948
    return-void
.end method

.method public static onRemoteProgress(Ljava/lang/String;J)V
    .registers 5

    .line 915
    if-eqz p0, :cond_22

    :try_start_2
    sget-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sActiveVideoAddress:Ljava/lang/Object;

    if-eqz v0, :cond_22

    sget-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sActiveVideoAddress:Ljava/lang/Object;

    check-cast v0, Lqa/f0;

    iget-object v0, v0, Lqa/f0;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 916
    sget-object v0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->INSTANCE:Lcom/supertws/dubokutv/PlaybackSaveGuard;

    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/supertws/dubokutv/PlaybackSaveGuard;->initialize(Landroid/content/Context;)V

    .line 917
    sget-object v0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->INSTANCE:Lcom/supertws/dubokutv/PlaybackSaveGuard;

    invoke-virtual {v0, p0, p1, p2}, Lcom/supertws/dubokutv/PlaybackSaveGuard;->remoteUpdated(Ljava/lang/String;J)V
    :try_end_20
    .catchall {:try_start_2 .. :try_end_20} :catchall_21

    goto :goto_22

    .line 919
    :catchall_21
    move-exception p0

    :cond_22
    :goto_22
    nop

    .line 920
    return-void
.end method

.method public static parseEpisodeNum(Ljava/lang/String;)I
    .registers 3

    .line 85
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 86
    :cond_4
    sget-object v1, Lcom/supertws/dubokutv/LanSyncManager;->EP_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 87
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 89
    const/4 v1, 0x1

    :try_start_11
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_19} :catch_1a

    return p0

    .line 90
    :catch_1a
    move-exception p0

    .line 92
    :cond_1b
    return v0
.end method

.method private static publishPlaybackProgress(Ljava/lang/Object;ZLcom/supertws/dubokutv/SyncVersion;)V
    .registers 5

    .line 545
    if-nez p0, :cond_3

    return-void

    .line 546
    :cond_3
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 547
    invoke-static {v0}, Lcom/supertws/dubokutv/CloudSyncClient;->markCloudDirty(Landroid/content/Context;)V

    .line 548
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->isLanSyncEnabled()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 549
    const/4 p0, 0x0

    invoke-static {p1, p0, p0}, Lcom/supertws/dubokutv/SyncDecision;->requiresCloudUpload(ZZZ)Z

    move-result p0

    if-eqz p0, :cond_1b

    const/4 p0, 0x1

    invoke-static {p0}, Lcom/supertws/dubokutv/CloudSyncClient;->onCommittedSave(Z)V

    .line 550
    :cond_1b
    return-void

    .line 552
    :cond_1c
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/supertws/dubokutv/LanSyncManager$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/supertws/dubokutv/LanSyncManager$5;-><init>(Ljava/lang/Object;ZLcom/supertws/dubokutv/SyncVersion;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 614
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 615
    return-void
.end method

.method public static registerActivePlayer(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 618
    if-eqz p0, :cond_4

    sput-object p0, Lcom/supertws/dubokutv/LanSyncManager;->sActiveExoPlayer:Ljava/lang/Object;

    .line 619
    :cond_4
    if-eqz p1, :cond_8

    sput-object p1, Lcom/supertws/dubokutv/LanSyncManager;->sActiveActivity:Landroid/app/Activity;

    .line 620
    :cond_8
    if-eqz p2, :cond_c

    sput-object p2, Lcom/supertws/dubokutv/LanSyncManager;->sActiveVideoAddress:Ljava/lang/Object;

    .line 621
    :cond_c
    if-eqz p3, :cond_10

    sput-object p3, Lcom/supertws/dubokutv/LanSyncManager;->sActiveRefreshCallback:Ljava/lang/Object;

    .line 623
    :cond_10
    if-eqz p2, :cond_4d

    .line 624
    :try_start_12
    check-cast p2, Lqa/f0;

    .line 625
    const-string p0, "LanSyncManager"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "registerActivePlayer: drama="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p3, p2, Lqa/f0;->b:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ", ep="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p2, Lqa/f0;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", callback="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object p2, Lcom/supertws/dubokutv/LanSyncManager;->sActiveRefreshCallback:Ljava/lang/Object;

    if-eqz p2, :cond_3f

    const/4 p2, 0x1

    goto :goto_40

    :cond_3f
    const/4 p2, 0x0

    :goto_40
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catchall {:try_start_12 .. :try_end_4b} :catchall_4c

    goto :goto_4d

    .line 627
    :catchall_4c
    move-exception p0

    :cond_4d
    :goto_4d
    nop

    .line 628
    return-void
.end method

.method public static registerActiveVideo(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 631
    if-eqz p0, :cond_4

    sput-object p0, Lcom/supertws/dubokutv/LanSyncManager;->sActiveVideoAddress:Ljava/lang/Object;

    .line 632
    :cond_4
    if-eqz p1, :cond_8

    sput-object p1, Lcom/supertws/dubokutv/LanSyncManager;->sActiveRefreshCallback:Ljava/lang/Object;

    .line 634
    :cond_8
    if-eqz p0, :cond_45

    .line 635
    :try_start_a
    check-cast p0, Lqa/f0;

    .line 636
    const-string p1, "LanSyncManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerActiveVideo: drama="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lqa/f0;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ep="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lqa/f0;->c:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ", callback="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sActiveRefreshCallback:Ljava/lang/Object;

    if-eqz v0, :cond_37

    const/4 v0, 0x1

    goto :goto_38

    :cond_37
    const/4 v0, 0x0

    :goto_38
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_a .. :try_end_43} :catchall_44

    goto :goto_45

    .line 638
    :catchall_44
    move-exception p0

    :cond_45
    :goto_45
    nop

    .line 639
    return-void
.end method

.method private static declared-synchronized registerCloudRecovery(Landroid/content/Context;)V
    .registers 5

    const-class v0, Lcom/supertws/dubokutv/LanSyncManager;

    monitor-enter v0

    .line 821
    :try_start_3
    sget-object v1, Lcom/supertws/dubokutv/LanSyncManager;->sNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-nez v1, :cond_55

    .line 822
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_57

    .line 823
    if-nez v1, :cond_13

    monitor-exit v0

    return-void

    .line 824
    :cond_13
    :try_start_13
    new-instance v2, Lcom/supertws/dubokutv/LanSyncManager$8;

    invoke-direct {v2, p0}, Lcom/supertws/dubokutv/LanSyncManager$8;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/supertws/dubokutv/LanSyncManager;->sNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_57

    .line 828
    :try_start_1a
    new-instance p0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p0

    sget-object v2, Lcom/supertws/dubokutv/LanSyncManager;->sNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, p0, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_2e
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_2e} :catch_2f
    .catchall {:try_start_1a .. :try_end_2e} :catchall_57

    .line 832
    goto :goto_53

    .line 829
    :catch_2f
    move-exception p0

    .line 830
    const/4 v1, 0x0

    :try_start_31
    sput-object v1, Lcom/supertws/dubokutv/LanSyncManager;->sNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 831
    const-string v1, "LanSyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cloud recovery monitor unavailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catchall {:try_start_31 .. :try_end_53} :catchall_57

    .line 833
    :goto_53
    monitor-exit v0

    return-void

    .line 821
    :cond_55
    monitor-exit v0

    return-void

    .line 820
    :catchall_57
    move-exception p0

    :try_start_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    throw p0
.end method

.method public static requestSyncDebounced()V
    .registers 7

    .line 458
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 459
    sget-wide v2, Lcom/supertws/dubokutv/LanSyncManager;->sLastRequestSyncTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xbb8

    cmp-long v6, v2, v4

    if-gez v6, :cond_f

    .line 460
    return-void

    .line 462
    :cond_f
    sput-wide v0, Lcom/supertws/dubokutv/LanSyncManager;->sLastRequestSyncTime:J

    .line 463
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->requestSyncFromLan()V

    .line 464
    return-void
.end method

.method public static requestSyncFromLan()V
    .registers 2

    .line 439
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->isLanSyncEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 440
    :cond_7
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/supertws/dubokutv/LanSyncManager$4;

    invoke-direct {v1}, Lcom/supertws/dubokutv/LanSyncManager$4;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 454
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 455
    return-void
.end method

.method public static resolveLatestRecord(Ljava/lang/Object;Ljava/lang/Object;)Lpa/c;
    .registers 25

    .line 696
    const-string v1, "LanSyncManager"

    move-object/from16 v2, p0

    check-cast v2, Lpa/c;

    .line 698
    :try_start_6
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->getAppContext()Landroid/content/Context;

    move-result-object v3
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_138

    .line 699
    if-nez v3, :cond_d

    return-object v2

    .line 701
    :cond_d
    nop

    .line 702
    nop

    .line 704
    const/4 v4, 0x0

    if-eqz p1, :cond_21

    .line 706
    :try_start_12
    move-object/from16 v0, p1

    check-cast v0, Lqa/p;

    .line 707
    iget-object v5, v0, Lqa/p;->f:Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_1d

    .line 708
    :try_start_18
    iget-object v0, v0, Lqa/p;->b:Ljava/lang/String;
    :try_end_1a
    .catchall {:try_start_18 .. :try_end_1a} :catchall_1b

    .line 709
    goto :goto_23

    :catchall_1b
    move-exception v0

    goto :goto_1f

    :catchall_1d
    move-exception v0

    move-object v5, v4

    :goto_1f
    move-object v0, v4

    goto :goto_23

    .line 704
    :cond_21
    move-object v0, v4

    move-object v5, v0

    .line 711
    :goto_23
    if-eqz v2, :cond_39

    .line 712
    if-eqz v5, :cond_2d

    :try_start_27
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2f

    :cond_2d
    iget-object v5, v2, Lpa/c;->b:Ljava/lang/String;

    .line 713
    :cond_2f
    if-eqz v0, :cond_37

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_39

    :cond_37
    iget-object v0, v2, Lpa/c;->i:Ljava/lang/String;

    .line 716
    :cond_39
    if-eqz v5, :cond_41

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4b

    :cond_41
    if-eqz v0, :cond_137

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4b

    goto/16 :goto_137

    .line 720
    :cond_4b
    const-string v6, "record_database"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7, v4}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 721
    if-nez v3, :cond_55

    return-object v2

    .line 723
    :cond_55
    nop

    .line 724
    if-eqz v5, :cond_71

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_71

    if-eqz v0, :cond_71

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_71

    .line 725
    const-string v4, "SELECT id, name, episode, progressInMillis, durationInMillis, createdAt, modifiedAt, videoPageUrl, detailPageUrl, posterUrl FROM records WHERE name = ? OR detailPageUrl = ? ORDER BY modifiedAt DESC LIMIT 1"

    filled-new-array {v5, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_8e

    .line 727
    :cond_71
    if-eqz v5, :cond_84

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_84

    .line 728
    const-string v0, "SELECT id, name, episode, progressInMillis, durationInMillis, createdAt, modifiedAt, videoPageUrl, detailPageUrl, posterUrl FROM records WHERE name = ? ORDER BY modifiedAt DESC LIMIT 1"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_8e

    .line 731
    :cond_84
    const-string v4, "SELECT id, name, episode, progressInMillis, durationInMillis, createdAt, modifiedAt, videoPageUrl, detailPageUrl, posterUrl FROM records WHERE detailPageUrl = ? ORDER BY modifiedAt DESC LIMIT 1"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 735
    :goto_8e
    if-eqz v0, :cond_133

    .line 736
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_130

    .line 737
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 738
    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 739
    const/4 v6, 0x2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 740
    const/4 v7, 0x3

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 741
    const/4 v7, 0x4

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 742
    const/4 v7, 0x5

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 743
    const/4 v7, 0x6

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 744
    const/4 v7, 0x7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 745
    const/16 v8, 0x8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 746
    const/16 v9, 0x9

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 747
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 748
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 750
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resolveLatestRecord for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": resolved episode="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", progress="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/16 v10, 0x3e8

    div-long v10, v12, v10

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "s"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    move-object v0, v8

    new-instance v8, Lpa/c;
    :try_end_106
    .catchall {:try_start_27 .. :try_end_106} :catchall_138

    .line 752
    const-string v3, ""

    if-eqz v4, :cond_10b

    goto :goto_10c

    :cond_10b
    move-object v4, v3

    .line 753
    :goto_10c
    if-eqz v5, :cond_110

    move-object v10, v5

    goto :goto_111

    :cond_110
    move-object v10, v3

    .line 754
    :goto_111
    if-eqz v6, :cond_115

    move-object v11, v6

    goto :goto_116

    :cond_115
    move-object v11, v3

    .line 759
    :goto_116
    if-eqz v7, :cond_11b

    move-object/from16 v20, v7

    goto :goto_11d

    :cond_11b
    move-object/from16 v20, v3

    .line 760
    :goto_11d
    if-eqz v0, :cond_122

    move-object/from16 v21, v0

    goto :goto_124

    :cond_122
    move-object/from16 v21, v3

    .line 761
    :goto_124
    if-eqz v9, :cond_129

    move-object/from16 v22, v9

    goto :goto_12b

    :cond_129
    move-object/from16 v22, v3

    :goto_12b
    move-object v9, v4

    :try_start_12c
    invoke-direct/range {v8 .. v22}, Lpa/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    return-object v8

    .line 764
    :cond_130
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 766
    :cond_133
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_136
    .catchall {:try_start_12c .. :try_end_136} :catchall_138

    .line 769
    goto :goto_153

    .line 717
    :cond_137
    :goto_137
    return-object v2

    .line 767
    :catchall_138
    move-exception v0

    .line 768
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resolveLatestRecord error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    :goto_153
    return-object v2
.end method

.method private respondAllRecords(Ljava/lang/String;)V
    .registers 4

    .line 394
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->isLanSyncEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 395
    :cond_7
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/supertws/dubokutv/LanSyncManager$3;

    invoke-direct {v1, p0, p1}, Lcom/supertws/dubokutv/LanSyncManager$3;-><init>(Lcom/supertws/dubokutv/LanSyncManager;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 435
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 436
    return-void
.end method

.method private static sendProgressAck(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 144
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_72

    invoke-static {p0}, Lcom/supertws/dubokutv/FamilyIdentity;->validId(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_72

    invoke-static {p1}, Lcom/supertws/dubokutv/FamilyIdentity;->validId(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 146
    invoke-static {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->peers()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_72

    .line 148
    :cond_21
    :try_start_21
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "action"

    const-string v2, "PROGRESS_ACK"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "from"

    sget-object v2, Lcom/supertws/dubokutv/LanSyncManager;->sCurrentDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "to"

    .line 149
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "messageId"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "status"

    invoke-virtual {p0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    .line 150
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/supertws/dubokutv/LanSyncManager;->sendUdpPacket(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_4f} :catch_50

    .line 151
    goto :goto_71

    :catch_50
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Progress ACK deferred: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LanSyncManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :goto_71
    return-void

    .line 146
    :cond_72
    :goto_72
    return-void
.end method

.method private static sendUdpPacket(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    .line 488
    invoke-static {p0, p1}, Lcom/supertws/dubokutv/LanSyncManager;->sendUdpPacketResult(Ljava/lang/String;Ljava/lang/String;)Z

    .line 489
    return-void
.end method

.method private static sendUdpPacketResult(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    .line 492
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->isLanSyncEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 493
    :cond_8
    nop

    .line 494
    nop

    .line 496
    const/4 v0, 0x0

    :try_start_b
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 497
    new-instance v2, Ljava/net/DatagramSocket;

    invoke-direct {v2}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_16} :catch_b8
    .catchall {:try_start_b .. :try_end_16} :catchall_b6

    .line 498
    const/4 v0, 0x1

    :try_start_17
    invoke-virtual {v2, v0}, Ljava/net/DatagramSocket;->setBroadcast(Z)V

    .line 500
    const/16 v3, 0x2695

    const/16 v4, 0x2694

    if-eqz p1, :cond_3d

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3d

    .line 501
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    .line 502
    new-instance v5, Ljava/net/DatagramPacket;

    array-length v6, p0

    invoke-direct {v5, p0, v6, p1, v4}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    invoke-virtual {v2, v5}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 503
    new-instance v5, Ljava/net/DatagramPacket;

    array-length v6, p0

    invoke-direct {v5, p0, v6, p1, v3}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    invoke-virtual {v2, v5}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 504
    const/4 v1, 0x1

    .line 508
    :cond_3d
    const-string p1, "255.255.255.255"

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    .line 509
    new-instance v5, Ljava/net/DatagramPacket;

    array-length v6, p0

    invoke-direct {v5, p0, v6, p1, v4}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    invoke-virtual {v2, v5}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 510
    new-instance v5, Ljava/net/DatagramPacket;

    array-length v6, p0

    invoke-direct {v5, p0, v6, p1, v3}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    invoke-virtual {v2, v5}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_55} :catch_b3
    .catchall {:try_start_17 .. :try_end_55} :catchall_b0

    .line 511
    nop

    .line 515
    :try_start_56
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object p1

    .line 516
    :cond_5a
    :goto_5a
    if-eqz p1, :cond_a5

    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_a5

    .line 517
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    .line 518
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v5

    if-nez v5, :cond_5a

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v5

    if-nez v5, :cond_75

    goto :goto_5a

    .line 519
    :cond_75
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InterfaceAddress;

    .line 520
    invoke-virtual {v5}, Ljava/net/InterfaceAddress;->getBroadcast()Ljava/net/InetAddress;

    move-result-object v5

    .line 521
    if-eqz v5, :cond_a2

    .line 522
    new-instance v6, Ljava/net/DatagramPacket;

    array-length v7, p0

    invoke-direct {v6, p0, v7, v5, v4}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    invoke-virtual {v2, v6}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 523
    new-instance v6, Ljava/net/DatagramPacket;

    array-length v7, p0

    invoke-direct {v6, p0, v7, v5, v3}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    invoke-virtual {v2, v6}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_a1
    .catchall {:try_start_56 .. :try_end_a1} :catchall_a4

    .line 524
    nop

    .line 526
    :cond_a2
    goto :goto_7d

    .line 527
    :cond_a3
    goto :goto_5a

    .line 528
    :catchall_a4
    move-exception p0

    :cond_a5
    nop

    .line 532
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result p0

    if-nez p0, :cond_e1

    .line 533
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    goto :goto_e1

    .line 532
    :catchall_b0
    move-exception p0

    move-object v0, v2

    goto :goto_e2

    .line 529
    :catch_b3
    move-exception p0

    move-object v0, v2

    goto :goto_b9

    .line 532
    :catchall_b6
    move-exception p0

    goto :goto_e2

    .line 529
    :catch_b8
    move-exception p0

    .line 530
    :goto_b9
    :try_start_b9
    const-string p1, "LanSyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendUdpPacket error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d5
    .catchall {:try_start_b9 .. :try_end_d5} :catchall_b6

    .line 532
    if-eqz v0, :cond_e0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result p0

    if-nez p0, :cond_e0

    .line 533
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 536
    :cond_e0
    move v0, v1

    :cond_e1
    :goto_e1
    return v0

    .line 532
    :goto_e2
    if-eqz v0, :cond_ed

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result p1

    if-nez p1, :cond_ed

    .line 533
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 535
    :cond_ed
    throw p0
.end method

.method private static showToast(Ljava/lang/String;)V
    .registers 3

    .line 775
    :try_start_0
    sget-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sActiveActivity:Landroid/app/Activity;

    if-eqz v0, :cond_17

    .line 776
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/supertws/dubokutv/LanSyncManager$6;

    invoke-direct {v1, p0}, Lcom/supertws/dubokutv/LanSyncManager$6;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    goto :goto_17

    .line 785
    :catchall_16
    move-exception p0

    :cond_17
    :goto_17
    nop

    .line 786
    return-void
.end method

.method public static skipUnchangedPlaybackSave(Ljava/lang/Object;)Z
    .registers 9

    .line 905
    check-cast p0, Lpa/c;

    .line 906
    sget-object v0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->INSTANCE:Lcom/supertws/dubokutv/PlaybackSaveGuard;

    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/supertws/dubokutv/PlaybackSaveGuard;->initialize(Landroid/content/Context;)V

    .line 907
    nop

    .line 908
    const/4 v1, 0x0

    :try_start_d
    sget-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sActiveExoPlayer:Ljava/lang/Object;

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sActiveExoPlayer:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/layout/s0;

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/s0;->m()Z

    move-result v0
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_1f

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 909
    :cond_1d
    move v7, v1

    goto :goto_21

    :catchall_1f
    move-exception v0

    const/4 v7, 0x0

    .line 910
    :goto_21
    sget-object v2, Lcom/supertws/dubokutv/PlaybackSaveGuard;->INSTANCE:Lcom/supertws/dubokutv/PlaybackSaveGuard;

    iget-object v3, p0, Lpa/c;->b:Ljava/lang/String;

    iget-object v4, p0, Lpa/c;->c:Ljava/lang/String;

    iget-wide v5, p0, Lpa/c;->d:J

    invoke-virtual/range {v2 .. v7}, Lcom/supertws/dubokutv/PlaybackSaveGuard;->shouldSkip(Ljava/lang/String;Ljava/lang/String;JZ)Z

    move-result p0

    return p0
.end method

.method public static declared-synchronized syncLanClock()V
    .registers 10

    const-class v0, Lcom/supertws/dubokutv/LanSyncManager;

    monitor-enter v0

    .line 467
    :try_start_3
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->isLanSyncEnabled()Z

    move-result v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_43

    if-nez v1, :cond_b

    monitor-exit v0

    return-void

    .line 468
    :cond_b
    :try_start_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 469
    sget-wide v3, Lcom/supertws/dubokutv/LanSyncManager;->sLastClockProbeAt:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x7530

    cmp-long v7, v3, v5

    if-gez v7, :cond_30

    .line 470
    sget-wide v3, Lcom/supertws/dubokutv/LanSyncManager;->sLastClockProbeAt:J

    const-wide/16 v7, 0x0

    cmp-long v9, v3, v7

    if-nez v9, :cond_2e

    sget-object v3, Lcom/supertws/dubokutv/LanSyncManager;->sSyncQueue:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v4, Lcom/supertws/dubokutv/LanSyncManager$10;

    invoke-direct {v4}, Lcom/supertws/dubokutv/LanSyncManager$10;-><init>()V

    sub-long/2addr v5, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v5, v6, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_2e
    .catchall {:try_start_b .. :try_end_2e} :catchall_43

    .line 471
    :cond_2e
    monitor-exit v0

    return-void

    .line 473
    :cond_30
    :try_start_30
    sput-wide v1, Lcom/supertws/dubokutv/LanSyncManager;->sLastClockProbeAt:J

    .line 474
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/supertws/dubokutv/LanSyncManager$11;

    invoke-direct {v2}, Lcom/supertws/dubokutv/LanSyncManager$11;-><init>()V

    const-string v3, "LanSync-TimeProbe"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 484
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_41
    .catchall {:try_start_30 .. :try_end_41} :catchall_43

    .line 485
    monitor-exit v0

    return-void

    .line 466
    :catchall_43
    move-exception v1

    :try_start_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v1
.end method


# virtual methods
.method synthetic lambda$handleIncomingJson$0$com-supertws-dubokutv-LanSyncManager(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .registers 13

    .line 194
    :try_start_0
    sget-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sCurrentDeviceId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    rem-int/lit16 v0, v0, 0xb4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 195
    iget-object v0, p0, Lcom/supertws/dubokutv/LanSyncManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/supertws/dubokutv/FamilyClock;->now(Landroid/content/Context;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/supertws/dubokutv/LanSyncManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/supertws/dubokutv/FamilyClock;->now(Landroid/content/Context;)J

    move-result-wide v2

    .line 196
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "action"

    const-string v6, "TIME_REPLY"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "from"

    sget-object v6, Lcom/supertws/dubokutv/LanSyncManager;->sCurrentDeviceId:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "to"

    .line 197
    invoke-virtual {v4, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v4, "nonce"

    invoke-virtual {p1, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "t1"

    invoke-virtual {p1, p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "t2"

    invoke-virtual {p1, p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "t3"

    invoke-virtual {p1, p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "uncertaintyMs"

    iget-object p3, p0, Lcom/supertws/dubokutv/LanSyncManager;->mContext:Landroid/content/Context;

    .line 198
    invoke-static {p3}, Lcom/supertws/dubokutv/FamilyClock;->uncertainty(Landroid/content/Context;)J

    move-result-wide p3

    invoke-virtual {p1, p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "trusted"

    iget-object p3, p0, Lcom/supertws/dubokutv/LanSyncManager;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/supertws/dubokutv/FamilyClock;->isTrusted(Landroid/content/Context;)Z

    move-result p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    .line 199
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p5}, Lcom/supertws/dubokutv/LanSyncManager;->sendUdpPacket(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6e} :catch_6f

    .line 200
    goto :goto_90

    :catch_6f
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "LAN clock reply deferred: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LanSyncManager"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :goto_90
    return-void
.end method

.method public declared-synchronized startReceiver()V
    .registers 4

    monitor-enter p0

    .line 96
    :try_start_1
    iget-boolean v0, p0, Lcom/supertws/dubokutv/LanSyncManager;->mReceiverRunning:Z

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/supertws/dubokutv/LanSyncManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->isLanSyncEnabled()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_2c

    .line 97
    :cond_12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/supertws/dubokutv/LanSyncManager;->mReceiverRunning:Z

    .line 98
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/supertws/dubokutv/LanSyncManager$1;

    invoke-direct {v2, p0}, Lcom/supertws/dubokutv/LanSyncManager$1;-><init>(Lcom/supertws/dubokutv/LanSyncManager;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 127
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 128
    const-string v0, "LanSync-Receiver"

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2e

    .line 130
    monitor-exit p0

    return-void

    .line 96
    :cond_2c
    :goto_2c
    monitor-exit p0

    return-void

    .line 95
    :catchall_2e
    move-exception v0

    :try_start_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public declared-synchronized stopReceiver()V
    .registers 2

    monitor-enter p0

    .line 133
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/supertws/dubokutv/LanSyncManager;->mReceiverRunning:Z

    .line 134
    iget-object v0, p0, Lcom/supertws/dubokutv/LanSyncManager;->mReceiverSocket:Ljava/net/DatagramSocket;

    .line 135
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_d

    .line 136
    :cond_b
    monitor-exit p0

    return-void

    .line 132
    :catchall_d
    move-exception v0

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v0
.end method
