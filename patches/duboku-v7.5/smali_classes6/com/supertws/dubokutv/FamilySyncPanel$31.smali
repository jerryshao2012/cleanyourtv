.class public final synthetic Lcom/supertws/dubokutv/FamilySyncPanel$31;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/supertws/dubokutv/FamilySyncPanel;"
    method = "lambda$pollAuth$9"
    proto = "()V"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/supertws/dubokutv/FamilySyncPanel;


# direct methods
.method public synthetic constructor <init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel$31;->f$0:Lcom/supertws/dubokutv/FamilySyncPanel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel$31;->f$0:Lcom/supertws/dubokutv/FamilySyncPanel;

    invoke-virtual {v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->lambda$pollAuth$9$com-supertws-dubokutv-FamilySyncPanel()V

    return-void
.end method
