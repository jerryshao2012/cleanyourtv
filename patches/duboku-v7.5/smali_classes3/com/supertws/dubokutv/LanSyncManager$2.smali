.class Lcom/supertws/dubokutv/LanSyncManager$2;
.super Ljava/lang/Object;
.source "LanSyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/supertws/dubokutv/LanSyncManager;->handleIncomingJson(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/supertws/dubokutv/LanSyncManager;

.field final synthetic val$detailPageUrl:Ljava/lang/String;

.field final synthetic val$durationInMillis:J

.field final synthetic val$episode:Ljava/lang/String;

.field final synthetic val$fromDevice:Ljava/lang/String;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$posterUrl:Ljava/lang/String;

.field final synthetic val$progressInMillis:J

.field final synthetic val$remoteModifiedAt:J

.field final synthetic val$videoPageUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/supertws/dubokutv/LanSyncManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 138
    iput-object p1, p0, Lcom/supertws/dubokutv/LanSyncManager$2;->this$0:Lcom/supertws/dubokutv/LanSyncManager;

    iput-object p2, p0, Lcom/supertws/dubokutv/LanSyncManager$2;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/supertws/dubokutv/LanSyncManager$2;->val$detailPageUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/supertws/dubokutv/LanSyncManager$2;->val$episode:Ljava/lang/String;

    iput-wide p5, p0, Lcom/supertws/dubokutv/LanSyncManager$2;->val$progressInMillis:J

    iput-wide p7, p0, Lcom/supertws/dubokutv/LanSyncManager$2;->val$remoteModifiedAt:J

    iput-object p9, p0, Lcom/supertws/dubokutv/LanSyncManager$2;->val$id:Ljava/lang/String;

    iput-wide p10, p0, Lcom/supertws/dubokutv/LanSyncManager$2;->val$durationInMillis:J

    iput-object p12, p0, Lcom/supertws/dubokutv/LanSyncManager$2;->val$videoPageUrl:Ljava/lang/String;

    iput-object p13, p0, Lcom/supertws/dubokutv/LanSyncManager$2;->val$posterUrl:Ljava/lang/String;

    iput-object p14, p0, Lcom/supertws/dubokutv/LanSyncManager$2;->val$fromDevice:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    iget-object v0, p0, Lcom/supertws/dubokutv/LanSyncManager$2;->this$0:Lcom/supertws/dubokutv/LanSyncManager;

    invoke-static {v0}, Lcom/supertws/dubokutv/LanSyncManager;->access$300(Lcom/supertws/dubokutv/LanSyncManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/supertws/dubokutv/LanSyncManager$2;->val$name:Ljava/lang/String;

    iget-object v2, p0, Lcom/supertws/dubokutv/LanSyncManager$2;->val$detailPageUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/supertws/dubokutv/LanSyncManager$2;->val$episode:Ljava/lang/String;

    iget-wide v4, p0, Lcom/supertws/dubokutv/LanSyncManager$2;->val$progressInMillis:J

    iget-wide v6, p0, Lcom/supertws/dubokutv/LanSyncManager$2;->val$remoteModifiedAt:J

    iget-object v8, p0, Lcom/supertws/dubokutv/LanSyncManager$2;->val$id:Ljava/lang/String;

    iget-wide v9, p0, Lcom/supertws/dubokutv/LanSyncManager$2;->val$durationInMillis:J

    iget-object v11, p0, Lcom/supertws/dubokutv/LanSyncManager$2;->val$videoPageUrl:Ljava/lang/String;

    iget-object v12, p0, Lcom/supertws/dubokutv/LanSyncManager$2;->val$posterUrl:Ljava/lang/String;

    iget-object v13, p0, Lcom/supertws/dubokutv/LanSyncManager$2;->val$fromDevice:Ljava/lang/String;

    invoke-static/range {v0 .. v13}, Lcom/supertws/dubokutv/LanSyncManagerPatch;->runSync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
