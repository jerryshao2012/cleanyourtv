.class Lcom/supertws/dubokutv/CloudSyncClient$3;
.super Ljava/lang/Object;
.source "CloudSyncClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/supertws/dubokutv/CloudSyncClient;->fetchKnownPeers(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$identity:Lcom/supertws/dubokutv/FamilyIdentity;


# direct methods
.method constructor <init>(Lcom/supertws/dubokutv/FamilyIdentity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 258
    iput-object p1, p0, Lcom/supertws/dubokutv/CloudSyncClient$3;->val$identity:Lcom/supertws/dubokutv/FamilyIdentity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 260
    iget-object v0, p0, Lcom/supertws/dubokutv/CloudSyncClient$3;->val$identity:Lcom/supertws/dubokutv/FamilyIdentity;

    invoke-virtual {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->familySecret()Ljava/lang/String;

    move-result-object v0

    .line 261
    iget-object v1, p0, Lcom/supertws/dubokutv/CloudSyncClient$3;->val$identity:Lcom/supertws/dubokutv/FamilyIdentity;

    invoke-virtual {v1}, Lcom/supertws/dubokutv/FamilyIdentity;->familyId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/supertws/dubokutv/CloudSyncClient;->registerFamily(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 262
    :cond_0
    nop

    .line 263
    iget-object v1, p0, Lcom/supertws/dubokutv/CloudSyncClient$3;->val$identity:Lcom/supertws/dubokutv/FamilyIdentity;

    invoke-virtual {v1}, Lcom/supertws/dubokutv/FamilyIdentity;->peers()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 265
    :try_start_0
    iget-object v5, p0, Lcom/supertws/dubokutv/CloudSyncClient$3;->val$identity:Lcom/supertws/dubokutv/FamilyIdentity;

    invoke-virtual {v5}, Lcom/supertws/dubokutv/FamilyIdentity;->familyId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4, v0}, Lcom/supertws/dubokutv/CloudSyncClient;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 266
    iget-object v6, p0, Lcom/supertws/dubokutv/CloudSyncClient$3;->val$identity:Lcom/supertws/dubokutv/FamilyIdentity;

    invoke-virtual {v6}, Lcom/supertws/dubokutv/FamilyIdentity;->familyId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "familyId"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "deviceId"

    .line 267
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 268
    invoke-static {v5}, Lcom/supertws/dubokutv/ProgressSnapshot;->valid(Lorg/json/JSONObject;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 269
    invoke-static {v5, v4}, Lcom/supertws/dubokutv/LanSyncManager;->mergeCloudSnapshot(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    or-int/2addr v3, v4

    .line 272
    :cond_1
    goto :goto_1

    :catch_0
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Peer read deferred: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "R2Sync"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :goto_1
    goto :goto_0

    .line 274
    :cond_2
    if-nez v3, :cond_3

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->access$1200()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "cloudDirty"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->onRecordSaved()V

    .line 275
    :cond_4
    return-void
.end method
