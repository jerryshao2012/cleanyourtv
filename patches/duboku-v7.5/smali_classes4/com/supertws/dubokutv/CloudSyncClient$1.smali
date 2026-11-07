.class Lcom/supertws/dubokutv/CloudSyncClient$1;
.super Ljava/lang/Object;
.source "CloudSyncClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/supertws/dubokutv/CloudSyncClient;->onCommittedSave(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$captureContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcom/supertws/dubokutv/CloudSyncClient$1;->val$captureContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 85
    nop

    :goto_0
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetLOCK()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 86
    :try_start_0
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetcaptureVersion()J

    move-result-wide v1

    .line 87
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetcaptureImmediate()Z

    move-result v3

    .line 88
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputcaptureImmediate(Z)V

    .line 89
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 90
    iget-object v0, p0, Lcom/supertws/dubokutv/CloudSyncClient$1;->val$captureContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$smcaptureCommittedSnapshot(Landroid/content/Context;Z)V

    .line 91
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetLOCK()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 92
    :try_start_1
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfgetcaptureVersion()J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-nez v0, :cond_0

    .line 93
    invoke-static {v4}, Lcom/supertws/dubokutv/CloudSyncClient;->-$$Nest$sfputcapturePending(Z)V

    .line 94
    monitor-exit v3

    return-void

    .line 96
    :cond_0
    monitor-exit v3

    .line 97
    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 89
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
