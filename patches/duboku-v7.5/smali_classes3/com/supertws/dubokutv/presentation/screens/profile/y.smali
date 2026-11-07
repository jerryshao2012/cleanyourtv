.class public final synthetic Lcom/supertws/dubokutv/presentation/screens/profile/y;
.super Ljava/lang/Object;
.source "r8-map-id-8ba8015df6390efac2340e8bc72cbaa0af05ae8dc58e92835996b10ae6d6a13d"

# interfaces
.implements Lrb/k;


# instance fields
.field public final synthetic a:Lkotlinx/coroutines/x;

.field public final synthetic b:Lcom/supertws/dubokutv/presentation/screens/profile/w;

.field public final synthetic c:Lrb/k;

.field public final synthetic d:Landroidx/compose/runtime/a3;

.field public final synthetic f:Landroidx/compose/runtime/a3;

.field public final synthetic g:Landroidx/compose/runtime/a3;

.field public final synthetic i:Landroidx/compose/runtime/a3;

.field public final synthetic p:Landroidx/compose/runtime/a3;

.field public final synthetic v:Landroidx/compose/runtime/z0;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/x;Lcom/supertws/dubokutv/presentation/screens/profile/w;Lrb/k;Landroidx/compose/runtime/b1;Landroidx/compose/runtime/b1;Landroidx/compose/runtime/b1;Landroidx/compose/runtime/a3;Landroidx/compose/runtime/b1;Landroidx/compose/runtime/z0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/supertws/dubokutv/presentation/screens/profile/y;->a:Lkotlinx/coroutines/x;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/supertws/dubokutv/presentation/screens/profile/y;->b:Lcom/supertws/dubokutv/presentation/screens/profile/w;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/supertws/dubokutv/presentation/screens/profile/y;->c:Lrb/k;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/supertws/dubokutv/presentation/screens/profile/y;->d:Landroidx/compose/runtime/a3;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/supertws/dubokutv/presentation/screens/profile/y;->f:Landroidx/compose/runtime/a3;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/supertws/dubokutv/presentation/screens/profile/y;->g:Landroidx/compose/runtime/a3;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/supertws/dubokutv/presentation/screens/profile/y;->i:Landroidx/compose/runtime/a3;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/supertws/dubokutv/presentation/screens/profile/y;->p:Landroidx/compose/runtime/a3;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/supertws/dubokutv/presentation/screens/profile/y;->v:Landroidx/compose/runtime/z0;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Lk5/x;

    .line 6
    .line 7
    const-string v2, "$this$NavHost"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object v2, Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;->About:Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;

    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;->invoke()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    sget-object v3, Lcom/supertws/dubokutv/presentation/screens/profile/e;->a:Landroidx/compose/runtime/internal/d;

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    const/16 v5, 0xfe

    .line 22
    .line 23
    invoke-static {v1, v2, v4, v3, v5}, Landroidx/navigation/compose/m;->g(Lk5/x;Ljava/lang/String;Ljava/util/List;Landroidx/compose/runtime/internal/d;I)V

    .line 24
    .line 25
    .line 26
    sget-object v2, Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;->WatchHistory:Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;->invoke()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    new-instance v3, Lcom/supertws/dubokutv/presentation/screens/dashboard/b0;

    .line 33
    .line 34
    const/4 v6, 0x1

    .line 35
    iget-object v7, v0, Lcom/supertws/dubokutv/presentation/screens/profile/y;->a:Lkotlinx/coroutines/x;

    .line 36
    .line 37
    iget-object v9, v0, Lcom/supertws/dubokutv/presentation/screens/profile/y;->b:Lcom/supertws/dubokutv/presentation/screens/profile/w;

    .line 38
    .line 39
    invoke-direct {v3, v6, v7, v9}, Lcom/supertws/dubokutv/presentation/screens/dashboard/b0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    new-instance v6, Landroidx/compose/runtime/internal/d;

    .line 43
    .line 44
    const v7, 0x77f98b26

    .line 45
    .line 46
    .line 47
    const/4 v8, 0x1

    .line 48
    invoke-direct {v6, v7, v3, v8}, Landroidx/compose/runtime/internal/d;-><init>(ILjava/lang/Object;Z)V

    .line 49
    .line 50
    .line 51
    invoke-static {v1, v2, v4, v6, v5}, Landroidx/navigation/compose/m;->g(Lk5/x;Ljava/lang/String;Ljava/util/List;Landroidx/compose/runtime/internal/d;I)V

    .line 52
    .line 53
    .line 54
    sget-object v2, Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;->Favorite:Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;

    .line 55
    .line 56
    invoke-virtual {v2}, Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;->invoke()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    new-instance v3, Lcom/supertws/dubokutv/presentation/screens/profile/support/g;

    .line 61
    .line 62
    const/4 v6, 0x2

    .line 63
    iget-object v7, v0, Lcom/supertws/dubokutv/presentation/screens/profile/y;->c:Lrb/k;

    .line 64
    .line 65
    invoke-direct {v3, v7, v6}, Lcom/supertws/dubokutv/presentation/screens/profile/support/g;-><init>(Ljava/lang/Object;I)V

    .line 66
    .line 67
    .line 68
    new-instance v6, Landroidx/compose/runtime/internal/d;

    .line 69
    .line 70
    const v7, 0x212a71a7

    .line 71
    .line 72
    .line 73
    invoke-direct {v6, v7, v3, v8}, Landroidx/compose/runtime/internal/d;-><init>(ILjava/lang/Object;Z)V

    .line 74
    .line 75
    .line 76
    invoke-static {v1, v2, v4, v6, v5}, Landroidx/navigation/compose/m;->g(Lk5/x;Ljava/lang/String;Ljava/util/List;Landroidx/compose/runtime/internal/d;I)V

    .line 77
    .line 78
    .line 79
    sget-object v2, Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;->Support:Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;

    .line 80
    .line 81
    invoke-virtual {v2}, Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;->invoke()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    sget-object v3, Lcom/supertws/dubokutv/presentation/screens/profile/e;->b:Landroidx/compose/runtime/internal/d;

    .line 86
    .line 87
    invoke-static {v1, v2, v4, v3, v5}, Landroidx/navigation/compose/m;->g(Lk5/x;Ljava/lang/String;Ljava/util/List;Landroidx/compose/runtime/internal/d;I)V

    .line 88
    .line 89
    .line 90
    sget-object v2, Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;->Setting:Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;

    .line 91
    .line 92
    invoke-virtual {v2}, Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;->invoke()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    move v3, v8

    .line 97
    new-instance v8, Lcom/supertws/dubokutv/presentation/screens/profile/b0;

    .line 98
    .line 99
    iget-object v10, v0, Lcom/supertws/dubokutv/presentation/screens/profile/y;->d:Landroidx/compose/runtime/a3;

    .line 100
    .line 101
    iget-object v11, v0, Lcom/supertws/dubokutv/presentation/screens/profile/y;->f:Landroidx/compose/runtime/a3;

    .line 102
    .line 103
    iget-object v12, v0, Lcom/supertws/dubokutv/presentation/screens/profile/y;->g:Landroidx/compose/runtime/a3;

    .line 104
    .line 105
    iget-object v13, v0, Lcom/supertws/dubokutv/presentation/screens/profile/y;->i:Landroidx/compose/runtime/a3;

    .line 106
    .line 107
    iget-object v14, v0, Lcom/supertws/dubokutv/presentation/screens/profile/y;->p:Landroidx/compose/runtime/a3;

    .line 108
    .line 109
    iget-object v15, v0, Lcom/supertws/dubokutv/presentation/screens/profile/y;->v:Landroidx/compose/runtime/z0;

    .line 110
    .line 111
    invoke-direct/range {v8 .. v15}, Lcom/supertws/dubokutv/presentation/screens/profile/b0;-><init>(Lcom/supertws/dubokutv/presentation/screens/profile/w;Landroidx/compose/runtime/a3;Landroidx/compose/runtime/a3;Landroidx/compose/runtime/a3;Landroidx/compose/runtime/a3;Landroidx/compose/runtime/a3;Landroidx/compose/runtime/z0;)V

    .line 112
    .line 113
    .line 114
    new-instance v6, Landroidx/compose/runtime/internal/d;

    .line 115
    .line 116
    const v7, 0x738c3ea9

    .line 117
    .line 118
    .line 119
    invoke-direct {v6, v7, v8, v3}, Landroidx/compose/runtime/internal/d;-><init>(ILjava/lang/Object;Z)V

    .line 120
    .line 121
    .line 122
    invoke-static {v1, v2, v4, v6, v5}, Landroidx/navigation/compose/m;->g(Lk5/x;Ljava/lang/String;Ljava/util/List;Landroidx/compose/runtime/internal/d;I)V

    .line 123
    .line 124
    .line 125
    sget-object v2, Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;->Family:Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;
    invoke-virtual {v2}, Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;->invoke()Ljava/lang/String;
    move-result-object v2
    new-instance v4, Lcom/supertws/dubokutv/presentation/screens/profile/FamilySyncRoute;
    invoke-direct {v4}, Lcom/supertws/dubokutv/presentation/screens/profile/FamilySyncRoute;-><init>()V
    new-instance v5, Landroidx/compose/runtime/internal/d;
    const v6, 0x5a7e3c12
    const/4 v7, 0x1
    invoke-direct {v5, v6, v4, v7}, Landroidx/compose/runtime/internal/d;-><init>(ILjava/lang/Object;Z)V
    const/4 v14, 0x0
    const/16 v15, 0xfe
    invoke-static {v1, v2, v14, v5, v15}, Landroidx/navigation/compose/m;->g(Lk5/x;Ljava/lang/String;Ljava/util/List;Landroidx/compose/runtime/internal/d;I)V

    sget-object v1, Lkotlin/w;->a:Lkotlin/w;

    .line 126
    .line 127
    return-object v1
.end method
