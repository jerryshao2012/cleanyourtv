.class Lcom/supertws/dubokutv/LanSyncManager$5$1;
.super Ljava/lang/Object;
.source "LanSyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/supertws/dubokutv/LanSyncManager$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/supertws/dubokutv/LanSyncManager$5;

.field final synthetic val$messageId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/supertws/dubokutv/LanSyncManager$5;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 594
    iput-object p1, p0, Lcom/supertws/dubokutv/LanSyncManager$5$1;->this$0:Lcom/supertws/dubokutv/LanSyncManager$5;

    iput-object p2, p0, Lcom/supertws/dubokutv/LanSyncManager$5$1;->val$messageId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 596
    # getter for: Lcom/supertws/dubokutv/LanSyncManager;->sPendingProgress:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->access$1200()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/supertws/dubokutv/LanSyncManager$5$1;->val$messageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/supertws/dubokutv/CloudSyncClient;->onCommittedSave(Z)V

    .line 597
    :cond_10
    return-void
.end method
