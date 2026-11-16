.class final Lcom/supertws/dubokutv/presentation/update/UpdateScreenViewModel$checkUpdate$1;
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
    c = "com.supertws.dubokutv.presentation.update.UpdateScreenViewModel$checkUpdate$1"
    f = "UpdateScreenViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/supertws/dubokutv/presentation/update/p;


# direct methods
.method public constructor <init>(Lcom/supertws/dubokutv/presentation/update/p;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/supertws/dubokutv/presentation/update/p;",
            "Lkotlin/coroutines/c;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/supertws/dubokutv/presentation/update/UpdateScreenViewModel$checkUpdate$1;->this$0:Lcom/supertws/dubokutv/presentation/update/p;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 1
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
    new-instance p1, Lcom/supertws/dubokutv/presentation/update/UpdateScreenViewModel$checkUpdate$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/supertws/dubokutv/presentation/update/UpdateScreenViewModel$checkUpdate$1;->this$0:Lcom/supertws/dubokutv/presentation/update/p;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/supertws/dubokutv/presentation/update/UpdateScreenViewModel$checkUpdate$1;-><init>(Lcom/supertws/dubokutv/presentation/update/p;Lkotlin/coroutines/c;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/x;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcom/supertws/dubokutv/presentation/update/UpdateScreenViewModel$checkUpdate$1;->invoke(Lkotlinx/coroutines/x;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/x;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/x;",
            "Lkotlin/coroutines/c;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/supertws/dubokutv/presentation/update/UpdateScreenViewModel$checkUpdate$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcom/supertws/dubokutv/presentation/update/UpdateScreenViewModel$checkUpdate$1;

    sget-object p2, Lkotlin/w;->a:Lkotlin/w;

    invoke-virtual {p1, p2}, Lcom/supertws/dubokutv/presentation/update/UpdateScreenViewModel$checkUpdate$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    sget-object v0, Lkotlin/w;->a:Lkotlin/w;

    .line 2
    .line 3
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 4
    .line 5
    iget v1, p0, Lcom/supertws/dubokutv/presentation/update/UpdateScreenViewModel$checkUpdate$1;->label:I

    .line 6
    .line 7
    if-nez v1, :cond_9

    .line 8
    .line 9
    invoke-static {p1}, Lkotlin/l;->b(Ljava/lang/Object;)V

    invoke-static {}, Lcom/supertws/dubokutv/DubokuCompat;->isChinaEnvironment()Z

    move-result v1

    if-eqz v1, :cond_china_pass

    iget-object p1, p0, Lcom/supertws/dubokutv/presentation/update/UpdateScreenViewModel$checkUpdate$1;->this$0:Lcom/supertws/dubokutv/presentation/update/p;

    iget-object p1, p1, Lcom/supertws/dubokutv/presentation/update/p;->i:Landroidx/compose/runtime/b1;

    check-cast p1, Landroidx/compose/runtime/t2;

    sget-object v1, Lcom/supertws/dubokutv/presentation/update/m;->a:Lcom/supertws/dubokutv/presentation/update/m;

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/t2;->setValue(Ljava/lang/Object;)V

    return-object v0

    :cond_china_pass

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/supertws/dubokutv/presentation/update/UpdateScreenViewModel$checkUpdate$1;->this$0:Lcom/supertws/dubokutv/presentation/update/p;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/supertws/dubokutv/presentation/update/p;->i:Landroidx/compose/runtime/b1;

    .line 15
    .line 16
    check-cast p1, Landroidx/compose/runtime/t2;

    .line 17
    .line 18
    sget-object v1, Lcom/supertws/dubokutv/presentation/update/k;->a:Lcom/supertws/dubokutv/presentation/update/k;

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Landroidx/compose/runtime/t2;->setValue(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/supertws/dubokutv/presentation/update/UpdateScreenViewModel$checkUpdate$1;->this$0:Lcom/supertws/dubokutv/presentation/update/p;

    .line 24
    .line 25
    :try_start_0
    invoke-static {}, Lxc/p;->u()Lcom/google/firebase/remoteconfig/f;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "inAppUpdateInfo"

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Lcom/google/firebase/remoteconfig/f;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 35
    :try_start_1
    sget-object v2, Lfc/b;->d:Lfc/a;

    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    sget-object v3, Lfc/n;->a:Lfc/n;

    .line 41
    .line 42
    invoke-virtual {v2, v3, v1}, Lfc/b;->a(Lac/c;Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Lfc/l;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-object v1, v0

    .line 50
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/supertws/dubokutv/presentation/update/UpdateScreenViewModel$checkUpdate$1;->this$0:Lcom/supertws/dubokutv/presentation/update/p;

    .line 51
    .line 52
    instance-of v3, v1, Lfc/y;

    .line 53
    .line 54
    if-eqz v3, :cond_1

    .line 55
    .line 56
    move-object v3, v1

    .line 57
    check-cast v3, Lfc/y;

    .line 58
    .line 59
    const-string v4, "canDismiss"

    .line 60
    .line 61
    invoke-virtual {v3, v4}, Lfc/y;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    check-cast v3, Lfc/l;

    .line 66
    .line 67
    if-eqz v3, :cond_0

    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    goto :goto_1

    .line 74
    :catch_1
    move-exception v1

    .line 75
    goto/16 :goto_6

    .line 76
    .line 77
    :cond_0
    const/4 v3, 0x0

    .line 78
    :goto_1
    const-string v4, "true"

    .line 79
    .line 80
    invoke-static {v3, v4}, Lkotlin/jvm/internal/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    goto :goto_2

    .line 85
    :cond_1
    const/4 v3, 0x0

    .line 86
    :goto_2
    iget-object v2, v2, Lcom/supertws/dubokutv/presentation/update/p;->f:Landroidx/compose/runtime/b1;

    .line 87
    .line 88
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    check-cast v2, Landroidx/compose/runtime/t2;

    .line 93
    .line 94
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/t2;->setValue(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    instance-of v2, v1, Lfc/y;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 98
    .line 99
    const-string v3, ""

    .line 100
    .line 101
    const-string v4, "latest"

    .line 102
    .line 103
    const-wide/16 v5, 0x0

    .line 104
    .line 105
    if-eqz v2, :cond_7

    .line 106
    .line 107
    :try_start_3
    new-instance v2, Lra/b;

    .line 108
    .line 109
    move-object v7, v1

    .line 110
    check-cast v7, Lfc/y;

    .line 111
    .line 112
    const-string v8, "updateVersionCode"

    .line 113
    .line 114
    invoke-virtual {v7, v8}, Lfc/y;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v7

    .line 118
    check-cast v7, Lfc/l;

    .line 119
    .line 120
    if-eqz v7, :cond_2

    .line 121
    .line 122
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v7

    .line 126
    if-eqz v7, :cond_2

    .line 127
    .line 128
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 129
    .line 130
    .line 131
    move-result-wide v5

    .line 132
    :cond_2
    move-object v7, v1

    .line 133
    check-cast v7, Lfc/y;

    .line 134
    .line 135
    const-string v8, "updateVersionName"

    .line 136
    .line 137
    invoke-virtual {v7, v8}, Lfc/y;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v7

    .line 141
    check-cast v7, Lfc/l;

    .line 142
    .line 143
    const/4 v8, 0x3

    .line 144
    if-eqz v7, :cond_4

    .line 145
    .line 146
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v7

    .line 150
    if-eqz v7, :cond_4

    .line 151
    .line 152
    new-array v9, v8, [C

    .line 153
    .line 154
    fill-array-data v9, :array_0

    .line 155
    .line 156
    .line 157
    invoke-static {v7, v9}, Lkotlin/text/r;->F0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v7

    .line 161
    if-nez v7, :cond_3

    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_3
    move-object v4, v7

    .line 165
    :cond_4
    :goto_3
    check-cast v1, Lfc/y;

    .line 166
    .line 167
    const-string v7, "apkLink"

    .line 168
    .line 169
    invoke-virtual {v1, v7}, Lfc/y;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    check-cast v1, Lfc/l;

    .line 174
    .line 175
    if-eqz v1, :cond_6

    .line 176
    .line 177
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    if-eqz v1, :cond_6

    .line 182
    .line 183
    new-array v7, v8, [C

    .line 184
    .line 185
    fill-array-data v7, :array_1

    .line 186
    .line 187
    .line 188
    invoke-static {v1, v7}, Lkotlin/text/r;->F0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    if-nez v1, :cond_5

    .line 193
    .line 194
    goto :goto_4

    .line 195
    :cond_5
    move-object v3, v1

    .line 196
    :cond_6
    :goto_4
    invoke-direct {v2, v4, v3, v5, v6}, Lra/b;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 197
    .line 198
    .line 199
    goto :goto_5

    .line 200
    :cond_7
    new-instance v2, Lra/b;

    .line 201
    .line 202
    invoke-direct {v2, v4, v3, v5, v6}, Lra/b;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 203
    .line 204
    .line 205
    :goto_5
    iget-wide v3, v2, Lra/b;->a:J

    .line 206
    .line 207
    iget-object v1, p0, Lcom/supertws/dubokutv/presentation/update/UpdateScreenViewModel$checkUpdate$1;->this$0:Lcom/supertws/dubokutv/presentation/update/p;

    .line 208
    .line 209
    iget-object v1, v1, Lcom/supertws/dubokutv/presentation/update/p;->g:Landroidx/compose/runtime/b1;

    .line 210
    .line 211
    check-cast v1, Landroidx/compose/runtime/t2;

    .line 212
    .line 213
    invoke-virtual {v1}, Landroidx/compose/runtime/t2;->getValue()Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    check-cast v1, Lra/b;

    .line 218
    .line 219
    iget-wide v5, v1, Lra/b;->a:J

    .line 220
    .line 221
    cmp-long v1, v3, v5

    .line 222
    .line 223
    if-lez v1, :cond_8

    .line 224
    .line 225
    new-instance v1, Lcom/supertws/dubokutv/presentation/update/n;

    .line 226
    .line 227
    invoke-direct {v1, v2}, Lcom/supertws/dubokutv/presentation/update/n;-><init>(Lra/b;)V

    .line 228
    .line 229
    .line 230
    goto :goto_7

    .line 231
    :cond_8
    sget-object v1, Lcom/supertws/dubokutv/presentation/update/m;->a:Lcom/supertws/dubokutv/presentation/update/m;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 232
    .line 233
    goto :goto_7

    .line 234
    :goto_6
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 235
    .line 236
    .line 237
    sget-object v1, Lcom/supertws/dubokutv/presentation/update/l;->a:Lcom/supertws/dubokutv/presentation/update/l;

    .line 238
    .line 239
    :goto_7
    iget-object p1, p1, Lcom/supertws/dubokutv/presentation/update/p;->i:Landroidx/compose/runtime/b1;

    .line 240
    .line 241
    check-cast p1, Landroidx/compose/runtime/t2;

    .line 242
    .line 243
    invoke-virtual {p1, v1}, Landroidx/compose/runtime/t2;->setValue(Ljava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    return-object v0

    .line 247
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 248
    .line 249
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 250
    .line 251
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    throw p1

    .line 255
    :array_0
    .array-data 2
        0x22s
        0x27s
        0x20s
    .end array-data

    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    nop

    .line 263
    :array_1
    .array-data 2
        0x22s
        0x27s
        0x20s
    .end array-data
.end method
