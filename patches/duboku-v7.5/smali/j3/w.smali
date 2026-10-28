.class public final Lj3/w;
.super Ljava/lang/Object;
.source "r8-map-id-8ba8015df6390efac2340e8bc72cbaa0af05ae8dc58e92835996b10ae6d6a13d"


# static fields
.field public static final t:Ljava/lang/Object;

.field public static u:Ljava/util/concurrent/ScheduledExecutorService;

.field public static v:I


# instance fields
.field public final a:Landroid/media/AudioTrack;

.field public final b:Lj3/k;

.field public final c:F

.field public final d:Landroidx/work/impl/utils/l;

.field public e:Lj3/s;

.field public final f:Lj3/y;

.field public final g:Z

.field public final h:I

.field public final i:Lj3/v;

.field public final j:Le3/l;

.field public k:Z

.field public l:J

.field public m:J

.field public n:J

.field public o:Ljava/nio/ByteBuffer;

.field public p:I

.field public q:I

.field public r:I

.field public s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lj3/w;->t:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/media/AudioTrack;Lj3/k;Landroidx/work/impl/utils/l;FLe3/y;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj3/w;->a:Landroid/media/AudioTrack;

    .line 5
    .line 6
    iput-object p2, p0, Lj3/w;->b:Lj3/k;

    .line 7
    .line 8
    iput p4, p0, Lj3/w;->c:F

    .line 9
    .line 10
    iput-object p3, p0, Lj3/w;->d:Landroidx/work/impl/utils/l;

    .line 11
    .line 12
    new-instance p4, Le3/l;

    .line 13
    .line 14
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-direct {p4, v0}, Le3/l;-><init>(Ljava/lang/Thread;)V

    .line 19
    .line 20
    .line 21
    iput-object p4, p0, Lj3/w;->j:Le3/l;

    .line 22
    .line 23
    iget p4, p2, Lj3/k;->a:I

    .line 24
    .line 25
    invoke-static {p4}, Le3/e0;->M(I)Z

    .line 26
    .line 27
    .line 28
    move-result p4

    .line 29
    iput-boolean p4, p0, Lj3/w;->g:Z

    .line 30
    .line 31
    if-eqz p4, :cond_0

    .line 32
    .line 33
    iget p4, p2, Lj3/k;->c:I

    .line 34
    .line 35
    invoke-static {p4}, Ljava/lang/Integer;->bitCount(I)I

    .line 36
    .line 37
    .line 38
    move-result p4

    .line 39
    iget v0, p2, Lj3/k;->a:I

    .line 40
    .line 41
    invoke-static {v0}, Le3/e0;->t(I)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    mul-int/2addr v0, p4

    .line 46
    iput v0, p0, Lj3/w;->h:I

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/4 p4, -0x1

    .line 50
    iput p4, p0, Lj3/w;->h:I

    .line 51
    .line 52
    :goto_0
    new-instance v0, Lj3/y;

    .line 53
    .line 54
    new-instance v1, Lcom/google/common/base/a0;

    .line 55
    .line 56
    invoke-direct {v1, p0}, Lcom/google/common/base/a0;-><init>(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    iget v4, p2, Lj3/k;->a:I

    .line 60
    .line 61
    iget v5, p0, Lj3/w;->h:I

    .line 62
    .line 63
    iget v6, p2, Lj3/k;->f:I

    .line 64
    .line 65
    move-object v3, p1

    .line 66
    move-object v2, p5

    .line 67
    invoke-direct/range {v0 .. v6}, Lj3/y;-><init>(Lcom/google/common/base/a0;Le3/y;Landroid/media/AudioTrack;III)V

    .line 68
    .line 69
    .line 70
    iput-object v0, p0, Lj3/w;->f:Lj3/y;

    .line 71
    .line 72
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 73
    .line 74
    const/16 p2, 0x18

    .line 75
    .line 76
    if-lt p1, p2, :cond_1

    .line 77
    .line 78
    if-eqz p3, :cond_1

    .line 79
    .line 80
    new-instance p1, Lj3/s;

    .line 81
    .line 82
    invoke-direct {p1, v3, p3}, Lj3/s;-><init>(Landroid/media/AudioTrack;Landroidx/work/impl/utils/l;)V

    .line 83
    .line 84
    .line 85
    iput-object p1, p0, Lj3/w;->e:Lj3/s;

    .line 86
    .line 87
    :cond_1
    invoke-virtual {p0}, Lj3/w;->c()Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-eqz p1, :cond_2

    .line 92
    .line 93
    new-instance p1, Lj3/v;

    .line 94
    .line 95
    invoke-direct {p1, p0}, Lj3/v;-><init>(Lj3/w;)V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_2
    const/4 p1, 0x0

    .line 100
    :goto_1
    iput-object p1, p0, Lj3/w;->i:Lj3/v;

    .line 101
    .line 102
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lj3/w;->f:Lj3/y;

    .line 4
    .line 5
    iget-object v2, v1, Lj3/y;->b:Le3/y;

    .line 6
    .line 7
    iget-object v3, v1, Lj3/y;->h:Lj3/p;

    .line 8
    .line 9
    iget-object v4, v1, Lj3/y;->d:Landroid/media/AudioTrack;

    .line 10
    .line 11
    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    .line 12
    .line 13
    .line 14
    move-result v5

    .line 15
    const-wide/16 v7, 0x3e8

    .line 16
    .line 17
    const-wide/16 v9, 0x0

    .line 18
    .line 19
    const/4 v12, 0x1

    .line 20
    const/4 v13, 0x3

    .line 21
    if-ne v5, v13, :cond_19

    .line 22
    .line 23
    iget-object v5, v1, Lj3/y;->c:[J

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 29
    .line 30
    .line 31
    move-result-wide v14

    .line 32
    div-long/2addr v14, v7

    .line 33
    move-wide/from16 v16, v7

    .line 34
    .line 35
    iget-wide v7, v1, Lj3/y;->l:J

    .line 36
    .line 37
    sub-long v7, v14, v7

    .line 38
    .line 39
    const-wide/16 v18, 0x7530

    .line 40
    .line 41
    cmp-long v7, v7, v18

    .line 42
    .line 43
    if-ltz v7, :cond_2

    .line 44
    .line 45
    invoke-virtual {v1}, Lj3/y;->a()J

    .line 46
    .line 47
    .line 48
    move-result-wide v7

    .line 49
    iget v13, v1, Lj3/y;->e:I

    .line 50
    .line 51
    invoke-static {v13, v7, v8}, Le3/e0;->V(IJ)J

    .line 52
    .line 53
    .line 54
    move-result-wide v7

    .line 55
    cmp-long v13, v7, v9

    .line 56
    .line 57
    if-nez v13, :cond_0

    .line 58
    .line 59
    goto/16 :goto_5

    .line 60
    .line 61
    :cond_0
    iget v13, v1, Lj3/y;->s:I

    .line 62
    .line 63
    iget v6, v1, Lj3/y;->i:F

    .line 64
    .line 65
    invoke-static {v7, v8, v6}, Le3/e0;->C(JF)J

    .line 66
    .line 67
    .line 68
    move-result-wide v6

    .line 69
    sub-long/2addr v6, v14

    .line 70
    aput-wide v6, v5, v13

    .line 71
    .line 72
    iget v6, v1, Lj3/y;->s:I

    .line 73
    .line 74
    add-int/2addr v6, v12

    .line 75
    const/16 v7, 0xa

    .line 76
    .line 77
    rem-int/2addr v6, v7

    .line 78
    iput v6, v1, Lj3/y;->s:I

    .line 79
    .line 80
    iget v6, v1, Lj3/y;->t:I

    .line 81
    .line 82
    if-ge v6, v7, :cond_1

    .line 83
    .line 84
    add-int/2addr v6, v12

    .line 85
    iput v6, v1, Lj3/y;->t:I

    .line 86
    .line 87
    :cond_1
    iput-wide v14, v1, Lj3/y;->l:J

    .line 88
    .line 89
    iput-wide v9, v1, Lj3/y;->k:J

    .line 90
    .line 91
    const/4 v6, 0x0

    .line 92
    :goto_0
    iget v7, v1, Lj3/y;->t:I

    .line 93
    .line 94
    if-ge v6, v7, :cond_2

    .line 95
    .line 96
    iget-wide v12, v1, Lj3/y;->k:J

    .line 97
    .line 98
    aget-wide v20, v5, v6

    .line 99
    .line 100
    move-wide/from16 v22, v12

    .line 101
    .line 102
    int-to-long v11, v7

    .line 103
    div-long v20, v20, v11

    .line 104
    .line 105
    add-long v11, v20, v22

    .line 106
    .line 107
    iput-wide v11, v1, Lj3/y;->k:J

    .line 108
    .line 109
    add-int/lit8 v6, v6, 0x1

    .line 110
    .line 111
    const/4 v12, 0x1

    .line 112
    goto :goto_0

    .line 113
    :cond_2
    iget-wide v5, v1, Lj3/y;->n:J

    .line 114
    .line 115
    iget-boolean v7, v1, Lj3/y;->g:Z

    .line 116
    .line 117
    const-string v11, "AudioTrackAudioOutput"

    .line 118
    .line 119
    if-eqz v7, :cond_4

    .line 120
    .line 121
    iget-object v7, v1, Lj3/y;->m:Ljava/lang/reflect/Method;

    .line 122
    .line 123
    if-eqz v7, :cond_4

    .line 124
    .line 125
    const-wide/32 v20, 0x7a120

    .line 126
    .line 127
    .line 128
    iget-wide v12, v1, Lj3/y;->o:J

    .line 129
    .line 130
    sub-long v12, v14, v12

    .line 131
    .line 132
    cmp-long v12, v12, v20

    .line 133
    .line 134
    if-ltz v12, :cond_5

    .line 135
    .line 136
    const/4 v12, 0x0

    .line 137
    :try_start_0
    invoke-virtual {v7, v4, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v7

    .line 141
    check-cast v7, Ljava/lang/Integer;

    .line 142
    .line 143
    sget-object v13, Le3/e0;->a:Ljava/lang/String;

    .line 144
    .line 145
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 146
    .line 147
    .line 148
    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 149
    int-to-long v12, v7

    .line 150
    mul-long v12, v12, v16

    .line 151
    .line 152
    :try_start_1
    iget-wide v8, v1, Lj3/y;->f:J

    .line 153
    .line 154
    sub-long/2addr v12, v8

    .line 155
    iput-wide v12, v1, Lj3/y;->n:J

    .line 156
    .line 157
    const-wide/16 v8, 0x0

    .line 158
    .line 159
    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->max(JJ)J

    .line 160
    .line 161
    .line 162
    move-result-wide v12

    .line 163
    iput-wide v12, v1, Lj3/y;->n:J

    .line 164
    .line 165
    const-wide/32 v8, 0x989680

    .line 166
    .line 167
    .line 168
    cmp-long v8, v12, v8

    .line 169
    .line 170
    if-lez v8, :cond_3

    .line 171
    .line 172
    new-instance v8, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    const-string v9, "Ignoring impossibly large audio latency: "

    .line 175
    .line 176
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v8

    .line 186
    invoke-static {v11, v8}, Le3/a;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    const-wide/16 v8, 0x0

    .line 190
    .line 191
    iput-wide v8, v1, Lj3/y;->n:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 192
    .line 193
    goto :goto_2

    .line 194
    :catch_0
    const/4 v8, 0x0

    .line 195
    goto :goto_1

    .line 196
    :catch_1
    move-object v8, v12

    .line 197
    :goto_1
    iput-object v8, v1, Lj3/y;->m:Ljava/lang/reflect/Method;

    .line 198
    .line 199
    :cond_3
    :goto_2
    iput-wide v14, v1, Lj3/y;->o:J

    .line 200
    .line 201
    goto :goto_3

    .line 202
    :cond_4
    const-wide/32 v20, 0x7a120

    .line 203
    .line 204
    .line 205
    :cond_5
    :goto_3
    iget-wide v8, v1, Lj3/y;->n:J

    .line 206
    .line 207
    cmp-long v5, v5, v8

    .line 208
    .line 209
    if-eqz v5, :cond_6

    .line 210
    .line 211
    const/4 v8, 0x1

    .line 212
    goto :goto_4

    .line 213
    :cond_6
    const/4 v8, 0x0

    .line 214
    :goto_4
    iget v5, v1, Lj3/y;->i:F

    .line 215
    .line 216
    invoke-virtual {v1, v14, v15}, Lj3/y;->b(J)J

    .line 217
    .line 218
    .line 219
    move-result-wide v9

    .line 220
    iget-object v6, v3, Lj3/p;->a:Lj3/o;

    .line 221
    .line 222
    iget-object v12, v3, Lj3/p;->a:Lj3/o;

    .line 223
    .line 224
    iget v13, v3, Lj3/p;->b:I

    .line 225
    .line 226
    if-nez v8, :cond_7

    .line 227
    .line 228
    iget-wide v7, v3, Lj3/p;->g:J

    .line 229
    .line 230
    sub-long v7, v14, v7

    .line 231
    .line 232
    move-wide/from16 v25, v7

    .line 233
    .line 234
    iget-wide v7, v3, Lj3/p;->f:J

    .line 235
    .line 236
    cmp-long v7, v25, v7

    .line 237
    .line 238
    if-gez v7, :cond_7

    .line 239
    .line 240
    :goto_5
    move-object/from16 v25, v1

    .line 241
    .line 242
    move-object/from16 v28, v2

    .line 243
    .line 244
    move-object v0, v3

    .line 245
    move-object/from16 v27, v4

    .line 246
    .line 247
    goto/16 :goto_b

    .line 248
    .line 249
    :cond_7
    iput-wide v14, v3, Lj3/p;->g:J

    .line 250
    .line 251
    iget-object v7, v6, Lj3/o;->a:Landroid/media/AudioTrack;

    .line 252
    .line 253
    iget-object v8, v6, Lj3/o;->b:Landroid/media/AudioTimestamp;

    .line 254
    .line 255
    invoke-virtual {v7, v8}, Landroid/media/AudioTrack;->getTimestamp(Landroid/media/AudioTimestamp;)Z

    .line 256
    .line 257
    .line 258
    move-result v7

    .line 259
    if-eqz v7, :cond_a

    .line 260
    .line 261
    move-object/from16 v25, v1

    .line 262
    .line 263
    iget-wide v0, v8, Landroid/media/AudioTimestamp;->framePosition:J

    .line 264
    .line 265
    move-wide/from16 v26, v9

    .line 266
    .line 267
    iget-wide v9, v6, Lj3/o;->d:J

    .line 268
    .line 269
    cmp-long v28, v9, v0

    .line 270
    .line 271
    if-lez v28, :cond_9

    .line 272
    .line 273
    move-object/from16 v28, v2

    .line 274
    .line 275
    iget-boolean v2, v6, Lj3/o;->f:Z

    .line 276
    .line 277
    if-eqz v2, :cond_8

    .line 278
    .line 279
    move-wide/from16 v29, v9

    .line 280
    .line 281
    iget-wide v9, v6, Lj3/o;->g:J

    .line 282
    .line 283
    add-long v9, v9, v29

    .line 284
    .line 285
    iput-wide v9, v6, Lj3/o;->g:J

    .line 286
    .line 287
    const/4 v2, 0x0

    .line 288
    iput-boolean v2, v6, Lj3/o;->f:Z

    .line 289
    .line 290
    goto :goto_6

    .line 291
    :cond_8
    iget-wide v9, v6, Lj3/o;->c:J

    .line 292
    .line 293
    const-wide/16 v29, 0x1

    .line 294
    .line 295
    add-long v9, v9, v29

    .line 296
    .line 297
    iput-wide v9, v6, Lj3/o;->c:J

    .line 298
    .line 299
    goto :goto_6

    .line 300
    :cond_9
    move-object/from16 v28, v2

    .line 301
    .line 302
    :goto_6
    iput-wide v0, v6, Lj3/o;->d:J

    .line 303
    .line 304
    iget-wide v9, v6, Lj3/o;->g:J

    .line 305
    .line 306
    add-long/2addr v0, v9

    .line 307
    iget-wide v9, v6, Lj3/o;->c:J

    .line 308
    .line 309
    const/16 v2, 0x20

    .line 310
    .line 311
    shl-long/2addr v9, v2

    .line 312
    add-long/2addr v0, v9

    .line 313
    iput-wide v0, v6, Lj3/o;->e:J

    .line 314
    .line 315
    goto :goto_7

    .line 316
    :cond_a
    move-object/from16 v25, v1

    .line 317
    .line 318
    move-object/from16 v28, v2

    .line 319
    .line 320
    move-wide/from16 v26, v9

    .line 321
    .line 322
    :goto_7
    if-eqz v7, :cond_d

    .line 323
    .line 324
    iget-object v1, v3, Lj3/p;->c:Lcom/google/common/base/a0;

    .line 325
    .line 326
    iget-wide v9, v8, Landroid/media/AudioTimestamp;->nanoTime:J

    .line 327
    .line 328
    div-long v9, v9, v16

    .line 329
    .line 330
    move-object/from16 v29, v1

    .line 331
    .line 332
    iget-wide v0, v12, Lj3/o;->e:J

    .line 333
    .line 334
    iget-object v2, v12, Lj3/o;->b:Landroid/media/AudioTimestamp;

    .line 335
    .line 336
    move/from16 v32, v7

    .line 337
    .line 338
    move-object/from16 v31, v8

    .line 339
    .line 340
    iget-wide v7, v2, Landroid/media/AudioTimestamp;->nanoTime:J

    .line 341
    .line 342
    div-long v7, v7, v16

    .line 343
    .line 344
    invoke-static {v13, v0, v1}, Le3/e0;->V(IJ)J

    .line 345
    .line 346
    .line 347
    move-result-wide v0

    .line 348
    sub-long v7, v14, v7

    .line 349
    .line 350
    invoke-static {v7, v8, v5}, Le3/e0;->A(JF)J

    .line 351
    .line 352
    .line 353
    move-result-wide v7

    .line 354
    add-long/2addr v7, v0

    .line 355
    sub-long v0, v9, v14

    .line 356
    .line 357
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    .line 358
    .line 359
    .line 360
    move-result-wide v0

    .line 361
    const-wide/32 v33, 0x4c4b40

    .line 362
    .line 363
    .line 364
    cmp-long v0, v0, v33

    .line 365
    .line 366
    const-string v1, ", "

    .line 367
    .line 368
    if-lez v0, :cond_b

    .line 369
    .line 370
    iget-wide v7, v6, Lj3/o;->e:J

    .line 371
    .line 372
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 373
    .line 374
    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    .line 376
    .line 377
    const-string v2, "Spurious audio timestamp (system clock mismatch): "

    .line 378
    .line 379
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-static {v0, v1, v14, v15, v1}, Lcom/google/common/util/concurrent/c0;->E(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 392
    .line 393
    .line 394
    move-wide/from16 v7, v26

    .line 395
    .line 396
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    move-object/from16 v1, v29

    .line 403
    .line 404
    iget-object v1, v1, Lcom/google/common/base/a0;->a:Ljava/lang/Object;

    .line 405
    .line 406
    check-cast v1, Lj3/w;

    .line 407
    .line 408
    invoke-virtual {v1}, Lj3/w;->b()J

    .line 409
    .line 410
    .line 411
    move-result-wide v1

    .line 412
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    invoke-static {v11, v0}, Le3/a;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    const/4 v2, 0x4

    .line 423
    invoke-virtual {v3, v2}, Lj3/p;->a(I)V

    .line 424
    .line 425
    .line 426
    move-object v0, v3

    .line 427
    move-object/from16 v27, v4

    .line 428
    .line 429
    goto :goto_8

    .line 430
    :cond_b
    move-object v0, v3

    .line 431
    move-wide/from16 v2, v26

    .line 432
    .line 433
    sub-long/2addr v7, v2

    .line 434
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    .line 435
    .line 436
    .line 437
    move-result-wide v7

    .line 438
    cmp-long v7, v7, v33

    .line 439
    .line 440
    if-lez v7, :cond_c

    .line 441
    .line 442
    iget-wide v7, v6, Lj3/o;->e:J

    .line 443
    .line 444
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 445
    .line 446
    .line 447
    move-object/from16 v26, v0

    .line 448
    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    .line 450
    .line 451
    move-object/from16 v27, v4

    .line 452
    .line 453
    const-string v4, "Spurious audio timestamp (frame position mismatch): "

    .line 454
    .line 455
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    .line 463
    .line 464
    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    invoke-static {v0, v1, v14, v15, v1}, Lcom/google/common/util/concurrent/c0;->E(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 471
    .line 472
    .line 473
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    move-object/from16 v1, v29

    .line 477
    .line 478
    iget-object v1, v1, Lcom/google/common/base/a0;->a:Ljava/lang/Object;

    .line 479
    .line 480
    check-cast v1, Lj3/w;

    .line 481
    .line 482
    invoke-virtual {v1}, Lj3/w;->b()J

    .line 483
    .line 484
    .line 485
    move-result-wide v1

    .line 486
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    .line 489
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v0

    .line 493
    invoke-static {v11, v0}, Le3/a;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    move-object/from16 v0, v26

    .line 497
    .line 498
    const/4 v2, 0x4

    .line 499
    invoke-virtual {v0, v2}, Lj3/p;->a(I)V

    .line 500
    .line 501
    .line 502
    goto :goto_9

    .line 503
    :cond_c
    move-object/from16 v27, v4

    .line 504
    .line 505
    const/4 v2, 0x4

    .line 506
    iget v1, v0, Lj3/p;->d:I

    .line 507
    .line 508
    if-ne v1, v2, :cond_e

    .line 509
    .line 510
    const/4 v1, 0x0

    .line 511
    invoke-virtual {v0, v1}, Lj3/p;->a(I)V

    .line 512
    .line 513
    .line 514
    goto :goto_9

    .line 515
    :cond_d
    move-object v0, v3

    .line 516
    move-object/from16 v27, v4

    .line 517
    .line 518
    move/from16 v32, v7

    .line 519
    .line 520
    move-object/from16 v31, v8

    .line 521
    .line 522
    :goto_8
    const/4 v2, 0x4

    .line 523
    :cond_e
    :goto_9
    iget v1, v0, Lj3/p;->d:I

    .line 524
    .line 525
    if-eqz v1, :cond_17

    .line 526
    .line 527
    const/4 v8, 0x1

    .line 528
    if-eq v1, v8, :cond_12

    .line 529
    .line 530
    const/4 v4, 0x2

    .line 531
    if-eq v1, v4, :cond_11

    .line 532
    .line 533
    const/4 v3, 0x3

    .line 534
    if-eq v1, v3, :cond_10

    .line 535
    .line 536
    if-ne v1, v2, :cond_f

    .line 537
    .line 538
    goto/16 :goto_b

    .line 539
    .line 540
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 541
    .line 542
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 543
    .line 544
    .line 545
    throw v0

    .line 546
    :cond_10
    if-eqz v32, :cond_1a

    .line 547
    .line 548
    const/4 v1, 0x0

    .line 549
    invoke-virtual {v0, v1}, Lj3/p;->a(I)V

    .line 550
    .line 551
    .line 552
    goto/16 :goto_c

    .line 553
    .line 554
    :cond_11
    const/4 v1, 0x0

    .line 555
    if-nez v32, :cond_1b

    .line 556
    .line 557
    invoke-virtual {v0, v1}, Lj3/p;->a(I)V

    .line 558
    .line 559
    .line 560
    goto/16 :goto_c

    .line 561
    .line 562
    :cond_12
    move-object/from16 v3, v31

    .line 563
    .line 564
    if-eqz v32, :cond_16

    .line 565
    .line 566
    iget-wide v1, v6, Lj3/o;->e:J

    .line 567
    .line 568
    iget-wide v9, v0, Lj3/p;->h:J

    .line 569
    .line 570
    cmp-long v1, v1, v9

    .line 571
    .line 572
    if-gtz v1, :cond_13

    .line 573
    .line 574
    goto :goto_a

    .line 575
    :cond_13
    iget-wide v1, v0, Lj3/p;->i:J

    .line 576
    .line 577
    invoke-static {v13, v9, v10}, Le3/e0;->V(IJ)J

    .line 578
    .line 579
    .line 580
    move-result-wide v9

    .line 581
    sub-long v1, v14, v1

    .line 582
    .line 583
    invoke-static {v1, v2, v5}, Le3/e0;->A(JF)J

    .line 584
    .line 585
    .line 586
    move-result-wide v1

    .line 587
    add-long/2addr v1, v9

    .line 588
    iget-wide v9, v12, Lj3/o;->e:J

    .line 589
    .line 590
    iget-object v4, v12, Lj3/o;->b:Landroid/media/AudioTimestamp;

    .line 591
    .line 592
    iget-wide v11, v4, Landroid/media/AudioTimestamp;->nanoTime:J

    .line 593
    .line 594
    div-long v11, v11, v16

    .line 595
    .line 596
    invoke-static {v13, v9, v10}, Le3/e0;->V(IJ)J

    .line 597
    .line 598
    .line 599
    move-result-wide v9

    .line 600
    sub-long v11, v14, v11

    .line 601
    .line 602
    invoke-static {v11, v12, v5}, Le3/e0;->A(JF)J

    .line 603
    .line 604
    .line 605
    move-result-wide v4

    .line 606
    add-long/2addr v4, v9

    .line 607
    sub-long/2addr v4, v1

    .line 608
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    .line 609
    .line 610
    .line 611
    move-result-wide v1

    .line 612
    cmp-long v1, v1, v16

    .line 613
    .line 614
    if-gez v1, :cond_14

    .line 615
    .line 616
    const/4 v4, 0x2

    .line 617
    invoke-virtual {v0, v4}, Lj3/p;->a(I)V

    .line 618
    .line 619
    .line 620
    goto :goto_b

    .line 621
    :cond_14
    :goto_a
    iget-wide v1, v0, Lj3/p;->e:J

    .line 622
    .line 623
    sub-long/2addr v14, v1

    .line 624
    const-wide/32 v1, 0x1e8480

    .line 625
    .line 626
    .line 627
    cmp-long v1, v14, v1

    .line 628
    .line 629
    if-lez v1, :cond_15

    .line 630
    .line 631
    const/4 v1, 0x3

    .line 632
    invoke-virtual {v0, v1}, Lj3/p;->a(I)V

    .line 633
    .line 634
    .line 635
    goto :goto_b

    .line 636
    :cond_15
    iget-wide v1, v6, Lj3/o;->e:J

    .line 637
    .line 638
    iput-wide v1, v0, Lj3/p;->h:J

    .line 639
    .line 640
    iget-wide v1, v3, Landroid/media/AudioTimestamp;->nanoTime:J

    .line 641
    .line 642
    div-long v1, v1, v16

    .line 643
    .line 644
    iput-wide v1, v0, Lj3/p;->i:J

    .line 645
    .line 646
    goto :goto_b

    .line 647
    :cond_16
    const/4 v1, 0x0

    .line 648
    invoke-virtual {v0, v1}, Lj3/p;->a(I)V

    .line 649
    .line 650
    .line 651
    goto :goto_c

    .line 652
    :cond_17
    move-object/from16 v3, v31

    .line 653
    .line 654
    const/4 v1, 0x0

    .line 655
    if-eqz v32, :cond_18

    .line 656
    .line 657
    iget-wide v2, v3, Landroid/media/AudioTimestamp;->nanoTime:J

    .line 658
    .line 659
    div-long v4, v2, v16

    .line 660
    .line 661
    iget-wide v9, v0, Lj3/p;->e:J

    .line 662
    .line 663
    cmp-long v4, v4, v9

    .line 664
    .line 665
    if-ltz v4, :cond_1b

    .line 666
    .line 667
    iget-wide v4, v6, Lj3/o;->e:J

    .line 668
    .line 669
    iput-wide v4, v0, Lj3/p;->h:J

    .line 670
    .line 671
    div-long v2, v2, v16

    .line 672
    .line 673
    iput-wide v2, v0, Lj3/p;->i:J

    .line 674
    .line 675
    const/4 v8, 0x1

    .line 676
    invoke-virtual {v0, v8}, Lj3/p;->a(I)V

    .line 677
    .line 678
    .line 679
    goto :goto_c

    .line 680
    :cond_18
    iget-wide v2, v0, Lj3/p;->e:J

    .line 681
    .line 682
    sub-long/2addr v14, v2

    .line 683
    cmp-long v2, v14, v20

    .line 684
    .line 685
    if-lez v2, :cond_1b

    .line 686
    .line 687
    const/4 v3, 0x3

    .line 688
    invoke-virtual {v0, v3}, Lj3/p;->a(I)V

    .line 689
    .line 690
    .line 691
    goto :goto_c

    .line 692
    :cond_19
    move-object/from16 v25, v1

    .line 693
    .line 694
    move-object/from16 v28, v2

    .line 695
    .line 696
    move-object v0, v3

    .line 697
    move-object/from16 v27, v4

    .line 698
    .line 699
    move-wide/from16 v16, v7

    .line 700
    .line 701
    :cond_1a
    :goto_b
    const/4 v1, 0x0

    .line 702
    :cond_1b
    :goto_c
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 703
    .line 704
    .line 705
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 706
    .line 707
    .line 708
    move-result-wide v2

    .line 709
    div-long v2, v2, v16

    .line 710
    .line 711
    iget v4, v0, Lj3/p;->d:I

    .line 712
    .line 713
    const/4 v5, 0x2

    .line 714
    if-ne v4, v5, :cond_1c

    .line 715
    .line 716
    const/4 v11, 0x1

    .line 717
    goto :goto_d

    .line 718
    :cond_1c
    move v11, v1

    .line 719
    :goto_d
    if-eqz v11, :cond_1d

    .line 720
    .line 721
    move-object/from16 v1, v25

    .line 722
    .line 723
    iget v4, v1, Lj3/y;->i:F

    .line 724
    .line 725
    iget-object v5, v0, Lj3/p;->a:Lj3/o;

    .line 726
    .line 727
    iget-wide v6, v5, Lj3/o;->e:J

    .line 728
    .line 729
    iget-object v5, v5, Lj3/o;->b:Landroid/media/AudioTimestamp;

    .line 730
    .line 731
    iget-wide v9, v5, Landroid/media/AudioTimestamp;->nanoTime:J

    .line 732
    .line 733
    div-long v9, v9, v16

    .line 734
    .line 735
    iget v5, v0, Lj3/p;->b:I

    .line 736
    .line 737
    invoke-static {v5, v6, v7}, Le3/e0;->V(IJ)J

    .line 738
    .line 739
    .line 740
    move-result-wide v5

    .line 741
    sub-long v9, v2, v9

    .line 742
    .line 743
    invoke-static {v9, v10, v4}, Le3/e0;->A(JF)J

    .line 744
    .line 745
    .line 746
    move-result-wide v9

    .line 747
    add-long/2addr v9, v5

    .line 748
    :goto_e
    move-wide v12, v9

    .line 749
    goto :goto_f

    .line 750
    :cond_1d
    move-object/from16 v1, v25

    .line 751
    .line 752
    invoke-virtual {v1, v2, v3}, Lj3/y;->b(J)J

    .line 753
    .line 754
    .line 755
    move-result-wide v9

    .line 756
    goto :goto_e

    .line 757
    :goto_f
    invoke-virtual/range {v27 .. v27}, Landroid/media/AudioTrack;->getPlayState()I

    .line 758
    .line 759
    .line 760
    move-result v4

    .line 761
    const/4 v5, 0x3

    .line 762
    if-ne v4, v5, :cond_21

    .line 763
    .line 764
    if-nez v11, :cond_1e

    .line 765
    .line 766
    iget v0, v0, Lj3/p;->d:I

    .line 767
    .line 768
    if-eqz v0, :cond_1f

    .line 769
    .line 770
    const/4 v8, 0x1

    .line 771
    if-ne v0, v8, :cond_1e

    .line 772
    .line 773
    goto :goto_10

    .line 774
    :cond_1e
    invoke-virtual {v1, v12, v13}, Lj3/y;->d(J)V

    .line 775
    .line 776
    .line 777
    :cond_1f
    :goto_10
    iget-wide v4, v1, Lj3/y;->z:J

    .line 778
    .line 779
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    cmp-long v0, v4, v6

    .line 785
    .line 786
    if-eqz v0, :cond_20

    .line 787
    .line 788
    sub-long v4, v2, v4

    .line 789
    .line 790
    iget-wide v6, v1, Lj3/y;->y:J

    .line 791
    .line 792
    sub-long v6, v12, v6

    .line 793
    .line 794
    iget v0, v1, Lj3/y;->i:F

    .line 795
    .line 796
    invoke-static {v4, v5, v0}, Le3/e0;->A(JF)J

    .line 797
    .line 798
    .line 799
    move-result-wide v4

    .line 800
    iget-wide v8, v1, Lj3/y;->y:J

    .line 801
    .line 802
    add-long/2addr v8, v4

    .line 803
    sub-long v10, v8, v12

    .line 804
    .line 805
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    .line 806
    .line 807
    .line 808
    move-result-wide v10

    .line 809
    const-wide/16 v23, 0x0

    .line 810
    .line 811
    cmp-long v0, v6, v23

    .line 812
    .line 813
    if-eqz v0, :cond_20

    .line 814
    .line 815
    const-wide/32 v6, 0xf4240

    .line 816
    .line 817
    .line 818
    cmp-long v0, v10, v6

    .line 819
    .line 820
    if-gez v0, :cond_20

    .line 821
    .line 822
    const-wide/16 v6, 0xa

    .line 823
    .line 824
    mul-long/2addr v4, v6

    .line 825
    const-wide/16 v6, 0x64

    .line 826
    .line 827
    div-long/2addr v4, v6

    .line 828
    sub-long v14, v8, v4

    .line 829
    .line 830
    add-long v16, v8, v4

    .line 831
    .line 832
    invoke-static/range {v12 .. v17}, Le3/e0;->j(JJJ)J

    .line 833
    .line 834
    .line 835
    move-result-wide v12

    .line 836
    :cond_20
    iput-wide v2, v1, Lj3/y;->z:J

    .line 837
    .line 838
    iput-wide v12, v1, Lj3/y;->y:J

    .line 839
    .line 840
    goto :goto_11

    .line 841
    :cond_21
    const/4 v8, 0x1

    .line 842
    if-ne v4, v8, :cond_22

    .line 843
    .line 844
    invoke-virtual {v1, v12, v13}, Lj3/y;->d(J)V

    .line 845
    .line 846
    .line 847
    :cond_22
    :goto_11
    return-wide v12
.end method

.method public final b()J
    .locals 6

    .line 1
    iget-boolean v0, p0, Lj3/w;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-wide v0, p0, Lj3/w;->l:J

    .line 6
    .line 7
    iget v2, p0, Lj3/w;->h:I

    .line 8
    .line 9
    int-to-long v2, v2

    .line 10
    sget-object v4, Le3/e0;->a:Ljava/lang/String;

    .line 11
    .line 12
    add-long/2addr v0, v2

    .line 13
    const-wide/16 v4, 0x1

    .line 14
    .line 15
    sub-long/2addr v0, v4

    .line 16
    div-long/2addr v0, v2

    .line 17
    return-wide v0

    .line 18
    :cond_0
    iget-wide v0, p0, Lj3/w;->m:J

    .line 19
    .line 20
    return-wide v0
.end method

.method public final c()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lj3/w;->a:Landroid/media/AudioTrack;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/media/AudioTrack;->isOffloadedPlayback()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    return v0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method public final d(II)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lj3/w;->a:Landroid/media/AudioTrack;

    .line 9
    .line 10
    invoke-virtual {v0, p1, p2}, Landroid/media/AudioTrack;->setOffloadDelayPadding(II)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final e()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lj3/w;->a:Landroid/media/AudioTrack;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x3

    .line 15
    if-eq v1, v2, :cond_1

    .line 16
    .line 17
    :goto_0
    return-void

    .line 18
    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioTrack;->setOffloadEndOfStream()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lj3/w;->f:Lj3/y;

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    iput-boolean v1, v0, Lj3/y;->A:Z

    .line 25
    .line 26
    iget-object v0, v0, Lj3/y;->h:Lj3/p;

    .line 27
    .line 28
    iget-object v0, v0, Lj3/p;->a:Lj3/o;

    .line 29
    .line 30
    iput-boolean v1, v0, Lj3/o;->f:Z

    .line 31
    .line 32
    return-void
.end method

.method public final f(Li3/j;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Li3/j;->a()Landroid/media/metrics/LogSessionId;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {}, Li3/d;->e()Landroid/media/metrics/LogSessionId;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1, v0}, Landroid/media/metrics/LogSessionId;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lj3/w;->a:Landroid/media/AudioTrack;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Landroid/media/AudioTrack;->setLogSessionId(Landroid/media/metrics/LogSessionId;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    return-void
.end method

.method public final g(Ljava/nio/ByteBuffer;IJ)Z
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-wide/from16 v3, p3

    .line 6
    .line 7
    iget-object v1, v0, Lj3/w;->b:Lj3/k;

    .line 8
    .line 9
    iget-boolean v7, v0, Lj3/w;->g:Z

    .line 10
    .line 11
    if-nez v7, :cond_0

    .line 12
    .line 13
    iget v5, v0, Lj3/w;->q:I

    .line 14
    .line 15
    if-nez v5, :cond_0

    .line 16
    .line 17
    iget v5, v1, Lj3/k;->a:I

    .line 18
    .line 19
    invoke-static {v5, v2}, Lj3/f0;->i(ILjava/nio/ByteBuffer;)I

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    iput v5, v0, Lj3/w;->q:I

    .line 24
    .line 25
    :cond_0
    iget-object v5, v0, Lj3/w;->j:Le3/l;

    .line 26
    .line 27
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    iget-object v8, v5, Le3/l;->a:Ljava/lang/Thread;

    .line 35
    .line 36
    const/16 v9, 0x18

    .line 37
    .line 38
    iget-object v10, v0, Lj3/w;->a:Landroid/media/AudioTrack;

    .line 39
    .line 40
    const/4 v11, 0x0

    .line 41
    const/4 v12, 0x1

    .line 42
    if-ne v6, v8, :cond_5

    .line 43
    .line 44
    invoke-virtual {v0}, Lj3/w;->b()J

    .line 45
    .line 46
    .line 47
    move-result-wide v13

    .line 48
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 49
    .line 50
    if-lt v6, v9, :cond_1

    .line 51
    .line 52
    invoke-virtual {v10}, Landroid/media/AudioTrack;->getUnderrunCount()I

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    move-object/from16 v22, v10

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    iget-boolean v6, v0, Lj3/w;->s:Z

    .line 60
    .line 61
    invoke-virtual {v0}, Lj3/w;->a()J

    .line 62
    .line 63
    .line 64
    move-result-wide v15

    .line 65
    invoke-virtual {v10}, Landroid/media/AudioTrack;->getSampleRate()I

    .line 66
    .line 67
    .line 68
    move-result v8

    .line 69
    sget-object v17, Le3/e0;->a:Ljava/lang/String;

    .line 70
    .line 71
    move-object/from16 v22, v10

    .line 72
    .line 73
    int-to-long v9, v8

    .line 74
    const-wide/32 v19, 0xf4240

    .line 75
    .line 76
    .line 77
    sget-object v21, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    .line 78
    .line 79
    move-wide/from16 v17, v9

    .line 80
    .line 81
    invoke-static/range {v15 .. v21}, Le3/e0;->X(JJJLjava/math/RoundingMode;)J

    .line 82
    .line 83
    .line 84
    move-result-wide v8

    .line 85
    cmp-long v8, v13, v8

    .line 86
    .line 87
    if-lez v8, :cond_2

    .line 88
    .line 89
    move v8, v12

    .line 90
    goto :goto_0

    .line 91
    :cond_2
    move v8, v11

    .line 92
    :goto_0
    iput-boolean v8, v0, Lj3/w;->s:Z

    .line 93
    .line 94
    if-eqz v6, :cond_3

    .line 95
    .line 96
    if-nez v8, :cond_3

    .line 97
    .line 98
    invoke-virtual/range {v22 .. v22}, Landroid/media/AudioTrack;->getPlayState()I

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    if-eq v6, v12, :cond_3

    .line 103
    .line 104
    iget v6, v0, Lj3/w;->r:I

    .line 105
    .line 106
    add-int/2addr v6, v12

    .line 107
    goto :goto_1

    .line 108
    :cond_3
    iget v6, v0, Lj3/w;->r:I

    .line 109
    .line 110
    :goto_1
    iget v8, v0, Lj3/w;->r:I

    .line 111
    .line 112
    if-le v6, v8, :cond_4

    .line 113
    .line 114
    move v8, v12

    .line 115
    goto :goto_2

    .line 116
    :cond_4
    move v8, v11

    .line 117
    :goto_2
    iput v6, v0, Lj3/w;->r:I

    .line 118
    .line 119
    if-eqz v8, :cond_6

    .line 120
    .line 121
    new-instance v6, Li3/d;

    .line 122
    .line 123
    const/16 v8, 0xe

    .line 124
    .line 125
    invoke-direct {v6, v8}, Li3/d;-><init>(I)V

    .line 126
    .line 127
    .line 128
    const/4 v8, -0x1

    .line 129
    invoke-virtual {v5, v8, v6}, Le3/l;->e(ILe3/i;)V

    .line 130
    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_5
    move-object/from16 v22, v10

    .line 134
    .line 135
    :cond_6
    :goto_3
    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    .line 136
    .line 137
    .line 138
    move-result v8

    .line 139
    iget-boolean v1, v1, Lj3/k;->d:Z

    .line 140
    .line 141
    if-eqz v1, :cond_e

    .line 142
    .line 143
    const-wide/high16 v5, -0x8000000000000000L

    .line 144
    .line 145
    cmp-long v1, v3, v5

    .line 146
    .line 147
    if-nez v1, :cond_7

    .line 148
    .line 149
    iget-wide v3, v0, Lj3/w;->n:J

    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_7
    iput-wide v3, v0, Lj3/w;->n:J

    .line 153
    .line 154
    :goto_4
    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 159
    .line 160
    const/16 v6, 0x1a

    .line 161
    .line 162
    const-wide/16 v9, 0x3e8

    .line 163
    .line 164
    if-lt v5, v6, :cond_8

    .line 165
    .line 166
    move-wide v5, v3

    .line 167
    const/4 v4, 0x1

    .line 168
    mul-long/2addr v5, v9

    .line 169
    move v3, v1

    .line 170
    move-object/from16 v1, v22

    .line 171
    .line 172
    invoke-virtual/range {v1 .. v6}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;IIJ)I

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    goto/16 :goto_5

    .line 177
    .line 178
    :cond_8
    move-wide v5, v3

    .line 179
    move v3, v1

    .line 180
    move-object/from16 v1, v22

    .line 181
    .line 182
    iget-object v4, v0, Lj3/w;->o:Ljava/nio/ByteBuffer;

    .line 183
    .line 184
    if-nez v4, :cond_9

    .line 185
    .line 186
    const/16 v4, 0x10

    .line 187
    .line 188
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    iput-object v4, v0, Lj3/w;->o:Ljava/nio/ByteBuffer;

    .line 193
    .line 194
    sget-object v13, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 195
    .line 196
    invoke-virtual {v4, v13}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 197
    .line 198
    .line 199
    iget-object v4, v0, Lj3/w;->o:Ljava/nio/ByteBuffer;

    .line 200
    .line 201
    const v13, 0x55550001

    .line 202
    .line 203
    .line 204
    invoke-virtual {v4, v13}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 205
    .line 206
    .line 207
    :cond_9
    iget v4, v0, Lj3/w;->p:I

    .line 208
    .line 209
    if-nez v4, :cond_a

    .line 210
    .line 211
    iget-object v4, v0, Lj3/w;->o:Ljava/nio/ByteBuffer;

    .line 212
    .line 213
    const/4 v13, 0x4

    .line 214
    invoke-virtual {v4, v13, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 215
    .line 216
    .line 217
    iget-object v4, v0, Lj3/w;->o:Ljava/nio/ByteBuffer;

    .line 218
    .line 219
    const/16 v13, 0x8

    .line 220
    .line 221
    mul-long/2addr v5, v9

    .line 222
    invoke-virtual {v4, v13, v5, v6}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 223
    .line 224
    .line 225
    iget-object v4, v0, Lj3/w;->o:Ljava/nio/ByteBuffer;

    .line 226
    .line 227
    invoke-virtual {v4, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 228
    .line 229
    .line 230
    iput v3, v0, Lj3/w;->p:I

    .line 231
    .line 232
    :cond_a
    iget-object v4, v0, Lj3/w;->o:Ljava/nio/ByteBuffer;

    .line 233
    .line 234
    invoke-virtual {v4}, Ljava/nio/Buffer;->remaining()I

    .line 235
    .line 236
    .line 237
    move-result v4

    .line 238
    if-lez v4, :cond_c

    .line 239
    .line 240
    iget-object v5, v0, Lj3/w;->o:Ljava/nio/ByteBuffer;

    .line 241
    .line 242
    invoke-virtual {v1, v5, v4, v12}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    .line 243
    .line 244
    .line 245
    move-result v5

    .line 246
    if-gez v5, :cond_b

    .line 247
    .line 248
    iput v11, v0, Lj3/w;->p:I

    .line 249
    .line 250
    move v1, v5

    .line 251
    goto :goto_5

    .line 252
    :cond_b
    if-ge v5, v4, :cond_c

    .line 253
    .line 254
    move v1, v11

    .line 255
    goto :goto_5

    .line 256
    :cond_c
    invoke-virtual {v1, v2, v3, v12}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    .line 257
    .line 258
    .line 259
    move-result v1

    .line 260
    if-gez v1, :cond_d

    .line 261
    .line 262
    iput v11, v0, Lj3/w;->p:I

    .line 263
    .line 264
    goto :goto_5

    .line 265
    :cond_d
    iget v2, v0, Lj3/w;->p:I

    .line 266
    .line 267
    sub-int/2addr v2, v1

    .line 268
    iput v2, v0, Lj3/w;->p:I

    .line 269
    .line 270
    goto :goto_5

    .line 271
    :cond_e
    move-object/from16 v1, v22

    .line 272
    .line 273
    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    .line 274
    .line 275
    .line 276
    move-result v3

    .line 277
    invoke-virtual {v1, v2, v3, v12}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    .line 278
    .line 279
    .line 280
    move-result v1

    .line 281
    :goto_5
    if-gez v1, :cond_13

    .line 282
    .line 283
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 284
    .line 285
    const/16 v3, 0x18

    .line 286
    .line 287
    if-lt v2, v3, :cond_f

    .line 288
    .line 289
    const/4 v2, -0x6

    .line 290
    if-eq v1, v2, :cond_10

    .line 291
    .line 292
    :cond_f
    const/16 v2, -0x20

    .line 293
    .line 294
    if-ne v1, v2, :cond_11

    .line 295
    .line 296
    :cond_10
    move v11, v12

    .line 297
    :cond_11
    if-eqz v11, :cond_12

    .line 298
    .line 299
    iget-object v2, v0, Lj3/w;->d:Landroidx/work/impl/utils/l;

    .line 300
    .line 301
    if-eqz v2, :cond_12

    .line 302
    .line 303
    iget-object v2, v2, Landroidx/work/impl/utils/l;->b:Ljava/lang/Object;

    .line 304
    .line 305
    check-cast v2, Lj3/x;

    .line 306
    .line 307
    iget-object v3, v2, Lj3/x;->i:Lj3/e;

    .line 308
    .line 309
    if-eqz v3, :cond_12

    .line 310
    .line 311
    sget-object v4, Lj3/b;->f:Lj3/b;

    .line 312
    .line 313
    iput-object v4, v2, Lj3/x;->h:Lj3/b;

    .line 314
    .line 315
    invoke-virtual {v3, v4}, Lj3/e;->b(Lj3/b;)V

    .line 316
    .line 317
    .line 318
    :cond_12
    new-instance v2, Landroidx/media3/exoplayer/audio/AudioOutput$WriteException;

    .line 319
    .line 320
    invoke-direct {v2, v1, v11}, Landroidx/media3/exoplayer/audio/AudioOutput$WriteException;-><init>(IZ)V

    .line 321
    .line 322
    .line 323
    throw v2

    .line 324
    :cond_13
    if-ne v1, v8, :cond_14

    .line 325
    .line 326
    move v11, v12

    .line 327
    :cond_14
    if-eqz v7, :cond_15

    .line 328
    .line 329
    iget-wide v2, v0, Lj3/w;->l:J

    .line 330
    .line 331
    int-to-long v4, v1

    .line 332
    add-long/2addr v2, v4

    .line 333
    iput-wide v2, v0, Lj3/w;->l:J

    .line 334
    .line 335
    return v11

    .line 336
    :cond_15
    if-eqz v11, :cond_16

    .line 337
    .line 338
    iget-wide v1, v0, Lj3/w;->m:J

    .line 339
    .line 340
    iget v3, v0, Lj3/w;->q:I

    .line 341
    .line 342
    int-to-long v3, v3

    .line 343
    move/from16 v5, p2

    .line 344
    .line 345
    int-to-long v5, v5

    .line 346
    mul-long/2addr v3, v5

    .line 347
    add-long/2addr v3, v1

    .line 348
    iput-wide v3, v0, Lj3/w;->m:J

    .line 349
    .line 350
    :cond_16
    return v11
.end method
