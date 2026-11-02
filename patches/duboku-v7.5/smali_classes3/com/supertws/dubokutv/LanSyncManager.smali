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

.field private static final sCurrentDeviceId:Ljava/lang/String;

.field private static final sHandoff:Lcom/supertws/dubokutv/HandoffProgress;

.field private static volatile sInstance:Lcom/supertws/dubokutv/LanSyncManager;

.field private static volatile sLastSentEpisode:Ljava/lang/String;

.field private static volatile sLastSentName:Ljava/lang/String;

.field private static volatile sLastSentProgressMs:J

.field private static sPendingHandoff:Lcom/supertws/dubokutv/HandoffProgress$Record;

.field private static sPendingHandoffName:Ljava/lang/String;

.field public static sRoomDb:Ljava/lang/Object;

.field public static final sSyncVersionFlow:Lkotlinx/coroutines/flow/r2;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mReceiverRunning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, "tv"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sCurrentDeviceId:Ljava/lang/String;

    .line 32
    const-string v0, "(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/supertws/dubokutv/LanSyncManager;->EP_PATTERN:Ljava/util/regex/Pattern;

    .line 34
    new-instance v0, Lcom/supertws/dubokutv/HandoffProgress;

    invoke-direct {v0}, Lcom/supertws/dubokutv/HandoffProgress;-><init>()V

    sput-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sHandoff:Lcom/supertws/dubokutv/HandoffProgress;

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sLastSentName:Ljava/lang/String;

    .line 38
    sput-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sLastSentEpisode:Ljava/lang/String;

    .line 39
    const-wide/16 v1, -0x1

    sput-wide v1, Lcom/supertws/dubokutv/LanSyncManager;->sLastSentProgressMs:J

    .line 42
    sput-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sActiveExoPlayer:Ljava/lang/Object;

    .line 43
    sput-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sActiveActivity:Landroid/app/Activity;

    .line 44
    sput-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sActiveVideoAddress:Ljava/lang/Object;

    .line 45
    sput-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sActiveRefreshCallback:Ljava/lang/Object;

    .line 562
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/flow/j;->b(Ljava/lang/Object;)Lkotlinx/coroutines/flow/r2;

    move-result-object v1

    sput-object v1, Lcom/supertws/dubokutv/LanSyncManager;->sSyncVersionFlow:Lkotlinx/coroutines/flow/r2;

    .line 564
    sput-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sRoomDb:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/supertws/dubokutv/LanSyncManager;->mReceiverRunning:Z

    .line 48
    iput-object p1, p0, Lcom/supertws/dubokutv/LanSyncManager;->mContext:Landroid/content/Context;

    .line 49
    invoke-virtual {p0}, Lcom/supertws/dubokutv/LanSyncManager;->startReceiver()V

    .line 50
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 25
    sget-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sCurrentDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/supertws/dubokutv/LanSyncManager;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/supertws/dubokutv/LanSyncManager;->mReceiverRunning:Z

    return p0
.end method

