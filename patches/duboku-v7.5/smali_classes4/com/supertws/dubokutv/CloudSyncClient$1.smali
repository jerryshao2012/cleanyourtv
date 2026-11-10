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
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 133
    iput-object p1, p0, Lcom/supertws/dubokutv/CloudSyncClient$1;->val$captureContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 138
    nop

    :goto_1
    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->LOCK:Ljava/lang/Object;
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 139
    :try_start_6
    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->captureVersion:J
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$100()J

    move-result-wide v1

    .line 140
    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->captureImmediate:Z
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$200()Z

    move-result v3

    .line 141
    const/4 v4, 0x0

    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->captureImmediate:Z
    invoke-static {v4}, Lcom/supertws/dubokutv/CloudSyncClient;->access$202(Z)Z

    .line 142
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_2f

    .line 143
    iget-object v0, p0, Lcom/supertws/dubokutv/CloudSyncClient$1;->val$captureContext:Landroid/content/Context;

    # invokes: Lcom/supertws/dubokutv/CloudSyncClient;->captureCommittedSnapshot(Landroid/content/Context;Z)V
    invoke-static {v0, v3}, Lcom/supertws/dubokutv/CloudSyncClient;->access$300(Landroid/content/Context;Z)V

    .line 144
    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->LOCK:Ljava/lang/Object;
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$000()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 145
    :try_start_1d
    # getter for: Lcom/supertws/dubokutv/CloudSyncClient;->captureVersion:J
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$100()J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-nez v0, :cond_2a

    .line 146
    # setter for: Lcom/supertws/dubokutv/CloudSyncClient;->capturePending:Z
    invoke-static {v4}, Lcom/supertws/dubokutv/CloudSyncClient;->access$402(Z)Z

    .line 147
    monitor-exit v3

    return-void

    .line 149
    :cond_2a
    monitor-exit v3

    .line 150
    goto :goto_1

    .line 149
    :catchall_2c
    move-exception v0

    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_1d .. :try_end_2e} :catchall_2c

    throw v0

    .line 142
    :catchall_2f
    move-exception v1

    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v1
.end method
