.class Lcom/supertws/dubokutv/LanSyncManager$5;
.super Ljava/lang/Object;
.source "LanSyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/supertws/dubokutv/LanSyncManager;->broadcastProgress(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$recordObj:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 426
    iput-object p1, p0, Lcom/supertws/dubokutv/LanSyncManager$5;->val$recordObj:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const-string v0, "LanSyncManager"

    const-string v1, "Broadcasted progress update: "

    .line 430
    :try_start_0
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->access$400()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 431
    :cond_0
    iget-object v2, p0, Lcom/supertws/dubokutv/LanSyncManager$5;->val$recordObj:Ljava/lang/Object;

    check-cast v2, Lpa/c;

    .line 432
    iget-object v3, v2, Lpa/c;->b:Ljava/lang/String;

    .line 433
    iget-object v4, v2, Lpa/c;->c:Ljava/lang/String;

    .line 434
    iget-wide v5, v2, Lpa/c;->d:J

    if-eqz v3, :cond_1

    .line 437
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->access$800()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz v4, :cond_1

    .line 438
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->access$900()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 439
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->access$1000()J

    move-result-wide v7

    sub-long v7, v5, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    const-wide/16 v9, 0x7d0

    cmp-long v11, v7, v9

    if-gez v11, :cond_1

    return-void

    .line 442
    :cond_1
    invoke-static {v3}, Lcom/supertws/dubokutv/LanSyncManager;->access$802(Ljava/lang/String;)Ljava/lang/String;

    .line 443
    invoke-static {v4}, Lcom/supertws/dubokutv/LanSyncManager;->access$902(Ljava/lang/String;)Ljava/lang/String;

    .line 444
    invoke-static {v5, v6}, Lcom/supertws/dubokutv/LanSyncManager;->access$1002(J)J

    .line 446
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "from"

    .line 447
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->access$100()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "id"

    .line 448
    iget-object v9, v2, Lpa/c;->a:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "name"

    .line 449
    iget-object v9, v2, Lpa/c;->b:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "episode"

    .line 450
    iget-object v9, v2, Lpa/c;->c:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "progressInMillis"

    .line 451
    iget-wide v9, v2, Lpa/c;->d:J

    invoke-virtual {v7, v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v8, "durationInMillis"

    .line 452
    iget-wide v9, v2, Lpa/c;->e:J

    invoke-virtual {v7, v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v8, "modifiedAt"

    .line 453
    iget-wide v9, v2, Lpa/c;->g:J

    invoke-virtual {v7, v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v8, "videoPageUrl"

    .line 454
    iget-object v9, v2, Lpa/c;->h:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "detailPageUrl"

    .line 455
    iget-object v9, v2, Lpa/c;->i:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "posterUrl"

    .line 456
    iget-object v2, v2, Lpa/c;->j:Ljava/lang/String;

    invoke-virtual {v7, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 458
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    invoke-static {v2, v7}, Lcom/supertws/dubokutv/LanSyncManager;->access$700(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " @"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v3, 0x3e8

    div-long/2addr v5, v3

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "s"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 461
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to broadcast progress: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
