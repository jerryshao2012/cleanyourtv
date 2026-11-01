.class public abstract Lcom/google/ads/interactivemedia/v3/internal/s8;
.super Ljava/lang/Object;
.source "r8-map-id-8ba8015df6390efac2340e8bc72cbaa0af05ae8dc58e92835996b10ae6d6a13d"


# static fields
.field public static a:Z

.field public static b:Ljava/security/MessageDigest;

.field public static final c:Ljava/lang/Object;

.field public static final d:Ljava/lang/Object;

.field public static final e:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/s8;->c:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/s8;->d:Ljava/lang/Object;

    .line 14
    .line 15
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/s8;->e:Ljava/util/concurrent/CountDownLatch;

    .line 22
    .line 23
    return-void
.end method

.method public static a()V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/s8;->d:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/google/ads/interactivemedia/v3/internal/s8;->a:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    sput-boolean v1, Lcom/google/ads/interactivemedia/v3/internal/s8;->a:Z

    .line 10
    .line 11
    new-instance v1, Ljava/lang/Thread;

    .line 12
    .line 13
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/r8;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v1

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw v1
.end method

.method public static b(Ljava/lang/String;[B)Lcom/google/ads/interactivemedia/v3/internal/p5;
    .locals 9

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    if-gtz v0, :cond_0

    .line 5
    .line 6
    :catch_0
    move-object v3, v2

    .line 7
    goto :goto_1

    .line 8
    :cond_0
    add-int/lit16 v0, v0, 0xfe

    .line 9
    .line 10
    new-instance v3, Ljava/util/Vector;

    .line 11
    .line 12
    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 13
    .line 14
    .line 15
    move v4, v1

    .line 16
    :goto_0
    const/16 v5, 0xff

    .line 17
    .line 18
    div-int/lit16 v6, v0, 0xff

    .line 19
    .line 20
    if-ge v4, v6, :cond_2

    .line 21
    .line 22
    mul-int/lit16 v6, v4, 0xff

    .line 23
    .line 24
    :try_start_0
    array-length v7, p1

    .line 25
    sub-int v8, v7, v6

    .line 26
    .line 27
    if-le v8, v5, :cond_1

    .line 28
    .line 29
    add-int/lit16 v7, v6, 0xff

    .line 30
    .line 31
    :cond_1
    invoke-static {p1, v6, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-virtual {v3, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    add-int/lit8 v4, v4, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    :goto_1
    if-eqz v3, :cond_5

    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_3
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/q5;->s()Lcom/google/ads/interactivemedia/v3/internal/p5;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    move v4, v1

    .line 59
    :goto_2
    if-ge v4, v2, :cond_4

    .line 60
    .line 61
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    check-cast v5, [B

    .line 66
    .line 67
    invoke-static {v5, p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/s8;->d([BLjava/lang/String;Z)[B

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    const/16 v6, 0x100

    .line 72
    .line 73
    invoke-static {v5, v1, v6}, Lcom/google/ads/interactivemedia/v3/internal/zzacd;->zzo([BII)Lcom/google/ads/interactivemedia/v3/internal/zzacd;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/g1;->b()V

    .line 78
    .line 79
    .line 80
    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/internal/g1;->b:Lcom/google/ads/interactivemedia/v3/internal/j1;

    .line 81
    .line 82
    check-cast v6, Lcom/google/ads/interactivemedia/v3/internal/q5;

    .line 83
    .line 84
    invoke-virtual {v6, v5}, Lcom/google/ads/interactivemedia/v3/internal/q5;->t(Lcom/google/ads/interactivemedia/v3/internal/zzacd;)V

    .line 85
    .line 86
    .line 87
    add-int/lit8 v4, v4, 0x1

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_4
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/s8;->c([B)[B

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/zzacd;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzacd;

    .line 95
    .line 96
    array-length p1, p0

    .line 97
    invoke-static {p0, v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzacd;->zzo([BII)Lcom/google/ads/interactivemedia/v3/internal/zzacd;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/g1;->b()V

    .line 102
    .line 103
    .line 104
    iget-object p1, v0, Lcom/google/ads/interactivemedia/v3/internal/g1;->b:Lcom/google/ads/interactivemedia/v3/internal/j1;

    .line 105
    .line 106
    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/q5;

    .line 107
    .line 108
    invoke-virtual {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/q5;->u(Lcom/google/ads/interactivemedia/v3/internal/zzacd;)V

    .line 109
    .line 110
    .line 111
    return-object v0

    .line 112
    :cond_5
    :goto_3
    return-object v2
.end method

.method public static c([B)[B
    .locals 6

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/s8;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/s8;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    :try_start_1
    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/s8;->e:Ljava/util/concurrent/CountDownLatch;

    .line 9
    .line 10
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 11
    .line 12
    const-wide/16 v4, 0x2

    .line 13
    .line 14
    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 15
    .line 16
    .line 17
    move-result v2
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    :try_start_2
    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/s8;->b:Ljava/security/MessageDigest;

    .line 22
    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move-object v1, v2

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_1

    .line 30
    :catch_0
    :goto_0
    if-eqz v1, :cond_2

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 36
    .line 37
    .line 38
    sget-object p0, Lcom/google/ads/interactivemedia/v3/internal/s8;->b:Ljava/security/MessageDigest;

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    monitor-exit v0

    .line 45
    return-object p0

    .line 46
    :cond_2
    new-instance p0, Ljava/security/NoSuchAlgorithmException;

    .line 47
    .line 48
    const-string v1, "Cannot compute hash"

    .line 49
    .line 50
    invoke-direct {p0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p0

    .line 54
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    throw p0
.end method

.method public static d([BLjava/lang/String;Z)[B
    .locals 9

    .line 1
    array-length v0, p0

    .line 2
    const/16 v1, 0xff

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq v2, p2, :cond_0

    .line 6
    .line 7
    move v3, v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/16 v3, 0xef

    .line 10
    .line 11
    :goto_0
    if-le v0, v3, :cond_1

    .line 12
    .line 13
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/x4;->m0()Lcom/google/ads/interactivemedia/v3/internal/h1;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/g1;->b()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/g1;->b:Lcom/google/ads/interactivemedia/v3/internal/j1;

    .line 21
    .line 22
    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/x4;

    .line 23
    .line 24
    const-wide/16 v4, 0x1000

    .line 25
    .line 26
    invoke-virtual {v0, v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/x4;->z0(J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/g1;->d()Lcom/google/ads/interactivemedia/v3/internal/j1;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Lcom/google/ads/interactivemedia/v3/internal/x4;

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/i0;->b()[B

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    :cond_1
    add-int/lit8 v0, v3, 0x1

    .line 40
    .line 41
    array-length v4, p0

    .line 42
    int-to-byte v5, v4

    .line 43
    if-ge v4, v3, :cond_2

    .line 44
    .line 45
    sub-int/2addr v3, v4

    .line 46
    new-array v3, v3, [B

    .line 47
    .line 48
    new-instance v4, Ljava/security/SecureRandom;

    .line 49
    .line 50
    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    goto :goto_1

    .line 77
    :cond_2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    :goto_1
    const/16 v0, 0x100

    .line 94
    .line 95
    if-eqz p2, :cond_3

    .line 96
    .line 97
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/s8;->c([B)[B

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v3, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    :cond_3
    new-array p2, v0, [B

    .line 118
    .line 119
    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/u8;

    .line 120
    .line 121
    invoke-direct {v3}, Lcom/google/ads/interactivemedia/v3/internal/u8;-><init>()V

    .line 122
    .line 123
    .line 124
    iget-object v3, v3, Lcom/google/ads/interactivemedia/v3/internal/u8;->K2:[Lcom/google/ads/interactivemedia/v3/internal/t8;

    .line 125
    .line 126
    array-length v4, v3

    .line 127
    const/4 v4, 0x0

    .line 128
    move v5, v4

    .line 129
    :goto_2
    const/16 v6, 0xc

    .line 130
    .line 131
    if-ge v5, v6, :cond_4

    .line 132
    .line 133
    aget-object v6, v3, v5

    .line 134
    .line 135
    invoke-virtual {v6, p0, p2}, Lcom/google/ads/interactivemedia/v3/internal/t8;->a([B[B)V

    .line 136
    .line 137
    .line 138
    add-int/lit8 v5, v5, 0x1

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_4
    if-eqz p1, :cond_6

    .line 142
    .line 143
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 144
    .line 145
    .line 146
    move-result p0

    .line 147
    if-lez p0, :cond_6

    .line 148
    .line 149
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 150
    .line 151
    .line 152
    move-result p0

    .line 153
    const/16 v3, 0x20

    .line 154
    .line 155
    if-le p0, v3, :cond_5

    .line 156
    .line 157
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    :cond_5
    const-string p0, "UTF-8"

    .line 162
    .line 163
    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/tf;

    .line 168
    .line 169
    invoke-direct {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/tf;-><init>([B)V

    .line 170
    .line 171
    .line 172
    move p0, v4

    .line 173
    move v3, p0

    .line 174
    :goto_3
    if-ge v4, v0, :cond_6

    .line 175
    .line 176
    add-int/2addr p0, v2

    .line 177
    iget-object v5, p1, Lcom/google/ads/interactivemedia/v3/internal/tf;->b:Ljava/lang/Object;

    .line 178
    .line 179
    check-cast v5, [B

    .line 180
    .line 181
    and-int/2addr p0, v1

    .line 182
    aget-byte v6, v5, p0

    .line 183
    .line 184
    add-int/2addr v3, v6

    .line 185
    and-int/2addr v3, v1

    .line 186
    aget-byte v7, v5, v3

    .line 187
    .line 188
    aput-byte v7, v5, p0

    .line 189
    .line 190
    aput-byte v6, v5, v3

    .line 191
    .line 192
    aget-byte v7, p2, v4

    .line 193
    .line 194
    aget-byte v8, v5, p0

    .line 195
    .line 196
    add-int/2addr v8, v6

    .line 197
    and-int/lit16 v6, v8, 0xff

    .line 198
    .line 199
    aget-byte v5, v5, v6

    .line 200
    .line 201
    xor-int/2addr v5, v7

    .line 202
    int-to-byte v5, v5

    .line 203
    aput-byte v5, p2, v4

    .line 204
    .line 205
    add-int/lit8 v4, v4, 0x1

    .line 206
    .line 207
    goto :goto_3

    .line 208
    :cond_6
    return-object p2
.end method
