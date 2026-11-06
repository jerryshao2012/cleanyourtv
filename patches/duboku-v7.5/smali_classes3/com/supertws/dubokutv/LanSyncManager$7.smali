.class final Lcom/supertws/dubokutv/LanSyncManager$7;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;

.field final synthetic val$context:Landroid/content/Context;

.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/supertws/dubokutv/LanSyncManager$7;->val$context:Landroid/content/Context;
    return-void
.end method

.method public run()V
    .locals 2
    const-wide/16 v0, 0x7d0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    iget-object v0, p0, Lcom/supertws/dubokutv/LanSyncManager$7;->val$context:Landroid/content/Context;
    invoke-static {v0}, Lcom/supertws/dubokutv/LanSyncManager;->sendFamilyOffer(Landroid/content/Context;)V
    return-void
.end method
