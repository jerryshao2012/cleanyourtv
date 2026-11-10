.class final Lcom/supertws/dubokutv/SyncDecision;
.super Ljava/lang/Object;
.source "SyncDecision.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static requiresCloudUpload(ZZZ)Z
    .registers 3

    .line 7
    if-nez p0, :cond_9

    if-eqz p1, :cond_9

    if-nez p2, :cond_7

    goto :goto_9

    :cond_7
    const/4 p0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 p0, 0x1

    :goto_a
    return p0
.end method
