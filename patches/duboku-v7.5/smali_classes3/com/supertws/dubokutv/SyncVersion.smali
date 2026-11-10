.class final Lcom/supertws/dubokutv/SyncVersion;
.super Ljava/lang/Object;
.source "SyncVersion.java"


# static fields
.field static final MAX_COUNTER:J = 0x1fffffffffffffL


# instance fields
.field final deviceId:Ljava/lang/String;

.field final logicalCounter:J

.field final utcMillis:J


# direct methods
.method constructor <init>(JJLjava/lang/String;)V
    .registers 6

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-wide p1, p0, Lcom/supertws/dubokutv/SyncVersion;->utcMillis:J

    .line 12
    iput-wide p3, p0, Lcom/supertws/dubokutv/SyncVersion;->logicalCounter:J

    .line 13
    if-nez p5, :cond_b

    const-string p5, ""

    :cond_b
    iput-object p5, p0, Lcom/supertws/dubokutv/SyncVersion;->deviceId:Ljava/lang/String;

    .line 14
    return-void
.end method

.method static compare(JJLjava/lang/String;JJLjava/lang/String;)I
    .registers 10

    .line 18
    invoke-static {p0, p1, p5, p6}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    .line 19
    if-nez p0, :cond_a

    invoke-static {p2, p3, p7, p8}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    .line 20
    :cond_a
    if-nez p0, :cond_18

    invoke-static {p4}, Lcom/supertws/dubokutv/SyncVersion;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p9}, Lcom/supertws/dubokutv/SyncVersion;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    .line 21
    :cond_18
    return p0
.end method

.method static next(JJJJJLjava/lang/String;)Lcom/supertws/dubokutv/SyncVersion;
    .registers 16

    .line 26
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    invoke-static {p0, p1, p6, p7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    .line 28
    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x1

    cmp-long v4, p0, p2

    if-nez v4, :cond_1a

    cmp-long p2, p0, p6

    if-nez p2, :cond_1a

    invoke-static {p4, p5, p8, p9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    add-long/2addr p2, v2

    goto :goto_27

    .line 29
    :cond_1a
    if-nez v4, :cond_1f

    add-long p2, p4, v2

    goto :goto_27

    .line 30
    :cond_1f
    cmp-long p2, p0, p6

    if-nez p2, :cond_26

    add-long p2, p8, v2

    goto :goto_27

    .line 31
    :cond_26
    move-wide p2, v0

    .line 32
    :goto_27
    cmp-long p4, p2, v0

    if-ltz p4, :cond_37

    const-wide p4, 0x1fffffffffffffL

    cmp-long p6, p2, p4

    if-lez p6, :cond_35

    goto :goto_37

    :cond_35
    move-wide p5, p2

    goto :goto_39

    :cond_37
    :goto_37
    add-long/2addr p0, v2

    move-wide p5, v0

    :goto_39
    move-wide p3, p0

    .line 33
    new-instance p2, Lcom/supertws/dubokutv/SyncVersion;

    move-object p7, p10

    invoke-direct/range {p2 .. p7}, Lcom/supertws/dubokutv/SyncVersion;-><init>(JJLjava/lang/String;)V

    return-object p2
.end method

.method private static safe(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 36
    if-nez p0, :cond_4

    const-string p0, ""

    :cond_4
    return-object p0
.end method
