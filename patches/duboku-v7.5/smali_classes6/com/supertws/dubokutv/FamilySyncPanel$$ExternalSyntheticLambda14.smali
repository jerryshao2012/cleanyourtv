.class public final synthetic Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/supertws/dubokutv/FamilySyncPanel;


# direct methods
.method public synthetic constructor <init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda14;->f$0:Lcom/supertws/dubokutv/FamilySyncPanel;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda14;->f$0:Lcom/supertws/dubokutv/FamilySyncPanel;

    invoke-virtual {v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->lambda$pollAuth$11$com-supertws-dubokutv-FamilySyncPanel()V

    return-void
.end method
