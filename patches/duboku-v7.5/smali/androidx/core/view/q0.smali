.class public abstract Landroidx/core/view/q0;
.super Ljava/lang/Object;
.source "r8-map-id-8ba8015df6390efac2340e8bc72cbaa0af05ae8dc58e92835996b10ae6d6a13d"


# direct methods
.method public static a(Landroid/view/View;)Landroidx/core/view/g2;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    add-int/lit8 v0, v0, -0x17

    if-ltz v0, :cond_1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    invoke-static {v1, v0}, Landroidx/core/view/g2;->c(Landroid/view/View;Landroid/view/WindowInsets;)Landroidx/core/view/g2;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, v0, Landroidx/core/view/g2;->a:Landroidx/core/view/d2;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Landroidx/core/view/d2;->y(Landroidx/core/view/g2;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {v1, p0}, Landroidx/core/view/d2;->d(Landroid/view/View;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p0}, Landroidx/core/view/d2;->p(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Landroidx/core/view/d2;->q()V

    .line 29
    .line 30
    .line 31
    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
