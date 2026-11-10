.class public final synthetic Lcom/supertws/dubokutv/LanSyncManager$9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/supertws/dubokutv/LanSyncManager;"
    method = "lambda$handleIncomingJson$0"
    proto = "(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/supertws/dubokutv/LanSyncManager;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:J

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/supertws/dubokutv/LanSyncManager;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/supertws/dubokutv/LanSyncManager$9;->f$0:Lcom/supertws/dubokutv/LanSyncManager;

    iput-object p2, p0, Lcom/supertws/dubokutv/LanSyncManager$9;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/supertws/dubokutv/LanSyncManager$9;->f$2:Ljava/lang/String;

    iput-wide p4, p0, Lcom/supertws/dubokutv/LanSyncManager$9;->f$3:J

    iput-object p6, p0, Lcom/supertws/dubokutv/LanSyncManager$9;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 0
    iget-object v0, p0, Lcom/supertws/dubokutv/LanSyncManager$9;->f$0:Lcom/supertws/dubokutv/LanSyncManager;

    iget-object v1, p0, Lcom/supertws/dubokutv/LanSyncManager$9;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/supertws/dubokutv/LanSyncManager$9;->f$2:Ljava/lang/String;

    iget-wide v3, p0, Lcom/supertws/dubokutv/LanSyncManager$9;->f$3:J

    iget-object v5, p0, Lcom/supertws/dubokutv/LanSyncManager$9;->f$4:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/supertws/dubokutv/LanSyncManager;->lambda$handleIncomingJson$0$com-supertws-dubokutv-LanSyncManager(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method
