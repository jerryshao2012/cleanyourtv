.class final Lcom/supertws/dubokutv/HandoffProgress$Record;
.super Ljava/lang/Object;
.source "HandoffProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/supertws/dubokutv/HandoffProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Record"
.end annotation


# instance fields
.field final episode:Ljava/lang/String;

.field final modified:J

.field final position:J

.field final url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;JLjava/lang/String;J)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/supertws/dubokutv/HandoffProgress$Record;->episode:Ljava/lang/String;

    .line 13
    iput-wide p2, p0, Lcom/supertws/dubokutv/HandoffProgress$Record;->position:J

    .line 14
    iput-object p4, p0, Lcom/supertws/dubokutv/HandoffProgress$Record;->url:Ljava/lang/String;

    .line 15
    iput-wide p5, p0, Lcom/supertws/dubokutv/HandoffProgress$Record;->modified:J

    .line 16
    return-void
.end method
