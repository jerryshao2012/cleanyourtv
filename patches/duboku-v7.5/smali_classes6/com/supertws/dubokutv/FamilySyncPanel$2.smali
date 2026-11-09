.class public final synthetic Lcom/supertws/dubokutv/FamilySyncPanel$2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/supertws/dubokutv/FamilySyncPanel;"
    method = "lambda$showHome$2"
    proto = "(Landroid/view/View;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/supertws/dubokutv/FamilySyncPanel;


# direct methods
.method public synthetic constructor <init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel$2;->f$0:Lcom/supertws/dubokutv/FamilySyncPanel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel$2;->f$0:Lcom/supertws/dubokutv/FamilySyncPanel;

    invoke-virtual {v0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->lambda$showHome$2$com-supertws-dubokutv-FamilySyncPanel(Landroid/view/View;)V

    return-void
.end method
