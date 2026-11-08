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
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/supertws/dubokutv/LanSyncManager$1;->this$0:Lcom/supertws/dubokutv/LanSyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const-string v0, "LanSyncManager"

    const-string v1, "LanSync UDP Receiver running on port 9876 [Device="

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 88
    :try_start_0
    new-instance v4, Ljava/net/DatagramSocket;

    const/16 v5, 0x2694

    invoke-direct {v4, v5}, Ljava/net/DatagramSocket;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 89
    :try_start_1
    iget-object v5, p0, Lcom/supertws/dubokutv/LanSyncManager$1;->this$0:Lcom/supertws/dubokutv/LanSyncManager;

    invoke-static {v5, v4}, Lcom/supertws/dubokutv/LanSyncManager;->access$002(Lcom/supertws/dubokutv/LanSyncManager;Ljava/net/DatagramSocket;)Ljava/net/DatagramSocket;

    const/4 v5, 0x1

    .line 90
    invoke-virtual {v4, v5}, Ljava/net/DatagramSocket;->setBroadcast(Z)V

    const/16 v5, 0x2000

    new-array v6, v5, [B

    .line 92
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :goto_0
    iget-object v1, p0, Lcom/supertws/dubokutv/LanSyncManager$1;->this$0:Lcom/supertws/dubokutv/LanSyncManager;

    invoke-static {v1}, Lcom/supertws/dubokutv/LanSyncManager;->access$200(Lcom/supertws/dubokutv/LanSyncManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    new-instance v1, Ljava/net/DatagramPacket;

    invoke-direct {v1, v6, v5}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 95
    invoke-virtual {v4, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 96
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v8

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v9

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v8, v2, v9, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 97
    iget-object v8, p0, Lcom/supertws/dubokutv/LanSyncManager$1;->this$0:Lcom/supertws/dubokutv/LanSyncManager;

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    move-object v1, v3

    :goto_1
    invoke-static {v8, v7, v1}, Lcom/supertws/dubokutv/LanSyncManager;->access$300(Lcom/supertws/dubokutv/LanSyncManager;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 102
    :cond_1
    invoke-virtual {v4}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 103
    invoke-virtual {v4}, Ljava/net/DatagramSocket;->close()V

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/supertws/dubokutv/LanSyncManager$1;->this$0:Lcom/supertws/dubokutv/LanSyncManager;

    invoke-static {v0}, Lcom/supertws/dubokutv/LanSyncManager;->access$000(Lcom/supertws/dubokutv/LanSyncManager;)Ljava/net/DatagramSocket;

    move-result-object v0

    if-ne v0, v4, :cond_4

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v4, v3

    goto :goto_4

    :catch_1
    move-exception v1

    move-object v4, v3

    .line 100
    :goto_2
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Receiver stopped: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_3

    .line 102
    invoke-virtual {v4}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 103
    invoke-virtual {v4}, Ljava/net/DatagramSocket;->close()V

    .line 105
    :cond_3
    iget-object v0, p0, Lcom/supertws/dubokutv/LanSyncManager$1;->this$0:Lcom/supertws/dubokutv/LanSyncManager;

    invoke-static {v0}, Lcom/supertws/dubokutv/LanSyncManager;->access$000(Lcom/supertws/dubokutv/LanSyncManager;)Ljava/net/DatagramSocket;

    move-result-object v0

    if-ne v0, v4, :cond_4

    .line 106
    :goto_3
    iget-object v0, p0, Lcom/supertws/dubokutv/LanSyncManager$1;->this$0:Lcom/supertws/dubokutv/LanSyncManager;

    invoke-static {v0, v3}, Lcom/supertws/dubokutv/LanSyncManager;->access$002(Lcom/supertws/dubokutv/LanSyncManager;Ljava/net/DatagramSocket;)Ljava/net/DatagramSocket;

    .line 107
    iget-object v0, p0, Lcom/supertws/dubokutv/LanSyncManager$1;->this$0:Lcom/supertws/dubokutv/LanSyncManager;

    invoke-static {v0, v2}, Lcom/supertws/dubokutv/LanSyncManager;->access$202(Lcom/supertws/dubokutv/LanSyncManager;Z)Z

    :cond_4
    return-void

    :goto_4
    if-eqz v4, :cond_5

    .line 102
    invoke-virtual {v4}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5

    .line 103
    invoke-virtual {v4}, Ljava/net/DatagramSocket;->close()V

    .line 105
    :cond_5
    iget-object v1, p0, Lcom/supertws/dubokutv/LanSyncManager$1;->this$0:Lcom/supertws/dubokutv/LanSyncManager;

    invoke-static {v1}, Lcom/supertws/dubokutv/LanSyncManager;->access$000(Lcom/supertws/dubokutv/LanSyncManager;)Ljava/net/DatagramSocket;

    move-result-object v1

    if-ne v1, v4, :cond_6

    .line 106
    iget-object v1, p0, Lcom/supertws/dubokutv/LanSyncManager$1;->this$0:Lcom/supertws/dubokutv/LanSyncManager;

    invoke-static {v1, v3}, Lcom/supertws/dubokutv/LanSyncManager;->access$002(Lcom/supertws/dubokutv/LanSyncManager;Ljava/net/DatagramSocket;)Ljava/net/DatagramSocket;

    .line 107
    iget-object v1, p0, Lcom/supertws/dubokutv/LanSyncManager$1;->this$0:Lcom/supertws/dubokutv/LanSyncManager;

    invoke-static {v1, v2}, Lcom/supertws/dubokutv/LanSyncManager;->access$202(Lcom/supertws/dubokutv/LanSyncManager;Z)Z

    .line 109
    :cond_6
    throw v0
.end method
