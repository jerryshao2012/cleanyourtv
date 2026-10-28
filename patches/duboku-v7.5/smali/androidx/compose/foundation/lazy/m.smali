.class public final synthetic Landroidx/compose/foundation/lazy/m;
.super Ljava/lang/Object;
.source "r8-map-id-8ba8015df6390efac2340e8bc72cbaa0af05ae8dc58e92835996b10ae6d6a13d"

# interfaces
.implements Lrb/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/p;Lk0/a;Landroidx/compose/runtime/f2;Landroidx/compose/runtime/x0;)V
    .locals 0

    .line 1
    const/4 p4, 0x2

    iput p4, p0, Landroidx/compose/foundation/lazy/m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/m;->b:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/foundation/lazy/m;->c:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/compose/foundation/lazy/m;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 2
    iput p2, p0, Landroidx/compose/foundation/lazy/m;->a:I

    iput-object p1, p0, Landroidx/compose/foundation/lazy/m;->b:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/compose/foundation/lazy/m;->c:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/compose/foundation/lazy/m;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/m;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/foundation/lazy/m;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroidx/compose/runtime/a;

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/compose/foundation/lazy/m;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Landroidx/compose/runtime/j2;

    .line 13
    .line 14
    iget-object v2, p0, Landroidx/compose/foundation/lazy/m;->d:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Lk0/k0;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/j2;->c(Landroidx/compose/runtime/a;)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget v3, v1, Landroidx/compose/runtime/j2;->t:I

    .line 25
    .line 26
    sub-int/2addr v0, v3

    .line 27
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/j2;->a(I)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget v0, v1, Landroidx/compose/runtime/j2;->t:I

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-static {v1, v3, v0, v3}, Lcom/google/ads/interactivemedia/v3/impl/a0;->g(Landroidx/compose/runtime/j2;Ljava/lang/Integer;ILjava/lang/Integer;)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Lkotlin/collections/r;->D0(Ljava/util/List;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Landroidx/compose/runtime/tooling/b;

    .line 42
    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    iget-object v3, v1, Landroidx/compose/runtime/tooling/b;->b:Ljava/lang/Integer;

    .line 46
    .line 47
    :cond_1
    invoke-interface {v2, v3}, Lk0/k0;->h(Ljava/lang/Integer;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    if-eqz v3, :cond_3

    .line 52
    .line 53
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    invoke-static {v1}, Lkotlin/collections/r;->v0(Ljava/util/List;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Landroidx/compose/runtime/tooling/b;

    .line 65
    .line 66
    invoke-static {v1}, Lkotlin/collections/r;->t0(Ljava/util/List;)Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    iget v2, v2, Landroidx/compose/runtime/tooling/b;->a:I

    .line 71
    .line 72
    new-instance v4, Landroidx/compose/runtime/tooling/b;

    .line 73
    .line 74
    const/4 v5, 0x0

    .line 75
    invoke-direct {v4, v2, v5, v3}, Landroidx/compose/runtime/tooling/b;-><init>(ILkotlin/reflect/x;Ljava/lang/Integer;)V

    .line 76
    .line 77
    .line 78
    invoke-static {v4}, Landroidx/work/d0;->N(Ljava/lang/Object;)Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-static {v2, v1}, Lkotlin/collections/r;->G0(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    :cond_3
    :goto_0
    new-instance v2, Landroidx/compose/runtime/tooling/a;

    .line 87
    .line 88
    invoke-static {v0, v1}, Lkotlin/collections/r;->G0(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-direct {v2, v0}, Landroidx/compose/runtime/tooling/a;-><init>(Ljava/util/List;)V

    .line 93
    .line 94
    .line 95
    return-object v2

    .line 96
    :pswitch_0
    iget-object v0, p0, Landroidx/compose/foundation/lazy/m;->b:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v0, Landroid/app/Activity;

    .line 99
    .line 100
    iget-object v1, p0, Landroidx/compose/foundation/lazy/m;->c:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v1, Landroidx/compose/runtime/b1;

    .line 103
    .line 104
    iget-object v2, p0, Landroidx/compose/foundation/lazy/m;->d:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v2, Landroidx/compose/runtime/a3;

    .line 107
    .line 108
    invoke-interface {v2}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    check-cast v2, Ljava/lang/Boolean;

    .line 113
    .line 114
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-eqz v2, :cond_4

    .line 119
    .line 120
    const/4 v2, 0x7

    .line 121
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 122
    .line 123
    .line 124
    sget-object v0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/ResetOrientationStatus;->Portrait:Lcom/supertws/dubokutv/presentation/screens/videoPlayer/ResetOrientationStatus;

    .line 125
    .line 126
    invoke-interface {v1, v0}, Landroidx/compose/runtime/b1;->setValue(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_4
    const/4 v2, 0x6

    .line 131
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 132
    .line 133
    .line 134
    sget-object v0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/ResetOrientationStatus;->Landscape:Lcom/supertws/dubokutv/presentation/screens/videoPlayer/ResetOrientationStatus;

    .line 135
    .line 136
    invoke-interface {v1, v0}, Landroidx/compose/runtime/b1;->setValue(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    :goto_1
    sget-object v0, Lkotlin/w;->a:Lkotlin/w;

    .line 140
    .line 141
    return-object v0

    .line 142
    :pswitch_1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/m;->b:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast v0, Lrb/a;

    .line 145
    .line 146
    iget-object v1, p0, Landroidx/compose/foundation/lazy/m;->c:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast v1, Landroidx/compose/runtime/b1;

    .line 149
    .line 150
    iget-object v2, p0, Landroidx/compose/foundation/lazy/m;->d:Ljava/lang/Object;

    .line 151
    .line 152
    check-cast v2, Lrb/k;

    .line 153
    .line 154
    invoke-interface {v1}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    check-cast v3, Ljava/lang/Float;

    .line 159
    .line 160
    if-eqz v3, :cond_5

    .line 161
    .line 162
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    invoke-interface {v2, v3}, Lrb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    :cond_5
    const/4 v2, 0x0

    .line 174
    invoke-interface {v1, v2}, Landroidx/compose/runtime/b1;->setValue(Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    invoke-interface {v0}, Lrb/a;->invoke()Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    sget-object v0, Lkotlin/w;->a:Lkotlin/w;

    .line 181
    .line 182
    return-object v0

    .line 183
    :pswitch_2
    iget-object v0, p0, Landroidx/compose/foundation/lazy/m;->b:Ljava/lang/Object;

    .line 184
    .line 185
    check-cast v0, Landroid/content/Context;

    .line 186
    .line 187
    iget-object v1, p0, Landroidx/compose/foundation/lazy/m;->c:Ljava/lang/Object;

    .line 188
    .line 189
    check-cast v1, Landroid/content/res/Resources;

    .line 190
    .line 191
    iget-object v2, p0, Landroidx/compose/foundation/lazy/m;->d:Ljava/lang/Object;

    .line 192
    .line 193
    check-cast v2, Landroidx/compose/runtime/b1;

    .line 194
    .line 195
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 196
    .line 197
    invoke-interface {v2, v3}, Landroidx/compose/runtime/b1;->setValue(Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    const v2, 0x7f11005d

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    const/4 v2, 0x0

    .line 208
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 213
    .line 214
    .line 215
    sget-object v0, Lkotlin/w;->a:Lkotlin/w;

    .line 216
    .line 217
    return-object v0

    .line 218
    :pswitch_3
    iget-object v0, p0, Landroidx/compose/foundation/lazy/m;->b:Ljava/lang/Object;

    .line 219
    .line 220
    check-cast v0, Lk5/a0;

    .line 221
    .line 222
    iget-object v1, p0, Landroidx/compose/foundation/lazy/m;->c:Ljava/lang/Object;

    .line 223
    .line 224
    check-cast v1, Landroidx/compose/runtime/b1;

    .line 225
    .line 226
    iget-object v2, p0, Landroidx/compose/foundation/lazy/m;->d:Ljava/lang/Object;

    .line 227
    .line 228
    check-cast v2, Landroidx/compose/runtime/b1;

    .line 229
    .line 230
    invoke-virtual {v0}, Lk5/a0;->d()Z

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    if-eqz v0, :cond_6

    .line 235
    .line 236
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 237
    .line 238
    invoke-interface {v1, v0}, Landroidx/compose/runtime/b1;->setValue(Ljava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    invoke-interface {v2, v0}, Landroidx/compose/runtime/b1;->setValue(Ljava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    :cond_6
    sget-object v0, Lkotlin/w;->a:Lkotlin/w;

    .line 245
    .line 246
    return-object v0

    .line 247
    :pswitch_4
    iget-object v0, p0, Landroidx/compose/foundation/lazy/m;->b:Ljava/lang/Object;

    .line 248
    .line 249
    check-cast v0, Landroid/content/Context;

    .line 250
    .line 251
    iget-object v1, p0, Landroidx/compose/foundation/lazy/m;->c:Ljava/lang/Object;

    .line 252
    .line 253
    check-cast v1, Landroid/content/res/Resources;

    .line 254
    .line 255
    iget-object v2, p0, Landroidx/compose/foundation/lazy/m;->d:Ljava/lang/Object;

    .line 256
    .line 257
    check-cast v2, Landroidx/compose/runtime/a1;

    .line 258
    .line 259
    check-cast v2, Landroidx/compose/runtime/r2;

    .line 260
    .line 261
    invoke-virtual {v2}, Landroidx/compose/runtime/r2;->h()J

    .line 262
    .line 263
    .line 264
    move-result-wide v3

    .line 265
    const/16 v5, 0xbb8

    .line 266
    .line 267
    int-to-long v5, v5

    .line 268
    add-long/2addr v3, v5

    .line 269
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 270
    .line 271
    .line 272
    move-result-wide v5

    .line 273
    cmp-long v3, v3, v5

    .line 274
    .line 275
    const/4 v4, 0x0

    .line 277
    .line 278
    invoke-static {v0}, Ll8/t1;->h(Landroid/content/Context;)Landroid/app/Activity;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    if-eqz v0, :cond_7

    .line 283
    .line 284
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 285
    .line 286
    .line 287
    :cond_7
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 288
    .line 289
    .line 290
    new-instance v0, Ljava/lang/RuntimeException;

    .line 291
    .line 292
    const-string v1, "System.exit returned normally, while it was supposed to halt JVM."

    .line 293
    .line 294
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    throw v0

    .line 298
    :cond_8
    const v3, 0x7f11005d

    .line 299
    .line 300
    .line 301
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 310
    .line 311
    .line 312
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 313
    .line 314
    .line 315
    move-result-wide v0

    .line 316
    invoke-virtual {v2, v0, v1}, Landroidx/compose/runtime/r2;->i(J)V

    .line 317
    .line 318
    .line 319
    sget-object v0, Lkotlin/w;->a:Lkotlin/w;

    .line 320
    .line 321
    return-object v0

    .line 322
    :pswitch_5
    iget-object v0, p0, Landroidx/compose/foundation/lazy/m;->b:Ljava/lang/Object;

    .line 323
    .line 324
    check-cast v0, Landroidx/work/impl/utils/u;

    .line 325
    .line 326
    iget-object v1, p0, Landroidx/compose/foundation/lazy/m;->c:Ljava/lang/Object;

    .line 327
    .line 328
    check-cast v1, Ljava/util/UUID;

    .line 329
    .line 330
    iget-object v2, p0, Landroidx/compose/foundation/lazy/m;->d:Ljava/lang/Object;

    .line 331
    .line 332
    check-cast v2, Landroidx/work/h;

    .line 333
    .line 334
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 335
    .line 336
    .line 337
    const-string v3, "Ignoring setProgressAsync(...). WorkSpec ("

    .line 338
    .line 339
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v4

    .line 343
    invoke-static {}, Landroidx/work/v;->e()Landroidx/work/v;

    .line 344
    .line 345
    .line 346
    move-result-object v5

    .line 347
    sget-object v6, Landroidx/work/impl/utils/u;->c:Ljava/lang/String;

    .line 348
    .line 349
    new-instance v7, Ljava/lang/StringBuilder;

    .line 350
    .line 351
    const-string v8, "Updating progress for "

    .line 352
    .line 353
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    const-string v1, " ("

    .line 360
    .line 361
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    const-string v1, ")"

    .line 368
    .line 369
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    invoke-virtual {v5, v6, v1}, Landroidx/work/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    iget-object v1, v0, Landroidx/work/impl/utils/u;->a:Landroidx/work/impl/WorkDatabase;

    .line 380
    .line 381
    invoke-virtual {v1}, Landroidx/room/x;->b()V

    .line 382
    .line 383
    .line 384
    :try_start_0
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->w()Landroidx/work/impl/model/w;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    invoke-virtual {v0, v4}, Landroidx/work/impl/model/w;->d(Ljava/lang/String;)Landroidx/work/impl/model/q;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    if-eqz v0, :cond_a

    .line 393
    .line 394
    iget-object v0, v0, Landroidx/work/impl/model/q;->b:Landroidx/work/WorkInfo$State;

    .line 395
    .line 396
    sget-object v5, Landroidx/work/WorkInfo$State;->RUNNING:Landroidx/work/WorkInfo$State;

    .line 397
    .line 398
    if-ne v0, v5, :cond_9

    .line 399
    .line 400
    new-instance v0, Landroidx/work/impl/model/m;

    .line 401
    .line 402
    invoke-direct {v0, v4, v2}, Landroidx/work/impl/model/m;-><init>(Ljava/lang/String;Landroidx/work/h;)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->v()Landroidx/work/impl/model/n;

    .line 406
    .line 407
    .line 408
    move-result-object v2

    .line 409
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 410
    .line 411
    .line 412
    iget-object v3, v2, Landroidx/work/impl/model/n;->a:Landroidx/room/x;

    .line 413
    .line 414
    new-instance v4, Landroidx/compose/ui/text/font/i0;

    .line 415
    .line 416
    const/4 v5, 0x7

    .line 417
    invoke-direct {v4, v5, v2, v0}, Landroidx/compose/ui/text/font/i0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 418
    .line 419
    .line 420
    const/4 v0, 0x0

    .line 421
    const/4 v2, 0x1

    .line 422
    invoke-static {v3, v0, v2, v4}, Landroidx/room/util/a;->l(Landroidx/room/x;ZZLrb/k;)Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    goto :goto_2

    .line 426
    :catchall_0
    move-exception v0

    .line 427
    goto :goto_3

    .line 428
    :cond_9
    invoke-static {}, Landroidx/work/v;->e()Landroidx/work/v;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    new-instance v2, Ljava/lang/StringBuilder;

    .line 433
    .line 434
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    const-string v3, ") is not in a RUNNING state."

    .line 441
    .line 442
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v2

    .line 449
    invoke-virtual {v0, v6, v2}, Landroidx/work/v;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    :goto_2
    invoke-virtual {v1}, Landroidx/room/x;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    .line 454
    .line 455
    invoke-virtual {v1}, Landroidx/room/x;->f()V

    .line 456
    .line 457
    .line 458
    const/4 v0, 0x0

    .line 459
    return-object v0

    .line 460
    :cond_a
    :try_start_1
    const-string v0, "Calls to setProgressAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result."

    .line 461
    .line 462
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 463
    .line 464
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 468
    :goto_3
    :try_start_2
    invoke-static {}, Landroidx/work/v;->e()Landroidx/work/v;

    .line 469
    .line 470
    .line 471
    move-result-object v2

    .line 472
    const-string v3, "Error updating Worker progress"

    .line 473
    .line 474
    invoke-virtual {v2, v6, v3, v0}, Landroidx/work/v;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 475
    .line 476
    .line 477
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 478
    :catchall_1
    move-exception v0

    .line 479
    invoke-virtual {v1}, Landroidx/room/x;->f()V

    .line 480
    .line 481
    .line 482
    throw v0

    .line 483
    :pswitch_6
    iget-object v0, p0, Landroidx/compose/foundation/lazy/m;->b:Ljava/lang/Object;

    .line 484
    .line 485
    check-cast v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 486
    .line 487
    iget-object v1, p0, Landroidx/compose/foundation/lazy/m;->c:Ljava/lang/Object;

    .line 488
    .line 489
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 490
    .line 491
    iget-object v2, p0, Landroidx/compose/foundation/lazy/m;->d:Ljava/lang/Object;

    .line 492
    .line 493
    check-cast v2, Landroidx/work/impl/constraints/d;

    .line 494
    .line 495
    iget-boolean v0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 496
    .line 497
    if-eqz v0, :cond_b

    .line 498
    .line 499
    invoke-static {}, Landroidx/work/v;->e()Landroidx/work/v;

    .line 500
    .line 501
    .line 502
    move-result-object v0

    .line 503
    sget-object v3, Landroidx/work/impl/constraints/m;->a:Ljava/lang/String;

    .line 504
    .line 505
    const-string v4, "NetworkRequestConstraintController unregister callback"

    .line 506
    .line 507
    invoke-virtual {v0, v3, v4}, Landroidx/work/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 511
    .line 512
    .line 513
    :cond_b
    sget-object v0, Lkotlin/w;->a:Lkotlin/w;

    .line 514
    .line 515
    return-object v0

    .line 516
    :pswitch_7
    iget-object v0, p0, Landroidx/compose/foundation/lazy/m;->b:Ljava/lang/Object;

    .line 517
    .line 518
    check-cast v0, Landroidx/compose/runtime/internal/a;

    .line 519
    .line 520
    iget-object v1, p0, Landroidx/compose/foundation/lazy/m;->c:Ljava/lang/Object;

    .line 521
    .line 522
    check-cast v1, Landroidx/compose/runtime/internal/b;

    .line 523
    .line 524
    iget-object v2, p0, Landroidx/compose/foundation/lazy/m;->d:Ljava/lang/Object;

    .line 525
    .line 526
    check-cast v2, Lkotlin/jvm/internal/Ref$IntRef;

    .line 527
    .line 528
    invoke-virtual {v0}, Landroidx/compose/runtime/internal/a;->a()V

    .line 529
    .line 530
    .line 531
    iget-object v0, v1, Landroidx/compose/runtime/internal/b;->c:Ljava/lang/Object;

    .line 532
    .line 533
    check-cast v0, Landroidx/compose/runtime/internal/AtomicInt;

    .line 534
    .line 535
    iget v1, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 536
    .line 537
    :cond_c
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 538
    .line 539
    .line 540
    move-result v2

    .line 541
    ushr-int/lit8 v3, v2, 0x1b

    .line 542
    .line 543
    and-int/lit8 v3, v3, 0xf

    .line 544
    .line 545
    if-ne v3, v1, :cond_d

    .line 546
    .line 547
    add-int/lit8 v3, v2, -0x1

    .line 548
    .line 549
    goto :goto_4

    .line 550
    :cond_d
    move v3, v2

    .line 551
    :goto_4
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 552
    .line 553
    .line 554
    move-result v2

    .line 555
    if-eqz v2, :cond_c

    .line 556
    .line 557
    sget-object v0, Lkotlin/w;->a:Lkotlin/w;

    .line 558
    .line 559
    return-object v0

    .line 560
    :pswitch_8
    iget-object v0, p0, Landroidx/compose/foundation/lazy/m;->b:Ljava/lang/Object;

    .line 561
    .line 562
    move-object v1, v0

    .line 563
    check-cast v1, Landroidx/compose/runtime/p;

    .line 564
    .line 565
    iget-object v0, p0, Landroidx/compose/foundation/lazy/m;->c:Ljava/lang/Object;

    .line 566
    .line 567
    check-cast v0, Lk0/a;

    .line 568
    .line 569
    iget-object v2, p0, Landroidx/compose/foundation/lazy/m;->d:Ljava/lang/Object;

    .line 570
    .line 571
    check-cast v2, Landroidx/compose/runtime/f2;

    .line 572
    .line 573
    iget-object v3, v1, Landroidx/compose/runtime/p;->M:Lk0/b;

    .line 574
    .line 575
    iget-object v4, v3, Lk0/b;->b:Lk0/a;

    .line 576
    .line 577
    :try_start_3
    iput-object v0, v3, Lk0/b;->b:Lk0/a;

    .line 578
    .line 579
    iget-object v5, v1, Landroidx/compose/runtime/p;->G:Landroidx/compose/runtime/f2;

    .line 580
    .line 581
    iget-object v6, v1, Landroidx/compose/runtime/p;->o:[I

    .line 582
    .line 583
    iget-object v7, v1, Landroidx/compose/runtime/p;->v:Landroidx/collection/c0;

    .line 584
    .line 585
    const/4 v0, 0x0

    .line 586
    iput-object v0, v1, Landroidx/compose/runtime/p;->o:[I

    .line 587
    .line 588
    iput-object v0, v1, Landroidx/compose/runtime/p;->v:Landroidx/collection/c0;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 589
    .line 590
    :try_start_4
    iput-object v2, v1, Landroidx/compose/runtime/p;->G:Landroidx/compose/runtime/f2;

    .line 591
    .line 592
    iget-boolean v2, v3, Lk0/b;->e:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 593
    .line 594
    const/4 v8, 0x0

    .line 595
    :try_start_5
    iput-boolean v8, v3, Lk0/b;->e:Z

    .line 596
    .line 597
    const/4 v8, 0x0

    .line 598
    const/4 v9, 0x0

    .line 599
    invoke-virtual {v1, v8, v9}, Landroidx/compose/runtime/p;->H(Landroidx/compose/runtime/m1;Ljava/lang/Object;)V

    .line 600
    .line 601
    .line 602
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 603
    :catchall_2
    move-exception v0

    .line 604
    :try_start_6
    iput-boolean v2, v3, Lk0/b;->e:Z

    .line 605
    .line 606
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 607
    :catchall_3
    move-exception v0

    .line 608
    :try_start_7
    iput-object v5, v1, Landroidx/compose/runtime/p;->G:Landroidx/compose/runtime/f2;

    .line 609
    .line 610
    iput-object v6, v1, Landroidx/compose/runtime/p;->o:[I

    .line 611
    .line 612
    iput-object v7, v1, Landroidx/compose/runtime/p;->v:Landroidx/collection/c0;

    .line 613
    .line 614
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 615
    :catchall_4
    move-exception v0

    .line 616
    iput-object v4, v3, Lk0/b;->b:Lk0/a;

    .line 617
    .line 618
    throw v0

    .line 619
    :pswitch_9
    iget-object v0, p0, Landroidx/compose/foundation/lazy/m;->b:Ljava/lang/Object;

    .line 620
    .line 621
    check-cast v0, Landroidx/compose/foundation/relocation/f;

    .line 622
    .line 623
    iget-object v1, p0, Landroidx/compose/foundation/lazy/m;->c:Ljava/lang/Object;

    .line 624
    .line 625
    check-cast v1, Landroidx/compose/ui/node/c1;

    .line 626
    .line 627
    iget-object v2, p0, Landroidx/compose/foundation/lazy/m;->d:Ljava/lang/Object;

    .line 628
    .line 629
    check-cast v2, Lrb/a;

    .line 630
    .line 631
    invoke-static {v0, v1, v2}, Landroidx/compose/foundation/relocation/f;->J0(Landroidx/compose/foundation/relocation/f;Landroidx/compose/ui/layout/x;Lrb/a;)Lt0/c;

    .line 632
    .line 633
    .line 634
    move-result-object v4

    .line 635
    if-eqz v4, :cond_f

    .line 636
    .line 637
    iget-object v3, v0, Landroidx/compose/foundation/relocation/f;->B:Landroidx/compose/foundation/gestures/a0;

    .line 638
    .line 639
    iget-wide v0, v3, Landroidx/compose/foundation/gestures/a0;->I:J

    .line 640
    .line 641
    const-wide/16 v5, 0x0

    .line 642
    .line 643
    invoke-static {v0, v1, v5, v6}, Lq1/m;->b(JJ)Z

    .line 644
    .line 645
    .line 646
    move-result v0

    .line 647
    if-eqz v0, :cond_e

    .line 648
    .line 649
    const-string v0, "Expected BringIntoViewRequester to not be used before parents are placed."

    .line 650
    .line 651
    invoke-static {v0}, Lw/a;->c(Ljava/lang/String;)V

    .line 652
    .line 653
    .line 654
    :cond_e
    iget-wide v5, v3, Landroidx/compose/foundation/gestures/a0;->I:J

    .line 655
    .line 656
    const-wide/16 v7, 0x0

    .line 657
    .line 658
    invoke-virtual/range {v3 .. v8}, Landroidx/compose/foundation/gestures/a0;->M0(Lt0/c;JJ)J

    .line 659
    .line 660
    .line 661
    move-result-wide v0

    .line 662
    const-wide v2, -0x7fffffff80000000L    # -1.0609978955E-314

    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    xor-long/2addr v0, v2

    .line 668
    invoke-virtual {v4, v0, v1}, Lt0/c;->i(J)Lt0/c;

    .line 669
    .line 670
    .line 671
    move-result-object v0

    .line 672
    goto :goto_5

    .line 673
    :cond_f
    const/4 v0, 0x0

    .line 674
    :goto_5
    return-object v0

    .line 675
    :pswitch_a
    iget-object v0, p0, Landroidx/compose/foundation/lazy/m;->b:Ljava/lang/Object;

    .line 676
    .line 677
    check-cast v0, Landroidx/compose/runtime/f0;

    .line 678
    .line 679
    iget-object v1, p0, Landroidx/compose/foundation/lazy/m;->c:Ljava/lang/Object;

    .line 680
    .line 681
    check-cast v1, Landroidx/compose/foundation/lazy/y;

    .line 682
    .line 683
    iget-object v2, p0, Landroidx/compose/foundation/lazy/m;->d:Ljava/lang/Object;

    .line 684
    .line 685
    check-cast v2, Landroidx/compose/foundation/lazy/c;

    .line 686
    .line 687
    invoke-virtual {v0}, Landroidx/compose/runtime/f0;->getValue()Ljava/lang/Object;

    .line 688
    .line 689
    .line 690
    move-result-object v0

    .line 691
    check-cast v0, Landroidx/compose/foundation/lazy/i;

    .line 692
    .line 693
    new-instance v3, Landroidx/compose/foundation/lazy/layout/c1;

    .line 694
    .line 695
    iget-object v4, v1, Landroidx/compose/foundation/lazy/y;->e:Landroidx/compose/foundation/lazy/u;

    .line 696
    .line 697
    iget-object v4, v4, Landroidx/compose/foundation/lazy/u;->f:Landroidx/compose/foundation/lazy/layout/i0;

    .line 698
    .line 699
    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/layout/i0;->getValue()Ljava/lang/Object;

    .line 700
    .line 701
    .line 702
    move-result-object v4

    .line 703
    check-cast v4, Lvb/e;

    .line 704
    .line 705
    invoke-direct {v3, v4, v0}, Landroidx/compose/foundation/lazy/layout/c1;-><init>(Lvb/e;Landroidx/compose/foundation/lazy/layout/k;)V

    .line 706
    .line 707
    .line 708
    new-instance v4, Landroidx/compose/foundation/lazy/k;

    .line 709
    .line 710
    invoke-direct {v4, v1, v0, v2, v3}, Landroidx/compose/foundation/lazy/k;-><init>(Landroidx/compose/foundation/lazy/y;Landroidx/compose/foundation/lazy/i;Landroidx/compose/foundation/lazy/c;Landroidx/compose/foundation/lazy/layout/c1;)V

    .line 711
    .line 712
    .line 713
    return-object v4

    .line 714
    nop

    .line 715
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
