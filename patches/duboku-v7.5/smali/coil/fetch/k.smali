.class public final Lcoil/fetch/k;
.super Ljava/lang/Object;
.source "r8-map-id-8ba8015df6390efac2340e8bc72cbaa0af05ae8dc58e92835996b10ae6d6a13d"

# interfaces
.implements Lcoil/fetch/h;


# static fields
.field public static final f:Lokhttp3/g;

.field public static final g:Lokhttp3/g;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcoil/request/k;

.field public final c:Lkotlin/g;

.field public final d:Lkotlin/g;

.field public final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lokhttp3/g;

    .line 2
    .line 3
    const/4 v12, 0x0

    .line 4
    const/4 v13, 0x0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, -0x1

    .line 8
    const/4 v4, -0x1

    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v6, 0x0

    .line 11
    const/4 v7, 0x0

    .line 12
    const/4 v8, -0x1

    .line 13
    const/4 v9, -0x1

    .line 14
    const/4 v10, 0x0

    .line 15
    const/4 v11, 0x0

    .line 16
    invoke-direct/range {v0 .. v13}, Lokhttp3/g;-><init>(ZZIIZZZIIZZZLjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcoil/fetch/k;->f:Lokhttp3/g;

    .line 20
    .line 21
    new-instance v1, Lokhttp3/g;

    .line 22
    .line 23
    const/4 v13, 0x0

    .line 24
    const/4 v14, 0x0

    .line 25
    const/4 v3, 0x0

    .line 26
    const/4 v5, -0x1

    .line 27
    const/4 v8, 0x0

    .line 28
    const/4 v10, -0x1

    .line 29
    const/4 v11, 0x1

    .line 30
    invoke-direct/range {v1 .. v14}, Lokhttp3/g;-><init>(ZZIIZZZIIZZZLjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sput-object v1, Lcoil/fetch/k;->g:Lokhttp3/g;

    .line 34
    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcoil/request/k;Lkotlin/g;Lkotlin/g;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/supertws/dubokutv/DubokuCompat;->fixImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil/fetch/k;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcoil/fetch/k;->b:Lcoil/request/k;

    .line 7
    .line 8
    iput-object p3, p0, Lcoil/fetch/k;->c:Lkotlin/g;

    .line 9
    .line 10
    iput-object p4, p0, Lcoil/fetch/k;->d:Lkotlin/g;

    .line 11
    .line 12
    iput-boolean p5, p0, Lcoil/fetch/k;->e:Z

    .line 13
    .line 14
    return-void
.end method

.method public static d(Ljava/lang/String;Lokhttp3/x;)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p1, Lokhttp3/x;->a:Ljava/lang/String;

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move-object p1, v0

    .line 8
    :goto_0
    if-eqz p1, :cond_1

    .line 9
    .line 10
    const-string v1, "text/plain"

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-static {p1, v1, v2}, Lkotlin/text/y;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    :cond_1
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v1, p0}, Lcoil/util/h;->b(Landroid/webkit/MimeTypeMap;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    if-eqz p0, :cond_2

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_2
    if-eqz p1, :cond_3

    .line 31
    .line 32
    const/16 p0, 0x3b

    .line 33
    .line 34
    invoke-static {p1, p0}, Lkotlin/text/r;->B0(Ljava/lang/String;C)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0

    .line 39
    :cond_3
    return-object v0
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 13

    .line 1
    instance-of v0, p1, Lcoil/fetch/HttpUriFetcher$fetch$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcoil/fetch/HttpUriFetcher$fetch$1;

    .line 7
    .line 8
    iget v1, v0, Lcoil/fetch/HttpUriFetcher$fetch$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcoil/fetch/HttpUriFetcher$fetch$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcoil/fetch/HttpUriFetcher$fetch$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcoil/fetch/HttpUriFetcher$fetch$1;-><init>(Lcoil/fetch/k;Lkotlin/coroutines/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcoil/fetch/HttpUriFetcher$fetch$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lcoil/fetch/HttpUriFetcher$fetch$1;->label:I

    .line 30
    .line 31
    const-string v3, "response body == null"

    .line 32
    .line 33
    const/4 v4, 0x2

    .line 34
    const/4 v5, 0x1

    .line 35
    const/4 v6, 0x0

    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    if-eq v2, v5, :cond_2

    .line 39
    .line 40
    if-ne v2, v4, :cond_1

    .line 41
    .line 42
    iget-object v1, v0, Lcoil/fetch/HttpUriFetcher$fetch$1;->L$2:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v1, Lokhttp3/i0;

    .line 45
    .line 46
    iget-object v2, v0, Lcoil/fetch/HttpUriFetcher$fetch$1;->L$1:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v2, Lcoil/disk/f;

    .line 49
    .line 50
    iget-object v0, v0, Lcoil/fetch/HttpUriFetcher$fetch$1;->L$0:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v0, Lcoil/fetch/k;

    .line 53
    .line 54
    :try_start_0
    invoke-static {p1}, Lkotlin/l;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    goto/16 :goto_8

    .line 58
    .line 59
    :catch_0
    move-exception p1

    .line 60
    goto/16 :goto_a

    .line 61
    .line 62
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 63
    .line 64
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 65
    .line 66
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p1

    .line 70
    :cond_2
    iget-object v2, v0, Lcoil/fetch/HttpUriFetcher$fetch$1;->L$2:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v2, Lv6/d;

    .line 73
    .line 74
    iget-object v5, v0, Lcoil/fetch/HttpUriFetcher$fetch$1;->L$1:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v5, Lcoil/disk/f;

    .line 77
    .line 78
    iget-object v7, v0, Lcoil/fetch/HttpUriFetcher$fetch$1;->L$0:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v7, Lcoil/fetch/k;

    .line 81
    .line 82
    :try_start_1
    invoke-static {p1}, Lkotlin/l;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 83
    .line 84
    .line 85
    move-object v12, v5

    .line 86
    move-object v5, v2

    .line 87
    move-object v2, v12

    .line 88
    goto/16 :goto_3

    .line 89
    .line 90
    :catch_1
    move-exception p1

    .line 91
    goto/16 :goto_b

    .line 92
    .line 93
    :cond_3
    invoke-static {p1}, Lkotlin/l;->b(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lcoil/fetch/k;->b:Lcoil/request/k;

    .line 97
    .line 98
    iget-object v2, p1, Lcoil/request/k;->n:Lcoil/request/CachePolicy;

    .line 99
    .line 100
    invoke-virtual {v2}, Lcoil/request/CachePolicy;->getReadEnabled()Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    iget-object v7, p0, Lcoil/fetch/k;->a:Ljava/lang/String;

    .line 105
    .line 106
    if-eqz v2, :cond_5

    .line 107
    .line 108
    iget-object v2, p0, Lcoil/fetch/k;->d:Lkotlin/g;

    .line 109
    .line 110
    invoke-interface {v2}, Lkotlin/g;->getValue()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    check-cast v2, Lcoil/disk/g;

    .line 115
    .line 116
    if-eqz v2, :cond_5

    .line 117
    .line 118
    iget-object p1, p1, Lcoil/request/k;->i:Ljava/lang/String;

    .line 119
    .line 120
    if-nez p1, :cond_4

    .line 121
    .line 122
    move-object p1, v7

    .line 123
    :cond_4
    iget-object v2, v2, Lcoil/disk/g;->b:Lcoil/disk/d;

    .line 124
    .line 125
    sget-object v8, Lokio/ByteString;->Companion:Lokio/k;

    .line 126
    .line 127
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    invoke-static {p1}, Lokio/k;->c(Ljava/lang/String;)Lokio/ByteString;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {p1}, Lokio/ByteString;->sha256()Lokio/ByteString;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-virtual {p1}, Lokio/ByteString;->hex()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {v2, p1}, Lcoil/disk/d;->i(Ljava/lang/String;)Lcoil/disk/b;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    if-eqz p1, :cond_5

    .line 147
    .line 148
    new-instance v2, Lcoil/disk/f;

    .line 149
    .line 150
    invoke-direct {v2, p1}, Lcoil/disk/f;-><init>(Lcoil/disk/b;)V

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_5
    move-object v2, v6

    .line 155
    :goto_1
    if-eqz v2, :cond_b

    .line 156
    .line 157
    :try_start_2
    invoke-virtual {p0}, Lcoil/fetch/k;->c()Lokio/n;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    iget-object v8, v2, Lcoil/disk/f;->a:Lcoil/disk/b;

    .line 162
    .line 163
    iget-boolean v9, v8, Lcoil/disk/b;->b:Z

    .line 164
    .line 165
    if-nez v9, :cond_a

    .line 166
    .line 167
    iget-object v8, v8, Lcoil/disk/b;->a:Lcoil/disk/a;

    .line 168
    .line 169
    iget-object v8, v8, Lcoil/disk/a;->c:Ljava/util/ArrayList;

    .line 170
    .line 171
    const/4 v9, 0x0

    .line 172
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v8

    .line 176
    check-cast v8, Lokio/a0;

    .line 177
    .line 178
    invoke-virtual {p1, v8}, Lokio/n;->j(Lokio/a0;)Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/e;->e:Ljava/lang/Object;

    .line 183
    .line 184
    check-cast p1, Ljava/lang/Long;

    .line 185
    .line 186
    if-nez p1, :cond_6

    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 190
    .line 191
    .line 192
    move-result-wide v8

    .line 193
    const-wide/16 v10, 0x0

    .line 194
    .line 195
    cmp-long p1, v8, v10

    .line 196
    .line 197
    if-nez p1, :cond_7

    .line 198
    .line 199
    new-instance p1, Lcoil/fetch/l;

    .line 200
    .line 201
    invoke-virtual {p0, v2}, Lcoil/fetch/k;->g(Lcoil/disk/f;)Lcoil/decode/m;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-static {v7, v6}, Lcoil/fetch/k;->d(Ljava/lang/String;Lokhttp3/x;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    sget-object v3, Lcoil/decode/DataSource;->DISK:Lcoil/decode/DataSource;

    .line 210
    .line 211
    invoke-direct {p1, v0, v1, v3}, Lcoil/fetch/l;-><init>(Lcoil/decode/n;Ljava/lang/String;Lcoil/decode/DataSource;)V

    .line 212
    .line 213
    .line 214
    return-object p1

    .line 215
    :catch_2
    move-exception p1

    .line 216
    move-object v5, v2

    .line 217
    goto/16 :goto_b

    .line 218
    .line 219
    :cond_7
    :goto_2
    iget-boolean p1, p0, Lcoil/fetch/k;->e:Z

    .line 220
    .line 221
    if-eqz p1, :cond_8

    .line 222
    .line 223
    new-instance p1, Lv6/c;

    .line 224
    .line 225
    invoke-virtual {p0}, Lcoil/fetch/k;->e()Lokhttp3/c0;

    .line 226
    .line 227
    .line 228
    move-result-object v8

    .line 229
    invoke-virtual {p0, v2}, Lcoil/fetch/k;->f(Lcoil/disk/f;)Lv6/b;

    .line 230
    .line 231
    .line 232
    move-result-object v9

    .line 233
    invoke-direct {p1, v8, v9}, Lv6/c;-><init>(Lokhttp3/c0;Lv6/b;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {p1}, Lv6/c;->a()Lv6/d;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    iget-object v8, p1, Lv6/d;->b:Lv6/b;

    .line 241
    .line 242
    iget-object v9, p1, Lv6/d;->a:Lokhttp3/c0;

    .line 243
    .line 244
    if-nez v9, :cond_c

    .line 245
    .line 246
    if-eqz v8, :cond_c

    .line 247
    .line 248
    new-instance p1, Lcoil/fetch/l;

    .line 249
    .line 250
    invoke-virtual {p0, v2}, Lcoil/fetch/k;->g(Lcoil/disk/f;)Lcoil/decode/m;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    iget-object v1, v8, Lv6/b;->b:Ljava/lang/Object;

    .line 255
    .line 256
    invoke-interface {v1}, Lkotlin/g;->getValue()Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    check-cast v1, Lokhttp3/x;

    .line 261
    .line 262
    invoke-static {v7, v1}, Lcoil/fetch/k;->d(Ljava/lang/String;Lokhttp3/x;)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    sget-object v3, Lcoil/decode/DataSource;->DISK:Lcoil/decode/DataSource;

    .line 267
    .line 268
    invoke-direct {p1, v0, v1, v3}, Lcoil/fetch/l;-><init>(Lcoil/decode/n;Ljava/lang/String;Lcoil/decode/DataSource;)V

    .line 269
    .line 270
    .line 271
    return-object p1

    .line 272
    :cond_8
    new-instance p1, Lcoil/fetch/l;

    .line 273
    .line 274
    invoke-virtual {p0, v2}, Lcoil/fetch/k;->g(Lcoil/disk/f;)Lcoil/decode/m;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    invoke-virtual {p0, v2}, Lcoil/fetch/k;->f(Lcoil/disk/f;)Lv6/b;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    if-eqz v1, :cond_9

    .line 283
    .line 284
    iget-object v1, v1, Lv6/b;->b:Ljava/lang/Object;

    .line 285
    .line 286
    invoke-interface {v1}, Lkotlin/g;->getValue()Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    move-object v6, v1

    .line 291
    check-cast v6, Lokhttp3/x;

    .line 292
    .line 293
    :cond_9
    invoke-static {v7, v6}, Lcoil/fetch/k;->d(Ljava/lang/String;Lokhttp3/x;)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    sget-object v3, Lcoil/decode/DataSource;->DISK:Lcoil/decode/DataSource;

    .line 298
    .line 299
    invoke-direct {p1, v0, v1, v3}, Lcoil/fetch/l;-><init>(Lcoil/decode/n;Ljava/lang/String;Lcoil/decode/DataSource;)V

    .line 300
    .line 301
    .line 302
    return-object p1

    .line 303
    :cond_a
    const-string p1, "snapshot is closed"

    .line 304
    .line 305
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 306
    .line 307
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    throw v0

    .line 311
    :cond_b
    new-instance p1, Lv6/c;

    .line 312
    .line 313
    invoke-virtual {p0}, Lcoil/fetch/k;->e()Lokhttp3/c0;

    .line 314
    .line 315
    .line 316
    move-result-object v7

    .line 317
    invoke-direct {p1, v7, v6}, Lv6/c;-><init>(Lokhttp3/c0;Lv6/b;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {p1}, Lv6/c;->a()Lv6/d;

    .line 321
    .line 322
    .line 323
    move-result-object p1

    .line 324
    :cond_c
    iget-object v7, p1, Lv6/d;->a:Lokhttp3/c0;

    .line 325
    .line 326
    invoke-static {v7}, Lkotlin/jvm/internal/g;->b(Ljava/lang/Object;)V

    .line 327
    .line 328
    .line 329
    iput-object p0, v0, Lcoil/fetch/HttpUriFetcher$fetch$1;->L$0:Ljava/lang/Object;

    .line 330
    .line 331
    iput-object v2, v0, Lcoil/fetch/HttpUriFetcher$fetch$1;->L$1:Ljava/lang/Object;

    .line 332
    .line 333
    iput-object p1, v0, Lcoil/fetch/HttpUriFetcher$fetch$1;->L$2:Ljava/lang/Object;

    .line 334
    .line 335
    iput v5, v0, Lcoil/fetch/HttpUriFetcher$fetch$1;->label:I

    .line 336
    .line 337
    invoke-virtual {p0, v7, v0}, Lcoil/fetch/k;->b(Lokhttp3/c0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v5

    .line 341
    if-ne v5, v1, :cond_d

    .line 342
    .line 343
    goto/16 :goto_7

    .line 344
    .line 345
    :cond_d
    move-object v7, v5

    .line 346
    move-object v5, p1

    .line 347
    move-object p1, v7

    .line 348
    move-object v7, p0

    .line 349
    :goto_3
    check-cast p1, Lokhttp3/i0;

    .line 350
    .line 351
    sget-object v8, Lcoil/util/h;->a:[Landroid/graphics/Bitmap$Config;

    .line 352
    .line 353
    iget-object v8, p1, Lokhttp3/i0;->i:Lokhttp3/l0;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 354
    .line 355
    if-eqz v8, :cond_15

    .line 356
    .line 357
    :try_start_3
    iget-object v9, v5, Lv6/d;->a:Lokhttp3/c0;

    .line 358
    .line 359
    iget-object v5, v5, Lv6/d;->b:Lv6/b;

    .line 360
    .line 361
    invoke-virtual {v7, v2, v9, p1, v5}, Lcoil/fetch/k;->h(Lcoil/disk/f;Lokhttp3/c0;Lokhttp3/i0;Lv6/b;)Lcoil/disk/f;

    .line 362
    .line 363
    .line 364
    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 365
    iget-object v5, v7, Lcoil/fetch/k;->a:Ljava/lang/String;

    .line 366
    .line 367
    if-eqz v2, :cond_f

    .line 368
    .line 369
    :try_start_4
    new-instance v0, Lcoil/fetch/l;

    .line 370
    .line 371
    invoke-virtual {v7, v2}, Lcoil/fetch/k;->g(Lcoil/disk/f;)Lcoil/decode/m;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    invoke-virtual {v7, v2}, Lcoil/fetch/k;->f(Lcoil/disk/f;)Lv6/b;

    .line 376
    .line 377
    .line 378
    move-result-object v3

    .line 379
    if-eqz v3, :cond_e

    .line 380
    .line 381
    iget-object v3, v3, Lv6/b;->b:Ljava/lang/Object;

    .line 382
    .line 383
    invoke-interface {v3}, Lkotlin/g;->getValue()Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v3

    .line 387
    move-object v6, v3

    .line 388
    check-cast v6, Lokhttp3/x;

    .line 389
    .line 390
    goto :goto_5

    .line 391
    :goto_4
    move-object v1, p1

    .line 392
    move-object p1, v0

    .line 393
    goto/16 :goto_a

    .line 394
    .line 395
    :cond_e
    :goto_5
    invoke-static {v5, v6}, Lcoil/fetch/k;->d(Ljava/lang/String;Lokhttp3/x;)Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v3

    .line 399
    sget-object v4, Lcoil/decode/DataSource;->NETWORK:Lcoil/decode/DataSource;

    .line 400
    .line 401
    invoke-direct {v0, v1, v3, v4}, Lcoil/fetch/l;-><init>(Lcoil/decode/n;Ljava/lang/String;Lcoil/decode/DataSource;)V

    .line 402
    .line 403
    .line 404
    return-object v0

    .line 405
    :catch_3
    move-exception v0

    .line 406
    goto :goto_4

    .line 407
    :cond_f
    invoke-virtual {v8}, Lokhttp3/l0;->source()Lokio/j;

    .line 408
    .line 409
    .line 410
    move-result-object v9

    .line 411
    const-wide/16 v10, 0x1

    .line 412
    .line 413
    invoke-interface {v9, v10, v11}, Lokio/j;->request(J)Z

    .line 414
    .line 415
    .line 416
    move-result v9

    .line 417
    if-eqz v9, :cond_11

    .line 418
    .line 419
    new-instance v0, Lcoil/fetch/l;

    .line 420
    .line 421
    invoke-virtual {v8}, Lokhttp3/l0;->source()Lokio/j;

    .line 422
    .line 423
    .line 424
    move-result-object v1

    .line 425
    iget-object v3, v7, Lcoil/fetch/k;->b:Lcoil/request/k;

    .line 426
    .line 427
    iget-object v3, v3, Lcoil/request/k;->a:Landroid/content/Context;

    .line 428
    .line 429
    new-instance v3, Lcoil/decode/p;

    .line 430
    .line 431
    invoke-direct {v3, v1, v6}, Lcoil/decode/p;-><init>(Lokio/j;La/a;)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v8}, Lokhttp3/l0;->contentType()Lokhttp3/x;

    .line 435
    .line 436
    .line 437
    move-result-object v1

    .line 438
    invoke-static {v5, v1}, Lcoil/fetch/k;->d(Ljava/lang/String;Lokhttp3/x;)Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v1

    .line 442
    iget-object v4, p1, Lokhttp3/i0;->p:Lokhttp3/i0;

    .line 443
    .line 444
    if-eqz v4, :cond_10

    .line 445
    .line 446
    sget-object v4, Lcoil/decode/DataSource;->NETWORK:Lcoil/decode/DataSource;

    .line 447
    .line 448
    goto :goto_6

    .line 449
    :cond_10
    sget-object v4, Lcoil/decode/DataSource;->DISK:Lcoil/decode/DataSource;

    .line 450
    .line 451
    :goto_6
    invoke-direct {v0, v3, v1, v4}, Lcoil/fetch/l;-><init>(Lcoil/decode/n;Ljava/lang/String;Lcoil/decode/DataSource;)V

    .line 452
    .line 453
    .line 454
    return-object v0

    .line 455
    :cond_11
    invoke-static {p1}, Lcoil/util/h;->a(Ljava/io/Closeable;)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {v7}, Lcoil/fetch/k;->e()Lokhttp3/c0;

    .line 459
    .line 460
    .line 461
    move-result-object v5

    .line 462
    iput-object v7, v0, Lcoil/fetch/HttpUriFetcher$fetch$1;->L$0:Ljava/lang/Object;

    .line 463
    .line 464
    iput-object v2, v0, Lcoil/fetch/HttpUriFetcher$fetch$1;->L$1:Ljava/lang/Object;

    .line 465
    .line 466
    iput-object p1, v0, Lcoil/fetch/HttpUriFetcher$fetch$1;->L$2:Ljava/lang/Object;

    .line 467
    .line 468
    iput v4, v0, Lcoil/fetch/HttpUriFetcher$fetch$1;->label:I

    .line 469
    .line 470
    invoke-virtual {v7, v5, v0}, Lcoil/fetch/k;->b(Lokhttp3/c0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 474
    if-ne v0, v1, :cond_12

    .line 475
    .line 476
    :goto_7
    return-object v1

    .line 477
    :cond_12
    move-object v1, p1

    .line 478
    move-object p1, v0

    .line 479
    move-object v0, v7

    .line 480
    :goto_8
    :try_start_5
    check-cast p1, Lokhttp3/i0;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 481
    .line 482
    :try_start_6
    sget-object v1, Lcoil/util/h;->a:[Landroid/graphics/Bitmap$Config;

    .line 483
    .line 484
    iget-object v1, p1, Lokhttp3/i0;->i:Lokhttp3/l0;

    .line 485
    .line 486
    if-eqz v1, :cond_14

    .line 487
    .line 488
    new-instance v3, Lcoil/fetch/l;

    .line 489
    .line 490
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 491
    .line 492
    .line 493
    invoke-virtual {v1}, Lokhttp3/l0;->source()Lokio/j;

    .line 494
    .line 495
    .line 496
    move-result-object v4

    .line 497
    iget-object v5, v0, Lcoil/fetch/k;->b:Lcoil/request/k;

    .line 498
    .line 499
    iget-object v5, v5, Lcoil/request/k;->a:Landroid/content/Context;

    .line 500
    .line 501
    new-instance v5, Lcoil/decode/p;

    .line 502
    .line 503
    invoke-direct {v5, v4, v6}, Lcoil/decode/p;-><init>(Lokio/j;La/a;)V

    .line 504
    .line 505
    .line 506
    iget-object v0, v0, Lcoil/fetch/k;->a:Ljava/lang/String;

    .line 507
    .line 508
    invoke-virtual {v1}, Lokhttp3/l0;->contentType()Lokhttp3/x;

    .line 509
    .line 510
    .line 511
    move-result-object v1

    .line 512
    invoke-static {v0, v1}, Lcoil/fetch/k;->d(Ljava/lang/String;Lokhttp3/x;)Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v0

    .line 516
    iget-object v1, p1, Lokhttp3/i0;->p:Lokhttp3/i0;

    .line 517
    .line 518
    if-eqz v1, :cond_13

    .line 519
    .line 520
    sget-object v1, Lcoil/decode/DataSource;->NETWORK:Lcoil/decode/DataSource;

    .line 521
    .line 522
    goto :goto_9

    .line 523
    :cond_13
    sget-object v1, Lcoil/decode/DataSource;->DISK:Lcoil/decode/DataSource;

    .line 524
    .line 525
    :goto_9
    invoke-direct {v3, v5, v0, v1}, Lcoil/fetch/l;-><init>(Lcoil/decode/n;Ljava/lang/String;Lcoil/decode/DataSource;)V

    .line 526
    .line 527
    .line 528
    return-object v3

    .line 529
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 530
    .line 531
    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 532
    .line 533
    .line 534
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 535
    :goto_a
    :try_start_7
    invoke-static {v1}, Lcoil/util/h;->a(Ljava/io/Closeable;)V

    .line 536
    .line 537
    .line 538
    throw p1

    .line 539
    :cond_15
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 540
    .line 541
    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 542
    .line 543
    .line 544
    throw p1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 545
    :goto_b
    if-eqz v5, :cond_16

    .line 546
    .line 547
    invoke-static {v5}, Lcoil/util/h;->a(Ljava/io/Closeable;)V

    .line 548
    .line 549
    .line 550
    :cond_16
    throw p1
.end method

.method public final b(Lokhttp3/c0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p2, Lcoil/fetch/HttpUriFetcher$executeNetworkRequest$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcoil/fetch/HttpUriFetcher$executeNetworkRequest$1;

    .line 7
    .line 8
    iget v1, v0, Lcoil/fetch/HttpUriFetcher$executeNetworkRequest$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcoil/fetch/HttpUriFetcher$executeNetworkRequest$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcoil/fetch/HttpUriFetcher$executeNetworkRequest$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcoil/fetch/HttpUriFetcher$executeNetworkRequest$1;-><init>(Lcoil/fetch/k;Lkotlin/coroutines/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcoil/fetch/HttpUriFetcher$executeNetworkRequest$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lcoil/fetch/HttpUriFetcher$executeNetworkRequest$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    if-ne v2, v3, :cond_1

    .line 35
    .line 36
    invoke-static {p2}, Lkotlin/l;->b(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 41
    .line 42
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 43
    .line 44
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1

    .line 48
    :cond_2
    invoke-static {p2}, Lkotlin/l;->b(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    sget-object p2, Lcoil/util/h;->a:[Landroid/graphics/Bitmap$Config;

    .line 52
    .line 53
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-static {p2, v2}, Lkotlin/jvm/internal/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    iget-object v2, p0, Lcoil/fetch/k;->c:Lkotlin/g;

    .line 66
    .line 67
    if-eqz p2, :cond_4

    .line 68
    .line 69
    iget-object p2, p0, Lcoil/fetch/k;->b:Lcoil/request/k;

    .line 70
    .line 71
    iget-object p2, p2, Lcoil/request/k;->o:Lcoil/request/CachePolicy;

    .line 72
    .line 73
    invoke-virtual {p2}, Lcoil/request/CachePolicy;->getReadEnabled()Z

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    if-nez p2, :cond_3

    .line 78
    .line 79
    invoke-interface {v2}, Lkotlin/g;->getValue()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    check-cast p2, Lokhttp3/h;

    .line 84
    .line 85
    check-cast p2, Lokhttp3/z;

    .line 86
    .line 87
    invoke-virtual {p2, p1}, Lokhttp3/z;->a(Lokhttp3/c0;)Lokhttp3/internal/connection/i;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-static {p1}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->execute(Lokhttp3/i;)Lokhttp3/i0;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    goto :goto_2

    .line 96
    :cond_3
    new-instance p1, Landroid/os/NetworkOnMainThreadException;

    .line 97
    .line 98
    invoke-direct {p1}, Landroid/os/NetworkOnMainThreadException;-><init>()V

    .line 99
    .line 100
    .line 101
    throw p1

    .line 102
    :cond_4
    invoke-interface {v2}, Lkotlin/g;->getValue()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    check-cast p2, Lokhttp3/h;

    .line 107
    .line 108
    check-cast p2, Lokhttp3/z;

    .line 109
    .line 110
    invoke-virtual {p2, p1}, Lokhttp3/z;->a(Lokhttp3/c0;)Lokhttp3/internal/connection/i;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    iput v3, v0, Lcoil/fetch/HttpUriFetcher$executeNetworkRequest$1;->label:I

    .line 115
    .line 116
    new-instance p2, Lkotlinx/coroutines/h;

    .line 117
    .line 118
    invoke-static {v0}, Lmc/l;->y(Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-direct {p2, v3, v0}, Lkotlinx/coroutines/h;-><init>(ILkotlin/coroutines/c;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p2}, Lkotlinx/coroutines/h;->s()V

    .line 126
    .line 127
    .line 128
    new-instance v0, Landroidx/compose/runtime/r0;

    .line 129
    .line 130
    const/4 v2, 0x3

    .line 131
    invoke-direct {v0, v2, p1, p2}, Landroidx/compose/runtime/r0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    invoke-static {p1, v0}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->enqueue(Lokhttp3/i;Lokhttp3/j;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p2, v0}, Lkotlinx/coroutines/h;->u(Lrb/k;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2}, Lkotlinx/coroutines/h;->r()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    if-ne p2, v1, :cond_5

    .line 145
    .line 146
    return-object v1

    .line 147
    :cond_5
    :goto_1
    move-object p1, p2

    .line 148
    check-cast p1, Lokhttp3/i0;

    .line 149
    .line 150
    :goto_2
    invoke-virtual {p1}, Lokhttp3/i0;->i()Z

    .line 151
    .line 152
    .line 153
    move-result p2

    .line 154
    if-nez p2, :cond_7

    .line 155
    .line 156
    iget p2, p1, Lokhttp3/i0;->d:I

    .line 157
    .line 158
    const/16 v0, 0x130

    .line 159
    .line 160
    if-eq p2, v0, :cond_7

    .line 161
    .line 162
    iget-object p2, p1, Lokhttp3/i0;->i:Lokhttp3/l0;

    .line 163
    .line 164
    if-eqz p2, :cond_6

    .line 165
    .line 166
    invoke-static {p2}, Lcoil/util/h;->a(Ljava/io/Closeable;)V

    .line 167
    .line 168
    .line 169
    :cond_6
    new-instance p2, Lcoil/network/HttpException;

    .line 170
    .line 171
    invoke-direct {p2, p1}, Lcoil/network/HttpException;-><init>(Lokhttp3/i0;)V

    .line 172
    .line 173
    .line 174
    throw p2

    .line 175
    :cond_7
    return-object p1
.end method

.method public final c()Lokio/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lcoil/fetch/k;->d:Lkotlin/g;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/g;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/g;->b(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    check-cast v0, Lcoil/disk/g;

    .line 11
    .line 12
    iget-object v0, v0, Lcoil/disk/g;->a:Lokio/n;

    .line 13
    .line 14
    return-object v0
.end method

.method public final e()Lokhttp3/c0;
    .locals 7

    .line 1
    new-instance v0, Lokhttp3/b0;

    .line 2
    .line 3
    invoke-direct {v0}, Lokhttp3/b0;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcoil/fetch/k;->a:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lokhttp3/b0;->f(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcoil/fetch/k;->b:Lcoil/request/k;

    .line 12
    .line 13
    iget-object v2, v1, Lcoil/request/k;->j:Lokhttp3/s;

    .line 14
    .line 15
    iget-object v3, v1, Lcoil/request/k;->n:Lcoil/request/CachePolicy;

    .line 16
    .line 17
    const-string v4, "headers"

    .line 18
    .line 19
    invoke-static {v2, v4}, Lkotlin/jvm/internal/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Lokhttp3/s;->c()Lokhttp3/r;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iput-object v2, v0, Lokhttp3/b0;->c:Lokhttp3/r;

    .line 27
    .line 28
    iget-object v2, v1, Lcoil/request/k;->k:Lcoil/request/n;

    .line 29
    .line 30
    iget-object v2, v2, Lcoil/request/n;->a:Ljava/util/Map;

    .line 31
    .line 32
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-eqz v4, :cond_2

    .line 45
    .line 46
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    check-cast v4, Ljava/util/Map$Entry;

    .line 51
    .line 52
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    const-string v6, "null cannot be cast to non-null type java.lang.Class<kotlin.Any>"

    .line 57
    .line 58
    invoke-static {v5, v6}, Lkotlin/jvm/internal/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    check-cast v5, Ljava/lang/Class;

    .line 62
    .line 63
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    if-nez v4, :cond_0

    .line 68
    .line 69
    iget-object v4, v0, Lokhttp3/b0;->e:Ljava/util/LinkedHashMap;

    .line 70
    .line 71
    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    iget-object v6, v0, Lokhttp3/b0;->e:Ljava/util/LinkedHashMap;

    .line 76
    .line 77
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    if-eqz v6, :cond_1

    .line 82
    .line 83
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 84
    .line 85
    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 86
    .line 87
    .line 88
    iput-object v6, v0, Lokhttp3/b0;->e:Ljava/util/LinkedHashMap;

    .line 89
    .line 90
    :cond_1
    iget-object v6, v0, Lokhttp3/b0;->e:Ljava/util/LinkedHashMap;

    .line 91
    .line 92
    invoke-virtual {v5, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    invoke-static {v4}, Lkotlin/jvm/internal/g;->b(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    invoke-interface {v6, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_2
    invoke-virtual {v3}, Lcoil/request/CachePolicy;->getReadEnabled()Z

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    iget-object v1, v1, Lcoil/request/k;->o:Lcoil/request/CachePolicy;

    .line 108
    .line 109
    invoke-virtual {v1}, Lcoil/request/CachePolicy;->getReadEnabled()Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-nez v1, :cond_3

    .line 114
    .line 115
    if-eqz v2, :cond_3

    .line 116
    .line 117
    sget-object v1, Lokhttp3/g;->o:Lokhttp3/g;

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Lokhttp3/b0;->c(Lokhttp3/g;)V

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_3
    if-eqz v1, :cond_5

    .line 124
    .line 125
    if-nez v2, :cond_5

    .line 126
    .line 127
    invoke-virtual {v3}, Lcoil/request/CachePolicy;->getWriteEnabled()Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-eqz v1, :cond_4

    .line 132
    .line 133
    sget-object v1, Lokhttp3/g;->n:Lokhttp3/g;

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Lokhttp3/b0;->c(Lokhttp3/g;)V

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_4
    sget-object v1, Lcoil/fetch/k;->f:Lokhttp3/g;

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Lokhttp3/b0;->c(Lokhttp3/g;)V

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_5
    if-nez v1, :cond_6

    .line 146
    .line 147
    if-nez v2, :cond_6

    .line 148
    .line 149
    sget-object v1, Lcoil/fetch/k;->g:Lokhttp3/g;

    .line 150
    .line 151
    invoke-virtual {v0, v1}, Lokhttp3/b0;->c(Lokhttp3/g;)V

    .line 152
    .line 153
    .line 154
    :cond_6
    :goto_1
    invoke-virtual {v0}, Lokhttp3/b0;->b()Lokhttp3/c0;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    return-object v0
.end method

.method public final f(Lcoil/disk/f;)Lv6/b;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcoil/fetch/k;->c()Lokio/n;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    iget-object p1, p1, Lcoil/disk/f;->a:Lcoil/disk/b;

    .line 7
    .line 8
    iget-boolean v2, p1, Lcoil/disk/b;->b:Z

    .line 9
    .line 10
    if-nez v2, :cond_1

    .line 11
    .line 12
    iget-object p1, p1, Lcoil/disk/b;->a:Lcoil/disk/a;

    .line 13
    .line 14
    iget-object p1, p1, Lcoil/disk/a;->c:Ljava/util/ArrayList;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lokio/a0;

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Lokio/n;->o(Lokio/a0;)Lokio/i0;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1}, Landroidx/work/d0;->i(Lokio/i0;)Lokio/d0;

    .line 28
    .line 29
    .line 30
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :try_start_1
    new-instance v1, Lv6/b;

    .line 32
    .line 33
    invoke-direct {v1, p1}, Lv6/b;-><init>(Lokio/d0;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 34
    .line 35
    .line 36
    :try_start_2
    invoke-virtual {p1}, Lokio/d0;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    .line 38
    .line 39
    move-object p1, v0

    .line 40
    goto :goto_1

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    goto :goto_1

    .line 43
    :catchall_1
    move-exception v1

    .line 44
    :try_start_3
    invoke-virtual {p1}, Lokio/d0;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_2
    move-exception p1

    .line 49
    :try_start_4
    invoke-static {v1, p1}, Lkotlin/i;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    move-object p1, v1

    .line 53
    move-object v1, v0

    .line 54
    :goto_1
    if-nez p1, :cond_0

    .line 55
    .line 56
    return-object v1

    .line 57
    :cond_0
    throw p1

    .line 58
    :cond_1
    const-string p1, "snapshot is closed"

    .line 59
    .line 60
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 61
    .line 62
    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 66
    :catch_0
    return-object v0
.end method

.method public final g(Lcoil/disk/f;)Lcoil/decode/m;
    .locals 4

    .line 1
    iget-object v0, p1, Lcoil/disk/f;->a:Lcoil/disk/b;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcoil/disk/b;->b:Z

    .line 4
    .line 5
    if-nez v1, :cond_1

    .line 6
    .line 7
    iget-object v0, v0, Lcoil/disk/b;->a:Lcoil/disk/a;

    .line 8
    .line 9
    iget-object v0, v0, Lcoil/disk/a;->c:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lokio/a0;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcoil/fetch/k;->c()Lokio/n;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v2, p0, Lcoil/fetch/k;->b:Lcoil/request/k;

    .line 23
    .line 24
    iget-object v2, v2, Lcoil/request/k;->i:Ljava/lang/String;

    .line 25
    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    iget-object v2, p0, Lcoil/fetch/k;->a:Ljava/lang/String;

    .line 29
    .line 30
    :cond_0
    new-instance v3, Lcoil/decode/m;

    .line 31
    .line 32
    invoke-direct {v3, v0, v1, v2, p1}, Lcoil/decode/m;-><init>(Lokio/a0;Lokio/n;Ljava/lang/String;Ljava/io/Closeable;)V

    .line 33
    .line 34
    .line 35
    return-object v3

    .line 36
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 37
    .line 38
    const-string v0, "snapshot is closed"

    .line 39
    .line 40
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p1
.end method

.method public final h(Lcoil/disk/f;Lokhttp3/c0;Lokhttp3/i0;Lv6/b;)Lcoil/disk/f;
    .locals 3

    .line 1
    iget-object v0, p0, Lcoil/fetch/k;->b:Lcoil/request/k;

    .line 2
    .line 3
    iget-object v0, v0, Lcoil/request/k;->n:Lcoil/request/CachePolicy;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcoil/request/CachePolicy;->getWriteEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_9

    .line 11
    .line 12
    iget-boolean v0, p0, Lcoil/fetch/k;->e:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p2}, Lokhttp3/c0;->a()Lokhttp3/g;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    iget-boolean p2, p2, Lokhttp3/g;->b:Z

    .line 21
    .line 22
    if-nez p2, :cond_9

    .line 23
    .line 24
    invoke-virtual {p3}, Lokhttp3/i0;->b()Lokhttp3/g;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    iget-boolean p2, p2, Lokhttp3/g;->b:Z

    .line 29
    .line 30
    if-nez p2, :cond_9

    .line 31
    .line 32
    iget-object p2, p3, Lokhttp3/i0;->g:Lokhttp3/s;

    .line 33
    .line 34
    const-string v0, "Vary"

    .line 35
    .line 36
    invoke-virtual {p2, v0}, Lokhttp3/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    const-string v0, "*"

    .line 41
    .line 42
    invoke-static {p2, v0}, Lkotlin/jvm/internal/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    if-nez p2, :cond_9

    .line 47
    .line 48
    :cond_0
    const/4 p2, 0x2

    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    iget-object p1, p1, Lcoil/disk/f;->a:Lcoil/disk/b;

    .line 52
    .line 53
    iget-object v0, p1, Lcoil/disk/b;->c:Lcoil/disk/d;

    .line 54
    .line 55
    monitor-enter v0

    .line 56
    :try_start_0
    invoke-virtual {p1}, Lcoil/disk/b;->close()V

    .line 57
    .line 58
    .line 59
    iget-object p1, p1, Lcoil/disk/b;->a:Lcoil/disk/a;

    .line 60
    .line 61
    iget-object p1, p1, Lcoil/disk/a;->a:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v0, p1}, Lcoil/disk/d;->g(Ljava/lang/String;)Landroidx/compose/foundation/lazy/layout/f1;

    .line 64
    .line 65
    .line 66
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit v0

    .line 68
    if-eqz p1, :cond_3

    .line 69
    .line 70
    new-instance v0, Landroidx/work/impl/utils/l;

    .line 71
    .line 72
    invoke-direct {v0, p1, p2}, Landroidx/work/impl/utils/l;-><init>(Ljava/lang/Object;I)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catchall_0
    move-exception p1

    .line 77
    monitor-exit v0

    .line 78
    throw p1

    .line 79
    :cond_1
    iget-object p1, p0, Lcoil/fetch/k;->d:Lkotlin/g;

    .line 80
    .line 81
    invoke-interface {p1}, Lkotlin/g;->getValue()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Lcoil/disk/g;

    .line 86
    .line 87
    if-eqz p1, :cond_3

    .line 88
    .line 89
    iget-object v0, p0, Lcoil/fetch/k;->b:Lcoil/request/k;

    .line 90
    .line 91
    iget-object v0, v0, Lcoil/request/k;->i:Ljava/lang/String;

    .line 92
    .line 93
    if-nez v0, :cond_2

    .line 94
    .line 95
    iget-object v0, p0, Lcoil/fetch/k;->a:Ljava/lang/String;

    .line 96
    .line 97
    :cond_2
    iget-object p1, p1, Lcoil/disk/g;->b:Lcoil/disk/d;

    .line 98
    .line 99
    sget-object v2, Lokio/ByteString;->Companion:Lokio/k;

    .line 100
    .line 101
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    invoke-static {v0}, Lokio/k;->c(Ljava/lang/String;)Lokio/ByteString;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lokio/ByteString;->sha256()Lokio/ByteString;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lokio/ByteString;->hex()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {p1, v0}, Lcoil/disk/d;->g(Ljava/lang/String;)Landroidx/compose/foundation/lazy/layout/f1;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    if-eqz p1, :cond_3

    .line 121
    .line 122
    new-instance v0, Landroidx/work/impl/utils/l;

    .line 123
    .line 124
    invoke-direct {v0, p1, p2}, Landroidx/work/impl/utils/l;-><init>(Ljava/lang/Object;I)V

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_3
    move-object v0, v1

    .line 129
    :goto_0
    if-nez v0, :cond_4

    .line 130
    .line 131
    goto/16 :goto_8

    .line 132
    .line 133
    :cond_4
    const/4 p1, 0x0

    .line 134
    :try_start_1
    iget p2, p3, Lokhttp3/i0;->d:I

    .line 135
    .line 136
    const/16 v2, 0x130

    .line 137
    .line 138
    if-ne p2, v2, :cond_6

    .line 139
    .line 140
    if-eqz p4, :cond_6

    .line 141
    .line 142
    invoke-virtual {p3}, Lokhttp3/i0;->s()Lokhttp3/h0;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    iget-object p4, p4, Lv6/b;->f:Lokhttp3/s;

    .line 147
    .line 148
    iget-object v2, p3, Lokhttp3/i0;->g:Lokhttp3/s;

    .line 149
    .line 150
    invoke-static {p4, v2}, Lmc/l;->n(Lokhttp3/s;Lokhttp3/s;)Lokhttp3/s;

    .line 151
    .line 152
    .line 153
    move-result-object p4

    .line 154
    invoke-virtual {p2, p4}, Lokhttp3/h0;->c(Lokhttp3/s;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p2}, Lokhttp3/h0;->a()Lokhttp3/i0;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    invoke-virtual {p0}, Lcoil/fetch/k;->c()Lokio/n;

    .line 162
    .line 163
    .line 164
    move-result-object p4

    .line 165
    iget-object v2, v0, Landroidx/work/impl/utils/l;->b:Ljava/lang/Object;

    .line 166
    .line 167
    check-cast v2, Landroidx/compose/foundation/lazy/layout/f1;

    .line 168
    .line 169
    invoke-virtual {v2, p1}, Landroidx/compose/foundation/lazy/layout/f1;->g(I)Lokio/a0;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    invoke-virtual {p4, v2}, Lokio/n;->n(Lokio/a0;)Lokio/g0;

    .line 174
    .line 175
    .line 176
    move-result-object p4

    .line 177
    invoke-static {p4}, Landroidx/work/d0;->h(Lokio/g0;)Lokio/c0;

    .line 178
    .line 179
    .line 180
    move-result-object p4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 181
    :try_start_2
    new-instance v2, Lv6/b;

    .line 182
    .line 183
    invoke-direct {v2, p2}, Lv6/b;-><init>(Lokhttp3/i0;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v2, p4}, Lv6/b;->a(Lokio/c0;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 187
    .line 188
    .line 189
    :try_start_3
    invoke-virtual {p4}, Lokio/c0;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 190
    .line 191
    .line 192
    goto :goto_1

    .line 193
    :catchall_1
    move-exception v1

    .line 194
    goto :goto_1

    .line 195
    :catchall_2
    move-exception p2

    .line 196
    move-object v1, p2

    .line 197
    :try_start_4
    invoke-virtual {p4}, Lokio/c0;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 198
    .line 199
    .line 200
    goto :goto_1

    .line 201
    :catchall_3
    move-exception p2

    .line 202
    :try_start_5
    invoke-static {v1, p2}, Lkotlin/i;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 203
    .line 204
    .line 205
    :goto_1
    if-nez v1, :cond_5

    .line 206
    .line 207
    goto/16 :goto_5

    .line 208
    .line 209
    :cond_5
    throw v1

    .line 210
    :catchall_4
    move-exception p1

    .line 211
    goto/16 :goto_7

    .line 212
    .line 213
    :catch_0
    move-exception p2

    .line 214
    goto/16 :goto_6

    .line 215
    .line 216
    :cond_6
    invoke-virtual {p0}, Lcoil/fetch/k;->c()Lokio/n;

    .line 217
    .line 218
    .line 219
    move-result-object p2

    .line 220
    iget-object p4, v0, Landroidx/work/impl/utils/l;->b:Ljava/lang/Object;

    .line 221
    .line 222
    check-cast p4, Landroidx/compose/foundation/lazy/layout/f1;

    .line 223
    .line 224
    invoke-virtual {p4, p1}, Landroidx/compose/foundation/lazy/layout/f1;->g(I)Lokio/a0;

    .line 225
    .line 226
    .line 227
    move-result-object p4

    .line 228
    invoke-virtual {p2, p4}, Lokio/n;->n(Lokio/a0;)Lokio/g0;

    .line 229
    .line 230
    .line 231
    move-result-object p2

    .line 232
    invoke-static {p2}, Landroidx/work/d0;->h(Lokio/g0;)Lokio/c0;

    .line 233
    .line 234
    .line 235
    move-result-object p2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 236
    :try_start_6
    new-instance p4, Lv6/b;

    .line 237
    .line 238
    invoke-direct {p4, p3}, Lv6/b;-><init>(Lokhttp3/i0;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {p4, p2}, Lv6/b;->a(Lokio/c0;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 242
    .line 243
    .line 244
    :try_start_7
    invoke-virtual {p2}, Lokio/c0;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 245
    .line 246
    .line 247
    move-object p2, v1

    .line 248
    goto :goto_3

    .line 249
    :catchall_5
    move-exception p2

    .line 250
    goto :goto_3

    .line 251
    :catchall_6
    move-exception p4

    .line 252
    :try_start_8
    invoke-virtual {p2}, Lokio/c0;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 253
    .line 254
    .line 255
    goto :goto_2

    .line 256
    :catchall_7
    move-exception p2

    .line 257
    :try_start_9
    invoke-static {p4, p2}, Lkotlin/i;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 258
    .line 259
    .line 260
    :goto_2
    move-object p2, p4

    .line 261
    :goto_3
    if-nez p2, :cond_8

    .line 262
    .line 263
    invoke-virtual {p0}, Lcoil/fetch/k;->c()Lokio/n;

    .line 264
    .line 265
    .line 266
    move-result-object p2

    .line 267
    iget-object p4, v0, Landroidx/work/impl/utils/l;->b:Ljava/lang/Object;

    .line 268
    .line 269
    check-cast p4, Landroidx/compose/foundation/lazy/layout/f1;

    .line 270
    .line 271
    const/4 v2, 0x1

    .line 272
    invoke-virtual {p4, v2}, Landroidx/compose/foundation/lazy/layout/f1;->g(I)Lokio/a0;

    .line 273
    .line 274
    .line 275
    move-result-object p4

    .line 276
    invoke-virtual {p2, p4}, Lokio/n;->n(Lokio/a0;)Lokio/g0;

    .line 277
    .line 278
    .line 279
    move-result-object p2

    .line 280
    invoke-static {p2}, Landroidx/work/d0;->h(Lokio/g0;)Lokio/c0;

    .line 281
    .line 282
    .line 283
    move-result-object p2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 284
    :try_start_a
    iget-object p4, p3, Lokhttp3/i0;->i:Lokhttp3/l0;

    .line 285
    .line 286
    invoke-static {p4}, Lkotlin/jvm/internal/g;->b(Ljava/lang/Object;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {p4}, Lokhttp3/l0;->source()Lokio/j;

    .line 290
    .line 291
    .line 292
    move-result-object p4

    .line 293
    invoke-interface {p4, p2}, Lokio/j;->j0(Lokio/i;)J
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    .line 294
    .line 295
    .line 296
    :try_start_b
    invoke-virtual {p2}, Lokio/c0;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .line 297
    .line 298
    .line 299
    goto :goto_4

    .line 300
    :catchall_8
    move-exception v1

    .line 301
    goto :goto_4

    .line 302
    :catchall_9
    move-exception p4

    .line 303
    move-object v1, p4

    .line 304
    :try_start_c
    invoke-virtual {p2}, Lokio/c0;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    .line 305
    .line 306
    .line 307
    goto :goto_4

    .line 308
    :catchall_a
    move-exception p2

    .line 309
    :try_start_d
    invoke-static {v1, p2}, Lkotlin/i;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 310
    .line 311
    .line 312
    :goto_4
    if-nez v1, :cond_7

    .line 313
    .line 314
    :goto_5
    invoke-virtual {v0}, Landroidx/work/impl/utils/l;->o()Lcoil/disk/f;

    .line 315
    .line 316
    .line 317
    move-result-object p1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 318
    invoke-static {p3}, Lcoil/util/h;->a(Ljava/io/Closeable;)V

    .line 319
    .line 320
    .line 321
    return-object p1

    .line 322
    :cond_7
    :try_start_e
    throw v1

    .line 323
    :cond_8
    throw p2
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 324
    :goto_6
    :try_start_f
    sget-object p4, Lcoil/util/h;->a:[Landroid/graphics/Bitmap$Config;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 325
    .line 326
    :try_start_10
    iget-object p4, v0, Landroidx/work/impl/utils/l;->b:Ljava/lang/Object;

    .line 327
    .line 328
    check-cast p4, Landroidx/compose/foundation/lazy/layout/f1;

    .line 329
    .line 330
    invoke-virtual {p4, p1}, Landroidx/compose/foundation/lazy/layout/f1;->d(Z)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 331
    .line 332
    .line 333
    :catch_1
    :try_start_11
    throw p2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 334
    :goto_7
    invoke-static {p3}, Lcoil/util/h;->a(Ljava/io/Closeable;)V

    .line 335
    .line 336
    .line 337
    throw p1

    .line 338
    :cond_9
    if-eqz p1, :cond_a

    .line 339
    .line 340
    invoke-static {p1}, Lcoil/util/h;->a(Ljava/io/Closeable;)V

    .line 341
    .line 342
    .line 343
    :cond_a
    :goto_8
    return-object v1
.end method
