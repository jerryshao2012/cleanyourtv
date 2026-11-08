.class public final synthetic Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/supertws/dubokutv/FamilySyncPanel;

.field public final synthetic f$1:Lorg/json/JSONArray;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/supertws/dubokutv/FamilySyncPanel;Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda25;->f$0:Lcom/supertws/dubokutv/FamilySyncPanel;

    iput-object p2, p0, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda25;->f$1:Lorg/json/JSONArray;

    iput-object p3, p0, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda25;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda25;->f$0:Lcom/supertws/dubokutv/FamilySyncPanel;

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda25;->f$1:Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda25;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/supertws/dubokutv/FamilySyncPanel;->lambda$copyMerge$13$com-supertws-dubokutv-FamilySyncPanel(Lorg/json/JSONArray;Ljava/lang/String;)V

    return-void
.end method
