.class public final Lcom/supertws/dubokutv/presentation/screens/videoPlayer/p1;
.super Ljava/lang/Object;
.source "r8-map-id-8ba8015df6390efac2340e8bc72cbaa0af05ae8dc58e92835996b10ae6d6a13d"

# interfaces
.implements Lkotlinx/coroutines/flow/i;


# instance fields
.field public final synthetic a:Lkotlinx/coroutines/flow/i;

.field public final synthetic b:Lcom/supertws/dubokutv/presentation/screens/videoPlayer/u1;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/i;Lcom/supertws/dubokutv/presentation/screens/videoPlayer/u1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/p1;->a:Lkotlinx/coroutines/flow/i;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/p1;->b:Lcom/supertws/dubokutv/presentation/screens/videoPlayer/u1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 9

    .line 1
    instance-of v0, p2, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/VideoPlayerScreenViewModel$special$$inlined$map$1$2$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/VideoPlayerScreenViewModel$special$$inlined$map$1$2$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/VideoPlayerScreenViewModel$special$$inlined$map$1$2$1;->label:I

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
    iput v1, v0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/VideoPlayerScreenViewModel$special$$inlined$map$1$2$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/VideoPlayerScreenViewModel$special$$inlined$map$1$2$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/VideoPlayerScreenViewModel$special$$inlined$map$1$2$1;-><init>(Lcom/supertws/dubokutv/presentation/screens/videoPlayer/p1;Lkotlin/coroutines/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/VideoPlayerScreenViewModel$special$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/VideoPlayerScreenViewModel$special$$inlined$map$1$2$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x2

    .line 33
    const/4 v5, 0x1

    .line 34
    if-eqz v2, :cond_3

    .line 35
    .line 36
    if-eq v2, v5, :cond_2

    .line 37
    .line 38
    if-ne v2, v4, :cond_1

    .line 39
    .line 40
    invoke-static {p2}, Lkotlin/l;->b(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto/16 :goto_6

    .line 44
    .line 45
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :cond_2
    iget-object p1, v0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/VideoPlayerScreenViewModel$special$$inlined$map$1$2$1;->L$0:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast p1, Lkotlinx/coroutines/flow/i;

    .line 56
    .line 57
    invoke-static {p2}, Lkotlin/l;->b(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    goto/16 :goto_3

    .line 61
    .line 62
    :cond_3
    invoke-static {p2}, Lkotlin/l;->b(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    check-cast p1, Ljava/lang/String;

    .line 66
    .line 67
    iget-object p2, p0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/p1;->a:Lkotlinx/coroutines/flow/i;

    .line 68
    .line 69
    if-nez p1, :cond_4

    .line 70
    .line 71
    new-instance p1, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/m1;

    .line 72
    .line 73
    const-string v2, "Movie Id is null"

    .line 74
    .line 75
    invoke-direct {p1, v2}, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/m1;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    goto/16 :goto_4

    .line 79
    .line 80
    :cond_4
    iget-object v2, p0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/p1;->b:Lcom/supertws/dubokutv/presentation/screens/videoPlayer/u1;

    .line 81
    .line 82
    iget-object v2, v2, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/u1;->b:Lcom/supertws/dubokutv/data/repositories/a;

    .line 83
    .line 84
    iput-object p2, v0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/VideoPlayerScreenViewModel$special$$inlined$map$1$2$1;->L$0:Ljava/lang/Object;

    .line 85
    .line 86
    iput v5, v0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/VideoPlayerScreenViewModel$special$$inlined$map$1$2$1;->label:I

    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    const/16 v2, 0x8

    .line 92
    .line 93
    invoke-static {p1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    const-string v2, "decode(...)"

    .line 98
    .line 99
    invoke-static {p1, v2}, Lkotlin/jvm/internal/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    new-instance v2, Ljava/lang/String;

    .line 103
    .line 104
    sget-object v6, Lkotlin/text/c;->a:Ljava/nio/charset/Charset;

    .line 105
    .line 106
    invoke-direct {v2, p1, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 107
    .line 108
    .line 109
    :try_start_0
    sget-object p1, Lta/e;->a:Ljava/lang/String;

    .line 110
    .line 111
    new-instance v6, Lcom/supertws/dubokutv/data/util/TTHp;

    .line 112
    .line 113
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-static {v2}, Lcom/supertws/dubokutv/data/util/TTHp;->gSw(Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    new-instance v7, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string p1, "?"

    .line 132
    .line 133
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-static {p1}, Lwc/c;->a(Ljava/lang/String;)Lxc/g;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    iget-object v2, p1, Lxc/g;->a:Lxc/e;

    .line 148
    .line 149
    iput-boolean v5, v2, Lxc/e;->k:Z

    .line 150
    .line 151
    sget-object v2, Lta/e;->b:Lra/a;

    .line 152
    .line 153
    iget-object v2, v2, Lra/a;->a:Ljava/lang/String;

    .line 154
    .line 155
    invoke-virtual {p1, v2}, Lxc/g;->h(Ljava/lang/String;)Lxc/g;

    .line 156
    .line 157
    .line 158
    sget-object v2, Lta/e;->b:Lra/a;

    .line 159
    .line 160
    iget-object v2, v2, Lra/a;->b:Ljava/lang/String;

    .line 161
    .line 162
    invoke-virtual {p1, v2}, Lxc/g;->d(Ljava/lang/String;)Lxc/g;

    .line 163
    .line 164
    .line 165
    sget-object v2, Lta/e;->b:Lra/a;

    .line 166
    .line 167
    iget-object v2, v2, Lra/a;->c:Ljava/util/Map;

    .line 168
    .line 169
    invoke-virtual {p1, v2}, Lxc/g;->c(Ljava/util/Map;)Lxc/g;

    .line 170
    .line 171
    .line 172
    sget v2, Lta/e;->e:I

    .line 173
    .line 174
    invoke-virtual {p1, v2}, Lxc/g;->f(I)Lxc/g;

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1}, Lxc/g;->b()Lorg/jsoup/nodes/Document;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-virtual {p1}, Lorg/jsoup/nodes/Document;->connection()Lwc/b;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    check-cast v2, Lxc/g;

    .line 186
    .line 187
    invoke-virtual {v2}, Lxc/g;->e()Lwc/a;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    check-cast v2, Lxc/f;

    .line 192
    .line 193
    iget-object v2, v2, Lxc/f;->k:Ljava/lang/String;

    .line 194
    .line 195
    if-eqz v2, :cond_5

    .line 196
    .line 197
    const-string v6, "json"

    .line 198
    .line 199
    const/4 v7, 0x0

    .line 200
    invoke-static {v2, v6, v7}, Lkotlin/text/r;->a0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    if-ne v2, v5, :cond_5

    .line 205
    .line 206
    sget-object v2, Lsa/b;->a:Lfc/r;

    .line 207
    .line 208
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    const-string v5, "text(...)"

    .line 213
    .line 214
    invoke-static {p1, v5}, Lkotlin/jvm/internal/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 218
    .line 219
    .line 220
    sget-object v5, Lqa/f0;->Companion:Lqa/e0;

    .line 221
    .line 222
    invoke-virtual {v5}, Lqa/e0;->serializer()Lac/c;

    .line 223
    .line 224
    .line 225
    move-result-object v5

    .line 226
    invoke-virtual {v2, v5, p1}, Lfc/b;->a(Lac/c;Ljava/lang/String;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    check-cast p1, Lqa/f0;

    .line 231
    .line 232
    goto :goto_2

    .line 233
    :catch_0
    move-exception p1

    .line 234
    goto :goto_1

    .line 235
    :cond_5
    invoke-static {p1}, Lsa/e;->a(Lorg/jsoup/nodes/Document;)Lqa/f0;

    .line 236
    .line 237
    .line 238
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    goto :goto_2

    .line 240
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 241
    .line 242
    .line 243
    move-object p1, v3

    .line 244
    :goto_2
    if-ne p1, v1, :cond_6

    .line 245
    .line 246
    goto :goto_5

    .line 247
    :cond_6
    move-object v8, p2

    .line 248
    move-object p2, p1

    .line 249
    move-object p1, v8

    .line 250
    :goto_3
    check-cast p2, Lqa/f0;

    .line 251
    .line 252
    if-nez p2, :cond_7

    .line 253
    .line 254
    new-instance p2, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/m1;

    .line 255
    .line 256
    const-string v2, "VideoAddress is null"

    .line 257
    .line 258
    invoke-direct {p2, v2}, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/m1;-><init>(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    move-object v8, p2

    .line 262
    move-object p2, p1

    .line 263
    move-object p1, v8

    .line 264
    goto :goto_4

    .line 265
    :cond_7
    new-instance v2, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/l1;

    .line 266
    .line 267
    invoke-direct {v2, p2}, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/l1;-><init>(Lqa/f0;)V

    .line 268
    .line 269
    .line 270
    move-object p2, p1

    .line 271
    move-object p1, v2

    .line 272
    :goto_4
    iput-object v3, v0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/VideoPlayerScreenViewModel$special$$inlined$map$1$2$1;->L$0:Ljava/lang/Object;

    .line 273
    .line 274
    iput v4, v0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/VideoPlayerScreenViewModel$special$$inlined$map$1$2$1;->label:I

    .line 275
    .line 276
    invoke-interface {p2, p1, v0}, Lkotlinx/coroutines/flow/i;->emit(Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    if-ne p1, v1, :cond_8

    .line 281
    .line 282
    :goto_5
    return-object v1

    .line 283
    :cond_8
    :goto_6
    sget-object p1, Lkotlin/w;->a:Lkotlin/w;

    .line 284
    .line 285
    return-object p1
.end method
