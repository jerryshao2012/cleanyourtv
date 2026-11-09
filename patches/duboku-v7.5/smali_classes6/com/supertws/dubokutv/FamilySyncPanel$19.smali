.class public final synthetic Lcom/supertws/dubokutv/FamilySyncPanel$19;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/supertws/dubokutv/FamilySyncPanel;"
    method = "lambda$cleanUp$23"
    proto = "(Lorg/json/JSONArray;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/supertws/dubokutv/FamilySyncPanel;

.field public final synthetic f$1:Lorg/json/JSONArray;


# direct methods
.method public synthetic constructor <init>(Lcom/supertws/dubokutv/FamilySyncPanel;Lorg/json/JSONArray;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel$19;->f$0:Lcom/supertws/dubokutv/FamilySyncPanel;

    iput-object p2, p0, Lcom/supertws/dubokutv/FamilySyncPanel$19;->f$1:Lorg/json/JSONArray;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel$19;->f$0:Lcom/supertws/dubokutv/FamilySyncPanel;

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel$19;->f$1:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lcom/supertws/dubokutv/FamilySyncPanel;->lambda$cleanUp$23$com-supertws-dubokutv-FamilySyncPanel(Lorg/json/JSONArray;)V

    return-void
.end method
