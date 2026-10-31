.class public final Lcom/supertws/dubokutv/presentation/screens/moviedetail/i0;
.super Ljava/lang/Object;
.source "r8-map-id-8ba8015df6390efac2340e8bc72cbaa0af05ae8dc58e92835996b10ae6d6a13d"

# interfaces
.implements Lrb/o;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/compose/ui/focus/y;

.field public final synthetic c:Lrb/k;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/focus/y;Landroidx/compose/ui/focus/j;Lrb/k;Landroidx/compose/foundation/interaction/m;Landroidx/compose/runtime/b1;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/supertws/dubokutv/presentation/screens/moviedetail/i0;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/supertws/dubokutv/presentation/screens/moviedetail/i0;->b:Landroidx/compose/ui/focus/y;

    iput-object p2, p0, Lcom/supertws/dubokutv/presentation/screens/moviedetail/i0;->d:Ljava/lang/Object;

    iput-object p3, p0, Lcom/supertws/dubokutv/presentation/screens/moviedetail/i0;->c:Lrb/k;

    iput-object p4, p0, Lcom/supertws/dubokutv/presentation/screens/moviedetail/i0;->f:Ljava/lang/Object;

    iput-object p5, p0, Lcom/supertws/dubokutv/presentation/screens/moviedetail/i0;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroidx/compose/runtime/z0;Landroidx/compose/ui/focus/y;Ljava/lang/String;Lrb/k;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/supertws/dubokutv/presentation/screens/moviedetail/i0;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/supertws/dubokutv/presentation/screens/moviedetail/i0;->d:Ljava/lang/Object;

    iput-object p2, p0, Lcom/supertws/dubokutv/presentation/screens/moviedetail/i0;->f:Ljava/lang/Object;

    iput-object p3, p0, Lcom/supertws/dubokutv/presentation/screens/moviedetail/i0;->b:Landroidx/compose/ui/focus/y;

    iput-object p4, p0, Lcom/supertws/dubokutv/presentation/screens/moviedetail/i0;->g:Ljava/lang/Object;

    iput-object p5, p0, Lcom/supertws/dubokutv/presentation/screens/moviedetail/i0;->c:Lrb/k;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/supertws/dubokutv/presentation/screens/moviedetail/i0;->a:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    move-object/from16 v1, p1

    .line 9
    .line 10
    check-cast v1, Landroidx/compose/foundation/layout/u;

    .line 11
    .line 12
    move-object/from16 v2, p2

    .line 13
    .line 14
    check-cast v2, Landroidx/compose/runtime/k;

    .line 15
    .line 16
    move-object/from16 v3, p3

    .line 17
    .line 18
    check-cast v3, Ljava/lang/Number;

    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    iget-object v4, v0, Lcom/supertws/dubokutv/presentation/screens/moviedetail/i0;->d:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v4, Landroidx/compose/ui/focus/j;

    .line 27
    .line 28
    iget-object v5, v0, Lcom/supertws/dubokutv/presentation/screens/moviedetail/i0;->g:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v5, Landroidx/compose/runtime/b1;

    .line 31
    .line 32
    const-string v6, "$this$Surface"

    .line 33
    .line 34
    invoke-static {v1, v6}, Lkotlin/jvm/internal/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    and-int/lit8 v1, v3, 0x11

    .line 38
    .line 39
    const/16 v3, 0x10

    .line 40
    .line 41
    if-ne v1, v3, :cond_1

    .line 42
    .line 43
    move-object v1, v2

    .line 44
    check-cast v1, Landroidx/compose/runtime/p;

    .line 45
    .line 46
    invoke-virtual {v1}, Landroidx/compose/runtime/p;->F()Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-nez v3, :cond_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {v1}, Landroidx/compose/runtime/p;->W()V

    .line 54
    .line 55
    .line 56
    goto/16 :goto_1

    .line 57
    .line 58
    :cond_1
    :goto_0
    invoke-interface {v5}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    move-object v6, v1

    .line 63
    check-cast v6, Ljava/lang/String;

    .line 64
    .line 65
    sget-object v1, Landroidx/compose/ui/n;->a:Landroidx/compose/ui/n;

    .line 66
    .line 67
    const/high16 v3, 0x3f800000    # 1.0f

    .line 68
    .line 69
    invoke-static {v1, v3}, Landroidx/compose/foundation/layout/f2;->c(Landroidx/compose/ui/q;F)Landroidx/compose/ui/q;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    const/4 v3, 0x4

    .line 74
    int-to-float v3, v3

    .line 75
    const/16 v7, 0x8

    .line 76
    .line 77
    int-to-float v7, v7

    .line 78
    invoke-static {v1, v7, v3}, Landroidx/compose/foundation/layout/d;->x(Landroidx/compose/ui/q;FF)Landroidx/compose/ui/q;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    iget-object v3, v0, Lcom/supertws/dubokutv/presentation/screens/moviedetail/i0;->b:Landroidx/compose/ui/focus/y;

    .line 83
    .line 84
    invoke-static {v1, v3}, Landroidx/compose/ui/focus/m0;->k(Landroidx/compose/ui/q;Landroidx/compose/ui/focus/y;)Landroidx/compose/ui/q;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    check-cast v2, Landroidx/compose/runtime/p;

    .line 89
    .line 90
    const v3, 0x5d405bca

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/p;->c0(I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/p;->h(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    invoke-virtual {v2}, Landroidx/compose/runtime/p;->Q()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    sget-object v8, Landroidx/compose/runtime/j;->a:Landroidx/compose/runtime/f;

    .line 105
    .line 106
    if-nez v3, :cond_2

    .line 107
    .line 108
    if-ne v7, v8, :cond_3

    .line 109
    .line 110
    :cond_2
    new-instance v7, Landroidx/compose/foundation/text/s1;

    .line 111
    .line 112
    const/4 v3, 0x2

    .line 113
    invoke-direct {v7, v4, v3}, Landroidx/compose/foundation/text/s1;-><init>(Ljava/lang/Object;I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2, v7}, Landroidx/compose/runtime/p;->n0(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    :cond_3
    check-cast v7, Lrb/k;

    .line 120
    .line 121
    const/4 v3, 0x0

    .line 122
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/p;->p(Z)V

    .line 123
    .line 124
    .line 125
    invoke-static {v1, v7}, Lz0/c;->d(Landroidx/compose/ui/q;Lrb/k;)Landroidx/compose/ui/q;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    const/4 v4, 0x2

    .line 130
    new-array v4, v4, [Landroidx/compose/ui/graphics/x;

    .line 131
    .line 132
    sget-object v7, Landroidx/tv/material3/o0;->a:Landroidx/compose/runtime/b0;

    .line 133
    .line 134
    invoke-virtual {v2, v7}, Landroidx/compose/runtime/p;->j(Landroidx/compose/runtime/r1;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v9

    .line 138
    aput-object v9, v4, v3

    .line 139
    .line 140
    invoke-virtual {v2, v7}, Landroidx/compose/runtime/p;->j(Landroidx/compose/runtime/r1;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v7

    .line 144
    const/4 v9, 0x1

    .line 145
    aput-object v7, v4, v9

    .line 146
    .line 147
    invoke-static {v4}, Landroidx/work/d0;->O([Ljava/lang/Object;)Ljava/util/List;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    const/16 v7, 0xe

    .line 152
    .line 153
    invoke-static {v7, v4}, Li9/b;->v(ILjava/util/List;)Landroidx/compose/ui/graphics/k0;

    .line 154
    .line 155
    .line 156
    move-result-object v19

    .line 157
    new-instance v11, Landroidx/compose/foundation/text/e1;

    .line 158
    .line 159
    const/16 v4, 0x75

    .line 160
    .line 161
    invoke-direct {v11, v4}, Landroidx/compose/foundation/text/e1;-><init>(I)V

    .line 162
    .line 163
    .line 164
    const v4, 0x5d4103f7

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/p;->c0(I)V

    .line 168
    .line 169
    .line 170
    iget-object v4, v0, Lcom/supertws/dubokutv/presentation/screens/moviedetail/i0;->c:Lrb/k;

    .line 171
    .line 172
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/p;->f(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v7

    .line 176
    invoke-virtual {v2}, Landroidx/compose/runtime/p;->Q()Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v9

    .line 180
    if-nez v7, :cond_4

    .line 181
    .line 182
    if-ne v9, v8, :cond_5

    .line 183
    .line 184
    :cond_4
    new-instance v9, Lcom/supertws/dubokutv/presentation/screens/history/e;

    .line 185
    .line 186
    const/4 v7, 0x1

    .line 187
    invoke-direct {v9, v4, v5, v7}, Lcom/supertws/dubokutv/presentation/screens/history/e;-><init>(Lrb/k;Landroidx/compose/runtime/b1;I)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v2, v9}, Landroidx/compose/runtime/p;->n0(Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    :cond_5
    check-cast v9, Lrb/k;

    .line 194
    .line 195
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/p;->p(Z)V

    .line 196
    .line 197
    .line 198
    new-instance v12, Landroidx/compose/foundation/text/d1;

    .line 199
    .line 200
    const/16 v4, 0x2f

    .line 201
    .line 202
    invoke-direct {v12, v9, v4}, Landroidx/compose/foundation/text/d1;-><init>(Lrb/k;I)V

    .line 203
    .line 204
    .line 205
    sget-object v4, Landroidx/tv/material3/q2;->a:Landroidx/compose/runtime/b3;

    .line 206
    .line 207
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/p;->j(Landroidx/compose/runtime/r1;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    check-cast v4, Landroidx/tv/material3/p2;

    .line 212
    .line 213
    iget-object v4, v4, Landroidx/tv/material3/p2;->i:Landroidx/compose/ui/text/r0;

    .line 214
    .line 215
    sget-object v7, Landroidx/tv/material3/j0;->a:Landroidx/compose/runtime/b3;

    .line 216
    .line 217
    invoke-virtual {v2, v7}, Landroidx/compose/runtime/p;->j(Landroidx/compose/runtime/r1;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v7

    .line 221
    check-cast v7, Landroidx/tv/material3/h0;

    .line 222
    .line 223
    invoke-virtual {v7}, Landroidx/tv/material3/h0;->i()J

    .line 224
    .line 225
    .line 226
    move-result-wide v21

    .line 227
    const/16 v33, 0x0

    .line 228
    .line 229
    const v34, 0xfffffe

    .line 230
    .line 231
    .line 232
    const-wide/16 v23, 0x0

    .line 233
    .line 234
    const/16 v25, 0x0

    .line 235
    .line 236
    const/16 v26, 0x0

    .line 237
    .line 238
    const-wide/16 v27, 0x0

    .line 239
    .line 240
    const/16 v29, 0x0

    .line 241
    .line 242
    const-wide/16 v30, 0x0

    .line 243
    .line 244
    const/16 v32, 0x0

    .line 245
    .line 246
    move-object/from16 v20, v4

    .line 247
    .line 248
    invoke-static/range {v20 .. v34}, Landroidx/compose/ui/text/r0;->a(Landroidx/compose/ui/text/r0;JJLandroidx/compose/ui/text/font/x;Landroidx/compose/ui/text/font/m;JLandroidx/compose/ui/graphics/w0;JLandroidx/compose/ui/text/w;Lo1/i;I)Landroidx/compose/ui/text/r0;

    .line 249
    .line 250
    .line 251
    move-result-object v10

    .line 252
    const v4, 0x5d3fca54

    .line 253
    .line 254
    .line 255
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/p;->c0(I)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v2}, Landroidx/compose/runtime/p;->Q()Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v4

    .line 262
    if-ne v4, v8, :cond_6

    .line 263
    .line 264
    new-instance v4, Landroidx/compose/foundation/text/contextmenu/provider/e;

    .line 265
    .line 266
    const/4 v7, 0x7

    .line 267
    invoke-direct {v4, v5, v7}, Landroidx/compose/foundation/text/contextmenu/provider/e;-><init>(Landroidx/compose/runtime/b1;I)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/p;->n0(Ljava/lang/Object;)V

    .line 271
    .line 272
    .line 273
    :cond_6
    move-object v7, v4

    .line 274
    check-cast v7, Lrb/k;

    .line 275
    .line 276
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/p;->p(Z)V

    .line 277
    .line 278
    .line 279
    iget-object v3, v0, Lcom/supertws/dubokutv/presentation/screens/moviedetail/i0;->f:Ljava/lang/Object;

    .line 280
    .line 281
    move-object/from16 v18, v3

    .line 282
    .line 283
    check-cast v18, Landroidx/compose/foundation/interaction/m;

    .line 284
    .line 285
    new-instance v3, Lcom/supertws/dubokutv/presentation/screens/moviedetail/g;

    .line 286
    .line 287
    const/4 v4, 0x3

    .line 288
    invoke-direct {v3, v5, v4}, Lcom/supertws/dubokutv/presentation/screens/moviedetail/g;-><init>(Landroidx/compose/runtime/b1;I)V

    .line 289
    .line 290
    .line 291
    const v4, -0x8cd4ce0

    .line 292
    .line 293
    .line 294
    invoke-static {v4, v3, v2}, Landroidx/compose/runtime/internal/e;->d(ILkotlin/e;Landroidx/compose/runtime/k;)Landroidx/compose/runtime/internal/d;

    .line 295
    .line 296
    .line 297
    move-result-object v20

    .line 298
    const v23, 0x30c00

    .line 299
    .line 300
    .line 301
    const/16 v24, 0x1d18

    .line 302
    .line 303
    const/4 v9, 0x0

    .line 304
    const/4 v13, 0x0

    .line 305
    const/4 v14, 0x1

    .line 306
    const/4 v15, 0x0

    .line 307
    const/16 v16, 0x0

    .line 308
    .line 309
    const/16 v17, 0x0

    .line 310
    .line 311
    const v22, 0x30180030

    .line 312
    .line 313
    .line 314
    move-object v8, v1

    .line 315
    move-object/from16 v21, v2

    .line 316
    .line 317
    invoke-static/range {v6 .. v24}, Landroidx/compose/foundation/text/n;->a(Ljava/lang/String;Lrb/k;Landroidx/compose/ui/q;ZLandroidx/compose/ui/text/r0;Landroidx/compose/foundation/text/e1;Landroidx/compose/foundation/text/d1;ZIILandroidx/compose/ui/graphics/colorspace/d;Lrb/k;Landroidx/compose/foundation/interaction/m;Landroidx/compose/ui/graphics/t;Landroidx/compose/runtime/internal/d;Landroidx/compose/runtime/k;III)V

    .line 318
    .line 319
    .line 320
    :goto_1
    sget-object v1, Lkotlin/w;->a:Lkotlin/w;

    .line 321
    .line 322
    return-object v1

    .line 323
    :pswitch_0
    move-object/from16 v1, p1

    .line 324
    .line 325
    check-cast v1, Landroidx/compose/foundation/layout/y0;

    .line 326
    .line 327
    move-object/from16 v2, p2

    .line 328
    .line 329
    check-cast v2, Landroidx/compose/runtime/k;

    .line 330
    .line 331
    move-object/from16 v3, p3

    .line 332
    .line 333
    check-cast v3, Ljava/lang/Number;

    .line 334
    .line 335
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 336
    .line 337
    .line 338
    move-result v3

    .line 339
    const-string v4, "$this$FlowRow"

    .line 340
    .line 341
    invoke-static {v1, v4}, Lkotlin/jvm/internal/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    and-int/lit8 v1, v3, 0x11

    .line 345
    .line 346
    const/16 v3, 0x10

    .line 347
    .line 348
    if-ne v1, v3, :cond_8

    .line 349
    .line 350
    move-object v1, v2

    .line 351
    check-cast v1, Landroidx/compose/runtime/p;

    .line 352
    .line 353
    invoke-virtual {v1}, Landroidx/compose/runtime/p;->F()Z

    .line 354
    .line 355
    .line 356
    move-result v3

    .line 357
    if-nez v3, :cond_7

    .line 358
    .line 359
    goto :goto_2

    .line 360
    :cond_7
    invoke-virtual {v1}, Landroidx/compose/runtime/p;->W()V

    .line 361
    .line 362
    .line 363
    goto/16 :goto_4

    .line 364
    .line 365
    :cond_8
    :goto_2
    iget-object v1, v0, Lcom/supertws/dubokutv/presentation/screens/moviedetail/i0;->d:Ljava/lang/Object;

    .line 366
    .line 367
    check-cast v1, Ljava/util/List;

    .line 368
    invoke-static {v1}, Lkotlin/collections/r;->H0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 369
    iget-object v3, v0, Lcom/supertws/dubokutv/presentation/screens/moviedetail/i0;->f:Ljava/lang/Object;

    .line 370
    .line 371
    check-cast v3, Landroidx/compose/runtime/z0;

    .line 372
    .line 373
    iget-object v4, v0, Lcom/supertws/dubokutv/presentation/screens/moviedetail/i0;->g:Ljava/lang/Object;

    .line 374
    .line 375
    check-cast v4, Ljava/lang/String;

    .line 376
    .line 377
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    const/4 v5, 0x0

    .line 382
    move v6, v5

    .line 383
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 384
    .line 385
    .line 386
    move-result v7

    .line 387
    if-eqz v7, :cond_f

    .line 388
    .line 389
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    move-result-object v7

    .line 393
    add-int/lit8 v8, v6, 0x1

    .line 394
    .line 395
    if-ltz v6, :cond_e

    .line 396
    .line 397
    check-cast v7, Lqa/s;

    .line 398
    .line 399
    move-object v9, v2

    .line 400
    check-cast v9, Landroidx/compose/runtime/p;

    .line 401
    .line 402
    const v10, -0x5abc521d

    .line 403
    .line 404
    .line 405
    invoke-virtual {v9, v10}, Landroidx/compose/runtime/p;->c0(I)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v9, v3}, Landroidx/compose/runtime/p;->f(Ljava/lang/Object;)Z

    .line 409
    .line 410
    .line 411
    move-result v10

    .line 412
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/p;->d(I)Z

    .line 413
    .line 414
    .line 415
    move-result v11

    .line 416
    or-int/2addr v10, v11

    .line 417
    invoke-virtual {v9}, Landroidx/compose/runtime/p;->Q()Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    move-result-object v11

    .line 421
    sget-object v12, Landroidx/compose/runtime/j;->a:Landroidx/compose/runtime/f;

    .line 422
    .line 423
    if-nez v10, :cond_9

    .line 424
    .line 425
    if-ne v11, v12, :cond_a

    .line 426
    .line 427
    :cond_9
    new-instance v11, Landroidx/compose/foundation/lazy/grid/v;

    .line 428
    .line 429
    const/4 v10, 0x2

    .line 430
    invoke-direct {v11, v3, v6, v10}, Landroidx/compose/foundation/lazy/grid/v;-><init>(Ljava/lang/Object;II)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v9, v11}, Landroidx/compose/runtime/p;->n0(Ljava/lang/Object;)V

    .line 434
    .line 435
    .line 436
    :cond_a
    check-cast v11, Lrb/k;

    .line 437
    .line 438
    invoke-virtual {v9, v5}, Landroidx/compose/runtime/p;->p(Z)V

    .line 439
    .line 440
    .line 441
    sget-object v10, Landroidx/compose/ui/n;->a:Landroidx/compose/ui/n;

    .line 442
    .line 443
    invoke-static {v10, v11}, Landroidx/compose/ui/focus/m0;->u(Landroidx/compose/ui/q;Lrb/k;)Landroidx/compose/ui/q;

    .line 444
    .line 445
    .line 446
    move-result-object v11

    .line 447
    move-object v13, v3

    .line 448
    check-cast v13, Landroidx/compose/runtime/p2;

    .line 449
    .line 450
    invoke-virtual {v13}, Landroidx/compose/runtime/p2;->h()I

    .line 451
    .line 452
    .line 453
    move-result v13

    .line 454
    if-ne v6, v13, :cond_b

    .line 455
    .line 456
    iget-object v6, v0, Lcom/supertws/dubokutv/presentation/screens/moviedetail/i0;->b:Landroidx/compose/ui/focus/y;

    .line 457
    .line 458
    invoke-static {v10, v6}, Landroidx/compose/ui/focus/m0;->k(Landroidx/compose/ui/q;Landroidx/compose/ui/focus/y;)Landroidx/compose/ui/q;

    .line 459
    .line 460
    .line 461
    move-result-object v10

    .line 462
    :cond_b
    invoke-interface {v11, v10}, Landroidx/compose/ui/q;->n(Landroidx/compose/ui/q;)Landroidx/compose/ui/q;

    .line 463
    .line 464
    .line 465
    move-result-object v6

    .line 466
    iget-object v10, v7, Lqa/s;->b:Ljava/lang/String;

    .line 467
    .line 468
    invoke-static {v10, v4}, Ll8/t1;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v10

    .line 472
    const v11, -0x5abc1b3f

    .line 473
    .line 474
    .line 475
    invoke-virtual {v9, v11}, Landroidx/compose/runtime/p;->c0(I)V

    .line 476
    .line 477
    .line 478
    iget-object v11, v0, Lcom/supertws/dubokutv/presentation/screens/moviedetail/i0;->c:Lrb/k;

    .line 479
    .line 480
    invoke-virtual {v9, v11}, Landroidx/compose/runtime/p;->f(Ljava/lang/Object;)Z

    .line 481
    .line 482
    .line 483
    move-result v13

    .line 484
    invoke-virtual {v9, v7}, Landroidx/compose/runtime/p;->f(Ljava/lang/Object;)Z

    .line 485
    .line 486
    .line 487
    move-result v14

    .line 488
    or-int/2addr v13, v14

    .line 489
    invoke-virtual {v9}, Landroidx/compose/runtime/p;->Q()Ljava/lang/Object;

    .line 490
    .line 491
    .line 492
    move-result-object v14

    .line 493
    if-nez v13, :cond_c

    .line 494
    .line 495
    if-ne v14, v12, :cond_d

    .line 496
    .line 497
    :cond_c
    new-instance v14, Lcom/supertws/dubokutv/presentation/screens/moviedetail/h;

    .line 498
    .line 499
    const/4 v12, 0x3

    .line 500
    invoke-direct {v14, v11, v7, v12}, Lcom/supertws/dubokutv/presentation/screens/moviedetail/h;-><init>(Lkotlin/e;Ljava/lang/Object;I)V

    .line 501
    .line 502
    .line 503
    invoke-virtual {v9, v14}, Landroidx/compose/runtime/p;->n0(Ljava/lang/Object;)V

    .line 504
    .line 505
    .line 506
    :cond_d
    check-cast v14, Lrb/a;

    .line 507
    .line 508
    invoke-virtual {v9, v5}, Landroidx/compose/runtime/p;->p(Z)V

    .line 509
    .line 510
    .line 511
    invoke-static {v5, v9, v6, v10, v14}, Lcom/supertws/dubokutv/presentation/screens/moviedetail/v;->h(ILandroidx/compose/runtime/k;Landroidx/compose/ui/q;Ljava/lang/String;Lrb/a;)V

    .line 512
    .line 513
    .line 514
    move v6, v8

    .line 515
    goto/16 :goto_3

    .line 516
    .line 517
    :cond_e
    invoke-static {}, Landroidx/work/d0;->i0()V

    .line 518
    .line 519
    .line 520
    const/4 v1, 0x0

    .line 521
    throw v1

    .line 522
    :cond_f
    :goto_4
    sget-object v1, Lkotlin/w;->a:Lkotlin/w;

    .line 523
    .line 524
    return-object v1

    .line 525
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
