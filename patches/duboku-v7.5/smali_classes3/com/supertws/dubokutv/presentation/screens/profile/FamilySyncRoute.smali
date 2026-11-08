.class public final Lcom/supertws/dubokutv/presentation/screens/profile/FamilySyncRoute;
.super Ljava/lang/Object;

# interfaces
.implements Lrb/p;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v3, p3
    check-cast v3, Landroidx/compose/runtime/k;

    sget-object v0, Lcom/supertws/dubokutv/presentation/screens/profile/FamilySyncPanelFactory;->INSTANCE:Lcom/supertws/dubokutv/presentation/screens/profile/FamilySyncPanelFactory;

    sget-object v1, Landroidx/compose/ui/n;->a:Landroidx/compose/ui/n;
    const/high16 v2, 0x3f800000
    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/f2;->c(Landroidx/compose/ui/q;F)Landroidx/compose/ui/q;
    move-result-object v1

    invoke-static {v1}, Landroidx/compose/foundation/i;->l(Landroidx/compose/ui/q;)Landroidx/compose/ui/q;
    move-result-object v1

    const/4 v2, 0x0
    const/4 v4, 0x0
    const/4 v5, 0x4
    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/viewinterop/g;->a(Lrb/k;Landroidx/compose/ui/q;Lrb/k;Landroidx/compose/runtime/k;II)V

    sget-object v0, Lkotlin/w;->a:Lkotlin/w;
    return-object v0
.end method
