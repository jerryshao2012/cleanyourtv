.class public final synthetic Lcom/supertws/dubokutv/FamilySyncPanel$16;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/supertws/dubokutv/FamilySyncPanel;"
    method = "lambda$pollAuth$10"
    proto = "(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/supertws/dubokutv/FamilySyncPanel;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lorg/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(Lcom/supertws/dubokutv/FamilySyncPanel;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel$16;->f$0:Lcom/supertws/dubokutv/FamilySyncPanel;

    iput-object p2, p0, Lcom/supertws/dubokutv/FamilySyncPanel$16;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/supertws/dubokutv/FamilySyncPanel$16;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/supertws/dubokutv/FamilySyncPanel$16;->f$3:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel$16;->f$0:Lcom/supertws/dubokutv/FamilySyncPanel;

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel$16;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/supertws/dubokutv/FamilySyncPanel$16;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/supertws/dubokutv/FamilySyncPanel$16;->f$3:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2, v3}, Lcom/supertws/dubokutv/FamilySyncPanel;->lambda$pollAuth$10$com-supertws-dubokutv-FamilySyncPanel(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
