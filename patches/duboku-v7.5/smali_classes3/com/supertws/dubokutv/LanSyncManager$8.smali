.class Lcom/supertws/dubokutv/LanSyncManager$8;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "LanSyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/supertws/dubokutv/LanSyncManager;->registerCloudRecovery(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 824
    iput-object p1, p0, Lcom/supertws/dubokutv/LanSyncManager$8;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 2

    .line 825
    iget-object p1, p0, Lcom/supertws/dubokutv/LanSyncManager$8;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/supertws/dubokutv/CloudSyncClient;->onNetworkAvailable(Landroid/content/Context;)V

    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->syncLanClock()V

    return-void
.end method
