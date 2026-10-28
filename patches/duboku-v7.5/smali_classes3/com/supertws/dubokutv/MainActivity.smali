.class public final Lcom/supertws/dubokutv/MainActivity;
.super Landroidx/appcompat/app/k;
.source "r8-map-id-8ba8015df6390efac2340e8bc72cbaa0af05ae8dc58e92835996b10ae6d6a13d"

# interfaces
.implements Lib/b;


# static fields
.field public static final synthetic W:I


# instance fields
.field public O:Lcom/google/common/base/a0;

.field public volatile P:Lgb/b;

.field public final Q:Ljava/lang/Object;

.field public R:Z

.field public final S:Landroidx/compose/runtime/b1;

.field public final T:Landroidx/compose/runtime/b1;

.field public final U:Landroidx/compose/runtime/b1;

.field public final V:Landroidx/compose/runtime/b1;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/k;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/supertws/dubokutv/MainActivity;->Q:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/supertws/dubokutv/MainActivity;->R:Z

    .line 13
    .line 14
    new-instance v0, Lcom/supertws/dubokutv/r;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/supertws/dubokutv/r;-><init>(Lcom/supertws/dubokutv/MainActivity;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroidx/activity/n;->r(Le/b;)V

    .line 20
    .line 21
    .line 22
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 23
    .line 24
    invoke-static {v0}, Landroidx/compose/runtime/q;->D(Ljava/lang/Object;)Landroidx/compose/runtime/b1;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iput-object v1, p0, Lcom/supertws/dubokutv/MainActivity;->S:Landroidx/compose/runtime/b1;

    .line 29
    .line 30
    invoke-static {v0}, Landroidx/compose/runtime/q;->D(Ljava/lang/Object;)Landroidx/compose/runtime/b1;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iput-object v1, p0, Lcom/supertws/dubokutv/MainActivity;->T:Landroidx/compose/runtime/b1;

    .line 35
    .line 36
    invoke-static {v0}, Landroidx/compose/runtime/q;->D(Ljava/lang/Object;)Landroidx/compose/runtime/b1;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iput-object v1, p0, Lcom/supertws/dubokutv/MainActivity;->U:Landroidx/compose/runtime/b1;

    .line 41
    .line 42
    invoke-static {v0}, Landroidx/compose/runtime/q;->D(Ljava/lang/Object;)Landroidx/compose/runtime/b1;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/supertws/dubokutv/MainActivity;->V:Landroidx/compose/runtime/b1;

    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/supertws/dubokutv/MainActivity;->w()Lgb/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lgb/b;->c()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final getDefaultViewModelProviderFactory()Landroidx/lifecycle/o1;
    .locals 7

    .line 1
    invoke-super {p0}, Landroidx/activity/n;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/o1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lfb/a;

    .line 6
    .line 7
    invoke-static {v1, p0}, Ll8/t1;->k(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lfb/a;

    .line 12
    .line 13
    check-cast v1, Lcom/supertws/dubokutv/a;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/supertws/dubokutv/a;->a()Ldagger/internal/b;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance v3, Lcom/google/firebase/crashlytics/internal/common/k;

    .line 20
    .line 21
    iget-object v4, v1, Lcom/supertws/dubokutv/a;->a:Lcom/supertws/dubokutv/f;

    .line 22
    .line 23
    iget-object v1, v1, Lcom/supertws/dubokutv/a;->b:Lcom/supertws/dubokutv/c;

    .line 24
    .line 25
    const/4 v5, 0x4

    .line 26
    const/4 v6, 0x0

    .line 27
    invoke-direct {v3, v4, v5, v1, v6}, Lcom/google/firebase/crashlytics/internal/common/k;-><init>(Ljava/lang/Object;ILjava/lang/Object;Z)V

    .line 28
    .line 29
    .line 30
    new-instance v1, Lfb/f;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-direct {v1, v2, v0, v3}, Lfb/f;-><init>(Ldagger/internal/b;Landroidx/lifecycle/o1;Lcom/google/firebase/crashlytics/internal/common/k;)V

    .line 36
    .line 37
    .line 38
    return-object v1
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 12

    const-string v0, "main.onCreate.begin"

invoke-static {v0}, Lcom/supertws/dubokutv/Dbg;->stage(Ljava/lang/String;)V

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-class v0, Lcom/supertws/dubokutv/MainActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Lcom/supertws/dubokutv/MainActivity;->x(Landroid/os/Bundle;)V

    .line 13
    .line 14
    .line 15
    new-instance p1, Landroidx/activity/w0;

    .line 16
    .line 17
    new-instance v0, Lac/a;

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    invoke-direct {v0, v1}, Lac/a;-><init>(I)V

    .line 21
    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v3, 0x2

    .line 25
    invoke-direct {p1, v2, v2, v3, v0}, Landroidx/activity/w0;-><init>(IIILrb/k;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p0, p1}, Landroidx/activity/s;->a(Landroidx/appcompat/app/k;Landroidx/activity/w0;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string v0, "android.software.leanback"

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    const/4 v0, 0x1

    .line 42
    if-nez p1, :cond_2

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const-string v4, "android.hardware.touchscreen"

    .line 49
    .line 50
    invoke-virtual {p1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-nez p1, :cond_1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    move p1, v2

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    :goto_0
    move p1, v0

    .line 60
    :goto_1
    new-instance v4, Lcom/supertws/dubokutv/s;

    .line 61
    .line 62
    invoke-direct {v4, p0, p1}, Lcom/supertws/dubokutv/s;-><init>(Lcom/supertws/dubokutv/MainActivity;Z)V

    .line 63
    .line 64
    .line 65
    new-instance p1, Landroidx/compose/runtime/internal/d;

    .line 66
    .line 67
    const v5, -0x4ac135de

    .line 68
    .line 69
    .line 70
    invoke-direct {p1, v5, v4, v0}, Landroidx/compose/runtime/internal/d;-><init>(ILjava/lang/Object;Z)V

    .line 71
    .line 72
    .line 73
    invoke-static {p0, p1}, Landroidx/activity/compose/h;->a(Landroidx/activity/n;Landroidx/compose/runtime/internal/d;)V

    .line 74
    .line 75
    .line 76
    sget-object p1, Landroidx/multidex/a;->a:Ljava/util/HashSet;

    .line 77
    .line 78
    const-string p1, "Installing application"

    .line 79
    .line 80
    const-string v4, "MultiDex"

    .line 81
    .line 82
    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    sget-boolean p1, Landroidx/multidex/a;->b:Z

    .line 86
    .line 87
    const/4 v5, 0x0

    .line 88
    if-eqz p1, :cond_3

    .line 89
    .line 90
    const-string p1, "VM has multidex support, MultiDex support library is disabled."

    .line 91
    .line 92
    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 97
    .line 98
    .line 99
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 100
    goto :goto_2

    .line 101
    :catch_0
    move-exception p1

    .line 102
    :try_start_1
    const-string v6, "Failure while trying to obtain ApplicationInfo from Context. Must be running in test mode. Skip patching."

    .line 103
    .line 104
    invoke-static {v4, v6, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    .line 106
    .line 107
    move-object p1, v5

    .line 108
    :goto_2
    if-nez p1, :cond_4

    .line 109
    .line 110
    const-string p1, "No ApplicationInfo available, i.e. running on a test Context: MultiDex support library is disabled."

    .line 111
    .line 112
    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    goto :goto_3

    .line 116
    :catch_1
    move-exception p1

    .line 117
    goto/16 :goto_b

    .line 118
    .line 119
    :cond_4
    new-instance v6, Ljava/io/File;

    .line 120
    .line 121
    iget-object v7, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 122
    .line 123
    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    new-instance v7, Ljava/io/File;

    .line 127
    .line 128
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 129
    .line 130
    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-static {p0, v6, v7}, Landroidx/multidex/a;->b(Lcom/supertws/dubokutv/MainActivity;Ljava/io/File;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 134
    .line 135
    .line 136
    const-string p1, "install done"

    .line 137
    .line 138
    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    :goto_3
    const-string v4, "main.remoteConfig.begin"

    invoke-static {v4}, Lcom/supertws/dubokutv/Dbg;->stage(Ljava/lang/String;)V

    invoke-static {}, Lxc/p;->u()Lcom/google/firebase/remoteconfig/f;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    const-string v4, "main.remoteConfig.ok"

    invoke-static {v4}, Lcom/supertws/dubokutv/Dbg;->stage(Ljava/lang/String;)V

    .line 145
    new-instance v4, Landroidx/multidex/d;

    .line 146
    .line 147
    invoke-direct {v4, v0}, Landroidx/multidex/d;-><init>(I)V

    .line 148
    .line 149
    .line 150
    const-wide/16 v6, 0x0

    .line 151
    .line 152
    const-wide/16 v8, 0xe10

    .line 153
    .line 154
    cmp-long v6, v8, v6

    .line 155
    .line 156
    if-ltz v6, :cond_f

    .line 157
    .line 158
    iput-wide v8, v4, Landroidx/multidex/d;->b:J

    .line 159
    .line 160
    new-instance v6, Landroidx/multidex/d;

    .line 161
    .line 162
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 163
    .line 164
    .line 165
    iget-wide v7, v4, Landroidx/multidex/d;->a:J

    .line 166
    .line 167
    iput-wide v7, v6, Landroidx/multidex/d;->a:J

    .line 168
    .line 169
    iget-wide v7, v4, Landroidx/multidex/d;->b:J

    .line 170
    .line 171
    iput-wide v7, v6, Landroidx/multidex/d;->b:J

    .line 172
    .line 173
    iget-object v4, p1, Lcom/google/firebase/remoteconfig/f;->c:Ljava/util/concurrent/Executor;

    .line 174
    .line 175
    new-instance v7, Lcom/google/firebase/remoteconfig/d;

    .line 176
    .line 177
    invoke-direct {v7, v2, p1, v6}, Lcom/google/firebase/remoteconfig/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    invoke-static {v4, v7}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    const-string v4, "main.rcDefaults.begin"

    invoke-static {v4}, Lcom/supertws/dubokutv/Dbg;->stage(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    iget-object v2, p1, Lcom/google/firebase/remoteconfig/f;->a:Landroid/content/Context;

    .line 184
    .line 185
    const-string v4, "FirebaseRemoteConfig"

    .line 186
    .line 187
    new-instance v6, Ljava/util/HashMap;

    .line 188
    .line 189
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 190
    .line 191
    .line 192
    :try_start_2
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    if-nez v2, :cond_5

    .line 197
    .line 198
    const-string v0, "Could not find the resources of the current context while trying to set defaults from an XML."

    .line 199
    .line 200
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    .line 202
    .line 203
    goto/16 :goto_9

    .line 204
    .line 205
    :catch_2
    move-exception v0

    .line 206
    goto/16 :goto_8

    .line 207
    .line 208
    :catch_3
    move-exception v0

    .line 209
    goto/16 :goto_8

    .line 210
    .line 211
    :cond_5
    const v7, 0x7f140004

    .line 212
    .line 213
    .line 214
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 219
    .line 220
    .line 221
    move-result v7

    .line 222
    move-object v8, v5

    .line 223
    move-object v9, v8

    .line 224
    move-object v10, v9

    .line 225
    :goto_4
    if-eq v7, v0, :cond_e

    .line 226
    .line 227
    if-ne v7, v3, :cond_6

    .line 228
    .line 229
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v8

    .line 233
    goto :goto_7

    .line 234
    :cond_6
    if-ne v7, v1, :cond_9

    .line 235
    .line 236
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v7

    .line 240
    const-string v8, "entry"

    .line 241
    .line 242
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v7

    .line 246
    if-eqz v7, :cond_8

    .line 247
    .line 248
    if-eqz v9, :cond_7

    .line 249
    .line 250
    if-eqz v10, :cond_7

    .line 251
    .line 252
    invoke-virtual {v6, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    goto :goto_5

    .line 256
    :cond_7
    const-string v7, "An entry in the defaults XML has an invalid key and/or value tag."

    .line 257
    .line 258
    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    .line 260
    .line 261
    :goto_5
    move-object v9, v5

    .line 262
    move-object v10, v9

    .line 263
    :cond_8
    move-object v8, v5

    .line 264
    goto :goto_7

    .line 265
    :cond_9
    const/4 v11, 0x4

    .line 266
    if-ne v7, v11, :cond_d

    .line 267
    .line 268
    if-eqz v8, :cond_d

    .line 269
    .line 270
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    .line 271
    .line 272
    .line 273
    move-result v7

    .line 274
    const v11, 0x19e5f

    .line 275
    .line 276
    .line 277
    if-eq v7, v11, :cond_b

    .line 278
    .line 279
    const v11, 0x6ac9171

    .line 280
    .line 281
    .line 282
    if-eq v7, v11, :cond_a

    .line 283
    .line 284
    goto :goto_6

    .line 285
    :cond_a
    const-string v7, "value"

    .line 286
    .line 287
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result v7

    .line 291
    if-eqz v7, :cond_c

    .line 292
    .line 293
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v10

    .line 297
    goto :goto_7

    .line 298
    :cond_b
    const-string v7, "key"

    .line 299
    .line 300
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result v7

    .line 304
    if-eqz v7, :cond_c

    .line 305
    .line 306
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v9

    .line 310
    goto :goto_7

    .line 311
    :cond_c
    :goto_6
    const-string v7, "Encountered an unexpected tag while parsing the defaults XML."

    .line 312
    .line 313
    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    .line 315
    .line 316
    :cond_d
    :goto_7
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 317
    .line 318
    .line 319
    move-result v7
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 320
    goto :goto_4

    .line 321
    :goto_8
    const-string v1, "Encountered an error while parsing the defaults XML file."

    .line 322
    .line 323
    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 324
    .line 325
    .line 326
    :cond_e
    :goto_9
    :try_start_3
    invoke-static {}, Lr9/f;->c()Lr9/e;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    new-instance v1, Lorg/json/JSONObject;

    .line 331
    .line 332
    invoke-direct {v1, v6}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 333
    .line 334
    .line 335
    iput-object v1, v0, Lr9/e;->a:Lorg/json/JSONObject;

    .line 336
    .line 337
    invoke-virtual {v0}, Lr9/e;->a()Lr9/f;

    .line 338
    .line 339
    .line 340
    move-result-object v0
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_4

    .line 341
    iget-object v1, p1, Lcom/google/firebase/remoteconfig/f;->f:Lr9/d;

    .line 342
    .line 343
    invoke-virtual {v1, v0}, Lr9/d;->e(Lr9/f;)Lcom/google/android/gms/tasks/Task;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    invoke-static {}, Lcom/google/firebase/concurrent/j;->a()Ljava/util/concurrent/Executor;

    .line 348
    .line 349
    .line 350
    move-result-object v1

    .line 351
    new-instance v2, Landroidx/work/impl/utils/c;

    .line 352
    .line 353
    const/16 v3, 0x17

    .line 354
    .line 355
    invoke-direct {v2, v3}, Landroidx/work/impl/utils/c;-><init>(I)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    .line 359
    .line 360
    .line 361
    goto :goto_a

    .line 362
    :catch_4
    move-exception v0

    .line 363
    const-string v1, "The provided defaults map could not be processed."

    .line 364
    .line 365
    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 366
    .line 367
    .line 368
    invoke-static {v5}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 369
    .line 370
    .line 371
    :goto_a
    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/f;->a()Lcom/google/android/gms/tasks/Task;

    .line 372
    .line 373
    .line 374
    move-result-object p1

    .line 375
    new-instance v0, Landroidx/media3/exoplayer/q;

    .line 376
    .line 377
    const/16 v1, 0xc

    .line 378
    .line 379
    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/q;-><init>(Ljava/lang/Object;I)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    const-string v0, "main.onCreate.END"

    invoke-static {v0}, Lcom/supertws/dubokutv/Dbg;->stage(Ljava/lang/String;)V

    # gT 返回值
    sget v0, Lta/e;->e:I

    const-string v1, "main.gT"

    invoke-static {v1, v0}, Lcom/supertws/dubokutv/Dbg;->stage(Ljava/lang/String;I)V

    # 屏幕尺寸
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    mul-int/lit16 v1, v1, 0x2710

    add-int/2addr v1, v0

    const-string v0, "main.screen"

    invoke-static {v0, v1}, Lcom/supertws/dubokutv/Dbg;->stage(Ljava/lang/String;I)V

    .line 383
    .line 384
    .line 385
    return-void

    .line 386
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 387
    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    .line 389
    .line 390
    const-string v1, "Minimum interval between fetches has to be a non-negative number. "

    .line 391
    .line 392
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    const-string v1, " is an invalid argument"

    .line 399
    .line 400
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    throw p1

    .line 411
    :goto_b
    const-string v0, "MultiDex installation failure"

    .line 412
    .line 413
    invoke-static {v4, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 414
    .line 415
    .line 416
    new-instance v0, Ljava/lang/RuntimeException;

    .line 417
    .line 418
    new-instance v1, Ljava/lang/StringBuilder;

    .line 419
    .line 420
    const-string v2, "MultiDex installation failed ("

    .line 421
    .line 422
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 423
    .line 424
    .line 425
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object p1

    .line 429
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    const-string p1, ")."

    .line 433
    .line 434
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object p1

    .line 441
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    throw v0
.end method

.method public final onDestroy()V
    .locals 1

    const-string v0, "main.onDestroy"

    invoke-static {v0}, Lcom/supertws/dubokutv/Dbg;->stage(Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/supertws/dubokutv/presentation/utils/c;->b()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/supertws/dubokutv/MainActivity;->y()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final w()Lgb/b;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/supertws/dubokutv/MainActivity;->P:Lgb/b;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/supertws/dubokutv/MainActivity;->Q:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/supertws/dubokutv/MainActivity;->P:Lgb/b;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lgb/b;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-direct {v1, p0, v2}, Lgb/b;-><init>(Lcom/supertws/dubokutv/MainActivity;I)V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/supertws/dubokutv/MainActivity;->P:Lgb/b;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    monitor-exit v0

    .line 24
    goto :goto_2

    .line 25
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw v1

    .line 27
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/supertws/dubokutv/MainActivity;->P:Lgb/b;

    .line 28
    .line 29
    return-object v0
.end method

.method public final x(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/h0;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    instance-of p1, p1, Lib/b;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/supertws/dubokutv/MainActivity;->w()Lgb/b;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object p1, p1, Lgb/b;->d:Lib/b;

    .line 17
    .line 18
    check-cast p1, Lgb/b;

    .line 19
    .line 20
    iget-object v0, p1, Lgb/b;->b:Lcom/supertws/dubokutv/MainActivity;

    .line 21
    .line 22
    iget-object p1, p1, Lgb/b;->d:Lib/b;

    .line 23
    .line 24
    check-cast p1, Lcom/supertws/dubokutv/MainActivity;

    .line 25
    .line 26
    invoke-static {v0, p1}, Lgb/b;->d(Lcom/supertws/dubokutv/MainActivity;Lcom/supertws/dubokutv/MainActivity;)Landroidx/lifecycle/p1;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-class v0, Lgb/d;

    .line 31
    .line 32
    invoke-static {v0}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/b;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p1, v0}, Landroidx/lifecycle/p1;->a(Lkotlin/jvm/internal/b;)Landroidx/lifecycle/m1;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Lgb/d;

    .line 41
    .line 42
    iget-object p1, p1, Lgb/d;->c:Lcom/google/common/base/a0;

    .line 43
    .line 44
    iput-object p1, p0, Lcom/supertws/dubokutv/MainActivity;->O:Lcom/google/common/base/a0;

    .line 45
    .line 46
    iget-object v0, p1, Lcom/google/common/base/a0;->a:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v0, Ly2/d;

    .line 49
    .line 50
    if-nez v0, :cond_0

    .line 51
    .line 52
    invoke-virtual {p0}, Landroidx/activity/n;->getDefaultViewModelCreationExtras()Ly2/c;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Ly2/d;

    .line 57
    .line 58
    iput-object v0, p1, Lcom/google/common/base/a0;->a:Ljava/lang/Object;

    .line 59
    .line 60
    :cond_0
    return-void
.end method

.method public final y()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/k;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/supertws/dubokutv/MainActivity;->O:Lcom/google/common/base/a0;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput-object v1, v0, Lcom/google/common/base/a0;->a:Ljava/lang/Object;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

