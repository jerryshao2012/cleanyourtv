.class public final synthetic Lcom/supertws/dubokutv/FamilySyncPanel$5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/supertws/dubokutv/FamilySyncPanel;"
    method = "lambda$stopAuthPolling$13"
    proto = "(Ljava/lang/String;Ljava/lang/String;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel$5;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/supertws/dubokutv/FamilySyncPanel$5;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel$5;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel$5;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/supertws/dubokutv/FamilySyncPanel;->lambda$stopAuthPolling$13(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
