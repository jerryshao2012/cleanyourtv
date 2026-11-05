.class public final Lcom/supertws/dubokutv/presentation/screens/history/v;
.super Ljava/lang/Object;
.source "r8-map-id-8ba8015df6390efac2340e8bc72cbaa0af05ae8dc58e92835996b10ae6d6a13d"

# interfaces
.implements Lrb/p;


# instance fields
.field public final synthetic a:F

.field public final synthetic b:F

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lrb/k;

.field public final synthetic f:F

.field public final synthetic g:Lcom/supertws/dubokutv/presentation/common/ItemDirection;

.field public final synthetic i:Lrb/k;


# direct methods
.method public constructor <init>(FFLjava/lang/String;Lrb/k;FLcom/supertws/dubokutv/presentation/common/ItemDirection;Lrb/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/supertws/dubokutv/presentation/screens/history/v;->a:F

    .line 5
    .line 6
    iput p2, p0, Lcom/supertws/dubokutv/presentation/screens/history/v;->b:F

    .line 7
    .line 8
    iput-object p3, p0, Lcom/supertws/dubokutv/presentation/screens/history/v;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/supertws/dubokutv/presentation/screens/history/v;->d:Lrb/k;

    .line 11
    .line 12
    iput p5, p0, Lcom/supertws/dubokutv/presentation/screens/history/v;->f:F

    .line 13
    .line 14
    iput-object p6, p0, Lcom/supertws/dubokutv/presentation/screens/history/v;->g:Lcom/supertws/dubokutv/presentation/common/ItemDirection;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/supertws/dubokutv/presentation/screens/history/v;->i:Lrb/k;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v3, p2

    .line 4
    check-cast v3, Ljava/util/List;

    .line 5
    move-object/from16 v2, p3

    .line 6
    check-cast v2, Landroidx/compose/runtime/k;

    .line 25
    .line 26
    .line 27
    const-string v1, "recordState"

    .line 28
    .line 29
    invoke-static {v3, v1}, Lkotlin/jvm/internal/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget v1, v0, Lcom/supertws/dubokutv/presentation/screens/history/v;->b:F

    .line 33
    .line 34
    const/16 v4, 0xa

    .line 35
    .line 36
    iget v5, v0, Lcom/supertws/dubokutv/presentation/screens/history/v;->a:F

    .line 37
    .line 38
    const/4 v6, 0x0

    .line 39
    invoke-static {v5, v6, v1, v6, v4}, Landroidx/compose/foundation/layout/d;->f(FFFFI)Landroidx/compose/foundation/layout/v1;

    .line 40
    .line 41
    .line 42
    move-result-object v9

    .line 43
    const/16 v1, 0x14

    .line 44
    .line 45
    int-to-float v1, v1

    .line 46
    invoke-static {v1}, Landroidx/compose/foundation/layout/i;->g(F)Landroidx/compose/foundation/layout/g;

    .line 47
    .line 48
    .line 49
    move-result-object v10

    .line 50
    move-object v1, v2

    .line 51
    check-cast v1, Landroidx/compose/runtime/p;

    .line 52
    .line 53
    const v2, 0x4bdcfba9    # 2.896469E7f

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/p;->c0(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/p;->h(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    iget-object v4, v0, Lcom/supertws/dubokutv/presentation/screens/history/v;->c:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/p;->f(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    or-int/2addr v2, v5

    .line 70
    iget-object v5, v0, Lcom/supertws/dubokutv/presentation/screens/history/v;->d:Lrb/k;

    .line 71
    .line 72
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/p;->f(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    or-int/2addr v2, v5

    .line 77
    iget v5, v0, Lcom/supertws/dubokutv/presentation/screens/history/v;->f:F

    .line 78
    .line 79
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/p;->c(F)Z

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    or-int/2addr v2, v5

    .line 84
    iget-object v5, v0, Lcom/supertws/dubokutv/presentation/screens/history/v;->g:Lcom/supertws/dubokutv/presentation/common/ItemDirection;

    .line 85
    .line 86
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/p;->f(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    or-int/2addr v2, v5

    .line 91
    iget-object v5, v0, Lcom/supertws/dubokutv/presentation/screens/history/v;->i:Lrb/k;

    .line 92
    .line 93
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/p;->f(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    or-int/2addr v2, v5

    .line 98
    invoke-virtual {v1}, Landroidx/compose/runtime/p;->Q()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    if-nez v2, :cond_0

    .line 103
    .line 104
    sget-object v2, Landroidx/compose/runtime/j;->a:Landroidx/compose/runtime/f;

    .line 105
    .line 106
    if-ne v5, v2, :cond_1

    .line 107
    .line 108
    :cond_0
    new-instance v2, Lcom/supertws/dubokutv/presentation/screens/history/s;

    .line 109
    .line 110
    iget-object v5, v0, Lcom/supertws/dubokutv/presentation/screens/history/v;->d:Lrb/k;

    .line 111
    .line 112
    iget v6, v0, Lcom/supertws/dubokutv/presentation/screens/history/v;->f:F

    .line 113
    .line 114
    iget-object v7, v0, Lcom/supertws/dubokutv/presentation/screens/history/v;->g:Lcom/supertws/dubokutv/presentation/common/ItemDirection;

    .line 115
    .line 116
    iget-object v8, v0, Lcom/supertws/dubokutv/presentation/screens/history/v;->i:Lrb/k;

    .line 117
    .line 118
    invoke-direct/range {v2 .. v8}, Lcom/supertws/dubokutv/presentation/screens/history/s;-><init>(Ljava/util/List;Ljava/lang/String;Lrb/k;FLcom/supertws/dubokutv/presentation/common/ItemDirection;Lrb/k;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/p;->n0(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    move-object v5, v2

    .line 125
    :cond_1
    move-object v15, v5

    .line 126
    check-cast v15, Lrb/k;

    .line 127
    .line 128
    const/4 v2, 0x0

    .line 129
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/p;->p(Z)V

    .line 130
    .line 131
    .line 132
    const/16 v17, 0x6000

    .line 133
    .line 134
    const/16 v18, 0x1eb

    .line 135
    .line 136
    const/4 v7, 0x0

    .line 137
    const/4 v8, 0x0

    .line 138
    const/4 v11, 0x0

    .line 139
    const/4 v12, 0x0

    .line 140
    const/4 v13, 0x0

    .line 141
    const/4 v14, 0x0

    .line 142
    move-object/from16 v16, v1

    .line 143
    .line 144
    invoke-static/range {v7 .. v18}, Landroidx/compose/foundation/lazy/q;->c(Landroidx/compose/ui/q;Landroidx/compose/foundation/lazy/y;Landroidx/compose/foundation/layout/t1;Landroidx/compose/foundation/layout/f;Landroidx/compose/ui/h;Landroidx/compose/foundation/gestures/i1;ZLandroidx/compose/foundation/d;Lrb/k;Landroidx/compose/runtime/k;II)V

    .line 145
    .line 146
    .line 147
    sget-object v1, Lkotlin/w;->a:Lkotlin/w;

    .line 148
    .line 149
    return-object v1
.end method
