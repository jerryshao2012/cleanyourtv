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

    .line 81
    iput-object p1, p0, Lcom/supertws/dubokutv/LanSyncManager$1;->this$0:Lcom/supertws/dubokutv/LanSyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 84
    const-string v0, "LanSyncManager"

    .line 86
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/net/DatagramSocket;

    const/16 v4, 0x2694

    invoke-direct {v3, v4}, Ljava/net/DatagramSocket;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 87
    const/4 v4, 0x1

    :try_start_1
    invoke-virtual {v3, v4}, Ljava/net/DatagramSocket;->setBroadcast(Z)V

    .line 88
    const/16 v4, 0x2000

    new-array v5, v4, [B

    .line 89
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LanSync UDP Receiver running on port 9876 [Device="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->access$000()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :goto_0
    iget-object v6, p0, Lcom/supertws/dubokutv/LanSyncManager$1;->this$0:Lcom/supertws/dubokutv/LanSyncManager;

    invoke-static {v6}, Lcom/supertws/dubokutv/LanSyncManager;->access$100(Lcom/supertws/dubokutv/LanSyncManager;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 91
    new-instance v6, Ljava/net/DatagramPacket;

    invoke-direct {v6, v5, v4}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 92
    invoke-virtual {v3, v6}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 93
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v8

    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getLength()I

    move-result v9

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v8, v1, v9, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 94
    iget-object v8, p0, Lcom/supertws/dubokutv/LanSyncManager$1;->this$0:Lcom/supertws/dubokutv/LanSyncManager;

    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_0
    move-object v6, v2

    :goto_1
    invoke-static {v8, v7, v6}, Lcom/supertws/dubokutv/LanSyncManager;->access$200(Lcom/supertws/dubokutv/LanSyncManager;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    goto :goto_0

    .line 99
    :cond_1
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 100
    goto :goto_3

    .line 99
    :catchall_0
    move-exception v0

    move-object v2, v3

    goto :goto_4

    .line 96
    :catch_0
    move-exception v2

    goto :goto_2

    .line 99
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 96
    :catch_1
    move-exception v3

    move-object v11, v3

    move-object v3, v2

    move-object v2, v11

    .line 97
    :goto_2
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Receiver stopped: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 100
    :goto_3
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/supertws/dubokutv/LanSyncManager$1;->this$0:Lcom/supertws/dubokutv/LanSyncManager;

    invoke-static {v0, v1}, Lcom/supertws/dubokutv/LanSyncManager;->access$102(Lcom/supertws/dubokutv/LanSyncManager;Z)Z

    .line 103
    nop

    .line 104
    return-void

    .line 99
    :goto_4
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3

    .line 100
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    .line 102
    :cond_3
    iget-object v2, p0, Lcom/supertws/dubokutv/LanSyncManager$1;->this$0:Lcom/supertws/dubokutv/LanSyncManager;

    invoke-static {v2, v1}, Lcom/supertws/dubokutv/LanSyncManager;->access$102(Lcom/supertws/dubokutv/LanSyncManager;Z)Z

    .line 103
    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method
