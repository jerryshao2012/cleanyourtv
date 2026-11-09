.class public final synthetic Lcom/supertws/dubokutv/FamilySyncPanel$21;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/supertws/dubokutv/FamilySyncPanel;"
    method = "lambda$previewMerge$18"
    proto = "(Lorg/json/JSONObject;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/supertws/dubokutv/FamilySyncPanel;

.field public final synthetic f$1:Lorg/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(Lcom/supertws/dubokutv/FamilySyncPanel;Lorg/json/JSONObject;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel$21;->f$0:Lcom/supertws/dubokutv/FamilySyncPanel;

    iput-object p2, p0, Lcom/supertws/dubokutv/FamilySyncPanel$21;->f$1:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel$21;->f$0:Lcom/supertws/dubokutv/FamilySyncPanel;

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel$21;->f$1:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/supertws/dubokutv/FamilySyncPanel;->lambda$previewMerge$18$com-supertws-dubokutv-FamilySyncPanel(Lorg/json/JSONObject;)V

    return-void
.end method
