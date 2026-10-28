.class public final Lcom/supertws/dubokutv/s;
.super Ljava/lang/Object;
.source "r8-map-id-8ba8015df6390efac2340e8bc72cbaa0af05ae8dc58e92835996b10ae6d6a13d"

# interfaces
.implements Lrb/n;


# instance fields
.field public final synthetic a:Lcom/supertws/dubokutv/MainActivity;

.field public final synthetic b:Z


# direct methods
.method public constructor <init>(Lcom/supertws/dubokutv/MainActivity;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/supertws/dubokutv/s;->a:Lcom/supertws/dubokutv/MainActivity;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/supertws/dubokutv/s;->b:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Landroidx/compose/runtime/k;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Number;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    and-int/lit8 p2, p2, 0x3

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    if-ne p2, v0, :cond_1

    .line 13
    .line 14
    move-object p2, p1

    .line 15
    check-cast p2, Landroidx/compose/runtime/p;

    .line 16
    .line 17
    invoke-virtual {p2}, Landroidx/compose/runtime/p;->F()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p2}, Landroidx/compose/runtime/p;->W()V

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    :try_start_compose
    iget-boolean p2, p0, Lcom/supertws/dubokutv/s;->b:Z

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iget-object v1, p0, Lcom/supertws/dubokutv/s;->a:Lcom/supertws/dubokutv/MainActivity;

    .line 32
    .line 33
    invoke-static {v1, p2, p1, v0}, Lcom/supertws/dubokutv/d0;->a(Lcom/supertws/dubokutv/MainActivity;ZLandroidx/compose/runtime/k;I)V
    :try_end_compose
    .catch Ljava/lang/Throwable; {:try_start_compose .. :try_end_compose} :catch_compose

    goto :goto_1

    :catch_compose
    move-exception v2

    :try_start_cexp
    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/supertws/dubokutv/Dbg;->stage(Ljava/lang/String;)V
    :try_end_cexp
    .catch Ljava/lang/Throwable; {:try_start_cexp .. :try_end_cexp} :catch_cexp2

    goto :goto_1

    :catch_cexp2
    move-exception v2

    .line 34
    .line 35
    .line 36
    :goto_1
    sget-object p1, Lkotlin/w;->a:Lkotlin/w;

    .line 37
    .line 38
    return-object p1
.end method
