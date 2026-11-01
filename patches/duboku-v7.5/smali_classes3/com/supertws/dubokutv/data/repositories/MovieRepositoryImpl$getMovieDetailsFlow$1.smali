.class final Lcom/supertws/dubokutv/data/repositories/MovieRepositoryImpl$getMovieDetailsFlow$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-8ba8015df6390efac2340e8bc72cbaa0af05ae8dc58e92835996b10ae6d6a13d"

# interfaces
.implements Lrb/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lrb/n;"
    }
.end annotation

.annotation runtime Llb/c;
    c = "com.supertws.dubokutv.data.repositories.MovieRepositoryImpl$getMovieDetailsFlow$1"
    f = "MovieRepositoryImpl.kt"
    l = {
        0x44
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $movieId:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/supertws/dubokutv/data/repositories/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/supertws/dubokutv/data/repositories/a;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/supertws/dubokutv/data/repositories/a;",
            "Lkotlin/coroutines/c;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/supertws/dubokutv/data/repositories/MovieRepositoryImpl$getMovieDetailsFlow$1;->$movieId:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/supertws/dubokutv/data/repositories/MovieRepositoryImpl$getMovieDetailsFlow$1;->this$0:Lcom/supertws/dubokutv/data/repositories/a;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/c;",
            ")",
            "Lkotlin/coroutines/c;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/supertws/dubokutv/data/repositories/MovieRepositoryImpl$getMovieDetailsFlow$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/supertws/dubokutv/data/repositories/MovieRepositoryImpl$getMovieDetailsFlow$1;->$movieId:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/supertws/dubokutv/data/repositories/MovieRepositoryImpl$getMovieDetailsFlow$1;->this$0:Lcom/supertws/dubokutv/data/repositories/a;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p2}, Lcom/supertws/dubokutv/data/repositories/MovieRepositoryImpl$getMovieDetailsFlow$1;-><init>(Ljava/lang/String;Lcom/supertws/dubokutv/data/repositories/a;Lkotlin/coroutines/c;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Lcom/supertws/dubokutv/data/repositories/MovieRepositoryImpl$getMovieDetailsFlow$1;->L$0:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/i;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcom/supertws/dubokutv/data/repositories/MovieRepositoryImpl$getMovieDetailsFlow$1;->invoke(Lkotlinx/coroutines/flow/i;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/flow/i;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/i;",
            "Lkotlin/coroutines/c;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/supertws/dubokutv/data/repositories/MovieRepositoryImpl$getMovieDetailsFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcom/supertws/dubokutv/data/repositories/MovieRepositoryImpl$getMovieDetailsFlow$1;

    sget-object p2, Lkotlin/w;->a:Lkotlin/w;

    invoke-virtual {p1, p2}, Lcom/supertws/dubokutv/data/repositories/MovieRepositoryImpl$getMovieDetailsFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Lcom/supertws/dubokutv/data/repositories/MovieRepositoryImpl$getMovieDetailsFlow$1;->label:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    invoke-static {p1}, Lkotlin/l;->b(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    goto/16 :goto_3

    .line 14
    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 16
    .line 17
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 18
    .line 19
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p1

    .line 23
    :cond_1
    invoke-static {p1}, Lkotlin/l;->b(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/supertws/dubokutv/data/repositories/MovieRepositoryImpl$getMovieDetailsFlow$1;->L$0:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p1, Lkotlinx/coroutines/flow/i;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/supertws/dubokutv/data/repositories/MovieRepositoryImpl$getMovieDetailsFlow$1;->$movieId:Ljava/lang/String;

    .line 31
    .line 32
    const/16 v3, 0x8

    .line 33
    .line 34
    invoke-static {v1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v3, "decode(...)"

    .line 39
    .line 40
    invoke-static {v1, v3}, Lkotlin/jvm/internal/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    new-instance v3, Ljava/lang/String;

    .line 44
    .line 45
    sget-object v4, Lkotlin/text/c;->a:Ljava/nio/charset/Charset;

    .line 46
    .line 47
    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lcom/supertws/dubokutv/data/repositories/MovieRepositoryImpl$getMovieDetailsFlow$1;->this$0:Lcom/supertws/dubokutv/data/repositories/a;

    .line 51
    .line 52
    iget-object v1, v1, Lcom/supertws/dubokutv/data/repositories/a;->a:Lsa/a;

    .line 53
    .line 54
    :try_start_0
    sget-object v1, Lta/e;->a:Ljava/lang/String;

    .line 55
    .line 56
    new-instance v4, Lcom/supertws/dubokutv/data/util/TTHp;

    .line 57
    .line 58
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-static {v3}, Lcom/supertws/dubokutv/data/util/TTHp;->gSw(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    new-instance v5, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, "?"

    .line 77
    .line 78
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-static {v1}, Lwc/c;->a(Ljava/lang/String;)Lxc/g;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    iget-object v4, v1, Lxc/g;->a:Lxc/e;

    .line 93
    .line 94
    iput-boolean v2, v4, Lxc/e;->k:Z

    .line 95
    .line 96
    sget-object v4, Lta/e;->b:Lra/a;

    .line 97
    .line 98
    iget-object v4, v4, Lra/a;->a:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v1, v4}, Lxc/g;->h(Ljava/lang/String;)Lxc/g;

    .line 101
    .line 102
    .line 103
    sget-object v4, Lta/e;->b:Lra/a;

    .line 104
    .line 105
    iget-object v4, v4, Lra/a;->b:Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {v1, v4}, Lxc/g;->d(Ljava/lang/String;)Lxc/g;

    .line 108
    .line 109
    .line 110
    sget-object v4, Lta/e;->b:Lra/a;

    .line 111
    .line 112
    iget-object v4, v4, Lra/a;->c:Ljava/util/Map;

    .line 113
    .line 114
    invoke-virtual {v1, v4}, Lxc/g;->c(Ljava/util/Map;)Lxc/g;

    .line 115
    .line 116
    .line 117
    sget v4, Lta/e;->e:I

    .line 118
    .line 119
    invoke-virtual {v1, v4}, Lxc/g;->f(I)Lxc/g;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1}, Lxc/g;->b()Lorg/jsoup/nodes/Document;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {v1}, Lorg/jsoup/nodes/Document;->connection()Lwc/b;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    check-cast v4, Lxc/g;

    .line 131
    .line 132
    invoke-virtual {v4}, Lxc/g;->e()Lwc/a;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    check-cast v4, Lxc/f;

    .line 137
    .line 138
    iget-object v4, v4, Lxc/f;->k:Ljava/lang/String;

    .line 139
    .line 140
    if-eqz v4, :cond_2

    .line 141
    .line 142
    const-string v5, "json"

    .line 143
    .line 144
    const/4 v6, 0x0

    .line 145
    invoke-static {v4, v5, v6}, Lkotlin/text/r;->a0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    if-ne v4, v2, :cond_2

    .line 150
    .line 151
    sget-object v3, Lsa/b;->a:Lfc/r;

    .line 152
    .line 153
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    const-string v4, "text(...)"

    .line 158
    .line 159
    invoke-static {v1, v4}, Lkotlin/jvm/internal/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    sget-object v4, Lqa/p;->Companion:Lqa/o;

    .line 166
    .line 167
    invoke-virtual {v4}, Lqa/o;->serializer()Lac/c;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    invoke-virtual {v3, v4, v1}, Lfc/b;->a(Lac/c;Ljava/lang/String;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    check-cast v1, Lqa/p;

    .line 176
    .line 177
    goto :goto_2

    .line 178
    :catch_0
    move-exception v1

    .line 179
    goto :goto_1

    .line 180
    :cond_2
    const-string v4, "myui-content__thumb"

    .line 181
    .line 182
    invoke-virtual {v1, v4}, Lorg/jsoup/nodes/Element;->getElementsByClass(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    const-string v5, "getElementsByClass(...)"

    .line 187
    .line 188
    invoke-static {v4, v5}, Lkotlin/jvm/internal/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 192
    .line 193
    .line 194
    move-result v4

    .line 195
    if-nez v4, :cond_3

    .line 196
    .line 197
    const-string v4, "myui-content__detail"

    .line 198
    .line 199
    invoke-virtual {v1, v4}, Lorg/jsoup/nodes/Element;->getElementsByClass(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    invoke-static {v4, v5}, Lkotlin/jvm/internal/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 207
    .line 208
    .line 209
    move-result v4

    .line 210
    if-nez v4, :cond_3

    .line 211
    .line 212
    goto :goto_0

    .line 213
    :cond_3
    invoke-virtual {v1}, Lorg/jsoup/nodes/Document;->connection()Lwc/b;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    check-cast v4, Lxc/g;

    .line 218
    .line 219
    invoke-virtual {v4}, Lxc/g;->e()Lwc/a;

    .line 220
    .line 221
    .line 222
    move-result-object v4

    .line 223
    check-cast v4, Lxc/c;

    .line 224
    .line 225
    iget-object v4, v4, Lxc/c;->d:Ljava/util/LinkedHashMap;

    .line 226
    .line 227
    const-string v5, "cookies(...)"

    .line 228
    .line 229
    invoke-static {v4, v5}, Lkotlin/jvm/internal/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    invoke-static {v1, v4, v3}, Lkotlin/reflect/x;->t(Lorg/jsoup/nodes/Document;Ljava/util/Map;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    :goto_0
    invoke-static {v3, v1}, Lkotlin/reflect/x;->r(Ljava/lang/String;Lorg/jsoup/nodes/Document;)Lqa/p;

    .line 237
    .line 238
    .line 239
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    goto :goto_2

    .line 241
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 242
    .line 243
    .line 244
    const/4 v1, 0x0

    .line 245
    :goto_2
    iput v2, p0, Lcom/supertws/dubokutv/data/repositories/MovieRepositoryImpl$getMovieDetailsFlow$1;->label:I

    .line 246
    .line 247
    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/i;->emit(Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    if-ne p1, v0, :cond_4

    .line 252
    .line 253
    return-object v0

    .line 254
    :cond_4
    :goto_3
    sget-object p1, Lkotlin/w;->a:Lkotlin/w;

    .line 255
    .line 256
    return-object p1
.end method
