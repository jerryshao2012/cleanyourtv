.class public Lcom/supertws/dubokutv/LanSyncManager;
.super Ljava/lang/Object;
.source "LanSyncManager.java"


# static fields
.field private static final EP_PATTERN:Ljava/util/regex/Pattern;

.field private static final PORT:I = 0x2694

.field private static final TAG:Ljava/lang/String; = "LanSyncManager"

.field public static volatile sActiveActivity:Landroid/app/Activity;

.field public static volatile sActiveExoPlayer:Ljava/lang/Object;

.field public static volatile sActiveRefreshCallback:Ljava/lang/Object;

.field public static volatile sActiveVideoAddress:Ljava/lang/Object;

.field private static volatile sCurrentDeviceId:Ljava/lang/String;

.field private static final sHandoff:Lcom/supertws/dubokutv/HandoffProgress;

.field private static volatile sInstance:Lcom/supertws/dubokutv/LanSyncManager;

.field private static volatile sLastRequestSyncTime:J

.field private static volatile sLastSentEpisode:Ljava/lang/String;

.field private static volatile sLastSentName:Ljava/lang/String;

.field private static volatile sLastSentProgressMs:J

.field private static sPendingHandoff:Lcom/supertws/dubokutv/HandoffProgress$Record;

.field private static sPendingHandoffName:Ljava/lang/String;

.field public static sRoomDb:Ljava/lang/Object;

.field public static final sSyncVersionFlow:Lkotlinx/coroutines/flow/r2;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private volatile mReceiverRunning:Z

.field private volatile mReceiverSocket:Ljava/net/DatagramSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, "tv"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sCurrentDeviceId:Ljava/lang/String;

    const-string v0, "(\\d+)"

    .line 33
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/supertws/dubokutv/LanSyncManager;->EP_PATTERN:Ljava/util/regex/Pattern;

    .line 35
    new-instance v0, Lcom/supertws/dubokutv/HandoffProgress;

    invoke-direct {v0}, Lcom/supertws/dubokutv/HandoffProgress;-><init>()V

    sput-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sHandoff:Lcom/supertws/dubokutv/HandoffProgress;

    const/4 v0, 0x0

    .line 38
    sput-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sLastSentName:Ljava/lang/String;

    .line 39
    sput-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sLastSentEpisode:Ljava/lang/String;

    const-wide/16 v1, -0x1

    .line 40
    sput-wide v1, Lcom/supertws/dubokutv/LanSyncManager;->sLastSentProgressMs:J

    const-wide/16 v1, 0x0

    .line 41
    sput-wide v1, Lcom/supertws/dubokutv/LanSyncManager;->sLastRequestSyncTime:J

    .line 44
    sput-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sActiveExoPlayer:Ljava/lang/Object;

    .line 45
    sput-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sActiveActivity:Landroid/app/Activity;

    .line 46
    sput-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sActiveVideoAddress:Ljava/lang/Object;

    .line 47
    sput-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sActiveRefreshCallback:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 744
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/flow/j;->b(Ljava/lang/Object;)Lkotlinx/coroutines/flow/r2;

    move-result-object v1

    sput-object v1, Lcom/supertws/dubokutv/LanSyncManager;->sSyncVersionFlow:Lkotlinx/coroutines/flow/r2;

    .line 746
    sput-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sRoomDb:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/supertws/dubokutv/LanSyncManager;->mReceiverRunning:Z

    .line 50
    iput-object p1, p0, Lcom/supertws/dubokutv/LanSyncManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/supertws/dubokutv/LanSyncManager;)Ljava/net/DatagramSocket;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/supertws/dubokutv/LanSyncManager;->mReceiverSocket:Ljava/net/DatagramSocket;

    return-object p0
.end method

.method static synthetic access$002(Lcom/supertws/dubokutv/LanSyncManager;Ljava/net/DatagramSocket;)Ljava/net/DatagramSocket;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/supertws/dubokutv/LanSyncManager;->mReceiverSocket:Ljava/net/DatagramSocket;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 25
    sget-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sCurrentDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000()J
    .locals 2

    .line 25
    sget-wide v0, Lcom/supertws/dubokutv/LanSyncManager;->sLastSentProgressMs:J

    return-wide v0
.end method

.method static synthetic access$1002(J)J
    .locals 0

    .line 25
    sput-wide p0, Lcom/supertws/dubokutv/LanSyncManager;->sLastSentProgressMs:J

    return-wide p0
.end method

.method static synthetic access$1100(Landroid/content/Context;)Z
    .locals 0

    .line 25
    invoke-static {p0}, Lcom/supertws/dubokutv/LanSyncManager;->currentLanEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/supertws/dubokutv/LanSyncManager;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/supertws/dubokutv/LanSyncManager;->mReceiverRunning:Z

    return p0
.end method

