.class final Lcom/supertws/dubokutv/CloudSyncGate;
.super Ljava/lang/Object;
.source "CloudSyncGate.java"


# instance fields
.field private completed:J

.field private requested:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method declared-synchronized beginRead()J
    .locals 2

    monitor-enter p0

    .line 8
    :try_start_0
    iget-wide v0, p0, Lcom/supertws/dubokutv/CloudSyncGate;->requested:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 8
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized completeRead(JZ)V
    .locals 2

    monitor-enter p0

    .line 11
    if-eqz p3, :cond_0

    :try_start_0
    iget-wide v0, p0, Lcom/supertws/dubokutv/CloudSyncGate;->completed:J

    cmp-long p3, p1, v0

    if-lez p3, :cond_0

    iput-wide p1, p0, Lcom/supertws/dubokutv/CloudSyncGate;->completed:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 10
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 12
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method declared-synchronized isCurrent(J)Z
    .locals 3

    monitor-enter p0

    .line 9
    :try_start_0
    iget-wide v0, p0, Lcom/supertws/dubokutv/CloudSyncGate;->requested:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    .line 9
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized mayUpload()Z
    .locals 5

    monitor-enter p0

    .line 13
    :try_start_0
    iget-wide v0, p0, Lcom/supertws/dubokutv/CloudSyncGate;->requested:J

    iget-wide v2, p0, Lcom/supertws/dubokutv/CloudSyncGate;->completed:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 13
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized requestRead()V
    .locals 4

    monitor-enter p0

    .line 7
    :try_start_0
    iget-wide v0, p0, Lcom/supertws/dubokutv/CloudSyncGate;->requested:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/supertws/dubokutv/CloudSyncGate;->requested:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 7
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
