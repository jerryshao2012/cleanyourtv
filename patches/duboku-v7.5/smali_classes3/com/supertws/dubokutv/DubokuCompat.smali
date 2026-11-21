.class public final Lcom/supertws/dubokutv/DubokuCompat;
.super Ljava/lang/Object;
.source "DubokuCompat.java"


# static fields
.field private static final DEFAULT_CF_IPS:[[B

.field private static final DEFAULT_TMDB_IPS:[[B

.field private static sCacheFile:Ljava/io/File;

.field private static final sCacheProps:Ljava/util/Properties;

.field private static sDnsCounter:I

.field private static final sLock:Ljava/lang/Object;

.field private static sPropsLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 26
    const/4 v0, 0x0

    sput v0, Lcom/supertws/dubokutv/DubokuCompat;->sDnsCounter:I

    .line 27
    const/4 v1, 0x0

    sput-object v1, Lcom/supertws/dubokutv/DubokuCompat;->sCacheFile:Ljava/io/File;

    .line 28
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    sput-object v1, Lcom/supertws/dubokutv/DubokuCompat;->sCacheProps:Ljava/util/Properties;

    .line 29
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/supertws/dubokutv/DubokuCompat;->sLock:Ljava/lang/Object;

    .line 30
    sput-boolean v0, Lcom/supertws/dubokutv/DubokuCompat;->sPropsLoaded:Z

    .line 33
    const/4 v1, 0x4

    new-array v2, v1, [B

    fill-array-data v2, :array_0

    new-array v3, v1, [B

    fill-array-data v3, :array_1

    new-array v4, v1, [B

    fill-array-data v4, :array_2

    const/4 v5, 0x3

    new-array v6, v5, [[B

    aput-object v2, v6, v0

    const/4 v2, 0x1

    aput-object v3, v6, v2

    const/4 v3, 0x2

    aput-object v4, v6, v3

    sput-object v6, Lcom/supertws/dubokutv/DubokuCompat;->DEFAULT_CF_IPS:[[B

    .line 39
    new-array v4, v1, [B

    fill-array-data v4, :array_3

    new-array v6, v1, [B

    fill-array-data v6, :array_4

    new-array v7, v1, [B

    fill-array-data v7, :array_5

    new-array v8, v1, [B

    fill-array-data v8, :array_6

    new-array v1, v1, [[B

    aput-object v4, v1, v0

    aput-object v6, v1, v2

    aput-object v7, v1, v3

    aput-object v8, v1, v5

    sput-object v1, Lcom/supertws/dubokutv/DubokuCompat;->DEFAULT_TMDB_IPS:[[B

    return-void

    :array_0
    .array-data 1
        0x68t
        0x1at
        0x2t
        -0x30t
    .end array-data

    :array_1
    .array-data 1
        0x68t
        0x1at
        0x3t
        -0x30t
    .end array-data

    :array_2
    .array-data 1
        -0x54t
        0x43t
        0x49t
        0x3et
    .end array-data

    :array_3
    .array-data 1
        -0x71t
        -0xct
        0x32t
        0x53t
    .end array-data

    :array_4
    .array-data 1
        -0x71t
        -0xct
        0x32t
        0x58t
    .end array-data

    :array_5
    .array-data 1
        -0x71t
        -0xct
        0x32t
        -0x2ct
    .end array-data

    :array_6
    .array-data 1
        -0x57t
        -0x6at
        -0x7t
        -0x5ct
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 629
    return-void
.end method

.method private static applySchemeCompat(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 283
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    if-eqz p0, :cond_0

    const-string v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 286
    :cond_0
    return-object p0
.end method

.method public static createAudioTrack(Landroid/media/AudioAttributes;IIIIII)Landroid/media/AudioTrack;
    .locals 9

    .line 208
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 209
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 210
    invoke-virtual {v0, p1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object p1

    .line 211
    invoke-virtual {p1, p2}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object p1

    .line 212
    invoke-virtual {p1, p3}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object p1

    .line 213
    invoke-virtual {p1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object p1

    .line 214
    new-instance p2, Landroid/media/AudioTrack$Builder;

    invoke-direct {p2}, Landroid/media/AudioTrack$Builder;-><init>()V

    .line 215
    invoke-virtual {p2, p0}, Landroid/media/AudioTrack$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;

    move-result-object p0

    .line 216
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;

    move-result-object p0

    .line 217
    invoke-virtual {p0, p6}, Landroid/media/AudioTrack$Builder;->setTransferMode(I)Landroid/media/AudioTrack$Builder;

    move-result-object p0

    .line 218
    invoke-virtual {p0, p4}, Landroid/media/AudioTrack$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioTrack$Builder;

    move-result-object p0

    .line 219
    invoke-virtual {p0, p5}, Landroid/media/AudioTrack$Builder;->setSessionId(I)Landroid/media/AudioTrack$Builder;

    move-result-object p0

    .line 220
    invoke-virtual {p0}, Landroid/media/AudioTrack$Builder;->build()Landroid/media/AudioTrack;

    move-result-object p0

    .line 214
    return-object p0

    .line 222
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    .line 223
    :goto_0
    nop

    .line 224
    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    .line 225
    const/4 v2, 0x4

    goto :goto_1

    .line 226
    :cond_2
    const/4 v0, 0x6

    const/4 v1, 0x2

    if-ne p0, v0, :cond_3

    .line 227
    const/4 v2, 0x2

    goto :goto_1

    .line 228
    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_4

    .line 229
    const/4 v2, 0x5

    goto :goto_1

    .line 230
    :cond_4
    if-ne p0, v1, :cond_5

    .line 231
    const/4 v0, 0x0

    const/4 v2, 0x0

    goto :goto_1

    .line 230
    :cond_5
    const/4 v0, 0x3

    const/4 v2, 0x3

    .line 233
    :goto_1
    new-instance v1, Landroid/media/AudioTrack;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v8, p5

    move v7, p6

    invoke-direct/range {v1 .. v8}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    return-object v1
.end method

.method public static enableTls12(Ljavax/net/ssl/SSLSocket;)V
    .locals 7

    .line 576
    const-string v0, "TLSv1.1"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_6

    .line 578
    :try_start_0
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v1

    .line 579
    if-eqz v1, :cond_5

    .line 580
    nop

    .line 581
    array-length v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const-string v5, "TLSv1.2"

    if-ge v4, v2, :cond_1

    :try_start_1
    aget-object v6, v1, v4

    .line 582
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 583
    nop

    .line 584
    const/4 v1, 0x1

    goto :goto_1

    .line 581
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 587
    :goto_1
    if-eqz v1, :cond_5

    .line 588
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    .line 589
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 590
    if-eqz v1, :cond_2

    .line 591
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 593
    :cond_2
    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 594
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 596
    :cond_3
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 597
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 599
    :cond_4
    new-array v0, v3, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 603
    :cond_5
    goto :goto_2

    .line 602
    :catchall_0
    move-exception p0

    .line 605
    :cond_6
    :goto_2
    return-void
.end method

.method public static evictHost(Ljava/lang/String;)V
    .locals 3

    .line 134
    if-nez p0, :cond_0

    return-void

    .line 135
    :cond_0
    sget-object v0, Lcom/supertws/dubokutv/DubokuCompat;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 136
    nop

    .line 137
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dns."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 138
    sget-object v1, Lcom/supertws/dubokutv/DubokuCompat;->sCacheProps:Ljava/util/Properties;

    invoke-virtual {v1, p0}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    sget-object v1, Lcom/supertws/dubokutv/DubokuCompat;->sCacheProps:Ljava/util/Properties;

    invoke-virtual {v1, p0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const/4 p0, 0x1

    goto :goto_0

    .line 138
    :cond_1
    const/4 p0, 0x0

    .line 142
    :goto_0
    if-eqz p0, :cond_2

    .line 143
    invoke-static {}, Lcom/supertws/dubokutv/DubokuCompat;->savePropsLocked()V

    .line 145
    :cond_2
    monitor-exit v0

    .line 146
    return-void

    .line 145
    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static executeImageRequest(Lokhttp3/z;Lokhttp3/c0;Ljava/lang/String;)Lokhttp3/i0;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 290
    nop

    .line 291
    nop

    .line 292
    nop

    .line 295
    const/4 v0, 0x0

    move-object v2, p2

    const/4 v1, 0x0

    :goto_0
    const/16 v3, 0x130

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-ge v1, v4, :cond_9

    .line 296
    nop

    .line 297
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 298
    invoke-virtual {p1}, Lokhttp3/c0;->b()Lokhttp3/b0;

    move-result-object v6

    .line 299
    invoke-virtual {v6, v2}, Lokhttp3/b0;->f(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v6}, Lokhttp3/b0;->b()Lokhttp3/c0;

    move-result-object v6

    goto :goto_1

    .line 297
    :cond_0
    move-object v6, p1

    .line 303
    :goto_1
    :try_start_0
    invoke-virtual {p0, v6}, Lokhttp3/z;->a(Lokhttp3/c0;)Lokhttp3/internal/connection/i;

    move-result-object v6

    invoke-static {v6}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->execute(Lokhttp3/i;)Lokhttp3/i0;

    move-result-object v6

    .line 304
    invoke-virtual {v6}, Lokhttp3/i0;->i()Z

    move-result v7

    if-nez v7, :cond_7

    iget v7, v6, Lokhttp3/i0;->d:I

    if-ne v7, v3, :cond_1

    goto :goto_3

    .line 308
    :cond_1
    iget v7, v6, Lokhttp3/i0;->d:I

    const/16 v8, 0x12d

    if-eq v7, v8, :cond_2

    iget v7, v6, Lokhttp3/i0;->d:I

    const/16 v8, 0x12e

    if-eq v7, v8, :cond_2

    iget v7, v6, Lokhttp3/i0;->d:I

    const/16 v8, 0x133

    if-eq v7, v8, :cond_2

    iget v7, v6, Lokhttp3/i0;->d:I

    const/16 v8, 0x134

    if-ne v7, v8, :cond_4

    .line 309
    :cond_2
    const-string v7, "Location"

    invoke-virtual {v6, v7}, Lokhttp3/i0;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 310
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    .line 311
    iget v8, v6, Lokhttp3/i0;->d:I

    invoke-static {v2, v8}, Lcom/supertws/dubokutv/DubokuCompat;->logImageHttpCode(Ljava/lang/String;I)V

    .line 312
    iget-object v8, v6, Lokhttp3/i0;->i:Lokhttp3/j0;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v8, :cond_3

    .line 313
    :try_start_1
    iget-object v6, v6, Lokhttp3/i0;->i:Lokhttp3/j0;

    invoke-virtual {v6}, Lokhttp3/j0;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v6

    .line 315
    :cond_3
    :goto_2
    :try_start_2
    invoke-static {v7}, Lcom/supertws/dubokutv/DubokuCompat;->applySchemeCompat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 316
    nop

    .line 295
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 320
    :cond_4
    iget v1, v6, Lokhttp3/i0;->d:I

    const/16 v7, 0x193

    if-eq v1, v7, :cond_5

    iget v1, v6, Lokhttp3/i0;->d:I

    const/16 v7, 0x1c3

    if-ne v1, v7, :cond_6

    :cond_5
    invoke-static {}, Lcom/supertws/dubokutv/DubokuCompat;->isChinaEnvironment()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 321
    invoke-static {v2}, Lcom/supertws/dubokutv/DubokuCompat;->extractHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 322
    if-eqz v1, :cond_6

    .line 323
    invoke-static {v1}, Lcom/supertws/dubokutv/DubokuCompat;->markProxyHost(Ljava/lang/String;)V

    .line 326
    :cond_6
    iget v1, v6, Lokhttp3/i0;->d:I

    invoke-static {v2, v1}, Lcom/supertws/dubokutv/DubokuCompat;->logImageHttpCode(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 327
    nop

    .line 328
    move-object v1, v5

    goto :goto_4

    .line 305
    :cond_7
    :goto_3
    return-object v6

    .line 329
    :catch_0
    move-exception v1

    .line 330
    invoke-static {v2, v1}, Lcom/supertws/dubokutv/DubokuCompat;->logImageError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 331
    nop

    .line 332
    invoke-static {v2}, Lcom/supertws/dubokutv/DubokuCompat;->extractHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 333
    if-eqz v2, :cond_8

    .line 334
    invoke-static {v2}, Lcom/supertws/dubokutv/DubokuCompat;->evictHost(Ljava/lang/String;)V

    .line 336
    :cond_8
    move-object v6, v5

    goto :goto_4

    .line 295
    :cond_9
    move-object v1, v5

    move-object v6, v1

    .line 341
    :goto_4
    if-eqz p2, :cond_10

    .line 342
    nop

    .line 343
    const-string v2, "?url="

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 344
    if-lez v2, :cond_a

    .line 345
    add-int/lit8 v2, v2, 0x5

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 344
    :cond_a
    move-object v2, p2

    .line 347
    :goto_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "https://cleanyourtv-img-proxy.netlify.app/img?url="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "https://wsrv.nl/?url="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "https://images.weserv.nl/?url="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v4, [Ljava/lang/String;

    aput-object v7, v10, v0

    const/4 v7, 0x1

    aput-object v8, v10, v7

    const/4 v7, 0x2

    aput-object v9, v10, v7

    .line 352
    nop

    :goto_6
    if-ge v0, v4, :cond_10

    aget-object v7, v10, v0

    .line 353
    invoke-static {v7}, Lcom/supertws/dubokutv/DubokuCompat;->applySchemeCompat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 354
    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 355
    goto :goto_9

    .line 357
    :cond_b
    if-eqz v6, :cond_c

    iget-object v8, v6, Lokhttp3/i0;->i:Lokhttp3/j0;

    if-eqz v8, :cond_c

    .line 359
    :try_start_3
    iget-object v6, v6, Lokhttp3/i0;->i:Lokhttp3/j0;

    invoke-virtual {v6}, Lokhttp3/j0;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 361
    goto :goto_7

    .line 360
    :catchall_1
    move-exception v6

    .line 362
    :goto_7
    move-object v6, v5

    .line 365
    :cond_c
    :try_start_4
    invoke-virtual {p1}, Lokhttp3/c0;->b()Lokhttp3/b0;

    move-result-object v8

    .line 366
    invoke-virtual {v8, v7}, Lokhttp3/b0;->f(Ljava/lang/String;)V

    .line 367
    invoke-virtual {v8}, Lokhttp3/b0;->b()Lokhttp3/c0;

    move-result-object v8

    invoke-virtual {p0, v8}, Lokhttp3/z;->a(Lokhttp3/c0;)Lokhttp3/internal/connection/i;

    move-result-object v8

    invoke-static {v8}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->execute(Lokhttp3/i;)Lokhttp3/i0;

    move-result-object v8

    .line 368
    invoke-virtual {v8}, Lokhttp3/i0;->i()Z

    move-result v9

    if-nez v9, :cond_e

    iget v9, v8, Lokhttp3/i0;->d:I

    if-ne v9, v3, :cond_d

    goto :goto_8

    .line 376
    :cond_d
    iget v9, v8, Lokhttp3/i0;->d:I

    invoke-static {v7, v9}, Lcom/supertws/dubokutv/DubokuCompat;->logImageHttpCode(Ljava/lang/String;I)V

    .line 377
    nop

    .line 381
    move-object v6, v8

    goto :goto_9

    .line 369
    :cond_e
    :goto_8
    invoke-static {v2}, Lcom/supertws/dubokutv/DubokuCompat;->extractHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 370
    if-eqz v1, :cond_f

    .line 371
    invoke-static {v1}, Lcom/supertws/dubokutv/DubokuCompat;->markProxyHost(Ljava/lang/String;)V

    .line 373
    :cond_f
    const-string v1, "DubokuImg"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "RETRY_OK "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 374
    return-object v8

    .line 378
    :catch_1
    move-exception v1

    .line 379
    invoke-static {v7, v1}, Lcom/supertws/dubokutv/DubokuCompat;->logImageError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 380
    nop

    .line 352
    :goto_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 385
    :cond_10
    if-eqz v6, :cond_11

    .line 386
    return-object v6

    .line 388
    :cond_11
    if-nez v1, :cond_12

    .line 391
    invoke-virtual {p0, p1}, Lokhttp3/z;->a(Lokhttp3/c0;)Lokhttp3/internal/connection/i;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->execute(Lokhttp3/i;)Lokhttp3/i0;

    move-result-object p0

    return-object p0

    .line 389
    :cond_12
    goto :goto_b

    :goto_a
    throw v1

    :goto_b
    goto :goto_a
.end method

.method private static extractHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 265
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 267
    :cond_0
    :try_start_0
    const-string v1, "://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 268
    if-gez v1, :cond_1

    return-object v0

    .line 269
    :cond_1
    add-int/lit8 v1, v1, 0x3

    .line 270
    const/16 v2, 0x2f

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 271
    const/16 v3, 0x3a

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 272
    if-ltz v3, :cond_3

    if-ltz v2, :cond_2

    if-ge v3, v2, :cond_3

    .line 273
    :cond_2
    move v2, v3

    .line 275
    :cond_3
    if-gez v2, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 276
    :cond_4
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 277
    :catchall_0
    move-exception p0

    .line 278
    return-object v0
.end method

.method public static fixImageUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 245
    invoke-static {p0}, Lcom/supertws/dubokutv/DubokuCompat;->rewriteChinaImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 246
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 247
    if-eqz p0, :cond_0

    const-string v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 251
    :cond_0
    return-object p0
.end method

.method public static getActiveNetwork(Landroid/net/ConnectivityManager;)Landroid/net/Network;
    .locals 2

    .line 189
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 190
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object p0

    return-object p0

    .line 192
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getCachedAddresses(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 8

    .line 462
    sget-object v0, Lcom/supertws/dubokutv/DubokuCompat;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 463
    :try_start_0
    sget-object v1, Lcom/supertws/dubokutv/DubokuCompat;->sCacheProps:Ljava/util/Properties;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dns."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 464
    if-eqz v1, :cond_3

    .line 465
    const/16 v2, 0x7c

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 466
    if-lez v2, :cond_3

    .line 468
    add-int/lit8 v3, v2, 0x1

    :try_start_1
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 470
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    const-wide/32 v3, 0x5265c00

    cmp-long v7, v5, v3

    if-gez v7, :cond_2

    .line 471
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 472
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 473
    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v1, v5

    .line 474
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/supertws/dubokutv/DubokuCompat;->parseIpv4Bytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 475
    if-eqz v6, :cond_0

    .line 476
    invoke-static {p0, v6}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 479
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    .line 480
    new-array p0, v3, [Ljava/net/InetAddress;

    invoke-interface {v2, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/net/InetAddress;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object p0

    .line 483
    :catchall_0
    move-exception p0

    :cond_2
    nop

    .line 486
    :cond_3
    monitor-exit v0

    .line 487
    const/4 p0, 0x0

    return-object p0

    .line 486
    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I
    .locals 2

    .line 182
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 183
    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    return p0

    .line 185
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0
.end method

.method public static getDisplayModeSize(Landroid/view/Display;)Landroid/graphics/Point;
    .locals 2

    .line 196
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 197
    invoke-virtual {p0}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object p0

    .line 198
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object v0

    .line 200
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 201
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 202
    return-object v0
.end method

.method public static getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 175
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 176
    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 178
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private static getSeedAddresses(Ljava/lang/String;[[B)[Ljava/net/InetAddress;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 558
    array-length v0, p1

    new-array v0, v0, [Ljava/net/InetAddress;

    .line 559
    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 560
    aget-object v2, p1, v1

    invoke-static {p0, v2}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v2

    aput-object v2, v0, v1

    .line 559
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 562
    :cond_0
    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3

    .line 47
    if-nez p0, :cond_0

    return-void

    .line 48
    :cond_0
    sget-object v0, Lcom/supertws/dubokutv/DubokuCompat;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 50
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    .line 51
    if-eqz p0, :cond_1

    .line 52
    new-instance v1, Ljava/io/File;

    const-string v2, "duboku_net_cache.properties"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Lcom/supertws/dubokutv/DubokuCompat;->sCacheFile:Ljava/io/File;

    .line 53
    invoke-static {}, Lcom/supertws/dubokutv/DubokuCompat;->loadPropsLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_1
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/supertws/dubokutv/DubokuCompat;->logWarn(Ljava/lang/String;)V

    .line 58
    :goto_0
    monitor-exit v0

    .line 59
    return-void

    .line 58
    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0
.end method

.method public static isChinaEnvironment()Z
    .locals 3

    .line 396
    :try_start_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 397
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const-string v2, "Shanghai"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Chongqing"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Harbin"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Urumqi"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Asia/Beijing"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "PRC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "GMT+08:00"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "GMT+8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 398
    :cond_0
    return v1

    .line 400
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 401
    if-eqz v0, :cond_2

    const-string v2, "CN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 402
    return v1

    .line 406
    :cond_2
    goto :goto_0

    .line 404
    :catchall_0
    move-exception v0

    .line 407
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isProxyHost(Ljava/lang/String;)Z
    .locals 7

    .line 157
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 158
    :cond_0
    const-string v1, "iyf.tv"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 159
    :cond_1
    sget-object v1, Lcom/supertws/dubokutv/DubokuCompat;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 160
    :try_start_0
    sget-object v3, Lcom/supertws/dubokutv/DubokuCompat;->sCacheProps:Ljava/util/Properties;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "proxy."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 161
    if-eqz p0, :cond_3

    .line 163
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long/2addr v5, v3

    const-wide/32 v3, 0x240c8400

    cmp-long p0, v5, v3

    if-gez p0, :cond_2

    .line 166
    :try_start_2
    monitor-exit v1

    return v2

    .line 168
    :catchall_0
    move-exception p0

    :cond_2
    nop

    .line 170
    :cond_3
    monitor-exit v1

    .line 171
    return v0

    .line 170
    :catchall_1
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method private static loadPropsLocked()V
    .locals 4

    .line 62
    sget-boolean v0, Lcom/supertws/dubokutv/DubokuCompat;->sPropsLoaded:Z

    const/4 v1, 0x1

    if-nez v0, :cond_3

    sget-object v0, Lcom/supertws/dubokutv/DubokuCompat;->sCacheFile:Ljava/io/File;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/supertws/dubokutv/DubokuCompat;->sCacheFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_4

    .line 66
    :cond_0
    nop

    .line 68
    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    sget-object v3, Lcom/supertws/dubokutv/DubokuCompat;->sCacheFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 69
    :try_start_1
    sget-object v0, Lcom/supertws/dubokutv/DubokuCompat;->sCacheProps:Ljava/util/Properties;

    invoke-virtual {v0, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 70
    sput-boolean v1, Lcom/supertws/dubokutv/DubokuCompat;->sPropsLoaded:Z

    .line 71
    invoke-static {}, Lcom/supertws/dubokutv/DubokuCompat;->pruneStaleLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 75
    nop

    .line 76
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 72
    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 73
    :goto_1
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadProps failed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/supertws/dubokutv/DubokuCompat;->logWarn(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 75
    if-eqz v2, :cond_1

    .line 76
    goto :goto_0

    .line 79
    :cond_1
    :goto_2
    return-void

    .line 75
    :catchall_3
    move-exception v0

    if-eqz v2, :cond_2

    .line 76
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception v1

    .line 78
    :cond_2
    :goto_3
    throw v0

    .line 63
    :cond_3
    :goto_4
    sput-boolean v1, Lcom/supertws/dubokutv/DubokuCompat;->sPropsLoaded:Z

    .line 64
    return-void
.end method

.method public static logImageError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 609
    :try_start_0
    const-string v0, "DubokuImg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FAIL url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " err="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 611
    goto :goto_0

    .line 610
    :catchall_0
    move-exception p0

    .line 612
    :goto_0
    return-void
.end method

.method public static logImageHttpCode(Ljava/lang/String;I)V
    .locals 3

    .line 616
    :try_start_0
    const-string v0, "DubokuImg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " url="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 618
    goto :goto_0

    .line 617
    :catchall_0
    move-exception p0

    .line 619
    :goto_0
    return-void
.end method

.method private static logWarn(Ljava/lang/String;)V
    .locals 1

    .line 623
    :try_start_0
    const-string v0, "DubokuCompat"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 625
    goto :goto_0

    .line 624
    :catchall_0
    move-exception p0

    .line 626
    :goto_0
    return-void
.end method

.method public static markProxyHost(Ljava/lang/String;)V
    .locals 4

    .line 149
    if-nez p0, :cond_0

    return-void

    .line 150
    :cond_0
    sget-object v0, Lcom/supertws/dubokutv/DubokuCompat;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 151
    :try_start_0
    sget-object v1, Lcom/supertws/dubokutv/DubokuCompat;->sCacheProps:Ljava/util/Properties;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "proxy."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 152
    invoke-static {}, Lcom/supertws/dubokutv/DubokuCompat;->savePropsLocked()V

    .line 153
    monitor-exit v0

    .line 154
    return-void

    .line 153
    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static parseIpv4Bytes(Ljava/lang/String;)[B
    .locals 6

    .line 541
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 542
    :cond_0
    const-string v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 543
    array-length v1, p0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    return-object v0

    .line 545
    :cond_1
    :try_start_0
    new-array v1, v2, [B

    .line 546
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    .line 547
    aget-object v4, p0, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 548
    if-ltz v4, :cond_3

    const/16 v5, 0xff

    if-le v4, v5, :cond_2

    goto :goto_1

    .line 549
    :cond_2
    int-to-byte v4, v4

    aput-byte v4, v1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 546
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 548
    :cond_3
    :goto_1
    return-object v0

    .line 551
    :cond_4
    return-object v1

    .line 552
    :catchall_0
    move-exception p0

    .line 553
    return-object v0
.end method

.method private static pruneStaleLocked()V
    .locals 10

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 98
    nop

    .line 99
    nop

    .line 100
    sget-object v2, Lcom/supertws/dubokutv/DubokuCompat;->sCacheProps:Ljava/util/Properties;

    invoke-virtual {v2}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v2

    .line 101
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 102
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 103
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 104
    sget-object v5, Lcom/supertws/dubokutv/DubokuCompat;->sCacheProps:Ljava/util/Properties;

    invoke-virtual {v5, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 105
    if-eqz v5, :cond_1

    .line 106
    const/16 v6, 0x7c

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 107
    if-ltz v6, :cond_1

    .line 109
    add-int/lit8 v6, v6, 0x1

    :try_start_0
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 110
    sub-long v5, v0, v5

    const-wide/32 v7, 0x48190800

    cmp-long v9, v5, v7

    if-lez v9, :cond_0

    .line 111
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :cond_0
    goto :goto_1

    .line 113
    :catchall_0
    move-exception v5

    .line 114
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_1
    :goto_1
    goto :goto_0

    .line 119
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 120
    sget-object v2, Lcom/supertws/dubokutv/DubokuCompat;->sCacheProps:Ljava/util/Properties;

    invoke-virtual {v2, v1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    nop

    .line 122
    const/4 v1, 0x1

    goto :goto_2

    .line 124
    :cond_3
    sget-object v0, Lcom/supertws/dubokutv/DubokuCompat;->sCacheProps:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->size()I

    move-result v0

    const/16 v2, 0x40

    if-le v0, v2, :cond_4

    .line 125
    sget-object v0, Lcom/supertws/dubokutv/DubokuCompat;->sCacheProps:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->clear()V

    .line 126
    const/4 v1, 0x1

    .line 128
    :cond_4
    if-eqz v1, :cond_5

    .line 129
    invoke-static {}, Lcom/supertws/dubokutv/DubokuCompat;->savePropsLocked()V

    .line 131
    :cond_5
    return-void
.end method

.method private static putCachedAddresses(Ljava/lang/String;[Ljava/net/InetAddress;)V
    .locals 4

    .line 491
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 492
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 493
    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 494
    if-lez v1, :cond_1

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 495
    :cond_1
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 497
    :cond_2
    const/16 p1, 0x7c

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 498
    sget-object p1, Lcom/supertws/dubokutv/DubokuCompat;->sLock:Ljava/lang/Object;

    monitor-enter p1

    .line 499
    :try_start_0
    sget-object v1, Lcom/supertws/dubokutv/DubokuCompat;->sCacheProps:Ljava/util/Properties;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dns."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 500
    invoke-static {}, Lcom/supertws/dubokutv/DubokuCompat;->savePropsLocked()V

    .line 501
    monitor-exit p1

    .line 502
    return-void

    .line 501
    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 491
    :cond_3
    :goto_1
    return-void
.end method

.method private static queryHttpDns(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 8

    .line 505
    nop

    .line 507
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://119.29.29.29/d?dn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 508
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 509
    const/16 v2, 0x5dc

    :try_start_1
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 510
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 511
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 512
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_3

    .line 513
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 514
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 515
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 516
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 517
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 518
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 519
    array-length v5, v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v3, v6

    .line 520
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/supertws/dubokutv/DubokuCompat;->parseIpv4Bytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 521
    if-eqz v7, :cond_0

    .line 522
    invoke-static {p0, v7}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 525
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 526
    new-array v2, v2, [Ljava/net/InetAddress;

    invoke-interface {v4, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/net/InetAddress;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 533
    if-eqz v1, :cond_2

    .line 534
    :try_start_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 526
    :cond_2
    :goto_1
    return-object v2

    .line 533
    :cond_3
    if-eqz v1, :cond_4

    .line 534
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_4

    .line 530
    :catchall_2
    move-exception v2

    goto :goto_3

    :catchall_3
    move-exception v2

    move-object v1, v0

    .line 531
    :goto_3
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryHttpDns failed for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, ": "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/supertws/dubokutv/DubokuCompat;->logWarn(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 533
    if-eqz v1, :cond_4

    .line 534
    goto :goto_2

    .line 537
    :cond_4
    :goto_4
    return-object v0

    .line 533
    :catchall_4
    move-exception p0

    if-eqz v1, :cond_5

    .line 534
    :try_start_5
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception v0

    .line 536
    :cond_5
    :goto_5
    goto :goto_7

    :goto_6
    throw p0

    :goto_7
    goto :goto_6
.end method

.method public static resolveHost(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 411
    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 415
    const-string v0, ".dbokutv.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const-string v0, "dbokutv.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 416
    const-string v0, ".duboku.tv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "duboku.tv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 417
    const-string v0, "wsrv.nl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".wsrv.nl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 418
    const-string v0, ".weserv.nl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".iyf.tv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 419
    :goto_1
    const-string v3, "image.tmdb.org"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, ".tmdb.org"

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/4 v1, 0x1

    .line 421
    :cond_3
    invoke-static {}, Lcom/supertws/dubokutv/DubokuCompat;->isChinaEnvironment()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 423
    invoke-static {p0}, Lcom/supertws/dubokutv/DubokuCompat;->getCachedAddresses(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v2

    .line 424
    if-eqz v2, :cond_4

    array-length v3, v2

    if-lez v3, :cond_4

    .line 425
    invoke-static {v2}, Lcom/supertws/dubokutv/DubokuCompat;->rotate([Ljava/net/InetAddress;)[Ljava/net/InetAddress;

    move-result-object p0

    return-object p0

    .line 429
    :cond_4
    invoke-static {p0}, Lcom/supertws/dubokutv/DubokuCompat;->queryHttpDns(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v2

    .line 430
    if-eqz v2, :cond_5

    array-length v3, v2

    if-lez v3, :cond_5

    .line 431
    invoke-static {p0, v2}, Lcom/supertws/dubokutv/DubokuCompat;->putCachedAddresses(Ljava/lang/String;[Ljava/net/InetAddress;)V

    .line 432
    invoke-static {v2}, Lcom/supertws/dubokutv/DubokuCompat;->rotate([Ljava/net/InetAddress;)[Ljava/net/InetAddress;

    move-result-object p0

    return-object p0

    .line 436
    :cond_5
    if-eqz v0, :cond_6

    .line 437
    sget-object v0, Lcom/supertws/dubokutv/DubokuCompat;->DEFAULT_CF_IPS:[[B

    invoke-static {p0, v0}, Lcom/supertws/dubokutv/DubokuCompat;->getSeedAddresses(Ljava/lang/String;[[B)[Ljava/net/InetAddress;

    move-result-object p0

    invoke-static {p0}, Lcom/supertws/dubokutv/DubokuCompat;->rotate([Ljava/net/InetAddress;)[Ljava/net/InetAddress;

    move-result-object p0

    return-object p0

    .line 439
    :cond_6
    if-eqz v1, :cond_7

    .line 440
    sget-object v0, Lcom/supertws/dubokutv/DubokuCompat;->DEFAULT_TMDB_IPS:[[B

    invoke-static {p0, v0}, Lcom/supertws/dubokutv/DubokuCompat;->getSeedAddresses(Ljava/lang/String;[[B)[Ljava/net/InetAddress;

    move-result-object p0

    invoke-static {p0}, Lcom/supertws/dubokutv/DubokuCompat;->rotate([Ljava/net/InetAddress;)[Ljava/net/InetAddress;

    move-result-object p0

    return-object p0

    .line 446
    :cond_7
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v2

    .line 447
    if-eqz v2, :cond_8

    array-length v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v3, :cond_8

    .line 448
    return-object v2

    .line 450
    :catchall_0
    move-exception v2

    :cond_8
    nop

    .line 452
    if-eqz v0, :cond_9

    .line 453
    sget-object v0, Lcom/supertws/dubokutv/DubokuCompat;->DEFAULT_CF_IPS:[[B

    invoke-static {p0, v0}, Lcom/supertws/dubokutv/DubokuCompat;->getSeedAddresses(Ljava/lang/String;[[B)[Ljava/net/InetAddress;

    move-result-object p0

    invoke-static {p0}, Lcom/supertws/dubokutv/DubokuCompat;->rotate([Ljava/net/InetAddress;)[Ljava/net/InetAddress;

    move-result-object p0

    return-object p0

    .line 455
    :cond_9
    if-eqz v1, :cond_a

    .line 456
    sget-object v0, Lcom/supertws/dubokutv/DubokuCompat;->DEFAULT_TMDB_IPS:[[B

    invoke-static {p0, v0}, Lcom/supertws/dubokutv/DubokuCompat;->getSeedAddresses(Ljava/lang/String;[[B)[Ljava/net/InetAddress;

    move-result-object p0

    invoke-static {p0}, Lcom/supertws/dubokutv/DubokuCompat;->rotate([Ljava/net/InetAddress;)[Ljava/net/InetAddress;

    move-result-object p0

    return-object p0

    .line 458
    :cond_a
    new-instance v0, Ljava/net/UnknownHostException;

    invoke-direct {v0, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :cond_b
    new-instance p0, Ljava/net/UnknownHostException;

    const-string v0, "Empty host"

    invoke-direct {p0, v0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static rewriteChinaImageUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 255
    if-eqz p0, :cond_0

    invoke-static {}, Lcom/supertws/dubokutv/DubokuCompat;->isChinaEnvironment()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    invoke-static {p0}, Lcom/supertws/dubokutv/DubokuCompat;->extractHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 257
    invoke-static {v0}, Lcom/supertws/dubokutv/DubokuCompat;->isProxyHost(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "cleanyourtv-img-proxy.netlify.app"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "wsrv.nl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "weserv.nl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://cleanyourtv-img-proxy.netlify.app/img?url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 261
    :cond_0
    return-object p0
.end method

.method private static rotate([Ljava/net/InetAddress;)[Ljava/net/InetAddress;
    .locals 5

    .line 566
    if-eqz p0, :cond_2

    array-length v0, p0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_1

    .line 567
    :cond_0
    sget v0, Lcom/supertws/dubokutv/DubokuCompat;->sDnsCounter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/supertws/dubokutv/DubokuCompat;->sDnsCounter:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    array-length v1, p0

    rem-int/2addr v0, v1

    .line 568
    array-length v1, p0

    new-array v1, v1, [Ljava/net/InetAddress;

    .line 569
    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 570
    add-int v3, v2, v0

    array-length v4, p0

    rem-int/2addr v3, v4

    aget-object v3, p0, v3

    aput-object v3, v1, v2

    .line 569
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 572
    :cond_1
    return-object v1

    .line 566
    :cond_2
    :goto_1
    return-object p0
.end method

.method private static savePropsLocked()V
    .locals 5

    .line 82
    sget-object v0, Lcom/supertws/dubokutv/DubokuCompat;->sCacheFile:Ljava/io/File;

    if-nez v0, :cond_0

    return-void

    .line 83
    :cond_0
    nop

    .line 85
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    sget-object v2, Lcom/supertws/dubokutv/DubokuCompat;->sCacheFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 86
    :try_start_1
    sget-object v0, Lcom/supertws/dubokutv/DubokuCompat;->sCacheProps:Ljava/util/Properties;

    const-string v2, "Duboku Network Cache"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 90
    nop

    .line 91
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 87
    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 88
    :goto_1
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveProps failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/supertws/dubokutv/DubokuCompat;->logWarn(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 90
    if-eqz v1, :cond_1

    .line 91
    goto :goto_0

    .line 94
    :cond_1
    :goto_2
    return-void

    .line 90
    :catchall_3
    move-exception v0

    if-eqz v1, :cond_2

    .line 91
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception v1

    .line 93
    :cond_2
    :goto_3
    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public static writeAudioTrack(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;II)I
    .locals 2

    .line 238
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 239
    const/4 p3, 0x0

    .line 241
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p0

    return p0
.end method