.method static synthetic access$202(Lcom/supertws/dubokutv/LanSyncManager;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/supertws/dubokutv/LanSyncManager;->mReceiverRunning:Z

    return p1
.end method

.method static synthetic access$300(Lcom/supertws/dubokutv/LanSyncManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/supertws/dubokutv/LanSyncManager;->handleIncomingJson(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 25
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->isLanSyncEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/supertws/dubokutv/LanSyncManager;)Landroid/content/Context;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/supertws/dubokutv/LanSyncManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600()Lcom/supertws/dubokutv/HandoffProgress;
    .locals 1

    .line 25
    sget-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sHandoff:Lcom/supertws/dubokutv/HandoffProgress;

    return-object v0
.end method

.method static synthetic access$700(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-static {p0, p1}, Lcom/supertws/dubokutv/LanSyncManager;->sendUdpPacket(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .line 25
    sget-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sLastSentName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 25
    sput-object p0, Lcom/supertws/dubokutv/LanSyncManager;->sLastSentName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .line 25
    sget-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sLastSentEpisode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 25
    sput-object p0, Lcom/supertws/dubokutv/LanSyncManager;->sLastSentEpisode:Ljava/lang/String;

    return-object p0
.end method

.method public static applyPendingHandoff(Ljava/lang/Object;)V
    .locals 5

    const-string v0, "\u5df2\u540c\u6b65\u5230 "

    .line 532
    :try_start_0
    sget-object v1, Lcom/supertws/dubokutv/LanSyncManager;->sPendingHandoff:Lcom/supertws/dubokutv/HandoffProgress$Record;

    if-eqz v1, :cond_2

    .line 533
    sget-object v2, Lcom/supertws/dubokutv/LanSyncManager;->sActiveVideoAddress:Ljava/lang/Object;

    if-nez v2, :cond_0

    goto :goto_0

    .line 534
    :cond_0
    sget-object v2, Lcom/supertws/dubokutv/LanSyncManager;->sActiveVideoAddress:Ljava/lang/Object;

    check-cast v2, Lqa/f0;

    .line 535
    iget-object v3, v1, Lcom/supertws/dubokutv/HandoffProgress$Record;->episode:Ljava/lang/String;

    iget-object v4, v2, Lqa/f0;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/supertws/dubokutv/LanSyncManager;->sPendingHandoffName:Ljava/lang/String;

    iget-object v2, v2, Lqa/f0;->b:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 536
    :cond_1
    check-cast p0, Landroidx/compose/foundation/layout/s0;

    iget-wide v2, v1, Lcom/supertws/dubokutv/HandoffProgress$Record;->position:J

    const/4 v4, 0x5

    invoke-virtual {p0, v4, v2, v3}, Landroidx/compose/foundation/layout/s0;->s(IJ)V

    const/4 p0, 0x0

    .line 537
    sput-object p0, Lcom/supertws/dubokutv/LanSyncManager;->sPendingHandoff:Lcom/supertws/dubokutv/HandoffProgress$Record;

    .line 538
    sput-object p0, Lcom/supertws/dubokutv/LanSyncManager;->sPendingHandoffName:Ljava/lang/String;

    .line 539
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/supertws/dubokutv/HandoffProgress$Record;->episode:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, v1, Lcom/supertws/dubokutv/HandoffProgress$Record;->position:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "\u79d2"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/supertws/dubokutv/LanSyncManager;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "applyPendingHandoff error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LanSyncManager"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public static broadcastProgress(Ljava/lang/Object;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 425
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->isLanSyncEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 426
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/supertws/dubokutv/LanSyncManager$5;

    invoke-direct {v1, p0}, Lcom/supertws/dubokutv/LanSyncManager$5;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 464
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static bumpSyncVersion()V
    .locals 10

    const-string v0, "b"

    const-string v1, "Failed to update ObservedTableVersions: "

    const-string v2, "bumpSyncVersion to "

    .line 749
    sget-object v3, Lcom/supertws/dubokutv/LanSyncManager;->sRoomDb:Ljava/lang/Object;

    const/4 v4, 0x1

    const-string v5, "LanSyncManager"

    if-eqz v3, :cond_0

    .line 752
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v6, "g"

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Class;

    invoke-virtual {v3, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 753
    sget-object v6, Lcom/supertws/dubokutv/LanSyncManager;->sRoomDb:Ljava/lang/Object;

    new-array v8, v7, [Ljava/lang/Object;

    invoke-virtual {v3, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 755
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    new-array v8, v7, [Ljava/lang/Class;

    invoke-virtual {v6, v0, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v8, v7, [Ljava/lang/Object;

    .line 756
    invoke-virtual {v6, v3, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Triggered Room invalidationTracker.refreshVersionsSync()"

    .line 757
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 762
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 763
    invoke-virtual {v6, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 764
    invoke-virtual {v6, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 766
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v8, "i"

    invoke-virtual {v6, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 767
    invoke-virtual {v6, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 768
    invoke-virtual {v6, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 770
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    new-array v8, v4, [Ljava/lang/Class;

    const-class v9, Ljava/util/Set;

    aput-object v9, v8, v7

    invoke-virtual {v6, v0, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v6, v4, [Ljava/lang/Object;

    .line 771
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v0, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Triggered ObservedTableVersions.b for table 0 (records)"

    .line 772
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 776
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 780
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Failed to refresh Room tracker: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    :cond_0
    :goto_0
    sget-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sSyncVersionFlow:Lkotlinx/coroutines/flow/r2;

    if-eqz v0, :cond_1

    .line 785
    :try_start_3
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v4

    .line 786
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lkotlinx/coroutines/flow/r2;->j(Ljava/lang/Object;)V

    .line 787
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    :cond_1
    return-void
.end method

.method public static checkSyncOnPlay(Ljava/lang/Object;)Z
    .locals 8

    const-string v0, "\u5df2\u540c\u6b65\u5230 "

    const/4 v1, 0x0

    if-eqz p0, :cond_7

    .line 493
    :try_start_0
    sget-object v2, Lcom/supertws/dubokutv/LanSyncManager;->sActiveVideoAddress:Ljava/lang/Object;

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 494
    :cond_0
    sget-object v2, Lcom/supertws/dubokutv/LanSyncManager;->sActiveVideoAddress:Ljava/lang/Object;

    check-cast v2, Lqa/f0;

    .line 495
    sget-object v3, Lcom/supertws/dubokutv/PlaybackSaveGuard;->INSTANCE:Lcom/supertws/dubokutv/PlaybackSaveGuard;

    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/supertws/dubokutv/PlaybackSaveGuard;->initialize(Landroid/content/Context;)V

    .line 496
    sget-object v3, Lcom/supertws/dubokutv/PlaybackSaveGuard;->INSTANCE:Lcom/supertws/dubokutv/PlaybackSaveGuard;

    iget-object v4, v2, Lqa/f0;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/supertws/dubokutv/PlaybackSaveGuard;->onUserPlay(Ljava/lang/String;)V

    .line 497
    check-cast p0, Landroidx/media3/exoplayer/h0;

    .line 498
    sget-object v3, Lcom/supertws/dubokutv/LanSyncManager;->sHandoff:Lcom/supertws/dubokutv/HandoffProgress;

    iget-object v4, v2, Lqa/f0;->b:Ljava/lang/String;

    iget-object v5, v2, Lqa/f0;->c:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/h0;->M()J

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/supertws/dubokutv/HandoffProgress;->select(Ljava/lang/String;Ljava/lang/String;J)Lcom/supertws/dubokutv/HandoffProgress$Record;

    move-result-object v3

    if-nez v3, :cond_1

    return v1

    .line 500
    :cond_1
    iget-object v4, v3, Lcom/supertws/dubokutv/HandoffProgress$Record;->episode:Ljava/lang/String;

    iget-object v5, v2, Lqa/f0;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 501
    iget-wide v4, v3, Lcom/supertws/dubokutv/HandoffProgress$Record;->position:J

    const/4 v2, 0x5

    invoke-virtual {p0, v2, v4, v5}, Landroidx/media3/exoplayer/h0;->s(IJ)V

    .line 502
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, v3, Lcom/supertws/dubokutv/HandoffProgress$Record;->position:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "\u79d2"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/supertws/dubokutv/LanSyncManager;->showToast(Ljava/lang/String;)V

    return v1

    .line 506
    :cond_2
    iget-object p0, v2, Lqa/f0;->n:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 508
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 509
    check-cast v4, Lqa/s;

    .line 510
    iget-object v5, v3, Lcom/supertws/dubokutv/HandoffProgress$Record;->episode:Ljava/lang/String;

    iget-object v6, v4, Lqa/s;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object p0, v4, Lqa/s;->a:Ljava/lang/String;

    goto :goto_0

    :cond_4
    move-object p0, v0

    .line 513
    :goto_0
    sget-object v4, Lcom/supertws/dubokutv/LanSyncManager;->sActiveRefreshCallback:Ljava/lang/Object;

    if-eqz v4, :cond_6

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_1

    .line 514
    :cond_5
    sput-object v3, Lcom/supertws/dubokutv/LanSyncManager;->sPendingHandoff:Lcom/supertws/dubokutv/HandoffProgress$Record;

    .line 515
    iget-object v2, v2, Lqa/f0;->b:Ljava/lang/String;

    sput-object v2, Lcom/supertws/dubokutv/LanSyncManager;->sPendingHandoffName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 517
    :try_start_1
    sget-object v2, Lcom/supertws/dubokutv/LanSyncManager;->sActiveRefreshCallback:Ljava/lang/Object;

    check-cast v2, Lrb/k;

    invoke-interface {v2, p0}, Lrb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 519
    :try_start_2
    sput-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sPendingHandoff:Lcom/supertws/dubokutv/HandoffProgress$Record;

    .line 520
    sput-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sPendingHandoffName:Ljava/lang/String;

    .line 521
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_6
    :goto_1
    return v1

    :catchall_1
    move-exception p0

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "checkSyncOnPlay error: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LanSyncManager"

    invoke-static {v2, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_2
    return v1
.end method

.method private static currentLanEnabled(Landroid/content/Context;)Z
    .locals 0

    .line 665
    invoke-static {p0}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/supertws/dubokutv/FamilyIdentity;->isLanSyncEnabled()Z

    move-result p0

    return p0
.end method

.method public static formatButtonText(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "\u96c6"

    const-string v1, "\u7b2c"

    const-string v2, "\u7ee7\u7eed\u64ad\u653e "

    .line 727
    :try_start_0
    invoke-static {p0, p1}, Lcom/supertws/dubokutv/LanSyncManager;->resolveLatestRecord(Ljava/lang/Object;Ljava/lang/Object;)Lpa/c;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 728
    iget-object p1, p0, Lpa/c;->c:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lpa/c;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 730
    iget-wide v3, p0, Lpa/c;->e:J

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-lez p1, :cond_0

    .line 731
    iget-wide v3, p0, Lpa/c;->d:J

    long-to-double v3, v3

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double v3, v3, v5

    iget-wide v5, p0, Lpa/c;->e:J

    long-to-double v5, v5

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int p1, v3

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 733
    :goto_0
    iget-object p0, p0, Lpa/c;->c:Ljava/lang/String;

    .line 734
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 735
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 737
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "%"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_2
    return-object p2
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    .line 66
    sget-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sInstance:Lcom/supertws/dubokutv/LanSyncManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sInstance:Lcom/supertws/dubokutv/LanSyncManager;

    iget-object v0, v0, Lcom/supertws/dubokutv/LanSyncManager;->mContext:Landroid/content/Context;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/supertws/dubokutv/LanSyncManager;
    .locals 2

    .line 54
    sget-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sInstance:Lcom/supertws/dubokutv/LanSyncManager;

    if-nez v0, :cond_1

    .line 55
    const-class v0, Lcom/supertws/dubokutv/LanSyncManager;

    monitor-enter v0

    .line 56
    :try_start_0
    sget-object v1, Lcom/supertws/dubokutv/LanSyncManager;->sInstance:Lcom/supertws/dubokutv/LanSyncManager;

    if-nez v1, :cond_0

    if-eqz p0, :cond_0

    .line 57
    new-instance v1, Lcom/supertws/dubokutv/LanSyncManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/supertws/dubokutv/LanSyncManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/supertws/dubokutv/LanSyncManager;->sInstance:Lcom/supertws/dubokutv/LanSyncManager;

    .line 58
    sget-object p0, Lcom/supertws/dubokutv/LanSyncManager;->sInstance:Lcom/supertws/dubokutv/LanSyncManager;

    iget-object p0, p0, Lcom/supertws/dubokutv/LanSyncManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/supertws/dubokutv/FamilyIdentity;->isLanSyncEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/supertws/dubokutv/LanSyncManager;->sInstance:Lcom/supertws/dubokutv/LanSyncManager;

    invoke-virtual {p0}, Lcom/supertws/dubokutv/LanSyncManager;->startReceiver()V

    .line 60
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 62
    :cond_1
    :goto_0
    sget-object p0, Lcom/supertws/dubokutv/LanSyncManager;->sInstance:Lcom/supertws/dubokutv/LanSyncManager;

    return-object p0
.end method

.method private handleIncomingJson(Ljava/lang/String;Ljava/lang/String;)V
    .locals 21

    move-object/from16 v15, p0

    move-object/from16 v0, p2

    const-string v1, ""

    const-string v13, "LanSyncManager"

    const-string v2, "Rejected dummy test packet with example.com for: "

    const-string v3, "Received REQUEST_SYNC from "

    .line 140
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->isLanSyncEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    .line 142
    :cond_0
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    move-object/from16 v5, p1

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "from"

    .line 143
    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 144
    sget-object v5, Lcom/supertws/dubokutv/LanSyncManager;->sCurrentDeviceId:Ljava/lang/String;

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-void

    :cond_1
    const-string v5, "action"

    .line 148
    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 149
    iget-object v6, v15, Lcom/supertws/dubokutv/LanSyncManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v6

    const-string v7, "FAMILY_DISCOVER"

    .line 150
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v7, :cond_2

    :try_start_1
    const-string v2, "nonce"

    .line 151
    invoke-virtual {v4, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/supertws/dubokutv/FamilyIdentity;->offer(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/supertws/dubokutv/LanSyncManager;->sendUdpPacket(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v0, "Could not send family offer"

    .line 152
    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_2
    const-string v7, "FAMILY_OFFER"

    .line 155
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 156
    invoke-virtual {v6, v4}, Lcom/supertws/dubokutv/FamilyIdentity;->adopt(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v15, Lcom/supertws/dubokutv/LanSyncManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/supertws/dubokutv/CloudSyncClient;->fetchKnownPeers(Landroid/content/Context;)V

    :cond_3
    return-void

    :cond_4
    const-string v6, "REQUEST_SYNC"

    .line 159
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "), responding with all local records..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-direct {v15, v0}, Lcom/supertws/dubokutv/LanSyncManager;->respondAllRecords(Ljava/lang/String;)V

    return-void

    :cond_5
    const-string v0, "name"

    .line 165
    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 166
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_6
    const-string v0, "id"

    .line 168
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v0, "episode"

    .line 169
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "progressInMillis"

    .line 170
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    const-string v0, "durationInMillis"

    .line 171
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v16

    const-string v0, "modifiedAt"

    .line 172
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    const-string v0, "videoPageUrl"

    .line 173
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v0, "detailPageUrl"

    .line 174
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "posterUrl"

    .line 175
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const-string v1, "example.com"

    if-eqz v0, :cond_7

    .line 177
    :try_start_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    :cond_7
    if-eqz v11, :cond_9

    .line 178
    invoke-virtual {v11, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 179
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 183
    :cond_9
    new-instance v4, Ljava/lang/Thread;

    new-instance v2, Lcom/supertws/dubokutv/LanSyncManager$2;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v1, v2

    move-object/from16 v18, v2

    move-object/from16 v2, p0

    move-object/from16 v19, v4

    move-object v4, v0

    move-object/from16 v20, v13

    move-object v0, v14

    move-wide/from16 v13, v16

    move-object v15, v0

    :try_start_4
    invoke-direct/range {v1 .. v15}, Lcom/supertws/dubokutv/LanSyncManager$2;-><init>(Lcom/supertws/dubokutv/LanSyncManager;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    move-object/from16 v1, v18

    move-object/from16 v0, v19

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 304
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object/from16 v20, v13

    .line 306
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to parse incoming UDP json: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v20

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method private static isLanSyncEnabled()Z
    .locals 1

    .line 124
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    invoke-static {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->isLanSyncEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static mergeCloudSnapshot(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 0

    .line 712
    invoke-static {p0}, Lcom/supertws/dubokutv/CloudSnapshotMerger;->merge(Lorg/json/JSONObject;)Z

    move-result p0

    return p0
.end method

.method public static offerCloudHandoff(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)V
    .locals 8

    .line 716
    invoke-static {p0, p5, p6}, Lcom/supertws/dubokutv/LanSyncManager;->onRemoteProgress(Ljava/lang/String;J)V

    .line 717
    sget-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sHandoff:Lcom/supertws/dubokutv/HandoffProgress;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/supertws/dubokutv/HandoffProgress;->offer(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)V

    return-void
.end method

.method public static onActivityPause(Landroid/app/Activity;)V
    .locals 0

    .line 675
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->onActivityPause()V

    return-void
.end method

.method public static onActivityResume(Landroid/app/Activity;)V
    .locals 0

    .line 669
    sput-object p0, Lcom/supertws/dubokutv/LanSyncManager;->sActiveActivity:Landroid/app/Activity;

    .line 670
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->requestSyncDebounced()V

    .line 671
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/supertws/dubokutv/CloudSyncClient;->fetchOnResume(Landroid/content/Context;)V

    return-void
.end method

.method public static onAppCreate(Landroid/content/Context;)V
    .locals 2

    .line 639
    invoke-static {p0}, Lcom/supertws/dubokutv/LanSyncManager;->getInstance(Landroid/content/Context;)Lcom/supertws/dubokutv/LanSyncManager;

    move-result-object p0

    .line 640
    iget-object v0, p0, Lcom/supertws/dubokutv/LanSyncManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v0

    .line 641
    invoke-virtual {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->ensure()V

    .line 642
    invoke-virtual {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->deviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sCurrentDeviceId:Ljava/lang/String;

    .line 643
    iget-object v0, p0, Lcom/supertws/dubokutv/LanSyncManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/supertws/dubokutv/CloudSyncClient;->initialize(Landroid/content/Context;)V

    .line 644
    iget-object v0, p0, Lcom/supertws/dubokutv/LanSyncManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/supertws/dubokutv/CloudSyncClient;->fetchOnStartup(Landroid/content/Context;)V

    .line 645
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/supertws/dubokutv/LanSyncManager$7;

    invoke-direct {v1, p0}, Lcom/supertws/dubokutv/LanSyncManager$7;-><init>(Lcom/supertws/dubokutv/LanSyncManager;)V

    const-string p0, "LanSync-Family"

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 660
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 661
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->requestSyncFromLan()V

    return-void
.end method

.method public static onHistoryOpened()V
    .locals 1

    .line 679
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->requestSyncDebounced()V

    .line 680
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 681
    invoke-static {v0}, Lcom/supertws/dubokutv/CloudSyncClient;->fetchOnHistory(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static onLanSyncSettingChanged(Z)V
    .locals 1

    .line 129
    sget-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sInstance:Lcom/supertws/dubokutv/LanSyncManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_1

    .line 132
    invoke-virtual {v0}, Lcom/supertws/dubokutv/LanSyncManager;->startReceiver()V

    .line 133
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->requestSyncFromLan()V

    goto :goto_0

    .line 135
    :cond_1
    invoke-virtual {v0}, Lcom/supertws/dubokutv/LanSyncManager;->stopReceiver()V

    :goto_0
    return-void
.end method

.method public static onPlaybackSaveCommitted(Ljava/lang/Object;)V
    .locals 10

    .line 703
    move-object v0, p0

    check-cast v0, Lpa/c;

    .line 704
    sget-object v1, Lcom/supertws/dubokutv/PlaybackSaveGuard;->INSTANCE:Lcom/supertws/dubokutv/PlaybackSaveGuard;

    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/supertws/dubokutv/PlaybackSaveGuard;->initialize(Landroid/content/Context;)V

    .line 705
    sget-object v3, Lcom/supertws/dubokutv/PlaybackSaveGuard;->INSTANCE:Lcom/supertws/dubokutv/PlaybackSaveGuard;

    iget-object v4, v0, Lpa/c;->b:Ljava/lang/String;

    iget-object v5, v0, Lpa/c;->c:Ljava/lang/String;

    iget-wide v6, v0, Lpa/c;->d:J

    iget-wide v8, v0, Lpa/c;->g:J

    invoke-virtual/range {v3 .. v9}, Lcom/supertws/dubokutv/PlaybackSaveGuard;->committedIfCurrent(Ljava/lang/String;Ljava/lang/String;JJ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 706
    :cond_0
    invoke-static {p0}, Lcom/supertws/dubokutv/LanSyncManager;->broadcastProgress(Ljava/lang/Object;)V

    .line 707
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->onCommittedSave()V

    return-void
.end method

.method public static onRecordSaved()V
    .locals 0

    .line 722
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->onCommittedSave()V

    return-void
.end method

.method public static onRemoteProgress(Ljava/lang/String;J)V
    .locals 2

    if-eqz p0, :cond_0

    .line 695
    :try_start_0
    sget-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sActiveVideoAddress:Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sActiveVideoAddress:Ljava/lang/Object;

    check-cast v0, Lqa/f0;

    iget-object v0, v0, Lqa/f0;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 696
    sget-object v0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->INSTANCE:Lcom/supertws/dubokutv/PlaybackSaveGuard;

    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/supertws/dubokutv/PlaybackSaveGuard;->initialize(Landroid/content/Context;)V

    .line 697
    sget-object v0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->INSTANCE:Lcom/supertws/dubokutv/PlaybackSaveGuard;

    invoke-virtual {v0, p0, p1, p2}, Lcom/supertws/dubokutv/PlaybackSaveGuard;->remoteUpdated(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public static parseEpisodeNum(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 71
    :cond_0
    sget-object v1, Lcom/supertws/dubokutv/LanSyncManager;->EP_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 72
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 74
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_1
    return v0
.end method

.method public static registerActivePlayer(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "registerActivePlayer: drama="

    if-eqz p0, :cond_0

    .line 468
    sput-object p0, Lcom/supertws/dubokutv/LanSyncManager;->sActiveExoPlayer:Ljava/lang/Object;

    :cond_0
    if-eqz p1, :cond_1

    .line 469
    sput-object p1, Lcom/supertws/dubokutv/LanSyncManager;->sActiveActivity:Landroid/app/Activity;

    :cond_1
    if-eqz p2, :cond_2

    .line 470
    sput-object p2, Lcom/supertws/dubokutv/LanSyncManager;->sActiveVideoAddress:Ljava/lang/Object;

    :cond_2
    if-eqz p3, :cond_3

    .line 471
    sput-object p3, Lcom/supertws/dubokutv/LanSyncManager;->sActiveRefreshCallback:Ljava/lang/Object;

    :cond_3
    if-eqz p2, :cond_5

    .line 474
    :try_start_0
    check-cast p2, Lqa/f0;

    const-string p0, "LanSyncManager"

    .line 475
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p2, Lqa/f0;->b:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", ep="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lqa/f0;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", callback="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/supertws/dubokutv/LanSyncManager;->sActiveRefreshCallback:Ljava/lang/Object;

    if-eqz p2, :cond_4

    const/4 p2, 0x1

    goto :goto_0

    :cond_4
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_5
    return-void
.end method

.method public static registerActiveVideo(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "registerActiveVideo: drama="

    if-eqz p0, :cond_0

    .line 481
    sput-object p0, Lcom/supertws/dubokutv/LanSyncManager;->sActiveVideoAddress:Ljava/lang/Object;

    :cond_0
    if-eqz p1, :cond_1

    .line 482
    sput-object p1, Lcom/supertws/dubokutv/LanSyncManager;->sActiveRefreshCallback:Ljava/lang/Object;

    :cond_1
    if-eqz p0, :cond_3

    .line 485
    :try_start_0
    check-cast p0, Lqa/f0;

    const-string p1, "LanSyncManager"

    .line 486
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lqa/f0;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", ep="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lqa/f0;->c:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", callback="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/supertws/dubokutv/LanSyncManager;->sActiveRefreshCallback:Ljava/lang/Object;

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    return-void
.end method

.method public static requestSyncDebounced()V
    .locals 7

    .line 373
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 374
    sget-wide v2, Lcom/supertws/dubokutv/LanSyncManager;->sLastRequestSyncTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xbb8

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    return-void

    .line 377
    :cond_0
    sput-wide v0, Lcom/supertws/dubokutv/LanSyncManager;->sLastRequestSyncTime:J

    .line 378
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->requestSyncFromLan()V

    return-void
.end method

.method public static requestSyncFromLan()V
    .locals 2

    .line 354
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->isLanSyncEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 355
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/supertws/dubokutv/LanSyncManager$4;

    invoke-direct {v1}, Lcom/supertws/dubokutv/LanSyncManager$4;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 369
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static resolveLatestRecord(Ljava/lang/Object;Ljava/lang/Object;)Lpa/c;
    .locals 24

    const-string v1, "LanSyncManager"

    const-string v0, "resolveLatestRecord for "

    .line 546
    move-object/from16 v2, p0

    check-cast v2, Lpa/c;

    .line 548
    :try_start_0
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->getAppContext()Landroid/content/Context;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v3, :cond_0

    return-object v2

    :cond_0
    const/4 v4, 0x0

    if-eqz p1, :cond_1

    .line 556
    :try_start_1
    move-object/from16 v5, p1

    check-cast v5, Lqa/p;

    .line 557
    iget-object v6, v5, Lqa/p;->f:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 558
    :try_start_2
    iget-object v5, v5, Lqa/p;->b:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    nop

    goto :goto_0

    :catchall_1
    nop

    move-object v6, v4

    :goto_0
    move-object v5, v4

    goto :goto_1

    :cond_1
    move-object v5, v4

    move-object v6, v5

    :goto_1
    if-eqz v2, :cond_5

    if-eqz v6, :cond_2

    .line 562
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    iget-object v6, v2, Lpa/c;->b:Ljava/lang/String;

    :cond_3
    if-eqz v5, :cond_4

    .line 563
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_4
    iget-object v5, v2, Lpa/c;->i:Ljava/lang/String;

    :cond_5
    if-eqz v6, :cond_6

    .line 566
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_6
    if-eqz v5, :cond_13

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_7

    goto/16 :goto_9

    :cond_7
    const-string v7, "record_database"

    const/4 v8, 0x0

    .line 570
    invoke-virtual {v3, v7, v8, v4}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    if-nez v3, :cond_8

    return-object v2

    :cond_8
    if-eqz v6, :cond_9

    .line 574
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "SELECT id, name, episode, progressInMillis, durationInMillis, createdAt, modifiedAt, videoPageUrl, detailPageUrl, posterUrl FROM records WHERE name = ? OR detailPageUrl = ? ORDER BY modifiedAt DESC LIMIT 1"

    .line 575
    filled-new-array {v6, v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    goto :goto_2

    :cond_9
    if-eqz v6, :cond_a

    .line 577
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "SELECT id, name, episode, progressInMillis, durationInMillis, createdAt, modifiedAt, videoPageUrl, detailPageUrl, posterUrl FROM records WHERE name = ? ORDER BY modifiedAt DESC LIMIT 1"

    .line 578
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    goto :goto_2

    :cond_a
    const-string v4, "SELECT id, name, episode, progressInMillis, durationInMillis, createdAt, modifiedAt, videoPageUrl, detailPageUrl, posterUrl FROM records WHERE detailPageUrl = ? ORDER BY modifiedAt DESC LIMIT 1"

    .line 581
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    :goto_2
    if-eqz v4, :cond_12

    .line 586
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 587
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    .line 588
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    .line 589
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    .line 590
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    const/4 v8, 0x4

    .line 591
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    const/4 v8, 0x5

    .line 592
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    const/4 v8, 0x6

    .line 593
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    const/4 v8, 0x7

    .line 594
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x8

    .line 595
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x9

    .line 596
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 597
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 598
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 600
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": resolved episode="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", progress="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v11, 0x3e8

    div-long v11, v13, v11

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "s"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    new-instance v0, Lpa/c;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const-string v3, ""

    if-eqz v5, :cond_b

    goto :goto_3

    :cond_b
    move-object v5, v3

    :goto_3
    if-eqz v6, :cond_c

    move-object v11, v6

    goto :goto_4

    :cond_c
    move-object v11, v3

    :goto_4
    if-eqz v7, :cond_d

    move-object v12, v7

    goto :goto_5

    :cond_d
    move-object v12, v3

    :goto_5
    if-eqz v8, :cond_e

    move-object/from16 v21, v8

    goto :goto_6

    :cond_e
    move-object/from16 v21, v3

    :goto_6
    if-eqz v9, :cond_f

    move-object/from16 v22, v9

    goto :goto_7

    :cond_f
    move-object/from16 v22, v3

    :goto_7
    if-eqz v10, :cond_10

    move-object/from16 v23, v10

    goto :goto_8

    :cond_10
    move-object/from16 v23, v3

    :goto_8
    move-object v9, v0

    move-object v10, v5

    .line 611
    :try_start_4
    invoke-direct/range {v9 .. v23}, Lpa/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 614
    :cond_11
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 616
    :cond_12
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_a

    :cond_13
    :goto_9
    return-object v2

    :catchall_2
    move-exception v0

    .line 618
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "resolveLatestRecord error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    return-object v2
.end method

.method private respondAllRecords(Ljava/lang/String;)V
    .locals 2

    .line 311
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->isLanSyncEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 312
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/supertws/dubokutv/LanSyncManager$3;

    invoke-direct {v1, p0, p1}, Lcom/supertws/dubokutv/LanSyncManager$3;-><init>(Lcom/supertws/dubokutv/LanSyncManager;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 350
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static sendUdpPacket(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "sendUdpPacket error: "

    .line 382
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->isLanSyncEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 385
    :try_start_0
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 386
    new-instance v2, Ljava/net/DatagramSocket;

    invoke-direct {v2}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x1

    .line 387
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/net/DatagramSocket;->setBroadcast(Z)V

    const/16 v1, 0x2695

    const/16 v3, 0x2694

    if-eqz p1, :cond_1

    .line 389
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 390
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    .line 391
    new-instance v4, Ljava/net/DatagramPacket;

    array-length v5, p0

    invoke-direct {v4, p0, v5, p1, v3}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    invoke-virtual {v2, v4}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 392
    new-instance v4, Ljava/net/DatagramPacket;

    array-length v5, p0

    invoke-direct {v4, p0, v5, p1, v1}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    invoke-virtual {v2, v4}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    :cond_1
    const-string p1, "255.255.255.255"

    .line 396
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    .line 397
    new-instance v4, Ljava/net/DatagramPacket;

    array-length v5, p0

    invoke-direct {v4, p0, v5, p1, v3}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    invoke-virtual {v2, v4}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 398
    new-instance v4, Ljava/net/DatagramPacket;

    array-length v5, p0

    invoke-direct {v4, p0, v5, p1, v1}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    invoke-virtual {v2, v4}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 402
    :try_start_2
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object p1

    :cond_2
    :goto_0
    if-eqz p1, :cond_5

    .line 403
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 404
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 405
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    .line 406
    :cond_3
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InterfaceAddress;

    .line 407
    invoke-virtual {v4}, Ljava/net/InterfaceAddress;->getBroadcast()Ljava/net/InetAddress;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 409
    new-instance v5, Ljava/net/DatagramPacket;

    array-length v6, p0

    invoke-direct {v5, p0, v6, v4, v3}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    invoke-virtual {v2, v5}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 410
    new-instance v5, Ljava/net/DatagramPacket;

    array-length v6, p0

    invoke-direct {v5, p0, v6, v4, v1}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    invoke-virtual {v2, v5}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 418
    :catchall_0
    :cond_5
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result p0

    if-nez p0, :cond_6

    .line 419
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    goto :goto_3

    :catchall_1
    move-exception p0

    move-object v1, v2

    goto :goto_4

    :catch_0
    move-exception p0

    move-object v1, v2

    goto :goto_2

    :catchall_2
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception p0

    :goto_2
    :try_start_3
    const-string p1, "LanSyncManager"

    .line 416
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_6

    .line 418
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result p0

    if-nez p0, :cond_6

    .line 419
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    :cond_6
    :goto_3
    return-void

    :goto_4
    if-eqz v1, :cond_7

    .line 418
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result p1

    if-nez p1, :cond_7

    .line 419
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    .line 421
    :cond_7
    throw p0
.end method

.method private static showToast(Ljava/lang/String;)V
    .locals 2

    .line 625
    :try_start_0
    sget-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sActiveActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 626
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/supertws/dubokutv/LanSyncManager$6;

    invoke-direct {v1, p0}, Lcom/supertws/dubokutv/LanSyncManager$6;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public static skipUnchangedPlaybackSave(Ljava/lang/Object;)Z
    .locals 7

    .line 685
    check-cast p0, Lpa/c;

    .line 686
    sget-object v0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->INSTANCE:Lcom/supertws/dubokutv/PlaybackSaveGuard;

    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/supertws/dubokutv/PlaybackSaveGuard;->initialize(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 688
    :try_start_0
    sget-object v1, Lcom/supertws/dubokutv/LanSyncManager;->sActiveExoPlayer:Ljava/lang/Object;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/supertws/dubokutv/LanSyncManager;->sActiveExoPlayer:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/foundation/layout/s0;

    invoke-virtual {v1}, Landroidx/compose/foundation/layout/s0;->m()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    move v6, v0

    goto :goto_0

    :catchall_0
    const/4 v6, 0x0

    .line 690
    :goto_0
    sget-object v1, Lcom/supertws/dubokutv/PlaybackSaveGuard;->INSTANCE:Lcom/supertws/dubokutv/PlaybackSaveGuard;

    iget-object v2, p0, Lpa/c;->b:Ljava/lang/String;

    iget-object v3, p0, Lpa/c;->c:Ljava/lang/String;

    iget-wide v4, p0, Lpa/c;->d:J

    invoke-virtual/range {v1 .. v6}, Lcom/supertws/dubokutv/PlaybackSaveGuard;->shouldSkip(Ljava/lang/String;Ljava/lang/String;JZ)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public declared-synchronized startReceiver()V
    .locals 3

    monitor-enter p0

    .line 81
    :try_start_0
    iget-boolean v0, p0, Lcom/supertws/dubokutv/LanSyncManager;->mReceiverRunning:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/supertws/dubokutv/LanSyncManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->isLanSyncEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lcom/supertws/dubokutv/LanSyncManager;->mReceiverRunning:Z

    .line 83
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/supertws/dubokutv/LanSyncManager$1;

    invoke-direct {v2, p0}, Lcom/supertws/dubokutv/LanSyncManager$1;-><init>(Lcom/supertws/dubokutv/LanSyncManager;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 112
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    const-string v0, "LanSync-Receiver"

    .line 113
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    monitor-exit p0

    return-void

    .line 81
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopReceiver()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 118
    :try_start_0
    iput-boolean v0, p0, Lcom/supertws/dubokutv/LanSyncManager;->mReceiverRunning:Z

    .line 119
    iget-object v0, p0, Lcom/supertws/dubokutv/LanSyncManager;->mReceiverSocket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
