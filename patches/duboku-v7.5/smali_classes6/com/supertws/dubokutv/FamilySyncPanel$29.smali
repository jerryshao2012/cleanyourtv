.class public final synthetic Lcom/supertws/dubokutv/FamilySyncPanel$29;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/supertws/dubokutv/FamilySyncPanel;"
    method = "lambda$actionRow$1"
    proto = "(Ljava/lang/Runnable;Landroid/view/View;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel$29;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel$29;->f$0:Ljava/lang/Runnable;

    invoke-static {v0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->lambda$actionRow$1(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method
