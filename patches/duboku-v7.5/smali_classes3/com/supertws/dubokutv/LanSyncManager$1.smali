.class Lcom/supertws/dubokutv/LanSyncManager$1;
.super Ljava/lang/Object;
.source "LanSyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/supertws/dubokutv/LanSyncManager;->startReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/supertws/dubokutv/LanSyncManager;


# direct methods
.method constructor <init>(Lcom/supertws/dubokutv/LanSyncManager;)V
    .registers 2

    .line 98
    iput-object p1, p0, Lcom/supertws/dubokutv/LanSyncManager$1;->this$0:Lcom/supertws/dubokutv/LanSyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .line 101
    const-string v0, "LanSyncManager"

    .line 103
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_4
    new-instance v3, Ljava/net/DatagramSocket;

    const/16 v4, 0x2694

    invoke-direct {v3, v4}, Ljava/net/DatagramSocket;-><init>(I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_86
    .catchall {:try_start_4 .. :try_end_b} :catchall_83

    .line 104
    :try_start_b
    iget-object v4, p0, Lcom/supertws/dubokutv/LanSyncManager$1;->this$0:Lcom/supertws/dubokutv/LanSyncManager;

    # setter for: Lcom/supertws/dubokutv/LanSyncManager;->mReceiverSocket:Ljava/net/DatagramSocket;
    invoke-static {v4, v3}, Lcom/supertws/dubokutv/LanSyncManager;->access$002(Lcom/supertws/dubokutv/LanSyncManager;Ljava/net/DatagramSocket;)Ljava/net/DatagramSocket;

    .line 105
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/net/DatagramSocket;->setBroadcast(Z)V

    .line 106
    const/16 v4, 0x2000

    new-array v5, v4, [B

    .line 107
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LanSync UDP Receiver running on port 9876 [Device="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    # getter for: Lcom/supertws/dubokutv/LanSyncManager;->sCurrentDeviceId:Ljava/lang/String;
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->access$100()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :goto_38
    iget-object v6, p0, Lcom/supertws/dubokutv/LanSyncManager$1;->this$0:Lcom/supertws/dubokutv/LanSyncManager;

    # getter for: Lcom/supertws/dubokutv/LanSyncManager;->mReceiverRunning:Z
    invoke-static {v6}, Lcom/supertws/dubokutv/LanSyncManager;->access$200(Lcom/supertws/dubokutv/LanSyncManager;)Z

    move-result v6

    if-eqz v6, :cond_6d

    .line 109
    new-instance v6, Ljava/net/DatagramPacket;

    invoke-direct {v6, v5, v4}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 110
    invoke-virtual {v3, v6}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 111
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v8

    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getLength()I

    move-result v9

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v8, v1, v9, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 112
    iget-object v8, p0, Lcom/supertws/dubokutv/LanSyncManager$1;->this$0:Lcom/supertws/dubokutv/LanSyncManager;

    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v9

    if-eqz v9, :cond_68

    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    goto :goto_69

    :cond_68
    move-object v6, v2

    :goto_69
    # invokes: Lcom/supertws/dubokutv/LanSyncManager;->handleIncomingJson(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v8, v7, v6}, Lcom/supertws/dubokutv/LanSyncManager;->access$300(Lcom/supertws/dubokutv/LanSyncManager;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_6c} :catch_81
    .catchall {:try_start_b .. :try_end_6c} :catchall_7f

    .line 113
    goto :goto_38

    .line 117
    :cond_6d
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_76

    .line 118
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V

    .line 120
    :cond_76
    iget-object v0, p0, Lcom/supertws/dubokutv/LanSyncManager$1;->this$0:Lcom/supertws/dubokutv/LanSyncManager;

    # getter for: Lcom/supertws/dubokutv/LanSyncManager;->mReceiverSocket:Ljava/net/DatagramSocket;
    invoke-static {v0}, Lcom/supertws/dubokutv/LanSyncManager;->access$000(Lcom/supertws/dubokutv/LanSyncManager;)Ljava/net/DatagramSocket;

    move-result-object v0

    if-ne v0, v3, :cond_bf

    .line 121
    goto :goto_b5

    .line 117
    :catchall_7f
    move-exception v0

    goto :goto_c0

    .line 114
    :catch_81
    move-exception v4

    goto :goto_88

    .line 117
    :catchall_83
    move-exception v0

    move-object v3, v2

    goto :goto_c0

    .line 114
    :catch_86
    move-exception v4

    move-object v3, v2

    .line 115
    :goto_88
    :try_start_88
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Receiver stopped: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a2
    .catchall {:try_start_88 .. :try_end_a2} :catchall_7f

    .line 117
    if-eqz v3, :cond_ad

    invoke-virtual {v3}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_ad

    .line 118
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V

    .line 120
    :cond_ad
    iget-object v0, p0, Lcom/supertws/dubokutv/LanSyncManager$1;->this$0:Lcom/supertws/dubokutv/LanSyncManager;

    # getter for: Lcom/supertws/dubokutv/LanSyncManager;->mReceiverSocket:Ljava/net/DatagramSocket;
    invoke-static {v0}, Lcom/supertws/dubokutv/LanSyncManager;->access$000(Lcom/supertws/dubokutv/LanSyncManager;)Ljava/net/DatagramSocket;

    move-result-object v0

    if-ne v0, v3, :cond_bf

    .line 121
    :goto_b5
    iget-object v0, p0, Lcom/supertws/dubokutv/LanSyncManager$1;->this$0:Lcom/supertws/dubokutv/LanSyncManager;

    # setter for: Lcom/supertws/dubokutv/LanSyncManager;->mReceiverSocket:Ljava/net/DatagramSocket;
    invoke-static {v0, v2}, Lcom/supertws/dubokutv/LanSyncManager;->access$002(Lcom/supertws/dubokutv/LanSyncManager;Ljava/net/DatagramSocket;)Ljava/net/DatagramSocket;

    .line 122
    iget-object v0, p0, Lcom/supertws/dubokutv/LanSyncManager$1;->this$0:Lcom/supertws/dubokutv/LanSyncManager;

    # setter for: Lcom/supertws/dubokutv/LanSyncManager;->mReceiverRunning:Z
    invoke-static {v0, v1}, Lcom/supertws/dubokutv/LanSyncManager;->access$202(Lcom/supertws/dubokutv/LanSyncManager;Z)Z

    .line 125
    :cond_bf
    return-void

    .line 117
    :goto_c0
    if-eqz v3, :cond_cb

    invoke-virtual {v3}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v4

    if-nez v4, :cond_cb

    .line 118
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V

    .line 120
    :cond_cb
    iget-object v4, p0, Lcom/supertws/dubokutv/LanSyncManager$1;->this$0:Lcom/supertws/dubokutv/LanSyncManager;

    # getter for: Lcom/supertws/dubokutv/LanSyncManager;->mReceiverSocket:Ljava/net/DatagramSocket;
    invoke-static {v4}, Lcom/supertws/dubokutv/LanSyncManager;->access$000(Lcom/supertws/dubokutv/LanSyncManager;)Ljava/net/DatagramSocket;

    move-result-object v4

    if-ne v4, v3, :cond_dd

    .line 121
    iget-object v3, p0, Lcom/supertws/dubokutv/LanSyncManager$1;->this$0:Lcom/supertws/dubokutv/LanSyncManager;

    # setter for: Lcom/supertws/dubokutv/LanSyncManager;->mReceiverSocket:Ljava/net/DatagramSocket;
    invoke-static {v3, v2}, Lcom/supertws/dubokutv/LanSyncManager;->access$002(Lcom/supertws/dubokutv/LanSyncManager;Ljava/net/DatagramSocket;)Ljava/net/DatagramSocket;

    .line 122
    iget-object v2, p0, Lcom/supertws/dubokutv/LanSyncManager$1;->this$0:Lcom/supertws/dubokutv/LanSyncManager;

    # setter for: Lcom/supertws/dubokutv/LanSyncManager;->mReceiverRunning:Z
    invoke-static {v2, v1}, Lcom/supertws/dubokutv/LanSyncManager;->access$202(Lcom/supertws/dubokutv/LanSyncManager;Z)Z

    .line 124
    :cond_dd
    throw v0
.end method
