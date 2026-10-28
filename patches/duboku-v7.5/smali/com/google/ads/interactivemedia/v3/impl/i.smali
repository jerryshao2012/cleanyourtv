.class public final synthetic Lcom/google/ads/interactivemedia/v3/impl/i;
.super Ljava/lang/Object;
.source "r8-map-id-8ba8015df6390efac2340e8bc72cbaa0af05ae8dc58e92835996b10ae6d6a13d"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/ads/interactivemedia/v3/impl/k;

.field public final synthetic b:Lcom/google/ads/interactivemedia/v3/internal/lf;

.field public final synthetic c:La7/a;

.field public final synthetic d:Lcom/google/ads/interactivemedia/v3/impl/a;

.field public final synthetic f:Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/k;Lcom/google/ads/interactivemedia/v3/internal/lf;La7/a;Lcom/google/ads/interactivemedia/v3/impl/a;Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/i;->a:Lcom/google/ads/interactivemedia/v3/impl/k;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/i;->b:Lcom/google/ads/interactivemedia/v3/internal/lf;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/i;->c:La7/a;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/impl/i;->d:Lcom/google/ads/interactivemedia/v3/impl/a;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/impl/i;->f:Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/google/ads/interactivemedia/v3/impl/i;->g:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 30

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lcom/google/ads/interactivemedia/v3/impl/i;->b:Lcom/google/ads/interactivemedia/v3/internal/lf;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/impl/i;->a:Lcom/google/ads/interactivemedia/v3/impl/k;

    .line 6
    .line 7
    iget-object v3, v2, Lcom/google/ads/interactivemedia/v3/impl/k;->d:Lcom/google/ads/interactivemedia/v3/internal/s7;

    .line 8
    .line 9
    iget-object v5, v2, Lcom/google/ads/interactivemedia/v3/impl/k;->a:Landroid/content/Context;

    .line 10
    .line 11
    :try_start_0
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/fd;->u(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/google/ads/interactivemedia/v3/impl/p;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2

    .line 16
    .line 17
    iget-object v4, v2, Lcom/google/ads/interactivemedia/v3/impl/k;->p:Lcom/google/ads/interactivemedia/v3/internal/m7;

    .line 18
    .line 19
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/m7;->b()Ljava/util/HashMap;

    .line 23
    .line 24
    .line 25
    move-result-object v8

    .line 26
    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/impl/p;->a:Lcom/google/ads/interactivemedia/v3/internal/zzpq;

    .line 27
    .line 28
    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    const-string v9, "android"

    .line 35
    .line 36
    const-string v10, ":3.39.0:"

    .line 37
    .line 38
    invoke-static {v9, v6, v10, v7}, Lb0/c;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    iget-object v9, v0, Lcom/google/ads/interactivemedia/v3/impl/p;->c:Lcom/google/ads/interactivemedia/v3/internal/zzqz;

    .line 43
    .line 44
    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/impl/p;->d:Lcom/google/ads/interactivemedia/v3/internal/zzpq;

    .line 45
    .line 46
    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/internal/zzpq;->zzd()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    move-object v10, v6

    .line 51
    check-cast v10, Ljava/util/Map;

    .line 52
    .line 53
    const-string v6, "android.permission.ACCESS_NETWORK_STATE"

    .line 54
    .line 55
    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    if-eqz v6, :cond_0

    .line 60
    .line 61
    const-string v6, "Host application doesn\'t have ACCESS_NETWORK_STATE permission"

    .line 62
    .line 63
    invoke-static {v6}, Lcom/google/ads/interactivemedia/v3/internal/k2;->A(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :goto_0
    const/4 v6, 0x0

    .line 67
    goto :goto_2

    .line 68
    :cond_0
    const-string v6, "connectivity"

    .line 69
    .line 70
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    check-cast v6, Landroid/net/ConnectivityManager;

    .line 75
    .line 76
    if-nez v6, :cond_1

    .line 77
    .line 78
    :goto_1
    goto :goto_0

    .line 79
    :cond_1
    invoke-static {v6}, Lcom/supertws/dubokutv/DubokuCompat;->getActiveNetwork(Landroid/net/ConnectivityManager;)Landroid/net/Network;

    .line 80
    .line 81
    .line 82
    move-result-object v12

    .line 83
    invoke-virtual {v6, v12}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    if-nez v6, :cond_2

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_2
    invoke-virtual {v6}, Landroid/net/NetworkCapabilities;->getLinkDownstreamBandwidthKbps()I

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    :goto_2
    iget-object v12, v2, Lcom/google/ads/interactivemedia/v3/impl/k;->h:Lcom/google/ads/interactivemedia/v3/impl/e0;

    .line 99
    .line 100
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    const/4 v12, 0x0

    .line 104
    if-nez v6, :cond_3

    .line 105
    .line 106
    const/4 v6, 0x0

    .line 107
    goto :goto_3

    .line 108
    :cond_3
    invoke-static {v6, v12}, Lcom/google/ads/interactivemedia/v3/impl/data/VideoEnvironmentData;->create(Ljava/lang/Integer;Z)Lcom/google/ads/interactivemedia/v3/impl/data/VideoEnvironmentData;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    :goto_3
    iget-object v13, v2, Lcom/google/ads/interactivemedia/v3/impl/k;->h:Lcom/google/ads/interactivemedia/v3/impl/e0;

    .line 113
    .line 114
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 115
    .line 116
    .line 117
    move-result-object v14

    .line 118
    new-instance v15, Landroid/content/Intent;

    .line 119
    .line 120
    const-string v11, "android.intent.action.VIEW"

    .line 121
    .line 122
    const-string v17, "market://details?id=com.google.ads.interactivemedia.v3"

    .line 123
    .line 124
    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 125
    .line 126
    .line 127
    move-result-object v12

    .line 128
    invoke-direct {v15, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 129
    .line 130
    .line 131
    const/high16 v11, 0x10000

    .line 132
    .line 133
    invoke-virtual {v14, v15, v11}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 134
    .line 135
    .line 136
    move-result-object v11

    .line 137
    if-nez v11, :cond_5

    .line 138
    .line 139
    :catch_0
    :cond_4
    const/4 v15, 0x0

    .line 140
    goto :goto_5

    .line 141
    :cond_5
    iget-object v11, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 142
    .line 143
    if-eqz v11, :cond_4

    .line 144
    .line 145
    :try_start_1
    iget-object v12, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 146
    .line 147
    const/4 v15, 0x0

    .line 148
    :try_start_2
    invoke-virtual {v14, v12, v15}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 149
    .line 150
    .line 151
    move-result-object v12
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 152
    if-eqz v12, :cond_6

    .line 153
    .line 154
    iget v12, v12, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 155
    .line 156
    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 157
    .line 158
    invoke-static {v12, v11}, Lcom/google/ads/interactivemedia/v3/impl/data/MarketAppInfo;->create(ILjava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/MarketAppInfo;

    .line 159
    .line 160
    .line 161
    move-result-object v11

    .line 162
    move-object v14, v11

    .line 163
    :goto_4
    const/4 v11, 0x0

    .line 164
    goto :goto_6

    .line 165
    :catch_1
    :cond_6
    :goto_5
    const/4 v14, 0x0

    .line 166
    goto :goto_4

    .line 167
    :goto_6
    invoke-static {v5, v11}, Lcom/google/ads/interactivemedia/v3/internal/e7;->a(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;)Z

    .line 168
    .line 169
    .line 170
    move-result v11

    .line 171
    invoke-static {v5}, Lcom/google/ads/interactivemedia/v3/internal/e7;->b(Landroid/content/Context;)Z

    .line 172
    .line 173
    .line 174
    move-result v16

    .line 175
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/impl/p;->b:Lcom/google/ads/interactivemedia/v3/internal/zzpq;

    .line 176
    .line 177
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/zzpq;->zzd()Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v12

    .line 181
    move-object/from16 v18, v12

    .line 182
    .line 183
    check-cast v18, Lcom/google/ads/interactivemedia/v3/impl/data/IdentifierInfo;

    .line 184
    .line 185
    iget-object v12, v1, Lcom/google/ads/interactivemedia/v3/impl/i;->f:Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData;

    .line 186
    .line 187
    iget-object v15, v12, Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData;->omidInitializer:Lcom/google/ads/interactivemedia/v3/internal/a8;

    .line 188
    .line 189
    iget-object v15, v15, Lcom/google/ads/interactivemedia/v3/internal/a8;->c:Landroidx/compose/runtime/internal/b;

    .line 190
    .line 191
    const/16 v22, 0x1

    .line 192
    .line 193
    if-eqz v15, :cond_7

    .line 194
    .line 195
    move/from16 v20, v22

    .line 196
    .line 197
    goto :goto_7

    .line 198
    :cond_7
    const/16 v20, 0x0

    .line 199
    .line 200
    :goto_7
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 201
    .line 202
    .line 203
    move-result-object v15

    .line 204
    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 205
    .line 206
    .line 207
    move-result-object v15

    .line 208
    iget v15, v15, Landroid/util/DisplayMetrics;->density:F

    .line 209
    .line 210
    move/from16 v21, v15

    .line 211
    .line 212
    move v15, v11

    .line 213
    const-string v11, "android:0"

    .line 214
    .line 215
    move-object/from16 v19, v12

    .line 216
    .line 217
    move-object v12, v6

    .line 218
    iget-object v6, v1, Lcom/google/ads/interactivemedia/v3/impl/i;->d:Lcom/google/ads/interactivemedia/v3/impl/a;

    .line 219
    .line 220
    move-object/from16 v23, v0

    .line 221
    .line 222
    iget-object v0, v1, Lcom/google/ads/interactivemedia/v3/impl/i;->c:La7/a;

    .line 223
    .line 224
    move-object/from16 v17, v19

    .line 225
    .line 226
    move-object/from16 v19, v0

    .line 227
    .line 228
    move-object/from16 v0, v17

    .line 229
    .line 230
    move-object/from16 v17, v23

    .line 231
    .line 232
    invoke-static/range {v6 .. v21}, Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest;->create(La7/f;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/data/VideoEnvironmentData;Lcom/google/ads/interactivemedia/v3/impl/e0;Lcom/google/ads/interactivemedia/v3/impl/data/MarketAppInfo;ZZLcom/google/ads/interactivemedia/v3/internal/zzpq;Lcom/google/ads/interactivemedia/v3/impl/data/IdentifierInfo;La7/a;ZF)Lcom/google/ads/interactivemedia/v3/impl/data/GsonAdsRequest;

    .line 233
    .line 234
    .line 235
    move-result-object v28

    .line 236
    move-object v10, v6

    .line 237
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/zzpq;->zza()Z

    .line 238
    .line 239
    .line 240
    move-result v6

    .line 241
    if-eqz v6, :cond_8

    .line 242
    .line 243
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/zzpq;->zzb()Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v4

    .line 247
    check-cast v4, Lcom/google/ads/interactivemedia/v3/impl/data/IdentifierInfo;

    .line 248
    .line 249
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/impl/data/IdentifierInfo;->isLimitedAdTracking()Z

    .line 250
    .line 251
    .line 252
    move-result v4

    .line 253
    if-eqz v4, :cond_8

    .line 254
    .line 255
    move/from16 v7, v22

    .line 256
    .line 257
    goto :goto_8

    .line 258
    :cond_8
    const/4 v7, 0x0

    .line 259
    :goto_8
    new-instance v4, Lcom/google/ads/interactivemedia/v3/impl/t0;

    .line 260
    .line 261
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData;->initData:Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData$JavaScriptNativeBridgeInitData;

    .line 262
    .line 263
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData$JavaScriptNativeBridgeInitData;->enableGks()Ljava/lang/Boolean;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzpq;->zzh(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzpq;

    .line 268
    .line 269
    .line 270
    move-result-object v6

    .line 271
    iget-object v8, v2, Lcom/google/ads/interactivemedia/v3/impl/k;->c:Lcom/google/ads/interactivemedia/v3/impl/f0;

    .line 272
    .line 273
    iget-object v9, v2, Lcom/google/ads/interactivemedia/v3/impl/k;->n:Lcom/google/ads/interactivemedia/v3/internal/zf;

    .line 274
    .line 275
    invoke-direct/range {v4 .. v9}, Lcom/google/ads/interactivemedia/v3/impl/t0;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/zzpq;ZLcom/google/ads/interactivemedia/v3/impl/h0;Ljava/util/concurrent/ExecutorService;)V

    .line 276
    .line 277
    .line 278
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;->nativeXhr:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    .line 279
    .line 280
    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/impl/i;->g:Ljava/lang/String;

    .line 281
    .line 282
    invoke-virtual {v8, v2, v0, v4}, Lcom/google/ads/interactivemedia/v3/impl/f0;->c(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;Lcom/google/ads/interactivemedia/v3/impl/g0;)V

    .line 283
    .line 284
    .line 285
    new-instance v24, Lcom/google/ads/interactivemedia/v3/impl/b;

    .line 286
    .line 287
    sget-object v25, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;->adsLoader:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    .line 288
    .line 289
    sget-object v26, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;->requestAds:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    .line 290
    .line 291
    const/16 v29, 0x0

    .line 292
    .line 293
    move-object/from16 v27, v2

    .line 294
    .line 295
    invoke-direct/range {v24 .. v29}, Lcom/google/ads/interactivemedia/v3/impl/b;-><init>(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    move-object/from16 v0, v24

    .line 299
    .line 300
    invoke-virtual {v8, v0}, Lcom/google/ads/interactivemedia/v3/impl/f0;->d(Lcom/google/ads/interactivemedia/v3/impl/b;)V

    .line 301
    .line 302
    .line 303
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/m3;->s()Lcom/google/ads/interactivemedia/v3/internal/l3;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 308
    .line 309
    .line 310
    move-result-wide v4

    .line 311
    invoke-virtual {v0, v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/l3;->h(J)V

    .line 312
    .line 313
    .line 314
    iget-object v4, v10, Lcom/google/ads/interactivemedia/v3/impl/a;->i:Lcom/google/ads/interactivemedia/v3/internal/zzpq;

    .line 315
    .line 316
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/zzpq;->zza()Z

    .line 317
    .line 318
    .line 319
    move-result v4

    .line 320
    if-eqz v4, :cond_9

    .line 321
    .line 322
    iget-object v4, v10, Lcom/google/ads/interactivemedia/v3/impl/a;->i:Lcom/google/ads/interactivemedia/v3/internal/zzpq;

    .line 323
    .line 324
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/zzpq;->zzb()Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v4

    .line 328
    check-cast v4, Ljava/lang/Long;

    .line 329
    .line 330
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 331
    .line 332
    .line 333
    move-result-wide v4

    .line 334
    invoke-virtual {v0, v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/l3;->g(J)V

    .line 335
    .line 336
    .line 337
    :cond_9
    invoke-virtual {v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/s7;->b(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/n3;

    .line 338
    .line 339
    .line 340
    move-result-object v2

    .line 341
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/g1;->b()V

    .line 342
    .line 343
    .line 344
    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/internal/g1;->b:Lcom/google/ads/interactivemedia/v3/internal/j1;

    .line 345
    .line 346
    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/o3;

    .line 347
    .line 348
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/g1;->d()Lcom/google/ads/interactivemedia/v3/internal/j1;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/m3;

    .line 353
    .line 354
    invoke-virtual {v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/o3;->E(Lcom/google/ads/interactivemedia/v3/internal/m3;)V

    .line 355
    .line 356
    .line 357
    goto :goto_9

    .line 358
    :catch_2
    move-exception v0

    .line 359
    const-string v4, "The SDK failed to gather the necessary information for the request"

    .line 360
    .line 361
    invoke-static {v4, v0}, Lcom/google/ads/interactivemedia/v3/internal/k2;->I(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 362
    .line 363
    .line 364
    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/impl/k;->f:La9/b;

    .line 365
    .line 366
    new-instance v4, Lcom/google/ads/interactivemedia/v3/impl/b1;

    .line 367
    .line 368
    new-instance v5, Lcom/google/ads/interactivemedia/v3/api/AdError;

    .line 369
    .line 370
    sget-object v6, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    .line 371
    .line 372
    sget-object v7, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INTERNAL_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 373
    .line 374
    const-string v8, "The SDK failed to gather the necessary information for the request."

    .line 375
    .line 376
    invoke-direct {v5, v6, v7, v8}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    new-instance v6, Ljava/lang/Object;

    .line 380
    .line 381
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 382
    .line 383
    .line 384
    invoke-direct {v4, v5, v6}, Lcom/google/ads/interactivemedia/v3/impl/b1;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;Ljava/lang/Object;)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v2, v4}, La9/b;->E(La7/c;)V

    .line 388
    .line 389
    .line 390
    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;->ADS_LOADER:Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;

    .line 391
    .line 392
    sget-object v4, Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Method;->COLLECT_SIGNALS:Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Method;

    .line 393
    .line 394
    invoke-virtual {v3, v2, v4, v0}, Lcom/google/ads/interactivemedia/v3/internal/s7;->d(Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Component;Lcom/google/ads/interactivemedia/v3/impl/data/InstrumentationData$Method;Ljava/lang/Throwable;)V

    .line 395
    .line 396
    .line 397
    :goto_9
    return-void
.end method
