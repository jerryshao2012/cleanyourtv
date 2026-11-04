.class final Landroidx/tv/material3/SurfaceImplKt$handleDPadEnter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-8ba8015df6390efac2340e8bc72cbaa0af05ae8dc58e92835996b10ae6d6a13d"

# interfaces
.implements Lrb/o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lrb/o;"
    }
.end annotation


# instance fields
.field final synthetic $enabled:Z

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/m;

.field final synthetic $onClick:Lrb/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrb/a;"
        }
    .end annotation
.end field

.field final synthetic $onLongClick:Lrb/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrb/a;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLandroidx/compose/foundation/interaction/m;Lrb/a;Lrb/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/compose/foundation/interaction/m;",
            "Lrb/a;",
            "Lrb/a;",
            ")V"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Landroidx/tv/material3/SurfaceImplKt$handleDPadEnter$2;->$enabled:Z

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/tv/material3/SurfaceImplKt$handleDPadEnter$2;->$interactionSource:Landroidx/compose/foundation/interaction/m;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/tv/material3/SurfaceImplKt$handleDPadEnter$2;->$onLongClick:Lrb/a;

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/tv/material3/SurfaceImplKt$handleDPadEnter$2;->$onClick:Lrb/a;

    .line 8
    .line 9
    const/4 p1, 0x3

    .line 10
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static final synthetic access$invoke$lambda$2(Landroidx/compose/runtime/b1;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/tv/material3/SurfaceImplKt$handleDPadEnter$2;->invoke$lambda$2(Landroidx/compose/runtime/b1;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$invoke$lambda$3(Landroidx/compose/runtime/b1;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/tv/material3/SurfaceImplKt$handleDPadEnter$2;->invoke$lambda$3(Landroidx/compose/runtime/b1;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$invoke$lambda$4(Landroidx/compose/runtime/a3;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/tv/material3/SurfaceImplKt$handleDPadEnter$2;->invoke$lambda$4(Landroidx/compose/runtime/a3;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final invoke$lambda$2(Landroidx/compose/runtime/b1;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/b1;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static final invoke$lambda$3(Landroidx/compose/runtime/b1;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/b1;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p0, p1}, Landroidx/compose/runtime/b1;->setValue(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static final invoke$lambda$4(Landroidx/compose/runtime/a3;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/a3;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/q;Landroidx/compose/runtime/k;I)Landroidx/compose/ui/q;
    .locals 9

    check-cast p2, Landroidx/compose/runtime/p;

    const p3, -0x357247e6    # -4643853.0f

    invoke-virtual {p2, p3}, Landroidx/compose/runtime/p;->d0(I)V

    .line 2
    iget-boolean p3, p0, Landroidx/tv/material3/SurfaceImplKt$handleDPadEnter$2;->$enabled:Z

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 3
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/p;->p(Z)V

    return-object p1

    :cond_0
    const p3, 0x2e20b340

    .line 4
    invoke-virtual {p2, p3}, Landroidx/compose/runtime/p;->d0(I)V

    const p3, -0x1d58f75c

    .line 5
    invoke-virtual {p2, p3}, Landroidx/compose/runtime/p;->d0(I)V

    .line 6
    invoke-virtual {p2}, Landroidx/compose/runtime/p;->Q()Ljava/lang/Object;

    move-result-object p3

    .line 7
    sget-object v1, Landroidx/compose/runtime/j;->a:Landroidx/compose/runtime/f;

    if-ne p3, v1, :cond_1

    .line 8
    sget-object p3, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 9
    invoke-static {p3, p2}, Landroidx/compose/runtime/q;->o(Lkotlin/coroutines/EmptyCoroutineContext;Landroidx/compose/runtime/k;)Lkotlinx/coroutines/x;

    move-result-object p3

    .line 10
    new-instance v2, Landroidx/compose/runtime/a0;

    invoke-direct {v2, p3}, Landroidx/compose/runtime/a0;-><init>(Lkotlinx/coroutines/x;)V

    .line 11
    invoke-virtual {p2, v2}, Landroidx/compose/runtime/p;->n0(Ljava/lang/Object;)V

    move-object p3, v2

    .line 12
    :cond_1
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/p;->p(Z)V

    .line 13
    check-cast p3, Landroidx/compose/runtime/a0;

    .line 14
    iget-object v3, p3, Landroidx/compose/runtime/a0;->a:Lkotlinx/coroutines/x;

    .line 15
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/p;->p(Z)V

    const p3, -0x43f1aff9

    .line 16
    invoke-virtual {p2, p3}, Landroidx/compose/runtime/p;->d0(I)V

    .line 17
    invoke-virtual {p2}, Landroidx/compose/runtime/p;->Q()Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_2

    .line 18
    new-instance p3, Landroidx/compose/foundation/interaction/p;

    const-wide/16 v4, 0x0

    invoke-direct {p3, v4, v5}, Landroidx/compose/foundation/interaction/p;-><init>(J)V

    .line 19
    invoke-virtual {p2, p3}, Landroidx/compose/runtime/p;->n0(Ljava/lang/Object;)V

    .line 20
    :cond_2
    move-object v7, p3

    check-cast v7, Landroidx/compose/foundation/interaction/p;

    .line 21
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/p;->p(Z)V

    const p3, -0x43f1a687

    .line 22
    invoke-virtual {p2, p3}, Landroidx/compose/runtime/p;->d0(I)V

    .line 23
    invoke-virtual {p2}, Landroidx/compose/runtime/p;->Q()Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    .line 24
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p3}, Landroidx/compose/runtime/q;->D(Ljava/lang/Object;)Landroidx/compose/runtime/b1;

    move-result-object p3

    .line 25
    invoke-virtual {p2, p3}, Landroidx/compose/runtime/p;->n0(Ljava/lang/Object;)V

    .line 26
    :cond_3
    move-object v8, p3

    check-cast v8, Landroidx/compose/runtime/b1;

    .line 27
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/p;->p(Z)V

    .line 28
    iget-object p3, p0, Landroidx/tv/material3/SurfaceImplKt$handleDPadEnter$2;->$interactionSource:Landroidx/compose/foundation/interaction/m;

    invoke-static {p3, p2, v0}, Landroidx/compose/foundation/interaction/f;->c(Landroidx/compose/foundation/interaction/l;Landroidx/compose/runtime/k;I)Landroidx/compose/runtime/b1;

    move-result-object p3

    const v2, -0x43f19519

    .line 29
    invoke-virtual {p2, v2}, Landroidx/compose/runtime/p;->d0(I)V

    invoke-virtual {p2, p3}, Landroidx/compose/runtime/p;->f(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {p2, v3}, Landroidx/compose/runtime/p;->h(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v2, v4

    iget-object v4, p0, Landroidx/tv/material3/SurfaceImplKt$handleDPadEnter$2;->$interactionSource:Landroidx/compose/foundation/interaction/m;

    invoke-virtual {p2, v4}, Landroidx/compose/runtime/p;->f(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v2, v4

    invoke-virtual {p2, v7}, Landroidx/compose/runtime/p;->h(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v2, v4

    iget-object v4, p0, Landroidx/tv/material3/SurfaceImplKt$handleDPadEnter$2;->$interactionSource:Landroidx/compose/foundation/interaction/m;

    .line 30
    invoke-virtual {p2}, Landroidx/compose/runtime/p;->Q()Ljava/lang/Object;

    move-result-object v5

    if-nez v2, :cond_4

    if-ne v5, v1, :cond_5

    .line 31
    :cond_4
    new-instance v5, Landroidx/tv/material3/SurfaceImplKt$handleDPadEnter$2$1$1;

    invoke-direct {v5, v3, p3, v4, v7}, Landroidx/tv/material3/SurfaceImplKt$handleDPadEnter$2$1$1;-><init>(Lkotlinx/coroutines/x;Landroidx/compose/runtime/a3;Landroidx/compose/foundation/interaction/m;Landroidx/compose/foundation/interaction/p;)V

    .line 32
    invoke-virtual {p2, v5}, Landroidx/compose/runtime/p;->n0(Ljava/lang/Object;)V

    .line 33
    :cond_5
    check-cast v5, Lrb/k;

    .line 34
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/p;->p(Z)V

    .line 35
    invoke-static {p1, v5}, Landroidx/compose/ui/focus/m0;->u(Landroidx/compose/ui/q;Lrb/k;)Landroidx/compose/ui/q;

    move-result-object p1

    const p3, -0x43f16ddd

    invoke-virtual {p2, p3}, Landroidx/compose/runtime/p;->d0(I)V

    invoke-virtual {p2, v3}, Landroidx/compose/runtime/p;->h(Ljava/lang/Object;)Z

    move-result p3

    iget-object v2, p0, Landroidx/tv/material3/SurfaceImplKt$handleDPadEnter$2;->$interactionSource:Landroidx/compose/foundation/interaction/m;

    invoke-virtual {p2, v2}, Landroidx/compose/runtime/p;->f(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr p3, v2

    invoke-virtual {p2, v7}, Landroidx/compose/runtime/p;->h(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr p3, v2

    iget-object v2, p0, Landroidx/tv/material3/SurfaceImplKt$handleDPadEnter$2;->$onLongClick:Lrb/a;

    invoke-virtual {p2, v2}, Landroidx/compose/runtime/p;->f(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr p3, v2

    iget-object v2, p0, Landroidx/tv/material3/SurfaceImplKt$handleDPadEnter$2;->$onClick:Lrb/a;

    invoke-virtual {p2, v2}, Landroidx/compose/runtime/p;->f(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr p3, v2

    .line 36
    iget-object v4, p0, Landroidx/tv/material3/SurfaceImplKt$handleDPadEnter$2;->$onLongClick:Lrb/a;

    iget-object v5, p0, Landroidx/tv/material3/SurfaceImplKt$handleDPadEnter$2;->$onClick:Lrb/a;

    iget-object v6, p0, Landroidx/tv/material3/SurfaceImplKt$handleDPadEnter$2;->$interactionSource:Landroidx/compose/foundation/interaction/m;

    .line 37
    invoke-virtual {p2}, Landroidx/compose/runtime/p;->Q()Ljava/lang/Object;

    move-result-object v2

    if-nez p3, :cond_6

    if-ne v2, v1, :cond_7

    .line 38
    :cond_6
    new-instance v2, Landroidx/tv/material3/SurfaceImplKt$handleDPadEnter$2$2$1;

    invoke-direct/range {v2 .. v8}, Landroidx/tv/material3/SurfaceImplKt$handleDPadEnter$2$2$1;-><init>(Lkotlinx/coroutines/x;Lrb/a;Lrb/a;Landroidx/compose/foundation/interaction/m;Landroidx/compose/foundation/interaction/p;Landroidx/compose/runtime/b1;)V

    .line 39
    invoke-virtual {p2, v2}, Landroidx/compose/runtime/p;->n0(Ljava/lang/Object;)V

    .line 40
    :cond_7
    check-cast v2, Lrb/k;

    .line 41
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/p;->p(Z)V

    invoke-static {p1, v6, v5}, Landroidx/compose/foundation/i;->k(Landroidx/compose/ui/q;Landroidx/compose/foundation/interaction/m;Lrb/a;)Landroidx/compose/ui/q;

    move-result-object p1

    .line 42
    invoke-static {p1, v2}, Lz0/c;->d(Landroidx/compose/ui/q;Lrb/k;)Landroidx/compose/ui/q;

    move-result-object p1

    .line 43
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/p;->p(Z)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/ui/q;

    check-cast p2, Landroidx/compose/runtime/k;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroidx/tv/material3/SurfaceImplKt$handleDPadEnter$2;->invoke(Landroidx/compose/ui/q;Landroidx/compose/runtime/k;I)Landroidx/compose/ui/q;

    move-result-object p1

    return-object p1
.end method
