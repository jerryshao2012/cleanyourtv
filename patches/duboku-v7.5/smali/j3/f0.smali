.class public final Lj3/f0;
.super Ljava/lang/Object;
.source "r8-map-id-8ba8015df6390efac2340e8bc72cbaa0af05ae8dc58e92835996b10ae6d6a13d"


# static fields
.field public static final c0:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public A:J

.field public B:J

.field public C:J

.field public D:I

.field public E:Z

.field public F:Z

.field public G:J

.field public H:F

.field public I:Ljava/nio/ByteBuffer;

.field public J:I

.field public K:Ljava/nio/ByteBuffer;

.field public L:Z

.field public M:Z

.field public N:Z

.field public O:Z

.field public P:Z

.field public Q:I

.field public R:Z

.field public S:Landroidx/media3/common/h;

.field public T:Landroid/media/AudioDeviceInfo;

.field public U:I

.field public V:Z

.field public W:J

.field public X:Z

.field public Y:Z

.field public Z:J

.field public final a:Landroid/content/Context;

.field public a0:J

.field public final b:Lcom/google/common/reflect/x;

.field public b0:Landroid/os/Handler;

.field public final c:Lj3/z;

.field public final d:Lj3/n0;

.field public final e:Lc3/q;

.field public final f:Lj3/m0;

.field public final g:Lcom/google/common/collect/ImmutableList;

.field public final h:Ljava/util/ArrayDeque;

.field public i:I

.field public j:Lj3/d0;

.field public final k:Lcom/google/ads/interactivemedia/v3/internal/t5;

.field public final l:Lcom/google/ads/interactivemedia/v3/internal/t5;

.field public m:Li3/j;

.field public n:Lcom/google/common/base/a0;

.field public o:Landroidx/compose/foundation/lazy/grid/l;

.field public p:Landroidx/compose/foundation/lazy/grid/l;

.field public q:Lc3/g;

.field public r:Lj3/l;

.field public s:Lj3/b0;

.field public t:Lj3/w;

.field public u:Landroidx/media3/common/g;

.field public v:Lj3/e0;

.field public w:Lj3/e0;

.field public x:Landroidx/media3/common/m0;

.field public y:Z

