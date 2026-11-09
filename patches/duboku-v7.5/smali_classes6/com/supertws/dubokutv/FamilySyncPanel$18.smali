.class public final synthetic Lcom/supertws/dubokutv/FamilySyncPanel$18;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/supertws/dubokutv/FamilySyncPanel;"
    method = "lambda$syncToggleRow$0"
    proto = "(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Z)V"
.end annotation


# instance fields
.field public final synthetic f$0:Landroid/widget/TextView;

.field public final synthetic f$1:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel$18;->f$0:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/supertws/dubokutv/FamilySyncPanel$18;->f$1:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel$18;->f$0:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel$18;->f$1:Landroid/widget/TextView;

    invoke-static {v0, v1, p1, p2}, Lcom/supertws/dubokutv/FamilySyncPanel;->lambda$syncToggleRow$0(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Z)V

    return-void
.end method
