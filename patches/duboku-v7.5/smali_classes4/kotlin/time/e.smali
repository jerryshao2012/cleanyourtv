.class public final synthetic Lkotlin/time/e;
.super Ljava/lang/Object;
.source "r8-map-id-8ba8015df6390efac2340e8bc72cbaa0af05ae8dc58e92835996b10ae6d6a13d"

# interfaces
.implements Lrb/k;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lkotlin/time/e;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 35

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Lkotlin/time/e;->a:I

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    move-object/from16 v0, p1

    .line 9
    .line 10
    check-cast v0, Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    new-instance v3, Landroid/content/Intent;

    .line 17
    .line 18
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v4, "android.intent.action.PROCESS_TEXT"

    .line 22
    .line 23
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const-string v4, "text/plain"

    .line 28
    .line 29
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    const/4 v4, 0x0

    .line 34
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    new-instance v3, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 45
    .line 46
    .line 47
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    :goto_0
    if-ge v4, v5, :cond_2

    .line 52
    .line 53
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    move-object v7, v6

    .line 58
    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 65
    .line 66
    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v8

    .line 72
    if-nez v8, :cond_0

    .line 73
    .line 74
    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 75
    .line 76
    iget-boolean v8, v7, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 77
    .line 78
    if-eqz v8, :cond_1

    .line 79
    .line 80
    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 81
    .line 82
    if-eqz v7, :cond_0

    .line 83
    .line 84
    invoke-static {v0, v7}, Landroidx/core/content/e;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    if-nez v7, :cond_1

    .line 89
    .line 90
    :cond_0
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    return-object v3

    .line 97
    :pswitch_0
    move-object/from16 v0, p1

    .line 98
    .line 99
    check-cast v0, Landroidx/compose/ui/graphics/f0;

    .line 100
    .line 101
    const-string v2, "$this$graphicsLayer"

    .line 102
    .line 103
    invoke-static {v0, v2}, Lkotlin/jvm/internal/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    const v2, 0x3f4ccccd

    .line 107
    .line 108
    .line 109
    check-cast v0, Landroidx/compose/ui/graphics/u0;

    .line 110
    .line 111
    invoke-virtual {v0, v2}, Landroidx/compose/ui/graphics/u0;->b(F)V

    .line 112
    .line 113
    .line 114
    sget-object v0, Lkotlin/w;->a:Lkotlin/w;

    .line 115
    .line 116
    return-object v0

    .line 117
    :pswitch_1
    move-object/from16 v0, p1

    .line 118
    .line 119
    check-cast v0, Landroidx/compose/ui/graphics/f0;

    .line 120
    .line 121
    const-string v2, "$this$graphicsLayer"

    .line 122
    .line 123
    invoke-static {v0, v2}, Lkotlin/jvm/internal/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    const v2, 0x3f19999a

    .line 127
    .line 128
    .line 129
    check-cast v0, Landroidx/compose/ui/graphics/u0;

    .line 130
    .line 131
    invoke-virtual {v0, v2}, Landroidx/compose/ui/graphics/u0;->b(F)V

    .line 132
    .line 133
    .line 134
    sget-object v0, Lkotlin/w;->a:Lkotlin/w;

    .line 135
    .line 136
    return-object v0

    .line 137
    :pswitch_2
    move-object/from16 v0, p1

    .line 138
    .line 139
    check-cast v0, Landroidx/compose/ui/graphics/f0;

    .line 140
    .line 141
    const-string v2, "$this$graphicsLayer"

    .line 142
    .line 143
    invoke-static {v0, v2}, Lkotlin/jvm/internal/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    const v2, 0x3f19999a

    .line 147
    .line 148
    .line 149
    check-cast v0, Landroidx/compose/ui/graphics/u0;

    .line 150
    .line 151
    invoke-virtual {v0, v2}, Landroidx/compose/ui/graphics/u0;->b(F)V

    .line 152
    .line 153
    .line 154
    sget-object v0, Lkotlin/w;->a:Lkotlin/w;

    .line 155
    .line 156
    return-object v0

    .line 157
    :pswitch_3
    move-object/from16 v0, p1

    .line 158
    .line 159
    check-cast v0, Lfc/g;

    .line 160
    .line 161
    const-string v2, "$this$Json"

    .line 162
    .line 163
    invoke-static {v0, v2}, Lkotlin/jvm/internal/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    const/4 v2, 0x1

    .line 167
    iput-boolean v2, v0, Lfc/g;->c:Z

    .line 168
    .line 169
    sget-object v0, Lkotlin/w;->a:Lkotlin/w;

    .line 170
    .line 171
    return-object v0

    .line 172
    :pswitch_4
    move-object/from16 v0, p1

    .line 173
    .line 174
    check-cast v0, Ljava/lang/String;

    .line 175
    .line 176
    const-string v2, "it"

    .line 177
    .line 178
    invoke-static {v0, v2}, Lkotlin/jvm/internal/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    return-object v0

    .line 195
    :pswitch_5
    move-object/from16 v0, p1

    .line 196
    .line 197
    check-cast v0, Ljava/lang/String;

    .line 198
    .line 199
    const-string v2, "it"

    .line 200
    .line 201
    invoke-static {v0, v2}, Lkotlin/jvm/internal/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    return-object v0

    .line 218
    :pswitch_6
    move-object/from16 v0, p1

    .line 219
    .line 220
    check-cast v0, Lfc/g;

    .line 221
    .line 222
    const-string v2, "$this$Json"

    .line 223
    .line 224
    invoke-static {v0, v2}, Lkotlin/jvm/internal/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    const/4 v2, 0x1

    .line 228
    iput-boolean v2, v0, Lfc/g;->c:Z

    .line 229
    .line 230
    iput-boolean v2, v0, Lfc/g;->d:Z

    .line 231
    .line 232
    iput-boolean v2, v0, Lfc/g;->a:Z

    .line 233
    .line 234
    sget-object v0, Lkotlin/w;->a:Lkotlin/w;

    .line 235
    .line 236
    return-object v0

    .line 237
    :pswitch_7
    return-object p1

    .line 238
    :pswitch_8
    move-object/from16 v0, p1

    .line 239
    .line 240
    check-cast v0, Ljava/util/Map;

    .line 241
    .line 242
    new-instance v2, Ls0/c;

    .line 243
    .line 244
    invoke-direct {v2, v0}, Ls0/c;-><init>(Ljava/util/Map;)V

    .line 245
    .line 246
    .line 247
    return-object v2

    .line 248
    :pswitch_9
    move-object/from16 v0, p1

    .line 249
    .line 250
    check-cast v0, Ljava/lang/String;

    .line 251
    .line 252
    const-string v2, "it"

    .line 253
    .line 254
    invoke-static {v0, v2}, Lkotlin/jvm/internal/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    invoke-static {v0}, Lkotlin/text/r;->E0(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    return-object v0

    .line 266
    :pswitch_a
    move-object/from16 v0, p1

    .line 267
    .line 268
    check-cast v0, Lw5/a;

    .line 269
    .line 270
    const-string v2, "_connection"

    .line 271
    .line 272
    invoke-static {v0, v2}, Lkotlin/jvm/internal/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    const-string v2, "DELETE FROM records WHERE id IN (SELECT id FROM records ORDER BY modifiedAt DESC LIMIT 1 OFFSET 187)"

    .line 276
    .line 277
    invoke-interface {v0, v2}, Lw5/a;->r0(Ljava/lang/String;)Lw5/c;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    :try_start_0
    invoke-interface {v2}, Lw5/c;->k0()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    .line 283
    .line 284
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    .line 285
    .line 286
    .line 287
    sget-object v0, Lkotlin/w;->a:Lkotlin/w;

    .line 288
    .line 289
    return-object v0

    .line 290
    :catchall_0
    move-exception v0

    .line 291
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    .line 292
    .line 293
    .line 294
    throw v0

    .line 295
    :pswitch_b
    move-object/from16 v0, p1

    .line 296
    .line 297
    check-cast v0, Lw5/a;

    .line 298
    .line 299
    const-string v2, "_connection"

    .line 300
    .line 301
    invoke-static {v0, v2}, Lkotlin/jvm/internal/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    const-string v2, "DELETE FROM records"

    .line 305
    .line 306
    invoke-interface {v0, v2}, Lw5/a;->r0(Ljava/lang/String;)Lw5/c;

    .line 307
    .line 308
    .line 309
    move-result-object v2

    .line 310
    :try_start_1
    invoke-interface {v2}, Lw5/c;->k0()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 311
    .line 312
    .line 313
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    .line 314
    .line 315
    .line 316
    sget-object v0, Lkotlin/w;->a:Lkotlin/w;

    .line 317
    .line 318
    return-object v0

    .line 319
    :catchall_1
    move-exception v0

    .line 320
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    .line 321
    .line 322
    .line 323
    throw v0

    .line 324
    :pswitch_c
    move-object/from16 v0, p1

    .line 325
    .line 326
    check-cast v0, Lw5/a;

    .line 327
    .line 328
    const-string v2, "_connection"

    .line 329
    .line 330
    invoke-static {v0, v2}, Lkotlin/jvm/internal/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    const-string v2, "SELECT * from records ORDER BY modifiedAt DESC"

    .line 334
    .line 335
    invoke-interface {v0, v2}, Lw5/a;->r0(Ljava/lang/String;)Lw5/c;

    .line 336
    .line 337
    .line 338
    move-result-object v2

    .line 339
    :try_start_2
    const-string v0, "id"

    .line 340
    .line 341
    invoke-static {v2, v0}, Landroidx/room/util/a;->g(Lw5/c;Ljava/lang/String;)I

    .line 342
    .line 343
    .line 344
    move-result v0

    .line 345
    const-string v3, "name"

    .line 346
    .line 347
    invoke-static {v2, v3}, Landroidx/room/util/a;->g(Lw5/c;Ljava/lang/String;)I

    .line 348
    .line 349
    .line 350
    move-result v3

    .line 351
    const-string v4, "episode"

    .line 352
    .line 353
    invoke-static {v2, v4}, Landroidx/room/util/a;->g(Lw5/c;Ljava/lang/String;)I

    .line 354
    .line 355
    .line 356
    move-result v4

    .line 357
    const-string v5, "progressInMillis"

    .line 358
    .line 359
    invoke-static {v2, v5}, Landroidx/room/util/a;->g(Lw5/c;Ljava/lang/String;)I

    .line 360
    .line 361
    .line 362
    move-result v5

    .line 363
    const-string v6, "durationInMillis"

    .line 364
    .line 365
    invoke-static {v2, v6}, Landroidx/room/util/a;->g(Lw5/c;Ljava/lang/String;)I

    .line 366
    .line 367
    .line 368
    move-result v6

    .line 369
    const-string v7, "createdAt"

    .line 370
    .line 371
    invoke-static {v2, v7}, Landroidx/room/util/a;->g(Lw5/c;Ljava/lang/String;)I

    .line 372
    .line 373
    .line 374
    move-result v7

    .line 375
    const-string v8, "modifiedAt"

    .line 376
    .line 377
    invoke-static {v2, v8}, Landroidx/room/util/a;->g(Lw5/c;Ljava/lang/String;)I

    .line 378
    .line 379
    .line 380
    move-result v8

    .line 381
    const-string v9, "videoPageUrl"

    .line 382
    .line 383
    invoke-static {v2, v9}, Landroidx/room/util/a;->g(Lw5/c;Ljava/lang/String;)I

    .line 384
    .line 385
    .line 386
    move-result v9

    .line 387
    const-string v10, "detailPageUrl"

    .line 388
    .line 389
    invoke-static {v2, v10}, Landroidx/room/util/a;->g(Lw5/c;Ljava/lang/String;)I

    .line 390
    .line 391
    .line 392
    move-result v10

    .line 393
    const-string v11, "posterUrl"

    .line 394
    .line 395
    invoke-static {v2, v11}, Landroidx/room/util/a;->g(Lw5/c;Ljava/lang/String;)I

    .line 396
    .line 397
    .line 398
    move-result v11

    .line 399
    new-instance v12, Ljava/util/ArrayList;

    .line 400
    .line 401
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 402
    .line 403
    .line 404
    :goto_1
    invoke-interface {v2}, Lw5/c;->k0()Z

    .line 405
    .line 406
    .line 407
    move-result v13

    .line 408
    if-eqz v13, :cond_3

    .line 409
    .line 410
    invoke-interface {v2, v0}, Lw5/c;->U(I)Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v15

    .line 414
    invoke-interface {v2, v3}, Lw5/c;->U(I)Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v16

    .line 418
    invoke-interface {v2, v4}, Lw5/c;->U(I)Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v17

    .line 422
    invoke-interface {v2, v5}, Lw5/c;->getLong(I)J

    .line 423
    .line 424
    .line 425
    move-result-wide v18

    .line 426
    invoke-interface {v2, v6}, Lw5/c;->getLong(I)J

    .line 427
    .line 428
    .line 429
    move-result-wide v20

    .line 430
    invoke-interface {v2, v7}, Lw5/c;->getLong(I)J

    .line 431
    .line 432
    .line 433
    move-result-wide v22

    .line 434
    invoke-interface {v2, v8}, Lw5/c;->getLong(I)J

    .line 435
    .line 436
    .line 437
    move-result-wide v24

    .line 438
    invoke-interface {v2, v9}, Lw5/c;->U(I)Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v26

    .line 442
    invoke-interface {v2, v10}, Lw5/c;->U(I)Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v27

    .line 446
    invoke-interface {v2, v11}, Lw5/c;->U(I)Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v28

    .line 450
    new-instance v14, Lpa/c;

    .line 451
    .line 452
    invoke-direct/range {v14 .. v28}, Lpa/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 456
    .line 457
    .line 458
    goto :goto_1

    .line 459
    :catchall_2
    move-exception v0

    .line 460
    goto :goto_2

    .line 461
    :cond_3
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    .line 462
    .line 463
    .line 464
    return-object v12

    .line 465
    :goto_2
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    .line 466
    .line 467
    .line 468
    throw v0

    .line 469
    :pswitch_d
    move-object/from16 v0, p1

    .line 470
    .line 471
    check-cast v0, Lw5/a;

    .line 472
    .line 473
    const-string v2, "_connection"

    .line 474
    .line 475
    invoke-static {v0, v2}, Lkotlin/jvm/internal/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    const-string v2, "SELECT * from favorites ORDER BY modifiedAt DESC"

    .line 479
    .line 480
    invoke-interface {v0, v2}, Lw5/a;->r0(Ljava/lang/String;)Lw5/c;

    .line 481
    .line 482
    .line 483
    move-result-object v2

    .line 484
    :try_start_3
    const-string v0, "id"

    .line 485
    .line 486
    invoke-static {v2, v0}, Landroidx/room/util/a;->g(Lw5/c;Ljava/lang/String;)I

    .line 487
    .line 488
    .line 489
    move-result v0

    .line 490
    const-string v3, "createdAt"

    .line 491
    .line 492
    invoke-static {v2, v3}, Landroidx/room/util/a;->g(Lw5/c;Ljava/lang/String;)I

    .line 493
    .line 494
    .line 495
    move-result v3

    .line 496
    const-string v4, "modifiedAt"

    .line 497
    .line 498
    invoke-static {v2, v4}, Landroidx/room/util/a;->g(Lw5/c;Ljava/lang/String;)I

    .line 499
    .line 500
    .line 501
    move-result v4

    .line 502
    const-string v5, "videoPageUrl"

    .line 503
    .line 504
    invoke-static {v2, v5}, Landroidx/room/util/a;->g(Lw5/c;Ljava/lang/String;)I

    .line 505
    .line 506
    .line 507
    move-result v5

    .line 508
    const-string v6, "detailPageUrl"

    .line 509
    .line 510
    invoke-static {v2, v6}, Landroidx/room/util/a;->g(Lw5/c;Ljava/lang/String;)I

    .line 511
    .line 512
    .line 513
    move-result v6

    .line 514
    const-string v7, "posterUrl"

    .line 515
    .line 516
    invoke-static {v2, v7}, Landroidx/room/util/a;->g(Lw5/c;Ljava/lang/String;)I

    .line 517
    .line 518
    .line 519
    move-result v7

    .line 520
    const-string v8, "name"

    .line 521
    .line 522
    invoke-static {v2, v8}, Landroidx/room/util/a;->g(Lw5/c;Ljava/lang/String;)I

    .line 523
    .line 524
    .line 525
    move-result v8

    .line 526
    const-string v9, "rating"

    .line 527
    .line 528
    invoke-static {v2, v9}, Landroidx/room/util/a;->g(Lw5/c;Ljava/lang/String;)I

    .line 529
    .line 530
    .line 531
    move-result v9

    .line 532
    const-string v10, "category"

    .line 533
    .line 534
    invoke-static {v2, v10}, Landroidx/room/util/a;->g(Lw5/c;Ljava/lang/String;)I

    .line 535
    .line 536
    .line 537
    move-result v10

    .line 538
    const-string v11, "region"

    .line 539
    .line 540
    invoke-static {v2, v11}, Landroidx/room/util/a;->g(Lw5/c;Ljava/lang/String;)I

    .line 541
    .line 542
    .line 543
    move-result v11

    .line 544
    const-string v12, "releaseYear"

    .line 545
    .line 546
    invoke-static {v2, v12}, Landroidx/room/util/a;->g(Lw5/c;Ljava/lang/String;)I

    .line 547
    .line 548
    .line 549
    move-result v12

    .line 550
    const-string v13, "updateTime"

    .line 551
    .line 552
    invoke-static {v2, v13}, Landroidx/room/util/a;->g(Lw5/c;Ljava/lang/String;)I

    .line 553
    .line 554
    .line 555
    move-result v13

    .line 556
    const-string v14, "castAndCrew"

    .line 557
    .line 558
    invoke-static {v2, v14}, Landroidx/room/util/a;->g(Lw5/c;Ljava/lang/String;)I

    .line 559
    .line 560
    .line 561
    move-result v14

    .line 562
    const-string v15, "director"

    .line 563
    .line 564
    invoke-static {v2, v15}, Landroidx/room/util/a;->g(Lw5/c;Ljava/lang/String;)I

    .line 565
    .line 566
    .line 567
    move-result v15

    .line 568
    const-string v1, "description"

    .line 569
    .line 570
    invoke-static {v2, v1}, Landroidx/room/util/a;->g(Lw5/c;Ljava/lang/String;)I

    .line 571
    .line 572
    .line 573
    move-result v1

    .line 574
    move/from16 p1, v1

    .line 575
    .line 576
    new-instance v1, Ljava/util/ArrayList;

    .line 577
    .line 578
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 579
    .line 580
    .line 581
    :goto_3
    invoke-interface {v2}, Lw5/c;->k0()Z

    .line 582
    .line 583
    .line 584
    move-result v16

    .line 585
    if-eqz v16, :cond_4

    .line 586
    .line 587
    invoke-interface {v2, v0}, Lw5/c;->U(I)Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object v18

    .line 591
    invoke-interface {v2, v3}, Lw5/c;->getLong(I)J

    .line 592
    .line 593
    .line 594
    move-result-wide v19

    .line 595
    invoke-interface {v2, v4}, Lw5/c;->getLong(I)J

    .line 596
    .line 597
    .line 598
    move-result-wide v21

    .line 599
    invoke-interface {v2, v5}, Lw5/c;->U(I)Ljava/lang/String;

    .line 600
    .line 601
    .line 602
    move-result-object v23

    .line 603
    invoke-interface {v2, v6}, Lw5/c;->U(I)Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    move-result-object v24

    .line 607
    invoke-interface {v2, v7}, Lw5/c;->U(I)Ljava/lang/String;

    .line 608
    .line 609
    .line 610
    move-result-object v25

    .line 611
    invoke-interface {v2, v8}, Lw5/c;->U(I)Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object v26

    .line 615
    invoke-interface {v2, v9}, Lw5/c;->U(I)Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v27

    .line 619
    invoke-interface {v2, v10}, Lw5/c;->U(I)Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v28

    .line 623
    invoke-interface {v2, v11}, Lw5/c;->U(I)Ljava/lang/String;

    .line 624
    .line 625
    .line 626
    move-result-object v29

    .line 627
    invoke-interface {v2, v12}, Lw5/c;->U(I)Ljava/lang/String;

    .line 628
    .line 629
    .line 630
    move-result-object v30

    .line 631
    invoke-interface {v2, v13}, Lw5/c;->U(I)Ljava/lang/String;

    .line 632
    .line 633
    .line 634
    move-result-object v31

    .line 635
    invoke-interface {v2, v14}, Lw5/c;->U(I)Ljava/lang/String;

    .line 636
    .line 637
    .line 638
    move-result-object v32

    .line 639
    invoke-interface {v2, v15}, Lw5/c;->U(I)Ljava/lang/String;

    .line 640
    .line 641
    .line 642
    move-result-object v33

    .line 643
    move/from16 v16, v0

    .line 644
    .line 645
    move/from16 v0, p1

    .line 646
    .line 647
    invoke-interface {v2, v0}, Lw5/c;->U(I)Ljava/lang/String;

    .line 648
    .line 649
    .line 650
    move-result-object v34

    .line 651
    new-instance v17, Lpa/a;

    .line 652
    .line 653
    invoke-direct/range {v17 .. v34}, Lpa/a;-><init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    .line 655
    .line 656
    move/from16 p1, v0

    .line 657
    .line 658
    move-object/from16 v0, v17

    .line 659
    .line 660
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 661
    .line 662
    .line 663
    move/from16 v0, v16

    .line 664
    .line 665
    goto :goto_3

    .line 666
    :catchall_3
    move-exception v0

    .line 667
    goto :goto_4

    .line 668
    :cond_4
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    .line 669
    .line 670
    .line 671
    return-object v1

    .line 672
    :goto_4
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    .line 673
    .line 674
    .line 675
    throw v0

    .line 676
    :pswitch_e
    move-object/from16 v0, p1

    .line 677
    .line 678
    check-cast v0, Lw5/a;

    .line 679
    .line 680
    const-string v1, "_connection"

    .line 681
    .line 682
    invoke-static {v0, v1}, Lkotlin/jvm/internal/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 683
    .line 684
    .line 685
    const-string v1, "DELETE FROM favorites"

    .line 686
    .line 687
    invoke-interface {v0, v1}, Lw5/a;->r0(Ljava/lang/String;)Lw5/c;

    .line 688
    .line 689
    .line 690
    move-result-object v1

    .line 691
    :try_start_4
    invoke-interface {v1}, Lw5/c;->k0()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 692
    .line 693
    .line 694
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 695
    .line 696
    .line 697
    sget-object v0, Lkotlin/w;->a:Lkotlin/w;

    .line 698
    .line 699
    return-object v0

    .line 700
    :catchall_4
    move-exception v0

    .line 701
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 702
    .line 703
    .line 704
    throw v0

    .line 705
    :pswitch_f
    move-object/from16 v0, p1

    .line 706
    .line 707
    check-cast v0, Lk5/u;

    .line 708
    .line 709
    const-string v1, "it"

    .line 710
    .line 711
    invoke-static {v0, v1}, Lkotlin/jvm/internal/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 712
    .line 713
    .line 714
    iget-object v0, v0, Lk5/u;->b:Landroidx/appcompat/widget/s;

    .line 715
    .line 716
    iget v0, v0, Landroidx/appcompat/widget/s;->a:I

    .line 717
    .line 718
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 719
    .line 720
    .line 721
    move-result-object v0

    .line 722
    return-object v0

    .line 723
    :pswitch_10
    move-object/from16 v0, p1

    .line 724
    .line 725
    check-cast v0, Lk5/u;

    .line 726
    .line 727
    const-string v1, "destination"

    .line 728
    .line 729
    invoke-static {v0, v1}, Lkotlin/jvm/internal/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 730
    .line 731
    .line 732
    iget-object v1, v0, Lk5/u;->c:Lk5/w;

    .line 733
    .line 734
    if-eqz v1, :cond_5

    .line 735
    .line 736
    iget-object v2, v1, Lk5/w;->g:Lcom/google/zxing/qrcode/encoder/i;

    .line 737
    .line 738
    iget v2, v2, Lcom/google/zxing/qrcode/encoder/i;->b:I

    .line 739
    .line 740
    iget-object v0, v0, Lk5/u;->b:Landroidx/appcompat/widget/s;

    .line 741
    .line 742
    iget v0, v0, Landroidx/appcompat/widget/s;->a:I

    .line 743
    .line 744
    if-ne v2, v0, :cond_5

    .line 745
    .line 746
    goto :goto_5

    .line 747
    :cond_5
    const/4 v1, 0x0

    .line 748
    :goto_5
    return-object v1

    .line 749
    :pswitch_11
    move-object/from16 v0, p1

    .line 750
    .line 751
    check-cast v0, Lk5/u;

    .line 752
    .line 753
    const-string v1, "destination"

    .line 754
    .line 755
    invoke-static {v0, v1}, Lkotlin/jvm/internal/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 756
    .line 757
    .line 758
    iget-object v1, v0, Lk5/u;->c:Lk5/w;

    .line 759
    .line 760
    if-eqz v1, :cond_6

    .line 761
    .line 762
    iget-object v2, v1, Lk5/w;->g:Lcom/google/zxing/qrcode/encoder/i;

    .line 763
    .line 764
    iget v2, v2, Lcom/google/zxing/qrcode/encoder/i;->b:I

    .line 765
    .line 766
    iget-object v0, v0, Lk5/u;->b:Landroidx/appcompat/widget/s;

    .line 767
    .line 768
    iget v0, v0, Landroidx/appcompat/widget/s;->a:I

    .line 769
    .line 770
    if-ne v2, v0, :cond_6

    .line 771
    .line 772
    goto :goto_6

    .line 773
    :cond_6
    const/4 v1, 0x0

    .line 774
    :goto_6
    return-object v1

    .line 775
    :pswitch_12
    move-object/from16 v0, p1

    .line 776
    .line 777
    check-cast v0, Lk5/e0;

    .line 778
    .line 779
    const-string v1, "$this$navOptions"

    .line 780
    .line 781
    invoke-static {v0, v1}, Lkotlin/jvm/internal/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 782
    .line 783
    .line 784
    const/4 v1, 0x1

    .line 785
    iput-boolean v1, v0, Lk5/e0;->c:Z

    .line 786
    .line 787
    sget-object v0, Lkotlin/w;->a:Lkotlin/w;

    .line 788
    .line 789
    return-object v0

    .line 790
    :pswitch_13
    move-object/from16 v0, p1

    .line 791
    .line 792
    check-cast v0, Ly2/c;

    .line 793
    .line 794
    const-string v1, "$this$initializer"

    .line 795
    .line 796
    invoke-static {v0, v1}, Lkotlin/jvm/internal/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 797
    .line 798
    .line 799
    new-instance v1, Lm5/b;

    .line 800
    .line 801
    invoke-static {v0}, Landroidx/lifecycle/a1;->b(Ly2/c;)Landroidx/lifecycle/e1;

    .line 802
    .line 803
    .line 804
    move-result-object v0

    .line 805
    invoke-direct {v1, v0}, Lm5/b;-><init>(Landroidx/lifecycle/e1;)V

    .line 806
    .line 807
    .line 808
    return-object v1

    .line 809
    :pswitch_14
    move-object/from16 v0, p1

    .line 810
    .line 811
    check-cast v0, Landroid/content/Context;

    .line 812
    .line 813
    const-string v1, "it"

    .line 814
    .line 815
    invoke-static {v0, v1}, Lkotlin/jvm/internal/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 816
    .line 817
    .line 818
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 819
    .line 820
    return-object v0

    .line 821
    :pswitch_15
    move-object/from16 v0, p1

    .line 822
    .line 823
    check-cast v0, Lkotlin/coroutines/f;

    .line 824
    .line 825
    instance-of v1, v0, Lkotlinx/coroutines/s;

    .line 826
    .line 827
    if-eqz v1, :cond_7

    .line 828
    .line 829
    check-cast v0, Lkotlinx/coroutines/s;

    .line 830
    .line 831
    goto :goto_7

    .line 832
    :cond_7
    const/4 v0, 0x0

    .line 833
    :goto_7
    return-object v0

    .line 834
    :pswitch_16
    move-object/from16 v0, p1

    .line 835
    .line 836
    check-cast v0, Ljava/lang/Character;

    .line 837
    .line 838
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    .line 839
    .line 840
    .line 841
    move-result v0

    .line 842
    const/16 v1, 0x30

    .line 843
    .line 844
    if-gt v1, v0, :cond_8

    .line 845
    .line 846
    const/16 v1, 0x3a

    .line 847
    .line 848
    if-ge v0, v1, :cond_8

    .line 849
    .line 850
    const/4 v0, 0x1

    .line 851
    goto :goto_8

    .line 852
    :cond_8
    const/4 v0, 0x0

    .line 853
    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 854
    .line 855
    .line 856
    move-result-object v0

    .line 857
    return-object v0

    .line 858
    :pswitch_17
    move-object/from16 v0, p1

    .line 859
    .line 860
    check-cast v0, Ljava/lang/Character;

    .line 861
    .line 862
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    .line 863
    .line 864
    .line 865
    move-result v0

    .line 866
    const/16 v1, 0x3a

    .line 867
    .line 868
    if-ne v0, v1, :cond_9

    .line 869
    .line 870
    const/4 v0, 0x1

    .line 871
    goto :goto_9

    .line 872
    :cond_9
    const/4 v0, 0x0

    .line 873
    :goto_9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 874
    .line 875
    .line 876
    move-result-object v0

    .line 877
    return-object v0

    .line 878
    :pswitch_18
    move-object/from16 v0, p1

    .line 879
    .line 880
    check-cast v0, Ljava/lang/Character;

    .line 881
    .line 882
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    .line 883
    .line 884
    .line 885
    move-result v0

    .line 886
    const/16 v1, 0x3a

    .line 887
    .line 888
    if-ne v0, v1, :cond_a

    .line 889
    .line 890
    const/4 v0, 0x1

    .line 891
    goto :goto_a

    .line 892
    :cond_a
    const/4 v0, 0x0

    .line 893
    :goto_a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 894
    .line 895
    .line 896
    move-result-object v0

    .line 897
    return-object v0

    .line 898
    :pswitch_19
    move-object/from16 v0, p1

    .line 899
    .line 900
    check-cast v0, Ljava/lang/Character;

    .line 901
    .line 902
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    .line 903
    .line 904
    .line 905
    move-result v0

    .line 906
    const/16 v1, 0x54

    .line 907
    .line 908
    if-eq v0, v1, :cond_c

    .line 909
    .line 910
    const/16 v1, 0x74

    .line 911
    .line 912
    if-ne v0, v1, :cond_b

    .line 913
    .line 914
    goto :goto_b

    .line 915
    :cond_b
    const/4 v0, 0x0

    .line 916
    goto :goto_c

    .line 917
    :cond_c
    :goto_b
    const/4 v0, 0x1

    .line 918
    :goto_c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 919
    .line 920
    .line 921
    move-result-object v0

    .line 922
    return-object v0

    .line 923
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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
