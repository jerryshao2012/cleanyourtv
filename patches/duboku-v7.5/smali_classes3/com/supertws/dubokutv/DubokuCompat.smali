.class public final Lcom/supertws/dubokutv/DubokuCompat;
.super Ljava/lang/Object;
.source "DubokuCompat.java"


# static fields
.field private static sDnsCounter:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const/4 v0, 0x0

    sput v0, Lcom/supertws/dubokutv/DubokuCompat;->sDnsCounter:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    return-void
.end method

.method private static applySchemeCompat(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    if-eqz p0, :cond_0

    const-string v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 106
    :cond_0
    return-object p0
.end method

.method public static createAudioTrack(Landroid/media/AudioAttributes;IIIIII)Landroid/media/AudioTrack;
    .locals 9

    .line 49
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 50
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 51
    invoke-virtual {v0, p1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object p1

    .line 52
    invoke-virtual {p1, p2}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object p1

    .line 53
    invoke-virtual {p1, p3}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object p1

    .line 54
    invoke-virtual {p1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object p1

    .line 55
    new-instance p2, Landroid/media/AudioTrack$Builder;

    invoke-direct {p2}, Landroid/media/AudioTrack$Builder;-><init>()V

    .line 56
    invoke-virtual {p2, p0}, Landroid/media/AudioTrack$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;

    move-result-object p0

    .line 57
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;

    move-result-object p0

    .line 58
    invoke-virtual {p0, p6}, Landroid/media/AudioTrack$Builder;->setTransferMode(I)Landroid/media/AudioTrack$Builder;

    move-result-object p0

    .line 59
    invoke-virtual {p0, p4}, Landroid/media/AudioTrack$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioTrack$Builder;

    move-result-object p0

    .line 60
    invoke-virtual {p0, p5}, Landroid/media/AudioTrack$Builder;->setSessionId(I)Landroid/media/AudioTrack$Builder;

    move-result-object p0

    .line 61
    invoke-virtual {p0}, Landroid/media/AudioTrack$Builder;->build()Landroid/media/AudioTrack;

    move-result-object p0

    .line 55
    return-object p0

    .line 63
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    .line 64
    :goto_0
    nop

    .line 65
    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    .line 66
    const/4 v2, 0x4

    goto :goto_1

    .line 67
    :cond_2
    const/4 v0, 0x6

    const/4 v1, 0x2

    if-ne p0, v0, :cond_3

    .line 68
    const/4 v2, 0x2

    goto :goto_1

    .line 69
    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_4

    .line 70
    const/4 v2, 0x5

    goto :goto_1

    .line 71
    :cond_4
    if-ne p0, v1, :cond_5

    .line 72
    const/4 v0, 0x0

    const/4 v2, 0x0

    goto :goto_1

    .line 71
    :cond_5
    const/4 v0, 0x3

    const/4 v2, 0x3

    .line 74
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

    .line 244
    const-string v0, "TLSv1.1"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_6

    .line 246
    :try_start_0
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v1

    .line 247
    if-eqz v1, :cond_5

    .line 248
    nop

    .line 249
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

    .line 250
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 251
    nop

    .line 252
    const/4 v1, 0x1

    goto :goto_1

    .line 249
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 255
    :goto_1
    if-eqz v1, :cond_5

    .line 256
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    .line 257
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 258
    if-eqz v1, :cond_2

    .line 259
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 261
    :cond_2
    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 262
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    :cond_3
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 265
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    :cond_4
    new-array v0, v3, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    :cond_5
    goto :goto_2

    .line 270
    :catchall_0
    move-exception p0

    .line 273
    :cond_6
    :goto_2
    return-void
.end method

.method public static executeImageRequest(Lokhttp3/z;Lokhttp3/c0;Ljava/lang/String;)Lokhttp3/i0;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    nop

    .line 111
    nop

    .line 113
    const/16 v0, 0x130

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lokhttp3/z;->a(Lokhttp3/c0;)Lokhttp3/internal/connection/i;

    move-result-object v2

    invoke-static {v2}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->execute(Lokhttp3/i;)Lokhttp3/i0;

    move-result-object v2

    .line 114
    invoke-virtual {v2}, Lokhttp3/i0;->i()Z

    move-result v3

    if-nez v3, :cond_1

    iget v3, v2, Lokhttp3/i0;->d:I

    if-ne v3, v0, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    iget v3, v2, Lokhttp3/i0;->d:I

    invoke-static {p2, v3}, Lcom/supertws/dubokutv/DubokuCompat;->logImageHttpCode(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    nop

    .line 122
    move-object v3, v2

    move-object v2, v1

    goto :goto_1

    .line 115
    :cond_1
    :goto_0
    return-object v2

    .line 119
    :catch_0
    move-exception v2

    .line 120
    invoke-static {p2, v2}, Lcom/supertws/dubokutv/DubokuCompat;->logImageError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    move-object v3, v1

    .line 124
    :goto_1
    invoke-static {}, Lcom/supertws/dubokutv/DubokuCompat;->isChinaEnvironment()Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz p2, :cond_7

    .line 125
    nop

    .line 126
    const-string v4, "?url="

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 127
    if-lez v4, :cond_2

    .line 128
    add-int/lit8 v4, v4, 0x5

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 127
    :cond_2
    move-object v4, p2

    .line 130
    :goto_2
    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "https://wsrv.nl/?url="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "https://images.weserv.nl/?url="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x1

    aput-object v4, v6, v7

    .line 134
    nop

    :goto_3
    if-ge v8, v5, :cond_7

    aget-object v4, v6, v8

    .line 135
    invoke-static {v4}, Lcom/supertws/dubokutv/DubokuCompat;->applySchemeCompat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 136
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 137
    goto :goto_6

    .line 139
    :cond_3
    if-eqz v3, :cond_4

    iget-object v7, v3, Lokhttp3/i0;->i:Lokhttp3/l0;

    if-eqz v7, :cond_4

    .line 141
    :try_start_1
    iget-object v3, v3, Lokhttp3/i0;->i:Lokhttp3/l0;

    invoke-virtual {v3}, Lokhttp3/l0;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    goto :goto_4

    .line 142
    :catchall_0
    move-exception v3

    .line 144
    :goto_4
    move-object v3, v1

    .line 147
    :cond_4
    :try_start_2
    invoke-virtual {p1}, Lokhttp3/c0;->b()Lokhttp3/b0;

    move-result-object v7

    .line 148
    invoke-virtual {v7, v4}, Lokhttp3/b0;->f(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v7}, Lokhttp3/b0;->b()Lokhttp3/c0;

    move-result-object v7

    invoke-virtual {p0, v7}, Lokhttp3/z;->a(Lokhttp3/c0;)Lokhttp3/internal/connection/i;

    move-result-object v7

    invoke-static {v7}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->execute(Lokhttp3/i;)Lokhttp3/i0;

    move-result-object v7

    .line 150
    invoke-virtual {v7}, Lokhttp3/i0;->i()Z

    move-result v9

    if-nez v9, :cond_6

    iget v9, v7, Lokhttp3/i0;->d:I

    if-ne v9, v0, :cond_5

    goto :goto_5

    .line 154
    :cond_5
    iget v9, v7, Lokhttp3/i0;->d:I

    invoke-static {v4, v9}, Lcom/supertws/dubokutv/DubokuCompat;->logImageHttpCode(Ljava/lang/String;I)V

    .line 155
    nop

    .line 159
    move-object v3, v7

    goto :goto_6

    .line 151
    :cond_6
    :goto_5
    const-string v2, "DubokuImg"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "RETRY_OK "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 152
    return-object v7

    .line 156
    :catch_1
    move-exception v2

    .line 157
    invoke-static {v4, v2}, Lcom/supertws/dubokutv/DubokuCompat;->logImageError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    nop

    .line 134
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 163
    :cond_7
    if-eqz v3, :cond_8

    .line 164
    return-object v3

    .line 166
    :cond_8
    if-nez v2, :cond_9

    .line 169
    invoke-virtual {p0, p1}, Lokhttp3/z;->a(Lokhttp3/c0;)Lokhttp3/internal/connection/i;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->execute(Lokhttp3/i;)Lokhttp3/i0;

    move-result-object p0

    return-object p0

    .line 167
    :cond_9
    goto :goto_8

    :goto_7
    throw v2

    :goto_8
    goto :goto_7
.end method

.method public static fixImageUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 86
    invoke-static {p0}, Lcom/supertws/dubokutv/DubokuCompat;->rewriteChinaImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 87
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 88
    if-eqz p0, :cond_0

    const-string v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 92
    :cond_0
    return-object p0
.end method

.method public static getActiveNetwork(Landroid/net/ConnectivityManager;)Landroid/net/Network;
    .locals 2

    .line 30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 31
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object p0

    return-object p0

    .line 33
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I
    .locals 2

    .line 23
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 24
    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    return p0

    .line 26
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0
.end method

.method public static getDisplayModeSize(Landroid/view/Display;)Landroid/graphics/Point;
    .locals 2

    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 38
    invoke-virtual {p0}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object p0

    .line 39
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object v0

    .line 41
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 42
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 43
    return-object v0
.end method

.method public static getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 17
    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 19
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private static getDubokuCloudflareAddresses(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 215
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/net/InetAddress;

    const/4 v2, 0x4

    new-array v3, v2, [B

    fill-array-data v3, :array_0

    .line 216
    invoke-static {p0, v3}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_1

    .line 217
    invoke-static {p0, v3}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v1, v5

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    .line 218
    invoke-static {p0, v2}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object p0

    const/4 v2, 0x2

    aput-object p0, v1, v2

    .line 220
    sget p0, Lcom/supertws/dubokutv/DubokuCompat;->sDnsCounter:I

    add-int/lit8 v2, p0, 0x1

    sput v2, Lcom/supertws/dubokutv/DubokuCompat;->sDnsCounter:I

    const v2, 0x7fffffff

    and-int/2addr p0, v2

    rem-int/2addr p0, v0

    .line 221
    new-array v2, v0, [Ljava/net/InetAddress;

    .line 222
    nop

    :goto_0
    if-ge v4, v0, :cond_0

    .line 223
    add-int v3, v4, p0

    rem-int/2addr v3, v0

    aget-object v3, v1, v3

    aput-object v3, v2, v4

    .line 222
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 225
    :cond_0
    return-object v2

    nop

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
.end method

.method private static getTmdbAddresses(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 229
    const/4 v0, 0x4

    new-array v1, v0, [Ljava/net/InetAddress;

    new-array v2, v0, [B

    fill-array-data v2, :array_0

    .line 230
    invoke-static {p0, v2}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v2, v0, [B

    fill-array-data v2, :array_1

    .line 231
    invoke-static {p0, v2}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-array v2, v0, [B

    fill-array-data v2, :array_2

    .line 232
    invoke-static {p0, v2}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    new-array v2, v0, [B

    fill-array-data v2, :array_3

    .line 233
    invoke-static {p0, v2}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object p0

    const/4 v2, 0x3

    aput-object p0, v1, v2

    .line 235
    sget p0, Lcom/supertws/dubokutv/DubokuCompat;->sDnsCounter:I

    add-int/lit8 v2, p0, 0x1

    sput v2, Lcom/supertws/dubokutv/DubokuCompat;->sDnsCounter:I

    const v2, 0x7fffffff

    and-int/2addr p0, v2

    rem-int/2addr p0, v0

    .line 236
    new-array v2, v0, [Ljava/net/InetAddress;

    .line 237
    nop

    :goto_0
    if-ge v3, v0, :cond_0

    .line 238
    add-int v4, v3, p0

    rem-int/2addr v4, v0

    aget-object v4, v1, v4

    aput-object v4, v2, v3

    .line 237
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 240
    :cond_0
    return-object v2

    :array_0
    .array-data 1
        -0x71t
        -0xct
        0x32t
        0x53t
    .end array-data

    :array_1
    .array-data 1
        -0x71t
        -0xct
        0x32t
        0x58t
    .end array-data

    :array_2
    .array-data 1
        -0x71t
        -0xct
        0x32t
        -0x2ct
    .end array-data

    :array_3
    .array-data 1
        -0x57t
        -0x6at
        -0x7t
        -0x5ct
    .end array-data
.end method

.method public static isChinaEnvironment()Z
    .locals 3

    .line 174
    :try_start_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 175
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

    .line 176
    :cond_0
    return v1

    .line 178
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 179
    if-eqz v0, :cond_2

    const-string v2, "CN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 180
    return v1

    .line 183
    :cond_2
    goto :goto_0

    .line 182
    :catchall_0
    move-exception v0

    .line 184
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static logImageError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 277
    :try_start_0
    const-string v0, "DubokuImg"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

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

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    goto :goto_0

    .line 278
    :catchall_0
    move-exception p0

    .line 280
    :goto_0
    return-void
.end method

.method public static logImageHttpCode(Ljava/lang/String;I)V
    .locals 3

    .line 284
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

    .line 286
    goto :goto_0

    .line 285
    :catchall_0
    move-exception p0

    .line 287
    :goto_0
    return-void
.end method

.method public static resolveHost(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 188
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    const-string v2, ".dbokutv.com"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "dbokutv.com"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ".duboku.tv"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "duboku.tv"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "wsrv.nl"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ".wsrv.nl"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ".weserv.nl"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ".iyf.tv"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 189
    :goto_0
    if-eqz p0, :cond_3

    const-string v3, "image.tmdb.org"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, ".tmdb.org"

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 190
    :goto_1
    invoke-static {}, Lcom/supertws/dubokutv/DubokuCompat;->isChinaEnvironment()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 191
    if-eqz v2, :cond_4

    .line 192
    invoke-static {p0}, Lcom/supertws/dubokutv/DubokuCompat;->getDubokuCloudflareAddresses(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object p0

    return-object p0

    .line 194
    :cond_4
    if-eqz v0, :cond_5

    .line 195
    invoke-static {p0}, Lcom/supertws/dubokutv/DubokuCompat;->getTmdbAddresses(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object p0

    return-object p0

    .line 199
    :cond_5
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1

    .line 200
    if-eqz v1, :cond_6

    array-length v3, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v3, :cond_6

    .line 201
    return-object v1

    .line 204
    :cond_6
    goto :goto_2

    .line 203
    :catchall_0
    move-exception v1

    .line 205
    :goto_2
    if-eqz v2, :cond_7

    .line 206
    invoke-static {p0}, Lcom/supertws/dubokutv/DubokuCompat;->getDubokuCloudflareAddresses(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object p0

    return-object p0

    .line 208
    :cond_7
    if-eqz v0, :cond_8

    .line 209
    invoke-static {p0}, Lcom/supertws/dubokutv/DubokuCompat;->getTmdbAddresses(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object p0

    return-object p0

    .line 211
    :cond_8
    new-instance v0, Ljava/net/UnknownHostException;

    invoke-direct {v0, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static rewriteChinaImageUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 96
    if-eqz p0, :cond_0

    invoke-static {}, Lcom/supertws/dubokutv/DubokuCompat;->isChinaEnvironment()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "iyf.tv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "wsrv.nl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://wsrv.nl/?url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 99
    :cond_0
    return-object p0
.end method

.method public static writeAudioTrack(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;II)I
    .locals 2

    .line 79
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 80
    const/4 p3, 0x0

    .line 82
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p0

    return p0
.end method