.field public z:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lj3/f0;->c0:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/crashlytics/internal/common/u;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lcom/google/firebase/crashlytics/internal/common/u;->b:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iput-object v1, p0, Lj3/f0;->a:Landroid/content/Context;

    .line 13
    .line 14
    sget-object v1, Landroidx/media3/common/g;->b:Landroidx/media3/common/g;

    .line 15
    .line 16
    iput-object v1, p0, Lj3/f0;->u:Landroidx/media3/common/g;

    .line 17
    .line 18
    iget-object v1, p1, Lcom/google/firebase/crashlytics/internal/common/u;->c:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Lcom/google/common/reflect/x;

    .line 21
    .line 22
    iput-object v1, p0, Lj3/f0;->b:Lcom/google/common/reflect/x;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    iput v1, p0, Lj3/f0;->i:I

    .line 26
    .line 27
    iget-object p1, p1, Lcom/google/firebase/crashlytics/internal/common/u;->e:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p1, Lj3/x;

    .line 30
    .line 31
    iput-object p1, p0, Lj3/f0;->r:Lj3/l;

    .line 32
    .line 33
    new-instance p1, Lj3/z;

    .line 34
    .line 35
    invoke-direct {p1}, Lc3/k;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lj3/f0;->c:Lj3/z;

    .line 39
    .line 40
    new-instance v2, Lj3/n0;

    .line 41
    .line 42
    invoke-direct {v2}, Lc3/k;-><init>()V

    .line 43
    .line 44
    .line 45
    sget-object v3, Le3/e0;->b:[B

    .line 46
    .line 47
    iput-object v3, v2, Lj3/n0;->m:[B

    .line 48
    .line 49
    iput-object v2, p0, Lj3/f0;->d:Lj3/n0;

    .line 50
    .line 51
    new-instance v3, Lc3/q;

    .line 52
    .line 53
    invoke-direct {v3}, Lc3/k;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v3, p0, Lj3/f0;->e:Lc3/q;

    .line 57
    .line 58
    new-instance v3, Lj3/m0;

    .line 59
    .line 60
    invoke-direct {v3}, Lc3/k;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object v3, p0, Lj3/f0;->f:Lj3/m0;

    .line 64
    .line 65
    invoke-static {v2, p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iput-object p1, p0, Lj3/f0;->g:Lcom/google/common/collect/ImmutableList;

    .line 70
    .line 71
    const/high16 p1, 0x3f800000    # 1.0f

    .line 72
    .line 73
    iput p1, p0, Lj3/f0;->H:F

    .line 74
    .line 75
    iput v1, p0, Lj3/f0;->Q:I

    .line 76
    .line 77
    new-instance p1, Landroidx/media3/common/h;

    .line 78
    .line 79
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 80
    .line 81
    .line 82
    iput-object p1, p0, Lj3/f0;->S:Landroidx/media3/common/h;

    .line 83
    .line 84
    new-instance v2, Lj3/e0;

    .line 85
    .line 86
    sget-object v3, Landroidx/media3/common/m0;->d:Landroidx/media3/common/m0;

    .line 87
    .line 88
    const-wide/16 v4, 0x0

    .line 89
    .line 90
    const-wide/16 v6, 0x0

    .line 91
    .line 92
    invoke-direct/range {v2 .. v7}, Lj3/e0;-><init>(Landroidx/media3/common/m0;JJ)V

    .line 93
    .line 94
    .line 95
    iput-object v2, p0, Lj3/f0;->w:Lj3/e0;

    .line 96
    .line 97
    iput-object v3, p0, Lj3/f0;->x:Landroidx/media3/common/m0;

    .line 98
    .line 99
    iput-boolean v1, p0, Lj3/f0;->y:Z

    .line 100
    .line 101
    new-instance p1, Ljava/util/ArrayDeque;

    .line 102
    .line 103
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    .line 104
    .line 105
    .line 106
    iput-object p1, p0, Lj3/f0;->h:Ljava/util/ArrayDeque;

    .line 107
    .line 108
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/t5;

    .line 109
    .line 110
    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/t5;-><init>()V

    .line 111
    .line 112
    .line 113
    iput-object p1, p0, Lj3/f0;->k:Lcom/google/ads/interactivemedia/v3/internal/t5;

    .line 114
    .line 115
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/t5;

    .line 116
    .line 117
    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/t5;-><init>()V

    .line 118
    .line 119
    .line 120
    iput-object p1, p0, Lj3/f0;->l:Lcom/google/ads/interactivemedia/v3/internal/t5;

    .line 121
    .line 122
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 123
    .line 124
    const/16 v1, 0x22

    .line 125
    .line 126
    const/4 v2, -0x1

    .line 127
    if-lt p1, v1, :cond_0

    .line 128
    .line 129
    invoke-virtual {v0}, Landroid/content/Context;->getDeviceId()I

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    if-eqz p1, :cond_0

    .line 134
    .line 135
    if-eq p1, v2, :cond_0

    .line 136
    .line 137
    move v2, p1

    .line 138
    :cond_0
    iput v2, p0, Lj3/f0;->U:I

    .line 139
    .line 140
    return-void
.end method

.method public static i(ILjava/nio/ByteBuffer;)I
    .locals 10

    .line 1
    const/16 v0, 0x14

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x5

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x1

    .line 7
    if-eq p0, v0, :cond_19

    .line 8
    .line 9
    const/16 v0, 0x1e

    .line 10
    .line 11
    const/4 v5, -0x2

    .line 12
    const/4 v6, -0x1

    .line 13
    if-eq p0, v0, :cond_12

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    const/16 v7, 0xa

    .line 17
    .line 18
    packed-switch p0, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    const/16 v1, 0x10

    .line 22
    .line 23
    packed-switch p0, :pswitch_data_1

    .line 24
    .line 25
    .line 26
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    const-string v0, "Unexpected audio encoding: "

    .line 29
    .line 30
    invoke-static {p0, v0}, Lcom/google/common/util/concurrent/c0;->p(ILjava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1

    .line 38
    :pswitch_0
    new-array p0, v1, [B

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 48
    .line 49
    .line 50
    new-instance p1, Le3/q;

    .line 51
    .line 52
    invoke-direct {p1, p0, v1}, Le3/q;-><init>([BI)V

    .line 53
    .line 54
    .line 55
    invoke-static {p1}, Lz3/b;->m(Le3/q;)Landroidx/media3/container/j;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    iget p0, p0, Landroidx/media3/container/j;->c:I

    .line 60
    .line 61
    return p0

    .line 62
    :pswitch_1
    const/16 p0, 0x200

    .line 63
    .line 64
    return p0

    .line 65
    :pswitch_2
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    sub-int/2addr v0, v7

    .line 74
    move v2, p0

    .line 75
    :goto_0
    if-gt v2, v0, :cond_2

    .line 76
    .line 77
    add-int/lit8 v7, v2, 0x4

    .line 78
    .line 79
    sget-object v8, Le3/e0;->a:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    .line 86
    .line 87
    .line 88
    move-result-object v8

    .line 89
    sget-object v9, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 90
    .line 91
    if-ne v8, v9, :cond_0

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_0
    invoke-static {v7}, Ljava/lang/Integer;->reverseBytes(I)I

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    :goto_1
    and-int/2addr v7, v5

    .line 99
    const v8, -0x78d9046

    .line 100
    .line 101
    .line 102
    if-ne v7, v8, :cond_1

    .line 103
    .line 104
    sub-int/2addr v2, p0

    .line 105
    goto :goto_2

    .line 106
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_2
    move v2, v6

    .line 110
    :goto_2
    if-ne v2, v6, :cond_3

    .line 111
    .line 112
    return v3

    .line 113
    :cond_3
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 114
    .line 115
    .line 116
    move-result p0

    .line 117
    add-int/2addr p0, v2

    .line 118
    add-int/lit8 p0, p0, 0x7

    .line 119
    .line 120
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 121
    .line 122
    .line 123
    move-result p0

    .line 124
    and-int/lit16 p0, p0, 0xff

    .line 125
    .line 126
    const/16 v0, 0xbb

    .line 127
    .line 128
    if-ne p0, v0, :cond_4

    .line 129
    .line 130
    move v3, v4

    .line 131
    :cond_4
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 132
    .line 133
    .line 134
    move-result p0

    .line 135
    add-int/2addr p0, v2

    .line 136
    if-eqz v3, :cond_5

    .line 137
    .line 138
    const/16 v0, 0x9

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_5
    const/16 v0, 0x8

    .line 142
    .line 143
    :goto_3
    add-int/2addr p0, v0

    .line 144
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 145
    .line 146
    .line 147
    move-result p0

    .line 148
    shr-int/lit8 p0, p0, 0x4

    .line 149
    .line 150
    and-int/lit8 p0, p0, 0x7

    .line 151
    .line 152
    const/16 p1, 0x28

    .line 153
    .line 154
    shl-int p0, p1, p0

    .line 155
    .line 156
    mul-int/2addr p0, v1

    .line 157
    return p0

    .line 158
    :pswitch_3
    const/16 p0, 0x800

    .line 159
    .line 160
    return p0

    .line 161
    :pswitch_4
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 162
    .line 163
    .line 164
    move-result p0

    .line 165
    sget-object v2, Le3/e0;->a:Ljava/lang/String;

    .line 166
    .line 167
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 168
    .line 169
    .line 170
    move-result p0

    .line 171
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 176
    .line 177
    if-ne p1, v2, :cond_6

    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_6
    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    .line 181
    .line 182
    .line 183
    move-result p0

    .line 184
    :goto_4
    const/high16 p1, -0x200000

    .line 185
    .line 186
    and-int v2, p0, p1

    .line 187
    .line 188
    if-ne v2, p1, :cond_7

    .line 189
    .line 190
    ushr-int/lit8 p1, p0, 0x13

    .line 191
    .line 192
    and-int/2addr p1, v0

    .line 193
    if-ne p1, v4, :cond_8

    .line 194
    .line 195
    :cond_7
    :goto_5
    move p0, v6

    .line 196
    goto :goto_6

    .line 197
    :cond_8
    ushr-int/lit8 v2, p0, 0x11

    .line 198
    .line 199
    and-int/2addr v2, v0

    .line 200
    if-nez v2, :cond_9

    .line 201
    .line 202
    goto :goto_5

    .line 203
    :cond_9
    ushr-int/lit8 v3, p0, 0xc

    .line 204
    .line 205
    const/16 v5, 0xf

    .line 206
    .line 207
    and-int/2addr v3, v5

    .line 208
    ushr-int/2addr p0, v7

    .line 209
    and-int/2addr p0, v0

    .line 210
    if-eqz v3, :cond_7

    .line 211
    .line 212
    if-eq v3, v5, :cond_7

    .line 213
    .line 214
    if-ne p0, v0, :cond_a

    .line 215
    .line 216
    goto :goto_5

    .line 217
    :cond_a
    const/16 p0, 0x480

    .line 218
    .line 219
    if-eq v2, v4, :cond_c

    .line 220
    .line 221
    if-eq v2, v1, :cond_e

    .line 222
    .line 223
    if-ne v2, v0, :cond_b

    .line 224
    .line 225
    const/16 p0, 0x180

    .line 226
    .line 227
    goto :goto_6

    .line 228
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 229
    .line 230
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 231
    .line 232
    .line 233
    throw p0

    .line 234
    :cond_c
    if-ne p1, v0, :cond_d

    .line 235
    .line 236
    goto :goto_6

    .line 237
    :cond_d
    const/16 p0, 0x240

    .line 238
    .line 239
    :cond_e
    :goto_6
    if-eq p0, v6, :cond_f

    .line 240
    .line 241
    return p0

    .line 242
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 243
    .line 244
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 245
    .line 246
    .line 247
    throw p0

    .line 248
    :pswitch_5
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 249
    .line 250
    .line 251
    move-result p0

    .line 252
    add-int/2addr p0, v2

    .line 253
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 254
    .line 255
    .line 256
    move-result p0

    .line 257
    and-int/lit16 p0, p0, 0xf8

    .line 258
    .line 259
    shr-int/2addr p0, v0

    .line 260
    if-le p0, v7, :cond_11

    .line 261
    .line 262
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 263
    .line 264
    .line 265
    move-result p0

    .line 266
    add-int/lit8 p0, p0, 0x4

    .line 267
    .line 268
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 269
    .line 270
    .line 271
    move-result p0

    .line 272
    and-int/lit16 p0, p0, 0xc0

    .line 273
    .line 274
    shr-int/lit8 p0, p0, 0x6

    .line 275
    .line 276
    if-ne p0, v0, :cond_10

    .line 277
    .line 278
    goto :goto_7

    .line 279
    :cond_10
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 280
    .line 281
    .line 282
    move-result p0

    .line 283
    add-int/lit8 p0, p0, 0x4

    .line 284
    .line 285
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 286
    .line 287
    .line 288
    move-result p0

    .line 289
    and-int/lit8 p0, p0, 0x30

    .line 290
    .line 291
    shr-int/lit8 v0, p0, 0x4

    .line 292
    .line 293
    :goto_7
    sget-object p0, Lz3/b;->c:[I

    .line 294
    .line 295
    aget p0, p0, v0

    .line 296
    .line 297
    mul-int/lit16 p0, p0, 0x100

    .line 298
    .line 299
    return p0

    .line 300
    :cond_11
    const/16 p0, 0x600

    .line 301
    .line 302
    return p0

    .line 303
    :cond_12
    :pswitch_6
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 304
    .line 305
    .line 306
    move-result p0

    .line 307
    const v0, -0xde4bec0

    .line 308
    .line 309
    .line 310
    if-eq p0, v0, :cond_18

    .line 311
    .line 312
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 313
    .line 314
    .line 315
    move-result p0

    .line 316
    const v0, -0x17bd3b8f

    .line 317
    .line 318
    .line 319
    if-ne p0, v0, :cond_13

    .line 320
    .line 321
    goto :goto_c

    .line 322
    :cond_13
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 323
    .line 324
    .line 325
    move-result p0

    .line 326
    const v0, 0x25205864

    .line 327
    .line 328
    .line 329
    if-ne p0, v0, :cond_14

    .line 330
    .line 331
    const/16 p0, 0x1000

    .line 332
    .line 333
    return p0

    .line 334
    :cond_14
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 335
    .line 336
    .line 337
    move-result p0

    .line 338
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 339
    .line 340
    .line 341
    move-result v0

    .line 342
    if-eq v0, v5, :cond_17

    .line 343
    .line 344
    if-eq v0, v6, :cond_16

    .line 345
    .line 346
    const/16 v3, 0x1f

    .line 347
    .line 348
    if-eq v0, v3, :cond_15

    .line 349
    .line 350
    add-int/lit8 v0, p0, 0x4

    .line 351
    .line 352
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 353
    .line 354
    .line 355
    move-result v0

    .line 356
    and-int/2addr v0, v4

    .line 357
    shl-int/lit8 v0, v0, 0x6

    .line 358
    .line 359
    add-int/2addr p0, v2

    .line 360
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 361
    .line 362
    .line 363
    move-result p0

    .line 364
    :goto_8
    and-int/lit16 p0, p0, 0xfc

    .line 365
    .line 366
    :goto_9
    shr-int/2addr p0, v1

    .line 367
    or-int/2addr p0, v0

    .line 368
    goto :goto_b

    .line 369
    :cond_15
    add-int/lit8 v0, p0, 0x5

    .line 370
    .line 371
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 372
    .line 373
    .line 374
    move-result v0

    .line 375
    and-int/lit8 v0, v0, 0x7

    .line 376
    .line 377
    shl-int/lit8 v0, v0, 0x4

    .line 378
    .line 379
    add-int/lit8 p0, p0, 0x6

    .line 380
    .line 381
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 382
    .line 383
    .line 384
    move-result p0

    .line 385
    :goto_a
    and-int/lit8 p0, p0, 0x3c

    .line 386
    .line 387
    goto :goto_9

    .line 388
    :cond_16
    add-int/lit8 v0, p0, 0x4

    .line 389
    .line 390
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 391
    .line 392
    .line 393
    move-result v0

    .line 394
    and-int/lit8 v0, v0, 0x7

    .line 395
    .line 396
    shl-int/lit8 v0, v0, 0x4

    .line 397
    .line 398
    add-int/lit8 p0, p0, 0x7

    .line 399
    .line 400
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 401
    .line 402
    .line 403
    move-result p0

    .line 404
    goto :goto_a

    .line 405
    :cond_17
    add-int/lit8 v0, p0, 0x5

    .line 406
    .line 407
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 408
    .line 409
    .line 410
    move-result v0

    .line 411
    and-int/2addr v0, v4

    .line 412
    shl-int/lit8 v0, v0, 0x6

    .line 413
    .line 414
    add-int/lit8 p0, p0, 0x4

    .line 415
    .line 416
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 417
    .line 418
    .line 419
    move-result p0

    .line 420
    goto :goto_8

    .line 421
    :goto_b
    add-int/2addr p0, v4

    .line 422
    mul-int/lit8 p0, p0, 0x20

    .line 423
    .line 424
    return p0

    .line 425
    :cond_18
    :goto_c
    :pswitch_7
    const/16 p0, 0x400

    .line 426
    .line 427
    return p0

    .line 428
    :cond_19
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    .line 429
    .line 430
    .line 431
    move-result p0

    .line 432
    and-int/2addr p0, v1

    .line 433
    if-nez p0, :cond_1a

    .line 434
    .line 435
    move v2, v3

    .line 436
    goto :goto_f

    .line 437
    :cond_1a
    const/16 p0, 0x1a

    .line 438
    .line 439
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 440
    .line 441
    .line 442
    move-result p0

    .line 443
    const/16 v0, 0x1c

    .line 444
    .line 445
    move v2, v0

    .line 446
    move v1, v3

    .line 447
    :goto_d
    if-ge v1, p0, :cond_1b

    .line 448
    .line 449
    add-int/lit8 v5, v1, 0x1b

    .line 450
    .line 451
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    .line 452
    .line 453
    .line 454
    move-result v5

    .line 455
    add-int/2addr v2, v5

    .line 456
    add-int/lit8 v1, v1, 0x1

    .line 457
    .line 458
    goto :goto_d

    .line 459
    :cond_1b
    add-int/lit8 p0, v2, 0x1a

    .line 460
    .line 461
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 462
    .line 463
    .line 464
    move-result p0

    .line 465
    move v1, v3

    .line 466
    :goto_e
    if-ge v1, p0, :cond_1c

    .line 467
    .line 468
    add-int/lit8 v5, v2, 0x1b

    .line 469
    .line 470
    add-int/2addr v5, v1

    .line 471
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    .line 472
    .line 473
    .line 474
    move-result v5

    .line 475
    add-int/2addr v0, v5

    .line 476
    add-int/lit8 v1, v1, 0x1

    .line 477
    .line 478
    goto :goto_e

    .line 479
    :cond_1c
    add-int/2addr v2, v0

    .line 480
    :goto_f
    add-int/lit8 p0, v2, 0x1a

    .line 481
    .line 482
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 483
    .line 484
    .line 485
    move-result p0

    .line 486
    add-int/lit8 p0, p0, 0x1b

    .line 487
    .line 488
    add-int/2addr p0, v2

    .line 489
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 490
    .line 491
    .line 492
    move-result v0

    .line 493
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 494
    .line 495
    .line 496
    move-result v1

    .line 497
    sub-int/2addr v1, p0

    .line 498
    if-le v1, v4, :cond_1d

    .line 499
    .line 500
    add-int/2addr p0, v4

    .line 501
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 502
    .line 503
    .line 504
    move-result v3

    .line 505
    :cond_1d
    invoke-static {v0, v3}, Landroidx/media3/container/r;->e(BB)J

    .line 506
    .line 507
    .line 508
    move-result-wide p0

    .line 509
    const-wide/32 v0, 0xbb80

    .line 510
    .line 511
    .line 512
    mul-long/2addr p0, v0

    .line 513
    const-wide/32 v0, 0xf4240

    .line 514
    .line 515
    .line 516
    div-long/2addr p0, v0

    .line 517
    long-to-int p0, p0

    .line 518
    return p0

    .line 519
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_7
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_7
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public final a(J)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lj3/f0;->v()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    iget-object v2, p0, Lj3/f0;->b:Lcom/google/common/reflect/x;

    .line 7
    .line 8
    if-nez v0, :cond_5

    .line 9
    .line 10
    iget-boolean v0, p0, Lj3/f0;->V:Z

    .line 11
    .line 12
    if-nez v0, :cond_3

    .line 13
    .line 14
    iget-object v0, p0, Lj3/f0;->p:Landroidx/compose/foundation/lazy/grid/l;

    .line 15
    .line 16
    invoke-static {v0}, Landroidx/compose/foundation/lazy/grid/l;->a(Landroidx/compose/foundation/lazy/grid/l;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_3

    .line 21
    .line 22
    iget-object v0, p0, Lj3/f0;->p:Landroidx/compose/foundation/lazy/grid/l;

    .line 23
    .line 24
    iget-object v0, v0, Landroidx/compose/foundation/lazy/grid/l;->c:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, Landroidx/media3/common/t;

    .line 27
    .line 28
    iget v0, v0, Landroidx/media3/common/t;->I:I

    .line 29
    .line 30
    iget-object v0, p0, Lj3/f0;->x:Landroidx/media3/common/m0;

    .line 31
    .line 32
    iget-object v3, v2, Lcom/google/common/reflect/x;->d:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v3, Lc3/p;

    .line 35
    .line 36
    iget v4, v0, Landroidx/media3/common/m0;->a:F

    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    const/4 v5, 0x0

    .line 42
    cmpl-float v6, v4, v5

    .line 43
    .line 44
    const/4 v7, 0x1

    .line 45
    if-lez v6, :cond_0

    .line 46
    .line 47
    move v6, v7

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    move v6, v1

    .line 50
    :goto_0
    invoke-static {v6}, Lcom/google/common/base/q;->h(Z)V

    .line 51
    .line 52
    .line 53
    iget v6, v3, Lc3/p;->c:F

    .line 54
    .line 55
    cmpl-float v6, v6, v4

    .line 56
    .line 57
    if-eqz v6, :cond_1

    .line 58
    .line 59
    iput v4, v3, Lc3/p;->c:F

    .line 60
    .line 61
    iput-boolean v7, v3, Lc3/p;->i:Z

    .line 62
    .line 63
    :cond_1
    iget v4, v0, Landroidx/media3/common/m0;->b:F

    .line 64
    .line 65
    cmpl-float v5, v4, v5

    .line 66
    .line 67
    if-lez v5, :cond_2

    .line 68
    .line 69
    move v5, v7

    .line 70
    goto :goto_1

    .line 71
    :cond_2
    move v5, v1

    .line 72
    :goto_1
    invoke-static {v5}, Lcom/google/common/base/q;->h(Z)V

    .line 73
    .line 74
    .line 75
    iget v5, v3, Lc3/p;->d:F

    .line 76
    .line 77
    cmpl-float v5, v5, v4

    .line 78
    .line 79
    if-eqz v5, :cond_4

    .line 80
    .line 81
    iput v4, v3, Lc3/p;->d:F

    .line 82
    .line 83
    iput-boolean v7, v3, Lc3/p;->i:Z

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_3
    sget-object v0, Landroidx/media3/common/m0;->d:Landroidx/media3/common/m0;

    .line 87
    .line 88
    :cond_4
    :goto_2
    iput-object v0, p0, Lj3/f0;->x:Landroidx/media3/common/m0;

    .line 89
    .line 90
    :goto_3
    move-object v4, v0

    .line 91
    goto :goto_4

    .line 92
    :cond_5
    sget-object v0, Landroidx/media3/common/m0;->d:Landroidx/media3/common/m0;

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :goto_4
    iget-boolean v0, p0, Lj3/f0;->V:Z

    .line 96
    .line 97
    if-nez v0, :cond_6

    .line 98
    .line 99
    iget-object v0, p0, Lj3/f0;->p:Landroidx/compose/foundation/lazy/grid/l;

    .line 100
    .line 101
    invoke-static {v0}, Landroidx/compose/foundation/lazy/grid/l;->a(Landroidx/compose/foundation/lazy/grid/l;)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_6

    .line 106
    .line 107
    iget-object v0, p0, Lj3/f0;->p:Landroidx/compose/foundation/lazy/grid/l;

    .line 108
    .line 109
    iget-object v0, v0, Landroidx/compose/foundation/lazy/grid/l;->c:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast v0, Landroidx/media3/common/t;

    .line 112
    .line 113
    iget v0, v0, Landroidx/media3/common/t;->I:I

    .line 114
    .line 115
    iget-boolean v1, p0, Lj3/f0;->y:Z

    .line 116
    .line 117
    iget-object v0, v2, Lcom/google/common/reflect/x;->c:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v0, Lj3/k0;

    .line 120
    .line 121
    iput-boolean v1, v0, Lj3/k0;->o:Z

    .line 122
    .line 123
    :cond_6
    iput-boolean v1, p0, Lj3/f0;->y:Z

    .line 124
    .line 125
    new-instance v3, Lj3/e0;

    .line 126
    .line 127
    const-wide/16 v0, 0x0

    .line 128
    .line 129
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    .line 130
    .line 131
    .line 132
    move-result-wide v5

    .line 133
    iget-object p1, p0, Lj3/f0;->p:Landroidx/compose/foundation/lazy/grid/l;

    .line 134
    .line 135
    invoke-virtual {p0}, Lj3/f0;->j()J

    .line 136
    .line 137
    .line 138
    move-result-wide v0

    .line 139
    iget-object p1, p1, Landroidx/compose/foundation/lazy/grid/l;->e:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast p1, Lj3/k;

    .line 142
    .line 143
    iget p1, p1, Lj3/k;->b:I

    .line 144
    .line 145
    invoke-static {p1, v0, v1}, Le3/e0;->V(IJ)J

    .line 146
    .line 147
    .line 148
    move-result-wide v7

    .line 149
    invoke-direct/range {v3 .. v8}, Lj3/e0;-><init>(Landroidx/media3/common/m0;JJ)V

    .line 150
    .line 151
    .line 152
    iget-object p1, p0, Lj3/f0;->h:Ljava/util/ArrayDeque;

    .line 153
    .line 154
    invoke-virtual {p1, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    iget-object p1, p0, Lj3/f0;->p:Landroidx/compose/foundation/lazy/grid/l;

    .line 158
    .line 159
    iget-object p1, p1, Landroidx/compose/foundation/lazy/grid/l;->f:Ljava/lang/Object;

    .line 160
    .line 161
    check-cast p1, Lc3/g;

    .line 162
    .line 163
    iput-object p1, p0, Lj3/f0;->q:Lc3/g;

    .line 164
    .line 165
    invoke-virtual {p1}, Lc3/g;->a()V

    .line 166
    .line 167
    .line 168
    iget-object p1, p0, Lj3/f0;->n:Lcom/google/common/base/a0;

    .line 169
    .line 170
    if-eqz p1, :cond_7

    .line 171
    .line 172
    iget-boolean p2, p0, Lj3/f0;->y:Z

    .line 173
    .line 174
    iget-object p1, p1, Lcom/google/common/base/a0;->a:Ljava/lang/Object;

    .line 175
    .line 176
    check-cast p1, Lj3/i0;

    .line 177
    .line 178
    iget-object p1, p1, Lj3/i0;->Y0:Lj3/n;

    .line 179
    .line 180
    iget-object v0, p1, Lj3/n;->b:Landroid/os/Handler;

    .line 181
    .line 182
    if-eqz v0, :cond_7

    .line 183
    .line 184
    new-instance v1, Lcom/vungle/ads/internal/ui/b;

    .line 185
    .line 186
    invoke-direct {v1, p1, p2}, Lcom/vungle/ads/internal/ui/b;-><init>(Lj3/n;Z)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 190
    .line 191
    .line 192
    :cond_7
    return-void
.end method

.method public final b(Lj3/k;)Lj3/w;
    .locals 10

    .line 1
    :try_start_0
    iget-object v0, p0, Lj3/f0;->r:Lj3/l;

    .line 2
    .line 3
    check-cast v0, Lj3/x;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lj3/x;->a(Lj3/k;)Lj3/w;

    .line 6
    .line 7
    .line 8
    move-result-object p1
    :try_end_0
    .catch Landroidx/media3/exoplayer/audio/AudioOutputProvider$InitializationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object p1

    .line 10
    :goto_0
    move-object v9, v0

    .line 11
    goto :goto_1

    .line 12
    :catch_0
    move-exception v0

    .line 13
    goto :goto_0

    .line 14
    :goto_1
    new-instance v1, Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;

    .line 15
    .line 16
    iget v3, p1, Lj3/k;->b:I

    .line 17
    .line 18
    iget v4, p1, Lj3/k;->c:I

    .line 19
    .line 20
    iget v5, p1, Lj3/k;->a:I

    .line 21
    .line 22
    iget v6, p1, Lj3/k;->f:I

    .line 23
    .line 24
    iget-object v0, p0, Lj3/f0;->p:Landroidx/compose/foundation/lazy/grid/l;

    .line 25
    .line 26
    iget-object v0, v0, Landroidx/compose/foundation/lazy/grid/l;->c:Ljava/lang/Object;

    .line 27
    .line 28
    move-object v7, v0

    .line 29
    check-cast v7, Landroidx/media3/common/t;

    .line 30
    .line 31
    iget-boolean v8, p1, Lj3/k;->e:Z

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-direct/range {v1 .. v9}, Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;-><init>(IIIIILandroidx/media3/common/t;ZLjava/lang/Exception;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lj3/f0;->n:Lcom/google/common/base/a0;

    .line 38
    .line 39
    if-eqz p1, :cond_0

    .line 40
    .line 41
    invoke-virtual {p1, v1}, Lcom/google/common/base/a0;->p(Ljava/lang/Exception;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    throw v1
.end method

.method public final c(Landroidx/media3/common/t;[I)V
    .locals 12

    .line 1
    iget-object v0, p0, Lj3/f0;->s:Lj3/b0;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lj3/f0;->a:Landroid/content/Context;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    new-instance v0, Lj3/b0;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lj3/b0;-><init>(Lj3/f0;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lj3/f0;->s:Lj3/b0;

    .line 15
    .line 16
    iget-object v1, p0, Lj3/f0;->r:Lj3/l;

    .line 17
    .line 18
    check-cast v1, Lj3/x;

    .line 19
    .line 20
    invoke-virtual {v1}, Lj3/x;->f()V

    .line 21
    .line 22
    .line 23
    iget-object v2, v1, Lj3/x;->f:Le3/l;

    .line 24
    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    new-instance v2, Le3/l;

    .line 28
    .line 29
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-direct {v2, v3}, Le3/l;-><init>(Ljava/lang/Thread;)V

    .line 34
    .line 35
    .line 36
    iput-object v2, v1, Lj3/x;->f:Le3/l;

    .line 37
    .line 38
    :cond_0
    iget-object v1, v1, Lj3/x;->f:Le3/l;

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Le3/l;->a(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    iget-object v0, p1, Landroidx/media3/common/t;->o:Ljava/lang/String;

    .line 44
    .line 45
    iget v1, p1, Landroidx/media3/common/t;->G:I

    .line 46
    .line 47
    iget v2, p1, Landroidx/media3/common/t;->I:I

    .line 48
    .line 49
    const-string v3, "audio/raw"

    .line 50
    .line 51
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_6

    .line 56
    .line 57
    invoke-static {v2}, Le3/e0;->M(I)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    invoke-static {v0}, Lcom/google/common/base/q;->h(Z)V

    .line 62
    .line 63
    .line 64
    invoke-static {v2}, Le3/e0;->t(I)I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    mul-int/2addr v0, v1

    .line 69
    new-instance v3, Lcom/google/common/collect/c3;

    .line 70
    .line 71
    const/4 v4, 0x4

    .line 72
    invoke-direct {v3, v4}, Lcom/google/common/collect/y2;-><init>(I)V

    .line 73
    .line 74
    .line 75
    iget-object v4, p0, Lj3/f0;->g:Lcom/google/common/collect/ImmutableList;

    .line 76
    .line 77
    invoke-virtual {v3, v4}, Lcom/google/common/collect/y2;->f(Ljava/lang/Iterable;)V

    .line 78
    .line 79
    .line 80
    iget-object v4, p0, Lj3/f0;->e:Lc3/q;

    .line 81
    .line 82
    invoke-virtual {v3, v4}, Lcom/google/common/collect/y2;->d(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    iget-object v4, p0, Lj3/f0;->b:Lcom/google/common/reflect/x;

    .line 86
    .line 87
    iget-object v4, v4, Lcom/google/common/reflect/x;->b:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v4, [Lc3/j;

    .line 90
    .line 91
    array-length v5, v4

    .line 92
    invoke-virtual {v3, v5, v4}, Lcom/google/common/collect/y2;->e(I[Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    new-instance v4, Lc3/g;

    .line 96
    .line 97
    invoke-virtual {v3}, Lcom/google/common/collect/c3;->h()Lcom/google/common/collect/ImmutableList;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-direct {v4, v3}, Lc3/g;-><init>(Lcom/google/common/collect/ImmutableList;)V

    .line 102
    .line 103
    .line 104
    iget-object v3, p0, Lj3/f0;->q:Lc3/g;

    .line 105
    .line 106
    invoke-virtual {v4, v3}, Lc3/g;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    if-eqz v3, :cond_2

    .line 111
    .line 112
    iget-object v4, p0, Lj3/f0;->q:Lc3/g;

    .line 113
    .line 114
    :cond_2
    iget v3, p1, Landroidx/media3/common/t;->J:I

    .line 115
    .line 116
    iget v5, p1, Landroidx/media3/common/t;->K:I

    .line 117
    .line 118
    iget-object v6, p0, Lj3/f0;->d:Lj3/n0;

    .line 119
    .line 120
    iput v3, v6, Lj3/n0;->i:I

    .line 121
    .line 122
    iput v5, v6, Lj3/n0;->j:I

    .line 123
    .line 124
    iget-object v3, p0, Lj3/f0;->c:Lj3/z;

    .line 125
    .line 126
    iput-object p2, v3, Lj3/z;->i:[I

    .line 127
    .line 128
    new-instance p2, Lc3/h;

    .line 129
    .line 130
    iget v3, p1, Landroidx/media3/common/t;->H:I

    .line 131
    .line 132
    invoke-direct {p2, v3, v1, v2}, Lc3/h;-><init>(III)V

    .line 133
    .line 134
    .line 135
    :try_start_0
    iget-object v1, v4, Lc3/g;->a:Lcom/google/common/collect/ImmutableList;

    .line 136
    .line 137
    sget-object v2, Lc3/h;->e:Lc3/h;

    .line 138
    .line 139
    invoke-virtual {p2, v2}, Lc3/h;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    if-nez v2, :cond_5

    .line 144
    .line 145
    const/4 v2, 0x0

    .line 146
    :goto_0
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    if-ge v2, v3, :cond_4

    .line 151
    .line 152
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    check-cast v3, Lc3/j;

    .line 157
    .line 158
    invoke-interface {v3, p2}, Lc3/j;->e(Lc3/h;)Lc3/h;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    invoke-interface {v3}, Lc3/j;->b()Z

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    if-eqz v3, :cond_3

    .line 167
    .line 168
    sget-object p2, Lc3/h;->e:Lc3/h;

    .line 169
    .line 170
    invoke-virtual {v5, p2}, Lc3/h;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result p2

    .line 174
    xor-int/lit8 p2, p2, 0x1

    .line 175
    .line 176
    invoke-static {p2}, Lcom/google/common/base/q;->u(Z)V
    :try_end_0
    .catch Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .line 178
    .line 179
    move-object p2, v5

    .line 180
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 181
    .line 182
    goto :goto_0

    .line 183
    :cond_4
    iget v1, p2, Lc3/h;->b:I

    .line 184
    .line 185
    iget v2, p2, Lc3/h;->c:I

    .line 186
    .line 187
    invoke-virtual {p1}, Landroidx/media3/common/t;->a()Landroidx/media3/common/s;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    iput v2, v3, Landroidx/media3/common/s;->H:I

    .line 192
    .line 193
    iget p2, p2, Lc3/h;->a:I

    .line 194
    .line 195
    iput p2, v3, Landroidx/media3/common/s;->G:I

    .line 196
    .line 197
    iput v1, v3, Landroidx/media3/common/s;->F:I

    .line 198
    .line 199
    new-instance p2, Landroidx/media3/common/t;

    .line 200
    .line 201
    invoke-direct {p2, v3}, Landroidx/media3/common/t;-><init>(Landroidx/media3/common/s;)V

    .line 202
    .line 203
    .line 204
    invoke-static {v2}, Le3/e0;->t(I)I

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    mul-int/2addr v2, v1

    .line 209
    move-object v7, p2

    .line 210
    move v8, v0

    .line 211
    move v9, v2

    .line 212
    :goto_1
    move-object v11, v4

    .line 213
    goto :goto_2

    .line 214
    :cond_5
    :try_start_1
    new-instance v0, Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;

    .line 215
    .line 216
    invoke-direct {v0, p2}, Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;-><init>(Lc3/h;)V

    .line 217
    .line 218
    .line 219
    throw v0
    :try_end_1
    .catch Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    move-object p2, v0

    .line 222
    new-instance v0, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;

    .line 223
    .line 224
    invoke-direct {v0, p2, p1}, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/Throwable;Landroidx/media3/common/t;)V

    .line 225
    .line 226
    .line 227
    throw v0

    .line 228
    :cond_6
    new-instance v4, Lc3/g;

    .line 229
    .line 230
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    .line 231
    .line 232
    .line 233
    move-result-object p2

    .line 234
    invoke-direct {v4, p2}, Lc3/g;-><init>(Lcom/google/common/collect/ImmutableList;)V

    .line 235
    .line 236
    .line 237
    const/4 v0, -0x1

    .line 238
    move-object v7, p1

    .line 239
    move v8, v0

    .line 240
    move v9, v8

    .line 241
    goto :goto_1

    .line 242
    :goto_2
    invoke-virtual {p0, v7}, Lj3/f0;->g(Landroidx/media3/common/t;)Lj3/h;

    .line 243
    .line 244
    .line 245
    move-result-object p2

    .line 246
    iget-object v0, p2, Lj3/h;->a:Landroidx/media3/common/t;

    .line 247
    .line 248
    :try_start_2
    iget-object v1, p0, Lj3/f0;->r:Lj3/l;

    .line 249
    .line 250
    check-cast v1, Lj3/x;

    .line 251
    .line 252
    invoke-virtual {v1, p2}, Lj3/x;->c(Lj3/h;)Lj3/k;

    .line 253
    .line 254
    .line 255
    move-result-object v10
    :try_end_2
    .catch Landroidx/media3/exoplayer/audio/AudioOutputProvider$ConfigurationException; {:try_start_2 .. :try_end_2} :catch_1

    .line 256
    iget-boolean p2, v10, Lj3/k;->e:Z

    .line 257
    .line 258
    iget v1, v10, Lj3/k;->a:I

    .line 259
    .line 260
    const-string v2, ")"

    .line 261
    .line 262
    if-eqz v1, :cond_9

    .line 263
    .line 264
    iget v1, v10, Lj3/k;->c:I

    .line 265
    .line 266
    if-eqz v1, :cond_8

    .line 267
    .line 268
    const/4 p2, 0x0

    .line 269
    iput-boolean p2, p0, Lj3/f0;->X:Z

    .line 270
    .line 271
    new-instance v5, Landroidx/compose/foundation/lazy/grid/l;

    .line 272
    .line 273
    move-object v6, p1

    .line 274
    invoke-direct/range {v5 .. v11}, Landroidx/compose/foundation/lazy/grid/l;-><init>(Landroidx/media3/common/t;Landroidx/media3/common/t;IILj3/k;Lc3/g;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {p0}, Lj3/f0;->n()Z

    .line 278
    .line 279
    .line 280
    move-result p1

    .line 281
    if-eqz p1, :cond_7

    .line 282
    .line 283
    iput-object v5, p0, Lj3/f0;->o:Landroidx/compose/foundation/lazy/grid/l;

    .line 284
    .line 285
    return-void

    .line 286
    :cond_7
    iput-object v5, p0, Lj3/f0;->p:Landroidx/compose/foundation/lazy/grid/l;

    .line 287
    .line 288
    return-void

    .line 289
    :cond_8
    new-instance p1, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;

    .line 290
    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    .line 292
    .line 293
    const-string v3, "Invalid output channel config (isOffload="

    .line 294
    .line 295
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object p2

    .line 308
    invoke-direct {p1, p2, v0}, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/String;Landroidx/media3/common/t;)V

    .line 309
    .line 310
    .line 311
    throw p1

    .line 312
    :cond_9
    new-instance p1, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;

    .line 313
    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    .line 315
    .line 316
    const-string v3, "Invalid output encoding (isOffload="

    .line 317
    .line 318
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object p2

    .line 331
    invoke-direct {p1, p2, v0}, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/String;Landroidx/media3/common/t;)V

    .line 332
    .line 333
    .line 334
    throw p1

    .line 335
    :catch_1
    move-exception v0

    .line 336
    move-object v6, p1

    .line 337
    move-object p1, v0

    .line 338
    new-instance p2, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;

    .line 339
    .line 340
    invoke-direct {p2, p1, v6}, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/Throwable;Landroidx/media3/common/t;)V

    .line 341
    .line 342
    .line 343
    throw p2
.end method

.method public final d(J)V
    .locals 9

    .line 1
    iget-object v0, p0, Lj3/f0;->K:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_1

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lj3/f0;->l:Lcom/google/ads/interactivemedia/v3/internal/t5;

    .line 8
    .line 9
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/t5;->c:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Ljava/lang/Exception;

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    sget-object v1, Lj3/f0;->c0:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-lez v1, :cond_2

    .line 23
    .line 24
    goto/16 :goto_1

    .line 25
    .line 26
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    iget-wide v3, v0, Lcom/google/ads/interactivemedia/v3/internal/t5;->b:J

    .line 31
    .line 32
    cmp-long v1, v1, v3

    .line 33
    .line 34
    if-gez v1, :cond_3

    .line 35
    .line 36
    goto/16 :goto_1

    .line 37
    .line 38
    :cond_3
    :goto_0
    iget-object v1, p0, Lj3/f0;->K:Ljava/nio/ByteBuffer;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    const-wide/16 v2, 0x0

    .line 45
    .line 46
    const/4 v4, 0x0

    .line 47
    const/4 v5, 0x1

    .line 48
    :try_start_0
    iget-object v6, p0, Lj3/f0;->t:Lj3/w;

    .line 49
    .line 50
    iget-object v7, p0, Lj3/f0;->K:Ljava/nio/ByteBuffer;

    .line 51
    .line 52
    iget v8, p0, Lj3/f0;->J:I

    .line 53
    .line 54
    invoke-virtual {v6, v7, v8, p1, p2}, Lj3/w;->g(Ljava/nio/ByteBuffer;IJ)Z

    .line 55
    .line 56
    .line 57
    move-result p1
    :try_end_0
    .catch Landroidx/media3/exoplayer/audio/AudioOutput$WriteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 59
    .line 60
    .line 61
    move-result-wide v6

    .line 62
    iput-wide v6, p0, Lj3/f0;->W:J

    .line 63
    .line 64
    const/4 p2, 0x0

    .line 65
    iput-object p2, v0, Lcom/google/ads/interactivemedia/v3/internal/t5;->c:Ljava/lang/Object;

    .line 66
    .line 67
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    iput-wide v6, v0, Lcom/google/ads/interactivemedia/v3/internal/t5;->a:J

    .line 73
    .line 74
    iput-wide v6, v0, Lcom/google/ads/interactivemedia/v3/internal/t5;->b:J

    .line 75
    .line 76
    iget-object v0, p0, Lj3/f0;->t:Lj3/w;

    .line 77
    .line 78
    invoke-virtual {v0}, Lj3/w;->c()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_5

    .line 83
    .line 84
    iget-wide v6, p0, Lj3/f0;->C:J

    .line 85
    .line 86
    cmp-long v0, v6, v2

    .line 87
    .line 88
    if-lez v0, :cond_4

    .line 89
    .line 90
    iput-boolean v4, p0, Lj3/f0;->Y:Z

    .line 91
    .line 92
    :cond_4
    iget-boolean v0, p0, Lj3/f0;->O:Z

    .line 93
    .line 94
    if-eqz v0, :cond_5

    .line 95
    .line 96
    iget-object v0, p0, Lj3/f0;->n:Lcom/google/common/base/a0;

    .line 97
    .line 98
    if-eqz v0, :cond_5

    .line 99
    .line 100
    if-nez p1, :cond_5

    .line 101
    .line 102
    iget-boolean v2, p0, Lj3/f0;->Y:Z

    .line 103
    .line 104
    if-nez v2, :cond_5

    .line 105
    .line 106
    iget-object v0, v0, Lcom/google/common/base/a0;->a:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v0, Lj3/i0;

    .line 109
    .line 110
    iget-object v0, v0, Ln3/p;->W:Landroidx/media3/exoplayer/j0;

    .line 111
    .line 112
    if-eqz v0, :cond_5

    .line 113
    .line 114
    iget-object v0, v0, Landroidx/media3/exoplayer/j0;->a:Landroidx/media3/exoplayer/o0;

    .line 115
    .line 116
    iput-boolean v5, v0, Landroidx/media3/exoplayer/o0;->h0:Z

    .line 117
    .line 118
    :cond_5
    iget-object v0, p0, Lj3/f0;->p:Landroidx/compose/foundation/lazy/grid/l;

    .line 119
    .line 120
    invoke-static {v0}, Landroidx/compose/foundation/lazy/grid/l;->a(Landroidx/compose/foundation/lazy/grid/l;)Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-eqz v0, :cond_6

    .line 125
    .line 126
    iget-wide v2, p0, Lj3/f0;->B:J

    .line 127
    .line 128
    iget-object v0, p0, Lj3/f0;->K:Ljava/nio/ByteBuffer;

    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    sub-int/2addr v1, v0

    .line 135
    int-to-long v0, v1

    .line 136
    add-long/2addr v2, v0

    .line 137
    iput-wide v2, p0, Lj3/f0;->B:J

    .line 138
    .line 139
    :cond_6
    if-eqz p1, :cond_9

    .line 140
    .line 141
    iget-object p1, p0, Lj3/f0;->p:Landroidx/compose/foundation/lazy/grid/l;

    .line 142
    .line 143
    invoke-static {p1}, Landroidx/compose/foundation/lazy/grid/l;->a(Landroidx/compose/foundation/lazy/grid/l;)Z

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    if-nez p1, :cond_8

    .line 148
    .line 149
    iget-object p1, p0, Lj3/f0;->K:Ljava/nio/ByteBuffer;

    .line 150
    .line 151
    iget-object v0, p0, Lj3/f0;->I:Ljava/nio/ByteBuffer;

    .line 152
    .line 153
    if-ne p1, v0, :cond_7

    .line 154
    .line 155
    move v4, v5

    .line 156
    :cond_7
    invoke-static {v4}, Lcom/google/common/base/q;->u(Z)V

    .line 157
    .line 158
    .line 159
    iget-wide v0, p0, Lj3/f0;->C:J

    .line 160
    .line 161
    iget p1, p0, Lj3/f0;->D:I

    .line 162
    .line 163
    int-to-long v2, p1

    .line 164
    iget p1, p0, Lj3/f0;->J:I

    .line 165
    .line 166
    int-to-long v4, p1

    .line 167
    mul-long/2addr v2, v4

    .line 168
    add-long/2addr v2, v0

    .line 169
    iput-wide v2, p0, Lj3/f0;->C:J

    .line 170
    .line 171
    :cond_8
    iput-object p2, p0, Lj3/f0;->K:Ljava/nio/ByteBuffer;

    .line 172
    .line 173
    :cond_9
    :goto_1
    return-void

    .line 174
    :catch_0
    move-exception p1

    .line 175
    iget-boolean p2, p1, Landroidx/media3/exoplayer/audio/AudioOutput$WriteException;->isRecoverable:Z

    .line 176
    .line 177
    if-eqz p2, :cond_c

    .line 178
    .line 179
    invoke-virtual {p0}, Lj3/f0;->j()J

    .line 180
    .line 181
    .line 182
    move-result-wide v6

    .line 183
    cmp-long p2, v6, v2

    .line 184
    .line 185
    if-lez p2, :cond_a

    .line 186
    .line 187
    :goto_2
    move v4, v5

    .line 188
    goto :goto_3

    .line 189
    :cond_a
    iget-object p2, p0, Lj3/f0;->t:Lj3/w;

    .line 190
    .line 191
    invoke-virtual {p2}, Lj3/w;->c()Z

    .line 192
    .line 193
    .line 194
    move-result p2

    .line 195
    if-eqz p2, :cond_c

    .line 196
    .line 197
    iget-object p2, p0, Lj3/f0;->p:Landroidx/compose/foundation/lazy/grid/l;

    .line 198
    .line 199
    iget-object p2, p2, Landroidx/compose/foundation/lazy/grid/l;->e:Ljava/lang/Object;

    .line 200
    .line 201
    check-cast p2, Lj3/k;

    .line 202
    .line 203
    iget-boolean p2, p2, Lj3/k;->e:Z

    .line 204
    .line 205
    if-nez p2, :cond_b

    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_b
    iput-boolean v5, p0, Lj3/f0;->X:Z

    .line 209
    .line 210
    goto :goto_2

    .line 211
    :cond_c
    :goto_3
    new-instance p2, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;

    .line 212
    .line 213
    iget v1, p1, Landroidx/media3/exoplayer/audio/AudioOutput$WriteException;->errorCode:I

    .line 214
    .line 215
    iget-object v2, p0, Lj3/f0;->p:Landroidx/compose/foundation/lazy/grid/l;

    .line 216
    .line 217
    iget-object v2, v2, Landroidx/compose/foundation/lazy/grid/l;->c:Ljava/lang/Object;

    .line 218
    .line 219
    check-cast v2, Landroidx/media3/common/t;

    .line 220
    .line 221
    invoke-direct {p2, v1, v2, v4}, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;-><init>(ILandroidx/media3/common/t;Z)V

    .line 222
    .line 223
    .line 224
    iget-object v1, p0, Lj3/f0;->n:Lcom/google/common/base/a0;

    .line 225
    .line 226
    if-eqz v1, :cond_d

    .line 227
    .line 228
    invoke-virtual {v1, p2}, Lcom/google/common/base/a0;->p(Ljava/lang/Exception;)V

    .line 229
    .line 230
    .line 231
    :cond_d
    iget-boolean p1, p1, Landroidx/media3/exoplayer/audio/AudioOutput$WriteException;->isRecoverable:Z

    .line 232
    .line 233
    if-nez p1, :cond_e

    .line 234
    .line 235
    invoke-virtual {v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/t5;->a(Ljava/lang/Exception;)V

    .line 236
    .line 237
    .line 238
    return-void

    .line 239
    :cond_e
    throw p2
.end method

.method public final e()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lj3/f0;->q:Lc3/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Lc3/g;->d()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-wide/high16 v1, -0x8000000000000000L

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x1

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, v1, v2}, Lj3/f0;->d(J)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lj3/f0;->K:Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    if-nez v0, :cond_4

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    iget-object v0, p0, Lj3/f0;->q:Lc3/g;

    .line 22
    .line 23
    invoke-virtual {v0}, Lc3/g;->d()Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-eqz v5, :cond_2

    .line 28
    .line 29
    iget-boolean v5, v0, Lc3/g;->d:Z

    .line 30
    .line 31
    if-eqz v5, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iput-boolean v4, v0, Lc3/g;->d:Z

    .line 35
    .line 36
    iget-object v0, v0, Lc3/g;->b:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lc3/j;

    .line 43
    .line 44
    invoke-interface {v0}, Lc3/j;->g()V

    .line 45
    .line 46
    .line 47
    :cond_2
    :goto_0
    invoke-virtual {p0, v1, v2}, Lj3/f0;->q(J)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lj3/f0;->q:Lc3/g;

    .line 51
    .line 52
    invoke-virtual {v0}, Lc3/g;->c()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_4

    .line 57
    .line 58
    iget-object v0, p0, Lj3/f0;->K:Ljava/nio/ByteBuffer;

    .line 59
    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_4

    .line 67
    .line 68
    :cond_3
    :goto_1
    return v4

    .line 69
    :cond_4
    return v3
.end method

.method public final f()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lj3/f0;->n()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v0, :cond_5

    .line 9
    .line 10
    iput-wide v1, p0, Lj3/f0;->z:J

    .line 11
    .line 12
    iput-wide v1, p0, Lj3/f0;->A:J

    .line 13
    .line 14
    iput-wide v1, p0, Lj3/f0;->B:J

    .line 15
    .line 16
    iput-wide v1, p0, Lj3/f0;->C:J

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lj3/f0;->Y:Z

    .line 20
    .line 21
    iput v0, p0, Lj3/f0;->D:I

    .line 22
    .line 23
    new-instance v4, Lj3/e0;

    .line 24
    .line 25
    iget-object v5, p0, Lj3/f0;->x:Landroidx/media3/common/m0;

    .line 26
    .line 27
    const-wide/16 v6, 0x0

    .line 28
    .line 29
    const-wide/16 v8, 0x0

    .line 30
    .line 31
    invoke-direct/range {v4 .. v9}, Lj3/e0;-><init>(Landroidx/media3/common/m0;JJ)V

    .line 32
    .line 33
    .line 34
    iput-object v4, p0, Lj3/f0;->w:Lj3/e0;

    .line 35
    .line 36
    iput-wide v1, p0, Lj3/f0;->G:J

    .line 37
    .line 38
    iput-object v3, p0, Lj3/f0;->v:Lj3/e0;

    .line 39
    .line 40
    iget-object v4, p0, Lj3/f0;->h:Ljava/util/ArrayDeque;

    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->clear()V

    .line 43
    .line 44
    .line 45
    iput-object v3, p0, Lj3/f0;->I:Ljava/nio/ByteBuffer;

    .line 46
    .line 47
    iput v0, p0, Lj3/f0;->J:I

    .line 48
    .line 49
    iput-object v3, p0, Lj3/f0;->K:Ljava/nio/ByteBuffer;

    .line 50
    .line 51
    iput-boolean v0, p0, Lj3/f0;->M:Z

    .line 52
    .line 53
    iput-boolean v0, p0, Lj3/f0;->L:Z

    .line 54
    .line 55
    iput-boolean v0, p0, Lj3/f0;->N:Z

    .line 56
    .line 57
    iget-object v0, p0, Lj3/f0;->d:Lj3/n0;

    .line 58
    .line 59
    iput-wide v1, v0, Lj3/n0;->o:J

    .line 60
    .line 61
    iget-object v0, p0, Lj3/f0;->p:Landroidx/compose/foundation/lazy/grid/l;

    .line 62
    .line 63
    iget-object v0, v0, Landroidx/compose/foundation/lazy/grid/l;->f:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v0, Lc3/g;

    .line 66
    .line 67
    iput-object v0, p0, Lj3/f0;->q:Lc3/g;

    .line 68
    .line 69
    invoke-virtual {v0}, Lc3/g;->a()V

    .line 70
    .line 71
    .line 72
    iput-object v3, p0, Lj3/f0;->j:Lj3/d0;

    .line 73
    .line 74
    iget-object v0, p0, Lj3/f0;->o:Landroidx/compose/foundation/lazy/grid/l;

    .line 75
    .line 76
    if-eqz v0, :cond_0

    .line 77
    .line 78
    iput-object v0, p0, Lj3/f0;->p:Landroidx/compose/foundation/lazy/grid/l;

    .line 79
    .line 80
    iput-object v3, p0, Lj3/f0;->o:Landroidx/compose/foundation/lazy/grid/l;

    .line 81
    .line 82
    :cond_0
    sget-object v0, Lj3/f0;->c0:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lj3/f0;->t:Lj3/w;

    .line 88
    .line 89
    iget-object v4, v0, Lj3/w;->f:Lj3/y;

    .line 90
    .line 91
    iget-object v4, v4, Lj3/y;->d:Landroid/media/AudioTrack;

    .line 92
    .line 93
    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    const/4 v5, 0x3

    .line 98
    if-ne v4, v5, :cond_1

    .line 99
    .line 100
    iget-object v4, v0, Lj3/w;->a:Landroid/media/AudioTrack;

    .line 101
    .line 102
    invoke-virtual {v4}, Landroid/media/AudioTrack;->pause()V

    .line 103
    .line 104
    .line 105
    :cond_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 106
    .line 107
    const/16 v5, 0x1d

    .line 108
    .line 109
    if-lt v4, v5, :cond_2

    .line 110
    .line 111
    invoke-virtual {v0}, Lj3/w;->c()Z

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    if-eqz v5, :cond_2

    .line 116
    .line 117
    iget-object v5, v0, Lj3/w;->i:Lj3/v;

    .line 118
    .line 119
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    invoke-static {v5}, Lj3/v;->a(Lj3/v;)V

    .line 123
    .line 124
    .line 125
    :cond_2
    const/16 v5, 0x18

    .line 126
    .line 127
    if-lt v4, v5, :cond_3

    .line 128
    .line 129
    iget-object v4, v0, Lj3/w;->e:Lj3/s;

    .line 130
    .line 131
    if-eqz v4, :cond_3

    .line 132
    .line 133
    invoke-static {v4}, Lj3/s;->b(Lj3/s;)V

    .line 134
    .line 135
    .line 136
    iput-object v3, v0, Lj3/w;->e:Lj3/s;

    .line 137
    .line 138
    :cond_3
    iget-object v4, v0, Lj3/w;->a:Landroid/media/AudioTrack;

    .line 139
    .line 140
    iget-object v0, v0, Lj3/w;->j:Le3/l;

    .line 141
    .line 142
    invoke-static {v3}, Le3/e0;->p(Lx3/h;)Landroid/os/Handler;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    sget-object v6, Lj3/w;->t:Ljava/lang/Object;

    .line 147
    .line 148
    monitor-enter v6

    .line 149
    :try_start_0
    sget-object v7, Lj3/w;->u:Ljava/util/concurrent/ScheduledExecutorService;

    .line 150
    .line 151
    if-nez v7, :cond_4

    .line 152
    .line 153
    new-instance v7, Le3/d0;

    .line 154
    .line 155
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 156
    .line 157
    .line 158
    invoke-static {v7}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 159
    .line 160
    .line 161
    move-result-object v7

    .line 162
    sput-object v7, Lj3/w;->u:Ljava/util/concurrent/ScheduledExecutorService;

    .line 163
    .line 164
    goto :goto_0

    .line 165
    :catchall_0
    move-exception v0

    .line 166
    goto :goto_1

    .line 167
    :cond_4
    :goto_0
    sget v7, Lj3/w;->v:I

    .line 168
    .line 169
    add-int/lit8 v7, v7, 0x1

    .line 170
    .line 171
    sput v7, Lj3/w;->v:I

    .line 172
    .line 173
    sget-object v7, Lj3/w;->u:Ljava/util/concurrent/ScheduledExecutorService;

    .line 174
    .line 175
    new-instance v8, Landroidx/media3/exoplayer/w0;

    .line 176
    .line 177
    const/4 v9, 0x5

    .line 178
    invoke-direct {v8, v4, v9, v5, v0}, Landroidx/media3/exoplayer/w0;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 182
    .line 183
    const-wide/16 v4, 0x14

    .line 184
    .line 185
    invoke-interface {v7, v8, v4, v5, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 186
    .line 187
    .line 188
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    iput-object v3, p0, Lj3/f0;->t:Lj3/w;

    .line 190
    .line 191
    goto :goto_2

    .line 192
    :goto_1
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    throw v0

    .line 194
    :cond_5
    :goto_2
    iget-object v0, p0, Lj3/f0;->l:Lcom/google/ads/interactivemedia/v3/internal/t5;

    .line 195
    .line 196
    iput-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/t5;->c:Ljava/lang/Object;

    .line 197
    .line 198
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    iput-wide v4, v0, Lcom/google/ads/interactivemedia/v3/internal/t5;->a:J

    .line 204
    .line 205
    iput-wide v4, v0, Lcom/google/ads/interactivemedia/v3/internal/t5;->b:J

    .line 206
    .line 207
    iget-object v0, p0, Lj3/f0;->k:Lcom/google/ads/interactivemedia/v3/internal/t5;

    .line 208
    .line 209
    iput-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/t5;->c:Ljava/lang/Object;

    .line 210
    .line 211
    iput-wide v4, v0, Lcom/google/ads/interactivemedia/v3/internal/t5;->a:J

    .line 212
    .line 213
    iput-wide v4, v0, Lcom/google/ads/interactivemedia/v3/internal/t5;->b:J

    .line 214
    .line 215
    iput-wide v1, p0, Lj3/f0;->Z:J

    .line 216
    .line 217
    iput-wide v1, p0, Lj3/f0;->a0:J

    .line 218
    .line 219
    iget-object v0, p0, Lj3/f0;->b0:Landroid/os/Handler;

    .line 220
    .line 221
    if-eqz v0, :cond_6

    .line 222
    .line 223
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    :cond_6
    return-void
.end method

.method public final g(Landroidx/media3/common/t;)Lj3/h;
    .locals 1

    .line 1
    new-instance v0, Lj3/h;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lj3/h;-><init>(Landroidx/media3/common/t;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lj3/f0;->u:Landroidx/media3/common/g;

    .line 7
    .line 8
    iput-object p1, v0, Lj3/h;->b:Landroidx/media3/common/g;

    .line 9
    .line 10
    iget p1, p0, Lj3/f0;->i:I

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    iput-boolean p1, v0, Lj3/h;->d:Z

    .line 18
    .line 19
    iget-object p1, p0, Lj3/f0;->T:Landroid/media/AudioDeviceInfo;

    .line 20
    .line 21
    iput-object p1, v0, Lj3/h;->c:Landroid/media/AudioDeviceInfo;

    .line 22
    .line 23
    iget p1, p0, Lj3/f0;->Q:I

    .line 24
    .line 25
    iput p1, v0, Lj3/h;->e:I

    .line 26
    .line 27
    iget-boolean p1, p0, Lj3/f0;->V:Z

    .line 28
    .line 29
    iput-boolean p1, v0, Lj3/h;->g:Z

    .line 30
    .line 31
    const/4 p1, -0x1

    .line 32
    iput p1, v0, Lj3/h;->h:I

    .line 33
    .line 34
    iget p1, p0, Lj3/f0;->U:I

    .line 35
    .line 36
    iput p1, v0, Lj3/h;->f:I

    .line 37
    .line 38
    new-instance p1, Lj3/h;

    .line 39
    .line 40
    invoke-direct {p1, v0}, Lj3/h;-><init>(Lj3/h;)V

    .line 41
    .line 42
    .line 43
    return-object p1
.end method

.method public final h(Landroidx/media3/common/t;)I
    .locals 5

    .line 1
    iget v0, p1, Landroidx/media3/common/t;->I:I

    .line 2
    .line 3
    invoke-static {v0}, Le3/e0;->M(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget v0, p1, Landroidx/media3/common/t;->I:I

    .line 13
    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/media3/common/t;->a()Landroidx/media3/common/s;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput v1, p1, Landroidx/media3/common/s;->H:I

    .line 21
    .line 22
    new-instance v0, Landroidx/media3/common/t;

    .line 23
    .line 24
    invoke-direct {v0, p1}, Landroidx/media3/common/t;-><init>(Landroidx/media3/common/s;)V

    .line 25
    .line 26
    .line 27
    move-object p1, v0

    .line 28
    move v0, v2

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v0, v3

    .line 31
    :goto_0
    iget-object v4, p0, Lj3/f0;->r:Lj3/l;

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lj3/f0;->g(Landroidx/media3/common/t;)Lj3/h;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast v4, Lj3/x;

    .line 38
    .line 39
    invoke-virtual {v4, p1}, Lj3/x;->b(Lj3/h;)Lj3/i;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iget p1, p1, Lj3/i;->d:I

    .line 44
    .line 45
    if-eq p1, v2, :cond_3

    .line 46
    .line 47
    if-eq p1, v1, :cond_1

    .line 48
    .line 49
    return v3

    .line 50
    :cond_1
    if-eqz v0, :cond_2

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    return v1

    .line 54
    :cond_3
    :goto_1
    return v2
.end method

.method public final j()J
    .locals 6

    .line 1
    iget-object v0, p0, Lj3/f0;->p:Landroidx/compose/foundation/lazy/grid/l;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/foundation/lazy/grid/l;->a(Landroidx/compose/foundation/lazy/grid/l;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-wide v0, p0, Lj3/f0;->B:J

    .line 10
    .line 11
    iget-object v2, p0, Lj3/f0;->p:Landroidx/compose/foundation/lazy/grid/l;

    .line 12
    .line 13
    iget v2, v2, Landroidx/compose/foundation/lazy/grid/l;->b:I

    .line 14
    .line 15
    int-to-long v2, v2

    .line 16
    add-long/2addr v0, v2

    .line 17
    const-wide/16 v4, 0x1

    .line 18
    .line 19
    sub-long/2addr v0, v4

    .line 20
    div-long/2addr v0, v2

    .line 21
    return-wide v0

    .line 22
    :cond_0
    iget-wide v0, p0, Lj3/f0;->C:J

    .line 23
    .line 24
    return-wide v0
.end method

.method public final k(Ljava/nio/ByteBuffer;IJ)Z
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move-wide/from16 v3, p3

    .line 8
    .line 9
    iget-object v5, v1, Lj3/f0;->I:Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    const/4 v6, 0x1

    .line 12
    const/4 v7, 0x0

    .line 13
    if-eqz v5, :cond_1

    .line 14
    .line 15
    if-ne v0, v5, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v5, v7

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    move v5, v6

    .line 21
    :goto_1
    invoke-static {v5}, Lcom/google/common/base/q;->h(Z)V

    .line 22
    .line 23
    .line 24
    iget-object v5, v1, Lj3/f0;->o:Landroidx/compose/foundation/lazy/grid/l;

    .line 25
    .line 26
    const/4 v8, 0x0

    .line 27
    if-eqz v5, :cond_6

    .line 28
    .line 29
    invoke-virtual {v1}, Lj3/f0;->e()Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-nez v5, :cond_2

    .line 34
    .line 35
    goto/16 :goto_8

    .line 36
    .line 37
    :cond_2
    iget-object v5, v1, Lj3/f0;->t:Lj3/w;

    .line 38
    .line 39
    if-eqz v5, :cond_4

    .line 40
    .line 41
    iget-object v5, v1, Lj3/f0;->p:Landroidx/compose/foundation/lazy/grid/l;

    .line 42
    .line 43
    iget-object v5, v5, Landroidx/compose/foundation/lazy/grid/l;->e:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v5, Lj3/k;

    .line 46
    .line 47
    iget-object v9, v1, Lj3/f0;->o:Landroidx/compose/foundation/lazy/grid/l;

    .line 48
    .line 49
    iget-object v9, v9, Landroidx/compose/foundation/lazy/grid/l;->d:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v9, Landroidx/media3/common/t;

    .line 52
    .line 53
    invoke-virtual {v1, v9}, Lj3/f0;->g(Landroidx/media3/common/t;)Lj3/h;

    .line 54
    .line 55
    .line 56
    iget-object v9, v1, Lj3/f0;->o:Landroidx/compose/foundation/lazy/grid/l;

    .line 57
    .line 58
    iget-object v9, v9, Landroidx/compose/foundation/lazy/grid/l;->e:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v9, Lj3/k;

    .line 61
    .line 62
    invoke-virtual {v9, v5}, Lj3/k;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    if-nez v5, :cond_4

    .line 67
    .line 68
    invoke-virtual {v1}, Lj3/f0;->p()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Lj3/f0;->l()Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-eqz v5, :cond_3

    .line 76
    .line 77
    goto/16 :goto_8

    .line 78
    .line 79
    :cond_3
    invoke-virtual {v1}, Lj3/f0;->f()V

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_4
    iget-object v5, v1, Lj3/f0;->o:Landroidx/compose/foundation/lazy/grid/l;

    .line 84
    .line 85
    iput-object v5, v1, Lj3/f0;->p:Landroidx/compose/foundation/lazy/grid/l;

    .line 86
    .line 87
    iput-object v8, v1, Lj3/f0;->o:Landroidx/compose/foundation/lazy/grid/l;

    .line 88
    .line 89
    iget-object v5, v1, Lj3/f0;->t:Lj3/w;

    .line 90
    .line 91
    if-eqz v5, :cond_5

    .line 92
    .line 93
    invoke-virtual {v5}, Lj3/w;->c()Z

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    if-eqz v5, :cond_5

    .line 98
    .line 99
    iget-object v5, v1, Lj3/f0;->p:Landroidx/compose/foundation/lazy/grid/l;

    .line 100
    .line 101
    iget-object v5, v5, Landroidx/compose/foundation/lazy/grid/l;->e:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v5, Lj3/k;

    .line 104
    .line 105
    iget-boolean v5, v5, Lj3/k;->k:Z

    .line 106
    .line 107
    if-eqz v5, :cond_5

    .line 108
    .line 109
    iget-object v5, v1, Lj3/f0;->t:Lj3/w;

    .line 110
    .line 111
    invoke-virtual {v5}, Lj3/w;->e()V

    .line 112
    .line 113
    .line 114
    iget-object v5, v1, Lj3/f0;->t:Lj3/w;

    .line 115
    .line 116
    iget-object v9, v1, Lj3/f0;->p:Landroidx/compose/foundation/lazy/grid/l;

    .line 117
    .line 118
    iget-object v9, v9, Landroidx/compose/foundation/lazy/grid/l;->c:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast v9, Landroidx/media3/common/t;

    .line 121
    .line 122
    iget v10, v9, Landroidx/media3/common/t;->J:I

    .line 123
    .line 124
    iget v9, v9, Landroidx/media3/common/t;->K:I

    .line 125
    .line 126
    invoke-virtual {v5, v10, v9}, Lj3/w;->d(II)V

    .line 127
    .line 128
    .line 129
    iput-boolean v6, v1, Lj3/f0;->Y:Z

    .line 130
    .line 131
    :cond_5
    :goto_2
    invoke-virtual {v1, v3, v4}, Lj3/f0;->a(J)V

    .line 132
    .line 133
    .line 134
    :cond_6
    invoke-virtual {v1}, Lj3/f0;->n()Z

    .line 135
    .line 136
    .line 137
    move-result v5

    .line 138
    iget-object v9, v1, Lj3/f0;->k:Lcom/google/ads/interactivemedia/v3/internal/t5;

    .line 139
    .line 140
    if-nez v5, :cond_8

    .line 141
    .line 142
    :try_start_0
    invoke-virtual {v1}, Lj3/f0;->m()Z

    .line 143
    .line 144
    .line 145
    move-result v5
    :try_end_0
    .catch Landroidx/media3/exoplayer/audio/AudioSink$InitializationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    if-nez v5, :cond_8

    .line 147
    .line 148
    goto/16 :goto_8

    .line 149
    .line 150
    :catch_0
    move-exception v0

    .line 151
    iget-boolean v2, v0, Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;->isRecoverable:Z

    .line 152
    .line 153
    if-nez v2, :cond_7

    .line 154
    .line 155
    invoke-virtual {v9, v0}, Lcom/google/ads/interactivemedia/v3/internal/t5;->a(Ljava/lang/Exception;)V

    .line 156
    .line 157
    .line 158
    return v7

    .line 159
    :cond_7
    throw v0

    .line 160
    :cond_8
    iput-object v8, v9, Lcom/google/ads/interactivemedia/v3/internal/t5;->c:Ljava/lang/Object;

    .line 161
    .line 162
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    iput-wide v10, v9, Lcom/google/ads/interactivemedia/v3/internal/t5;->a:J

    .line 168
    .line 169
    iput-wide v10, v9, Lcom/google/ads/interactivemedia/v3/internal/t5;->b:J

    .line 170
    .line 171
    iget-boolean v5, v1, Lj3/f0;->F:Z

    .line 172
    .line 173
    const-wide/16 v12, 0x0

    .line 174
    .line 175
    if-eqz v5, :cond_a

    .line 176
    .line 177
    invoke-static {v12, v13, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 178
    .line 179
    .line 180
    move-result-wide v14

    .line 181
    iput-wide v14, v1, Lj3/f0;->G:J

    .line 182
    .line 183
    iput-boolean v7, v1, Lj3/f0;->E:Z

    .line 184
    .line 185
    iput-boolean v7, v1, Lj3/f0;->F:Z

    .line 186
    .line 187
    invoke-virtual {v1}, Lj3/f0;->v()Z

    .line 188
    .line 189
    .line 190
    move-result v5

    .line 191
    if-eqz v5, :cond_9

    .line 192
    .line 193
    invoke-virtual {v1}, Lj3/f0;->t()V

    .line 194
    .line 195
    .line 196
    :cond_9
    invoke-virtual {v1, v3, v4}, Lj3/f0;->a(J)V

    .line 197
    .line 198
    .line 199
    iget-boolean v5, v1, Lj3/f0;->O:Z

    .line 200
    .line 201
    if-eqz v5, :cond_a

    .line 202
    .line 203
    invoke-virtual {v1}, Lj3/f0;->o()V

    .line 204
    .line 205
    .line 206
    :cond_a
    iget-object v5, v1, Lj3/f0;->I:Ljava/nio/ByteBuffer;

    .line 207
    .line 208
    if-nez v5, :cond_16

    .line 209
    .line 210
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    .line 211
    .line 212
    .line 213
    move-result-object v5

    .line 214
    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 215
    .line 216
    if-ne v5, v9, :cond_b

    .line 217
    .line 218
    move v5, v6

    .line 219
    goto :goto_3

    .line 220
    :cond_b
    move v5, v7

    .line 221
    :goto_3
    invoke-static {v5}, Lcom/google/common/base/q;->h(Z)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 225
    .line 226
    .line 227
    move-result v5

    .line 228
    if-nez v5, :cond_c

    .line 229
    .line 230
    goto :goto_4

    .line 231
    :cond_c
    iget-object v5, v1, Lj3/f0;->p:Landroidx/compose/foundation/lazy/grid/l;

    .line 232
    .line 233
    invoke-static {v5}, Landroidx/compose/foundation/lazy/grid/l;->a(Landroidx/compose/foundation/lazy/grid/l;)Z

    .line 234
    .line 235
    .line 236
    move-result v5

    .line 237
    if-nez v5, :cond_d

    .line 238
    .line 239
    iget v5, v1, Lj3/f0;->D:I

    .line 240
    .line 241
    if-nez v5, :cond_d

    .line 242
    .line 243
    iget-object v5, v1, Lj3/f0;->p:Landroidx/compose/foundation/lazy/grid/l;

    .line 244
    .line 245
    iget-object v5, v5, Landroidx/compose/foundation/lazy/grid/l;->e:Ljava/lang/Object;

    .line 246
    .line 247
    check-cast v5, Lj3/k;

    .line 248
    .line 249
    iget v5, v5, Lj3/k;->a:I

    .line 250
    .line 251
    invoke-static {v5, v0}, Lj3/f0;->i(ILjava/nio/ByteBuffer;)I

    .line 252
    .line 253
    .line 254
    move-result v5

    .line 255
    iput v5, v1, Lj3/f0;->D:I

    .line 256
    .line 257
    if-nez v5, :cond_d

    .line 258
    .line 259
    :goto_4
    return v6

    .line 260
    :cond_d
    iget-object v5, v1, Lj3/f0;->v:Lj3/e0;

    .line 261
    .line 262
    if-eqz v5, :cond_f

    .line 263
    .line 264
    invoke-virtual {v1}, Lj3/f0;->e()Z

    .line 265
    .line 266
    .line 267
    move-result v5

    .line 268
    if-nez v5, :cond_e

    .line 269
    .line 270
    goto/16 :goto_8

    .line 271
    .line 272
    :cond_e
    invoke-virtual {v1, v3, v4}, Lj3/f0;->a(J)V

    .line 273
    .line 274
    .line 275
    iput-object v8, v1, Lj3/f0;->v:Lj3/e0;

    .line 276
    .line 277
    :cond_f
    iget-wide v14, v1, Lj3/f0;->G:J

    .line 278
    .line 279
    iget-object v5, v1, Lj3/f0;->p:Landroidx/compose/foundation/lazy/grid/l;

    .line 280
    .line 281
    invoke-static {v5}, Landroidx/compose/foundation/lazy/grid/l;->a(Landroidx/compose/foundation/lazy/grid/l;)Z

    .line 282
    .line 283
    .line 284
    move-result v9

    .line 285
    if-eqz v9, :cond_10

    .line 286
    .line 287
    move-wide/from16 v16, v10

    .line 288
    .line 289
    iget-wide v10, v1, Lj3/f0;->z:J

    .line 290
    .line 291
    iget-object v9, v1, Lj3/f0;->p:Landroidx/compose/foundation/lazy/grid/l;

    .line 292
    .line 293
    iget v9, v9, Landroidx/compose/foundation/lazy/grid/l;->a:I

    .line 294
    .line 295
    move-wide/from16 v18, v12

    .line 296
    .line 297
    int-to-long v12, v9

    .line 298
    div-long/2addr v10, v12

    .line 299
    goto :goto_5

    .line 300
    :cond_10
    move-wide/from16 v16, v10

    .line 301
    .line 302
    move-wide/from16 v18, v12

    .line 303
    .line 304
    iget-wide v10, v1, Lj3/f0;->A:J

    .line 305
    .line 306
    :goto_5
    iget-object v9, v1, Lj3/f0;->d:Lj3/n0;

    .line 307
    .line 308
    iget-wide v12, v9, Lj3/n0;->o:J

    .line 309
    .line 310
    sub-long/2addr v10, v12

    .line 311
    iget-object v5, v5, Landroidx/compose/foundation/lazy/grid/l;->c:Ljava/lang/Object;

    .line 312
    .line 313
    check-cast v5, Landroidx/media3/common/t;

    .line 314
    .line 315
    iget v5, v5, Landroidx/media3/common/t;->H:I

    .line 316
    .line 317
    invoke-static {v5, v10, v11}, Le3/e0;->V(IJ)J

    .line 318
    .line 319
    .line 320
    move-result-wide v9

    .line 321
    add-long/2addr v9, v14

    .line 322
    iget-boolean v5, v1, Lj3/f0;->E:Z

    .line 323
    .line 324
    if-nez v5, :cond_12

    .line 325
    .line 326
    sub-long v11, v9, v3

    .line 327
    .line 328
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    .line 329
    .line 330
    .line 331
    move-result-wide v11

    .line 332
    const-wide/32 v13, 0x30d40

    .line 333
    .line 334
    .line 335
    cmp-long v5, v11, v13

    .line 336
    .line 337
    if-lez v5, :cond_12

    .line 338
    .line 339
    iget-object v5, v1, Lj3/f0;->n:Lcom/google/common/base/a0;

    .line 340
    .line 341
    if-eqz v5, :cond_11

    .line 342
    .line 343
    new-instance v11, Landroidx/media3/exoplayer/audio/AudioSink$UnexpectedDiscontinuityException;

    .line 344
    .line 345
    invoke-direct {v11, v3, v4, v9, v10}, Landroidx/media3/exoplayer/audio/AudioSink$UnexpectedDiscontinuityException;-><init>(JJ)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v5, v11}, Lcom/google/common/base/a0;->p(Ljava/lang/Exception;)V

    .line 349
    .line 350
    .line 351
    :cond_11
    iput-boolean v6, v1, Lj3/f0;->E:Z

    .line 352
    .line 353
    :cond_12
    iget-boolean v5, v1, Lj3/f0;->E:Z

    .line 354
    .line 355
    if-eqz v5, :cond_14

    .line 356
    .line 357
    invoke-virtual {v1}, Lj3/f0;->e()Z

    .line 358
    .line 359
    .line 360
    move-result v5

    .line 361
    if-nez v5, :cond_13

    .line 362
    .line 363
    goto/16 :goto_8

    .line 364
    .line 365
    :cond_13
    sub-long v9, v3, v9

    .line 366
    .line 367
    iget-wide v11, v1, Lj3/f0;->G:J

    .line 368
    .line 369
    add-long/2addr v11, v9

    .line 370
    iput-wide v11, v1, Lj3/f0;->G:J

    .line 371
    .line 372
    iput-boolean v7, v1, Lj3/f0;->E:Z

    .line 373
    .line 374
    invoke-virtual {v1, v3, v4}, Lj3/f0;->a(J)V

    .line 375
    .line 376
    .line 377
    iget-object v5, v1, Lj3/f0;->n:Lcom/google/common/base/a0;

    .line 378
    .line 379
    if-eqz v5, :cond_14

    .line 380
    .line 381
    cmp-long v9, v9, v18

    .line 382
    .line 383
    if-eqz v9, :cond_14

    .line 384
    .line 385
    iget-object v5, v5, Lcom/google/common/base/a0;->a:Ljava/lang/Object;

    .line 386
    .line 387
    check-cast v5, Lj3/i0;

    .line 388
    .line 389
    iput-boolean v6, v5, Lj3/i0;->h1:Z

    .line 390
    .line 391
    :cond_14
    iget-object v5, v1, Lj3/f0;->p:Landroidx/compose/foundation/lazy/grid/l;

    .line 392
    .line 393
    invoke-static {v5}, Landroidx/compose/foundation/lazy/grid/l;->a(Landroidx/compose/foundation/lazy/grid/l;)Z

    .line 394
    .line 395
    .line 396
    move-result v5

    .line 397
    if-eqz v5, :cond_15

    .line 398
    .line 399
    iget-wide v9, v1, Lj3/f0;->z:J

    .line 400
    .line 401
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 402
    .line 403
    .line 404
    move-result v5

    .line 405
    int-to-long v11, v5

    .line 406
    add-long/2addr v9, v11

    .line 407
    iput-wide v9, v1, Lj3/f0;->z:J

    .line 408
    .line 409
    goto :goto_6

    .line 410
    :cond_15
    iget-wide v9, v1, Lj3/f0;->A:J

    .line 411
    .line 412
    iget v5, v1, Lj3/f0;->D:I

    .line 413
    .line 414
    int-to-long v11, v5

    .line 415
    int-to-long v13, v2

    .line 416
    mul-long/2addr v11, v13

    .line 417
    add-long/2addr v11, v9

    .line 418
    iput-wide v11, v1, Lj3/f0;->A:J

    .line 419
    .line 420
    :goto_6
    iput-object v0, v1, Lj3/f0;->I:Ljava/nio/ByteBuffer;

    .line 421
    .line 422
    iput v2, v1, Lj3/f0;->J:I

    .line 423
    .line 424
    goto :goto_7

    .line 425
    :cond_16
    move-wide/from16 v16, v10

    .line 426
    .line 427
    move-wide/from16 v18, v12

    .line 428
    .line 429
    :goto_7
    invoke-virtual {v1, v3, v4}, Lj3/f0;->q(J)V

    .line 430
    .line 431
    .line 432
    iget-object v0, v1, Lj3/f0;->I:Ljava/nio/ByteBuffer;

    .line 433
    .line 434
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 435
    .line 436
    .line 437
    move-result v0

    .line 438
    if-nez v0, :cond_17

    .line 439
    .line 440
    iput-object v8, v1, Lj3/f0;->I:Ljava/nio/ByteBuffer;

    .line 441
    .line 442
    iput v7, v1, Lj3/f0;->J:I

    .line 443
    .line 444
    return v6

    .line 445
    :cond_17
    iget-object v0, v1, Lj3/f0;->t:Lj3/w;

    .line 446
    .line 447
    iget-object v2, v0, Lj3/w;->f:Lj3/y;

    .line 448
    .line 449
    invoke-virtual {v0}, Lj3/w;->b()J

    .line 450
    .line 451
    .line 452
    move-result-wide v3

    .line 453
    iget-wide v8, v2, Lj3/y;->v:J

    .line 454
    .line 455
    cmp-long v0, v8, v16

    .line 456
    .line 457
    if-eqz v0, :cond_18

    .line 458
    .line 459
    cmp-long v0, v3, v18

    .line 460
    .line 461
    if-lez v0, :cond_18

    .line 462
    .line 463
    iget-object v0, v2, Lj3/y;->b:Le3/y;

    .line 464
    .line 465
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 466
    .line 467
    .line 468
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 469
    .line 470
    .line 471
    move-result-wide v3

    .line 472
    iget-wide v8, v2, Lj3/y;->v:J

    .line 473
    .line 474
    sub-long/2addr v3, v8

    .line 475
    const-wide/16 v8, 0xc8

    .line 476
    .line 477
    cmp-long v0, v3, v8

    .line 478
    .line 479
    if-ltz v0, :cond_18

    .line 480
    .line 481
    const-string v0, "DefaultAudioSink"

    .line 482
    .line 483
    const-string v2, "Resetting stalled audio output"

    .line 484
    .line 485
    invoke-static {v0, v2}, Le3/a;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    .line 487
    .line 488
    invoke-virtual {v1}, Lj3/f0;->f()V

    .line 489
    .line 490
    .line 491
    return v6

    .line 492
    :cond_18
    :goto_8
    return v7
.end method

.method public final l()Z
    .locals 10

    .line 1
    invoke-virtual {p0}, Lj3/f0;->n()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    .line 9
    const/16 v1, 0x1d

    .line 10
    .line 11
    if-lt v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lj3/f0;->t:Lj3/w;

    .line 14
    .line 15
    invoke-virtual {v0}, Lj3/w;->c()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-boolean v0, p0, Lj3/f0;->N:Z

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    :cond_0
    invoke-virtual {p0}, Lj3/f0;->j()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    iget-object v2, p0, Lj3/f0;->t:Lj3/w;

    .line 30
    .line 31
    invoke-virtual {v2}, Lj3/w;->a()J

    .line 32
    .line 33
    .line 34
    move-result-wide v3

    .line 35
    iget-object v2, p0, Lj3/f0;->t:Lj3/w;

    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    iget-object v2, v2, Lj3/w;->a:Landroid/media/AudioTrack;

    .line 41
    .line 42
    invoke-virtual {v2}, Landroid/media/AudioTrack;->getSampleRate()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    int-to-long v5, v2

    .line 47
    const-wide/32 v7, 0xf4240

    .line 48
    .line 49
    .line 50
    sget-object v9, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    .line 51
    .line 52
    invoke-static/range {v3 .. v9}, Le3/e0;->X(JJJLjava/math/RoundingMode;)J

    .line 53
    .line 54
    .line 55
    move-result-wide v2

    .line 56
    cmp-long v0, v0, v2

    .line 57
    .line 58
    if-lez v0, :cond_1

    .line 59
    .line 60
    const/4 v0, 0x1

    .line 61
    return v0

    .line 62
    :cond_1
    const/4 v0, 0x0

    .line 63
    return v0
.end method

.method public final m()Z
    .locals 13

    .line 1
    iget-object v0, p0, Lj3/f0;->k:Lcom/google/ads/interactivemedia/v3/internal/t5;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/t5;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Ljava/lang/Exception;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    sget-object v1, Lj3/f0;->c0:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-lez v1, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 21
    .line 22
    .line 23
    move-result-wide v3

    .line 24
    iget-wide v0, v0, Lcom/google/ads/interactivemedia/v3/internal/t5;->b:J

    .line 25
    .line 26
    cmp-long v0, v3, v0

    .line 27
    .line 28
    if-gez v0, :cond_2

    .line 29
    .line 30
    :goto_0
    return v2

    .line 31
    :cond_2
    :goto_1
    const/4 v1, 0x1

    .line 32
    :try_start_0
    iget-object v0, p0, Lj3/f0;->p:Landroidx/compose/foundation/lazy/grid/l;

    .line 33
    .line 34
    iget-object v0, v0, Landroidx/compose/foundation/lazy/grid/l;->e:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v0, Lj3/k;

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Lj3/f0;->b(Lj3/k;)Lj3/w;

    .line 39
    .line 40
    .line 41
    move-result-object v0
    :try_end_0
    .catch Landroidx/media3/exoplayer/audio/AudioSink$InitializationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    goto :goto_5

    .line 43
    :catch_0
    move-exception v0

    .line 44
    move-object v3, v0

    .line 45
    iget-object v0, p0, Lj3/f0;->p:Landroidx/compose/foundation/lazy/grid/l;

    .line 46
    .line 47
    iget-object v0, v0, Landroidx/compose/foundation/lazy/grid/l;->e:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v0, Lj3/k;

    .line 50
    .line 51
    iget v0, v0, Lj3/k;->f:I

    .line 52
    .line 53
    :goto_2
    const v4, 0xf4240

    .line 54
    .line 55
    .line 56
    if-le v0, v4, :cond_e

    .line 57
    .line 58
    div-int/lit8 v0, v0, 0x2

    .line 59
    .line 60
    iget-object v4, p0, Lj3/f0;->p:Landroidx/compose/foundation/lazy/grid/l;

    .line 61
    .line 62
    iget v5, v4, Landroidx/compose/foundation/lazy/grid/l;->b:I

    .line 63
    .line 64
    const/4 v6, -0x1

    .line 65
    if-eq v5, v6, :cond_3

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_3
    move v5, v1

    .line 69
    :goto_3
    rem-int v6, v0, v5

    .line 70
    .line 71
    if-eqz v6, :cond_4

    .line 72
    .line 73
    sub-int/2addr v5, v6

    .line 74
    add-int/2addr v5, v0

    .line 75
    goto :goto_4

    .line 76
    :cond_4
    move v5, v0

    .line 77
    :goto_4
    iget-object v0, v4, Landroidx/compose/foundation/lazy/grid/l;->e:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v0, Lj3/k;

    .line 80
    .line 81
    invoke-virtual {v0}, Lj3/k;->a()Lj3/j;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iput v5, v0, Lj3/j;->f:I

    .line 86
    .line 87
    new-instance v11, Lj3/k;

    .line 88
    .line 89
    invoke-direct {v11, v0}, Lj3/k;-><init>(Lj3/j;)V

    .line 90
    .line 91
    .line 92
    :try_start_1
    invoke-virtual {p0, v11}, Lj3/f0;->b(Lj3/k;)Lj3/w;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iget-object v4, p0, Lj3/f0;->p:Landroidx/compose/foundation/lazy/grid/l;

    .line 97
    .line 98
    new-instance v6, Landroidx/compose/foundation/lazy/grid/l;

    .line 99
    .line 100
    iget-object v7, v4, Landroidx/compose/foundation/lazy/grid/l;->c:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v7, Landroidx/media3/common/t;

    .line 103
    .line 104
    iget-object v8, v4, Landroidx/compose/foundation/lazy/grid/l;->d:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v8, Landroidx/media3/common/t;

    .line 107
    .line 108
    iget v9, v4, Landroidx/compose/foundation/lazy/grid/l;->a:I

    .line 109
    .line 110
    iget v10, v4, Landroidx/compose/foundation/lazy/grid/l;->b:I

    .line 111
    .line 112
    iget-object v4, v4, Landroidx/compose/foundation/lazy/grid/l;->f:Ljava/lang/Object;

    .line 113
    .line 114
    move-object v12, v4

    .line 115
    check-cast v12, Lc3/g;

    .line 116
    .line 117
    invoke-direct/range {v6 .. v12}, Landroidx/compose/foundation/lazy/grid/l;-><init>(Landroidx/media3/common/t;Landroidx/media3/common/t;IILj3/k;Lc3/g;)V

    .line 118
    .line 119
    .line 120
    iput-object v6, p0, Lj3/f0;->p:Landroidx/compose/foundation/lazy/grid/l;
    :try_end_1
    .catch Landroidx/media3/exoplayer/audio/AudioSink$InitializationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 121
    .line 122
    :goto_5
    iput-object v0, p0, Lj3/f0;->t:Lj3/w;

    .line 123
    .line 124
    new-instance v3, Lj3/d0;

    .line 125
    .line 126
    iget-object v4, p0, Lj3/f0;->p:Landroidx/compose/foundation/lazy/grid/l;

    .line 127
    .line 128
    iget-object v4, v4, Landroidx/compose/foundation/lazy/grid/l;->e:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast v4, Lj3/k;

    .line 131
    .line 132
    invoke-direct {v3, p0, v4}, Lj3/d0;-><init>(Lj3/f0;Lj3/k;)V

    .line 133
    .line 134
    .line 135
    iput-object v3, p0, Lj3/f0;->j:Lj3/d0;

    .line 136
    .line 137
    iget-object v0, v0, Lj3/w;->j:Le3/l;

    .line 138
    .line 139
    invoke-virtual {v0, v3}, Le3/l;->a(Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    iget-object v0, p0, Lj3/f0;->t:Lj3/w;

    .line 143
    .line 144
    invoke-virtual {v0}, Lj3/w;->c()Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-eqz v0, :cond_5

    .line 149
    .line 150
    iget-object v0, p0, Lj3/f0;->p:Landroidx/compose/foundation/lazy/grid/l;

    .line 151
    .line 152
    iget-object v3, v0, Landroidx/compose/foundation/lazy/grid/l;->e:Ljava/lang/Object;

    .line 153
    .line 154
    check-cast v3, Lj3/k;

    .line 155
    .line 156
    iget-boolean v3, v3, Lj3/k;->k:Z

    .line 157
    .line 158
    if-eqz v3, :cond_5

    .line 159
    .line 160
    iget-object v3, p0, Lj3/f0;->t:Lj3/w;

    .line 161
    .line 162
    iget-object v0, v0, Landroidx/compose/foundation/lazy/grid/l;->c:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast v0, Landroidx/media3/common/t;

    .line 165
    .line 166
    iget v4, v0, Landroidx/media3/common/t;->J:I

    .line 167
    .line 168
    iget v0, v0, Landroidx/media3/common/t;->K:I

    .line 169
    .line 170
    invoke-virtual {v3, v4, v0}, Lj3/w;->d(II)V

    .line 171
    .line 172
    .line 173
    :cond_5
    iget-object v0, p0, Lj3/f0;->m:Li3/j;

    .line 174
    .line 175
    if-eqz v0, :cond_6

    .line 176
    .line 177
    iget-object v3, p0, Lj3/f0;->t:Lj3/w;

    .line 178
    .line 179
    invoke-virtual {v3, v0}, Lj3/w;->f(Li3/j;)V

    .line 180
    .line 181
    .line 182
    :cond_6
    invoke-virtual {p0}, Lj3/f0;->n()Z

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    if-eqz v0, :cond_7

    .line 187
    .line 188
    iget-object v0, p0, Lj3/f0;->t:Lj3/w;

    .line 189
    .line 190
    iget v3, p0, Lj3/f0;->H:F

    .line 191
    .line 192
    iget-object v0, v0, Lj3/w;->a:Landroid/media/AudioTrack;

    .line 193
    .line 194
    invoke-virtual {v0, v3}, Landroid/media/AudioTrack;->setVolume(F)I

    .line 195
    .line 196
    .line 197
    :cond_7
    iget-object v0, p0, Lj3/f0;->S:Landroidx/media3/common/h;

    .line 198
    .line 199
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    .line 201
    .line 202
    iget-object v0, p0, Lj3/f0;->T:Landroid/media/AudioDeviceInfo;

    .line 203
    .line 204
    if-eqz v0, :cond_8

    .line 205
    .line 206
    iget-object v3, p0, Lj3/f0;->t:Lj3/w;

    .line 207
    .line 208
    iget-object v3, v3, Lj3/w;->a:Landroid/media/AudioTrack;

    .line 209
    .line 210
    invoke-virtual {v3, v0}, Landroid/media/AudioTrack;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    .line 211
    .line 212
    .line 213
    :cond_8
    iput-boolean v1, p0, Lj3/f0;->F:Z

    .line 214
    .line 215
    iget-object v0, p0, Lj3/f0;->t:Lj3/w;

    .line 216
    .line 217
    iget-object v0, v0, Lj3/w;->a:Landroid/media/AudioTrack;

    .line 218
    .line 219
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    iget v3, p0, Lj3/f0;->Q:I

    .line 224
    .line 225
    if-eq v0, v3, :cond_9

    .line 226
    .line 227
    move v2, v1

    .line 228
    :cond_9
    iput v0, p0, Lj3/f0;->Q:I

    .line 229
    .line 230
    iget-object v0, p0, Lj3/f0;->n:Lcom/google/common/base/a0;

    .line 231
    .line 232
    if-eqz v0, :cond_d

    .line 233
    .line 234
    iget-object v3, p0, Lj3/f0;->p:Landroidx/compose/foundation/lazy/grid/l;

    .line 235
    .line 236
    new-instance v4, Lj3/g0;

    .line 237
    .line 238
    iget-object v3, v3, Landroidx/compose/foundation/lazy/grid/l;->e:Ljava/lang/Object;

    .line 239
    .line 240
    check-cast v3, Lj3/k;

    .line 241
    .line 242
    iget v3, v3, Lj3/k;->a:I

    .line 243
    .line 244
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 245
    .line 246
    .line 247
    iget-object v0, v0, Lcom/google/common/base/a0;->a:Ljava/lang/Object;

    .line 248
    .line 249
    check-cast v0, Lj3/i0;

    .line 250
    .line 251
    iget-object v0, v0, Lj3/i0;->Y0:Lj3/n;

    .line 252
    .line 253
    iget-object v3, v0, Lj3/n;->b:Landroid/os/Handler;

    .line 254
    .line 255
    if-eqz v3, :cond_a

    .line 256
    .line 257
    new-instance v5, Lj3/m;

    .line 258
    .line 259
    const/4 v6, 0x5

    .line 260
    invoke-direct {v5, v0, v4, v6}, Lj3/m;-><init>(Lj3/n;Ljava/lang/Object;I)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 264
    .line 265
    .line 266
    :cond_a
    if-eqz v2, :cond_d

    .line 267
    .line 268
    iput-boolean v1, p0, Lj3/f0;->R:Z

    .line 269
    .line 270
    iget-object v0, p0, Lj3/f0;->p:Landroidx/compose/foundation/lazy/grid/l;

    .line 271
    .line 272
    iget-object v2, v0, Landroidx/compose/foundation/lazy/grid/l;->e:Ljava/lang/Object;

    .line 273
    .line 274
    check-cast v2, Lj3/k;

    .line 275
    .line 276
    invoke-virtual {v2}, Lj3/k;->a()Lj3/j;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    iget v3, p0, Lj3/f0;->Q:I

    .line 281
    .line 282
    iput v3, v2, Lj3/j;->h:I

    .line 283
    .line 284
    new-instance v9, Lj3/k;

    .line 285
    .line 286
    invoke-direct {v9, v2}, Lj3/k;-><init>(Lj3/j;)V

    .line 287
    .line 288
    .line 289
    new-instance v4, Landroidx/compose/foundation/lazy/grid/l;

    .line 290
    .line 291
    iget-object v2, v0, Landroidx/compose/foundation/lazy/grid/l;->c:Ljava/lang/Object;

    .line 292
    .line 293
    move-object v5, v2

    .line 294
    check-cast v5, Landroidx/media3/common/t;

    .line 295
    .line 296
    iget-object v2, v0, Landroidx/compose/foundation/lazy/grid/l;->d:Ljava/lang/Object;

    .line 297
    .line 298
    move-object v6, v2

    .line 299
    check-cast v6, Landroidx/media3/common/t;

    .line 300
    .line 301
    iget v7, v0, Landroidx/compose/foundation/lazy/grid/l;->a:I

    .line 302
    .line 303
    iget v8, v0, Landroidx/compose/foundation/lazy/grid/l;->b:I

    .line 304
    .line 305
    iget-object v0, v0, Landroidx/compose/foundation/lazy/grid/l;->f:Ljava/lang/Object;

    .line 306
    .line 307
    move-object v10, v0

    .line 308
    check-cast v10, Lc3/g;

    .line 309
    .line 310
    invoke-direct/range {v4 .. v10}, Landroidx/compose/foundation/lazy/grid/l;-><init>(Landroidx/media3/common/t;Landroidx/media3/common/t;IILj3/k;Lc3/g;)V

    .line 311
    .line 312
    .line 313
    iput-object v4, p0, Lj3/f0;->p:Landroidx/compose/foundation/lazy/grid/l;

    .line 314
    .line 315
    iget-object v0, p0, Lj3/f0;->o:Landroidx/compose/foundation/lazy/grid/l;

    .line 316
    .line 317
    if-eqz v0, :cond_b

    .line 318
    .line 319
    iget-object v2, v0, Landroidx/compose/foundation/lazy/grid/l;->e:Ljava/lang/Object;

    .line 320
    .line 321
    check-cast v2, Lj3/k;

    .line 322
    .line 323
    invoke-virtual {v2}, Lj3/k;->a()Lj3/j;

    .line 324
    .line 325
    .line 326
    move-result-object v2

    .line 327
    iget v3, p0, Lj3/f0;->Q:I

    .line 328
    .line 329
    iput v3, v2, Lj3/j;->h:I

    .line 330
    .line 331
    new-instance v9, Lj3/k;

    .line 332
    .line 333
    invoke-direct {v9, v2}, Lj3/k;-><init>(Lj3/j;)V

    .line 334
    .line 335
    .line 336
    new-instance v4, Landroidx/compose/foundation/lazy/grid/l;

    .line 337
    .line 338
    iget-object v2, v0, Landroidx/compose/foundation/lazy/grid/l;->c:Ljava/lang/Object;

    .line 339
    .line 340
    move-object v5, v2

    .line 341
    check-cast v5, Landroidx/media3/common/t;

    .line 342
    .line 343
    iget-object v2, v0, Landroidx/compose/foundation/lazy/grid/l;->d:Ljava/lang/Object;

    .line 344
    .line 345
    move-object v6, v2

    .line 346
    check-cast v6, Landroidx/media3/common/t;

    .line 347
    .line 348
    iget v7, v0, Landroidx/compose/foundation/lazy/grid/l;->a:I

    .line 349
    .line 350
    iget v8, v0, Landroidx/compose/foundation/lazy/grid/l;->b:I

    .line 351
    .line 352
    iget-object v0, v0, Landroidx/compose/foundation/lazy/grid/l;->f:Ljava/lang/Object;

    .line 353
    .line 354
    move-object v10, v0

    .line 355
    check-cast v10, Lc3/g;

    .line 356
    .line 357
    invoke-direct/range {v4 .. v10}, Landroidx/compose/foundation/lazy/grid/l;-><init>(Landroidx/media3/common/t;Landroidx/media3/common/t;IILj3/k;Lc3/g;)V

    .line 358
    .line 359
    .line 360
    iput-object v4, p0, Lj3/f0;->o:Landroidx/compose/foundation/lazy/grid/l;

    .line 361
    .line 362
    :cond_b
    iget-object v0, p0, Lj3/f0;->n:Lcom/google/common/base/a0;

    .line 363
    .line 364
    iget v2, p0, Lj3/f0;->Q:I

    .line 365
    .line 366
    iget-object v0, v0, Lcom/google/common/base/a0;->a:Ljava/lang/Object;

    .line 367
    .line 368
    check-cast v0, Lj3/i0;

    .line 369
    .line 370
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 371
    .line 372
    const/16 v4, 0x23

    .line 373
    .line 374
    if-lt v3, v4, :cond_c

    .line 375
    .line 376
    iget-object v3, v0, Lj3/i0;->a1:Ln3/j;

    .line 377
    .line 378
    if-eqz v3, :cond_c

    .line 379
    .line 380
    invoke-virtual {v3, v2}, Ln3/j;->d(I)V

    .line 381
    .line 382
    .line 383
    :cond_c
    iget-object v0, v0, Lj3/i0;->Y0:Lj3/n;

    .line 384
    .line 385
    iget-object v3, v0, Lj3/n;->b:Landroid/os/Handler;

    .line 386
    .line 387
    if-eqz v3, :cond_d

    .line 388
    .line 389
    new-instance v4, La2/m;

    .line 390
    .line 391
    const/4 v5, 0x4

    .line 392
    invoke-direct {v4, v0, v2, v5}, La2/m;-><init>(Ljava/lang/Object;II)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 396
    .line 397
    .line 398
    :cond_d
    return v1

    .line 399
    :catch_1
    move-exception v0

    .line 400
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 401
    .line 402
    .line 403
    move v0, v5

    .line 404
    goto/16 :goto_2

    .line 405
    .line 406
    :cond_e
    iget-object v0, p0, Lj3/f0;->p:Landroidx/compose/foundation/lazy/grid/l;

    .line 407
    .line 408
    iget-object v0, v0, Landroidx/compose/foundation/lazy/grid/l;->e:Ljava/lang/Object;

    .line 409
    .line 410
    check-cast v0, Lj3/k;

    .line 411
    .line 412
    iget-boolean v0, v0, Lj3/k;->e:Z

    .line 413
    .line 414
    if-nez v0, :cond_f

    .line 415
    .line 416
    goto :goto_6

    .line 417
    :cond_f
    iput-boolean v1, p0, Lj3/f0;->X:Z

    .line 418
    .line 419
    :goto_6
    throw v3
.end method

.method public final n()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lj3/f0;->t:Lj3/w;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public final o()V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lj3/f0;->O:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lj3/f0;->n()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Lj3/f0;->t:Lj3/w;

    .line 11
    .line 12
    iget-object v1, v0, Lj3/w;->f:Lj3/y;

    .line 13
    .line 14
    iget-wide v2, v1, Lj3/y;->u:J

    .line 15
    .line 16
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    cmp-long v2, v2, v4

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    iget-object v2, v1, Lj3/y;->b:Le3/y;

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 31
    .line 32
    .line 33
    move-result-wide v2

    .line 34
    invoke-static {v2, v3}, Le3/e0;->Q(J)J

    .line 35
    .line 36
    .line 37
    move-result-wide v2

    .line 38
    iput-wide v2, v1, Lj3/y;->u:J

    .line 39
    .line 40
    :cond_0
    invoke-virtual {v1}, Lj3/y;->a()J

    .line 41
    .line 42
    .line 43
    move-result-wide v2

    .line 44
    iget v4, v1, Lj3/y;->e:I

    .line 45
    .line 46
    invoke-static {v4, v2, v3}, Le3/e0;->V(IJ)J

    .line 47
    .line 48
    .line 49
    move-result-wide v2

    .line 50
    iput-wide v2, v1, Lj3/y;->j:J

    .line 51
    .line 52
    iget-object v1, v1, Lj3/y;->h:Lj3/p;

    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    invoke-virtual {v1, v2}, Lj3/p;->a(I)V

    .line 56
    .line 57
    .line 58
    iget-boolean v1, v0, Lj3/w;->k:Z

    .line 59
    .line 60
    if-eqz v1, :cond_1

    .line 61
    .line 62
    invoke-virtual {v0}, Lj3/w;->c()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_2

    .line 67
    .line 68
    :cond_1
    iget-object v0, v0, Lj3/w;->a:Landroid/media/AudioTrack;

    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 71
    .line 72
    .line 73
    :cond_2
    return-void
.end method

.method public final p()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lj3/f0;->M:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lj3/f0;->M:Z

    .line 7
    .line 8
    iget-object v1, p0, Lj3/f0;->t:Lj3/w;

    .line 9
    .line 10
    invoke-virtual {v1}, Lj3/w;->c()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iput-boolean v2, p0, Lj3/f0;->N:Z

    .line 18
    .line 19
    :cond_0
    iget-object v1, p0, Lj3/f0;->t:Lj3/w;

    .line 20
    .line 21
    iget-boolean v3, v1, Lj3/w;->k:Z

    .line 22
    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iput-boolean v0, v1, Lj3/w;->k:Z

    .line 27
    .line 28
    iget-object v0, v1, Lj3/w;->f:Lj3/y;

    .line 29
    .line 30
    invoke-virtual {v1}, Lj3/w;->b()J

    .line 31
    .line 32
    .line 33
    move-result-wide v3

    .line 34
    invoke-virtual {v0}, Lj3/y;->a()J

    .line 35
    .line 36
    .line 37
    move-result-wide v5

    .line 38
    iput-wide v5, v0, Lj3/y;->w:J

    .line 39
    .line 40
    iget-object v5, v0, Lj3/y;->b:Le3/y;

    .line 41
    .line 42
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 46
    .line 47
    .line 48
    move-result-wide v5

    .line 49
    invoke-static {v5, v6}, Le3/e0;->Q(J)J

    .line 50
    .line 51
    .line 52
    move-result-wide v5

    .line 53
    iput-wide v5, v0, Lj3/y;->u:J

    .line 54
    .line 55
    iput-wide v3, v0, Lj3/y;->x:J

    .line 56
    .line 57
    iget-object v0, v1, Lj3/w;->a:Landroid/media/AudioTrack;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 60
    .line 61
    .line 62
    iput v2, v1, Lj3/w;->p:I

    .line 63
    .line 64
    :cond_2
    :goto_0
    return-void
.end method

.method public final q(J)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lj3/f0;->d(J)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lj3/f0;->K:Ljava/nio/ByteBuffer;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    goto/16 :goto_2

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lj3/f0;->q:Lc3/g;

    .line 11
    .line 12
    invoke-virtual {v0}, Lc3/g;->d()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lj3/f0;->I:Ljava/nio/ByteBuffer;

    .line 19
    .line 20
    if-eqz v0, :cond_8

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lj3/f0;->u(Ljava/nio/ByteBuffer;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1, p2}, Lj3/f0;->d(J)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    :goto_0
    iget-object v0, p0, Lj3/f0;->q:Lc3/g;

    .line 30
    .line 31
    invoke-virtual {v0}, Lc3/g;->c()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_8

    .line 36
    .line 37
    :cond_2
    iget-object v0, p0, Lj3/f0;->q:Lc3/g;

    .line 38
    .line 39
    invoke-virtual {v0}, Lc3/g;->d()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_3

    .line 44
    .line 45
    sget-object v0, Lc3/j;->a:Ljava/nio/ByteBuffer;

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_3
    iget-object v1, v0, Lc3/g;->c:[Ljava/nio/ByteBuffer;

    .line 49
    .line 50
    invoke-virtual {v0}, Lc3/g;->b()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    aget-object v1, v1, v2

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_4

    .line 61
    .line 62
    move-object v0, v1

    .line 63
    goto :goto_1

    .line 64
    :cond_4
    sget-object v1, Lc3/j;->a:Ljava/nio/ByteBuffer;

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Lc3/g;->e(Ljava/nio/ByteBuffer;)V

    .line 67
    .line 68
    .line 69
    iget-object v1, v0, Lc3/g;->c:[Ljava/nio/ByteBuffer;

    .line 70
    .line 71
    invoke-virtual {v0}, Lc3/g;->b()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    aget-object v0, v1, v0

    .line 76
    .line 77
    :goto_1
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_5

    .line 82
    .line 83
    invoke-virtual {p0, v0}, Lj3/f0;->u(Ljava/nio/ByteBuffer;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, p1, p2}, Lj3/f0;->d(J)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lj3/f0;->K:Ljava/nio/ByteBuffer;

    .line 90
    .line 91
    if-eqz v0, :cond_2

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_5
    iget-object v0, p0, Lj3/f0;->I:Ljava/nio/ByteBuffer;

    .line 95
    .line 96
    if-eqz v0, :cond_8

    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-nez v0, :cond_6

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_6
    iget-object v0, p0, Lj3/f0;->q:Lc3/g;

    .line 106
    .line 107
    iget-object v1, p0, Lj3/f0;->I:Ljava/nio/ByteBuffer;

    .line 108
    .line 109
    invoke-virtual {v0}, Lc3/g;->d()Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-eqz v2, :cond_1

    .line 114
    .line 115
    iget-boolean v2, v0, Lc3/g;->d:Z

    .line 116
    .line 117
    if-eqz v2, :cond_7

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_7
    invoke-virtual {v0, v1}, Lc3/g;->e(Ljava/nio/ByteBuffer;)V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_8
    :goto_2
    return-void
.end method

.method public final r()V
    .locals 9

    .line 1
    iget-object v0, p0, Lj3/f0;->p:Landroidx/compose/foundation/lazy/grid/l;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lj3/f0;->o:Landroidx/compose/foundation/lazy/grid/l;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iput-object v0, p0, Lj3/f0;->p:Landroidx/compose/foundation/lazy/grid/l;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lj3/f0;->o:Landroidx/compose/foundation/lazy/grid/l;

    .line 13
    .line 14
    :cond_0
    :try_start_0
    iget-object v0, p0, Lj3/f0;->r:Lj3/l;

    .line 15
    .line 16
    iget-object v1, p0, Lj3/f0;->p:Landroidx/compose/foundation/lazy/grid/l;

    .line 17
    .line 18
    iget-object v1, v1, Landroidx/compose/foundation/lazy/grid/l;->d:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Landroidx/media3/common/t;

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Lj3/f0;->g(Landroidx/media3/common/t;)Lj3/h;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v0, Lj3/x;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lj3/x;->c(Lj3/h;)Lj3/k;

    .line 29
    .line 30
    .line 31
    move-result-object v7
    :try_end_0
    .catch Landroidx/media3/exoplayer/audio/AudioOutputProvider$ConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    new-instance v2, Landroidx/compose/foundation/lazy/grid/l;

    .line 33
    .line 34
    iget-object v0, p0, Lj3/f0;->p:Landroidx/compose/foundation/lazy/grid/l;

    .line 35
    .line 36
    iget-object v1, v0, Landroidx/compose/foundation/lazy/grid/l;->c:Ljava/lang/Object;

    .line 37
    .line 38
    move-object v3, v1

    .line 39
    check-cast v3, Landroidx/media3/common/t;

    .line 40
    .line 41
    iget-object v1, v0, Landroidx/compose/foundation/lazy/grid/l;->d:Ljava/lang/Object;

    .line 42
    .line 43
    move-object v4, v1

    .line 44
    check-cast v4, Landroidx/media3/common/t;

    .line 45
    .line 46
    iget v5, v0, Landroidx/compose/foundation/lazy/grid/l;->a:I

    .line 47
    .line 48
    iget v6, v0, Landroidx/compose/foundation/lazy/grid/l;->b:I

    .line 49
    .line 50
    iget-object v0, v0, Landroidx/compose/foundation/lazy/grid/l;->f:Ljava/lang/Object;

    .line 51
    .line 52
    move-object v8, v0

    .line 53
    check-cast v8, Lc3/g;

    .line 54
    .line 55
    invoke-direct/range {v2 .. v8}, Landroidx/compose/foundation/lazy/grid/l;-><init>(Landroidx/media3/common/t;Landroidx/media3/common/t;IILj3/k;Lc3/g;)V

    .line 56
    .line 57
    .line 58
    iput-object v2, p0, Lj3/f0;->p:Landroidx/compose/foundation/lazy/grid/l;

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 63
    .line 64
    new-instance v2, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;

    .line 65
    .line 66
    iget-object v3, p0, Lj3/f0;->p:Landroidx/compose/foundation/lazy/grid/l;

    .line 67
    .line 68
    iget-object v3, v3, Landroidx/compose/foundation/lazy/grid/l;->c:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v3, Landroidx/media3/common/t;

    .line 71
    .line 72
    invoke-direct {v2, v0, v3}, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/Throwable;Landroidx/media3/common/t;)V

    .line 73
    .line 74
    .line 75
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    throw v1

    .line 79
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lj3/f0;->f()V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public final s()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lj3/f0;->f()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lj3/f0;->g:Lcom/google/common/collect/ImmutableList;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/u9;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lc3/j;

    .line 21
    .line 22
    invoke-interface {v1}, Lc3/j;->reset()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lj3/f0;->e:Lc3/q;

    .line 27
    .line 28
    invoke-virtual {v0}, Lc3/k;->reset()V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lj3/f0;->f:Lj3/m0;

    .line 32
    .line 33
    invoke-virtual {v0}, Lc3/k;->reset()V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lj3/f0;->q:Lc3/g;

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    iget-object v2, v0, Lc3/g;->a:Lcom/google/common/collect/ImmutableList;

    .line 42
    .line 43
    move v3, v1

    .line 44
    :goto_1
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-ge v3, v4, :cond_1

    .line 49
    .line 50
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    check-cast v4, Lc3/j;

    .line 55
    .line 56
    sget-object v5, Lc3/i;->b:Lc3/i;

    .line 57
    .line 58
    invoke-interface {v4, v5}, Lc3/j;->h(Lc3/i;)V

    .line 59
    .line 60
    .line 61
    invoke-interface {v4}, Lc3/j;->reset()V

    .line 62
    .line 63
    .line 64
    add-int/lit8 v3, v3, 0x1

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    iget-object v2, v0, Lc3/g;->b:Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 70
    .line 71
    .line 72
    new-array v2, v1, [Ljava/nio/ByteBuffer;

    .line 73
    .line 74
    iput-object v2, v0, Lc3/g;->c:[Ljava/nio/ByteBuffer;

    .line 75
    .line 76
    sget-object v2, Lc3/h;->e:Lc3/h;

    .line 77
    .line 78
    iput-boolean v1, v0, Lc3/g;->d:Z

    .line 79
    .line 80
    :cond_2
    iput-boolean v1, p0, Lj3/f0;->O:Z

    .line 81
    .line 82
    iput-boolean v1, p0, Lj3/f0;->X:Z

    .line 83
    .line 84
    return-void
.end method

.method public final t()V
    .locals 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_sdk23

    return-void

    :cond_sdk23
    .line 1
    invoke-virtual {p0}, Lj3/f0;->n()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lj3/f0;->t:Lj3/w;

    .line 8
    .line 9
    iget-object v1, p0, Lj3/f0;->x:Landroidx/media3/common/m0;

    .line 10
    .line 11
    iget-object v2, v0, Lj3/w;->a:Landroid/media/AudioTrack;

    .line 12
    .line 13
    new-instance v3, Landroid/media/PlaybackParams;

    .line 14
    .line 15
    invoke-direct {v3}, Landroid/media/PlaybackParams;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3}, Landroid/media/PlaybackParams;->allowDefaults()Landroid/media/PlaybackParams;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    iget v4, v1, Landroidx/media3/common/m0;->a:F

    .line 23
    .line 24
    iget v5, v0, Lj3/w;->c:F

    .line 25
    .line 26
    const v6, 0x3dcccccd    # 0.1f

    .line 27
    .line 28
    .line 29
    invoke-static {v4, v6, v5}, Le3/e0;->h(FFF)F

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    invoke-virtual {v3, v4}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    iget v1, v1, Landroidx/media3/common/m0;->b:F

    .line 38
    .line 39
    const/high16 v4, 0x41000000    # 8.0f

    .line 40
    .line 41
    invoke-static {v1, v6, v4}, Le3/e0;->h(FFF)F

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-virtual {v3, v1}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const/4 v3, 0x2

    .line 50
    invoke-virtual {v1, v3}, Landroid/media/PlaybackParams;->setAudioFallbackMode(I)Landroid/media/PlaybackParams;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/media/AudioTrack;->setPlaybackParams(Landroid/media/PlaybackParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception v1

    .line 59
    const-string v3, "AudioTrackAudioOutput"

    .line 60
    .line 61
    const-string v4, "Failed to set playback params"

    .line 62
    .line 63
    invoke-static {v3, v4, v1}, Le3/a;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    :goto_0
    iget-object v0, v0, Lj3/w;->f:Lj3/y;

    .line 67
    .line 68
    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlaybackParams()Landroid/media/PlaybackParams;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v1}, Landroid/media/PlaybackParams;->getSpeed()F

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    iput v1, v0, Lj3/y;->i:F

    .line 77
    .line 78
    iget-object v1, v0, Lj3/y;->h:Lj3/p;

    .line 79
    .line 80
    const/4 v2, 0x0

    .line 81
    invoke-virtual {v1, v2}, Lj3/p;->a(I)V

    .line 82
    .line 83
    .line 84
    const-wide/16 v3, 0x0

    .line 85
    .line 86
    iput-wide v3, v0, Lj3/y;->k:J

    .line 87
    .line 88
    iput v2, v0, Lj3/y;->t:I

    .line 89
    .line 90
    iput v2, v0, Lj3/y;->s:I

    .line 91
    .line 92
    iput-wide v3, v0, Lj3/y;->l:J

    .line 93
    .line 94
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    iput-wide v1, v0, Lj3/y;->y:J

    .line 100
    .line 101
    iput-wide v1, v0, Lj3/y;->z:J

    .line 102
    .line 103
    iget-object v0, p0, Lj3/f0;->t:Lj3/w;

    .line 104
    .line 105
    iget-object v0, v0, Lj3/w;->a:Landroid/media/AudioTrack;

    .line 106
    .line 107
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackParams()Landroid/media/PlaybackParams;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    new-instance v1, Landroidx/media3/common/m0;

    .line 112
    .line 113
    invoke-virtual {v0}, Landroid/media/PlaybackParams;->getSpeed()F

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    invoke-virtual {v0}, Landroid/media/PlaybackParams;->getPitch()F

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    invoke-direct {v1, v2, v0}, Landroidx/media3/common/m0;-><init>(FF)V

    .line 122
    .line 123
    .line 124
    iput-object v1, p0, Lj3/f0;->x:Landroidx/media3/common/m0;

    .line 125
    .line 126
    :cond_0
    return-void
.end method

.method public final u(Ljava/nio/ByteBuffer;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lj3/f0;->K:Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    invoke-static {v1}, Lcom/google/common/base/q;->u(Z)V

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    iget-object v1, v0, Lj3/f0;->p:Landroidx/compose/foundation/lazy/grid/l;

    .line 21
    .line 22
    invoke-static {v1}, Landroidx/compose/foundation/lazy/grid/l;->a(Landroidx/compose/foundation/lazy/grid/l;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_2

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    const-wide/16 v1, 0x14

    .line 30
    .line 31
    invoke-static {v1, v2}, Le3/e0;->Q(J)J

    .line 32
    .line 33
    .line 34
    move-result-wide v3

    .line 35
    iget-object v1, v0, Lj3/f0;->p:Landroidx/compose/foundation/lazy/grid/l;

    .line 36
    .line 37
    iget-object v1, v1, Landroidx/compose/foundation/lazy/grid/l;->e:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v1, Lj3/k;

    .line 40
    .line 41
    iget v1, v1, Lj3/k;->b:I

    .line 42
    .line 43
    int-to-long v5, v1

    .line 44
    const-wide/32 v7, 0xf4240

    .line 45
    .line 46
    .line 47
    sget-object v9, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    .line 48
    .line 49
    invoke-static/range {v3 .. v9}, Le3/e0;->X(JJJLjava/math/RoundingMode;)J

    .line 50
    .line 51
    .line 52
    move-result-wide v1

    .line 53
    long-to-int v1, v1

    .line 54
    invoke-virtual {v0}, Lj3/f0;->j()J

    .line 55
    .line 56
    .line 57
    move-result-wide v2

    .line 58
    int-to-long v4, v1

    .line 59
    cmp-long v6, v2, v4

    .line 60
    .line 61
    if-ltz v6, :cond_3

    .line 62
    .line 63
    :goto_1
    move-object/from16 v3, p1

    .line 64
    .line 65
    goto/16 :goto_9

    .line 66
    .line 67
    :cond_3
    iget-object v6, v0, Lj3/f0;->p:Landroidx/compose/foundation/lazy/grid/l;

    .line 68
    .line 69
    iget-object v7, v6, Landroidx/compose/foundation/lazy/grid/l;->e:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v7, Lj3/k;

    .line 72
    .line 73
    iget v7, v7, Lj3/k;->a:I

    .line 74
    .line 75
    iget v6, v6, Landroidx/compose/foundation/lazy/grid/l;->b:I

    .line 76
    .line 77
    long-to-int v2, v2

    .line 78
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->remaining()I

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 87
    .line 88
    .line 89
    move-result-object v8

    .line 90
    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    .line 95
    .line 96
    .line 97
    move-result v8

    .line 98
    :cond_4
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 99
    .line 100
    .line 101
    move-result v9

    .line 102
    if-eqz v9, :cond_1b

    .line 103
    .line 104
    if-ge v2, v1, :cond_1b

    .line 105
    .line 106
    const/high16 v16, 0x4f000000

    .line 107
    .line 108
    const/high16 v17, -0x31000000

    .line 109
    .line 110
    const/high16 v10, 0x50000000

    .line 111
    .line 112
    const-wide v18, 0x41dfffffffc00000L    # 2.147483647E9

    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    const/high16 v11, 0x10000000

    .line 118
    .line 119
    const/16 v12, 0x16

    .line 120
    .line 121
    const-wide/high16 v20, -0x3e20000000000000L    # -2.147483648E9

    .line 122
    .line 123
    const/16 v13, 0x15

    .line 124
    .line 125
    const/4 v14, 0x4

    .line 126
    const/4 v15, 0x3

    .line 127
    const/4 v9, 0x2

    .line 128
    if-eq v7, v9, :cond_f

    .line 129
    .line 130
    if-eq v7, v15, :cond_e

    .line 131
    .line 132
    if-eq v7, v14, :cond_c

    .line 133
    .line 134
    if-eq v7, v13, :cond_b

    .line 135
    .line 136
    if-eq v7, v12, :cond_a

    .line 137
    .line 138
    if-eq v7, v11, :cond_9

    .line 139
    .line 140
    if-eq v7, v10, :cond_8

    .line 141
    .line 142
    const/high16 v10, 0x60000000

    .line 143
    .line 144
    if-eq v7, v10, :cond_7

    .line 145
    .line 146
    const/high16 v10, 0x70000000

    .line 147
    .line 148
    if-ne v7, v10, :cond_6

    .line 149
    .line 150
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getDouble()D

    .line 151
    .line 152
    .line 153
    move-result-wide v11

    .line 154
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    .line 155
    .line 156
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(DD)D

    .line 157
    .line 158
    .line 159
    move-result-wide v11

    .line 160
    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    .line 161
    .line 162
    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->max(DD)D

    .line 163
    .line 164
    .line 165
    move-result-wide v11

    .line 166
    const-wide/16 v13, 0x0

    .line 167
    .line 168
    cmpg-double v13, v11, v13

    .line 169
    .line 170
    if-gez v13, :cond_5

    .line 171
    .line 172
    neg-double v11, v11

    .line 173
    mul-double v11, v11, v20

    .line 174
    .line 175
    :goto_3
    double-to-int v11, v11

    .line 176
    goto/16 :goto_7

    .line 177
    .line 178
    :cond_5
    mul-double v11, v11, v18

    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 182
    .line 183
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 184
    .line 185
    .line 186
    throw v1

    .line 187
    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 188
    .line 189
    .line 190
    move-result v11

    .line 191
    and-int/lit16 v11, v11, 0xff

    .line 192
    .line 193
    shl-int/lit8 v11, v11, 0x18

    .line 194
    .line 195
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 196
    .line 197
    .line 198
    move-result v12

    .line 199
    and-int/lit16 v12, v12, 0xff

    .line 200
    .line 201
    shl-int/lit8 v12, v12, 0x10

    .line 202
    .line 203
    or-int/2addr v11, v12

    .line 204
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 205
    .line 206
    .line 207
    move-result v12

    .line 208
    and-int/lit16 v12, v12, 0xff

    .line 209
    .line 210
    shl-int/lit8 v12, v12, 0x8

    .line 211
    .line 212
    or-int/2addr v11, v12

    .line 213
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 214
    .line 215
    .line 216
    move-result v12

    .line 217
    and-int/lit16 v12, v12, 0xff

    .line 218
    .line 219
    :goto_4
    or-int/2addr v11, v12

    .line 220
    goto/16 :goto_7

    .line 221
    .line 222
    :cond_8
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 223
    .line 224
    .line 225
    move-result v11

    .line 226
    and-int/lit16 v11, v11, 0xff

    .line 227
    .line 228
    shl-int/lit8 v11, v11, 0x18

    .line 229
    .line 230
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 231
    .line 232
    .line 233
    move-result v12

    .line 234
    and-int/lit16 v12, v12, 0xff

    .line 235
    .line 236
    shl-int/lit8 v12, v12, 0x10

    .line 237
    .line 238
    or-int/2addr v11, v12

    .line 239
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 240
    .line 241
    .line 242
    move-result v12

    .line 243
    and-int/lit16 v12, v12, 0xff

    .line 244
    .line 245
    shl-int/lit8 v12, v12, 0x8

    .line 246
    .line 247
    goto :goto_4

    .line 248
    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 249
    .line 250
    .line 251
    move-result v11

    .line 252
    and-int/lit16 v11, v11, 0xff

    .line 253
    .line 254
    shl-int/lit8 v11, v11, 0x18

    .line 255
    .line 256
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 257
    .line 258
    .line 259
    move-result v12

    .line 260
    and-int/lit16 v12, v12, 0xff

    .line 261
    .line 262
    shl-int/lit8 v12, v12, 0x10

    .line 263
    .line 264
    goto :goto_4

    .line 265
    :cond_a
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 266
    .line 267
    .line 268
    move-result v11

    .line 269
    and-int/lit16 v11, v11, 0xff

    .line 270
    .line 271
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 272
    .line 273
    .line 274
    move-result v12

    .line 275
    and-int/lit16 v12, v12, 0xff

    .line 276
    .line 277
    shl-int/lit8 v12, v12, 0x8

    .line 278
    .line 279
    or-int/2addr v11, v12

    .line 280
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 281
    .line 282
    .line 283
    move-result v12

    .line 284
    and-int/lit16 v12, v12, 0xff

    .line 285
    .line 286
    shl-int/lit8 v12, v12, 0x10

    .line 287
    .line 288
    or-int/2addr v11, v12

    .line 289
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 290
    .line 291
    .line 292
    move-result v12

    .line 293
    :goto_5
    and-int/lit16 v12, v12, 0xff

    .line 294
    .line 295
    shl-int/lit8 v12, v12, 0x18

    .line 296
    .line 297
    goto :goto_4

    .line 298
    :cond_b
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 299
    .line 300
    .line 301
    move-result v11

    .line 302
    and-int/lit16 v11, v11, 0xff

    .line 303
    .line 304
    shl-int/lit8 v11, v11, 0x8

    .line 305
    .line 306
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 307
    .line 308
    .line 309
    move-result v12

    .line 310
    and-int/lit16 v12, v12, 0xff

    .line 311
    .line 312
    shl-int/lit8 v12, v12, 0x10

    .line 313
    .line 314
    or-int/2addr v11, v12

    .line 315
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 316
    .line 317
    .line 318
    move-result v12

    .line 319
    goto :goto_5

    .line 320
    :cond_c
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getFloat()F

    .line 321
    .line 322
    .line 323
    move-result v11

    .line 324
    const/high16 v12, -0x40800000    # -1.0f

    .line 325
    .line 326
    const/high16 v13, 0x3f800000    # 1.0f

    .line 327
    .line 328
    invoke-static {v11, v12, v13}, Le3/e0;->h(FFF)F

    .line 329
    .line 330
    .line 331
    move-result v11

    .line 332
    const/4 v12, 0x0

    .line 333
    cmpg-float v12, v11, v12

    .line 334
    .line 335
    if-gez v12, :cond_d

    .line 336
    .line 337
    neg-float v11, v11

    .line 338
    mul-float v11, v11, v17

    .line 339
    .line 340
    :goto_6
    float-to-int v11, v11

    .line 341
    goto :goto_7

    .line 342
    :cond_d
    mul-float v11, v11, v16

    .line 343
    .line 344
    goto :goto_6

    .line 345
    :cond_e
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 346
    .line 347
    .line 348
    move-result v11

    .line 349
    and-int/lit16 v11, v11, 0xff

    .line 350
    .line 351
    shl-int/lit8 v11, v11, 0x18

    .line 352
    .line 353
    goto :goto_7

    .line 354
    :cond_f
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 355
    .line 356
    .line 357
    move-result v11

    .line 358
    and-int/lit16 v11, v11, 0xff

    .line 359
    .line 360
    shl-int/lit8 v11, v11, 0x10

    .line 361
    .line 362
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 363
    .line 364
    .line 365
    move-result v12

    .line 366
    goto :goto_5

    .line 367
    :goto_7
    int-to-long v11, v11

    .line 368
    int-to-long v13, v2

    .line 369
    mul-long/2addr v11, v13

    .line 370
    div-long/2addr v11, v4

    .line 371
    long-to-int v11, v11

    .line 372
    if-eq v7, v9, :cond_1a

    .line 373
    .line 374
    if-eq v7, v15, :cond_19

    .line 375
    .line 376
    const/4 v9, 0x4

    .line 377
    if-eq v7, v9, :cond_17

    .line 378
    .line 379
    const/16 v9, 0x15

    .line 380
    .line 381
    if-eq v7, v9, :cond_16

    .line 382
    .line 383
    const/16 v9, 0x16

    .line 384
    .line 385
    if-eq v7, v9, :cond_15

    .line 386
    .line 387
    const/high16 v10, 0x10000000

    .line 388
    .line 389
    if-eq v7, v10, :cond_14

    .line 390
    .line 391
    const/high16 v9, 0x50000000

    .line 392
    .line 393
    if-eq v7, v9, :cond_13

    .line 394
    .line 395
    const/high16 v10, 0x60000000

    .line 396
    .line 397
    if-eq v7, v10, :cond_12

    .line 398
    .line 399
    const/high16 v10, 0x70000000

    .line 400
    .line 401
    if-ne v7, v10, :cond_11

    .line 402
    .line 403
    if-gez v11, :cond_10

    .line 404
    .line 405
    int-to-double v9, v11

    .line 406
    neg-double v9, v9

    .line 407
    div-double v9, v9, v20

    .line 408
    .line 409
    invoke-virtual {v3, v9, v10}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 410
    .line 411
    .line 412
    goto/16 :goto_8

    .line 413
    .line 414
    :cond_10
    int-to-double v9, v11

    .line 415
    div-double v9, v9, v18

    .line 416
    .line 417
    invoke-virtual {v3, v9, v10}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 418
    .line 419
    .line 420
    goto/16 :goto_8

    .line 421
    .line 422
    :cond_11
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 423
    .line 424
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 425
    .line 426
    .line 427
    throw v1

    .line 428
    :cond_12
    shr-int/lit8 v9, v11, 0x18

    .line 429
    .line 430
    int-to-byte v9, v9

    .line 431
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 432
    .line 433
    .line 434
    shr-int/lit8 v9, v11, 0x10

    .line 435
    .line 436
    int-to-byte v9, v9

    .line 437
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 438
    .line 439
    .line 440
    shr-int/lit8 v9, v11, 0x8

    .line 441
    .line 442
    int-to-byte v9, v9

    .line 443
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 444
    .line 445
    .line 446
    int-to-byte v9, v11

    .line 447
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 448
    .line 449
    .line 450
    goto/16 :goto_8

    .line 451
    .line 452
    :cond_13
    shr-int/lit8 v9, v11, 0x18

    .line 453
    .line 454
    int-to-byte v9, v9

    .line 455
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 456
    .line 457
    .line 458
    shr-int/lit8 v9, v11, 0x10

    .line 459
    .line 460
    int-to-byte v9, v9

    .line 461
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 462
    .line 463
    .line 464
    shr-int/lit8 v9, v11, 0x8

    .line 465
    .line 466
    int-to-byte v9, v9

    .line 467
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 468
    .line 469
    .line 470
    goto :goto_8

    .line 471
    :cond_14
    shr-int/lit8 v9, v11, 0x18

    .line 472
    .line 473
    int-to-byte v9, v9

    .line 474
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 475
    .line 476
    .line 477
    shr-int/lit8 v9, v11, 0x10

    .line 478
    .line 479
    int-to-byte v9, v9

    .line 480
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 481
    .line 482
    .line 483
    goto :goto_8

    .line 484
    :cond_15
    int-to-byte v9, v11

    .line 485
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 486
    .line 487
    .line 488
    shr-int/lit8 v9, v11, 0x8

    .line 489
    .line 490
    int-to-byte v9, v9

    .line 491
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 492
    .line 493
    .line 494
    shr-int/lit8 v9, v11, 0x10

    .line 495
    .line 496
    int-to-byte v9, v9

    .line 497
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 498
    .line 499
    .line 500
    shr-int/lit8 v9, v11, 0x18

    .line 501
    .line 502
    int-to-byte v9, v9

    .line 503
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 504
    .line 505
    .line 506
    goto :goto_8

    .line 507
    :cond_16
    shr-int/lit8 v9, v11, 0x8

    .line 508
    .line 509
    int-to-byte v9, v9

    .line 510
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 511
    .line 512
    .line 513
    shr-int/lit8 v9, v11, 0x10

    .line 514
    .line 515
    int-to-byte v9, v9

    .line 516
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 517
    .line 518
    .line 519
    shr-int/lit8 v9, v11, 0x18

    .line 520
    .line 521
    int-to-byte v9, v9

    .line 522
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 523
    .line 524
    .line 525
    goto :goto_8

    .line 526
    :cond_17
    if-gez v11, :cond_18

    .line 527
    .line 528
    int-to-float v9, v11

    .line 529
    neg-float v9, v9

    .line 530
    div-float v9, v9, v17

    .line 531
    .line 532
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 533
    .line 534
    .line 535
    goto :goto_8

    .line 536
    :cond_18
    int-to-float v9, v11

    .line 537
    div-float v9, v9, v16

    .line 538
    .line 539
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 540
    .line 541
    .line 542
    goto :goto_8

    .line 543
    :cond_19
    shr-int/lit8 v9, v11, 0x18

    .line 544
    .line 545
    int-to-byte v9, v9

    .line 546
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 547
    .line 548
    .line 549
    goto :goto_8

    .line 550
    :cond_1a
    shr-int/lit8 v9, v11, 0x10

    .line 551
    .line 552
    int-to-byte v9, v9

    .line 553
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 554
    .line 555
    .line 556
    shr-int/lit8 v9, v11, 0x18

    .line 557
    .line 558
    int-to-byte v9, v9

    .line 559
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 560
    .line 561
    .line 562
    :goto_8
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    .line 563
    .line 564
    .line 565
    move-result v9

    .line 566
    add-int v10, v8, v6

    .line 567
    .line 568
    if-ne v9, v10, :cond_4

    .line 569
    .line 570
    add-int/lit8 v2, v2, 0x1

    .line 571
    .line 572
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    .line 573
    .line 574
    .line 575
    move-result v8

    .line 576
    goto/16 :goto_2

    .line 577
    .line 578
    :cond_1b
    move-object/from16 v1, p1

    .line 579
    .line 580
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 581
    .line 582
    .line 583
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 584
    .line 585
    .line 586
    :goto_9
    iput-object v3, v0, Lj3/f0;->K:Ljava/nio/ByteBuffer;

    .line 587
    .line 588
    return-void
.end method

.method public final v()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lj3/f0;->p:Landroidx/compose/foundation/lazy/grid/l;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/compose/foundation/lazy/grid/l;->e:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lj3/k;

    .line 8
    .line 9
    iget-boolean v0, v0, Lj3/k;->j:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    return v0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    return v0
.end method
