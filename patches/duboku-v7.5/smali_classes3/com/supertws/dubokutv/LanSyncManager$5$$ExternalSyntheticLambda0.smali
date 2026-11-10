.class public final synthetic Lcom/supertws/dubokutv/LanSyncManager$5$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lorg/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/supertws/dubokutv/LanSyncManager$5$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/supertws/dubokutv/LanSyncManager$5$$ExternalSyntheticLambda0;->f$1:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/supertws/dubokutv/LanSyncManager$5$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/supertws/dubokutv/LanSyncManager$5$$ExternalSyntheticLambda0;->f$1:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/supertws/dubokutv/LanSyncManager$5;->lambda$run$0(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
