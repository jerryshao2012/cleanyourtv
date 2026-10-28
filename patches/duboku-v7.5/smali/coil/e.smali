.class public final synthetic Lcoil/e;
.super Ljava/lang/Object;
.source "r8-map-id-8ba8015df6390efac2340e8bc72cbaa0af05ae8dc58e92835996b10ae6d6a13d"

# interfaces
.implements Lrb/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/common/reflect/x;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/reflect/x;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcoil/e;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcoil/e;->b:Lcom/google/common/reflect/x;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 15

    .line 1
    iget v0, p0, Lcoil/e;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcoil/e;->b:Lcom/google/common/reflect/x;

    .line 7
    .line 8
    sget-object v1, Lcoil/util/l;->a:Lcoil/util/l;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/google/common/reflect/x;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Landroid/content/Context;

    .line 13
    .line 14
    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v2, Lcoil/util/l;->b:Lcoil/disk/g;

    .line 16
    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    sget-object v7, Lokio/n;->a:Lokio/w;

    .line 20
    .line 21
    sget-object v2, Lkotlinx/coroutines/i0;->a:Lyb/e;

    .line 22
    .line 23
    sget-object v6, Lyb/d;->c:Lyb/d;

    .line 24
    .line 25
    sget-object v2, Lcoil/util/h;->a:[Landroid/graphics/Bitmap$Config;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 34
    .line 35
    .line 36
    const-string v2, "image_cache"

    .line 37
    .line 38
    invoke-static {v0, v2}, Lkotlin/io/i;->H(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    sget-object v2, Lokio/a0;->b:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v0}, Li9/b;->t(Ljava/io/File;)Lokio/a0;

    .line 45
    .line 46
    .line 47
    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    const-wide/32 v11, 0xa00000

    .line 49
    .line 50
    .line 51
    :try_start_1
    invoke-virtual {v8}, Lokio/a0;->toFile()Ljava/io/File;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    new-instance v2, Landroid/os/StatFs;

    .line 63
    .line 64
    invoke-direct {v2, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCountLong()J

    .line 68
    .line 69
    .line 70
    move-result-wide v3

    .line 71
    long-to-double v3, v3

    .line 72
    const-wide v9, 0x3f947ae147ae147bL    # 0.02

    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    mul-double/2addr v9, v3

    .line 78
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSizeLong()J

    .line 79
    .line 80
    .line 81
    move-result-wide v2

    .line 82
    long-to-double v2, v2

    .line 83
    mul-double/2addr v9, v2

    .line 84
    double-to-long v9, v9

    .line 85
    const-wide/32 v13, 0xfa00000

    .line 86
    .line 87
    .line 88
    invoke-static/range {v9 .. v14}, Lxc/p;->k(JJJ)J

    .line 89
    .line 90
    .line 91
    move-result-wide v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    :catch_0
    move-wide v4, v11

    .line 93
    :try_start_2
    new-instance v3, Lcoil/disk/g;

    .line 94
    .line 95
    invoke-direct/range {v3 .. v8}, Lcoil/disk/g;-><init>(JLkotlinx/coroutines/s;Lokio/n;Lokio/a0;)V

    .line 96
    .line 97
    .line 98
    sput-object v3, Lcoil/util/l;->b:Lcoil/disk/g;

    .line 99
    .line 100
    move-object v2, v3

    .line 101
    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    .line 103
    goto :goto_1

    .line 104
    :cond_0
    const-string v0, "cacheDir == null"

    .line 105
    .line 106
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 107
    .line 108
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    :cond_1
    :goto_0
    monitor-exit v1

    .line 113
    return-object v2

    .line 114
    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 115
    throw v0

    .line 116
    :pswitch_0
    iget-object v0, p0, Lcoil/e;->b:Lcom/google/common/reflect/x;

    .line 117
    .line 118
    const-class v1, Landroid/app/ActivityManager;

    .line 119
    .line 120
    iget-object v0, v0, Lcom/google/common/reflect/x;->b:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast v0, Landroid/content/Context;

    .line 123
    .line 124
    sget-object v2, Lcoil/util/h;->a:[Landroid/graphics/Bitmap$Config;

    .line 125
    .line 126
    const-wide v2, 0x3fc999999999999aL    # 0.2

    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    :try_start_4
    const-string v1, "activity"
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    invoke-static {v4}, Lkotlin/jvm/internal/g;->b(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    check-cast v4, Landroid/app/ActivityManager;

    .line 139
    .line 140
    invoke-virtual {v4}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    .line 141
    .line 142
    .line 143
    move-result v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 144
    if-eqz v4, :cond_2

    .line 145
    .line 146
    const-wide v2, 0x3fc3333333333333L    # 0.15

    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    :catch_1
    :cond_2
    new-instance v4, Landroidx/room/t;

    .line 152
    .line 153
    const/16 v5, 0xa

    .line 154
    .line 155
    const/4 v6, 0x0

    .line 156
    invoke-direct {v4, v5, v6}, Landroidx/room/t;-><init>(IB)V

    .line 157
    .line 158
    .line 159
    const-wide/16 v7, 0x0

    .line 160
    .line 161
    cmpl-double v5, v2, v7

    .line 162
    .line 163
    if-lez v5, :cond_4

    .line 164
    .line 165
    sget-object v5, Lcoil/util/h;->a:[Landroid/graphics/Bitmap$Config;

    .line 166
    .line 167
    :try_start_5
    const-string v1, "activity"
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-static {v1}, Lkotlin/jvm/internal/g;->b(Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    check-cast v1, Landroid/app/ActivityManager;

    .line 175
    .line 176
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 181
    .line 182
    const/high16 v5, 0x100000

    .line 183
    .line 184
    and-int/2addr v0, v5

    .line 185
    if-eqz v0, :cond_3

    .line 186
    .line 187
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    goto :goto_2

    .line 192
    :cond_3
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getMemoryClass()I

    .line 193
    .line 194
    .line 195
    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 196
    goto :goto_2

    .line 197
    :catch_2
    const/16 v0, 0x100

    .line 198
    .line 199
    :goto_2
    int-to-double v0, v0

    .line 200
    mul-double/2addr v2, v0

    .line 201
    const/16 v0, 0x400

    .line 202
    .line 203
    int-to-double v0, v0

    .line 204
    mul-double/2addr v2, v0

    .line 205
    mul-double/2addr v2, v0

    .line 206
    double-to-int v6, v2

    .line 207
    :cond_4
    if-lez v6, :cond_5

    .line 208
    .line 209
    new-instance v0, Lp3/a;

    .line 210
    .line 211
    invoke-direct {v0, v6, v4}, Lp3/a;-><init>(ILandroidx/room/t;)V

    .line 212
    .line 213
    .line 214
    goto :goto_3

    .line 215
    :cond_5
    new-instance v0, Lt3/d;

    .line 216
    .line 217
    invoke-direct {v0, v4}, Lt3/d;-><init>(Ljava/lang/Object;)V

    .line 218
    .line 219
    .line 220
    :goto_3
    new-instance v1, Lu6/b;

    .line 221
    .line 222
    invoke-direct {v1, v0, v4}, Lu6/b;-><init>(Lu6/e;Landroidx/room/t;)V

    .line 223
    .line 224
    .line 225
    return-object v1

    .line 226
    nop

    .line 227
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
