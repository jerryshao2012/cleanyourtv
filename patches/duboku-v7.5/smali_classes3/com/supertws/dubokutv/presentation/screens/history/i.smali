.class public abstract Lcom/supertws/dubokutv/presentation/screens/history/i;
.super Ljava/lang/Object;
.source "r8-map-id-8ba8015df6390efac2340e8bc72cbaa0af05ae8dc58e92835996b10ae6d6a13d"


# static fields
.field public static final synthetic a:I

.field public static final synthetic b:I


# direct methods
.method public static final a(Landroidx/compose/material3/f5;Landroidx/compose/runtime/k;I)V
    .locals 10

    .line 1
    const-string v0, "dismissState"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    move-object v6, p1

    .line 7
    check-cast v6, Landroidx/compose/runtime/p;

    .line 8
    .line 9
    const p1, 0x63feee26

    .line 10
    .line 11
    .line 12
    invoke-virtual {v6, p1}, Landroidx/compose/runtime/p;->e0(I)Landroidx/compose/runtime/p;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v6, p0}, Landroidx/compose/runtime/p;->h(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/4 v0, 0x2

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    const/4 p1, 0x4

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move p1, v0

    .line 25
    :goto_0
    or-int/2addr p1, p2

    .line 26
    const/4 v1, 0x3

    .line 27
    and-int/2addr p1, v1

    .line 28
    if-ne p1, v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {v6}, Landroidx/compose/runtime/p;->F()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-virtual {v6}, Landroidx/compose/runtime/p;->W()V

    .line 38
    .line 39
    .line 40
    goto/16 :goto_4

    .line 41
    .line 42
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroidx/compose/material3/f5;->a()Landroidx/compose/material3/SwipeToDismissBoxValue;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    sget-object v2, Lcom/supertws/dubokutv/presentation/screens/history/h;->a:[I

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    aget p1, v2, p1

    .line 53
    .line 54
    const/4 v9, 0x1

    .line 55
    if-eq p1, v9, :cond_5

    .line 56
    .line 57
    if-eq p1, v0, :cond_4

    .line 58
    .line 59
    if-ne p1, v1, :cond_3

    .line 60
    .line 61
    sget-wide v0, Landroidx/compose/ui/graphics/x;->h:J

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 65
    .line 66
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 67
    .line 68
    .line 69
    throw p0

    .line 70
    :cond_4
    sget-wide v0, Landroidx/compose/ui/graphics/x;->h:J

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_5
    const-wide v0, 0xffed1c24L

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/e0;->e(J)J

    .line 79
    .line 80
    .line 81
    move-result-wide v0

    .line 82
    :goto_2
    sget-object p1, Landroidx/compose/foundation/layout/f2;->c:Landroidx/compose/foundation/layout/j0;

    .line 83
    .line 84
    sget-object v2, Landroidx/compose/ui/graphics/e0;->b:Landroidx/compose/ui/graphics/s0;

    .line 85
    .line 86
    invoke-static {p1, v0, v1, v2}, Landroidx/compose/foundation/i;->f(Landroidx/compose/ui/q;JLandroidx/compose/ui/graphics/x0;)Landroidx/compose/ui/q;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    const/16 v0, 0x10

    .line 91
    .line 92
    int-to-float v0, v0

    .line 93
    const/16 v1, 0x8

    .line 94
    .line 95
    int-to-float v1, v1

    .line 96
    invoke-static {p1, v0, v1}, Landroidx/compose/foundation/layout/d;->x(Landroidx/compose/ui/q;FF)Landroidx/compose/ui/q;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    sget-object v0, Landroidx/compose/ui/d;->x:Landroidx/compose/ui/h;

    .line 101
    .line 102
    sget-object v1, Landroidx/compose/foundation/layout/i;->a:Landroidx/compose/foundation/layout/c;

    .line 103
    .line 104
    const/16 v2, 0x36

    .line 105
    .line 106
    invoke-static {v1, v0, v6, v2}, Landroidx/compose/foundation/layout/z1;->a(Landroidx/compose/foundation/layout/f;Landroidx/compose/ui/h;Landroidx/compose/runtime/k;I)Landroidx/compose/foundation/layout/b2;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    iget-wide v1, v6, Landroidx/compose/runtime/p;->T:J

    .line 111
    .line 112
    const/16 v3, 0x20

    .line 113
    .line 114
    ushr-long v3, v1, v3

    .line 115
    .line 116
    xor-long/2addr v1, v3

    .line 117
    long-to-int v1, v1

    .line 118
    invoke-virtual {v6}, Landroidx/compose/runtime/p;->l()Landroidx/compose/runtime/m1;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-static {v6, p1}, Landroidx/compose/ui/a;->c(Landroidx/compose/runtime/k;Landroidx/compose/ui/q;)Landroidx/compose/ui/q;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    sget-object v3, Landroidx/compose/ui/node/g;->h:Landroidx/compose/ui/node/f;

    .line 127
    .line 128
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    sget-object v3, Landroidx/compose/ui/node/f;->b:Lrb/a;

    .line 132
    .line 133
    invoke-virtual {v6}, Landroidx/compose/runtime/p;->g0()V

    .line 134
    .line 135
    .line 136
    iget-boolean v4, v6, Landroidx/compose/runtime/p;->S:Z

    .line 137
    .line 138
    if-eqz v4, :cond_6

    .line 139
    .line 140
    invoke-virtual {v6, v3}, Landroidx/compose/runtime/p;->k(Lrb/a;)V

    .line 141
    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_6
    invoke-virtual {v6}, Landroidx/compose/runtime/p;->q0()V

    .line 145
    .line 146
    .line 147
    :goto_3
    sget-object v3, Landroidx/compose/ui/node/f;->f:Lrb/n;

    .line 148
    .line 149
    invoke-static {v6, v0, v3}, Landroidx/compose/runtime/q;->L(Landroidx/compose/runtime/k;Ljava/lang/Object;Lrb/n;)V

    .line 150
    .line 151
    .line 152
    sget-object v0, Landroidx/compose/ui/node/f;->e:Lrb/n;

    .line 153
    .line 154
    invoke-static {v6, v2, v0}, Landroidx/compose/runtime/q;->L(Landroidx/compose/runtime/k;Ljava/lang/Object;Lrb/n;)V

    .line 155
    .line 156
    .line 157
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    sget-object v1, Landroidx/compose/ui/node/f;->g:Lrb/n;

    .line 162
    .line 163
    invoke-static {v6, v0, v1}, Landroidx/compose/runtime/q;->v(Landroidx/compose/runtime/k;Ljava/lang/Integer;Lrb/n;)V

    .line 164
    .line 165
    .line 166
    sget-object v0, Landroidx/compose/ui/node/f;->h:Lrb/k;

    .line 167
    .line 168
    invoke-static {v6, v0}, Landroidx/compose/runtime/q;->H(Landroidx/compose/runtime/k;Lrb/k;)V

    .line 169
    .line 170
    .line 171
    sget-object v0, Landroidx/compose/ui/node/f;->d:Lrb/n;

    .line 172
    .line 173
    invoke-static {v6, p1, v0}, Landroidx/compose/runtime/q;->L(Landroidx/compose/runtime/k;Ljava/lang/Object;Lrb/n;)V

    .line 174
    .line 175
    .line 176
    invoke-static {}, Landroidx/window/area/f;->e0()Landroidx/compose/ui/graphics/vector/f;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    const/16 v7, 0x30

    .line 181
    .line 182
    const/16 v8, 0xc

    .line 183
    .line 184
    const-string v2, "delete"

    .line 185
    .line 186
    const/4 v3, 0x0

    .line 187
    const-wide/16 v4, 0x0

    .line 188
    .line 189
    invoke-static/range {v1 .. v8}, Landroidx/compose/material3/a2;->b(Landroidx/compose/ui/graphics/vector/f;Ljava/lang/String;Landroidx/compose/ui/q;JLandroidx/compose/runtime/k;II)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v6, v9}, Landroidx/compose/runtime/p;->p(Z)V

    .line 193
    .line 194
    .line 195
    :goto_4
    invoke-virtual {v6}, Landroidx/compose/runtime/p;->t()Landroidx/compose/runtime/s1;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    if-eqz p1, :cond_7

    .line 200
    .line 201
    new-instance v0, Landroidx/compose/foundation/layout/o;

    .line 202
    .line 203
    const/4 v1, 0x7

    .line 204
    invoke-direct {v0, p0, p2, v1}, Landroidx/compose/foundation/layout/o;-><init>(Ljava/lang/Object;II)V

    .line 205
    .line 206
    .line 207
    iput-object v0, p1, Landroidx/compose/runtime/s1;->d:Lrb/n;

    .line 208
    .line 209
    :cond_7
    return-void
.end method

.method public static final b(Landroidx/compose/ui/q;ILjava/util/ArrayList;Lrb/k;Landroidx/compose/runtime/k;I)V
    .locals 16

    .line 1
    move/from16 v2, p1

    .line 2
    .line 3
    move-object/from16 v3, p2

    .line 4
    .line 5
    move-object/from16 v4, p3

    .line 6
    .line 7
    move/from16 v0, p5

    .line 8
    .line 9
    const-string v1, "onMovieClick"

    .line 10
    .line 11
    invoke-static {v4, v1}, Lkotlin/jvm/internal/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    move-object/from16 v12, p4

    .line 15
    .line 16
    check-cast v12, Landroidx/compose/runtime/p;

    .line 17
    .line 18
    const v1, -0x5411f8a5

    .line 19
    .line 20
    .line 21
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/p;->e0(I)Landroidx/compose/runtime/p;

    .line 22
    .line 23
    .line 24
    or-int/lit8 v1, v0, 0x6

    .line 25
    .line 26
    and-int/lit8 v5, v0, 0x30

    .line 27
    .line 28
    const/16 v6, 0x20

    .line 29
    .line 30
    if-nez v5, :cond_1

    .line 31
    .line 32
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/p;->d(I)Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-eqz v5, :cond_0

    .line 37
    .line 38
    move v5, v6

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/16 v5, 0x10

    .line 41
    .line 42
    :goto_0
    or-int/2addr v1, v5

    .line 43
    :cond_1
    and-int/lit16 v5, v0, 0x180

    .line 44
    .line 45
    if-nez v5, :cond_3

    .line 46
    .line 47
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/p;->h(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_2

    .line 52
    .line 53
    const/16 v5, 0x100

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    const/16 v5, 0x80

    .line 57
    .line 58
    :goto_1
    or-int/2addr v1, v5

    .line 59
    :cond_3
    and-int/lit16 v5, v0, 0xc00

    .line 60
    .line 61
    const/16 v7, 0x800

    .line 62
    .line 63
    if-nez v5, :cond_5

    .line 64
    .line 65
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/p;->h(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-eqz v5, :cond_4

    .line 70
    .line 71
    move v5, v7

    .line 72
    goto :goto_2

    .line 73
    :cond_4
    const/16 v5, 0x400

    .line 74
    .line 75
    :goto_2
    or-int/2addr v1, v5

    .line 76
    :cond_5
    and-int/lit16 v5, v1, 0x493

    .line 77
    .line 78
    const/16 v8, 0x492

    .line 79
    .line 80
    if-ne v5, v8, :cond_7

    .line 81
    .line 82
    invoke-virtual {v12}, Landroidx/compose/runtime/p;->F()Z

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    if-nez v5, :cond_6

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_6
    invoke-virtual {v12}, Landroidx/compose/runtime/p;->W()V

    .line 90
    .line 91
    .line 92
    move-object/from16 v1, p0

    .line 93
    .line 94
    goto/16 :goto_6

    .line 95
    .line 96
    :cond_7
    :goto_3
    sget-object v5, Landroidx/compose/ui/platform/h0;->c:Landroidx/compose/runtime/b0;

    .line 97
    .line 98
    invoke-virtual {v12, v5}, Landroidx/compose/runtime/p;->j(Landroidx/compose/runtime/r1;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    check-cast v5, Landroid/content/res/Resources;

    .line 103
    .line 104
    const v8, 0x5a98d7a6

    .line 105
    .line 106
    .line 107
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/p;->c0(I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v12, v5}, Landroidx/compose/runtime/p;->f(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v8

    .line 114
    invoke-virtual {v12}, Landroidx/compose/runtime/p;->Q()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v9

    .line 118
    sget-object v10, Landroidx/compose/runtime/j;->a:Landroidx/compose/runtime/f;

    .line 119
    .line 120
    if-nez v8, :cond_8

    .line 121
    .line 122
    if-ne v9, v10, :cond_9

    .line 123
    .line 124
    :cond_8
    const v8, 0x7f1100c5

    .line 125
    .line 126
    .line 127
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v9

    .line 131
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/p;->n0(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    :cond_9
    check-cast v9, Ljava/lang/String;

    .line 135
    .line 136
    const/4 v11, 0x0

    .line 137
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/p;->p(Z)V

    .line 138
    .line 139
    .line 140
    invoke-static {v9}, Lkotlin/jvm/internal/g;->b(Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    invoke-static {v12}, Lcom/supertws/dubokutv/presentation/screens/dashboard/i0;->e(Landroidx/compose/runtime/k;)Lcom/supertws/dubokutv/presentation/utils/e;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    const v8, 0x5a98e9a5

    .line 148
    .line 149
    .line 150
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/p;->c0(I)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v12}, Landroidx/compose/runtime/p;->Q()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v8

    .line 157
    if-ne v8, v10, :cond_a

    .line 158
    .line 159
    invoke-static {v12}, La3/d;->k(Landroidx/compose/runtime/p;)Landroidx/compose/ui/focus/y;

    .line 160
    .line 161
    .line 162
    move-result-object v8

    .line 163
    :cond_a
    check-cast v8, Landroidx/compose/ui/focus/y;

    .line 164
    .line 165
    const v13, 0x5a98f215

    .line 166
    .line 167
    .line 168
    invoke-static {v12, v11, v13}, Lcom/google/common/util/concurrent/c0;->n(Landroidx/compose/runtime/p;ZI)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v13

    .line 172
    if-ne v13, v10, :cond_b

    .line 173
    .line 174
    new-instance v13, Lcom/supertws/dubokutv/presentation/screens/history/TvHistoryScreenKt$HistoryRecord$1$1;

    .line 175
    .line 176
    const/4 v14, 0x0

    .line 177
    invoke-direct {v13, v8, v14}, Lcom/supertws/dubokutv/presentation/screens/history/TvHistoryScreenKt$HistoryRecord$1$1;-><init>(Landroidx/compose/ui/focus/y;Lkotlin/coroutines/c;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/p;->n0(Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    :cond_b
    check-cast v13, Lrb/n;

    .line 184
    .line 185
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/p;->p(Z)V

    .line 186
    .line 187
    .line 188
    invoke-static {v12, v3, v13}, Landroidx/compose/runtime/q;->f(Landroidx/compose/runtime/k;Ljava/lang/Object;Lrb/n;)V

    .line 189
    .line 190
    .line 191
    sget-object v13, Landroidx/compose/foundation/layout/f2;->c:Landroidx/compose/foundation/layout/j0;

    .line 192
    .line 193
    invoke-static {v13, v8}, Landroidx/compose/ui/focus/m0;->k(Landroidx/compose/ui/q;Landroidx/compose/ui/focus/y;)Landroidx/compose/ui/q;

    .line 194
    .line 195
    .line 196
    move-result-object v8

    .line 197
    const v13, 0x5a990a2d

    .line 198
    .line 199
    .line 200
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/p;->c0(I)V

    .line 201
    .line 202
    .line 203
    and-int/lit8 v13, v1, 0x70

    .line 204
    .line 205
    const/4 v14, 0x1

    .line 206
    if-ne v13, v6, :cond_c

    .line 207
    .line 208
    move v6, v14

    .line 209
    goto :goto_4

    .line 210
    :cond_c
    move v6, v11

    .line 211
    :goto_4
    invoke-virtual {v12}, Landroidx/compose/runtime/p;->Q()Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v13

    .line 215
    if-nez v6, :cond_d

    .line 216
    .line 217
    if-ne v13, v10, :cond_e

    .line 218
    .line 219
    :cond_d
    new-instance v13, Landroidx/compose/foundation/lazy/w;

    .line 220
    .line 221
    const/4 v6, 0x4

    .line 222
    invoke-direct {v13, v2, v6}, Landroidx/compose/foundation/lazy/w;-><init>(II)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/p;->n0(Ljava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    :cond_e
    check-cast v13, Lrb/k;

    .line 229
    .line 230
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/p;->p(Z)V

    .line 231
    .line 232
    .line 233
    invoke-static {v8, v13}, Landroidx/compose/ui/focus/m0;->i(Landroidx/compose/ui/q;Lrb/k;)Landroidx/compose/ui/q;

    .line 234
    .line 235
    .line 236
    move-result-object v13

    .line 237
    sget-object v15, Landroidx/compose/foundation/layout/i;->e:Landroidx/compose/foundation/layout/e;

    .line 238
    .line 239
    const v6, 0x5a9920ce

    .line 240
    .line 241
    .line 242
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/p;->c0(I)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/p;->h(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result v6

    .line 249
    invoke-virtual {v12, v5}, Landroidx/compose/runtime/p;->f(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result v8

    .line 253
    or-int/2addr v6, v8

    .line 254
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/p;->f(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    move-result v8

    .line 258
    or-int/2addr v6, v8

    .line 259
    and-int/lit16 v1, v1, 0x1c00

    .line 260
    .line 261
    if-ne v1, v7, :cond_f

    .line 262
    .line 263
    goto :goto_5

    .line 264
    :cond_f
    move v14, v11

    .line 265
    :goto_5
    or-int v1, v6, v14

    .line 266
    .line 267
    invoke-virtual {v12}, Landroidx/compose/runtime/p;->Q()Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v6

    .line 271
    if-nez v1, :cond_10

    .line 272
    .line 273
    if-ne v6, v10, :cond_11

    .line 274
    .line 275
    :cond_10
    new-instance v3, Landroidx/compose/foundation/lazy/grid/w;

    .line 276
    .line 277
    const/4 v8, 0x4

    .line 278
    move-object v7, v4

    .line 279
    move-object v6, v9

    .line 280
    move-object/from16 v4, p2

    .line 281
    .line 282
    invoke-direct/range {v3 .. v8}, Landroidx/compose/foundation/lazy/grid/w;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/p;->n0(Ljava/lang/Object;)V

    .line 286
    .line 287
    .line 288
    move-object v6, v3

    .line 289
    :cond_11
    check-cast v6, Lrb/k;

    .line 290
    .line 291
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/p;->p(Z)V

    .line 292
    .line 293
    .line 294
    move-object v3, v13

    .line 295
    const/16 v13, 0x6000

    .line 296
    .line 297
    const/16 v14, 0x1ee

    .line 298
    .line 299
    const/4 v4, 0x0

    .line 300
    const/4 v5, 0x0

    .line 301
    const/4 v7, 0x0

    .line 302
    const/4 v8, 0x0

    .line 303
    const/4 v9, 0x0

    .line 304
    const/4 v10, 0x0

    .line 305
    move-object v11, v6

    .line 306
    move-object v6, v15

    .line 307
    invoke-static/range {v3 .. v14}, Landroidx/compose/foundation/lazy/q;->a(Landroidx/compose/ui/q;Landroidx/compose/foundation/lazy/y;Landroidx/compose/foundation/layout/t1;Landroidx/compose/foundation/layout/h;Landroidx/compose/ui/g;Landroidx/compose/foundation/gestures/i1;ZLandroidx/compose/foundation/d;Lrb/k;Landroidx/compose/runtime/k;II)V

    .line 308
    .line 309
    .line 310
    sget-object v1, Landroidx/compose/ui/n;->a:Landroidx/compose/ui/n;

    .line 311
    .line 312
    :goto_6
    invoke-virtual {v12}, Landroidx/compose/runtime/p;->t()Landroidx/compose/runtime/s1;

    .line 313
    .line 314
    .line 315
    move-result-object v7

    .line 316
    if-eqz v7, :cond_12

    .line 317
    .line 318
    new-instance v0, Landroidx/compose/foundation/lazy/layout/k0;

    .line 319
    .line 320
    const/4 v6, 0x1

    .line 321
    move-object/from16 v3, p2

    .line 322
    .line 323
    move-object/from16 v4, p3

    .line 324
    .line 325
    move/from16 v5, p5

    .line 326
    .line 327
    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/lazy/layout/k0;-><init>(Ljava/lang/Object;ILjava/util/List;Lkotlin/e;II)V

    .line 328
    .line 329
    .line 330
    iput-object v0, v7, Landroidx/compose/runtime/s1;->d:Lrb/n;

    .line 331
    .line 332
    :cond_12
    return-void
.end method

.method public static final c(Ljava/util/ArrayList;Lrb/k;Lrb/k;Lrb/a;Lrb/a;Landroidx/compose/runtime/k;I)V
    .locals 34

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    move-object/from16 v6, p3

    .line 8
    .line 9
    move-object/from16 v7, p4

    .line 10
    .line 11
    move/from16 v8, p6

    .line 12
    .line 13
    const-string v0, "onClickRecord"

    .line 14
    .line 15
    invoke-static {v2, v0}, Lkotlin/jvm/internal/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v0, "onRemoveRecord"

    .line 19
    .line 20
    invoke-static {v3, v0}, Lkotlin/jvm/internal/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v0, "onClear"

    .line 24
    .line 25
    invoke-static {v6, v0}, Lkotlin/jvm/internal/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v0, "onBackPress"

    .line 29
    .line 30
    invoke-static {v7, v0}, Lkotlin/jvm/internal/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    move-object/from16 v14, p5

    .line 34
    .line 35
    check-cast v14, Landroidx/compose/runtime/p;

    .line 36
    .line 37
    const v0, -0x3c5b3272

    .line 38
    .line 39
    .line 40
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/p;->e0(I)Landroidx/compose/runtime/p;

    .line 41
    .line 42
    .line 43
    and-int/lit8 v0, v8, 0x6

    .line 44
    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/p;->h(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    const/4 v0, 0x4

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const/4 v0, 0x2

    .line 56
    :goto_0
    or-int/2addr v0, v8

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    move v0, v8

    .line 59
    :goto_1
    and-int/lit8 v4, v8, 0x30

    .line 60
    .line 61
    if-nez v4, :cond_3

    .line 62
    .line 63
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/p;->h(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-eqz v4, :cond_2

    .line 68
    .line 69
    const/16 v4, 0x20

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_2
    const/16 v4, 0x10

    .line 73
    .line 74
    :goto_2
    or-int/2addr v0, v4

    .line 75
    :cond_3
    and-int/lit16 v4, v8, 0x180

    .line 76
    .line 77
    if-nez v4, :cond_5

    .line 78
    .line 79
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/p;->h(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-eqz v4, :cond_4

    .line 84
    .line 85
    const/16 v4, 0x100

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_4
    const/16 v4, 0x80

    .line 89
    .line 90
    :goto_3
    or-int/2addr v0, v4

    .line 91
    :cond_5
    and-int/lit16 v4, v8, 0xc00

    .line 92
    .line 93
    if-nez v4, :cond_7

    .line 94
    .line 95
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/p;->h(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    if-eqz v4, :cond_6

    .line 100
    .line 101
    const/16 v4, 0x800

    .line 102
    .line 103
    goto :goto_4

    .line 104
    :cond_6
    const/16 v4, 0x400

    .line 105
    .line 106
    :goto_4
    or-int/2addr v0, v4

    .line 107
    :cond_7
    and-int/lit16 v4, v8, 0x6000

    .line 108
    .line 109
    if-nez v4, :cond_9

    .line 110
    .line 111
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/p;->h(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    if-eqz v4, :cond_8

    .line 116
    .line 117
    const/16 v4, 0x4000

    .line 118
    .line 119
    goto :goto_5

    .line 120
    :cond_8
    const/16 v4, 0x2000

    .line 121
    .line 122
    :goto_5
    or-int/2addr v0, v4

    .line 123
    :cond_9
    and-int/lit16 v4, v0, 0x2493

    .line 124
    .line 125
    const/16 v11, 0x2492

    .line 126
    .line 127
    if-ne v4, v11, :cond_b

    .line 128
    .line 129
    invoke-virtual {v14}, Landroidx/compose/runtime/p;->F()Z

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    if-nez v4, :cond_a

    .line 134
    .line 135
    goto :goto_6

    .line 136
    :cond_a
    invoke-virtual {v14}, Landroidx/compose/runtime/p;->W()V

    .line 137
    .line 138
    .line 139
    goto/16 :goto_11

    .line 140
    .line 141
    :cond_b
    :goto_6
    const v4, 0x5a98dc6a

    .line 142
    .line 143
    .line 144
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/p;->c0(I)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v14}, Landroidx/compose/runtime/p;->Q()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    sget-object v11, Landroidx/compose/runtime/j;->a:Landroidx/compose/runtime/f;

    .line 152
    .line 153
    if-ne v4, v11, :cond_c

    .line 154
    .line 155
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 156
    .line 157
    invoke-static {v4}, Landroidx/compose/runtime/q;->D(Ljava/lang/Object;)Landroidx/compose/runtime/b1;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/p;->n0(Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    :cond_c
    check-cast v4, Landroidx/compose/runtime/b1;

    .line 165
    .line 166
    const/4 v12, 0x0

    .line 167
    invoke-virtual {v14, v12}, Landroidx/compose/runtime/p;->p(Z)V

    .line 168
    .line 169
    .line 170
    sget-object v13, Landroidx/compose/ui/platform/h0;->c:Landroidx/compose/runtime/b0;

    .line 171
    .line 172
    invoke-virtual {v14, v13}, Landroidx/compose/runtime/p;->j(Landroidx/compose/runtime/r1;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v13

    .line 176
    check-cast v13, Landroid/content/res/Resources;

    .line 177
    .line 178
    const v15, 0x5a98e8a6    # 2.1519998E16f

    .line 179
    .line 180
    .line 181
    invoke-virtual {v14, v15}, Landroidx/compose/runtime/p;->c0(I)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v14, v13}, Landroidx/compose/runtime/p;->f(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v15

    .line 188
    invoke-virtual {v14}, Landroidx/compose/runtime/p;->Q()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v9

    .line 192
    if-nez v15, :cond_d

    .line 193
    .line 194
    if-ne v9, v11, :cond_e

    .line 195
    .line 196
    :cond_d
    const v9, 0x7f1100c5

    .line 197
    .line 198
    .line 199
    invoke-virtual {v13, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v9

    .line 203
    invoke-virtual {v14, v9}, Landroidx/compose/runtime/p;->n0(Ljava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    :cond_e
    check-cast v9, Ljava/lang/String;

    .line 207
    .line 208
    invoke-virtual {v14, v12}, Landroidx/compose/runtime/p;->p(Z)V

    .line 209
    .line 210
    .line 211
    invoke-static {v9}, Lkotlin/jvm/internal/g;->b(Ljava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    sget-object v13, Landroidx/compose/foundation/layout/f2;->c:Landroidx/compose/foundation/layout/j0;

    .line 215
    .line 216
    sget-object v15, Landroidx/compose/foundation/layout/i;->e:Landroidx/compose/foundation/layout/e;

    .line 217
    .line 218
    const/16 v19, 0x20

    .line 219
    .line 220
    sget-object v5, Landroidx/compose/ui/d;->A:Landroidx/compose/ui/g;

    .line 221
    .line 222
    const/16 v10, 0x36

    .line 223
    .line 224
    invoke-static {v15, v5, v14, v10}, Landroidx/compose/foundation/layout/z;->a(Landroidx/compose/foundation/layout/h;Landroidx/compose/ui/g;Landroidx/compose/runtime/k;I)Landroidx/compose/foundation/layout/b0;

    .line 225
    .line 226
    .line 227
    move-result-object v12

    .line 228
    move-object/from16 v18, v11

    .line 229
    .line 230
    iget-wide v10, v14, Landroidx/compose/runtime/p;->T:J

    .line 231
    .line 232
    ushr-long v21, v10, v19

    .line 233
    .line 234
    xor-long v10, v10, v21

    .line 235
    .line 236
    long-to-int v10, v10

    .line 237
    invoke-virtual {v14}, Landroidx/compose/runtime/p;->l()Landroidx/compose/runtime/m1;

    .line 238
    .line 239
    .line 240
    move-result-object v11

    .line 241
    invoke-static {v14, v13}, Landroidx/compose/ui/a;->c(Landroidx/compose/runtime/k;Landroidx/compose/ui/q;)Landroidx/compose/ui/q;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    sget-object v21, Landroidx/compose/ui/node/g;->h:Landroidx/compose/ui/node/f;

    .line 246
    .line 247
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 248
    .line 249
    .line 250
    move/from16 v21, v10

    .line 251
    .line 252
    sget-object v10, Landroidx/compose/ui/node/f;->b:Lrb/a;

    .line 253
    .line 254
    invoke-virtual {v14}, Landroidx/compose/runtime/p;->g0()V

    .line 255
    .line 256
    .line 257
    iget-boolean v3, v14, Landroidx/compose/runtime/p;->S:Z

    .line 258
    .line 259
    if-eqz v3, :cond_f

    .line 260
    .line 261
    invoke-virtual {v14, v10}, Landroidx/compose/runtime/p;->k(Lrb/a;)V

    .line 262
    .line 263
    .line 264
    goto :goto_7

    .line 265
    :cond_f
    invoke-virtual {v14}, Landroidx/compose/runtime/p;->q0()V

    .line 266
    .line 267
    .line 268
    :goto_7
    sget-object v3, Landroidx/compose/ui/node/f;->f:Lrb/n;

    .line 269
    .line 270
    invoke-static {v14, v12, v3}, Landroidx/compose/runtime/q;->L(Landroidx/compose/runtime/k;Ljava/lang/Object;Lrb/n;)V

    .line 271
    .line 272
    .line 273
    sget-object v12, Landroidx/compose/ui/node/f;->e:Lrb/n;

    .line 274
    .line 275
    invoke-static {v14, v11, v12}, Landroidx/compose/runtime/q;->L(Landroidx/compose/runtime/k;Ljava/lang/Object;Lrb/n;)V

    .line 276
    .line 277
    .line 278
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 279
    .line 280
    .line 281
    move-result-object v11

    .line 282
    move-object/from16 v21, v10

    .line 283
    .line 284
    sget-object v10, Landroidx/compose/ui/node/f;->g:Lrb/n;

    .line 285
    .line 286
    invoke-static {v14, v11, v10}, Landroidx/compose/runtime/q;->v(Landroidx/compose/runtime/k;Ljava/lang/Integer;Lrb/n;)V

    .line 287
    .line 288
    .line 289
    sget-object v11, Landroidx/compose/ui/node/f;->h:Lrb/k;

    .line 290
    .line 291
    invoke-static {v14, v11}, Landroidx/compose/runtime/q;->H(Landroidx/compose/runtime/k;Lrb/k;)V

    .line 292
    .line 293
    .line 294
    move-object/from16 v22, v10

    .line 295
    .line 296
    sget-object v10, Landroidx/compose/ui/node/f;->d:Lrb/n;

    .line 297
    .line 298
    invoke-static {v14, v2, v10}, Landroidx/compose/runtime/q;->L(Landroidx/compose/runtime/k;Ljava/lang/Object;Lrb/n;)V

    .line 299
    .line 300
    .line 301
    move-object v2, v9

    .line 302
    sget-object v9, Lcom/supertws/dubokutv/presentation/screens/history/c;->a:Landroidx/compose/runtime/internal/d;

    .line 303
    .line 304
    move-object/from16 v23, v2

    .line 305
    .line 306
    new-instance v2, Lcom/supertws/dubokutv/presentation/common/f;

    .line 307
    .line 308
    const/4 v8, 0x2

    .line 309
    invoke-direct {v2, v8, v7}, Lcom/supertws/dubokutv/presentation/common/f;-><init>(ILrb/a;)V

    .line 310
    .line 311
    .line 312
    const v8, -0x6985efe2    # -2.0199925E-25f

    .line 313
    .line 314
    .line 315
    invoke-static {v8, v2, v14}, Landroidx/compose/runtime/internal/e;->d(ILkotlin/e;Landroidx/compose/runtime/k;)Landroidx/compose/runtime/internal/d;

    .line 316
    .line 317
    .line 318
    move-result-object v2

    .line 319
    new-instance v8, Lcom/supertws/dubokutv/presentation/common/y;

    .line 320
    .line 321
    move-object/from16 v24, v2

    .line 322
    .line 323
    const/4 v2, 0x5

    .line 324
    invoke-direct {v8, v2, v1, v4}, Lcom/supertws/dubokutv/presentation/common/y;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 325
    .line 326
    .line 327
    const v2, -0x20d07ab9

    .line 328
    .line 329
    .line 330
    invoke-static {v2, v8, v14}, Landroidx/compose/runtime/internal/e;->d(ILkotlin/e;Landroidx/compose/runtime/k;)Landroidx/compose/runtime/internal/d;

    .line 331
    .line 332
    .line 333
    move-result-object v2

    .line 334
    const/4 v8, 0x0

    .line 335
    const/16 v17, 0xd86

    .line 336
    .line 337
    move-object/from16 v25, v18

    .line 338
    .line 339
    const/16 v18, 0xf2

    .line 340
    .line 341
    move-object/from16 v26, v10

    .line 342
    .line 343
    const/4 v10, 0x0

    .line 344
    move-object/from16 v27, v13

    .line 345
    .line 346
    const/4 v13, 0x0

    .line 347
    move-object/from16 v16, v14

    .line 348
    .line 349
    const/16 v28, 0x800

    .line 350
    .line 351
    const/4 v14, 0x0

    .line 352
    move-object/from16 v29, v15

    .line 353
    .line 354
    const/4 v15, 0x0

    .line 355
    move/from16 v32, v0

    .line 356
    .line 357
    move-object/from16 v31, v4

    .line 358
    .line 359
    move-object v6, v12

    .line 360
    move-object/from16 v7, v21

    .line 361
    .line 362
    move-object/from16 v0, v22

    .line 363
    .line 364
    move-object/from16 v33, v25

    .line 365
    .line 366
    move-object/from16 v8, v27

    .line 367
    .line 368
    move-object/from16 v4, v29

    .line 369
    .line 370
    const/16 v1, 0x36

    .line 371
    .line 372
    move-object v12, v2

    .line 373
    move-object v2, v11

    .line 374
    move-object/from16 v11, v24

    .line 375
    .line 376
    invoke-static/range {v9 .. v18}, Landroidx/compose/material3/r;->c(Lrb/n;Landroidx/compose/ui/q;Landroidx/compose/runtime/internal/d;Lrb/o;FLandroidx/compose/foundation/layout/s2;Landroidx/compose/material3/x5;Landroidx/compose/runtime/k;II)V

    .line 377
    .line 378
    .line 379
    move-object/from16 v14, v16

    .line 380
    .line 381
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 382
    .line 383
    .line 384
    move-result v9

    .line 385
    const/4 v12, 0x1

    .line 386
    if-eqz v9, :cond_11

    .line 387
    .line 388
    const v9, 0x53a11032

    .line 389
    .line 390
    .line 391
    invoke-virtual {v14, v9}, Landroidx/compose/runtime/p;->c0(I)V

    .line 392
    .line 393
    .line 394
    invoke-static {v4, v5, v14, v1}, Landroidx/compose/foundation/layout/z;->a(Landroidx/compose/foundation/layout/h;Landroidx/compose/ui/g;Landroidx/compose/runtime/k;I)Landroidx/compose/foundation/layout/b0;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    iget-wide v4, v14, Landroidx/compose/runtime/p;->T:J

    .line 399
    .line 400
    ushr-long v9, v4, v19

    .line 401
    .line 402
    xor-long/2addr v4, v9

    .line 403
    long-to-int v4, v4

    .line 404
    invoke-virtual {v14}, Landroidx/compose/runtime/p;->l()Landroidx/compose/runtime/m1;

    .line 405
    .line 406
    .line 407
    move-result-object v5

    .line 408
    invoke-static {v14, v8}, Landroidx/compose/ui/a;->c(Landroidx/compose/runtime/k;Landroidx/compose/ui/q;)Landroidx/compose/ui/q;

    .line 409
    .line 410
    .line 411
    move-result-object v8

    .line 412
    invoke-virtual {v14}, Landroidx/compose/runtime/p;->g0()V

    .line 413
    .line 414
    .line 415
    iget-boolean v9, v14, Landroidx/compose/runtime/p;->S:Z

    .line 416
    .line 417
    if-eqz v9, :cond_10

    .line 418
    .line 419
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/p;->k(Lrb/a;)V

    .line 420
    .line 421
    .line 422
    goto :goto_8

    .line 423
    :cond_10
    invoke-virtual {v14}, Landroidx/compose/runtime/p;->q0()V

    .line 424
    .line 425
    .line 426
    :goto_8
    invoke-static {v14, v1, v3}, Landroidx/compose/runtime/q;->L(Landroidx/compose/runtime/k;Ljava/lang/Object;Lrb/n;)V

    .line 427
    .line 428
    .line 429
    invoke-static {v14, v5, v6}, Landroidx/compose/runtime/q;->L(Landroidx/compose/runtime/k;Ljava/lang/Object;Lrb/n;)V

    .line 430
    .line 431
    .line 432
    invoke-static {v4, v14, v0, v14, v2}, Lv/g;->d(ILandroidx/compose/runtime/p;Lrb/n;Landroidx/compose/runtime/p;Lrb/k;)V

    .line 433
    .line 434
    .line 435
    move-object/from16 v0, v26

    .line 436
    .line 437
    invoke-static {v14, v8, v0}, Landroidx/compose/runtime/q;->L(Landroidx/compose/runtime/k;Ljava/lang/Object;Lrb/n;)V

    .line 438
    .line 439
    .line 440
    sget-object v0, Landroidx/compose/material3/e6;->a:Landroidx/compose/runtime/b3;

    .line 441
    .line 442
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/p;->j(Landroidx/compose/runtime/r1;)Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    move-result-object v0

    .line 446
    check-cast v0, Landroidx/compose/material3/c6;

    .line 447
    .line 448
    iget-object v0, v0, Landroidx/compose/material3/c6;->d:Landroidx/compose/ui/text/r0;

    .line 449
    .line 450
    const v1, 0x7f1100c0

    .line 451
    .line 452
    .line 453
    invoke-static {v14, v1}, Ll8/t1;->C(Landroidx/compose/runtime/k;I)Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v9

    .line 457
    new-instance v1, Lo1/j;

    .line 458
    .line 459
    const/4 v2, 0x3

    .line 460
    invoke-direct {v1, v2}, Lo1/j;-><init>(I)V

    .line 461
    .line 462
    .line 463
    const/16 v29, 0x0

    .line 464
    .line 465
    const v30, 0x1fbfe

    .line 466
    .line 467
    .line 468
    const/4 v10, 0x0

    .line 469
    move v2, v12

    .line 470
    const-wide/16 v11, 0x0

    .line 471
    .line 472
    move-object/from16 v16, v14

    .line 473
    .line 474
    const-wide/16 v13, 0x0

    .line 475
    .line 476
    const/4 v15, 0x0

    .line 477
    move-object/from16 v27, v16

    .line 478
    .line 479
    const/16 v16, 0x0

    .line 480
    .line 481
    const-wide/16 v17, 0x0

    .line 482
    .line 483
    const-wide/16 v20, 0x0

    .line 484
    .line 485
    const/16 v22, 0x0

    .line 486
    .line 487
    const/16 v23, 0x0

    .line 488
    .line 489
    const/16 v24, 0x0

    .line 490
    .line 491
    const/16 v25, 0x0

    .line 492
    .line 493
    const/16 v28, 0x0

    .line 494
    .line 495
    move-object/from16 v26, v0

    .line 496
    .line 497
    move-object/from16 v19, v1

    .line 498
    .line 499
    move v6, v2

    .line 500
    invoke-static/range {v9 .. v30}, Landroidx/compose/material3/r5;->b(Ljava/lang/String;Landroidx/compose/ui/q;JJLandroidx/compose/ui/text/font/x;Landroidx/compose/ui/text/font/m;JLo1/j;JIZIILandroidx/compose/ui/text/r0;Landroidx/compose/runtime/k;III)V

    .line 501
    .line 502
    .line 503
    move-object/from16 v14, v27

    .line 504
    .line 505
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/p;->p(Z)V

    .line 506
    .line 507
    .line 508
    const/4 v8, 0x0

    .line 509
    invoke-virtual {v14, v8}, Landroidx/compose/runtime/p;->p(Z)V

    .line 510
    .line 511
    .line 512
    move-object/from16 v4, v31

    .line 513
    .line 514
    move/from16 v3, v32

    .line 515
    .line 516
    move-object/from16 v7, v33

    .line 517
    .line 518
    goto/16 :goto_d

    .line 519
    .line 520
    :cond_11
    move v6, v12

    .line 521
    const v0, 0x53a8abfd

    .line 522
    .line 523
    .line 524
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/p;->c0(I)V

    .line 525
    .line 526
    .line 527
    const v0, -0x371b8c9e

    .line 528
    .line 529
    .line 530
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/p;->c0(I)V

    .line 531
    .line 532
    .line 533
    move-object/from16 v1, p0

    .line 534
    .line 535
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/p;->h(Ljava/lang/Object;)Z

    .line 536
    .line 537
    .line 538
    move-result v0

    .line 539
    move-object/from16 v2, v23

    .line 540
    .line 541
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/p;->f(Ljava/lang/Object;)Z

    .line 542
    .line 543
    .line 544
    move-result v3

    .line 545
    or-int/2addr v0, v3

    .line 546
    and-int/lit8 v3, v32, 0x70

    .line 547
    .line 548
    move/from16 v4, v19

    .line 549
    .line 550
    if-ne v3, v4, :cond_12

    .line 551
    .line 552
    move v12, v6

    .line 553
    goto :goto_9

    .line 554
    :cond_12
    const/4 v12, 0x0

    .line 555
    :goto_9
    or-int/2addr v0, v12

    .line 556
    move/from16 v3, v32

    .line 557
    .line 558
    and-int/lit16 v4, v3, 0x380

    .line 559
    .line 560
    const/16 v5, 0x100

    .line 561
    .line 562
    if-ne v4, v5, :cond_13

    .line 563
    .line 564
    move v12, v6

    .line 565
    goto :goto_a

    .line 566
    :cond_13
    const/4 v12, 0x0

    .line 567
    :goto_a
    or-int/2addr v0, v12

    .line 568
    invoke-virtual {v14}, Landroidx/compose/runtime/p;->Q()Ljava/lang/Object;

    .line 569
    .line 570
    .line 571
    move-result-object v4

    .line 572
    move-object/from16 v7, v33

    .line 573
    .line 574
    if-nez v0, :cond_15

    .line 575
    .line 576
    if-ne v4, v7, :cond_14

    .line 577
    .line 578
    goto :goto_b

    .line 579
    :cond_14
    move/from16 v32, v3

    .line 580
    .line 581
    goto :goto_c

    .line 582
    :cond_15
    :goto_b
    new-instance v0, Landroidx/compose/foundation/lazy/grid/w;

    .line 583
    .line 584
    const/4 v5, 0x3

    .line 585
    move-object/from16 v4, p2

    .line 586
    .line 587
    move/from16 v32, v3

    .line 588
    .line 589
    move-object/from16 v3, p1

    .line 590
    .line 591
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/lazy/grid/w;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 592
    .line 593
    .line 594
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/p;->n0(Ljava/lang/Object;)V

    .line 595
    .line 596
    .line 597
    move-object v4, v0

    .line 598
    :goto_c
    move-object/from16 v17, v4

    .line 599
    .line 600
    check-cast v17, Lrb/k;

    .line 601
    .line 602
    const/4 v0, 0x0

    .line 603
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/p;->p(Z)V

    .line 604
    .line 605
    .line 606
    const/16 v19, 0x6

    .line 607
    .line 608
    const/16 v20, 0x1fe

    .line 609
    .line 610
    const/4 v10, 0x0

    .line 611
    const/4 v11, 0x0

    .line 612
    const/4 v12, 0x0

    .line 613
    const/4 v13, 0x0

    .line 614
    move-object/from16 v16, v14

    .line 615
    .line 616
    const/4 v14, 0x0

    .line 617
    const/4 v15, 0x0

    .line 618
    move-object/from16 v27, v16

    .line 619
    .line 620
    const/16 v16, 0x0

    .line 621
    .line 622
    move-object v9, v8

    .line 623
    move-object/from16 v18, v27

    .line 624
    .line 625
    move-object/from16 v4, v31

    .line 626
    .line 627
    move/from16 v3, v32

    .line 628
    .line 629
    invoke-static/range {v9 .. v20}, Landroidx/compose/foundation/lazy/q;->a(Landroidx/compose/ui/q;Landroidx/compose/foundation/lazy/y;Landroidx/compose/foundation/layout/t1;Landroidx/compose/foundation/layout/h;Landroidx/compose/ui/g;Landroidx/compose/foundation/gestures/i1;ZLandroidx/compose/foundation/d;Lrb/k;Landroidx/compose/runtime/k;II)V

    .line 630
    .line 631
    .line 632
    move-object/from16 v14, v18

    .line 633
    .line 634
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/p;->p(Z)V

    .line 635
    .line 636
    .line 637
    :goto_d
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/p;->p(Z)V

    .line 638
    .line 639
    .line 640
    invoke-interface {v4}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    .line 641
    .line 642
    .line 643
    move-result-object v0

    .line 644
    check-cast v0, Ljava/lang/Boolean;

    .line 645
    .line 646
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 647
    .line 648
    .line 649
    move-result v9

    .line 650
    const v0, 0x5a9a1d3f

    .line 651
    .line 652
    .line 653
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/p;->c0(I)V

    .line 654
    .line 655
    .line 656
    and-int/lit16 v0, v3, 0x1c00

    .line 657
    .line 658
    const/16 v1, 0x800

    .line 659
    .line 660
    if-ne v0, v1, :cond_16

    .line 661
    .line 662
    move v12, v6

    .line 663
    goto :goto_e

    .line 664
    :cond_16
    const/4 v12, 0x0

    .line 665
    :goto_e
    invoke-virtual {v14}, Landroidx/compose/runtime/p;->Q()Ljava/lang/Object;

    .line 666
    .line 667
    .line 668
    move-result-object v0

    .line 669
    if-nez v12, :cond_18

    .line 670
    .line 671
    if-ne v0, v7, :cond_17

    .line 672
    .line 673
    goto :goto_f

    .line 674
    :cond_17
    move-object/from16 v6, p3

    .line 675
    .line 676
    goto :goto_10

    .line 677
    :cond_18
    :goto_f
    new-instance v0, Lcom/supertws/dubokutv/presentation/screens/history/d;

    .line 678
    .line 679
    const/4 v1, 0x0

    .line 680
    move-object/from16 v6, p3

    .line 681
    .line 682
    invoke-direct {v0, v6, v4, v1}, Lcom/supertws/dubokutv/presentation/screens/history/d;-><init>(Lrb/a;Landroidx/compose/runtime/b1;I)V

    .line 683
    .line 684
    .line 685
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/p;->n0(Ljava/lang/Object;)V

    .line 686
    .line 687
    .line 688
    :goto_10
    move-object v10, v0

    .line 689
    check-cast v10, Lrb/a;

    .line 690
    .line 691
    const v0, 0x5a9a2ab5

    .line 692
    .line 693
    .line 694
    const/4 v8, 0x0

    .line 695
    invoke-static {v14, v8, v0}, Lcom/google/common/util/concurrent/c0;->n(Landroidx/compose/runtime/p;ZI)Ljava/lang/Object;

    .line 696
    .line 697
    .line 698
    move-result-object v0

    .line 699
    if-ne v0, v7, :cond_19

    .line 700
    .line 701
    new-instance v0, Landroidx/compose/foundation/lazy/l;

    .line 702
    .line 703
    const/4 v1, 0x7

    .line 704
    invoke-direct {v0, v4, v1}, Landroidx/compose/foundation/lazy/l;-><init>(Landroidx/compose/runtime/b1;I)V

    .line 705
    .line 706
    .line 707
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/p;->n0(Ljava/lang/Object;)V

    .line 708
    .line 709
    .line 710
    :cond_19
    move-object v11, v0

    .line 711
    check-cast v11, Lrb/a;

    .line 712
    .line 713
    invoke-virtual {v14, v8}, Landroidx/compose/runtime/p;->p(Z)V

    .line 714
    .line 715
    .line 716
    const v0, 0x7f11005c

    .line 717
    .line 718
    .line 719
    invoke-static {v14, v0}, Ll8/t1;->C(Landroidx/compose/runtime/k;I)Ljava/lang/String;

    .line 720
    .line 721
    .line 722
    move-result-object v12

    .line 723
    const v0, 0x7f11005b

    .line 724
    .line 725
    .line 726
    invoke-static {v14, v0}, Ll8/t1;->C(Landroidx/compose/runtime/k;I)Ljava/lang/String;

    .line 727
    .line 728
    .line 729
    move-result-object v13

    .line 730
    const/16 v15, 0x180

    .line 731
    .line 732
    invoke-static/range {v9 .. v15}, Lcom/supertws/dubokutv/presentation/common/j;->a(ZLrb/a;Lrb/a;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/k;I)V

    .line 733
    .line 734
    .line 735
    :goto_11
    invoke-virtual {v14}, Landroidx/compose/runtime/p;->t()Landroidx/compose/runtime/s1;

    .line 736
    .line 737
    .line 738
    move-result-object v8

    .line 739
    if-eqz v8, :cond_1a

    .line 740
    .line 741
    new-instance v0, Landroidx/compose/animation/core/p1;

    .line 742
    .line 743
    const/4 v7, 0x4

    .line 744
    move-object/from16 v1, p0

    .line 745
    .line 746
    move-object/from16 v2, p1

    .line 747
    .line 748
    move-object/from16 v3, p2

    .line 749
    .line 750
    move-object/from16 v5, p4

    .line 751
    .line 752
    move-object v4, v6

    .line 753
    move/from16 v6, p6

    .line 754
    .line 755
    invoke-direct/range {v0 .. v7}, Landroidx/compose/animation/core/p1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 756
    .line 757
    .line 758
    iput-object v0, v8, Landroidx/compose/runtime/s1;->d:Lrb/n;

    .line 759
    .line 760
    :cond_1a
    return-void
.end method

.method public static final d(Ljava/lang/String;Lqa/t;Lrb/a;Landroidx/compose/runtime/k;I)V
    .locals 15

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    move-object/from16 v3, p2

    .line 4
    .line 5
    const-string v0, "record"

    .line 6
    .line 7
    invoke-static {v2, v0}, Lkotlin/jvm/internal/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "onClick"

    .line 11
    .line 12
    invoke-static {v3, v0}, Lkotlin/jvm/internal/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    move-object/from16 v12, p3

    .line 16
    .line 17
    check-cast v12, Landroidx/compose/runtime/p;

    .line 18
    .line 19
    const v0, 0x5fce7040

    .line 20
    .line 21
    .line 22
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/p;->e0(I)Landroidx/compose/runtime/p;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v12, p0}, Landroidx/compose/runtime/p;->f(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    const/4 v0, 0x4

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x2

    .line 34
    :goto_0
    or-int v0, p4, v0

    .line 35
    .line 36
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/p;->f(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    const/16 v1, 0x20

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const/16 v1, 0x10

    .line 46
    .line 47
    :goto_1
    or-int/2addr v0, v1

    .line 48
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/p;->h(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    const/16 v1, 0x100

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    const/16 v1, 0x80

    .line 58
    .line 59
    :goto_2
    or-int/2addr v0, v1

    .line 60
    and-int/lit16 v0, v0, 0x93

    .line 61
    .line 62
    const/16 v1, 0x92

    .line 63
    .line 64
    if-ne v0, v1, :cond_4

    .line 65
    .line 66
    invoke-virtual {v12}, Landroidx/compose/runtime/p;->F()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_3

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_3
    invoke-virtual {v12}, Landroidx/compose/runtime/p;->W()V

    .line 74
    .line 75
    .line 76
    goto :goto_4

    .line 77
    :cond_4
    :goto_3
    new-instance v0, Landroidx/compose/material3/internal/m0;

    .line 78
    .line 79
    const/4 v1, 0x4

    .line 80
    invoke-direct {v0, v1, v2, p0}, Landroidx/compose/material3/internal/m0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    const v1, 0x22ed3ea2

    .line 84
    .line 85
    .line 86
    invoke-static {v1, v0, v12}, Landroidx/compose/runtime/internal/e;->d(ILkotlin/e;Landroidx/compose/runtime/k;)Landroidx/compose/runtime/internal/d;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    new-instance v0, Lcom/supertws/dubokutv/presentation/screens/history/g;

    .line 91
    .line 92
    const/4 v1, 0x0

    .line 93
    invoke-direct {v0, v2, v1}, Lcom/supertws/dubokutv/presentation/screens/history/g;-><init>(Lqa/t;I)V

    .line 94
    .line 95
    .line 96
    const v1, 0xb43f1bf

    .line 97
    .line 98
    .line 99
    invoke-static {v1, v0, v12}, Landroidx/compose/runtime/internal/e;->d(ILkotlin/e;Landroidx/compose/runtime/k;)Landroidx/compose/runtime/internal/d;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    new-instance v0, Lcom/supertws/dubokutv/presentation/screens/history/g;

    .line 104
    .line 105
    const/4 v1, 0x1

    .line 106
    invoke-direct {v0, v2, v1}, Lcom/supertws/dubokutv/presentation/screens/history/g;-><init>(Lqa/t;I)V

    .line 107
    .line 108
    .line 109
    const v1, 0x360d81e

    .line 110
    .line 111
    .line 112
    invoke-static {v1, v0, v12}, Landroidx/compose/runtime/internal/e;->d(ILkotlin/e;Landroidx/compose/runtime/k;)Landroidx/compose/runtime/internal/d;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    new-instance v0, Lcom/supertws/dubokutv/presentation/common/f;

    .line 117
    .line 118
    const/4 v1, 0x3

    .line 119
    invoke-direct {v0, v1, v3}, Lcom/supertws/dubokutv/presentation/common/f;-><init>(ILrb/a;)V

    .line 120
    .line 121
    .line 122
    const v1, -0x4824183

    .line 123
    .line 124
    .line 125
    invoke-static {v1, v0, v12}, Landroidx/compose/runtime/internal/e;->d(ILkotlin/e;Landroidx/compose/runtime/k;)Landroidx/compose/runtime/internal/d;

    .line 126
    .line 127
    .line 128
    move-result-object v8

    .line 129
    const v13, 0x36c06

    .line 130
    .line 131
    .line 132
    const/16 v14, 0x1c6

    .line 133
    .line 134
    const/4 v5, 0x0

    .line 135
    const/4 v9, 0x0

    .line 136
    const/4 v10, 0x0

    .line 137
    const/4 v11, 0x0

    .line 138
    invoke-static/range {v4 .. v14}, Landroidx/compose/material3/j2;->a(Landroidx/compose/runtime/internal/d;Landroidx/compose/ui/q;Lrb/n;Lrb/n;Lrb/n;Landroidx/compose/material3/d2;FFLandroidx/compose/runtime/k;II)V

    .line 139
    .line 140
    .line 141
    :goto_4
    invoke-virtual {v12}, Landroidx/compose/runtime/p;->t()Landroidx/compose/runtime/s1;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    if-eqz v6, :cond_5

    .line 146
    .line 147
    new-instance v0, Landroidx/compose/foundation/layout/x;

    .line 148
    .line 149
    const/4 v5, 0x5

    .line 150
    move-object v1, p0

    .line 151
    move/from16 v4, p4

    .line 152
    .line 153
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/layout/x;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 154
    .line 155
    .line 156
    iput-object v0, v6, Landroidx/compose/runtime/s1;->d:Lrb/n;

    .line 157
    .line 158
    :cond_5
    return-void
.end method

.method public static final e(Landroidx/compose/ui/q;Ljava/lang/String;Lqa/t;Lrb/k;Lrb/k;Landroidx/compose/runtime/k;I)V
    .locals 16

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    move-object/from16 v3, p2

    .line 4
    .line 5
    move-object/from16 v4, p3

    .line 6
    .line 7
    move-object/from16 v5, p4

    .line 8
    .line 9
    const-string v0, "record"

    .line 10
    .line 11
    invoke-static {v3, v0}, Lkotlin/jvm/internal/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v0, "onClick"

    .line 15
    .line 16
    invoke-static {v4, v0}, Lkotlin/jvm/internal/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v0, "onRemove"

    .line 20
    .line 21
    invoke-static {v5, v0}, Lkotlin/jvm/internal/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    move-object/from16 v14, p5

    .line 25
    .line 26
    check-cast v14, Landroidx/compose/runtime/p;

    .line 27
    .line 28
    const v0, -0x73417ebc

    .line 29
    .line 30
    .line 31
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/p;->e0(I)Landroidx/compose/runtime/p;

    .line 32
    .line 33
    .line 34
    or-int/lit8 v0, p6, 0x6

    .line 35
    .line 36
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/p;->f(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    const/16 v1, 0x20

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/16 v1, 0x10

    .line 46
    .line 47
    :goto_0
    or-int/2addr v0, v1

    .line 48
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/p;->f(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    const/16 v1, 0x100

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    const/16 v1, 0x80

    .line 58
    .line 59
    :goto_1
    or-int/2addr v0, v1

    .line 60
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/p;->h(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_2

    .line 65
    .line 66
    const/16 v1, 0x800

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_2
    const/16 v1, 0x400

    .line 70
    .line 71
    :goto_2
    or-int/2addr v0, v1

    .line 72
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/p;->h(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_3

    .line 77
    .line 78
    const/16 v1, 0x4000

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_3
    const/16 v1, 0x2000

    .line 82
    .line 83
    :goto_3
    or-int/2addr v0, v1

    .line 84
    and-int/lit16 v1, v0, 0x2493

    .line 85
    .line 86
    const/16 v7, 0x2492

    .line 87
    .line 88
    if-ne v1, v7, :cond_5

    .line 89
    .line 90
    invoke-virtual {v14}, Landroidx/compose/runtime/p;->F()Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-nez v1, :cond_4

    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_4
    invoke-virtual {v14}, Landroidx/compose/runtime/p;->W()V

    .line 98
    .line 99
    .line 100
    move-object/from16 v1, p0

    .line 101
    .line 102
    goto/16 :goto_6

    .line 103
    .line 104
    :cond_5
    :goto_4
    invoke-static {v3, v14}, Landroidx/compose/runtime/q;->J(Ljava/lang/Object;Landroidx/compose/runtime/k;)Landroidx/compose/runtime/b1;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    const v7, 0x4d78c7c7    # 2.6086514E8f

    .line 109
    .line 110
    .line 111
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/p;->c0(I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v14}, Landroidx/compose/runtime/p;->Q()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v7

    .line 118
    sget-object v8, Landroidx/compose/runtime/j;->a:Landroidx/compose/runtime/f;

    .line 119
    .line 120
    if-ne v7, v8, :cond_6

    .line 121
    .line 122
    new-instance v7, Lcom/supertws/dubokutv/presentation/screens/dashboard/x;

    .line 123
    .line 124
    const/16 v9, 0x14

    .line 125
    .line 126
    invoke-direct {v7, v9}, Lcom/supertws/dubokutv/presentation/screens/dashboard/x;-><init>(I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/p;->n0(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    :cond_6
    check-cast v7, Lrb/k;

    .line 133
    .line 134
    const/4 v9, 0x0

    .line 135
    invoke-virtual {v14, v9}, Landroidx/compose/runtime/p;->p(Z)V

    .line 136
    .line 137
    .line 138
    sget-object v10, Landroidx/compose/material3/SwipeToDismissBoxValue;->Settled:Landroidx/compose/material3/SwipeToDismissBoxValue;

    .line 139
    .line 140
    new-array v11, v9, [Ljava/lang/Object;

    .line 141
    .line 142
    new-instance v12, Lac/i;

    .line 143
    .line 144
    const/16 v13, 0xc

    .line 145
    .line 146
    invoke-direct {v12, v13}, Lac/i;-><init>(I)V

    .line 147
    .line 148
    .line 149
    new-instance v13, Landroidx/compose/material3/a4;

    .line 150
    .line 151
    const/4 v15, 0x1

    .line 152
    invoke-direct {v13, v7, v15}, Landroidx/compose/material3/a4;-><init>(Lrb/k;I)V

    .line 153
    .line 154
    .line 155
    new-instance v15, Lp3/a;

    .line 156
    .line 157
    const/4 v6, 0x7

    .line 158
    invoke-direct {v15, v6, v12, v13}, Lp3/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    .line 162
    .line 163
    .line 164
    move-result v6

    .line 165
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/p;->d(I)Z

    .line 166
    .line 167
    .line 168
    move-result v6

    .line 169
    invoke-virtual {v14}, Landroidx/compose/runtime/p;->Q()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v12

    .line 173
    if-nez v6, :cond_7

    .line 174
    .line 175
    if-ne v12, v8, :cond_8

    .line 176
    .line 177
    :cond_7
    new-instance v12, Landroidx/activity/compose/b;

    .line 178
    .line 179
    const/16 v6, 0x9

    .line 180
    .line 181
    invoke-direct {v12, v6, v10, v7}, Landroidx/activity/compose/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v14, v12}, Landroidx/compose/runtime/p;->n0(Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    :cond_8
    check-cast v12, Lrb/a;

    .line 188
    .line 189
    invoke-static {v11, v15, v12, v14, v9}, Ls0/j;->d([Ljava/lang/Object;Ls0/i;Lrb/a;Landroidx/compose/runtime/k;I)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v6

    .line 193
    check-cast v6, Landroidx/compose/material3/f5;

    .line 194
    .line 195
    new-instance v7, Landroidx/compose/foundation/text/contextmenu/internal/u;

    .line 196
    .line 197
    const/4 v10, 0x4

    .line 198
    invoke-direct {v7, v6, v10}, Landroidx/compose/foundation/text/contextmenu/internal/u;-><init>(Ljava/lang/Object;I)V

    .line 199
    .line 200
    .line 201
    const v10, -0x19abf69a

    .line 202
    .line 203
    .line 204
    invoke-static {v10, v7, v14}, Landroidx/compose/runtime/internal/e;->d(ILkotlin/e;Landroidx/compose/runtime/k;)Landroidx/compose/runtime/internal/d;

    .line 205
    .line 206
    .line 207
    move-result-object v7

    .line 208
    const v10, 0x4d78fdc9    # 2.6108635E8f

    .line 209
    .line 210
    .line 211
    invoke-virtual {v14, v10}, Landroidx/compose/runtime/p;->c0(I)V

    .line 212
    .line 213
    .line 214
    const v10, 0xe000

    .line 215
    .line 216
    .line 217
    and-int/2addr v0, v10

    .line 218
    const/16 v10, 0x4000

    .line 219
    .line 220
    if-ne v0, v10, :cond_9

    .line 221
    .line 222
    const/4 v0, 0x1

    .line 223
    goto :goto_5

    .line 224
    :cond_9
    move v0, v9

    .line 225
    :goto_5
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/p;->f(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v10

    .line 229
    or-int/2addr v0, v10

    .line 230
    invoke-virtual {v14}, Landroidx/compose/runtime/p;->Q()Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v10

    .line 234
    if-nez v0, :cond_a

    .line 235
    .line 236
    if-ne v10, v8, :cond_b

    .line 237
    .line 238
    :cond_a
    new-instance v10, Lcom/supertws/dubokutv/presentation/screens/history/e;

    .line 239
    .line 240
    const/4 v0, 0x0

    .line 241
    invoke-direct {v10, v5, v1, v0}, Lcom/supertws/dubokutv/presentation/screens/history/e;-><init>(Lrb/k;Landroidx/compose/runtime/b1;I)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v14, v10}, Landroidx/compose/runtime/p;->n0(Ljava/lang/Object;)V

    .line 245
    .line 246
    .line 247
    :cond_b
    move-object v12, v10

    .line 248
    check-cast v12, Lrb/k;

    .line 249
    .line 250
    invoke-virtual {v14, v9}, Landroidx/compose/runtime/p;->p(Z)V

    .line 251
    .line 252
    .line 253
    new-instance v0, Lcom/supertws/dubokutv/presentation/common/h;

    .line 254
    .line 255
    invoke-direct {v0, v2, v3, v4, v1}, Lcom/supertws/dubokutv/presentation/common/h;-><init>(Ljava/lang/String;Lqa/t;Lrb/k;Landroidx/compose/runtime/b1;)V

    .line 256
    .line 257
    .line 258
    const v1, 0x52a634a0

    .line 259
    .line 260
    .line 261
    invoke-static {v1, v0, v14}, Landroidx/compose/runtime/internal/e;->d(ILkotlin/e;Landroidx/compose/runtime/k;)Landroidx/compose/runtime/internal/d;

    .line 262
    .line 263
    .line 264
    move-result-object v13

    .line 265
    const v15, 0xc061b8

    .line 266
    .line 267
    .line 268
    sget-object v8, Landroidx/compose/ui/n;->a:Landroidx/compose/ui/n;

    .line 269
    .line 270
    const/4 v9, 0x0

    .line 271
    const/4 v10, 0x0

    .line 272
    const/4 v11, 0x0

    .line 273
    invoke-static/range {v6 .. v15}, Landroidx/compose/material3/s;->j(Landroidx/compose/material3/f5;Landroidx/compose/runtime/internal/d;Landroidx/compose/ui/q;ZZZLrb/k;Landroidx/compose/runtime/internal/d;Landroidx/compose/runtime/k;I)V

    .line 274
    .line 275
    .line 276
    move-object v1, v8

    .line 277
    :goto_6
    invoke-virtual {v14}, Landroidx/compose/runtime/p;->t()Landroidx/compose/runtime/s1;

    .line 278
    .line 279
    .line 280
    move-result-object v8

    .line 281
    if-eqz v8, :cond_c

    .line 282
    .line 283
    new-instance v0, Landroidx/compose/foundation/text/contextmenu/internal/y;

    .line 284
    .line 285
    const/4 v7, 0x3

    .line 286
    move/from16 v6, p6

    .line 287
    .line 288
    invoke-direct/range {v0 .. v7}, Landroidx/compose/foundation/text/contextmenu/internal/y;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/e;Lkotlin/e;II)V

    .line 289
    .line 290
    .line 291
    iput-object v0, v8, Landroidx/compose/runtime/s1;->d:Lrb/n;

    .line 292
    .line 293
    :cond_c
    return-void
.end method

.method public static final f(Landroidx/compose/ui/q;Ljava/lang/String;FLcom/supertws/dubokutv/presentation/common/ItemDirection;FFLjava/lang/String;Landroidx/compose/ui/text/r0;Lrb/k;Ljava/util/ArrayList;Lrb/k;Landroidx/compose/runtime/k;I)V
    .locals 36

    move-object/from16 v3, p1

    move-object/from16 v8, p6

    .line 1
    move-object/from16 v0, p11

    check-cast v0, Landroidx/compose/runtime/p;

    const v1, -0x9570165

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/p;->e0(I)Landroidx/compose/runtime/p;

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/p;->f(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x2

    const/4 v5, 0x4

    if-eqz v2, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    or-int v2, p12, v2

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/p;->f(Ljava/lang/Object;)Z

    move-result v6

    const/16 v7, 0x20

    if-eqz v6, :cond_1

    move v6, v7

    goto :goto_1

    :cond_1
    const/16 v6, 0x10

    :goto_1
    or-int/2addr v2, v6

    const v6, 0x12c80

    or-int/2addr v2, v6

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/p;->f(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/high16 v6, 0x100000

    goto :goto_2

    :cond_2
    const/high16 v6, 0x80000

    :goto_2
    or-int/2addr v2, v6

    const/high16 v6, 0x6400000

    or-int/2addr v2, v6

    move-object/from16 v6, p9

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/p;->h(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/high16 v9, 0x20000000

    goto :goto_3

    :cond_3
    const/high16 v9, 0x10000000

    :goto_3
    or-int/2addr v2, v9

    move-object/from16 v9, p10

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/p;->h(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_4

    :cond_4
    move v5, v4

    :goto_4
    const v10, 0x12492493

    and-int/2addr v10, v2

    const v11, 0x12492492

    if-ne v10, v11, :cond_6

    and-int/lit8 v5, v5, 0x3

    if-ne v5, v4, :cond_6

    invoke-virtual {v0}, Landroidx/compose/runtime/p;->F()Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_5

    .line 2
    :cond_5
    invoke-virtual {v0}, Landroidx/compose/runtime/p;->W()V

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v30, v0

    goto/16 :goto_a

    .line 3
    :cond_6
    :goto_5
    invoke-virtual {v0}, Landroidx/compose/runtime/p;->Y()V

    and-int/lit8 v4, p12, 0x1

    const v5, -0x1c7e381

    const/4 v10, 0x0

    if-eqz v4, :cond_8

    invoke-virtual {v0}, Landroidx/compose/runtime/p;->C()Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_6

    .line 4
    :cond_7
    invoke-virtual {v0}, Landroidx/compose/runtime/p;->W()V

    and-int/2addr v2, v5

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v1, p4

    move-object/from16 v29, p7

    move-object/from16 v4, p8

    move/from16 v34, v2

    move/from16 v2, p5

    goto :goto_7

    .line 5
    :cond_8
    :goto_6
    sget-object v4, Landroidx/compose/ui/platform/h0;->a:Landroidx/compose/runtime/b0;

    .line 6
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/p;->j(Landroidx/compose/runtime/r1;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v4, v4

    const v11, 0x3e28f5c3    # 0.165f

    mul-float/2addr v4, v11

    .line 7
    sget-object v11, Lcom/supertws/dubokutv/presentation/common/ItemDirection;->Vertical:Lcom/supertws/dubokutv/presentation/common/ItemDirection;

    .line 8
    invoke-static {v0}, Lcom/supertws/dubokutv/presentation/screens/dashboard/i0;->e(Landroidx/compose/runtime/k;)Lcom/supertws/dubokutv/presentation/utils/e;

    move-result-object v12

    .line 9
    iget v12, v12, Lcom/supertws/dubokutv/presentation/utils/e;->a:F

    .line 10
    invoke-static {v0}, Lcom/supertws/dubokutv/presentation/screens/dashboard/i0;->e(Landroidx/compose/runtime/k;)Lcom/supertws/dubokutv/presentation/utils/e;

    move-result-object v13

    .line 11
    iget v13, v13, Lcom/supertws/dubokutv/presentation/utils/e;->c:F

    .line 12
    sget-object v14, Landroidx/tv/material3/q2;->a:Landroidx/compose/runtime/b3;

    .line 13
    invoke-virtual {v0, v14}, Landroidx/compose/runtime/p;->j(Landroidx/compose/runtime/r1;)Ljava/lang/Object;

    move-result-object v14

    .line 14
    check-cast v14, Landroidx/tv/material3/p2;

    .line 15
    iget-object v15, v14, Landroidx/tv/material3/p2;->d:Landroidx/compose/ui/text/r0;

    .line 16
    sget-object v20, Landroidx/compose/ui/text/font/x;->v:Landroidx/compose/ui/text/font/x;

    const/16 v14, 0x1e

    .line 17
    invoke-static {v14}, Landroidx/work/d0;->F(I)J

    move-result-wide v18

    const/16 v28, 0x0

    const v29, 0xfffff9

    const-wide/16 v16, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const-wide/16 v25, 0x0

    const/16 v27, 0x0

    .line 18
    invoke-static/range {v15 .. v29}, Landroidx/compose/ui/text/r0;->a(Landroidx/compose/ui/text/r0;JJLandroidx/compose/ui/text/font/x;Landroidx/compose/ui/text/font/m;JLandroidx/compose/ui/graphics/w0;JLandroidx/compose/ui/text/w;Lo1/i;I)Landroidx/compose/ui/text/r0;

    move-result-object v14

    and-int/2addr v2, v5

    const v5, -0x264ab38c

    .line 19
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/p;->c0(I)V

    .line 20
    invoke-virtual {v0}, Landroidx/compose/runtime/p;->Q()Ljava/lang/Object;

    move-result-object v5

    .line 21
    sget-object v15, Landroidx/compose/runtime/j;->a:Landroidx/compose/runtime/f;

    if-ne v5, v15, :cond_9

    .line 22
    new-instance v5, Lcom/supertws/dubokutv/presentation/screens/dashboard/x;

    const/16 v15, 0x15

    invoke-direct {v5, v15}, Lcom/supertws/dubokutv/presentation/screens/dashboard/x;-><init>(I)V

    .line 23
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/p;->n0(Ljava/lang/Object;)V

    .line 24
    :cond_9
    check-cast v5, Lrb/k;

    .line 25
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/p;->p(Z)V

    move-object v1, v5

    move v5, v4

    move-object v4, v1

    move/from16 v34, v2

    move-object v6, v11

    move v1, v12

    move v2, v13

    move-object/from16 v29, v14

    .line 26
    :goto_7
    invoke-virtual {v0}, Landroidx/compose/runtime/p;->q()V

    .line 27
    invoke-static/range {p0 .. p0}, Landroidx/compose/foundation/i;->l(Landroidx/compose/ui/q;)Landroidx/compose/ui/q;

    move-result-object v11

    .line 28
    sget-object v12, Landroidx/compose/foundation/layout/i;->c:Landroidx/compose/foundation/layout/c;

    .line 29
    sget-object v13, Landroidx/compose/ui/d;->z:Landroidx/compose/ui/g;

    .line 30
    invoke-static {v12, v13, v0, v10}, Landroidx/compose/foundation/layout/z;->a(Landroidx/compose/foundation/layout/h;Landroidx/compose/ui/g;Landroidx/compose/runtime/k;I)Landroidx/compose/foundation/layout/b0;

    move-result-object v12

    .line 31
    iget-wide v13, v0, Landroidx/compose/runtime/p;->T:J

    ushr-long v15, v13, v7

    xor-long/2addr v13, v15

    long-to-int v7, v13

    .line 32
    invoke-virtual {v0}, Landroidx/compose/runtime/p;->l()Landroidx/compose/runtime/m1;

    move-result-object v13

    .line 33
    invoke-static {v0, v11}, Landroidx/compose/ui/a;->c(Landroidx/compose/runtime/k;Landroidx/compose/ui/q;)Landroidx/compose/ui/q;

    move-result-object v11

    .line 34
    sget-object v14, Landroidx/compose/ui/node/g;->h:Landroidx/compose/ui/node/f;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    sget-object v14, Landroidx/compose/ui/node/f;->b:Lrb/a;

    .line 36
    invoke-virtual {v0}, Landroidx/compose/runtime/p;->g0()V

    .line 37
    iget-boolean v15, v0, Landroidx/compose/runtime/p;->S:Z

    if-eqz v15, :cond_a

    .line 38
    invoke-virtual {v0, v14}, Landroidx/compose/runtime/p;->k(Lrb/a;)V

    goto :goto_8

    .line 39
    :cond_a
    invoke-virtual {v0}, Landroidx/compose/runtime/p;->q0()V

    .line 40
    :goto_8
    sget-object v14, Landroidx/compose/ui/node/f;->f:Lrb/n;

    .line 41
    invoke-static {v0, v12, v14}, Landroidx/compose/runtime/q;->L(Landroidx/compose/runtime/k;Ljava/lang/Object;Lrb/n;)V

    .line 42
    sget-object v12, Landroidx/compose/ui/node/f;->e:Lrb/n;

    .line 43
    invoke-static {v0, v13, v12}, Landroidx/compose/runtime/q;->L(Landroidx/compose/runtime/k;Ljava/lang/Object;Lrb/n;)V

    .line 44
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 45
    sget-object v12, Landroidx/compose/ui/node/f;->g:Lrb/n;

    .line 46
    invoke-static {v0, v7, v12}, Landroidx/compose/runtime/q;->v(Landroidx/compose/runtime/k;Ljava/lang/Integer;Lrb/n;)V

    .line 47
    sget-object v7, Landroidx/compose/ui/node/f;->h:Lrb/k;

    .line 48
    invoke-static {v0, v7}, Landroidx/compose/runtime/q;->H(Landroidx/compose/runtime/k;Lrb/k;)V

    .line 49
    sget-object v7, Landroidx/compose/ui/node/f;->d:Lrb/n;

    .line 50
    invoke-static {v0, v11, v7}, Landroidx/compose/runtime/q;->L(Landroidx/compose/runtime/k;Ljava/lang/Object;Lrb/n;)V

    const v7, -0x254434cb

    .line 51
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/p;->c0(I)V

    const/4 v7, 0x1

    if-nez v8, :cond_b

    move-object v9, v0

    move v0, v10

    goto :goto_9

    .line 52
    :cond_b
    invoke-static {v8, v3}, Ll8/t1;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/high16 v11, 0x3f800000    # 1.0f

    .line 53
    sget-object v12, Landroidx/compose/ui/n;->a:Landroidx/compose/ui/n;

    invoke-static {v12, v11}, Landroidx/compose/ui/draw/h;->a(Landroidx/compose/ui/q;F)Landroidx/compose/ui/q;

    move-result-object v11

    const/16 v12, 0x18

    int-to-float v12, v12

    const/4 v13, 0x0

    .line 54
    invoke-static {v11, v13, v12, v7}, Landroidx/compose/foundation/layout/d;->y(Landroidx/compose/ui/q;FFI)Landroidx/compose/ui/q;

    move-result-object v11

    const/16 v32, 0x0

    const v33, 0xfffc

    move v13, v10

    move-object v10, v11

    const-wide/16 v11, 0x0

    move v15, v13

    const-wide/16 v13, 0x0

    move/from16 v16, v15

    const/4 v15, 0x0

    move/from16 v17, v16

    const/16 v16, 0x0

    move/from16 v18, v17

    const/16 v17, 0x0

    move/from16 v20, v18

    const-wide/16 v18, 0x0

    move/from16 v21, v20

    const/16 v20, 0x0

    move/from16 v22, v21

    const/16 v21, 0x0

    move/from16 v24, v22

    const-wide/16 v22, 0x0

    move/from16 v25, v24

    const/16 v24, 0x0

    move/from16 v26, v25

    const/16 v25, 0x0

    move/from16 v27, v26

    const/16 v26, 0x0

    move/from16 v28, v27

    const/16 v27, 0x0

    move/from16 v30, v28

    const/16 v28, 0x0

    const/16 v31, 0x30

    move/from16 v35, v30

    move-object/from16 v30, v0

    move/from16 v0, v35

    .line 55
    invoke-static/range {v9 .. v33}, Landroidx/tv/material3/o2;->b(Ljava/lang/String;Landroidx/compose/ui/q;JJLandroidx/compose/ui/text/font/t;Landroidx/compose/ui/text/font/x;Landroidx/compose/ui/text/font/m;JLo1/k;Lo1/j;JIZIILrb/k;Landroidx/compose/ui/text/r0;Landroidx/compose/runtime/k;III)V

    move-object/from16 v9, v30

    .line 56
    :goto_9
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/p;->p(Z)V

    .line 57
    new-instance v0, Lcom/supertws/dubokutv/presentation/screens/history/v;

    move v10, v7

    move-object/from16 v7, p10

    invoke-direct/range {v0 .. v7}, Lcom/supertws/dubokutv/presentation/screens/history/v;-><init>(FFLjava/lang/String;Lrb/k;FLcom/supertws/dubokutv/presentation/common/ItemDirection;Lrb/k;)V

    const v3, 0x6d05a1c8

    invoke-static {v3, v0, v9}, Landroidx/compose/runtime/internal/e;->d(ILkotlin/e;Landroidx/compose/runtime/k;)Landroidx/compose/runtime/internal/d;

    move-result-object v15

    shr-int/lit8 v0, v34, 0x1b

    and-int/lit8 v0, v0, 0xe

    const v3, 0x186000

    or-int v17, v0, v3

    const/16 v18, 0x2e

    move v0, v10

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 58
    const-string v13, ""

    const/4 v14, 0x0

    move-object/from16 v16, v9

    move-object/from16 v9, p9

    invoke-static/range {v9 .. v18}, Landroidx/compose/animation/d;->b(Ljava/lang/Object;Landroidx/compose/ui/q;Lrb/k;Landroidx/compose/ui/e;Ljava/lang/String;Lrb/k;Lrb/p;Landroidx/compose/runtime/k;II)V

    move-object/from16 v9, v16

    .line 59
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/p;->p(Z)V

    move v3, v5

    move-object/from16 v30, v9

    move-object/from16 v8, v29

    move v5, v1

    move-object v9, v4

    move-object v4, v6

    move v6, v2

    .line 60
    :goto_a
    invoke-virtual/range {v30 .. v30}, Landroidx/compose/runtime/p;->t()Landroidx/compose/runtime/s1;

    move-result-object v13

    if-eqz v13, :cond_c

    new-instance v0, Lcom/supertws/dubokutv/presentation/screens/history/r;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v7, p6

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Lcom/supertws/dubokutv/presentation/screens/history/r;-><init>(Landroidx/compose/ui/q;Ljava/lang/String;FLcom/supertws/dubokutv/presentation/common/ItemDirection;FFLjava/lang/String;Landroidx/compose/ui/text/r0;Lrb/k;Ljava/util/ArrayList;Lrb/k;I)V

    .line 61
    iput-object v0, v13, Landroidx/compose/runtime/s1;->d:Lrb/n;

    :cond_c
    return-void
.end method

.method public static final g(Lrb/k;Lrb/a;Lcom/supertws/dubokutv/presentation/screens/history/o;Landroidx/compose/runtime/k;I)V
    .locals 15

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    const-string v0, "onMovieClick"

    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "onBackPress"

    .line 9
    .line 10
    invoke-static {v2, v0}, Lkotlin/jvm/internal/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    move-object/from16 v5, p3

    .line 14
    .line 15
    check-cast v5, Landroidx/compose/runtime/p;

    .line 16
    .line 17
    const v0, -0x32a0e372

    .line 18
    .line 19
    .line 20
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/p;->e0(I)Landroidx/compose/runtime/p;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v5, p0}, Landroidx/compose/runtime/p;->h(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    const/4 v0, 0x4

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x2

    .line 32
    :goto_0
    or-int v0, p4, v0

    .line 33
    .line 34
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/p;->h(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    const/16 v1, 0x20

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const/16 v1, 0x10

    .line 44
    .line 45
    :goto_1
    or-int/2addr v0, v1

    .line 46
    or-int/lit16 v0, v0, 0x80

    .line 47
    .line 48
    and-int/lit16 v1, v0, 0x93

    .line 49
    .line 50
    const/16 v3, 0x92

    .line 51
    .line 52
    if-ne v1, v3, :cond_3

    .line 53
    .line 54
    invoke-virtual {v5}, Landroidx/compose/runtime/p;->F()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-nez v1, :cond_2

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_2
    invoke-virtual {v5}, Landroidx/compose/runtime/p;->W()V

    .line 62
    .line 63
    .line 64
    move-object/from16 v3, p2

    .line 65
    .line 66
    move-object v7, v5

    .line 67
    goto/16 :goto_7

    .line 68
    .line 69
    :cond_3
    :goto_2
    invoke-virtual {v5}, Landroidx/compose/runtime/p;->Y()V

    .line 70
    .line 71
    .line 72
    and-int/lit8 v1, p4, 0x1

    .line 73
    .line 74
    if-eqz v1, :cond_5

    .line 75
    .line 76
    invoke-virtual {v5}, Landroidx/compose/runtime/p;->C()Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_4

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_4
    invoke-virtual {v5}, Landroidx/compose/runtime/p;->W()V

    .line 84
    .line 85
    .line 86
    and-int/lit16 v0, v0, -0x381

    .line 87
    .line 88
    move-object/from16 v13, p2

    .line 89
    .line 90
    goto :goto_5

    .line 91
    :cond_5
    :goto_3
    invoke-static {v5}, Lz2/a;->a(Landroidx/compose/runtime/k;)Landroidx/lifecycle/r1;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    if-eqz v1, :cond_f

    .line 96
    .line 97
    invoke-static {v1, v5}, Landroidx/window/area/f;->Y(Landroidx/lifecycle/r1;Landroidx/compose/runtime/k;)Lfb/f;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    instance-of v4, v1, Landroidx/lifecycle/q;

    .line 102
    .line 103
    if-eqz v4, :cond_6

    .line 104
    .line 105
    move-object v4, v1

    .line 106
    check-cast v4, Landroidx/lifecycle/q;

    .line 107
    .line 108
    invoke-interface {v4}, Landroidx/lifecycle/q;->getDefaultViewModelCreationExtras()Ly2/c;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    goto :goto_4

    .line 113
    :cond_6
    sget-object v4, Ly2/a;->b:Ly2/a;

    .line 114
    .line 115
    :goto_4
    const-class v6, Lcom/supertws/dubokutv/presentation/screens/history/o;

    .line 116
    .line 117
    invoke-static {v6}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/b;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    invoke-static {v6, v1, v3, v4, v5}, Ll8/t1;->G(Lkotlin/jvm/internal/b;Landroidx/lifecycle/r1;Landroidx/lifecycle/o1;Ly2/c;Landroidx/compose/runtime/k;)Landroidx/lifecycle/m1;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    check-cast v1, Lcom/supertws/dubokutv/presentation/screens/history/o;

    .line 126
    .line 127
    and-int/lit16 v0, v0, -0x381

    .line 128
    .line 129
    move-object v13, v1

    .line 130
    :goto_5
    invoke-virtual {v5}, Landroidx/compose/runtime/p;->q()V

    .line 131
    .line 132
    .line 133
    and-int/lit8 v1, v0, 0x70

    .line 134
    .line 135
    const/4 v14, 0x0

    .line 136
    const/4 v3, 0x1

    .line 137
    invoke-static {v14, v2, v5, v1, v3}, Lmc/d;->a(ZLrb/a;Landroidx/compose/runtime/k;II)V

    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->requestSyncDebounced()V

    sget-object v1, Lcom/supertws/dubokutv/LanSyncManager;->sSyncVersionFlow:Lkotlinx/coroutines/flow/r2;
    invoke-static {v1, v5}, Landroidx/lifecycle/compose/b;->c(Lkotlinx/coroutines/flow/q2;Landroidx/compose/runtime/k;)Landroidx/compose/runtime/b1;
    move-result-object v1
    invoke-interface {v1}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    iget-object v1, v13, Lcom/supertws/dubokutv/presentation/screens/history/o;->c:Ljava/lang/Object;

    .line 141
    .line 142
    invoke-static {v1, v5}, Landroidx/lifecycle/compose/b;->c(Lkotlinx/coroutines/flow/q2;Landroidx/compose/runtime/k;)Landroidx/compose/runtime/b1;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-interface {v1}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    check-cast v1, Lcom/supertws/dubokutv/presentation/screens/history/m;

    .line 151
    .line 152
    instance-of v3, v1, Lcom/supertws/dubokutv/presentation/screens/history/l;

    .line 153
    .line 154
    if-eqz v3, :cond_7

    .line 155
    .line 156
    const v0, -0x3b4e5602

    .line 157
    .line 158
    .line 159
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/p;->c0(I)V

    .line 160
    .line 161
    .line 162
    const/4 v8, 0x0

    .line 163
    const/4 v9, 0x7

    .line 164
    const-wide/16 v3, 0x0

    .line 165
    .line 166
    move-object v7, v5

    .line 167
    const/4 v5, 0x0

    .line 168
    const/4 v6, 0x0

    .line 169
    invoke-static/range {v3 .. v9}, Lcom/supertws/dubokutv/presentation/common/j;->c(JFFLandroidx/compose/runtime/k;II)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v7, v14}, Landroidx/compose/runtime/p;->p(Z)V

    .line 173
    .line 174
    .line 175
    goto/16 :goto_6

    .line 176
    .line 177
    :cond_7
    move-object v7, v5

    .line 178
    instance-of v3, v1, Lcom/supertws/dubokutv/presentation/screens/history/k;

    .line 179
    .line 180
    if-eqz v3, :cond_8

    .line 181
    .line 182
    const v0, -0x3b4d2955

    .line 183
    .line 184
    .line 185
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/p;->c0(I)V

    .line 186
    .line 187
    .line 188
    check-cast v1, Lcom/supertws/dubokutv/presentation/screens/history/k;

    .line 189
    .line 190
    iget-object v8, v1, Lcom/supertws/dubokutv/presentation/screens/history/k;->a:Ljava/lang/String;

    .line 191
    .line 192
    const/16 v11, 0x30

    .line 193
    .line 194
    const/16 v12, 0x5d

    .line 195
    .line 196
    const/4 v3, 0x0

    .line 197
    const/4 v4, 0x0

    .line 198
    const/4 v5, 0x0

    .line 199
    const/4 v6, 0x0

    .line 200
    move-object v10, v7

    .line 201
    const/4 v7, 0x0

    .line 202
    const/4 v9, 0x0

    .line 203
    invoke-static/range {v3 .. v12}, Lcom/supertws/dubokutv/presentation/common/j;->b(Landroidx/compose/ui/q;ZFLjava/lang/String;Ljava/util/List;Ljava/lang/String;Lrb/a;Landroidx/compose/runtime/k;II)V

    .line 204
    .line 205
    .line 206
    move-object v7, v10

    .line 207
    invoke-virtual {v7, v14}, Landroidx/compose/runtime/p;->p(Z)V

    .line 208
    .line 209
    .line 210
    goto :goto_6

    .line 211
    :cond_8
    instance-of v3, v1, Lcom/supertws/dubokutv/presentation/screens/history/j;

    .line 212
    .line 213
    if-eqz v3, :cond_e

    .line 214
    .line 215
    const v3, -0x3b4aaecd

    .line 216
    .line 217
    .line 218
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/p;->c0(I)V

    .line 219
    .line 220
    .line 221
    check-cast v1, Lcom/supertws/dubokutv/presentation/screens/history/j;

    .line 222
    .line 223
    iget-object v1, v1, Lcom/supertws/dubokutv/presentation/screens/history/j;->a:Ljava/util/ArrayList;

    .line 224
    .line 225
    const v3, 0x71b357a7

    .line 226
    .line 227
    .line 228
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/p;->c0(I)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v7, v13}, Landroidx/compose/runtime/p;->h(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v3

    .line 235
    invoke-virtual {v7}, Landroidx/compose/runtime/p;->Q()Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v4

    .line 239
    sget-object v5, Landroidx/compose/runtime/j;->a:Landroidx/compose/runtime/f;

    .line 240
    .line 241
    if-nez v3, :cond_9

    .line 242
    .line 243
    if-ne v4, v5, :cond_a

    .line 244
    .line 245
    :cond_9
    new-instance v4, Lcom/supertws/dubokutv/presentation/screens/history/HistoryScreenKt$HistoryScreen$1$1;

    .line 246
    .line 247
    invoke-direct {v4, v13}, Lcom/supertws/dubokutv/presentation/screens/history/HistoryScreenKt$HistoryScreen$1$1;-><init>(Ljava/lang/Object;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v7, v4}, Landroidx/compose/runtime/p;->n0(Ljava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    :cond_a
    check-cast v4, Lkotlin/reflect/e;

    .line 254
    .line 255
    invoke-virtual {v7, v14}, Landroidx/compose/runtime/p;->p(Z)V

    .line 256
    .line 257
    .line 258
    const v3, 0x71b3650b

    .line 259
    .line 260
    .line 261
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/p;->c0(I)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v7, v13}, Landroidx/compose/runtime/p;->h(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result v3

    .line 268
    invoke-virtual {v7}, Landroidx/compose/runtime/p;->Q()Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v6

    .line 272
    if-nez v3, :cond_b

    .line 273
    .line 274
    if-ne v6, v5, :cond_c

    .line 275
    .line 276
    :cond_b
    new-instance v6, Lcom/supertws/dubokutv/presentation/screens/history/HistoryScreenKt$HistoryScreen$2$1;

    .line 277
    .line 278
    invoke-direct {v6, v13}, Lcom/supertws/dubokutv/presentation/screens/history/HistoryScreenKt$HistoryScreen$2$1;-><init>(Ljava/lang/Object;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v7, v6}, Landroidx/compose/runtime/p;->n0(Ljava/lang/Object;)V

    .line 282
    .line 283
    .line 284
    :cond_c
    check-cast v6, Lkotlin/reflect/e;

    .line 285
    .line 286
    invoke-virtual {v7, v14}, Landroidx/compose/runtime/p;->p(Z)V

    .line 287
    .line 288
    .line 289
    check-cast v4, Lrb/k;

    .line 290
    .line 291
    move-object v3, v6

    .line 292
    check-cast v3, Lrb/a;

    .line 293
    .line 294
    shl-int/lit8 v5, v0, 0x3

    .line 295
    .line 296
    and-int/lit8 v5, v5, 0x70

    .line 297
    .line 298
    shl-int/lit8 v0, v0, 0x9

    .line 299
    .line 300
    const v6, 0xe000

    .line 301
    .line 302
    .line 303
    and-int/2addr v0, v6

    .line 304
    or-int v6, v5, v0

    .line 305
    .line 306
    move-object v0, v4

    .line 307
    move-object v4, v2

    .line 308
    move-object v2, v0

    .line 309
    move-object v0, v1

    .line 310
    move-object v5, v7

    .line 311
    move-object v1, p0

    .line 312
    invoke-static/range {v0 .. v6}, Lcom/supertws/dubokutv/presentation/screens/history/i;->c(Ljava/util/ArrayList;Lrb/k;Lrb/k;Lrb/a;Lrb/a;Landroidx/compose/runtime/k;I)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v7, v14}, Landroidx/compose/runtime/p;->p(Z)V

    .line 316
    .line 317
    .line 318
    :goto_6
    move-object v3, v13

    .line 319
    :goto_7
    invoke-virtual {v7}, Landroidx/compose/runtime/p;->t()Landroidx/compose/runtime/s1;

    .line 320
    .line 321
    .line 322
    move-result-object v6

    .line 323
    if-eqz v6, :cond_d

    .line 324
    .line 325
    new-instance v0, Landroidx/compose/foundation/layout/x;

    .line 326
    .line 327
    const/4 v5, 0x4

    .line 328
    move-object v1, p0

    .line 329
    move-object/from16 v2, p1

    .line 330
    .line 331
    move/from16 v4, p4

    .line 332
    .line 333
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/layout/x;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 334
    .line 335
    .line 336
    iput-object v0, v6, Landroidx/compose/runtime/s1;->d:Lrb/n;

    .line 337
    .line 338
    :cond_d
    return-void

    .line 339
    :cond_e
    const p0, 0x71b31fc6

    .line 340
    .line 341
    .line 342
    invoke-virtual {v7, p0}, Landroidx/compose/runtime/p;->c0(I)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v7, v14}, Landroidx/compose/runtime/p;->p(Z)V

    .line 346
    .line 347
    .line 348
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 349
    .line 350
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 351
    .line 352
    .line 353
    throw p0

    .line 354
    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 355
    .line 356
    const-string v0, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    .line 357
    .line 358
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    throw p0
.end method

.method public static final h(Landroidx/compose/ui/q;Ljava/lang/String;Lrb/k;IFLcom/supertws/dubokutv/presentation/common/ItemDirection;Lrb/k;Lqa/t;Landroidx/compose/runtime/k;I)V
    .locals 20

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    move-object/from16 v3, p2

    .line 4
    .line 5
    move/from16 v4, p3

    .line 6
    .line 7
    move/from16 v5, p4

    .line 8
    .line 9
    move-object/from16 v6, p5

    .line 10
    .line 11
    move-object/from16 v7, p6

    .line 12
    .line 13
    move-object/from16 v8, p7

    .line 14
    .line 15
    move/from16 v9, p9

    .line 16
    .line 17
    move-object/from16 v0, p8

    .line 18
    .line 19
    check-cast v0, Landroidx/compose/runtime/p;

    .line 20
    .line 21
    const v1, 0x4262ae75

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/p;->e0(I)Landroidx/compose/runtime/p;

    .line 25
    .line 26
    .line 27
    or-int/lit8 v1, v9, 0x6

    .line 28
    .line 29
    and-int/lit8 v10, v9, 0x30

    .line 30
    .line 31
    if-nez v10, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/p;->f(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v10

    .line 37
    if-eqz v10, :cond_0

    .line 38
    .line 39
    const/16 v10, 0x20

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/16 v10, 0x10

    .line 43
    .line 44
    :goto_0
    or-int/2addr v1, v10

    .line 45
    :cond_1
    and-int/lit16 v10, v9, 0x180

    .line 46
    .line 47
    const/16 v11, 0x100

    .line 48
    .line 49
    if-nez v10, :cond_3

    .line 50
    .line 51
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/p;->h(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v10

    .line 55
    if-eqz v10, :cond_2

    .line 56
    .line 57
    move v10, v11

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    const/16 v10, 0x80

    .line 60
    .line 61
    :goto_1
    or-int/2addr v1, v10

    .line 62
    :cond_3
    and-int/lit16 v10, v9, 0xc00

    .line 63
    .line 64
    if-nez v10, :cond_5

    .line 65
    .line 66
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/p;->d(I)Z

    .line 67
    .line 68
    .line 69
    move-result v10

    .line 70
    if-eqz v10, :cond_4

    .line 71
    .line 72
    const/16 v10, 0x800

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_4
    const/16 v10, 0x400

    .line 76
    .line 77
    :goto_2
    or-int/2addr v1, v10

    .line 78
    :cond_5
    and-int/lit16 v10, v9, 0x6000

    .line 79
    .line 80
    if-nez v10, :cond_7

    .line 81
    .line 82
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/p;->c(F)Z

    .line 83
    .line 84
    .line 85
    move-result v10

    .line 86
    if-eqz v10, :cond_6

    .line 87
    .line 88
    const/16 v10, 0x4000

    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_6
    const/16 v10, 0x2000

    .line 92
    .line 93
    :goto_3
    or-int/2addr v1, v10

    .line 94
    :cond_7
    const/high16 v10, 0x30000

    .line 95
    .line 96
    and-int/2addr v10, v9

    .line 97
    if-nez v10, :cond_9

    .line 98
    .line 99
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/p;->f(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v10

    .line 103
    if-eqz v10, :cond_8

    .line 104
    .line 105
    const/high16 v10, 0x20000

    .line 106
    .line 107
    goto :goto_4

    .line 108
    :cond_8
    const/high16 v10, 0x10000

    .line 109
    .line 110
    :goto_4
    or-int/2addr v1, v10

    .line 111
    :cond_9
    const/high16 v10, 0x180000

    .line 112
    .line 113
    and-int/2addr v10, v9

    .line 114
    if-nez v10, :cond_b

    .line 115
    .line 116
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/p;->h(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v10

    .line 120
    if-eqz v10, :cond_a

    .line 121
    .line 122
    const/high16 v10, 0x100000

    .line 123
    .line 124
    goto :goto_5

    .line 125
    :cond_a
    const/high16 v10, 0x80000

    .line 126
    .line 127
    :goto_5
    or-int/2addr v1, v10

    .line 128
    :cond_b
    const/high16 v10, 0xc00000

    .line 129
    .line 130
    and-int/2addr v10, v9

    .line 131
    if-nez v10, :cond_d

    .line 132
    .line 133
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/p;->f(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v10

    .line 137
    if-eqz v10, :cond_c

    .line 138
    .line 139
    const/high16 v10, 0x800000

    .line 140
    .line 141
    goto :goto_6

    .line 142
    :cond_c
    const/high16 v10, 0x400000

    .line 143
    .line 144
    :goto_6
    or-int/2addr v1, v10

    .line 145
    :cond_d
    const v10, 0x492493

    .line 146
    .line 147
    .line 148
    and-int/2addr v10, v1

    .line 149
    const v13, 0x492492

    .line 150
    .line 151
    .line 152
    if-ne v10, v13, :cond_f

    .line 153
    .line 154
    invoke-virtual {v0}, Landroidx/compose/runtime/p;->F()Z

    .line 155
    .line 156
    .line 157
    move-result v10

    .line 158
    if-nez v10, :cond_e

    .line 159
    .line 160
    goto :goto_7

    .line 161
    :cond_e
    invoke-virtual {v0}, Landroidx/compose/runtime/p;->W()V

    .line 162
    .line 163
    .line 164
    move-object/from16 v1, p0

    .line 165
    .line 166
    move-object/from16 v17, v0

    .line 167
    .line 168
    goto/16 :goto_a

    .line 169
    .line 170
    :cond_f
    :goto_7
    const v10, -0x15509fa7

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/p;->c0(I)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0}, Landroidx/compose/runtime/p;->Q()Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v10

    .line 180
    sget-object v13, Landroidx/compose/runtime/j;->a:Landroidx/compose/runtime/f;

    .line 181
    .line 182
    if-ne v10, v13, :cond_10

    .line 183
    .line 184
    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 185
    .line 186
    invoke-static {v10}, Landroidx/compose/runtime/q;->D(Ljava/lang/Object;)Landroidx/compose/runtime/b1;

    .line 187
    .line 188
    .line 189
    move-result-object v10

    .line 190
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/p;->n0(Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    :cond_10
    check-cast v10, Landroidx/compose/runtime/b1;

    .line 194
    .line 195
    const/4 v14, 0x0

    .line 196
    invoke-virtual {v0, v14}, Landroidx/compose/runtime/p;->p(Z)V

    .line 197
    .line 198
    .line 199
    sget-object v15, Landroidx/compose/ui/n;->a:Landroidx/compose/ui/n;

    .line 200
    .line 201
    invoke-static {v15, v5}, Landroidx/compose/foundation/layout/f2;->n(Landroidx/compose/ui/q;F)Landroidx/compose/ui/q;

    .line 202
    .line 203
    .line 204
    move-result-object v14

    .line 205
    const v12, -0x15508c8a

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/p;->c0(I)V

    .line 209
    .line 210
    .line 211
    and-int/lit16 v12, v1, 0x380

    .line 212
    .line 213
    const/16 v16, 0x1

    .line 214
    .line 215
    if-ne v12, v11, :cond_11

    .line 216
    .line 217
    move/from16 v11, v16

    .line 218
    .line 219
    goto :goto_8

    .line 220
    :cond_11
    const/4 v11, 0x0

    .line 221
    :goto_8
    and-int/lit16 v1, v1, 0x1c00

    .line 222
    .line 223
    const/16 v12, 0x800

    .line 224
    .line 225
    if-ne v1, v12, :cond_12

    .line 226
    .line 227
    goto :goto_9

    .line 228
    :cond_12
    const/16 v16, 0x0

    .line 229
    .line 230
    :goto_9
    or-int v1, v11, v16

    .line 231
    .line 232
    invoke-virtual {v0}, Landroidx/compose/runtime/p;->Q()Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v11

    .line 236
    if-nez v1, :cond_13

    .line 237
    .line 238
    if-ne v11, v13, :cond_14

    .line 239
    .line 240
    :cond_13
    new-instance v11, Landroidx/compose/foundation/v1;

    .line 241
    .line 242
    const/4 v1, 0x4

    .line 243
    invoke-direct {v11, v3, v4, v1, v10}, Landroidx/compose/foundation/v1;-><init>(Ljava/lang/Object;IILjava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/p;->n0(Ljava/lang/Object;)V

    .line 247
    .line 248
    .line 249
    :cond_14
    check-cast v11, Lrb/k;

    .line 250
    .line 251
    const/4 v1, 0x0

    .line 252
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/p;->p(Z)V

    .line 253
    .line 254
    .line 255
    invoke-static {v14, v11}, Landroidx/compose/ui/focus/m0;->u(Landroidx/compose/ui/q;Lrb/k;)Landroidx/compose/ui/q;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    invoke-interface {v1, v15}, Landroidx/compose/ui/q;->n(Landroidx/compose/ui/q;)Landroidx/compose/ui/q;

    .line 260
    .line 261
    .line 262
    move-result-object v12

    .line 263
    new-instance v1, Lcom/supertws/dubokutv/presentation/screens/drama/e;

    .line 264
    .line 265
    const/4 v11, 0x3

    .line 266
    invoke-direct {v1, v7, v8, v6, v11}, Lcom/supertws/dubokutv/presentation/screens/drama/e;-><init>(Lrb/k;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 267
    .line 268
    .line 269
    const v11, 0x7cf2e6e5

    .line 270
    .line 271
    .line 272
    invoke-static {v11, v1, v0}, Landroidx/compose/runtime/internal/e;->d(ILkotlin/e;Landroidx/compose/runtime/k;)Landroidx/compose/runtime/internal/d;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    new-instance v11, Lcom/supertws/dubokutv/presentation/screens/drama/c0;

    .line 277
    .line 278
    const/4 v13, 0x1

    .line 279
    invoke-direct {v11, v8, v13, v2, v10}, Lcom/supertws/dubokutv/presentation/screens/drama/c0;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 280
    .line 281
    .line 282
    const v10, 0x3586bead

    .line 283
    .line 284
    .line 285
    invoke-static {v10, v11, v0}, Landroidx/compose/runtime/internal/e;->d(ILkotlin/e;Landroidx/compose/runtime/k;)Landroidx/compose/runtime/internal/d;

    .line 286
    .line 287
    .line 288
    move-result-object v11

    .line 289
    new-instance v10, Lcom/supertws/dubokutv/presentation/screens/history/g;

    .line 290
    .line 291
    const/4 v13, 0x2

    .line 292
    invoke-direct {v10, v8, v13}, Lcom/supertws/dubokutv/presentation/screens/history/g;-><init>(Lqa/t;I)V

    .line 293
    .line 294
    .line 295
    const v13, -0x3fc39351

    .line 296
    .line 297
    .line 298
    invoke-static {v13, v10, v0}, Landroidx/compose/runtime/internal/e;->d(ILkotlin/e;Landroidx/compose/runtime/k;)Landroidx/compose/runtime/internal/d;

    .line 299
    .line 300
    .line 301
    move-result-object v13

    .line 302
    const/16 v18, 0xc36

    .line 303
    .line 304
    const/16 v19, 0x70

    .line 305
    .line 306
    const/4 v14, 0x0

    .line 307
    move-object v10, v15

    .line 308
    const/4 v15, 0x0

    .line 309
    const/16 v16, 0x0

    .line 310
    .line 311
    move-object/from16 v17, v0

    .line 312
    .line 313
    move-object v0, v10

    .line 314
    move-object v10, v1

    .line 315
    invoke-static/range {v10 .. v19}, Landroidx/tv/material3/i;->n(Lrb/o;Lrb/n;Landroidx/compose/ui/q;Lrb/n;Lrb/n;Landroidx/tv/material3/o;Landroidx/compose/foundation/interaction/m;Landroidx/compose/runtime/k;II)V

    .line 316
    .line 317
    .line 318
    move-object v1, v0

    .line 319
    :goto_a
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/p;->t()Landroidx/compose/runtime/s1;

    .line 320
    .line 321
    .line 322
    move-result-object v10

    .line 323
    if-eqz v10, :cond_15

    .line 324
    .line 325
    new-instance v0, Landroidx/compose/material3/o;

    .line 326
    .line 327
    invoke-direct/range {v0 .. v9}, Landroidx/compose/material3/o;-><init>(Landroidx/compose/ui/q;Ljava/lang/String;Lrb/k;IFLcom/supertws/dubokutv/presentation/common/ItemDirection;Lrb/k;Lqa/t;I)V

    .line 328
    .line 329
    .line 330
    iput-object v0, v10, Landroidx/compose/runtime/s1;->d:Lrb/n;

    .line 331
    .line 332
    :cond_15
    return-void
.end method

.method public static final i(Lqa/t;Lcom/supertws/dubokutv/presentation/common/ItemDirection;Landroidx/compose/runtime/k;I)V
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v9, p2

    .line 6
    .line 7
    check-cast v9, Landroidx/compose/runtime/p;

    .line 8
    .line 9
    const v3, -0x34292be3    # -2.815801E7f

    .line 10
    .line 11
    .line 12
    invoke-virtual {v9, v3}, Landroidx/compose/runtime/p;->e0(I)Landroidx/compose/runtime/p;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/p;->f(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    const/4 v3, 0x4

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v3, 0x2

    .line 24
    :goto_0
    or-int v3, p3, v3

    .line 25
    .line 26
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/p;->f(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    const/16 v13, 0x20

    .line 31
    .line 32
    if-eqz v4, :cond_1

    .line 33
    .line 34
    move v4, v13

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/16 v4, 0x10

    .line 37
    .line 38
    :goto_1
    or-int/2addr v3, v4

    .line 39
    and-int/lit8 v3, v3, 0x13

    .line 40
    .line 41
    const/16 v4, 0x12

    .line 42
    .line 43
    if-ne v3, v4, :cond_3

    .line 44
    .line 45
    invoke-virtual {v9}, Landroidx/compose/runtime/p;->F()Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-nez v3, :cond_2

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    invoke-virtual {v9}, Landroidx/compose/runtime/p;->W()V

    .line 53
    .line 54
    .line 55
    move-object v1, v0

    .line 56
    goto/16 :goto_6

    .line 57
    .line 58
    :cond_3
    :goto_2
    sget-object v3, Landroidx/compose/ui/d;->d:Landroidx/compose/ui/i;

    .line 59
    .line 60
    const/4 v4, 0x0

    .line 61
    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/q;->d(Landroidx/compose/ui/i;Z)Landroidx/compose/ui/layout/t0;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    iget-wide v5, v9, Landroidx/compose/runtime/p;->T:J

    .line 66
    .line 67
    ushr-long v7, v5, v13

    .line 68
    .line 69
    xor-long/2addr v5, v7

    .line 70
    long-to-int v5, v5

    .line 71
    invoke-virtual {v9}, Landroidx/compose/runtime/p;->l()Landroidx/compose/runtime/m1;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    sget-object v14, Landroidx/compose/ui/n;->a:Landroidx/compose/ui/n;

    .line 76
    .line 77
    invoke-static {v9, v14}, Landroidx/compose/ui/a;->c(Landroidx/compose/runtime/k;Landroidx/compose/ui/q;)Landroidx/compose/ui/q;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    sget-object v8, Landroidx/compose/ui/node/g;->h:Landroidx/compose/ui/node/f;

    .line 82
    .line 83
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    sget-object v15, Landroidx/compose/ui/node/f;->b:Lrb/a;

    .line 87
    .line 88
    invoke-virtual {v9}, Landroidx/compose/runtime/p;->g0()V

    .line 89
    .line 90
    .line 91
    iget-boolean v8, v9, Landroidx/compose/runtime/p;->S:Z

    .line 92
    .line 93
    if-eqz v8, :cond_4

    .line 94
    .line 95
    invoke-virtual {v9, v15}, Landroidx/compose/runtime/p;->k(Lrb/a;)V

    .line 96
    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_4
    invoke-virtual {v9}, Landroidx/compose/runtime/p;->q0()V

    .line 100
    .line 101
    .line 102
    :goto_3
    sget-object v8, Landroidx/compose/ui/node/f;->f:Lrb/n;

    .line 103
    .line 104
    invoke-static {v9, v3, v8}, Landroidx/compose/runtime/q;->L(Landroidx/compose/runtime/k;Ljava/lang/Object;Lrb/n;)V

    .line 105
    .line 106
    .line 107
    sget-object v3, Landroidx/compose/ui/node/f;->e:Lrb/n;

    .line 108
    .line 109
    invoke-static {v9, v6, v3}, Landroidx/compose/runtime/q;->L(Landroidx/compose/runtime/k;Ljava/lang/Object;Lrb/n;)V

    .line 110
    .line 111
    .line 112
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    sget-object v6, Landroidx/compose/ui/node/f;->g:Lrb/n;

    .line 117
    .line 118
    invoke-static {v9, v5, v6}, Landroidx/compose/runtime/q;->v(Landroidx/compose/runtime/k;Ljava/lang/Integer;Lrb/n;)V

    .line 119
    .line 120
    .line 121
    sget-object v5, Landroidx/compose/ui/node/f;->h:Lrb/k;

    .line 122
    .line 123
    invoke-static {v9, v5}, Landroidx/compose/runtime/q;->H(Landroidx/compose/runtime/k;Lrb/k;)V

    .line 124
    .line 125
    .line 126
    sget-object v10, Landroidx/compose/ui/node/f;->d:Lrb/n;

    .line 127
    .line 128
    invoke-static {v9, v7, v10}, Landroidx/compose/runtime/q;->L(Landroidx/compose/runtime/k;Ljava/lang/Object;Lrb/n;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1}, Lcom/supertws/dubokutv/presentation/common/ItemDirection;->getAspectRatio()F

    .line 132
    .line 133
    .line 134
    move-result v7

    .line 135
    invoke-static {v14, v7}, Landroidx/compose/foundation/layout/d;->i(Landroidx/compose/ui/q;F)Landroidx/compose/ui/q;

    .line 136
    .line 137
    .line 138
    move-result-object v7

    .line 139
    const/high16 v11, 0x3f800000    # 1.0f

    .line 140
    .line 141
    invoke-static {v7, v11}, Landroidx/compose/foundation/layout/f2;->c(Landroidx/compose/ui/q;F)Landroidx/compose/ui/q;

    .line 142
    .line 143
    .line 144
    move-result-object v7

    .line 145
    new-instance v11, Lcoil/request/g;

    .line 146
    .line 147
    move/from16 v16, v13

    .line 148
    .line 149
    sget-object v13, Landroidx/compose/ui/platform/h0;->b:Landroidx/compose/runtime/b3;

    .line 150
    .line 151
    invoke-virtual {v9, v13}, Landroidx/compose/runtime/p;->j(Landroidx/compose/runtime/r1;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v13

    .line 155
    check-cast v13, Landroid/content/Context;

    .line 156
    .line 157
    invoke-direct {v11, v13}, Lcoil/request/g;-><init>(Landroid/content/Context;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v11}, Lcoil/request/g;->b()V

    .line 161
    .line 162
    .line 163
    iget-object v13, v0, Lqa/t;->m:Ljava/lang/String;

    .line 164
    .line 165
    const-string v12, "http"

    .line 166
    .line 167
    invoke-static {v13, v12, v4}, Lkotlin/text/y;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 168
    .line 169
    .line 170
    move-result v12

    .line 171
    if-eqz v12, :cond_5

    .line 172
    .line 173
    goto :goto_4

    .line 174
    :cond_5
    sget-object v12, Lta/e;->a:Ljava/lang/String;

    .line 175
    .line 176
    const-string v12, "https://pic.dbokutv.com"

    .line 177
    .line 178
    invoke-static {v12, v13}, Lv/g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v13

    .line 182
    :goto_4
    iput-object v13, v11, Lcoil/request/g;->c:Ljava/lang/Object;

    .line 183
    .line 184
    invoke-virtual {v11}, Lcoil/request/g;->a()Lcoil/request/h;

    .line 185
    .line 186
    .line 187
    move-result-object v11

    .line 188
    iget-object v12, v0, Lqa/t;->c:Ljava/lang/String;

    .line 189
    .line 190
    const/4 v13, 0x1

    .line 191
    move/from16 v18, v4

    .line 192
    .line 193
    new-array v4, v13, [Ljava/lang/Object;

    .line 194
    .line 195
    aput-object v12, v4, v18

    .line 196
    .line 197
    const v12, 0x7f110053

    .line 198
    .line 199
    .line 200
    invoke-static {v12, v4, v9}, Ll8/t1;->B(I[Ljava/lang/Object;Landroidx/compose/runtime/k;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    const v12, 0x7f0800d9

    .line 205
    .line 206
    .line 207
    const/4 v13, 0x6

    .line 208
    invoke-static {v12, v9, v13}, Lkotlin/reflect/x;->o(ILandroidx/compose/runtime/k;I)Landroidx/compose/ui/graphics/painter/b;

    .line 209
    .line 210
    .line 211
    move-result-object v12

    .line 212
    move-object v13, v10

    .line 213
    const v10, 0x8000

    .line 214
    .line 215
    .line 216
    move-object/from16 v19, v3

    .line 217
    .line 218
    move-object v3, v11

    .line 219
    const v11, 0xfbe8

    .line 220
    .line 221
    .line 222
    move-object/from16 v20, v5

    .line 223
    .line 224
    move-object v5, v7

    .line 225
    const/4 v7, 0x0

    .line 226
    move-object/from16 v21, v8

    .line 227
    .line 228
    sget-object v8, Landroidx/compose/ui/layout/k;->a:Landroidx/compose/ui/layout/z0;

    .line 229
    .line 230
    move-object/from16 v0, v19

    .line 231
    .line 232
    move-object/from16 v19, v13

    .line 233
    .line 234
    move-object v13, v0

    .line 235
    move-object v1, v6

    .line 236
    move-object v6, v12

    .line 237
    move-object/from16 v2, v20

    .line 238
    .line 239
    move-object/from16 v12, v21

    .line 240
    .line 241
    const/high16 v0, 0x3f800000    # 1.0f

    .line 242
    .line 243
    invoke-static/range {v3 .. v11}, Lcoil/compose/o;->b(Lcoil/request/h;Ljava/lang/String;Landroidx/compose/ui/q;Landroidx/compose/ui/graphics/painter/b;Landroidx/compose/ui/i;Landroidx/compose/ui/layout/l;Landroidx/compose/runtime/k;II)V

    .line 244
    .line 245
    .line 246
    sget-object v3, Landroidx/compose/ui/d;->v:Landroidx/compose/ui/i;

    .line 247
    .line 248
    sget-object v4, Landroidx/compose/foundation/layout/v;->a:Landroidx/compose/foundation/layout/v;

    .line 249
    .line 250
    invoke-virtual {v4, v14, v3}, Landroidx/compose/foundation/layout/v;->a(Landroidx/compose/ui/q;Landroidx/compose/ui/i;)Landroidx/compose/ui/q;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    invoke-static {v3, v0}, Landroidx/compose/foundation/layout/f2;->c(Landroidx/compose/ui/q;F)Landroidx/compose/ui/q;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    const/4 v4, 0x5

    .line 259
    int-to-float v4, v4

    .line 260
    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/d;->w(Landroidx/compose/ui/q;F)Landroidx/compose/ui/q;

    .line 261
    .line 262
    .line 263
    move-result-object v3

    .line 264
    sget-object v4, Landroidx/compose/foundation/layout/i;->d:Landroidx/compose/foundation/layout/c;

    .line 265
    .line 266
    sget-object v5, Landroidx/compose/ui/d;->B:Landroidx/compose/ui/g;

    .line 267
    .line 268
    const/16 v6, 0x36

    .line 269
    .line 270
    invoke-static {v4, v5, v9, v6}, Landroidx/compose/foundation/layout/z;->a(Landroidx/compose/foundation/layout/h;Landroidx/compose/ui/g;Landroidx/compose/runtime/k;I)Landroidx/compose/foundation/layout/b0;

    .line 271
    .line 272
    .line 273
    move-result-object v4

    .line 274
    iget-wide v5, v9, Landroidx/compose/runtime/p;->T:J

    .line 275
    .line 276
    ushr-long v7, v5, v16

    .line 277
    .line 278
    xor-long/2addr v5, v7

    .line 279
    long-to-int v5, v5

    .line 280
    invoke-virtual {v9}, Landroidx/compose/runtime/p;->l()Landroidx/compose/runtime/m1;

    .line 281
    .line 282
    .line 283
    move-result-object v6

    .line 284
    invoke-static {v9, v3}, Landroidx/compose/ui/a;->c(Landroidx/compose/runtime/k;Landroidx/compose/ui/q;)Landroidx/compose/ui/q;

    .line 285
    .line 286
    .line 287
    move-result-object v3

    .line 288
    invoke-virtual {v9}, Landroidx/compose/runtime/p;->g0()V

    .line 289
    .line 290
    .line 291
    iget-boolean v7, v9, Landroidx/compose/runtime/p;->S:Z

    .line 292
    .line 293
    if-eqz v7, :cond_6

    .line 294
    .line 295
    invoke-virtual {v9, v15}, Landroidx/compose/runtime/p;->k(Lrb/a;)V

    .line 296
    .line 297
    .line 298
    goto :goto_5

    .line 299
    :cond_6
    invoke-virtual {v9}, Landroidx/compose/runtime/p;->q0()V

    .line 300
    .line 301
    .line 302
    :goto_5
    invoke-static {v9, v4, v12}, Landroidx/compose/runtime/q;->L(Landroidx/compose/runtime/k;Ljava/lang/Object;Lrb/n;)V

    .line 303
    .line 304
    .line 305
    invoke-static {v9, v6, v13}, Landroidx/compose/runtime/q;->L(Landroidx/compose/runtime/k;Ljava/lang/Object;Lrb/n;)V

    .line 306
    .line 307
    .line 308
    invoke-static {v5, v9, v1, v9, v2}, Lv/g;->d(ILandroidx/compose/runtime/p;Lrb/n;Landroidx/compose/runtime/p;Lrb/k;)V

    .line 309
    .line 310
    .line 311
    move-object/from16 v13, v19

    .line 312
    .line 313
    invoke-static {v9, v3, v13}, Landroidx/compose/runtime/q;->L(Landroidx/compose/runtime/k;Ljava/lang/Object;Lrb/n;)V

    .line 314
    .line 315
    .line 316
    sget-wide v1, Landroidx/compose/ui/graphics/x;->c:J

    .line 317
    .line 318
    const v3, 0x3f19999a    # 0.6f

    .line 319
    .line 320
    .line 321
    invoke-static {v1, v2, v3}, Landroidx/compose/ui/graphics/x;->b(JF)J

    .line 322
    .line 323
    .line 324
    move-result-wide v1

    .line 325
    sget-object v3, Lwa/a;->a:Ly/f;

    .line 326
    .line 327
    invoke-static {v14, v1, v2, v3}, Landroidx/compose/foundation/i;->f(Landroidx/compose/ui/q;JLandroidx/compose/ui/graphics/x0;)Landroidx/compose/ui/q;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    const/4 v2, 0x2

    .line 332
    int-to-float v2, v2

    .line 333
    invoke-static {v1, v2, v2}, Landroidx/compose/foundation/layout/d;->x(Landroidx/compose/ui/q;FF)Landroidx/compose/ui/q;

    .line 334
    .line 335
    .line 336
    move-result-object v4

    .line 337
    sget-wide v5, Landroidx/compose/ui/graphics/x;->e:J

    .line 338
    .line 339
    move-object/from16 v1, p0

    .line 340
    .line 341
    iget-object v3, v1, Lqa/t;->h:Ljava/lang/String;

    .line 342
    .line 343
    sget-object v7, Landroidx/compose/material3/e6;->a:Landroidx/compose/runtime/b3;

    .line 344
    .line 345
    invoke-virtual {v9, v7}, Landroidx/compose/runtime/p;->j(Landroidx/compose/runtime/r1;)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v7

    .line 349
    check-cast v7, Landroidx/compose/material3/c6;

    .line 350
    .line 351
    iget-object v7, v7, Landroidx/compose/material3/c6;->n:Landroidx/compose/ui/text/r0;

    .line 352
    .line 353
    const/16 v26, 0xc00

    .line 354
    .line 355
    const v27, 0xdff8

    .line 356
    .line 357
    .line 358
    move-object/from16 v23, v7

    .line 359
    .line 360
    const-wide/16 v7, 0x0

    .line 361
    .line 362
    move-object/from16 v24, v9

    .line 363
    .line 364
    const/4 v9, 0x0

    .line 365
    const/4 v10, 0x0

    .line 366
    const/4 v11, 0x0

    .line 367
    const-wide/16 v12, 0x0

    .line 368
    .line 369
    move-object v15, v14

    .line 370
    const/4 v14, 0x0

    .line 371
    move-object/from16 v16, v15

    .line 372
    .line 373
    const/4 v15, 0x0

    .line 374
    move-object/from16 v19, v16

    .line 375
    .line 376
    const-wide/16 v16, 0x0

    .line 377
    .line 378
    const/16 v20, 0x1

    .line 379
    .line 380
    const/16 v18, 0x0

    .line 381
    .line 382
    move-object/from16 v21, v19

    .line 383
    .line 384
    const/16 v19, 0x0

    .line 385
    .line 386
    move/from16 v22, v20

    .line 387
    .line 388
    const/16 v20, 0x1

    .line 389
    .line 390
    move-object/from16 v25, v21

    .line 391
    .line 392
    const/16 v21, 0x0

    .line 393
    .line 394
    move/from16 v28, v22

    .line 395
    .line 396
    const/16 v22, 0x0

    .line 397
    .line 398
    move-object/from16 v29, v25

    .line 399
    .line 400
    const/16 v25, 0x180

    .line 401
    .line 402
    move-object/from16 v0, v29

    .line 403
    .line 404
    invoke-static/range {v3 .. v27}, Landroidx/tv/material3/o2;->b(Ljava/lang/String;Landroidx/compose/ui/q;JJLandroidx/compose/ui/text/font/t;Landroidx/compose/ui/text/font/x;Landroidx/compose/ui/text/font/m;JLo1/k;Lo1/j;JIZIILrb/k;Landroidx/compose/ui/text/r0;Landroidx/compose/runtime/k;III)V

    .line 405
    .line 406
    .line 407
    move-object/from16 v9, v24

    .line 408
    .line 409
    invoke-static {v0, v2}, Landroidx/compose/foundation/layout/d;->w(Landroidx/compose/ui/q;F)Landroidx/compose/ui/q;

    .line 410
    .line 411
    .line 412
    move-result-object v2

    .line 413
    invoke-static {v9, v2}, Landroidx/compose/foundation/layout/d;->g(Landroidx/compose/runtime/k;Landroidx/compose/ui/q;)V

    .line 414
    .line 415
    .line 416
    const/high16 v2, 0x3f800000    # 1.0f

    .line 417
    .line 418
    invoke-static {v0, v2}, Landroidx/compose/foundation/layout/f2;->c(Landroidx/compose/ui/q;F)Landroidx/compose/ui/q;

    .line 419
    .line 420
    .line 421
    move-result-object v3

    .line 422
    iget v4, v1, Lqa/t;->e:F

    .line 423
    .line 424
    const/4 v10, 0x6

    .line 425
    const-wide/16 v5, 0x0

    .line 426
    .line 427
    invoke-static/range {v3 .. v10}, Lcom/supertws/dubokutv/presentation/screens/history/i;->l(Landroidx/compose/ui/q;FJJLandroidx/compose/runtime/k;I)V

    .line 428
    .line 429
    .line 430
    const/4 v0, 0x1

    .line 431
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/p;->p(Z)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/p;->p(Z)V

    .line 435
    .line 436
    .line 437
    :goto_6
    invoke-virtual {v9}, Landroidx/compose/runtime/p;->t()Landroidx/compose/runtime/s1;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    if-eqz v0, :cond_7

    .line 442
    .line 443
    new-instance v2, Landroidx/compose/foundation/layout/w;

    .line 444
    .line 445
    const/16 v3, 0xf

    .line 446
    .line 447
    move-object/from16 v4, p1

    .line 448
    .line 449
    move/from16 v5, p3

    .line 450
    .line 451
    invoke-direct {v2, v1, v5, v3, v4}, Landroidx/compose/foundation/layout/w;-><init>(Ljava/lang/Object;IILjava/lang/Object;)V

    .line 452
    .line 453
    .line 454
    iput-object v2, v0, Landroidx/compose/runtime/s1;->d:Lrb/n;

    .line 455
    .line 456
    :cond_7
    return-void
.end method

.method public static final j(Landroidx/compose/ui/q;Lqa/t;Landroidx/compose/runtime/k;I)V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v12, p2

    .line 6
    .line 7
    check-cast v12, Landroidx/compose/runtime/p;

    .line 8
    .line 9
    const v3, 0x2dee21a8

    .line 10
    .line 11
    .line 12
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/p;->e0(I)Landroidx/compose/runtime/p;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/p;->f(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const/16 v13, 0x20

    .line 20
    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    move v3, v13

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/16 v3, 0x10

    .line 26
    .line 27
    :goto_0
    or-int v25, p3, v3

    .line 28
    .line 29
    and-int/lit8 v3, v25, 0x13

    .line 30
    .line 31
    const/16 v4, 0x12

    .line 32
    .line 33
    const/16 v14, 0xe

    .line 34
    .line 35
    if-ne v3, v4, :cond_2

    .line 36
    .line 37
    invoke-virtual {v12}, Landroidx/compose/runtime/p;->F()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-nez v3, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {v12}, Landroidx/compose/runtime/p;->W()V

    .line 45
    .line 46
    .line 47
    goto/16 :goto_6

    .line 48
    .line 49
    :cond_2
    :goto_1
    sget-object v3, Landroidx/compose/ui/d;->d:Landroidx/compose/ui/i;

    .line 50
    .line 51
    const/4 v15, 0x0

    .line 52
    invoke-static {v3, v15}, Landroidx/compose/foundation/layout/q;->d(Landroidx/compose/ui/i;Z)Landroidx/compose/ui/layout/t0;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    iget-wide v4, v12, Landroidx/compose/runtime/p;->T:J

    .line 57
    .line 58
    ushr-long v6, v4, v13

    .line 59
    .line 60
    xor-long/2addr v4, v6

    .line 61
    long-to-int v4, v4

    .line 62
    invoke-virtual {v12}, Landroidx/compose/runtime/p;->l()Landroidx/compose/runtime/m1;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-static {v12, v0}, Landroidx/compose/ui/a;->c(Landroidx/compose/runtime/k;Landroidx/compose/ui/q;)Landroidx/compose/ui/q;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    sget-object v7, Landroidx/compose/ui/node/g;->h:Landroidx/compose/ui/node/f;

    .line 71
    .line 72
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    sget-object v7, Landroidx/compose/ui/node/f;->b:Lrb/a;

    .line 76
    .line 77
    invoke-virtual {v12}, Landroidx/compose/runtime/p;->g0()V

    .line 78
    .line 79
    .line 80
    iget-boolean v8, v12, Landroidx/compose/runtime/p;->S:Z

    .line 81
    .line 82
    if-eqz v8, :cond_3

    .line 83
    .line 84
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/p;->k(Lrb/a;)V

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_3
    invoke-virtual {v12}, Landroidx/compose/runtime/p;->q0()V

    .line 89
    .line 90
    .line 91
    :goto_2
    sget-object v8, Landroidx/compose/ui/node/f;->f:Lrb/n;

    .line 92
    .line 93
    invoke-static {v12, v3, v8}, Landroidx/compose/runtime/q;->L(Landroidx/compose/runtime/k;Ljava/lang/Object;Lrb/n;)V

    .line 94
    .line 95
    .line 96
    sget-object v3, Landroidx/compose/ui/node/f;->e:Lrb/n;

    .line 97
    .line 98
    invoke-static {v12, v5, v3}, Landroidx/compose/runtime/q;->L(Landroidx/compose/runtime/k;Ljava/lang/Object;Lrb/n;)V

    .line 99
    .line 100
    .line 101
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    sget-object v5, Landroidx/compose/ui/node/f;->g:Lrb/n;

    .line 106
    .line 107
    invoke-static {v12, v4, v5}, Landroidx/compose/runtime/q;->v(Landroidx/compose/runtime/k;Ljava/lang/Integer;Lrb/n;)V

    .line 108
    .line 109
    .line 110
    sget-object v4, Landroidx/compose/ui/node/f;->h:Lrb/k;

    .line 111
    .line 112
    invoke-static {v12, v4}, Landroidx/compose/runtime/q;->H(Landroidx/compose/runtime/k;Lrb/k;)V

    .line 113
    .line 114
    .line 115
    sget-object v9, Landroidx/compose/ui/node/f;->d:Lrb/n;

    .line 116
    .line 117
    invoke-static {v12, v6, v9}, Landroidx/compose/runtime/q;->L(Landroidx/compose/runtime/k;Ljava/lang/Object;Lrb/n;)V

    .line 118
    .line 119
    .line 120
    move-object v6, v5

    .line 121
    sget-object v5, Landroidx/compose/foundation/layout/f2;->c:Landroidx/compose/foundation/layout/j0;

    .line 122
    .line 123
    new-instance v10, Lcoil/request/g;

    .line 124
    .line 125
    sget-object v11, Landroidx/compose/ui/platform/h0;->b:Landroidx/compose/runtime/b3;

    .line 126
    .line 127
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/p;->j(Landroidx/compose/runtime/r1;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v11

    .line 131
    check-cast v11, Landroid/content/Context;

    .line 132
    .line 133
    invoke-direct {v10, v11}, Lcoil/request/g;-><init>(Landroid/content/Context;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v10}, Lcoil/request/g;->b()V

    .line 137
    .line 138
    .line 139
    iget-object v11, v1, Lqa/t;->m:Ljava/lang/String;

    .line 140
    .line 141
    move/from16 p2, v13

    .line 142
    .line 143
    const-string v13, "http"

    .line 144
    .line 145
    invoke-static {v11, v13, v15}, Lkotlin/text/y;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 146
    .line 147
    .line 148
    move-result v13

    .line 149
    if-eqz v13, :cond_4

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_4
    sget-object v13, Lta/e;->a:Ljava/lang/String;

    .line 153
    .line 154
    const-string v13, "https://pic.dbokutv.com"

    .line 155
    .line 156
    invoke-static {v13, v11}, Lv/g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v11

    .line 160
    :goto_3
    iput-object v11, v10, Lcoil/request/g;->c:Ljava/lang/Object;

    .line 161
    .line 162
    invoke-virtual {v10}, Lcoil/request/g;->a()Lcoil/request/h;

    .line 163
    .line 164
    .line 165
    move-result-object v10

    .line 166
    iget-object v11, v1, Lqa/t;->c:Ljava/lang/String;

    .line 167
    .line 168
    const/4 v13, 0x1

    .line 169
    move/from16 v16, v15

    .line 170
    .line 171
    new-array v15, v13, [Ljava/lang/Object;

    .line 172
    .line 173
    aput-object v11, v15, v16

    .line 174
    .line 175
    const v11, 0x7f110053

    .line 176
    .line 177
    .line 178
    invoke-static {v11, v15, v12}, Ll8/t1;->B(I[Ljava/lang/Object;Landroidx/compose/runtime/k;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v11

    .line 182
    const v15, 0x7f0800d9

    .line 183
    .line 184
    .line 185
    move/from16 v17, v13

    .line 186
    .line 187
    const/4 v13, 0x6

    .line 188
    invoke-static {v15, v12, v13}, Lkotlin/reflect/x;->o(ILandroidx/compose/runtime/k;I)Landroidx/compose/ui/graphics/painter/b;

    .line 189
    .line 190
    .line 191
    move-result-object v13

    .line 192
    move-object v15, v3

    .line 193
    move-object v3, v10

    .line 194
    const v10, 0x8180

    .line 195
    .line 196
    .line 197
    move-object/from16 v18, v4

    .line 198
    .line 199
    move-object v4, v11

    .line 200
    const v11, 0xfbe8

    .line 201
    .line 202
    .line 203
    move-object/from16 v19, v7

    .line 204
    .line 205
    const/4 v7, 0x0

    .line 206
    move-object/from16 v20, v8

    .line 207
    .line 208
    sget-object v8, Landroidx/compose/ui/layout/k;->a:Landroidx/compose/ui/layout/z0;

    .line 209
    .line 210
    move-object/from16 v26, v6

    .line 211
    .line 212
    move-object/from16 v28, v9

    .line 213
    .line 214
    move-object v9, v12

    .line 215
    move-object v6, v13

    .line 216
    move-object/from16 v27, v18

    .line 217
    .line 218
    move-object/from16 v12, v19

    .line 219
    .line 220
    move-object/from16 v13, v20

    .line 221
    .line 222
    invoke-static/range {v3 .. v11}, Lcoil/compose/o;->b(Lcoil/request/h;Ljava/lang/String;Landroidx/compose/ui/q;Landroidx/compose/ui/graphics/painter/b;Landroidx/compose/ui/i;Landroidx/compose/ui/layout/l;Landroidx/compose/runtime/k;II)V

    .line 223
    .line 224
    .line 225
    sget-object v3, Landroidx/compose/ui/d;->v:Landroidx/compose/ui/i;

    .line 226
    .line 227
    sget-object v4, Landroidx/compose/foundation/layout/v;->a:Landroidx/compose/foundation/layout/v;

    .line 228
    .line 229
    sget-object v5, Landroidx/compose/ui/n;->a:Landroidx/compose/ui/n;

    .line 230
    .line 231
    invoke-virtual {v4, v5, v3}, Landroidx/compose/foundation/layout/v;->a(Landroidx/compose/ui/q;Landroidx/compose/ui/i;)Landroidx/compose/ui/q;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    const/high16 v4, 0x3f800000    # 1.0f

    .line 236
    .line 237
    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/f2;->c(Landroidx/compose/ui/q;F)Landroidx/compose/ui/q;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    const/4 v6, 0x5

    .line 242
    int-to-float v6, v6

    .line 243
    invoke-static {v3, v6}, Landroidx/compose/foundation/layout/d;->w(Landroidx/compose/ui/q;F)Landroidx/compose/ui/q;

    .line 244
    .line 245
    .line 246
    move-result-object v3

    .line 247
    sget-wide v6, Landroidx/compose/ui/graphics/x;->h:J

    .line 248
    .line 249
    new-instance v8, Landroidx/compose/ui/graphics/x;

    .line 250
    .line 251
    invoke-direct {v8, v6, v7}, Landroidx/compose/ui/graphics/x;-><init>(J)V

    .line 252
    .line 253
    .line 254
    sget-wide v6, Landroidx/compose/ui/graphics/x;->c:J

    .line 255
    .line 256
    new-instance v10, Landroidx/compose/ui/graphics/x;

    .line 257
    .line 258
    invoke-direct {v10, v6, v7}, Landroidx/compose/ui/graphics/x;-><init>(J)V

    .line 259
    .line 260
    .line 261
    const/4 v11, 0x2

    .line 262
    new-array v4, v11, [Landroidx/compose/ui/graphics/x;

    .line 263
    .line 264
    aput-object v8, v4, v16

    .line 265
    .line 266
    aput-object v10, v4, v17

    .line 267
    .line 268
    invoke-static {v4}, Landroidx/work/d0;->O([Ljava/lang/Object;)Ljava/util/List;

    .line 269
    .line 270
    .line 271
    move-result-object v4

    .line 272
    invoke-static {v14, v4}, Li9/b;->v(ILjava/util/List;)Landroidx/compose/ui/graphics/k0;

    .line 273
    .line 274
    .line 275
    move-result-object v4

    .line 276
    invoke-static {v3, v4, v11}, Landroidx/compose/foundation/i;->e(Landroidx/compose/ui/q;Landroidx/compose/ui/graphics/k0;I)Landroidx/compose/ui/q;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    sget-object v4, Landroidx/compose/foundation/layout/i;->d:Landroidx/compose/foundation/layout/c;

    .line 281
    .line 282
    sget-object v8, Landroidx/compose/ui/d;->B:Landroidx/compose/ui/g;

    .line 283
    .line 284
    const/16 v10, 0x36

    .line 285
    .line 286
    invoke-static {v4, v8, v9, v10}, Landroidx/compose/foundation/layout/z;->a(Landroidx/compose/foundation/layout/h;Landroidx/compose/ui/g;Landroidx/compose/runtime/k;I)Landroidx/compose/foundation/layout/b0;

    .line 287
    .line 288
    .line 289
    move-result-object v4

    .line 290
    move-object v10, v15

    .line 291
    iget-wide v14, v9, Landroidx/compose/runtime/p;->T:J

    .line 292
    .line 293
    ushr-long v19, v14, p2

    .line 294
    .line 295
    xor-long v14, v14, v19

    .line 296
    .line 297
    long-to-int v14, v14

    .line 298
    invoke-virtual {v9}, Landroidx/compose/runtime/p;->l()Landroidx/compose/runtime/m1;

    .line 299
    .line 300
    .line 301
    move-result-object v15

    .line 302
    invoke-static {v9, v3}, Landroidx/compose/ui/a;->c(Landroidx/compose/runtime/k;Landroidx/compose/ui/q;)Landroidx/compose/ui/q;

    .line 303
    .line 304
    .line 305
    move-result-object v3

    .line 306
    invoke-virtual {v9}, Landroidx/compose/runtime/p;->g0()V

    .line 307
    .line 308
    .line 309
    iget-boolean v8, v9, Landroidx/compose/runtime/p;->S:Z

    .line 310
    .line 311
    if-eqz v8, :cond_5

    .line 312
    .line 313
    invoke-virtual {v9, v12}, Landroidx/compose/runtime/p;->k(Lrb/a;)V

    .line 314
    .line 315
    .line 316
    goto :goto_4

    .line 317
    :cond_5
    invoke-virtual {v9}, Landroidx/compose/runtime/p;->q0()V

    .line 318
    .line 319
    .line 320
    :goto_4
    invoke-static {v9, v4, v13}, Landroidx/compose/runtime/q;->L(Landroidx/compose/runtime/k;Ljava/lang/Object;Lrb/n;)V

    .line 321
    .line 322
    .line 323
    invoke-static {v9, v15, v10}, Landroidx/compose/runtime/q;->L(Landroidx/compose/runtime/k;Ljava/lang/Object;Lrb/n;)V

    .line 324
    .line 325
    .line 326
    move-object/from16 v4, v26

    .line 327
    .line 328
    move-object/from16 v8, v27

    .line 329
    .line 330
    invoke-static {v14, v9, v4, v9, v8}, Lv/g;->d(ILandroidx/compose/runtime/p;Lrb/n;Landroidx/compose/runtime/p;Lrb/k;)V

    .line 331
    .line 332
    .line 333
    move-object/from16 v4, v28

    .line 334
    .line 335
    invoke-static {v9, v3, v4}, Landroidx/compose/runtime/q;->L(Landroidx/compose/runtime/k;Ljava/lang/Object;Lrb/n;)V

    .line 336
    .line 337
    .line 338
    const v3, 0x3f19999a    # 0.6f

    .line 339
    .line 340
    .line 341
    invoke-static {v6, v7, v3}, Landroidx/compose/ui/graphics/x;->b(JF)J

    .line 342
    .line 343
    .line 344
    move-result-wide v3

    .line 345
    sget-object v6, Lwa/a;->a:Ly/f;

    .line 346
    .line 347
    invoke-static {v5, v3, v4, v6}, Landroidx/compose/foundation/i;->f(Landroidx/compose/ui/q;JLandroidx/compose/ui/graphics/x0;)Landroidx/compose/ui/q;

    .line 348
    .line 349
    .line 350
    move-result-object v3

    .line 351
    int-to-float v4, v11

    .line 352
    invoke-static {v3, v4, v4}, Landroidx/compose/foundation/layout/d;->x(Landroidx/compose/ui/q;FF)Landroidx/compose/ui/q;

    .line 353
    .line 354
    .line 355
    move-result-object v4

    .line 356
    move-object v3, v5

    .line 357
    sget-wide v5, Landroidx/compose/ui/graphics/x;->e:J

    .line 358
    .line 359
    move-object v7, v3

    .line 360
    iget-object v3, v1, Lqa/t;->h:Ljava/lang/String;

    .line 361
    .line 362
    sget-object v8, Landroidx/compose/material3/e6;->a:Landroidx/compose/runtime/b3;

    .line 363
    .line 364
    invoke-virtual {v9, v8}, Landroidx/compose/runtime/p;->j(Landroidx/compose/runtime/r1;)Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v8

    .line 368
    check-cast v8, Landroidx/compose/material3/c6;

    .line 369
    .line 370
    iget-object v8, v8, Landroidx/compose/material3/c6;->o:Landroidx/compose/ui/text/r0;

    .line 371
    .line 372
    const/16 v23, 0x6000

    .line 373
    .line 374
    const v24, 0x1bff8

    .line 375
    .line 376
    .line 377
    move-object v10, v7

    .line 378
    move-object/from16 v20, v8

    .line 379
    .line 380
    const-wide/16 v7, 0x0

    .line 381
    .line 382
    move-object v12, v9

    .line 383
    const/4 v9, 0x0

    .line 384
    move-object v11, v10

    .line 385
    const/4 v10, 0x0

    .line 386
    move-object v13, v11

    .line 387
    move-object/from16 v21, v12

    .line 388
    .line 389
    const-wide/16 v11, 0x0

    .line 390
    .line 391
    move-object v14, v13

    .line 392
    const/4 v13, 0x0

    .line 393
    move-object/from16 v22, v14

    .line 394
    .line 395
    const-wide/16 v14, 0x0

    .line 396
    .line 397
    move/from16 v26, v16

    .line 398
    .line 399
    const/16 v16, 0x0

    .line 400
    .line 401
    move/from16 v27, v17

    .line 402
    .line 403
    const/16 v17, 0x0

    .line 404
    .line 405
    const/high16 v28, 0x3f800000    # 1.0f

    .line 406
    .line 407
    const/16 v18, 0x1

    .line 408
    .line 409
    const/16 v29, 0xe

    .line 410
    .line 411
    const/16 v19, 0x0

    .line 412
    .line 413
    move-object/from16 v30, v22

    .line 414
    .line 415
    const/16 v22, 0x180

    .line 416
    .line 417
    move/from16 v2, v27

    .line 418
    .line 419
    move-object/from16 v0, v30

    .line 420
    .line 421
    invoke-static/range {v3 .. v24}, Landroidx/compose/material3/r5;->b(Ljava/lang/String;Landroidx/compose/ui/q;JJLandroidx/compose/ui/text/font/x;Landroidx/compose/ui/text/font/m;JLo1/j;JIZIILandroidx/compose/ui/text/r0;Landroidx/compose/runtime/k;III)V

    .line 422
    .line 423
    .line 424
    move-object/from16 v12, v21

    .line 425
    .line 426
    int-to-float v3, v2

    .line 427
    invoke-static {v0, v3}, Landroidx/compose/foundation/layout/d;->w(Landroidx/compose/ui/q;F)Landroidx/compose/ui/q;

    .line 428
    .line 429
    .line 430
    move-result-object v3

    .line 431
    invoke-static {v12, v3}, Landroidx/compose/foundation/layout/d;->g(Landroidx/compose/runtime/k;Landroidx/compose/ui/q;)V

    .line 432
    .line 433
    .line 434
    const v3, 0x584c41ea

    .line 435
    .line 436
    .line 437
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/p;->c0(I)V

    .line 438
    .line 439
    .line 440
    and-int/lit8 v3, v25, 0x70

    .line 441
    .line 442
    const/16 v4, 0x20

    .line 443
    .line 444
    if-ne v3, v4, :cond_6

    .line 445
    .line 446
    move v15, v2

    .line 447
    goto :goto_5

    .line 448
    :cond_6
    const/4 v15, 0x0

    .line 449
    :goto_5
    invoke-virtual {v12}, Landroidx/compose/runtime/p;->Q()Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object v3

    .line 453
    const/16 v4, 0x13

    .line 454
    .line 455
    sget-object v5, Landroidx/compose/runtime/j;->a:Landroidx/compose/runtime/f;

    .line 456
    .line 457
    if-nez v15, :cond_7

    .line 458
    .line 459
    if-ne v3, v5, :cond_8

    .line 460
    .line 461
    :cond_7
    new-instance v3, Lac/e;

    .line 462
    .line 463
    invoke-direct {v3, v1, v4}, Lac/e;-><init>(Ljava/lang/Object;I)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/p;->n0(Ljava/lang/Object;)V

    .line 467
    .line 468
    .line 469
    :cond_8
    check-cast v3, Lrb/a;

    .line 470
    .line 471
    const v6, 0x584c51ca

    .line 472
    .line 473
    .line 474
    const/4 v7, 0x0

    .line 475
    invoke-static {v12, v7, v6}, Lcom/google/common/util/concurrent/c0;->n(Landroidx/compose/runtime/p;ZI)Ljava/lang/Object;

    .line 476
    .line 477
    .line 478
    move-result-object v6

    .line 479
    if-ne v6, v5, :cond_9

    .line 480
    .line 481
    new-instance v6, Lcom/supertws/dubokutv/presentation/screens/dashboard/x;

    .line 482
    .line 483
    invoke-direct {v6, v4}, Lcom/supertws/dubokutv/presentation/screens/dashboard/x;-><init>(I)V

    .line 484
    .line 485
    .line 486
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/p;->n0(Ljava/lang/Object;)V

    .line 487
    .line 488
    .line 489
    :cond_9
    check-cast v6, Lrb/k;

    .line 490
    .line 491
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/p;->p(Z)V

    .line 492
    .line 493
    .line 494
    invoke-static {v0, v2, v6}, Landroidx/compose/ui/semantics/r;->a(Landroidx/compose/ui/q;ZLrb/k;)Landroidx/compose/ui/q;

    .line 495
    .line 496
    .line 497
    move-result-object v0

    .line 498
    const/high16 v4, 0x3f800000    # 1.0f

    .line 499
    .line 500
    invoke-static {v0, v4}, Landroidx/compose/foundation/layout/f2;->c(Landroidx/compose/ui/q;F)Landroidx/compose/ui/q;

    .line 501
    .line 502
    .line 503
    move-result-object v4

    .line 504
    const/4 v11, 0x0

    .line 505
    const/4 v13, 0x0

    .line 506
    const-wide/16 v5, 0x0

    .line 507
    .line 508
    const-wide/16 v7, 0x0

    .line 509
    .line 510
    const/4 v9, 0x1

    .line 511
    const/4 v10, 0x0

    .line 512
    invoke-static/range {v3 .. v13}, Landroidx/compose/material3/s3;->b(Lrb/a;Landroidx/compose/ui/q;JJIFLrb/k;Landroidx/compose/runtime/k;I)V

    .line 513
    .line 514
    .line 515
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/p;->p(Z)V

    .line 516
    .line 517
    .line 518
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/p;->p(Z)V

    .line 519
    .line 520
    .line 521
    :goto_6
    invoke-virtual {v12}, Landroidx/compose/runtime/p;->t()Landroidx/compose/runtime/s1;

    .line 522
    .line 523
    .line 524
    move-result-object v0

    .line 525
    if-eqz v0, :cond_a

    .line 526
    .line 527
    new-instance v2, Landroidx/compose/foundation/layout/w;

    .line 528
    .line 529
    const/16 v8, 0xe

    .line 530
    .line 531
    move-object/from16 v3, p0

    .line 532
    .line 533
    move/from16 v4, p3

    .line 534
    .line 535
    invoke-direct {v2, v3, v4, v8, v1}, Landroidx/compose/foundation/layout/w;-><init>(Ljava/lang/Object;IILjava/lang/Object;)V

    .line 536
    .line 537
    .line 538
    iput-object v2, v0, Landroidx/compose/runtime/s1;->d:Lrb/n;

    .line 539
    .line 540
    :cond_a
    return-void
.end method

.method public static final k(ILrb/k;Lrb/a;Lcom/supertws/dubokutv/presentation/screens/history/o;Landroidx/compose/runtime/k;I)V
    .locals 18

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    move-object/from16 v6, p2

    .line 4
    .line 5
    const-string v0, "onMovieClick"

    .line 6
    .line 7
    invoke-static {v2, v0}, Lkotlin/jvm/internal/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "onBackPressed"

    .line 11
    .line 12
    invoke-static {v6, v0}, Lkotlin/jvm/internal/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    move-object/from16 v11, p4

    .line 16
    .line 17
    check-cast v11, Landroidx/compose/runtime/p;

    .line 18
    .line 19
    const v0, -0x4feaf8f1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/p;->e0(I)Landroidx/compose/runtime/p;

    .line 23
    .line 24
    .line 25
    move/from16 v1, p0

    .line 26
    .line 27
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/p;->d(I)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    const/4 v0, 0x4

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v0, 0x2

    .line 36
    :goto_0
    or-int v0, p5, v0

    .line 37
    .line 38
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/p;->h(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    const/16 v3, 0x20

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const/16 v3, 0x10

    .line 48
    .line 49
    :goto_1
    or-int/2addr v0, v3

    .line 50
    invoke-virtual {v11, v6}, Landroidx/compose/runtime/p;->h(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_2

    .line 55
    .line 56
    const/16 v3, 0x100

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_2
    const/16 v3, 0x80

    .line 60
    .line 61
    :goto_2
    or-int/2addr v0, v3

    .line 62
    or-int/lit16 v0, v0, 0x400

    .line 63
    .line 64
    and-int/lit16 v3, v0, 0x493

    .line 65
    .line 66
    const/16 v4, 0x492

    .line 67
    .line 68
    if-ne v3, v4, :cond_4

    .line 69
    .line 70
    invoke-virtual {v11}, Landroidx/compose/runtime/p;->F()Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-nez v3, :cond_3

    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_3
    invoke-virtual {v11}, Landroidx/compose/runtime/p;->W()V

    .line 78
    .line 79
    .line 80
    move-object/from16 v4, p3

    .line 81
    .line 82
    goto/16 :goto_9

    .line 83
    .line 84
    :cond_4
    :goto_3
    invoke-virtual {v11}, Landroidx/compose/runtime/p;->Y()V

    .line 85
    .line 86
    .line 87
    and-int/lit8 v3, p5, 0x1

    .line 88
    .line 89
    if-eqz v3, :cond_6

    .line 90
    .line 91
    invoke-virtual {v11}, Landroidx/compose/runtime/p;->C()Z

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    if-eqz v3, :cond_5

    .line 96
    .line 97
    goto :goto_4

    .line 98
    :cond_5
    invoke-virtual {v11}, Landroidx/compose/runtime/p;->W()V

    .line 99
    .line 100
    .line 101
    and-int/lit16 v0, v0, -0x1c01

    .line 102
    .line 103
    move v3, v0

    .line 104
    move-object/from16 v0, p3

    .line 105
    .line 106
    goto :goto_6

    .line 107
    :cond_6
    :goto_4
    invoke-static {v11}, Lz2/a;->a(Landroidx/compose/runtime/k;)Landroidx/lifecycle/r1;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    if-eqz v3, :cond_c

    .line 112
    .line 113
    invoke-static {v3, v11}, Landroidx/window/area/f;->Y(Landroidx/lifecycle/r1;Landroidx/compose/runtime/k;)Lfb/f;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    instance-of v5, v3, Landroidx/lifecycle/q;

    .line 118
    .line 119
    if-eqz v5, :cond_7

    .line 120
    .line 121
    move-object v5, v3

    .line 122
    check-cast v5, Landroidx/lifecycle/q;

    .line 123
    .line 124
    invoke-interface {v5}, Landroidx/lifecycle/q;->getDefaultViewModelCreationExtras()Ly2/c;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    goto :goto_5

    .line 129
    :cond_7
    sget-object v5, Ly2/a;->b:Ly2/a;

    .line 130
    .line 131
    :goto_5
    const-class v7, Lcom/supertws/dubokutv/presentation/screens/history/o;

    .line 132
    .line 133
    invoke-static {v7}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/b;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    invoke-static {v7, v3, v4, v5, v11}, Ll8/t1;->G(Lkotlin/jvm/internal/b;Landroidx/lifecycle/r1;Landroidx/lifecycle/o1;Ly2/c;Landroidx/compose/runtime/k;)Landroidx/lifecycle/m1;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    check-cast v3, Lcom/supertws/dubokutv/presentation/screens/history/o;

    .line 142
    .line 143
    and-int/lit16 v0, v0, -0x1c01

    .line 144
    .line 145
    move-object/from16 v17, v3

    .line 146
    .line 147
    move v3, v0

    .line 148
    move-object/from16 v0, v17

    .line 149
    .line 150
    :goto_6
    invoke-virtual {v11}, Landroidx/compose/runtime/p;->q()V

    invoke-static {}, Lcom/supertws/dubokutv/LanSyncManager;->requestSyncDebounced()V

    sget-object v4, Lcom/supertws/dubokutv/LanSyncManager;->sSyncVersionFlow:Lkotlinx/coroutines/flow/r2;
    invoke-static {v4, v11}, Landroidx/lifecycle/compose/b;->c(Lkotlinx/coroutines/flow/q2;Landroidx/compose/runtime/k;)Landroidx/compose/runtime/b1;
    move-result-object v4
    invoke-interface {v4}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    iget-object v4, v0, Lcom/supertws/dubokutv/presentation/screens/history/o;->c:Ljava/lang/Object;

    .line 154
    .line 155
    invoke-static {v4, v11}, Landroidx/lifecycle/compose/b;->c(Lkotlinx/coroutines/flow/q2;Landroidx/compose/runtime/k;)Landroidx/compose/runtime/b1;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    shr-int/lit8 v5, v3, 0x3

    .line 160
    .line 161
    and-int/lit8 v5, v5, 0x70

    .line 162
    .line 163
    const/4 v14, 0x0

    .line 164
    const/4 v7, 0x1

    .line 165
    invoke-static {v14, v6, v11, v5, v7}, Lmc/d;->a(ZLrb/a;Landroidx/compose/runtime/k;II)V

    .line 166
    .line 167
    .line 168
    invoke-interface {v4}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    check-cast v4, Lcom/supertws/dubokutv/presentation/screens/history/m;

    .line 173
    .line 174
    instance-of v5, v4, Lcom/supertws/dubokutv/presentation/screens/history/l;

    .line 175
    .line 176
    if-eqz v5, :cond_8

    .line 177
    .line 178
    const v3, 0x1340b100

    .line 179
    .line 180
    .line 181
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/p;->c0(I)V

    .line 182
    .line 183
    .line 184
    const/4 v12, 0x0

    .line 185
    const/4 v13, 0x7

    .line 186
    const-wide/16 v7, 0x0

    .line 187
    .line 188
    const/4 v9, 0x0

    .line 189
    const/4 v10, 0x0

    .line 190
    invoke-static/range {v7 .. v13}, Lcom/supertws/dubokutv/presentation/common/j;->c(JFFLandroidx/compose/runtime/k;II)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v11, v14}, Landroidx/compose/runtime/p;->p(Z)V

    .line 194
    .line 195
    .line 196
    :goto_7
    move-object v7, v0

    .line 197
    goto :goto_8

    .line 198
    :cond_8
    instance-of v5, v4, Lcom/supertws/dubokutv/presentation/screens/history/k;

    .line 199
    .line 200
    if-eqz v5, :cond_9

    .line 201
    .line 202
    const v3, 0x1341dd8e

    .line 203
    .line 204
    .line 205
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/p;->c0(I)V

    .line 206
    .line 207
    .line 208
    check-cast v4, Lcom/supertws/dubokutv/presentation/screens/history/k;

    .line 209
    .line 210
    iget-object v12, v4, Lcom/supertws/dubokutv/presentation/screens/history/k;->a:Ljava/lang/String;

    .line 211
    .line 212
    const/16 v15, 0x30

    .line 213
    .line 214
    const/16 v16, 0x5d

    .line 215
    .line 216
    const/4 v7, 0x0

    .line 217
    const/4 v8, 0x1

    .line 218
    const/4 v9, 0x0

    .line 219
    const/4 v10, 0x0

    .line 220
    move-object v4, v11

    .line 221
    const/4 v11, 0x0

    .line 222
    const/4 v13, 0x0

    .line 223
    move v5, v14

    .line 224
    move-object v14, v4

    .line 225
    invoke-static/range {v7 .. v16}, Lcom/supertws/dubokutv/presentation/common/j;->b(Landroidx/compose/ui/q;ZFLjava/lang/String;Ljava/util/List;Ljava/lang/String;Lrb/a;Landroidx/compose/runtime/k;II)V

    .line 226
    .line 227
    .line 228
    move-object v11, v14

    .line 229
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/p;->p(Z)V

    .line 230
    .line 231
    .line 232
    goto :goto_7

    .line 233
    :cond_9
    move v5, v14

    .line 234
    instance-of v7, v4, Lcom/supertws/dubokutv/presentation/screens/history/j;

    .line 235
    .line 236
    if-eqz v7, :cond_b

    .line 237
    .line 238
    const v7, 0x13444361

    .line 239
    .line 240
    .line 241
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/p;->c0(I)V

    .line 242
    .line 243
    .line 244
    check-cast v4, Lcom/supertws/dubokutv/presentation/screens/history/j;

    .line 245
    .line 246
    iget-object v4, v4, Lcom/supertws/dubokutv/presentation/screens/history/j;->a:Ljava/util/ArrayList;

    .line 247
    .line 248
    shl-int/lit8 v7, v3, 0x3

    .line 249
    .line 250
    and-int/lit8 v7, v7, 0x70

    .line 251
    .line 252
    shl-int/lit8 v3, v3, 0x6

    .line 253
    .line 254
    and-int/lit16 v3, v3, 0x1c00

    .line 255
    .line 256
    or-int/2addr v3, v7

    .line 257
    move-object v7, v0

    .line 258
    const/4 v0, 0x0

    .line 259
    move v8, v5

    .line 260
    move v5, v3

    .line 261
    move-object v3, v2

    .line 262
    move-object v2, v4

    .line 263
    move-object v4, v11

    .line 264
    invoke-static/range {v0 .. v5}, Lcom/supertws/dubokutv/presentation/screens/history/i;->b(Landroidx/compose/ui/q;ILjava/util/ArrayList;Lrb/k;Landroidx/compose/runtime/k;I)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/p;->p(Z)V

    .line 268
    .line 269
    .line 270
    :goto_8
    move-object v4, v7

    .line 271
    :goto_9
    invoke-virtual {v11}, Landroidx/compose/runtime/p;->t()Landroidx/compose/runtime/s1;

    .line 272
    .line 273
    .line 274
    move-result-object v7

    .line 275
    if-eqz v7, :cond_a

    .line 276
    .line 277
    new-instance v0, Landroidx/compose/foundation/layout/q0;

    .line 278
    .line 279
    move/from16 v1, p0

    .line 280
    .line 281
    move-object/from16 v2, p1

    .line 282
    .line 283
    move/from16 v5, p5

    .line 284
    .line 285
    move-object v3, v6

    .line 286
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/layout/q0;-><init>(ILrb/k;Lrb/a;Lcom/supertws/dubokutv/presentation/screens/history/o;I)V

    .line 287
    .line 288
    .line 289
    iput-object v0, v7, Landroidx/compose/runtime/s1;->d:Lrb/n;

    .line 290
    .line 291
    :cond_a
    return-void

    .line 292
    :cond_b
    move v8, v5

    .line 293
    const v0, -0x6279d009

    .line 294
    .line 295
    .line 296
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/p;->c0(I)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/p;->p(Z)V

    .line 300
    .line 301
    .line 302
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 303
    .line 304
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 305
    .line 306
    .line 307
    throw v0

    .line 308
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 309
    .line 310
    const-string v1, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    .line 311
    .line 312
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    throw v0
.end method

.method public static final l(Landroidx/compose/ui/q;FJJLandroidx/compose/runtime/k;I)V
    .locals 14

    .line 1
    move-object/from16 v0, p6

    .line 2
    .line 3
    check-cast v0, Landroidx/compose/runtime/p;

    .line 4
    .line 5
    const v1, 0x640752cd

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/p;->e0(I)Landroidx/compose/runtime/p;

    .line 9
    .line 10
    .line 11
    move v4, p1

    .line 12
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/p;->c(F)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/16 v2, 0x20

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    move v1, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/16 v1, 0x10

    .line 23
    .line 24
    :goto_0
    or-int v1, p7, v1

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/p;->d(I)Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    const/16 v6, 0x100

    .line 32
    .line 33
    if-eqz v5, :cond_1

    .line 34
    .line 35
    move v5, v6

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const/16 v5, 0x80

    .line 38
    .line 39
    :goto_1
    or-int/2addr v1, v5

    .line 40
    or-int/lit16 v1, v1, 0x2400

    .line 41
    .line 42
    and-int/lit16 v5, v1, 0x2493

    .line 43
    .line 44
    const/16 v7, 0x2492

    .line 45
    .line 46
    if-ne v5, v7, :cond_3

    .line 47
    .line 48
    invoke-virtual {v0}, Landroidx/compose/runtime/p;->F()Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-nez v5, :cond_2

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_2
    invoke-virtual {v0}, Landroidx/compose/runtime/p;->W()V

    .line 56
    .line 57
    .line 58
    move-wide/from16 v5, p2

    .line 59
    .line 60
    move-wide/from16 v7, p4

    .line 61
    .line 62
    goto/16 :goto_9

    .line 63
    .line 64
    :cond_3
    :goto_2
    invoke-virtual {v0}, Landroidx/compose/runtime/p;->Y()V

    .line 65
    .line 66
    .line 67
    and-int/lit8 v5, p7, 0x1

    .line 68
    .line 69
    const v7, -0xfc01

    .line 70
    .line 71
    .line 72
    if-eqz v5, :cond_5

    .line 73
    .line 74
    invoke-virtual {v0}, Landroidx/compose/runtime/p;->C()Z

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    if-eqz v5, :cond_4

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_4
    invoke-virtual {v0}, Landroidx/compose/runtime/p;->W()V

    .line 82
    .line 83
    .line 84
    and-int/2addr v1, v7

    .line 85
    move-wide/from16 v8, p2

    .line 86
    .line 87
    move-wide/from16 v10, p4

    .line 88
    .line 89
    goto :goto_4

    .line 90
    :cond_5
    :goto_3
    sget-object v5, Landroidx/tv/material3/j0;->a:Landroidx/compose/runtime/b3;

    .line 91
    .line 92
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/p;->j(Landroidx/compose/runtime/r1;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v8

    .line 96
    check-cast v8, Landroidx/tv/material3/h0;

    .line 97
    .line 98
    invoke-virtual {v8}, Landroidx/tv/material3/h0;->l()J

    .line 99
    .line 100
    .line 101
    move-result-wide v8

    .line 102
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/p;->j(Landroidx/compose/runtime/r1;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    check-cast v5, Landroidx/tv/material3/h0;

    .line 107
    .line 108
    invoke-virtual {v5}, Landroidx/tv/material3/h0;->o()J

    .line 109
    .line 110
    .line 111
    move-result-wide v10

    .line 112
    const/high16 v5, 0x3f000000    # 0.5f

    .line 113
    .line 114
    invoke-static {v10, v11, v5}, Landroidx/compose/ui/graphics/x;->b(JF)J

    .line 115
    .line 116
    .line 117
    move-result-wide v10

    .line 118
    and-int/2addr v1, v7

    .line 119
    :goto_4
    invoke-virtual {v0}, Landroidx/compose/runtime/p;->q()V

    .line 120
    .line 121
    .line 122
    const/4 v5, 0x4

    .line 123
    int-to-float v5, v5

    .line 124
    invoke-static {p0, v5}, Landroidx/compose/foundation/layout/f2;->d(Landroidx/compose/ui/q;F)Landroidx/compose/ui/q;

    .line 125
    .line 126
    .line 127
    move-result-object v12

    .line 128
    const v5, -0x7d36e95e

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/p;->c0(I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v10, v11}, Landroidx/compose/runtime/p;->e(J)Z

    .line 135
    .line 136
    .line 137
    move-result v5

    .line 138
    and-int/lit16 v7, v1, 0x380

    .line 139
    .line 140
    xor-int/lit16 v7, v7, 0x180

    .line 141
    .line 142
    const/4 v13, 0x0

    .line 143
    if-le v7, v6, :cond_6

    .line 144
    .line 145
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/p;->d(I)Z

    .line 146
    .line 147
    .line 148
    move-result v7

    .line 149
    if-nez v7, :cond_7

    .line 150
    .line 151
    :cond_6
    and-int/lit16 v7, v1, 0x180

    .line 152
    .line 153
    if-ne v7, v6, :cond_8

    .line 154
    .line 155
    :cond_7
    move v6, v3

    .line 156
    goto :goto_5

    .line 157
    :cond_8
    move v6, v13

    .line 158
    :goto_5
    or-int/2addr v5, v6

    .line 159
    invoke-virtual {v0, v8, v9}, Landroidx/compose/runtime/p;->e(J)Z

    .line 160
    .line 161
    .line 162
    move-result v6

    .line 163
    or-int/2addr v5, v6

    .line 164
    and-int/lit8 v1, v1, 0x70

    .line 165
    .line 166
    if-ne v1, v2, :cond_9

    .line 167
    .line 168
    goto :goto_6

    .line 169
    :cond_9
    move v3, v13

    .line 170
    :goto_6
    or-int v1, v5, v3

    .line 171
    .line 172
    invoke-virtual {v0}, Landroidx/compose/runtime/p;->Q()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    if-nez v1, :cond_b

    .line 177
    .line 178
    sget-object v1, Landroidx/compose/runtime/j;->a:Landroidx/compose/runtime/f;

    .line 179
    .line 180
    if-ne v2, v1, :cond_a

    .line 181
    .line 182
    goto :goto_7

    .line 183
    :cond_a
    move-wide v5, v8

    .line 184
    move-wide v3, v10

    .line 185
    goto :goto_8

    .line 186
    :cond_b
    :goto_7
    new-instance v2, Lcom/supertws/dubokutv/presentation/screens/history/p;

    .line 187
    .line 188
    move v7, v4

    .line 189
    move-wide v5, v8

    .line 190
    move-wide v3, v10

    .line 191
    invoke-direct/range {v2 .. v7}, Lcom/supertws/dubokutv/presentation/screens/history/p;-><init>(JJF)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/p;->n0(Ljava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    :goto_8
    check-cast v2, Lrb/k;

    .line 198
    .line 199
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/p;->p(Z)V

    .line 200
    .line 201
    .line 202
    invoke-static {v12, v2, v0, v13}, Landroidx/compose/foundation/i;->b(Landroidx/compose/ui/q;Lrb/k;Landroidx/compose/runtime/k;I)V

    .line 203
    .line 204
    .line 205
    move-wide v7, v3

    .line 206
    :goto_9
    invoke-virtual {v0}, Landroidx/compose/runtime/p;->t()Landroidx/compose/runtime/s1;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    if-eqz v0, :cond_c

    .line 211
    .line 212
    new-instance v2, Lcom/supertws/dubokutv/presentation/screens/history/q;

    .line 213
    .line 214
    move-object v3, p0

    .line 215
    move v4, p1

    .line 216
    move/from16 v9, p7

    .line 217
    .line 218
    invoke-direct/range {v2 .. v9}, Lcom/supertws/dubokutv/presentation/screens/history/q;-><init>(Landroidx/compose/ui/q;FJJI)V

    .line 219
    .line 220
    .line 221
    iput-object v2, v0, Landroidx/compose/runtime/s1;->d:Lrb/n;

    .line 222
    .line 223
    :cond_c
    return-void
.end method