.method static synthetic access$102(Lcom/supertws/dubokutv/LanSyncManager;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/supertws/dubokutv/LanSyncManager;->mReceiverRunning:Z

    return p1
.end method

.method static synthetic access$200(Lcom/supertws/dubokutv/LanSyncManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/supertws/dubokutv/LanSyncManager;->handleIncomingJson(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/supertws/dubokutv/LanSyncManager;)Landroid/content/Context;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/supertws/dubokutv/LanSyncManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400()Lcom/supertws/dubokutv/HandoffProgress;
    .locals 1

    .line 25
    sget-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sHandoff:Lcom/supertws/dubokutv/HandoffProgress;

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-static {p0, p1}, Lcom/supertws/dubokutv/LanSyncManager;->sendUdpPacket(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .line 25
    sget-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sLastSentName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 25
    sput-object p0, Lcom/supertws/dubokutv/LanSyncManager;->sLastSentName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .line 25
    sget-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sLastSentEpisode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 25
    sput-object p0, Lcom/supertws/dubokutv/LanSyncManager;->sLastSentEpisode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800()J
    .locals 2

    .line 25
    sget-wide v0, Lcom/supertws/dubokutv/LanSyncManager;->sLastSentProgressMs:J

    return-wide v0
.end method

.method static synthetic access$802(J)J
    .locals 0

    .line 25
    sput-wide p0, Lcom/supertws/dubokutv/LanSyncManager;->sLastSentProgressMs:J

    return-wide p0
.end method

.method public static applyPendingHandoff(Ljava/lang/Object;)V
    .locals 4

    .line 427
    :try_start_0
    sget-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sPendingHandoff:Lcom/supertws/dubokutv/HandoffProgress$Record;

    .line 428
    if-eqz v0, :cond_3

    sget-object v1, Lcom/supertws/dubokutv/LanSyncManager;->sActiveVideoAddress:Ljava/lang/Object;

    if-nez v1, :cond_0

    goto :goto_1

    .line 429
    :cond_0
    sget-object v1, Lcom/supertws/dubokutv/LanSyncManager;->sActiveVideoAddress:Ljava/lang/Object;

    check-cast v1, Lqa/f0;

    .line 430
    iget-object v2, v0, Lcom/supertws/dubokutv/HandoffProgress$Record;->episode:Ljava/lang/String;

    iget-object v3, v1, Lqa/f0;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/supertws/dubokutv/LanSyncManager;->sPendingHandoffName:Ljava/lang/String;

    iget-object v1, v1, Lqa/f0;->b:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 431
    :cond_1
    check-cast p0, Landroidx/compose/foundation/layout/s0;

    iget-wide v1, v0, Lcom/supertws/dubokutv/HandoffProgress$Record;->position:J

    const/4 v3, 0x5

    invoke-virtual {p0, v3, v1, v2}, Landroidx/compose/foundation/layout/s0;->s(IJ)V

    .line 432
    const/4 p0, 0x0

    sput-object p0, Lcom/supertws/dubokutv/LanSyncManager;->sPendingHandoff:Lcom/supertws/dubokutv/HandoffProgress$Record;

    .line 433
    sput-object p0, Lcom/supertws/dubokutv/LanSyncManager;->sPendingHandoffName:Ljava/lang/String;

    .line 434
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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    goto :goto_2

    .line 430
    :cond_2
    :goto_0
    return-void

    .line 428
    :cond_3
    :goto_1
    return-void

    .line 435
    :catchall_0
    move-exception p0

    .line 436
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

    .line 438
    :goto_2
    return-void
.end method

.method public static broadcastProgress(Ljava/lang/Object;)V
    .locals 2

    .line 323
    if-nez p0, :cond_0

    return-void

    .line 324
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/supertws/dubokutv/LanSyncManager$5;

    invoke-direct {v1, p0}, Lcom/supertws/dubokutv/LanSyncManager$5;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 361
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 362
    return-void
.end method

.method public static bumpSyncVersion()V
    .locals 6

    .line 567
    sget-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sRoomDb:Ljava/lang/Object;

    const-string v1, "LanSyncManager"

    if-eqz v0, :cond_1

    .line 570
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "g"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 571
    sget-object v2, Lcom/supertws/dubokutv/LanSyncManager;->sRoomDb:Ljava/lang/Object;

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 572
    if-eqz v0, :cond_0

    .line 573
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "b"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 574
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    const-string v0, "Triggered Room invalidationTracker.refreshVersionsSync()"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 579
    :cond_0
    goto :goto_0

    .line 577
    :catchall_0
    move-exception v0

    .line 578
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to refresh Room tracker: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    :cond_1
    :goto_0
    sget-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sSyncVersionFlow:Lkotlinx/coroutines/flow/r2;

    if-eqz v0, :cond_2

    .line 583
    :try_start_1
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 584
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lkotlinx/coroutines/flow/r2;->j(Ljava/lang/Object;)V

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bumpSyncVersion to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 586
    :catchall_1
    move-exception v0

    :goto_1
    nop

    .line 588
    :cond_2
    return-void
.end method

.method public static checkSyncOnPlay(Ljava/lang/Object;)Z
    .locals 7

    .line 390
    const/4 v0, 0x0

    if-eqz p0, :cond_7

    :try_start_0
    sget-object v1, Lcom/supertws/dubokutv/LanSyncManager;->sActiveVideoAddress:Ljava/lang/Object;

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 391
    :cond_0
    sget-object v1, Lcom/supertws/dubokutv/LanSyncManager;->sActiveVideoAddress:Ljava/lang/Object;

    check-cast v1, Lqa/f0;

    .line 392
    check-cast p0, Landroidx/media3/exoplayer/h0;

    .line 393
    sget-object v2, Lcom/supertws/dubokutv/LanSyncManager;->sHandoff:Lcom/supertws/dubokutv/HandoffProgress;

    iget-object v3, v1, Lqa/f0;->b:Ljava/lang/String;

    iget-object v4, v1, Lqa/f0;->c:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/h0;->M()J

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/supertws/dubokutv/HandoffProgress;->select(Ljava/lang/String;Ljava/lang/String;J)Lcom/supertws/dubokutv/HandoffProgress$Record;

    move-result-object v2

    .line 394
    if-nez v2, :cond_1

    return v0

    .line 395
    :cond_1
    iget-object v3, v2, Lcom/supertws/dubokutv/HandoffProgress$Record;->episode:Ljava/lang/String;

    iget-object v4, v1, Lqa/f0;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 396
    iget-wide v3, v2, Lcom/supertws/dubokutv/HandoffProgress$Record;->position:J

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v3, v4}, Landroidx/media3/exoplayer/h0;->s(IJ)V

    .line 397
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

    .line 398
    return v0

    .line 400
    :cond_2
    nop

    .line 401
    iget-object p0, v1, Lqa/f0;->n:Ljava/util/List;

    .line 402
    const/4 v3, 0x0

    if-eqz p0, :cond_4

    .line 403
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 404
    check-cast v4, Lqa/s;

    .line 405
    iget-object v5, v2, Lcom/supertws/dubokutv/HandoffProgress$Record;->episode:Ljava/lang/String;

    iget-object v6, v4, Lqa/s;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object p0, v4, Lqa/s;->a:Ljava/lang/String;

    goto :goto_1

    .line 406
    :cond_3
    goto :goto_0

    .line 408
    :cond_4
    move-object p0, v3

    :goto_1
    sget-object v4, Lcom/supertws/dubokutv/LanSyncManager;->sActiveRefreshCallback:Ljava/lang/Object;

    if-eqz v4, :cond_6

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_2

    .line 409
    :cond_5
    sput-object v2, Lcom/supertws/dubokutv/LanSyncManager;->sPendingHandoff:Lcom/supertws/dubokutv/HandoffProgress$Record;

    .line 410
    iget-object v1, v1, Lqa/f0;->b:Ljava/lang/String;

    sput-object v1, Lcom/supertws/dubokutv/LanSyncManager;->sPendingHandoffName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 412
    :try_start_1
    sget-object v1, Lcom/supertws/dubokutv/LanSyncManager;->sActiveRefreshCallback:Ljava/lang/Object;

    check-cast v1, Lrb/k;

    invoke-interface {v1, p0}, Lrb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 417
    nop

    .line 418
    const/4 p0, 0x1

    return p0

    .line 413
    :catchall_0
    move-exception p0

    .line 414
    :try_start_2
    sput-object v3, Lcom/supertws/dubokutv/LanSyncManager;->sPendingHandoff:Lcom/supertws/dubokutv/HandoffProgress$Record;

    .line 415
    sput-object v3, Lcom/supertws/dubokutv/LanSyncManager;->sPendingHandoffName:Ljava/lang/String;

    .line 416
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 408
    :cond_6
    :goto_2
    return v0

    .line 419
    :catchall_1
    move-exception p0

    .line 420
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

    .line 421
    return v0

    .line 390
    :cond_7
    :goto_3
    return v0
.end method

.method public static formatButtonText(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 545
    const-string v0, "\u96c6"

    const-string v1, "\u7b2c"

    :try_start_0
    invoke-static {p0, p1}, Lcom/supertws/dubokutv/LanSyncManager;->resolveLatestRecord(Ljava/lang/Object;Ljava/lang/Object;)Lpa/c;

    move-result-object p0

    .line 546
    if-eqz p0, :cond_2

    iget-object p1, p0, Lpa/c;->c:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lpa/c;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 547
    nop

    .line 548
    iget-wide v2, p0, Lpa/c;->e:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_0

    .line 549
    iget-wide v2, p0, Lpa/c;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-double v2, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    :try_start_1
    iget-wide v4, p0, Lpa/c;->e:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int p1, v2

    goto :goto_0

    .line 548
    :cond_0
    const/4 p1, 0x0

    .line 551
    :goto_0
    iget-object p0, p0, Lpa/c;->c:Ljava/lang/String;

    .line 552
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 553
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

    .line 555
    :cond_1
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
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object p0

    .line 557
    :catchall_0
    move-exception p0

    :cond_2
    nop

    .line 558
    return-object p2
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    .line 64
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

    .line 53
    sget-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sInstance:Lcom/supertws/dubokutv/LanSyncManager;

    if-nez v0, :cond_1

    .line 54
    const-class v0, Lcom/supertws/dubokutv/LanSyncManager;

    monitor-enter v0

    .line 55
    :try_start_0
    sget-object v1, Lcom/supertws/dubokutv/LanSyncManager;->sInstance:Lcom/supertws/dubokutv/LanSyncManager;

    if-nez v1, :cond_0

    if-eqz p0, :cond_0

    .line 56
    new-instance v1, Lcom/supertws/dubokutv/LanSyncManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/supertws/dubokutv/LanSyncManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/supertws/dubokutv/LanSyncManager;->sInstance:Lcom/supertws/dubokutv/LanSyncManager;

    .line 58
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 60
    :cond_1
    :goto_0
    sget-object p0, Lcom/supertws/dubokutv/LanSyncManager;->sInstance:Lcom/supertws/dubokutv/LanSyncManager;

    return-object p0
.end method

.method private handleIncomingJson(Ljava/lang/String;Ljava/lang/String;)V
    .locals 20

    .line 113
    move-object/from16 v0, p2

    const-string v1, "LanSyncManager"

    const-string v2, ""

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    move-object/from16 v4, p1

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 114
    const-string v4, "from"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 115
    sget-object v5, Lcom/supertws/dubokutv/LanSyncManager;->sCurrentDeviceId:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 116
    return-void

    .line 119
    :cond_0
    const-string v5, "action"

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 120
    const-string v6, "REQUEST_SYNC"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v5, :cond_1

    .line 121
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received REQUEST_SYNC from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), responding with all local records..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 122
    move-object/from16 v15, p0

    :try_start_2
    invoke-direct {v15, v0}, Lcom/supertws/dubokutv/LanSyncManager;->respondAllRecords(Ljava/lang/String;)V

    .line 123
    return-void

    .line 218
    :catch_0
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_0

    .line 126
    :cond_1
    move-object/from16 v15, p0

    const-string v0, "name"

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 127
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 129
    :cond_2
    const-string v0, "id"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 130
    const-string v0, "episode"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 131
    const-string v0, "progressInMillis"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 132
    const-string v0, "durationInMillis"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 133
    const-string v0, "modifiedAt"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 134
    const-string v0, "videoPageUrl"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    const-string v2, "detailPageUrl"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 136
    const-string v2, "posterUrl"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 138
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/supertws/dubokutv/LanSyncManager$2;

    move-object v5, v3

    move-object/from16 v6, p0

    move-wide/from16 v15, v16

    move-object/from16 v17, v0

    move-object/from16 v19, v4

    invoke-direct/range {v5 .. v19}, Lcom/supertws/dubokutv/LanSyncManager$2;-><init>(Lcom/supertws/dubokutv/LanSyncManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 217
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 220
    goto :goto_1

    .line 218
    :catch_1
    move-exception v0

    .line 219
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse incoming UDP json: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :goto_1
    return-void
.end method

.method public static onActivityResume(Landroid/app/Activity;)V
    .locals 0

    .line 539
    sput-object p0, Lcom/supertws/dubokutv/LanSyncManager;->sActiveActivity:Landroid/app/Activity;

    .line 540
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->requestSyncFromLan()V

    .line 541
    return-void
.end method

.method public static onAppCreate(Landroid/content/Context;)V
    .locals 0

    .line 534
    invoke-static {p0}, Lcom/supertws/dubokutv/LanSyncManager;->getInstance(Landroid/content/Context;)Lcom/supertws/dubokutv/LanSyncManager;

    .line 535
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->requestSyncFromLan()V

    .line 536
    return-void
.end method

.method public static parseEpisodeNum(Ljava/lang/String;)I
    .locals 2

    .line 68
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 69
    :cond_0
    sget-object v1, Lcom/supertws/dubokutv/LanSyncManager;->EP_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 70
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 73
    :catch_0
    move-exception p0

    .line 75
    :cond_1
    return v0
.end method

.method public static registerActivePlayer(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 365
    if-eqz p0, :cond_0

    sput-object p0, Lcom/supertws/dubokutv/LanSyncManager;->sActiveExoPlayer:Ljava/lang/Object;

    .line 366
    :cond_0
    if-eqz p1, :cond_1

    sput-object p1, Lcom/supertws/dubokutv/LanSyncManager;->sActiveActivity:Landroid/app/Activity;

    .line 367
    :cond_1
    if-eqz p2, :cond_2

    sput-object p2, Lcom/supertws/dubokutv/LanSyncManager;->sActiveVideoAddress:Ljava/lang/Object;

    .line 368
    :cond_2
    if-eqz p3, :cond_3

    sput-object p3, Lcom/supertws/dubokutv/LanSyncManager;->sActiveRefreshCallback:Ljava/lang/Object;

    .line 370
    :cond_3
    if-eqz p2, :cond_5

    .line 371
    :try_start_0
    check-cast p2, Lqa/f0;

    .line 372
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

    if-eqz p2, :cond_4

    const/4 p2, 0x1

    goto :goto_0

    :cond_4
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 374
    :catchall_0
    move-exception p0

    :cond_5
    :goto_1
    nop

    .line 375
    return-void
.end method

.method public static registerActiveVideo(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 378
    if-eqz p0, :cond_0

    sput-object p0, Lcom/supertws/dubokutv/LanSyncManager;->sActiveVideoAddress:Ljava/lang/Object;

    .line 379
    :cond_0
    if-eqz p1, :cond_1

    sput-object p1, Lcom/supertws/dubokutv/LanSyncManager;->sActiveRefreshCallback:Ljava/lang/Object;

    .line 381
    :cond_1
    if-eqz p0, :cond_3

    .line 382
    :try_start_0
    check-cast p0, Lqa/f0;

    .line 383
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

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 385
    :catchall_0
    move-exception p0

    :cond_3
    :goto_1
    nop

    .line 386
    return-void
.end method

.method public static requestSyncFromLan()V
    .locals 2

    .line 264
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/supertws/dubokutv/LanSyncManager$4;

    invoke-direct {v1}, Lcom/supertws/dubokutv/LanSyncManager$4;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 277
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 278
    return-void
.end method

.method public static resolveLatestRecord(Ljava/lang/Object;Ljava/lang/Object;)Lpa/c;
    .locals 23

    .line 441
    const-string v1, "LanSyncManager"

    move-object/from16 v2, p0

    check-cast v2, Lpa/c;

    .line 443
    :try_start_0
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->getAppContext()Landroid/content/Context;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 444
    if-nez v3, :cond_0

    return-object v2

    .line 446
    :cond_0
    nop

    .line 447
    nop

    .line 449
    const/4 v4, 0x0

    if-eqz p1, :cond_1

    .line 451
    :try_start_1
    move-object/from16 v0, p1

    check-cast v0, Lqa/p;

    .line 452
    iget-object v5, v0, Lqa/p;->f:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 453
    :try_start_2
    iget-object v0, v0, Lqa/p;->b:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 454
    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v5, v4

    :goto_0
    move-object v0, v4

    goto :goto_1

    .line 449
    :cond_1
    move-object v0, v4

    move-object v5, v0

    .line 456
    :goto_1
    if-eqz v2, :cond_5

    .line 457
    if-eqz v5, :cond_2

    :try_start_3
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    iget-object v5, v2, Lpa/c;->b:Ljava/lang/String;

    .line 458
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    iget-object v0, v2, Lpa/c;->i:Ljava/lang/String;

    .line 461
    :cond_5
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_6
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    goto/16 :goto_9

    .line 465
    :cond_7
    const-string v6, "record_database"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7, v4}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 466
    if-nez v3, :cond_8

    return-object v2

    .line 468
    :cond_8
    nop

    .line 469
    const/4 v4, 0x2

    const/4 v6, 0x1

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_9

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_9

    .line 470
    const-string v8, "SELECT id, name, episode, progressInMillis, durationInMillis, createdAt, modifiedAt, videoPageUrl, detailPageUrl, posterUrl FROM records WHERE name = ? OR detailPageUrl = ? ORDER BY modifiedAt DESC LIMIT 1"

    new-array v9, v4, [Ljava/lang/String;

    aput-object v5, v9, v7

    aput-object v0, v9, v6

    invoke-virtual {v3, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_2

    .line 472
    :cond_9
    if-eqz v5, :cond_a

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_a

    .line 473
    const-string v0, "SELECT id, name, episode, progressInMillis, durationInMillis, createdAt, modifiedAt, videoPageUrl, detailPageUrl, posterUrl FROM records WHERE name = ? ORDER BY modifiedAt DESC LIMIT 1"

    new-array v8, v6, [Ljava/lang/String;

    aput-object v5, v8, v7

    invoke-virtual {v3, v0, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_2

    .line 476
    :cond_a
    const-string v5, "SELECT id, name, episode, progressInMillis, durationInMillis, createdAt, modifiedAt, videoPageUrl, detailPageUrl, posterUrl FROM records WHERE detailPageUrl = ? ORDER BY modifiedAt DESC LIMIT 1"

    new-array v8, v6, [Ljava/lang/String;

    aput-object v0, v8, v7

    invoke-virtual {v3, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 480
    :goto_2
    if-eqz v0, :cond_12

    .line 481
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 482
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 483
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 484
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 485
    const/4 v7, 0x3

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 486
    const/4 v7, 0x4

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 487
    const/4 v7, 0x5

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 488
    const/4 v7, 0x6

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 489
    const/4 v7, 0x7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 490
    const/16 v8, 0x8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 491
    const/16 v9, 0x9

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 492
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 493
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resolveLatestRecord for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": resolved episode="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 496
    new-instance v0, Lpa/c;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 497
    const-string v3, ""

    if-eqz v5, :cond_b

    goto :goto_3

    :cond_b
    move-object v5, v3

    .line 498
    :goto_3
    if-eqz v6, :cond_c

    move-object v10, v6

    goto :goto_4

    :cond_c
    move-object v10, v3

    .line 499
    :goto_4
    if-eqz v4, :cond_d

    move-object v11, v4

    goto :goto_5

    :cond_d
    move-object v11, v3

    .line 504
    :goto_5
    if-eqz v7, :cond_e

    move-object/from16 v20, v7

    goto :goto_6

    :cond_e
    move-object/from16 v20, v3

    .line 505
    :goto_6
    if-eqz v8, :cond_f

    move-object/from16 v21, v8

    goto :goto_7

    :cond_f
    move-object/from16 v21, v3

    .line 506
    :goto_7
    if-eqz v9, :cond_10

    move-object/from16 v22, v9

    goto :goto_8

    :cond_10
    move-object/from16 v22, v3

    :goto_8
    move-object v8, v0

    move-object v9, v5

    :try_start_4
    invoke-direct/range {v8 .. v22}, Lpa/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    return-object v0

    .line 509
    :cond_11
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 511
    :cond_12
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 514
    goto :goto_a

    .line 462
    :cond_13
    :goto_9
    return-object v2

    .line 512
    :catchall_2
    move-exception v0

    .line 513
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

    .line 515
    :goto_a
    return-object v2
.end method

.method private respondAllRecords(Ljava/lang/String;)V
    .locals 2

    .line 224
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/supertws/dubokutv/LanSyncManager$3;

    invoke-direct {v1, p0, p1}, Lcom/supertws/dubokutv/LanSyncManager$3;-><init>(Lcom/supertws/dubokutv/LanSyncManager;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 260
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 261
    return-void
.end method

.method private static sendUdpPacket(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 281
    nop

    .line 283
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 284
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 285
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {v1, v0}, Ljava/net/DatagramSocket;->setBroadcast(Z)V

    .line 287
    const/16 v0, 0x2695

    const/16 v2, 0x2694

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 288
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    .line 289
    new-instance v3, Ljava/net/DatagramPacket;

    array-length v4, p0

    invoke-direct {v3, p0, v4, p1, v2}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    invoke-virtual {v1, v3}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 290
    new-instance v3, Ljava/net/DatagramPacket;

    array-length v4, p0

    invoke-direct {v3, p0, v4, p1, v0}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    invoke-virtual {v1, v3}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 294
    :cond_0
    const-string p1, "255.255.255.255"

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    .line 295
    new-instance v3, Ljava/net/DatagramPacket;

    array-length v4, p0

    invoke-direct {v3, p0, v4, p1, v2}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    invoke-virtual {v1, v3}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 296
    new-instance v3, Ljava/net/DatagramPacket;

    array-length v4, p0

    invoke-direct {v3, p0, v4, p1, v0}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    invoke-virtual {v1, v3}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 300
    :try_start_2
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object p1

    .line 301
    :cond_1
    :goto_0
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 302
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    .line 303
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 304
    :cond_2
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InterfaceAddress;

    .line 305
    invoke-virtual {v4}, Ljava/net/InterfaceAddress;->getBroadcast()Ljava/net/InetAddress;

    move-result-object v4

    .line 306
    if-eqz v4, :cond_3

    .line 307
    new-instance v5, Ljava/net/DatagramPacket;

    array-length v6, p0

    invoke-direct {v5, p0, v6, v4, v2}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    invoke-virtual {v1, v5}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 308
    new-instance v5, Ljava/net/DatagramPacket;

    array-length v6, p0

    invoke-direct {v5, p0, v6, v4, v0}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    invoke-virtual {v1, v5}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 310
    :cond_3
    goto :goto_1

    .line 311
    :cond_4
    goto :goto_0

    .line 312
    :catchall_0
    move-exception p0

    :cond_5
    nop

    .line 316
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result p0

    if-nez p0, :cond_6

    .line 317
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    goto :goto_3

    .line 316
    :catchall_1
    move-exception p0

    move-object v0, v1

    goto :goto_4

    .line 313
    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_2

    .line 316
    :catchall_2
    move-exception p0

    goto :goto_4

    .line 313
    :catch_1
    move-exception p0

    .line 314
    :goto_2
    :try_start_3
    const-string p1, "LanSyncManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendUdpPacket error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 316
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result p0

    if-nez p0, :cond_6

    .line 317
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 320
    :cond_6
    :goto_3
    return-void

    .line 316
    :goto_4
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result p1

    if-nez p1, :cond_7

    .line 317
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 319
    :cond_7
    goto :goto_6

    :goto_5
    throw p0

    :goto_6
    goto :goto_5
.end method

.method private static showToast(Ljava/lang/String;)V
    .locals 2

    .line 520
    :try_start_0
    sget-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sActiveActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 521
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/supertws/dubokutv/LanSyncManager$6;

    invoke-direct {v1, p0}, Lcom/supertws/dubokutv/LanSyncManager$6;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 530
    :catchall_0
    move-exception p0

    :cond_0
    :goto_0
    nop

    .line 531
    return-void
.end method


# virtual methods
.method public declared-synchronized startReceiver()V
    .locals 3

    monitor-enter p0

    .line 79
    :try_start_0
    iget-boolean v0, p0, Lcom/supertws/dubokutv/LanSyncManager;->mReceiverRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 80
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/supertws/dubokutv/LanSyncManager;->mReceiverRunning:Z

    .line 81
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/supertws/dubokutv/LanSyncManager$1;

    invoke-direct {v2, p0}, Lcom/supertws/dubokutv/LanSyncManager$1;-><init>(Lcom/supertws/dubokutv/LanSyncManager;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 106
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 107
    const-string v0, "LanSync-Receiver"

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
