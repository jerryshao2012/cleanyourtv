.class final Lcom/supertws/dubokutv/PlaybackEvent;
.super Ljava/lang/Object;
.source "PlaybackEvent.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static canFlushFinalPosition(I)Z
    .registers 2

    const/4 v0, 0x3
    if-ne p0, v0, :cond_0
    const/4 v0, 0x1
    return v0

    :cond_0
    const/4 v0, 0x4
    if-ne p0, v0, :cond_1
    const/4 v0, 0x1
    return v0

    :cond_1
    const/4 v0, 0x0
    return v0
.end method

.method static finalPosition(JJ)J
    .registers 7

    .line 20
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_10

    cmp-long v2, p2, v0

    if-gtz v2, :cond_b

    goto :goto_10

    :cond_b
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    goto :goto_12

    :cond_10
    :goto_10
    const-wide/16 p0, -0x1

    :goto_12
    return-wide p0
.end method

.method static nearEnd(JJ)Z
    .registers 11

    .line 13
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-lez v3, :cond_36

    cmp-long v3, p2, v1

    if-lez v3, :cond_36

    cmp-long v1, p0, p2

    if-lez v1, :cond_10

    goto :goto_36

    .line 14
    :cond_10
    sub-long v1, p2, p0

    .line 15
    const-wide/16 v3, 0x14

    div-long v3, p2, v3

    const-wide/16 v5, 0x7530

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    const-wide/32 v5, 0x1d4c0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 16
    cmp-long v5, v1, v3

    if-gtz v5, :cond_35

    long-to-double p0, p0

    long-to-double p2, p2

    const-wide v1, 0x3fee666666666666L    # 0.95

    mul-double p2, p2, v1

    cmpl-double v1, p0, p2

    if-ltz v1, :cond_35

    const/4 v0, 0x1

    :cond_35
    return v0

    .line 13
    :cond_36
    :goto_36
    return v0
.end method

.method static startsNewEpisode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 8
    if-eqz p2, :cond_1e

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    if-eqz p3, :cond_1e

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 9
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    :cond_1c
    const/4 p0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    .line 8
    :goto_1f
    return p0
.end method
