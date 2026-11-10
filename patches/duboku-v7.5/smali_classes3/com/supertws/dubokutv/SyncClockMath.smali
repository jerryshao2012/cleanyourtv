.class final Lcom/supertws/dubokutv/SyncClockMath;
.super Ljava/lang/Object;
.source "SyncClockMath.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static correctedTime(JJJJ)J
    .registers 8

    .line 29
    add-long/2addr p0, p2

    .line 30
    const-wide/16 p2, 0x0

    invoke-static {p2, p3, p6, p7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p6

    add-long/2addr p4, p6

    invoke-static {p2, p3, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    .line 31
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method static offsetMillis(JJJJ)J
    .registers 8

    .line 8
    sub-long/2addr p2, p0

    sub-long/2addr p4, p6

    add-long/2addr p2, p4

    const-wide/16 p0, 0x2

    div-long/2addr p2, p0

    return-wide p2
.end method

.method static roundTripMillis(JJJJ)J
    .registers 8

    .line 12
    sub-long/2addr p6, p0

    sub-long/2addr p4, p2

    sub-long/2addr p6, p4

    return-wide p6
.end method

.method static validRoundTrip(JJJJJ)Z
    .registers 16

    .line 16
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p8, v1

    if-ltz v3, :cond_3b

    cmp-long v3, p0, v1

    if-lez v3, :cond_3b

    cmp-long v3, p2, v1

    if-lez v3, :cond_3b

    cmp-long v3, p4, v1

    if-lez v3, :cond_3b

    cmp-long v3, p6, v1

    if-lez v3, :cond_3b

    const-wide v3, 0xe677d21fdbffL

    cmp-long v5, p0, v3

    if-gtz v5, :cond_3b

    cmp-long v5, p2, v3

    if-gtz v5, :cond_3b

    cmp-long v5, p4, v3

    if-gtz v5, :cond_3b

    cmp-long v5, p6, v3

    if-lez v5, :cond_2d

    goto :goto_3b

    .line 19
    :cond_2d
    invoke-static/range {p0 .. p7}, Lcom/supertws/dubokutv/SyncClockMath;->roundTripMillis(JJJJ)J

    move-result-wide p0

    .line 20
    cmp-long p2, p0, v1

    if-ltz p2, :cond_3a

    cmp-long p2, p0, p8

    if-gtz p2, :cond_3a

    const/4 v0, 0x1

    :cond_3a
    return v0

    .line 18
    :cond_3b
    :goto_3b
    return v0
.end method

.method static wallStepCorrection(JJ)J
    .registers 7

    .line 24
    sub-long/2addr p0, p2

    .line 25
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p2

    const-wide/16 v0, 0x3e8

    cmp-long v2, p2, v0

    if-lez v2, :cond_d

    neg-long p0, p0

    goto :goto_f

    :cond_d
    const-wide/16 p0, 0x0

    :goto_f
    return-wide p0
.end method
