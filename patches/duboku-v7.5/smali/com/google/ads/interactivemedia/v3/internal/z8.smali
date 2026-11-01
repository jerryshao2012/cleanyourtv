.class public final Lcom/google/ads/interactivemedia/v3/internal/z8;
.super Ljava/lang/Object;
.source "r8-map-id-8ba8015df6390efac2340e8bc72cbaa0af05ae8dc58e92835996b10ae6d6a13d"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/x8;


# static fields
.field public static volatile K:Lcom/google/ads/interactivemedia/v3/internal/n9;

.field public static final L:Ljava/lang/Object;

.field public static M:Z

.field public static N:J

.field public static O:Lcom/google/ads/interactivemedia/v3/internal/b9;

.field public static P:Lcom/google/ads/interactivemedia/v3/internal/u9;

.field public static Q:Lcom/google/ads/interactivemedia/v3/internal/o9;

.field public static R:Lcom/google/ads/interactivemedia/v3/internal/q8;

.field public static S:Lcom/google/ads/interactivemedia/v3/internal/tf;


# instance fields
.field public A:F

.field public B:F

.field public C:F

.field public E:Z

.field public F:Z

.field public final G:Landroid/util/DisplayMetrics;

.field public final H:Lcom/google/ads/interactivemedia/v3/internal/g9;

.field public final I:Landroidx/compose/foundation/text/selection/n0;

.field public J:Lcom/google/ads/interactivemedia/v3/internal/s9;

.field public a:Landroid/view/MotionEvent;

.field public final b:Ljava/util/LinkedList;

.field public c:J

.field public d:J

.field public f:J

.field public g:J

.field public i:J

.field public p:J

.field public v:J

.field public w:D

.field public x:D

.field public y:D

.field public z:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/z8;->L:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/compose/foundation/text/selection/n0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/z8;->b:Ljava/util/LinkedList;

    .line 10
    .line 11
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/z8;->c:J

    .line 14
    .line 15
    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/z8;->d:J

    .line 16
    .line 17
    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/z8;->f:J

    .line 18
    .line 19
    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/z8;->g:J

    .line 20
    .line 21
    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/z8;->i:J

    .line 22
    .line 23
    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/z8;->p:J

    .line 24
    .line 25
    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/z8;->v:J

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/z8;->E:Z

    .line 29
    .line 30
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/z8;->F:Z

    .line 31
    .line 32
    :try_start_0
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/s8;->a()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/z8;->G:Landroid/util/DisplayMetrics;

    .line 44
    .line 45
    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/ib;->q:Lcom/google/ads/interactivemedia/v3/internal/db;

    .line 46
    .line 47
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/bb;->e:Lcom/google/ads/interactivemedia/v3/internal/bb;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/bb;->c:Lcom/google/ads/interactivemedia/v3/internal/hb;

    .line 50
    .line 51
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/hb;->a(Lcom/google/ads/interactivemedia/v3/internal/db;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Ljava/lang/Boolean;

    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_0

    .line 62
    .line 63
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/g9;

    .line 64
    .line 65
    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/g9;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/z8;->H:Lcom/google/ads/interactivemedia/v3/internal/g9;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .line 70
    :catchall_0
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    .line 71
    .line 72
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 73
    .line 74
    .line 75
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/z8;->I:Landroidx/compose/foundation/text/selection/n0;

    .line 76
    .line 77
    return-void
.end method

.method public static j(Landroid/content/Context;Z)Lcom/google/ads/interactivemedia/v3/internal/n9;
    .locals 10

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/z8;->K:Lcom/google/ads/interactivemedia/v3/internal/n9;

    .line 2
    .line 3
    if-nez v0, :cond_4

    .line 4
    .line 5
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/z8;->L:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/z8;->K:Lcom/google/ads/interactivemedia/v3/internal/n9;

    .line 9
    .line 10
    if-nez v1, :cond_3

    .line 11
    .line 12
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/z8;->S:Lcom/google/ads/interactivemedia/v3/internal/tf;

    .line 13
    .line 14
    invoke-static {p0, p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/n9;->a(Landroid/content/Context;ZLcom/google/ads/interactivemedia/v3/internal/tf;)Lcom/google/ads/interactivemedia/v3/internal/n9;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    iget-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/n9;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    goto/16 :goto_1

    .line 23
    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    :try_start_1
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/ib;->s:Lcom/google/ads/interactivemedia/v3/internal/db;

    .line 26
    .line 27
    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/bb;->e:Lcom/google/ads/interactivemedia/v3/internal/bb;

    .line 28
    .line 29
    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/internal/bb;->c:Lcom/google/ads/interactivemedia/v3/internal/hb;

    .line 30
    .line 31
    invoke-virtual {v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/hb;->a(Lcom/google/ads/interactivemedia/v3/internal/db;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Ljava/lang/Boolean;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 38
    .line 39
    .line 40
    move-result v1
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    :try_start_2
    const-string v1, "dDkHRfh96kWRNKlCuQv4bcbQkP8hTl8+IryaCt9cMd/svBIVo0Uo/vCqMYwPlijS"

    .line 44
    .line 45
    const-string v2, "lGOVu04SK1qS7YTVL1GWrSv+Cf1XKJpvbu7KHhGh7cY="

    .line 46
    .line 47
    new-array v3, p1, [Ljava/lang/Class;

    .line 48
    .line 49
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/n9;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto/16 :goto_2

    .line 55
    .line 56
    :catch_0
    :cond_1
    :goto_0
    const-string v1, "8cGCIT8G/u06HQUQMiN2ifk8cEgbx/Wk97figDVCx+GQZgadMjHBVKMl6PUoXm9E"

    .line 57
    .line 58
    const-string v2, "8+d2WBKGjAoApH75NCR/Aqn77d5NBFIHb0YR3dAdyeE="

    .line 59
    .line 60
    const/4 v3, 0x1

    .line 61
    new-array v4, v3, [Ljava/lang/Class;

    .line 62
    .line 63
    const-class v5, Landroid/content/Context;

    .line 64
    .line 65
    aput-object v5, v4, p1

    .line 66
    .line 67
    invoke-virtual {p0, v1, v2, v4}, Lcom/google/ads/interactivemedia/v3/internal/n9;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 68
    .line 69
    .line 70
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/ib;->v:Lcom/google/ads/interactivemedia/v3/internal/db;

    .line 71
    .line 72
    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/bb;->e:Lcom/google/ads/interactivemedia/v3/internal/bb;

    .line 73
    .line 74
    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/internal/bb;->c:Lcom/google/ads/interactivemedia/v3/internal/hb;

    .line 75
    .line 76
    invoke-virtual {v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/hb;->a(Lcom/google/ads/interactivemedia/v3/internal/db;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Ljava/lang/Boolean;

    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-eqz v1, :cond_2

    .line 87
    .line 88
    const-string v1, "iCmAdyXMN2wNdoDGZPKplFblNf0e3f9Gr4uP4gCRDt/ctzDAq8UfSYwC5u9g4DzW"

    .line 89
    .line 90
    const-string v2, "9N+K+19jT0YQFPQktH9XDgnqiWtwN+75+qmtGpYeo7Q="

    .line 91
    .line 92
    new-array v4, p1, [Ljava/lang/Class;

    .line 93
    .line 94
    invoke-virtual {p0, v1, v2, v4}, Lcom/google/ads/interactivemedia/v3/internal/n9;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 95
    .line 96
    .line 97
    :cond_2
    const-string v1, "00Zqkn2vthPYFLR6iH1rsdxNkw6KyQ/MlAMxaONveqkDgXIjpGg039P2HSigYq2Q"

    .line 98
    .line 99
    const-string v2, "KTJvuGh/PMe9EapQHUkRl8FZKF5qWyAzLDZ/DWV/log="

    .line 100
    .line 101
    new-array v4, v3, [Ljava/lang/Class;

    .line 102
    .line 103
    const-class v5, Landroid/content/Context;

    .line 104
    .line 105
    aput-object v5, v4, p1

    .line 106
    .line 107
    invoke-virtual {p0, v1, v2, v4}, Lcom/google/ads/interactivemedia/v3/internal/n9;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 108
    .line 109
    .line 110
    const-string v1, "XXF2CX++qjQzFfJDmqd+84h356GlStFLqQSTRbbce/csPkd7M5mpQw1l7igXWffL"

    .line 111
    .line 112
    const-string v2, "FGCYjW2JaOcRH3mqSkgHIxbWzEwOVje6sx286yuA1xM="

    .line 113
    .line 114
    new-array v4, v3, [Ljava/lang/Class;

    .line 115
    .line 116
    const-class v5, Landroid/content/Context;

    .line 117
    .line 118
    aput-object v5, v4, p1

    .line 119
    .line 120
    invoke-virtual {p0, v1, v2, v4}, Lcom/google/ads/interactivemedia/v3/internal/n9;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 121
    .line 122
    .line 123
    const-string v1, "m7g/XX2t5caOhtOM/ogmEO9Vkwmhkxe5gTS2qje4vP8HJASoqVE/26NLNeDuMz/t"

    .line 124
    .line 125
    const-string v2, "+Weh9OuqHFyRkOD06GxXjljhJF/GsDXbBDxKrn8yplc="

    .line 126
    .line 127
    new-array v4, v3, [Ljava/lang/Class;

    .line 128
    .line 129
    const-class v5, Landroid/content/Context;

    .line 130
    .line 131
    aput-object v5, v4, p1

    .line 132
    .line 133
    invoke-virtual {p0, v1, v2, v4}, Lcom/google/ads/interactivemedia/v3/internal/n9;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 134
    .line 135
    .line 136
    const-string v1, "P28XMQKwxb7t4RJM54Abd563bFUm9uASQiuwtqttjr6XDpyPt/FmHs2sVrWjtmTo"

    .line 137
    .line 138
    const-string v2, "fagQaENWAKeTH7PQjt5vlJiCBcOZOOnM19vGSn9sDlA="

    .line 139
    .line 140
    new-array v4, v3, [Ljava/lang/Class;

    .line 141
    .line 142
    const-class v5, Landroid/content/Context;

    .line 143
    .line 144
    aput-object v5, v4, p1

    .line 145
    .line 146
    invoke-virtual {p0, v1, v2, v4}, Lcom/google/ads/interactivemedia/v3/internal/n9;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 147
    .line 148
    .line 149
    const-string v1, "IIcYtgV+jKyhXEWTRGryYoN4Hb3AaxkKFvJa61B8IsfExxFOrLfbygLFTq7UIHav"

    .line 150
    .line 151
    const-string v2, "0Td4x6cMqS7UG7AA2zcqm+bK2AW+gIwIgEtwqP1CguA="

    .line 152
    .line 153
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 154
    .line 155
    const/4 v5, 0x2

    .line 156
    new-array v6, v5, [Ljava/lang/Class;

    .line 157
    .line 158
    const-class v7, Landroid/content/Context;

    .line 159
    .line 160
    aput-object v7, v6, p1

    .line 161
    .line 162
    aput-object v4, v6, v3

    .line 163
    .line 164
    invoke-virtual {p0, v1, v2, v6}, Lcom/google/ads/interactivemedia/v3/internal/n9;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 165
    .line 166
    .line 167
    const-string v1, "GkIdfnRezKvEfAeB5157D8Ci3lpp/e7Oge9xr/GzO3KjC7JXvYHgpg7VRCtGuOw4"

    .line 168
    .line 169
    const-string v2, "kXUmyuEurXcq5mqFokC5oFFCqidwlGAMD9JpJXYa0Mk="

    .line 170
    .line 171
    new-array v6, v3, [Ljava/lang/Class;

    .line 172
    .line 173
    const-class v7, Landroid/content/Context;

    .line 174
    .line 175
    aput-object v7, v6, p1

    .line 176
    .line 177
    invoke-virtual {p0, v1, v2, v6}, Lcom/google/ads/interactivemedia/v3/internal/n9;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 178
    .line 179
    .line 180
    const-string v1, "2JfLKOCWe20PaEte0oViJ9E/+ELRHfLHNO4trOuu7IQ3kQ71vgp9bwF5/QP32+2T"

    .line 181
    .line 182
    const-string v2, "LVYC8EvnYnoIGxefzdW+bkgnD7TMgzMx712oMyZcYTg="

    .line 183
    .line 184
    new-array v6, v3, [Ljava/lang/Class;

    .line 185
    .line 186
    const-class v7, Landroid/content/Context;

    .line 187
    .line 188
    aput-object v7, v6, p1

    .line 189
    .line 190
    invoke-virtual {p0, v1, v2, v6}, Lcom/google/ads/interactivemedia/v3/internal/n9;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 191
    .line 192
    .line 193
    const-string v1, "6fpJXJ/0mHk1BKHieJD271QStaRup/Ve1zgTWQI+7BRFgC5McwJ3e2UlmdWs2x64"

    .line 194
    .line 195
    const-string v2, "/HyusJxcst6GC6sxvcSXH3tMw8sGRae2S909c2O+Y30="

    .line 196
    .line 197
    new-array v6, v5, [Ljava/lang/Class;

    .line 198
    .line 199
    const-class v7, Landroid/view/MotionEvent;

    .line 200
    .line 201
    aput-object v7, v6, p1

    .line 202
    .line 203
    const-class v7, Landroid/util/DisplayMetrics;

    .line 204
    .line 205
    aput-object v7, v6, v3

    .line 206
    .line 207
    invoke-virtual {p0, v1, v2, v6}, Lcom/google/ads/interactivemedia/v3/internal/n9;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 208
    .line 209
    .line 210
    const-string v1, "t5yhqOem6jC98WR50f+SLS3Uk3sKCmIuutsKOnbEcikRe3zXPIZnZid7K20GrtZF"

    .line 211
    .line 212
    const-string v2, "M9gaAFNEKOV8YNe1CyHBBl548FwxQflqXjyA5kKaJak="

    .line 213
    .line 214
    new-array v6, v5, [Ljava/lang/Class;

    .line 215
    .line 216
    const-class v7, Landroid/view/MotionEvent;

    .line 217
    .line 218
    aput-object v7, v6, p1

    .line 219
    .line 220
    const-class v7, Landroid/util/DisplayMetrics;

    .line 221
    .line 222
    aput-object v7, v6, v3

    .line 223
    .line 224
    invoke-virtual {p0, v1, v2, v6}, Lcom/google/ads/interactivemedia/v3/internal/n9;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 225
    .line 226
    .line 227
    const-string v1, "y0L1OSEMWW8/imV1M3pvQITWJfkGk5GAMqJuL5aNLdq8sTbK6BFpI8/D5pLc65zr"

    .line 228
    .line 229
    const-string v2, "dBSRUGPKY8JzIPoAEV0GB9RkRHGvAJPAM3BhqN1QQjE="

    .line 230
    .line 231
    new-array v6, p1, [Ljava/lang/Class;

    .line 232
    .line 233
    invoke-virtual {p0, v1, v2, v6}, Lcom/google/ads/interactivemedia/v3/internal/n9;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 234
    .line 235
    .line 236
    const-string v1, "9v14GmYq1mityfaROUYQVHNDWlAgc2TzwyjcWsJSVQ5o6aEyLVnDo4vbeNXmh2ew"

    .line 237
    .line 238
    const-string v2, "zGbmNDn+uB00oiAu0ISzPA2QynMDAioh3MLj5VQvTcg="

    .line 239
    .line 240
    new-array v6, p1, [Ljava/lang/Class;

    .line 241
    .line 242
    invoke-virtual {p0, v1, v2, v6}, Lcom/google/ads/interactivemedia/v3/internal/n9;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 243
    .line 244
    .line 245
    const-string v1, "XQdLYJkQLpAC0Ie4wfLqMhdIIwn1qr11ViPPFEC485DwlLnjXHhmJUbAoJDOqgC4"

    .line 246
    .line 247
    const-string v2, "EiIklDudUBV1tLFQO3J+6veHT/B2kTFeB6bPUIAs1V0="

    .line 248
    .line 249
    new-array v6, p1, [Ljava/lang/Class;

    .line 250
    .line 251
    invoke-virtual {p0, v1, v2, v6}, Lcom/google/ads/interactivemedia/v3/internal/n9;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 252
    .line 253
    .line 254
    const-string v1, "c2tDBlieP1HgAca8BbxZWeFItAa95IUNAJZ8eF9wTfwT8H+oJvTJgvb0TMn4OhPJ"

    .line 255
    .line 256
    const-string v2, "tm0zp+MQfD9mNSBt0r3mfYhq2ky3SeNyaSrFjHWQaT0="

    .line 257
    .line 258
    new-array v6, p1, [Ljava/lang/Class;

    .line 259
    .line 260
    invoke-virtual {p0, v1, v2, v6}, Lcom/google/ads/interactivemedia/v3/internal/n9;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 261
    .line 262
    .line 263
    const-string v1, "AeJvLHy+YL60Equ2/UpZQs9Ok34RPgGTn80fnG3Dx4JfdgAW65En0T0IJD/U8yYs"

    .line 264
    .line 265
    const-string v2, "sawjrbkZQHxExWkkVyDhv0h3fWiUMmvl7E2YVLpKa+A="

    .line 266
    .line 267
    new-array v6, p1, [Ljava/lang/Class;

    .line 268
    .line 269
    invoke-virtual {p0, v1, v2, v6}, Lcom/google/ads/interactivemedia/v3/internal/n9;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 270
    .line 271
    .line 272
    const-string v1, "Qz9CKMoDCHphOXPELo049qp61nrfn738aUeATKOiX7hq+kw0ujtW3xI/vlQKBh37"

    .line 273
    .line 274
    const-string v2, "bze+wYBAHEMh8JSXqo0+D4B3Aq+R4fX2jHr7eo7ufbY="

    .line 275
    .line 276
    new-array v6, p1, [Ljava/lang/Class;

    .line 277
    .line 278
    invoke-virtual {p0, v1, v2, v6}, Lcom/google/ads/interactivemedia/v3/internal/n9;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 279
    .line 280
    .line 281
    const-string v1, "Y4Si1UCd8xFA1yCw6ohazV+GUSwhVa9ffV9ZnN++nWMAkqLsgU7cmmd4wBpbGVgj"

    .line 282
    .line 283
    const-string v2, "1k+Az7ZOHMkdpE7lGA2cF/gUEsamDqjjLqQDV0dmR3A="

    .line 284
    .line 285
    const/4 v6, 0x3

    .line 286
    new-array v7, v6, [Ljava/lang/Class;

    .line 287
    .line 288
    const-class v8, Landroid/content/Context;

    .line 289
    .line 290
    aput-object v8, v7, p1

    .line 291
    .line 292
    aput-object v4, v7, v3

    .line 293
    .line 294
    const-class v8, Ljava/lang/String;

    .line 295
    .line 296
    aput-object v8, v7, v5

    .line 297
    .line 298
    invoke-virtual {p0, v1, v2, v7}, Lcom/google/ads/interactivemedia/v3/internal/n9;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 299
    .line 300
    .line 301
    const-string v1, "X/GUPFxOS4avlKtq36LXcZb7PXup/zZuW1HHrjvnbrOdArq87fiVHm1/XdqEH3+6"

    .line 302
    .line 303
    const-string v2, "yUIicuApz/OaGeh0f0RdAIADq1zJ0l0UU+b4jbryt0s="

    .line 304
    .line 305
    new-array v7, v3, [Ljava/lang/Class;

    .line 306
    .line 307
    const-class v8, [Ljava/lang/StackTraceElement;

    .line 308
    .line 309
    aput-object v8, v7, p1

    .line 310
    .line 311
    invoke-virtual {p0, v1, v2, v7}, Lcom/google/ads/interactivemedia/v3/internal/n9;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 312
    .line 313
    .line 314
    const-string v1, "K/Oo81d3D7QQWAvkxOkmH49qSlOsGQFHscMya6S21HBqr+GdnpBDhLtEJWB1CCZB"

    .line 315
    .line 316
    const-string v2, "Ge8je/arysmNa4UdtKuRe+4JSpIyhDOrTZ5OtsYb5ag="

    .line 317
    .line 318
    const/4 v7, 0x4

    .line 319
    new-array v8, v7, [Ljava/lang/Class;

    .line 320
    .line 321
    const-class v9, Landroid/view/View;

    .line 322
    .line 323
    aput-object v9, v8, p1

    .line 324
    .line 325
    const-class v9, Landroid/util/DisplayMetrics;

    .line 326
    .line 327
    aput-object v9, v8, v3

    .line 328
    .line 329
    aput-object v4, v8, v5

    .line 330
    .line 331
    aput-object v4, v8, v6

    .line 332
    .line 333
    invoke-virtual {p0, v1, v2, v8}, Lcom/google/ads/interactivemedia/v3/internal/n9;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 334
    .line 335
    .line 336
    const-string v1, "NrTiKoqiGsnW0YmEvrYFxN8MEHR3HtreklnLu5ZS2/gdKln4kN9VtqKQ3DYD1lNw"

    .line 337
    .line 338
    const-string v2, "GRpsnBes2qRtyDPKutW4bBWph7anTp6FUrz2DgBHtv0="

    .line 339
    .line 340
    new-array v8, v5, [Ljava/lang/Class;

    .line 341
    .line 342
    const-class v9, Landroid/content/Context;

    .line 343
    .line 344
    aput-object v9, v8, p1

    .line 345
    .line 346
    aput-object v4, v8, v3

    .line 347
    .line 348
    invoke-virtual {p0, v1, v2, v8}, Lcom/google/ads/interactivemedia/v3/internal/n9;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 349
    .line 350
    .line 351
    const-string v1, "9TfyKlP5TIIt3OrlcGubA3YBpCoy+oB4k/WnZndRDloYkwzEaKKPovjffC4zkV4k"

    .line 352
    .line 353
    const-string v2, "3uxZ+FD025vJO7qOv296UhrdOlNsopGnz6EvxCliHP4="

    .line 354
    .line 355
    new-array v8, v6, [Ljava/lang/Class;

    .line 356
    .line 357
    const-class v9, Landroid/view/View;

    .line 358
    .line 359
    aput-object v9, v8, p1

    .line 360
    .line 361
    const-class v9, Landroid/app/Activity;

    .line 362
    .line 363
    aput-object v9, v8, v3

    .line 364
    .line 365
    aput-object v4, v8, v5

    .line 366
    .line 367
    invoke-virtual {p0, v1, v2, v8}, Lcom/google/ads/interactivemedia/v3/internal/n9;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 368
    .line 369
    .line 370
    const-string v1, "CX4J+2yEJ2HtJzNjBSAFoPZxV3S124qFqsrwrEik3kHdsHRX3oIIB4d/zi0EQ0fu"

    .line 371
    .line 372
    const-string v2, "gfLiyhD2OvLSOj6bwf+kcmK11rwQ90aeBshxHD6xXgk="

    .line 373
    .line 374
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 375
    .line 376
    new-array v8, v3, [Ljava/lang/Class;

    .line 377
    .line 378
    aput-object v4, v8, p1

    .line 379
    .line 380
    invoke-virtual {p0, v1, v2, v8}, Lcom/google/ads/interactivemedia/v3/internal/n9;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 381
    .line 382
    .line 383
    const-string v1, "PmZORt2h3FILlRchj3l8QFpH1b4WBi8LAKFq8qXvSXgGWHByOiAJxaqMK9WTkxzB"

    .line 384
    .line 385
    const-string v2, "Ox3joL3a7fFzYIlEQut3utwsOQDntBqHwHmTdzF1H8c="

    .line 386
    .line 387
    new-array v8, p1, [Ljava/lang/Class;

    .line 388
    .line 389
    invoke-virtual {p0, v1, v2, v8}, Lcom/google/ads/interactivemedia/v3/internal/n9;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 390
    .line 391
    .line 392
    const-string v1, "sg/K0s1GwOZuQX5eitJmxib+wj81rdd8azNpkdJxx1Al3KmlPY0wLfmj2TGTYSv2"

    .line 393
    .line 394
    const-string v2, "x4M1RpSRK9uX9iukrRpM6KxHxc9F29fR3cS53OKE4Bs="

    .line 395
    .line 396
    new-array v8, v3, [Ljava/lang/Class;

    .line 397
    .line 398
    const-class v9, Landroid/content/Context;

    .line 399
    .line 400
    aput-object v9, v8, p1

    .line 401
    .line 402
    invoke-virtual {p0, v1, v2, v8}, Lcom/google/ads/interactivemedia/v3/internal/n9;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 403
    .line 404
    .line 405
    const-string v1, "Di5PWAjPtHVrwnaWVY5fRaO+JCXGdUjCOQOYEnFfzjx5tiFy99P00V458wl3+tMS"

    .line 406
    .line 407
    const-string v2, "24rToqMdm9KIBSWWVKIVzZ6Fu9mGVX1qRD30P4LVPjg="

    .line 408
    .line 409
    new-array v8, v3, [Ljava/lang/Class;

    .line 410
    .line 411
    const-class v9, Landroid/content/Context;

    .line 412
    .line 413
    aput-object v9, v8, p1

    .line 414
    .line 415
    invoke-virtual {p0, v1, v2, v8}, Lcom/google/ads/interactivemedia/v3/internal/n9;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 416
    .line 417
    .line 418
    const-string v1, "0RGuaC1LZ8p4RZIWK5IFPvVh1XqX7pdLKGQgqTXZ1mkub6VwNtebK8xyUGpHkvMn"

    .line 419
    .line 420
    const-string v2, "mIcXOfgrOloP6pQFjXZ3aL2iJ7mq+own2SaqzDvu6Tk="

    .line 421
    .line 422
    new-array v8, v6, [Ljava/lang/Class;

    .line 423
    .line 424
    const-class v9, Landroid/net/NetworkCapabilities;

    .line 425
    .line 426
    aput-object v9, v8, p1

    .line 427
    .line 428
    aput-object v4, v8, v3

    .line 429
    .line 430
    aput-object v4, v8, v5

    .line 431
    .line 432
    invoke-virtual {p0, v1, v2, v8}, Lcom/google/ads/interactivemedia/v3/internal/n9;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 433
    .line 434
    .line 435
    const-string v1, "/BhgxpXYgahRBmZkS3xjCzPdid3mZtzdZmJFkhACyEa2oS6asfWgI5KysEGcSPE9"

    .line 436
    .line 437
    const-string v2, "ngST2QkCVNtF272EQbVjeXMfCtACYPfIcakPMgsny7g="

    .line 438
    .line 439
    new-array v8, v3, [Ljava/lang/Class;

    .line 440
    .line 441
    const-class v9, Ljava/util/List;

    .line 442
    .line 443
    aput-object v9, v8, p1

    .line 444
    .line 445
    invoke-virtual {p0, v1, v2, v8}, Lcom/google/ads/interactivemedia/v3/internal/n9;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 446
    .line 447
    .line 448
    const-string v1, "4UiqdD16WGcqj9vsERkA6tbA4c/2yE/sXnYMi3TR5nPXoyMXncc0iB8g5zhndeqU"

    .line 449
    .line 450
    const-string v2, "5yR6P4d4j2VnbvLNLQtiv9yBd7AWiKZJ6Mp0Kq9QPto="

    .line 451
    .line 452
    new-array v7, v7, [Ljava/lang/Class;

    .line 453
    .line 454
    aput-object v4, v7, p1

    .line 455
    .line 456
    aput-object v4, v7, v3

    .line 457
    .line 458
    aput-object v4, v7, v5

    .line 459
    .line 460
    aput-object v4, v7, v6

    .line 461
    .line 462
    invoke-virtual {p0, v1, v2, v7}, Lcom/google/ads/interactivemedia/v3/internal/n9;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 463
    .line 464
    .line 465
    :goto_1
    sput-object p0, Lcom/google/ads/interactivemedia/v3/internal/z8;->K:Lcom/google/ads/interactivemedia/v3/internal/n9;

    .line 466
    .line 467
    :cond_3
    monitor-exit v0

    .line 468
    goto :goto_3

    .line 469
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 470
    throw p0

    .line 471
    :cond_4
    :goto_3
    sget-object p0, Lcom/google/ads/interactivemedia/v3/internal/z8;->K:Lcom/google/ads/interactivemedia/v3/internal/n9;

    .line 472
    .line 473
    return-object p0
.end method

.method public static l(Lcom/google/ads/interactivemedia/v3/internal/n9;Landroid/view/MotionEvent;Landroid/util/DisplayMetrics;)Lcom/google/ads/interactivemedia/v3/internal/p9;
    .locals 3

    .line 1
    const-string v0, "6fpJXJ/0mHk1BKHieJD271QStaRup/Ve1zgTWQI+7BRFgC5McwJ3e2UlmdWs2x64"

    .line 2
    .line 3
    const-string v1, "/HyusJxcst6GC6sxvcSXH3tMw8sGRae2S909c2O+Y30="

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/n9;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    :try_start_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/p9;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    aput-object p1, v1, v2

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    aput-object p2, v1, p1
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    :try_start_2
    invoke-virtual {p0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Ljava/lang/String;

    .line 30
    .line 31
    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/p9;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1

    .line 32
    .line 33
    .line 34
    return-object v0

    .line 35
    :catch_0
    move-exception p0

    .line 36
    goto :goto_0

    .line 37
    :catch_1
    move-exception p0

    .line 38
    :goto_0
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzir;

    .line 39
    .line 40
    invoke-direct {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzir;-><init>(Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    throw p1

    .line 44
    :cond_0
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/zzir;

    .line 45
    .line 46
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzir;-><init>()V

    .line 47
    .line 48
    .line 49
    throw p0
.end method

.method public static final n(Ljava/util/List;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/z8;->K:Lcom/google/ads/interactivemedia/v3/internal/n9;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/z8;->K:Lcom/google/ads/interactivemedia/v3/internal/n9;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/n9;->b:Ljava/util/concurrent/ExecutorService;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    :try_start_0
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/ib;->k:Lcom/google/ads/interactivemedia/v3/internal/db;

    .line 19
    .line 20
    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/bb;->e:Lcom/google/ads/interactivemedia/v3/internal/bb;

    .line 21
    .line 22
    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/internal/bb;->c:Lcom/google/ads/interactivemedia/v3/internal/hb;

    .line 23
    .line 24
    invoke-virtual {v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/hb;->a(Lcom/google/ads/interactivemedia/v3/internal/db;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ljava/lang/Long;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 31
    .line 32
    .line 33
    move-result-wide v1

    .line 34
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 35
    .line 36
    invoke-interface {v0, p0, v1, v2, v3}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :catch_0
    move-exception p0

    .line 41
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/q9;->a:[C

    .line 42
    .line 43
    new-instance v0, Ljava/io/StringWriter;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 46
    .line 47
    .line 48
    new-instance v1, Ljava/io/PrintWriter;

    .line 49
    .line 50
    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v1, "class methods got exception: "

    .line 63
    .line 64
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    const-string v0, "z8"

    .line 75
    .line 76
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v2, 0x0

    .line 2
    const/4 v3, 0x2

    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move-object v4, p2

    .line 6
    move-object v5, p3

    .line 7
    invoke-virtual/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/internal/z8;->k(Landroid/content/Context;Ljava/lang/String;ILandroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public final declared-synchronized b(Landroid/view/MotionEvent;)V
    .locals 13

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/z8;->E:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/z8;->i()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/z8;->E:Z

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto/16 :goto_3

    .line 15
    .line 16
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x2

    .line 21
    const/4 v2, 0x1

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    if-eq v0, v2, :cond_1

    .line 25
    .line 26
    if-eq v0, v1, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    float-to-double v3, v0

    .line 34
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    float-to-double v5, v0

    .line 39
    iget-wide v7, p0, Lcom/google/ads/interactivemedia/v3/internal/z8;->x:D

    .line 40
    .line 41
    sub-double v7, v3, v7

    .line 42
    .line 43
    iget-wide v9, p0, Lcom/google/ads/interactivemedia/v3/internal/z8;->y:D

    .line 44
    .line 45
    sub-double v9, v5, v9

    .line 46
    .line 47
    iget-wide v11, p0, Lcom/google/ads/interactivemedia/v3/internal/z8;->w:D

    .line 48
    .line 49
    mul-double/2addr v7, v7

    .line 50
    mul-double/2addr v9, v9

    .line 51
    add-double/2addr v9, v7

    .line 52
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    .line 53
    .line 54
    .line 55
    move-result-wide v7

    .line 56
    add-double/2addr v11, v7

    .line 57
    iput-wide v11, p0, Lcom/google/ads/interactivemedia/v3/internal/z8;->w:D

    .line 58
    .line 59
    iput-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/z8;->x:D

    .line 60
    .line 61
    iput-wide v5, p0, Lcom/google/ads/interactivemedia/v3/internal/z8;->y:D

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    const-wide/16 v3, 0x0

    .line 65
    .line 66
    iput-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/z8;->w:D

    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    float-to-double v3, v0

    .line 73
    iput-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/z8;->x:D

    .line 74
    .line 75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    float-to-double v3, v0

    .line 80
    iput-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/z8;->y:D

    .line 81
    .line 82
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    const-wide/16 v3, 0x1

    .line 87
    .line 88
    if-eqz v0, :cond_8

    .line 89
    .line 90
    if-eq v0, v2, :cond_6

    .line 91
    .line 92
    if-eq v0, v1, :cond_4

    .line 93
    .line 94
    const/4 p1, 0x3

    .line 95
    if-eq v0, p1, :cond_3

    .line 96
    .line 97
    goto/16 :goto_2

    .line 98
    .line 99
    :cond_3
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/z8;->g:J

    .line 100
    .line 101
    add-long/2addr v0, v3

    .line 102
    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/z8;->g:J

    .line 103
    .line 104
    goto/16 :goto_2

    .line 105
    .line 106
    :cond_4
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/z8;->d:J

    .line 107
    .line 108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    add-int/2addr v3, v2

    .line 113
    int-to-long v3, v3

    .line 114
    add-long/2addr v0, v3

    .line 115
    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/z8;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    .line 117
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/z8;->g(Landroid/view/MotionEvent;)Lcom/google/ads/interactivemedia/v3/internal/p9;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/p9;->d:Ljava/lang/Long;

    .line 122
    .line 123
    if-eqz v0, :cond_5

    .line 124
    .line 125
    iget-object v1, p1, Lcom/google/ads/interactivemedia/v3/internal/p9;->g:Ljava/lang/Long;

    .line 126
    .line 127
    if-eqz v1, :cond_5

    .line 128
    .line 129
    iget-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/z8;->p:J

    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 132
    .line 133
    .line 134
    move-result-wide v0

    .line 135
    iget-object v5, p1, Lcom/google/ads/interactivemedia/v3/internal/p9;->g:Ljava/lang/Long;

    .line 136
    .line 137
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 138
    .line 139
    .line 140
    move-result-wide v5

    .line 141
    add-long/2addr v0, v5

    .line 142
    add-long/2addr v0, v3

    .line 143
    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/z8;->p:J

    .line 144
    .line 145
    :cond_5
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/z8;->G:Landroid/util/DisplayMetrics;

    .line 146
    .line 147
    if-eqz v0, :cond_9

    .line 148
    .line 149
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/p9;->e:Ljava/lang/Long;

    .line 150
    .line 151
    if-eqz v0, :cond_9

    .line 152
    .line 153
    iget-object v1, p1, Lcom/google/ads/interactivemedia/v3/internal/p9;->h:Ljava/lang/Long;

    .line 154
    .line 155
    if-eqz v1, :cond_9

    .line 156
    .line 157
    iget-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/z8;->v:J

    .line 158
    .line 159
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 160
    .line 161
    .line 162
    move-result-wide v0

    .line 163
    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/p9;->h:Ljava/lang/Long;

    .line 164
    .line 165
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 166
    .line 167
    .line 168
    move-result-wide v5

    .line 169
    add-long/2addr v0, v5

    .line 170
    add-long/2addr v0, v3

    .line 171
    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/z8;->v:J
    :try_end_1
    .catch Lcom/google/ads/interactivemedia/v3/internal/zzir; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_6
    :try_start_2
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/z8;->a:Landroid/view/MotionEvent;

    .line 179
    .line 180
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/z8;->b:Ljava/util/LinkedList;

    .line 181
    .line 182
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    const/4 v1, 0x6

    .line 190
    if-le p1, v1, :cond_7

    .line 191
    .line 192
    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    check-cast p1, Landroid/view/MotionEvent;

    .line 197
    .line 198
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 199
    .line 200
    .line 201
    :cond_7
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/z8;->f:J

    .line 202
    .line 203
    add-long/2addr v0, v3

    .line 204
    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/z8;->f:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 205
    .line 206
    :try_start_3
    new-instance p1, Ljava/lang/Throwable;

    .line 207
    .line 208
    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/z8;->h([Ljava/lang/StackTraceElement;)J

    .line 216
    .line 217
    .line 218
    move-result-wide v0

    .line 219
    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/z8;->i:J
    :try_end_3
    .catch Lcom/google/ads/interactivemedia/v3/internal/zzir; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 220
    .line 221
    goto :goto_2

    .line 222
    :cond_8
    :try_start_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/z8;->z:F

    .line 227
    .line 228
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/z8;->A:F

    .line 233
    .line 234
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/z8;->B:F

    .line 239
    .line 240
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 241
    .line 242
    .line 243
    move-result p1

    .line 244
    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/z8;->C:F

    .line 245
    .line 246
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/z8;->c:J

    .line 247
    .line 248
    add-long/2addr v0, v3

    .line 249
    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/z8;->c:J

    .line 250
    .line 251
    :catch_0
    :cond_9
    :goto_2
    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/z8;->F:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 252
    .line 253
    monitor-exit p0

    .line 254
    return-void

    .line 255
    :goto_3
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 256
    throw p1
.end method

.method public final c(Landroid/view/View;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/ib;->n:Lcom/google/ads/interactivemedia/v3/internal/db;

    .line 2
    .line 3
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/bb;->e:Lcom/google/ads/interactivemedia/v3/internal/bb;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/bb;->c:Lcom/google/ads/interactivemedia/v3/internal/hb;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/hb;->a(Lcom/google/ads/interactivemedia/v3/internal/db;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/z8;->J:Lcom/google/ads/interactivemedia/v3/internal/s9;

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/z8;->K:Lcom/google/ads/interactivemedia/v3/internal/n9;

    .line 25
    .line 26
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/s9;

    .line 27
    .line 28
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/n9;->a:Landroid/content/Context;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/n9;->o:Lcom/google/ads/interactivemedia/v3/internal/h9;

    .line 31
    .line 32
    invoke-direct {v1, v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/s9;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/h9;)V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/z8;->J:Lcom/google/ads/interactivemedia/v3/internal/s9;

    .line 36
    .line 37
    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/z8;->J:Lcom/google/ads/interactivemedia/v3/internal/s9;

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/s9;->a(Landroid/view/View;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final d(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v3, 0x3

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move-object v4, p3

    .line 6
    move-object v5, p4

    .line 7
    invoke-virtual/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/internal/z8;->k(Landroid/content/Context;Ljava/lang/String;ILandroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public final declared-synchronized e(III)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, v1, Lcom/google/ads/interactivemedia/v3/internal/z8;->a:Landroid/view/MotionEvent;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/ib;->h:Lcom/google/ads/interactivemedia/v3/internal/db;

    .line 9
    .line 10
    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/bb;->e:Lcom/google/ads/interactivemedia/v3/internal/bb;

    .line 11
    .line 12
    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/internal/bb;->c:Lcom/google/ads/interactivemedia/v3/internal/hb;

    .line 13
    .line 14
    invoke-virtual {v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/hb;->a(Lcom/google/ads/interactivemedia/v3/internal/db;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/Boolean;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/z8;->i()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    goto :goto_2

    .line 32
    :cond_0
    iget-object v0, v1, Lcom/google/ads/interactivemedia/v3/internal/z8;->a:Landroid/view/MotionEvent;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_0
    iget-object v0, v1, Lcom/google/ads/interactivemedia/v3/internal/z8;->G:Landroid/util/DisplayMetrics;

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    move/from16 v2, p3

    .line 42
    .line 43
    int-to-long v4, v2

    .line 44
    move/from16 v2, p1

    .line 45
    .line 46
    int-to-float v2, v2

    .line 47
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 48
    .line 49
    mul-float v7, v2, v0

    .line 50
    .line 51
    move/from16 v2, p2

    .line 52
    .line 53
    int-to-float v2, v2

    .line 54
    mul-float v8, v2, v0

    .line 55
    .line 56
    const/4 v14, 0x0

    .line 57
    const/4 v15, 0x0

    .line 58
    const-wide/16 v2, 0x0

    .line 59
    .line 60
    const/4 v6, 0x1

    .line 61
    const/4 v9, 0x0

    .line 62
    const/4 v10, 0x0

    .line 63
    const/4 v11, 0x0

    .line 64
    const/4 v12, 0x0

    .line 65
    const/4 v13, 0x0

    .line 66
    invoke-static/range {v2 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iput-object v0, v1, Lcom/google/ads/interactivemedia/v3/internal/z8;->a:Landroid/view/MotionEvent;

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    const/4 v0, 0x0

    .line 74
    iput-object v0, v1, Lcom/google/ads/interactivemedia/v3/internal/z8;->a:Landroid/view/MotionEvent;

    .line 75
    .line 76
    :goto_1
    const/4 v0, 0x0

    .line 77
    iput-boolean v0, v1, Lcom/google/ads/interactivemedia/v3/internal/z8;->F:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .line 79
    monitor-exit p0

    .line 80
    return-void

    .line 81
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    throw v0
.end method

.method public final f(Landroid/content/Context;)Lcom/google/ads/interactivemedia/v3/internal/h1;
    .locals 12

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/z8;->P:Lcom/google/ads/interactivemedia/v3/internal/u9;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/google/ads/interactivemedia/v3/internal/u9;->d:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    iput-wide v1, v0, Lcom/google/ads/interactivemedia/v3/internal/u9;->b:J

    .line 14
    .line 15
    :cond_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/z8;->Q:Lcom/google/ads/interactivemedia/v3/internal/o9;

    .line 16
    .line 17
    iget-wide v1, v0, Lcom/google/ads/interactivemedia/v3/internal/o9;->a:J

    .line 18
    .line 19
    iput-wide v1, v0, Lcom/google/ads/interactivemedia/v3/internal/o9;->b:J

    .line 20
    .line 21
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 22
    .line 23
    .line 24
    move-result-wide v1

    .line 25
    iput-wide v1, v0, Lcom/google/ads/interactivemedia/v3/internal/o9;->a:J

    .line 26
    .line 27
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/x4;->m0()Lcom/google/ads/interactivemedia/v3/internal/h1;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/z8;->I:Landroidx/compose/foundation/text/selection/n0;

    .line 32
    .line 33
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/n0;->c:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v1, Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_1

    .line 42
    .line 43
    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/g1;->b()V

    .line 44
    .line 45
    .line 46
    iget-object v2, v5, Lcom/google/ads/interactivemedia/v3/internal/g1;->b:Lcom/google/ads/interactivemedia/v3/internal/j1;

    .line 47
    .line 48
    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/x4;

    .line 49
    .line 50
    invoke-virtual {v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/x4;->p0(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    iget-boolean v1, v0, Landroidx/compose/foundation/text/selection/n0;->b:Z

    .line 54
    .line 55
    invoke-static {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/z8;->j(Landroid/content/Context;Z)Lcom/google/ads/interactivemedia/v3/internal/n9;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    iget-object v1, v4, Lcom/google/ads/interactivemedia/v3/internal/n9;->b:Ljava/util/concurrent/ExecutorService;

    .line 60
    .line 61
    if-eqz v1, :cond_7

    .line 62
    .line 63
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/n9;->e()I

    .line 64
    .line 65
    .line 66
    move-result v8

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .line 71
    .line 72
    iget-boolean v2, v4, Lcom/google/ads/interactivemedia/v3/internal/n9;->n:Z

    .line 73
    .line 74
    if-nez v2, :cond_2

    .line 75
    .line 76
    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/g1;->b()V

    .line 77
    .line 78
    .line 79
    iget-object p1, v5, Lcom/google/ads/interactivemedia/v3/internal/g1;->b:Lcom/google/ads/interactivemedia/v3/internal/j1;

    .line 80
    .line 81
    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/x4;

    .line 82
    .line 83
    const-wide/16 v2, 0x4000

    .line 84
    .line 85
    invoke-virtual {p1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/x4;->z0(J)V

    .line 86
    .line 87
    .line 88
    goto/16 :goto_2

    .line 89
    .line 90
    :cond_2
    iget-object v0, v0, Landroidx/compose/foundation/text/selection/n0;->d:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/a;

    .line 93
    .line 94
    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/x9;

    .line 95
    .line 96
    sget-object v9, Lcom/google/ads/interactivemedia/v3/internal/z8;->R:Lcom/google/ads/interactivemedia/v3/internal/q8;

    .line 97
    .line 98
    move-object v7, p1

    .line 99
    move v6, v8

    .line 100
    move-object v8, v0

    .line 101
    invoke-direct/range {v3 .. v9}, Lcom/google/ads/interactivemedia/v3/internal/x9;-><init>(Lcom/google/ads/interactivemedia/v3/internal/n9;Lcom/google/ads/interactivemedia/v3/internal/h1;ILandroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/a;Lcom/google/ads/interactivemedia/v3/internal/q8;)V

    .line 102
    .line 103
    .line 104
    move v8, v6

    .line 105
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/z9;

    .line 109
    .line 110
    sget-wide v6, Lcom/google/ads/interactivemedia/v3/internal/z8;->N:J

    .line 111
    .line 112
    invoke-direct/range {v3 .. v8}, Lcom/google/ads/interactivemedia/v3/internal/z9;-><init>(Lcom/google/ads/interactivemedia/v3/internal/n9;Lcom/google/ads/interactivemedia/v3/internal/h1;JI)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/y9;

    .line 119
    .line 120
    const/4 v2, 0x3

    .line 121
    invoke-direct {v0, v4, v5, v8, v2}, Lcom/google/ads/interactivemedia/v3/internal/y9;-><init>(Lcom/google/ads/interactivemedia/v3/internal/n9;Lcom/google/ads/interactivemedia/v3/internal/h1;II)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/v9;

    .line 128
    .line 129
    invoke-direct {v0, v4, v5, v8, p1}, Lcom/google/ads/interactivemedia/v3/internal/v9;-><init>(Lcom/google/ads/interactivemedia/v3/internal/n9;Lcom/google/ads/interactivemedia/v3/internal/h1;ILandroid/content/Context;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/y9;

    .line 136
    .line 137
    const/4 v2, 0x4

    .line 138
    invoke-direct {v0, v4, v5, v8, v2}, Lcom/google/ads/interactivemedia/v3/internal/y9;-><init>(Lcom/google/ads/interactivemedia/v3/internal/n9;Lcom/google/ads/interactivemedia/v3/internal/h1;II)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/w9;

    .line 145
    .line 146
    invoke-direct {v0, v4, v5, v8, p1}, Lcom/google/ads/interactivemedia/v3/internal/w9;-><init>(Lcom/google/ads/interactivemedia/v3/internal/n9;Lcom/google/ads/interactivemedia/v3/internal/h1;ILandroid/content/Context;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/y9;

    .line 153
    .line 154
    const/4 v0, 0x7

    .line 155
    invoke-direct {p1, v4, v5, v8, v0}, Lcom/google/ads/interactivemedia/v3/internal/y9;-><init>(Lcom/google/ads/interactivemedia/v3/internal/n9;Lcom/google/ads/interactivemedia/v3/internal/h1;II)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/y9;

    .line 162
    .line 163
    const/16 v0, 0x9

    .line 164
    .line 165
    invoke-direct {p1, v4, v5, v8, v0}, Lcom/google/ads/interactivemedia/v3/internal/y9;-><init>(Lcom/google/ads/interactivemedia/v3/internal/n9;Lcom/google/ads/interactivemedia/v3/internal/h1;II)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/y9;

    .line 172
    .line 173
    const/16 v0, 0xa

    .line 174
    .line 175
    invoke-direct {p1, v4, v5, v8, v0}, Lcom/google/ads/interactivemedia/v3/internal/y9;-><init>(Lcom/google/ads/interactivemedia/v3/internal/n9;Lcom/google/ads/interactivemedia/v3/internal/h1;II)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/y9;

    .line 182
    .line 183
    const/4 v0, 0x0

    .line 184
    invoke-direct {p1, v4, v5, v8, v0}, Lcom/google/ads/interactivemedia/v3/internal/y9;-><init>(Lcom/google/ads/interactivemedia/v3/internal/n9;Lcom/google/ads/interactivemedia/v3/internal/h1;II)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/y9;

    .line 191
    .line 192
    const/4 v0, 0x2

    .line 193
    invoke-direct {p1, v4, v5, v8, v0}, Lcom/google/ads/interactivemedia/v3/internal/y9;-><init>(Lcom/google/ads/interactivemedia/v3/internal/n9;Lcom/google/ads/interactivemedia/v3/internal/h1;II)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/y9;

    .line 200
    .line 201
    const/16 v0, 0xd

    .line 202
    .line 203
    invoke-direct {p1, v4, v5, v8, v0}, Lcom/google/ads/interactivemedia/v3/internal/y9;-><init>(Lcom/google/ads/interactivemedia/v3/internal/n9;Lcom/google/ads/interactivemedia/v3/internal/h1;II)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/y9;

    .line 210
    .line 211
    const/4 v0, 0x6

    .line 212
    invoke-direct {p1, v4, v5, v8, v0}, Lcom/google/ads/interactivemedia/v3/internal/y9;-><init>(Lcom/google/ads/interactivemedia/v3/internal/n9;Lcom/google/ads/interactivemedia/v3/internal/h1;II)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/y9;

    .line 219
    .line 220
    const/16 v0, 0xc

    .line 221
    .line 222
    invoke-direct {p1, v4, v5, v8, v0}, Lcom/google/ads/interactivemedia/v3/internal/y9;-><init>(Lcom/google/ads/interactivemedia/v3/internal/n9;Lcom/google/ads/interactivemedia/v3/internal/h1;II)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/da;

    .line 229
    .line 230
    invoke-direct {p1, v4, v5, v8}, Lcom/google/ads/interactivemedia/v3/internal/da;-><init>(Lcom/google/ads/interactivemedia/v3/internal/n9;Lcom/google/ads/interactivemedia/v3/internal/h1;I)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 237
    .line 238
    const/16 v0, 0x18

    .line 239
    .line 240
    if-lt p1, v0, :cond_5

    .line 241
    .line 242
    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/z8;->P:Lcom/google/ads/interactivemedia/v3/internal/u9;

    .line 243
    .line 244
    const-wide/16 v2, -0x1

    .line 245
    .line 246
    if-eqz p1, :cond_4

    .line 247
    .line 248
    iget-boolean v0, p1, Lcom/google/ads/interactivemedia/v3/internal/u9;->d:Z

    .line 249
    .line 250
    if-eqz v0, :cond_3

    .line 251
    .line 252
    iget-wide v6, p1, Lcom/google/ads/interactivemedia/v3/internal/u9;->b:J

    .line 253
    .line 254
    iget-wide v9, p1, Lcom/google/ads/interactivemedia/v3/internal/u9;->a:J

    .line 255
    .line 256
    sub-long/2addr v6, v9

    .line 257
    goto :goto_0

    .line 258
    :cond_3
    move-wide v6, v2

    .line 259
    :goto_0
    iget-wide v9, p1, Lcom/google/ads/interactivemedia/v3/internal/u9;->c:J

    .line 260
    .line 261
    iput-wide v2, p1, Lcom/google/ads/interactivemedia/v3/internal/u9;->c:J

    .line 262
    .line 263
    move-wide v2, v6

    .line 264
    move-wide v10, v9

    .line 265
    goto :goto_1

    .line 266
    :cond_4
    move-wide v10, v2

    .line 267
    :goto_1
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/ba;

    .line 268
    .line 269
    sget-object v7, Lcom/google/ads/interactivemedia/v3/internal/z8;->O:Lcom/google/ads/interactivemedia/v3/internal/b9;

    .line 270
    .line 271
    move v6, v8

    .line 272
    move-wide v8, v2

    .line 273
    move-object v3, p1

    .line 274
    invoke-direct/range {v3 .. v11}, Lcom/google/ads/interactivemedia/v3/internal/ba;-><init>(Lcom/google/ads/interactivemedia/v3/internal/n9;Lcom/google/ads/interactivemedia/v3/internal/h1;ILcom/google/ads/interactivemedia/v3/internal/b9;JJ)V

    .line 275
    .line 276
    .line 277
    move v8, v6

    .line 278
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    :cond_5
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/y9;

    .line 282
    .line 283
    const/16 v0, 0xb

    .line 284
    .line 285
    invoke-direct {p1, v4, v5, v8, v0}, Lcom/google/ads/interactivemedia/v3/internal/y9;-><init>(Lcom/google/ads/interactivemedia/v3/internal/n9;Lcom/google/ads/interactivemedia/v3/internal/h1;II)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/y9;

    .line 292
    .line 293
    const/16 v9, 0x4c

    .line 294
    .line 295
    const/16 v10, 0x8

    .line 296
    .line 297
    move-object v7, v5

    .line 298
    const-string v5, "Di5PWAjPtHVrwnaWVY5fRaO+JCXGdUjCOQOYEnFfzjx5tiFy99P00V458wl3+tMS"

    .line 299
    .line 300
    const-string v6, "24rToqMdm9KIBSWWVKIVzZ6Fu9mGVX1qRD30P4LVPjg="

    .line 301
    .line 302
    invoke-direct/range {v3 .. v10}, Lcom/google/ads/interactivemedia/v3/internal/y9;-><init>(Lcom/google/ads/interactivemedia/v3/internal/n9;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/h1;III)V

    .line 303
    .line 304
    .line 305
    move-object v5, v7

    .line 306
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/y9;

    .line 310
    .line 311
    const/4 v0, 0x5

    .line 312
    invoke-direct {p1, v4, v5, v8, v0}, Lcom/google/ads/interactivemedia/v3/internal/y9;-><init>(Lcom/google/ads/interactivemedia/v3/internal/n9;Lcom/google/ads/interactivemedia/v3/internal/h1;II)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/ib;->v:Lcom/google/ads/interactivemedia/v3/internal/db;

    .line 319
    .line 320
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/bb;->e:Lcom/google/ads/interactivemedia/v3/internal/bb;

    .line 321
    .line 322
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/bb;->c:Lcom/google/ads/interactivemedia/v3/internal/hb;

    .line 323
    .line 324
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/hb;->a(Lcom/google/ads/interactivemedia/v3/internal/db;)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object p1

    .line 328
    check-cast p1, Ljava/lang/Boolean;

    .line 329
    .line 330
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 331
    .line 332
    .line 333
    move-result p1

    .line 334
    if-eqz p1, :cond_6

    .line 335
    .line 336
    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/y9;

    .line 337
    .line 338
    const/16 v9, 0x52

    .line 339
    .line 340
    const/4 v10, 0x1

    .line 341
    move-object v7, v5

    .line 342
    const-string v5, "iCmAdyXMN2wNdoDGZPKplFblNf0e3f9Gr4uP4gCRDt/ctzDAq8UfSYwC5u9g4DzW"

    .line 343
    .line 344
    const-string v6, "9N+K+19jT0YQFPQktH9XDgnqiWtwN+75+qmtGpYeo7Q="

    .line 345
    .line 346
    invoke-direct/range {v3 .. v10}, Lcom/google/ads/interactivemedia/v3/internal/y9;-><init>(Lcom/google/ads/interactivemedia/v3/internal/n9;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/h1;III)V

    .line 347
    .line 348
    .line 349
    move-object v5, v7

    .line 350
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    :cond_6
    :goto_2
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/z8;->n(Ljava/util/List;)V

    .line 354
    .line 355
    .line 356
    :cond_7
    return-object v5
.end method

.method public final g(Landroid/view/MotionEvent;)Lcom/google/ads/interactivemedia/v3/internal/p9;
    .locals 5

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/z8;->K:Lcom/google/ads/interactivemedia/v3/internal/n9;

    .line 2
    .line 3
    const-string v1, "t5yhqOem6jC98WR50f+SLS3Uk3sKCmIuutsKOnbEcikRe3zXPIZnZid7K20GrtZF"

    .line 4
    .line 5
    const-string v2, "M9gaAFNEKOV8YNe1CyHBBl548FwxQflqXjyA5kKaJak="

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/n9;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    :try_start_0
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/p9;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/z8;->G:Landroid/util/DisplayMetrics;

    .line 18
    .line 19
    const/4 v3, 0x2

    .line 20
    new-array v3, v3, [Ljava/lang/Object;

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    aput-object p1, v3, v4

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    aput-object v2, v3, p1

    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    invoke-virtual {v0, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Ljava/lang/String;

    .line 34
    .line 35
    invoke-direct {v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/p9;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    return-object v1

    .line 39
    :catch_0
    move-exception p1

    .line 40
    goto :goto_0

    .line 41
    :catch_1
    move-exception p1

    .line 42
    :goto_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzir;

    .line 43
    .line 44
    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzir;-><init>(Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    throw v0

    .line 48
    :cond_0
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzir;

    .line 49
    .line 50
    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzir;-><init>()V

    .line 51
    .line 52
    .line 53
    throw p1
.end method

.method public final h([Ljava/lang/StackTraceElement;)J
    .locals 4

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/z8;->K:Lcom/google/ads/interactivemedia/v3/internal/n9;

    .line 2
    .line 3
    const-string v1, "X/GUPFxOS4avlKtq36LXcZb7PXup/zZuW1HHrjvnbrOdArq87fiVHm1/XdqEH3+6"

    .line 4
    .line 5
    const-string v2, "yUIicuApz/OaGeh0f0RdAIADq1zJ0l0UU+b4jbryt0s="

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/n9;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    :try_start_0
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/f9;

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    new-array v2, v2, [Ljava/lang/Object;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    aput-object p1, v2, v3

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Ljava/lang/String;

    .line 29
    .line 30
    invoke-direct {v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/f9;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, v1, Lcom/google/ads/interactivemedia/v3/internal/f9;->a:Ljava/lang/Long;

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 36
    .line 37
    .line 38
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    return-wide v0

    .line 40
    :catch_0
    move-exception p1

    .line 41
    goto :goto_0

    .line 42
    :catch_1
    move-exception p1

    .line 43
    :goto_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzir;

    .line 44
    .line 45
    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzir;-><init>(Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    throw v0

    .line 49
    :cond_0
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzir;

    .line 50
    .line 51
    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzir;-><init>()V

    .line 52
    .line 53
    .line 54
    throw p1
.end method

.method public final i()V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/z8;->i:J

    .line 4
    .line 5
    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/z8;->c:J

    .line 6
    .line 7
    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/z8;->d:J

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/z8;->f:J

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/z8;->g:J

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/z8;->p:J

    .line 14
    .line 15
    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/z8;->v:J

    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/z8;->b:Ljava/util/LinkedList;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Landroid/view/MotionEvent;

    .line 40
    .line 41
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/z8;->a:Landroid/view/MotionEvent;

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 54
    .line 55
    .line 56
    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/z8;->a:Landroid/view/MotionEvent;

    .line 58
    .line 59
    return-void
.end method

.method public final k(Landroid/content/Context;Ljava/lang/String;ILandroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v8, p2

    .line 6
    .line 7
    move/from16 v9, p3

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v10

    .line 13
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/ib;->j:Lcom/google/ads/interactivemedia/v3/internal/db;

    .line 14
    .line 15
    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/bb;->e:Lcom/google/ads/interactivemedia/v3/internal/bb;

    .line 16
    .line 17
    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/internal/bb;->c:Lcom/google/ads/interactivemedia/v3/internal/hb;

    .line 18
    .line 19
    invoke-virtual {v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/hb;->a(Lcom/google/ads/interactivemedia/v3/internal/db;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    .line 27
    .line 28
    move-result v12

    .line 29
    if-eqz v12, :cond_1

    .line 30
    .line 31
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/z8;->K:Lcom/google/ads/interactivemedia/v3/internal/n9;

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/z8;->K:Lcom/google/ads/interactivemedia/v3/internal/n9;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/n9;->k:Lcom/google/ads/interactivemedia/v3/internal/w8;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v0, 0x0

    .line 41
    :goto_0
    const-string v2, "be"

    .line 42
    .line 43
    move-object v14, v0

    .line 44
    move-object/from16 v19, v2

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const/4 v14, 0x0

    .line 48
    const/16 v19, 0x0

    .line 49
    .line 50
    :goto_1
    const/4 v15, 0x1

    .line 51
    const/4 v2, 0x2

    .line 52
    const/4 v3, 0x3

    .line 53
    if-ne v9, v3, :cond_4

    .line 54
    .line 55
    :try_start_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/z8;->P:Lcom/google/ads/interactivemedia/v3/internal/u9;

    .line 56
    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    iget-boolean v4, v0, Lcom/google/ads/interactivemedia/v3/internal/u9;->d:Z

    .line 60
    .line 61
    if-eqz v4, :cond_2

    .line 62
    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 64
    .line 65
    .line 66
    move-result-wide v4

    .line 67
    iput-wide v4, v0, Lcom/google/ads/interactivemedia/v3/internal/u9;->b:J

    .line 68
    .line 69
    :cond_2
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/z8;->Q:Lcom/google/ads/interactivemedia/v3/internal/o9;

    .line 70
    .line 71
    iget-wide v4, v0, Lcom/google/ads/interactivemedia/v3/internal/o9;->g:J

    .line 72
    .line 73
    iput-wide v4, v0, Lcom/google/ads/interactivemedia/v3/internal/o9;->h:J

    .line 74
    .line 75
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 76
    .line 77
    .line 78
    move-result-wide v4

    .line 79
    iput-wide v4, v0, Lcom/google/ads/interactivemedia/v3/internal/o9;->g:J

    .line 80
    .line 81
    move v4, v3

    .line 82
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/x4;->m0()Lcom/google/ads/interactivemedia/v3/internal/h1;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    iget-object v0, v1, Lcom/google/ads/interactivemedia/v3/internal/z8;->I:Landroidx/compose/foundation/text/selection/n0;

    .line 87
    .line 88
    iget-object v5, v0, Landroidx/compose/foundation/text/selection/n0;->c:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v5, Ljava/lang/String;

    .line 91
    .line 92
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    if-nez v6, :cond_3

    .line 97
    .line 98
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/g1;->b()V

    .line 99
    .line 100
    .line 101
    iget-object v6, v3, Lcom/google/ads/interactivemedia/v3/internal/g1;->b:Lcom/google/ads/interactivemedia/v3/internal/j1;

    .line 102
    .line 103
    check-cast v6, Lcom/google/ads/interactivemedia/v3/internal/x4;

    .line 104
    .line 105
    invoke-virtual {v6, v5}, Lcom/google/ads/interactivemedia/v3/internal/x4;->p0(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    :cond_3
    iget-boolean v0, v0, Landroidx/compose/foundation/text/selection/n0;->b:Z

    .line 109
    .line 110
    invoke-static {v7, v0}, Lcom/google/ads/interactivemedia/v3/internal/z8;->j(Landroid/content/Context;Z)Lcom/google/ads/interactivemedia/v3/internal/n9;

    .line 111
    .line 112
    .line 113
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 114
    const/4 v6, 0x1

    .line 115
    move-object/from16 v4, p4

    .line 116
    .line 117
    move-object/from16 v5, p5

    .line 118
    .line 119
    move v13, v2

    .line 120
    move-object v2, v0

    .line 121
    :try_start_1
    invoke-virtual/range {v1 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/z8;->m(Lcom/google/ads/interactivemedia/v3/internal/n9;Lcom/google/ads/interactivemedia/v3/internal/h1;Landroid/view/View;Landroid/app/Activity;ZLandroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 122
    .line 123
    .line 124
    :try_start_2
    iput-boolean v15, v1, Lcom/google/ads/interactivemedia/v3/internal/z8;->E:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 125
    .line 126
    const/16 v0, 0x3ea

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :catch_0
    move-exception v0

    .line 130
    move-object/from16 v20, v0

    .line 131
    .line 132
    move v1, v15

    .line 133
    goto/16 :goto_7

    .line 134
    .line 135
    :catch_1
    move-exception v0

    .line 136
    move v13, v2

    .line 137
    :goto_2
    move v1, v15

    .line 138
    goto/16 :goto_6

    .line 139
    .line 140
    :cond_4
    move v13, v2

    .line 141
    if-ne v9, v13, :cond_6

    .line 142
    .line 143
    :try_start_3
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/z8;->P:Lcom/google/ads/interactivemedia/v3/internal/u9;

    .line 144
    .line 145
    if-eqz v0, :cond_5

    .line 146
    .line 147
    iget-boolean v2, v0, Lcom/google/ads/interactivemedia/v3/internal/u9;->d:Z

    .line 148
    .line 149
    if-eqz v2, :cond_5

    .line 150
    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 152
    .line 153
    .line 154
    move-result-wide v2

    .line 155
    iput-wide v2, v0, Lcom/google/ads/interactivemedia/v3/internal/u9;->b:J

    .line 156
    .line 157
    :cond_5
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/z8;->Q:Lcom/google/ads/interactivemedia/v3/internal/o9;

    .line 158
    .line 159
    move-object/from16 v4, p4

    .line 160
    .line 161
    invoke-virtual {v0, v7, v4}, Lcom/google/ads/interactivemedia/v3/internal/o9;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 162
    .line 163
    .line 164
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/x4;->m0()Lcom/google/ads/interactivemedia/v3/internal/h1;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    iget-object v0, v1, Lcom/google/ads/interactivemedia/v3/internal/z8;->I:Landroidx/compose/foundation/text/selection/n0;

    .line 169
    .line 170
    iget-object v2, v0, Landroidx/compose/foundation/text/selection/n0;->c:Ljava/lang/Object;

    .line 171
    .line 172
    check-cast v2, Ljava/lang/String;

    .line 173
    .line 174
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/g1;->b()V

    .line 175
    .line 176
    .line 177
    iget-object v5, v3, Lcom/google/ads/interactivemedia/v3/internal/g1;->b:Lcom/google/ads/interactivemedia/v3/internal/j1;

    .line 178
    .line 179
    check-cast v5, Lcom/google/ads/interactivemedia/v3/internal/x4;

    .line 180
    .line 181
    invoke-virtual {v5, v2}, Lcom/google/ads/interactivemedia/v3/internal/x4;->p0(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    iget-boolean v0, v0, Landroidx/compose/foundation/text/selection/n0;->b:Z

    .line 185
    .line 186
    invoke-static {v7, v0}, Lcom/google/ads/interactivemedia/v3/internal/z8;->j(Landroid/content/Context;Z)Lcom/google/ads/interactivemedia/v3/internal/n9;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    const/4 v6, 0x0

    .line 191
    move-object/from16 v5, p5

    .line 192
    .line 193
    invoke-virtual/range {v1 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/z8;->m(Lcom/google/ads/interactivemedia/v3/internal/n9;Lcom/google/ads/interactivemedia/v3/internal/h1;Landroid/view/View;Landroid/app/Activity;ZLandroid/content/Context;)V

    .line 194
    .line 195
    .line 196
    const/16 v0, 0x3f0

    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_6
    invoke-virtual/range {p0 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/z8;->f(Landroid/content/Context;)Lcom/google/ads/interactivemedia/v3/internal/h1;

    .line 200
    .line 201
    .line 202
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 203
    const/16 v1, 0x3e8

    .line 204
    .line 205
    move-object v3, v0

    .line 206
    move v0, v1

    .line 207
    :goto_3
    if-eqz v12, :cond_7

    .line 208
    .line 209
    if-eqz v14, :cond_7

    .line 210
    .line 211
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 212
    .line 213
    .line 214
    move-result-wide v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 215
    sub-long v17, v1, v10

    .line 216
    .line 217
    const/16 v16, -0x1

    .line 218
    .line 219
    const/16 v20, 0x0

    .line 220
    .line 221
    move v1, v15

    .line 222
    move v15, v0

    .line 223
    :try_start_5
    invoke-virtual/range {v14 .. v20}, Lcom/google/ads/interactivemedia/v3/internal/w8;->a(IIJLjava/lang/String;Ljava/lang/Exception;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 224
    .line 225
    .line 226
    goto :goto_5

    .line 227
    :catch_2
    move-exception v0

    .line 228
    goto :goto_4

    .line 229
    :catch_3
    move-exception v0

    .line 230
    move v1, v15

    .line 231
    :goto_4
    move-object/from16 v20, v0

    .line 232
    .line 233
    goto :goto_7

    .line 234
    :cond_7
    move v1, v15

    .line 235
    :goto_5
    move v10, v9

    .line 236
    const/4 v2, 0x3

    .line 237
    goto :goto_b

    .line 238
    :catch_4
    move-exception v0

    .line 239
    goto :goto_2

    .line 240
    :goto_6
    move-object/from16 v20, v0

    .line 241
    .line 242
    const/4 v3, 0x0

    .line 243
    :goto_7
    if-eqz v12, :cond_a

    .line 244
    .line 245
    if-eqz v14, :cond_a

    .line 246
    .line 247
    const/4 v2, 0x3

    .line 248
    if-ne v9, v2, :cond_8

    .line 249
    .line 250
    const/16 v0, 0x3eb

    .line 251
    .line 252
    :goto_8
    move v15, v0

    .line 253
    goto :goto_9

    .line 254
    :cond_8
    if-ne v9, v13, :cond_9

    .line 255
    .line 256
    const/16 v0, 0x3f1

    .line 257
    .line 258
    goto :goto_8

    .line 259
    :cond_9
    const/16 v0, 0x3e9

    .line 260
    .line 261
    move v15, v0

    .line 262
    move v9, v1

    .line 263
    :goto_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 264
    .line 265
    .line 266
    move-result-wide v4

    .line 267
    sub-long v17, v4, v10

    .line 268
    .line 269
    const/16 v16, -0x1

    .line 270
    .line 271
    invoke-virtual/range {v14 .. v20}, Lcom/google/ads/interactivemedia/v3/internal/w8;->a(IIJLjava/lang/String;Ljava/lang/Exception;)V

    .line 272
    .line 273
    .line 274
    :goto_a
    move v10, v9

    .line 275
    goto :goto_b

    .line 276
    :cond_a
    const/4 v2, 0x3

    .line 277
    goto :goto_a

    .line 278
    :goto_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 279
    .line 280
    .line 281
    move-result-wide v15

    .line 282
    if-eqz v3, :cond_f

    .line 283
    .line 284
    :try_start_6
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/g1;->d()Lcom/google/ads/interactivemedia/v3/internal/j1;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/x4;

    .line 289
    .line 290
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/j1;->e()I

    .line 291
    .line 292
    .line 293
    move-result v0

    .line 294
    if-nez v0, :cond_b

    .line 295
    .line 296
    goto/16 :goto_10

    .line 297
    .line 298
    :cond_b
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/g1;->d()Lcom/google/ads/interactivemedia/v3/internal/j1;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/x4;

    .line 303
    .line 304
    sget-boolean v3, Lcom/google/ads/interactivemedia/v3/internal/s8;->a:Z

    .line 305
    .line 306
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/i0;->b()[B

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    invoke-static {v8, v0}, Lcom/google/ads/interactivemedia/v3/internal/s8;->b(Ljava/lang/String;[B)Lcom/google/ads/interactivemedia/v3/internal/p5;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    if-nez v0, :cond_c

    .line 315
    .line 316
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/x4;->m0()Lcom/google/ads/interactivemedia/v3/internal/h1;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/g1;->b()V

    .line 321
    .line 322
    .line 323
    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/g1;->b:Lcom/google/ads/interactivemedia/v3/internal/j1;

    .line 324
    .line 325
    check-cast v3, Lcom/google/ads/interactivemedia/v3/internal/x4;

    .line 326
    .line 327
    const-wide/16 v4, 0x1000

    .line 328
    .line 329
    invoke-virtual {v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/x4;->z0(J)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/g1;->d()Lcom/google/ads/interactivemedia/v3/internal/j1;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/x4;

    .line 337
    .line 338
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/i0;->b()[B

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    invoke-static {v0, v8, v1}, Lcom/google/ads/interactivemedia/v3/internal/s8;->d([BLjava/lang/String;Z)[B

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    goto :goto_c

    .line 347
    :cond_c
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/g1;->d()Lcom/google/ads/interactivemedia/v3/internal/j1;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/q5;

    .line 352
    .line 353
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/i0;->b()[B

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    :goto_c
    const/16 v1, 0xb

    .line 358
    .line 359
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    if-eqz v12, :cond_12

    .line 364
    .line 365
    if-eqz v14, :cond_12

    .line 366
    .line 367
    if-ne v10, v2, :cond_d

    .line 368
    .line 369
    const/16 v1, 0x3ee

    .line 370
    .line 371
    :goto_d
    move v4, v1

    .line 372
    goto :goto_e

    .line 373
    :cond_d
    if-ne v10, v13, :cond_e

    .line 374
    .line 375
    const/16 v1, 0x3f2

    .line 376
    .line 377
    goto :goto_d

    .line 378
    :cond_e
    const/16 v1, 0x3ec

    .line 379
    .line 380
    goto :goto_d

    .line 381
    :goto_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 382
    .line 383
    .line 384
    move-result-wide v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 385
    sub-long/2addr v5, v15

    .line 386
    move-wide v6, v5

    .line 387
    const/4 v5, -0x1

    .line 388
    const/4 v9, 0x0

    .line 389
    move-object v3, v14

    .line 390
    move-object/from16 v8, v19

    .line 391
    .line 392
    :try_start_7
    invoke-virtual/range {v3 .. v9}, Lcom/google/ads/interactivemedia/v3/internal/w8;->a(IIJLjava/lang/String;Ljava/lang/Exception;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 393
    .line 394
    .line 395
    goto :goto_14

    .line 396
    :catch_5
    move-exception v0

    .line 397
    move-object v14, v3

    .line 398
    move-object/from16 v19, v8

    .line 399
    .line 400
    :goto_f
    move-object v9, v0

    .line 401
    goto :goto_11

    .line 402
    :catch_6
    move-exception v0

    .line 403
    goto :goto_f

    .line 404
    :cond_f
    :goto_10
    const/4 v0, 0x5

    .line 405
    :try_start_8
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 409
    goto :goto_14

    .line 410
    :goto_11
    const/4 v0, 0x7

    .line 411
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    if-eqz v12, :cond_12

    .line 416
    .line 417
    if-eqz v14, :cond_12

    .line 418
    .line 419
    if-ne v10, v2, :cond_10

    .line 420
    .line 421
    const/16 v1, 0x3ef

    .line 422
    .line 423
    :goto_12
    move v4, v1

    .line 424
    goto :goto_13

    .line 425
    :cond_10
    if-ne v10, v13, :cond_11

    .line 426
    .line 427
    const/16 v1, 0x3f3

    .line 428
    .line 429
    goto :goto_12

    .line 430
    :cond_11
    const/16 v1, 0x3ed

    .line 431
    .line 432
    goto :goto_12

    .line 433
    :goto_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 434
    .line 435
    .line 436
    move-result-wide v1

    .line 437
    sub-long v6, v1, v15

    .line 438
    .line 439
    const/4 v5, -0x1

    .line 440
    move-object v3, v14

    .line 441
    move-object/from16 v8, v19

    .line 442
    .line 443
    invoke-virtual/range {v3 .. v9}, Lcom/google/ads/interactivemedia/v3/internal/w8;->a(IIJLjava/lang/String;Ljava/lang/Exception;)V

    .line 444
    .line 445
    .line 446
    :cond_12
    :goto_14
    return-object v0
.end method

.method public final m(Lcom/google/ads/interactivemedia/v3/internal/n9;Lcom/google/ads/interactivemedia/v3/internal/h1;Landroid/view/View;Landroid/app/Activity;ZLandroid/content/Context;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v3, p1

    .line 4
    .line 5
    move-object/from16 v4, p2

    .line 6
    .line 7
    iget-boolean v0, v3, Lcom/google/ads/interactivemedia/v3/internal/n9;->n:Z

    .line 8
    .line 9
    const/4 v11, 0x2

    .line 10
    const/4 v12, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/g1;->b()V

    .line 15
    .line 16
    .line 17
    iget-object v0, v4, Lcom/google/ads/interactivemedia/v3/internal/g1;->b:Lcom/google/ads/interactivemedia/v3/internal/j1;

    .line 18
    .line 19
    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/x4;

    .line 20
    .line 21
    const-wide/16 v5, 0x4000

    .line 22
    .line 23
    invoke-virtual {v0, v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/x4;->z0(J)V

    .line 24
    .line 25
    .line 26
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/p8;

    .line 27
    .line 28
    invoke-direct {v0, v11, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/p8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    new-array v2, v2, [Ljava/util/concurrent/Callable;

    .line 32
    .line 33
    aput-object v0, v2, v12

    .line 34
    .line 35
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    goto/16 :goto_a

    .line 40
    .line 41
    :cond_0
    monitor-enter p0

    .line 42
    :try_start_0
    iget-object v0, v1, Lcom/google/ads/interactivemedia/v3/internal/z8;->a:Landroid/view/MotionEvent;

    .line 43
    .line 44
    iget-object v5, v1, Lcom/google/ads/interactivemedia/v3/internal/z8;->G:Landroid/util/DisplayMetrics;

    .line 45
    .line 46
    invoke-static {v3, v0, v5}, Lcom/google/ads/interactivemedia/v3/internal/z8;->l(Lcom/google/ads/interactivemedia/v3/internal/n9;Landroid/view/MotionEvent;Landroid/util/DisplayMetrics;)Lcom/google/ads/interactivemedia/v3/internal/p9;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/p9;->a:Ljava/lang/Long;

    .line 51
    .line 52
    if-eqz v5, :cond_1

    .line 53
    .line 54
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 55
    .line 56
    .line 57
    move-result-wide v5

    .line 58
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/g1;->b()V

    .line 59
    .line 60
    .line 61
    iget-object v7, v4, Lcom/google/ads/interactivemedia/v3/internal/g1;->b:Lcom/google/ads/interactivemedia/v3/internal/j1;

    .line 62
    .line 63
    check-cast v7, Lcom/google/ads/interactivemedia/v3/internal/x4;

    .line 64
    .line 65
    invoke-virtual {v7, v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/x4;->v0(J)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catchall_0
    move-exception v0

    .line 70
    goto/16 :goto_b

    .line 71
    .line 72
    :cond_1
    :goto_0
    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/p9;->b:Ljava/lang/Long;

    .line 73
    .line 74
    if-eqz v5, :cond_2

    .line 75
    .line 76
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 77
    .line 78
    .line 79
    move-result-wide v5

    .line 80
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/g1;->b()V

    .line 81
    .line 82
    .line 83
    iget-object v7, v4, Lcom/google/ads/interactivemedia/v3/internal/g1;->b:Lcom/google/ads/interactivemedia/v3/internal/j1;

    .line 84
    .line 85
    check-cast v7, Lcom/google/ads/interactivemedia/v3/internal/x4;

    .line 86
    .line 87
    invoke-virtual {v7, v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/x4;->w0(J)V

    .line 88
    .line 89
    .line 90
    :cond_2
    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/p9;->c:Ljava/lang/Long;

    .line 91
    .line 92
    if-eqz v5, :cond_3

    .line 93
    .line 94
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 95
    .line 96
    .line 97
    move-result-wide v5

    .line 98
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/g1;->b()V

    .line 99
    .line 100
    .line 101
    iget-object v7, v4, Lcom/google/ads/interactivemedia/v3/internal/g1;->b:Lcom/google/ads/interactivemedia/v3/internal/j1;

    .line 102
    .line 103
    check-cast v7, Lcom/google/ads/interactivemedia/v3/internal/x4;

    .line 104
    .line 105
    invoke-virtual {v7, v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/x4;->x0(J)V

    .line 106
    .line 107
    .line 108
    :cond_3
    iget-boolean v5, v1, Lcom/google/ads/interactivemedia/v3/internal/z8;->F:Z

    .line 109
    .line 110
    if-eqz v5, :cond_5

    .line 111
    .line 112
    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/p9;->d:Ljava/lang/Long;

    .line 113
    .line 114
    if-eqz v5, :cond_4

    .line 115
    .line 116
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 117
    .line 118
    .line 119
    move-result-wide v5

    .line 120
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/g1;->b()V

    .line 121
    .line 122
    .line 123
    iget-object v7, v4, Lcom/google/ads/interactivemedia/v3/internal/g1;->b:Lcom/google/ads/interactivemedia/v3/internal/j1;

    .line 124
    .line 125
    check-cast v7, Lcom/google/ads/interactivemedia/v3/internal/x4;

    .line 126
    .line 127
    invoke-virtual {v7, v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/x4;->w(J)V

    .line 128
    .line 129
    .line 130
    :cond_4
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/p9;->e:Ljava/lang/Long;

    .line 131
    .line 132
    if-eqz v0, :cond_5

    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 135
    .line 136
    .line 137
    move-result-wide v5

    .line 138
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/g1;->b()V

    .line 139
    .line 140
    .line 141
    iget-object v0, v4, Lcom/google/ads/interactivemedia/v3/internal/g1;->b:Lcom/google/ads/interactivemedia/v3/internal/j1;

    .line 142
    .line 143
    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/x4;

    .line 144
    .line 145
    invoke-virtual {v0, v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/x4;->x(J)V
    :try_end_0
    .catch Lcom/google/ads/interactivemedia/v3/internal/zzir; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    .line 147
    .line 148
    :catch_0
    :cond_5
    :try_start_1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/u4;->s()Lcom/google/ads/interactivemedia/v3/internal/s4;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    iget-wide v5, v1, Lcom/google/ads/interactivemedia/v3/internal/z8;->c:J

    .line 153
    .line 154
    const-wide/16 v7, 0x0

    .line 155
    .line 156
    cmp-long v5, v5, v7

    .line 157
    .line 158
    const/4 v6, 0x0

    .line 159
    if-lez v5, :cond_8

    .line 160
    .line 161
    iget-object v5, v1, Lcom/google/ads/interactivemedia/v3/internal/z8;->G:Landroid/util/DisplayMetrics;

    .line 162
    .line 163
    sget-object v9, Lcom/google/ads/interactivemedia/v3/internal/q9;->a:[C

    .line 164
    .line 165
    if-eqz v5, :cond_6

    .line 166
    .line 167
    iget v9, v5, Landroid/util/DisplayMetrics;->density:F

    .line 168
    .line 169
    cmpl-float v9, v9, v6

    .line 170
    .line 171
    if-eqz v9, :cond_6

    .line 172
    .line 173
    move v9, v2

    .line 174
    goto :goto_1

    .line 175
    :cond_6
    move v9, v12

    .line 176
    :goto_1
    if-eqz v9, :cond_8

    .line 177
    .line 178
    iget-wide v9, v1, Lcom/google/ads/interactivemedia/v3/internal/z8;->w:D

    .line 179
    .line 180
    invoke-static {v9, v10, v5}, Lcom/google/ads/interactivemedia/v3/internal/q9;->b(DLandroid/util/DisplayMetrics;)J

    .line 181
    .line 182
    .line 183
    move-result-wide v9

    .line 184
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/g1;->b()V

    .line 185
    .line 186
    .line 187
    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/g1;->b:Lcom/google/ads/interactivemedia/v3/internal/j1;

    .line 188
    .line 189
    check-cast v5, Lcom/google/ads/interactivemedia/v3/internal/u4;

    .line 190
    .line 191
    invoke-virtual {v5, v9, v10}, Lcom/google/ads/interactivemedia/v3/internal/u4;->E(J)V

    .line 192
    .line 193
    .line 194
    iget v5, v1, Lcom/google/ads/interactivemedia/v3/internal/z8;->B:F

    .line 195
    .line 196
    iget v9, v1, Lcom/google/ads/interactivemedia/v3/internal/z8;->z:F

    .line 197
    .line 198
    sub-float/2addr v5, v9

    .line 199
    iget-object v9, v1, Lcom/google/ads/interactivemedia/v3/internal/z8;->G:Landroid/util/DisplayMetrics;

    .line 200
    .line 201
    float-to-double v13, v5

    .line 202
    invoke-static {v13, v14, v9}, Lcom/google/ads/interactivemedia/v3/internal/q9;->b(DLandroid/util/DisplayMetrics;)J

    .line 203
    .line 204
    .line 205
    move-result-wide v9

    .line 206
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/g1;->b()V

    .line 207
    .line 208
    .line 209
    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/g1;->b:Lcom/google/ads/interactivemedia/v3/internal/j1;

    .line 210
    .line 211
    check-cast v5, Lcom/google/ads/interactivemedia/v3/internal/u4;

    .line 212
    .line 213
    invoke-virtual {v5, v9, v10}, Lcom/google/ads/interactivemedia/v3/internal/u4;->F(J)V

    .line 214
    .line 215
    .line 216
    iget v5, v1, Lcom/google/ads/interactivemedia/v3/internal/z8;->C:F

    .line 217
    .line 218
    iget v9, v1, Lcom/google/ads/interactivemedia/v3/internal/z8;->A:F

    .line 219
    .line 220
    sub-float/2addr v5, v9

    .line 221
    iget-object v9, v1, Lcom/google/ads/interactivemedia/v3/internal/z8;->G:Landroid/util/DisplayMetrics;

    .line 222
    .line 223
    float-to-double v13, v5

    .line 224
    invoke-static {v13, v14, v9}, Lcom/google/ads/interactivemedia/v3/internal/q9;->b(DLandroid/util/DisplayMetrics;)J

    .line 225
    .line 226
    .line 227
    move-result-wide v9

    .line 228
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/g1;->b()V

    .line 229
    .line 230
    .line 231
    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/g1;->b:Lcom/google/ads/interactivemedia/v3/internal/j1;

    .line 232
    .line 233
    check-cast v5, Lcom/google/ads/interactivemedia/v3/internal/u4;

    .line 234
    .line 235
    invoke-virtual {v5, v9, v10}, Lcom/google/ads/interactivemedia/v3/internal/u4;->G(J)V

    .line 236
    .line 237
    .line 238
    iget v5, v1, Lcom/google/ads/interactivemedia/v3/internal/z8;->z:F

    .line 239
    .line 240
    float-to-double v9, v5

    .line 241
    iget-object v5, v1, Lcom/google/ads/interactivemedia/v3/internal/z8;->G:Landroid/util/DisplayMetrics;

    .line 242
    .line 243
    invoke-static {v9, v10, v5}, Lcom/google/ads/interactivemedia/v3/internal/q9;->b(DLandroid/util/DisplayMetrics;)J

    .line 244
    .line 245
    .line 246
    move-result-wide v9

    .line 247
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/g1;->b()V

    .line 248
    .line 249
    .line 250
    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/g1;->b:Lcom/google/ads/interactivemedia/v3/internal/j1;

    .line 251
    .line 252
    check-cast v5, Lcom/google/ads/interactivemedia/v3/internal/u4;

    .line 253
    .line 254
    invoke-virtual {v5, v9, v10}, Lcom/google/ads/interactivemedia/v3/internal/u4;->J(J)V

    .line 255
    .line 256
    .line 257
    iget v5, v1, Lcom/google/ads/interactivemedia/v3/internal/z8;->A:F

    .line 258
    .line 259
    float-to-double v9, v5

    .line 260
    iget-object v5, v1, Lcom/google/ads/interactivemedia/v3/internal/z8;->G:Landroid/util/DisplayMetrics;

    .line 261
    .line 262
    invoke-static {v9, v10, v5}, Lcom/google/ads/interactivemedia/v3/internal/q9;->b(DLandroid/util/DisplayMetrics;)J

    .line 263
    .line 264
    .line 265
    move-result-wide v9

    .line 266
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/g1;->b()V

    .line 267
    .line 268
    .line 269
    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/g1;->b:Lcom/google/ads/interactivemedia/v3/internal/j1;

    .line 270
    .line 271
    check-cast v5, Lcom/google/ads/interactivemedia/v3/internal/u4;

    .line 272
    .line 273
    invoke-virtual {v5, v9, v10}, Lcom/google/ads/interactivemedia/v3/internal/u4;->K(J)V

    .line 274
    .line 275
    .line 276
    iget-boolean v5, v1, Lcom/google/ads/interactivemedia/v3/internal/z8;->F:Z

    .line 277
    .line 278
    if-eqz v5, :cond_8

    .line 279
    .line 280
    iget-object v5, v1, Lcom/google/ads/interactivemedia/v3/internal/z8;->a:Landroid/view/MotionEvent;

    .line 281
    .line 282
    if-eqz v5, :cond_8

    .line 283
    .line 284
    iget v9, v1, Lcom/google/ads/interactivemedia/v3/internal/z8;->z:F

    .line 285
    .line 286
    iget v10, v1, Lcom/google/ads/interactivemedia/v3/internal/z8;->B:F

    .line 287
    .line 288
    sub-float/2addr v9, v10

    .line 289
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getRawX()F

    .line 290
    .line 291
    .line 292
    move-result v5

    .line 293
    add-float/2addr v9, v5

    .line 294
    iget-object v5, v1, Lcom/google/ads/interactivemedia/v3/internal/z8;->a:Landroid/view/MotionEvent;

    .line 295
    .line 296
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getX()F

    .line 297
    .line 298
    .line 299
    move-result v5

    .line 300
    sub-float/2addr v9, v5

    .line 301
    iget-object v5, v1, Lcom/google/ads/interactivemedia/v3/internal/z8;->G:Landroid/util/DisplayMetrics;

    .line 302
    .line 303
    float-to-double v9, v9

    .line 304
    invoke-static {v9, v10, v5}, Lcom/google/ads/interactivemedia/v3/internal/q9;->b(DLandroid/util/DisplayMetrics;)J

    .line 305
    .line 306
    .line 307
    move-result-wide v9

    .line 308
    cmp-long v5, v9, v7

    .line 309
    .line 310
    if-eqz v5, :cond_7

    .line 311
    .line 312
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/g1;->b()V

    .line 313
    .line 314
    .line 315
    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/g1;->b:Lcom/google/ads/interactivemedia/v3/internal/j1;

    .line 316
    .line 317
    check-cast v5, Lcom/google/ads/interactivemedia/v3/internal/u4;

    .line 318
    .line 319
    invoke-virtual {v5, v9, v10}, Lcom/google/ads/interactivemedia/v3/internal/u4;->H(J)V

    .line 320
    .line 321
    .line 322
    :cond_7
    iget v5, v1, Lcom/google/ads/interactivemedia/v3/internal/z8;->A:F

    .line 323
    .line 324
    iget v9, v1, Lcom/google/ads/interactivemedia/v3/internal/z8;->C:F

    .line 325
    .line 326
    sub-float/2addr v5, v9

    .line 327
    iget-object v9, v1, Lcom/google/ads/interactivemedia/v3/internal/z8;->a:Landroid/view/MotionEvent;

    .line 328
    .line 329
    invoke-virtual {v9}, Landroid/view/MotionEvent;->getRawY()F

    .line 330
    .line 331
    .line 332
    move-result v9

    .line 333
    add-float/2addr v5, v9

    .line 334
    iget-object v9, v1, Lcom/google/ads/interactivemedia/v3/internal/z8;->a:Landroid/view/MotionEvent;

    .line 335
    .line 336
    invoke-virtual {v9}, Landroid/view/MotionEvent;->getY()F

    .line 337
    .line 338
    .line 339
    move-result v9

    .line 340
    sub-float/2addr v5, v9

    .line 341
    iget-object v9, v1, Lcom/google/ads/interactivemedia/v3/internal/z8;->G:Landroid/util/DisplayMetrics;

    .line 342
    .line 343
    float-to-double v13, v5

    .line 344
    invoke-static {v13, v14, v9}, Lcom/google/ads/interactivemedia/v3/internal/q9;->b(DLandroid/util/DisplayMetrics;)J

    .line 345
    .line 346
    .line 347
    move-result-wide v9

    .line 348
    cmp-long v5, v9, v7

    .line 349
    .line 350
    if-eqz v5, :cond_8

    .line 351
    .line 352
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/g1;->b()V

    .line 353
    .line 354
    .line 355
    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/g1;->b:Lcom/google/ads/interactivemedia/v3/internal/j1;

    .line 356
    .line 357
    check-cast v5, Lcom/google/ads/interactivemedia/v3/internal/u4;

    .line 358
    .line 359
    invoke-virtual {v5, v9, v10}, Lcom/google/ads/interactivemedia/v3/internal/u4;->I(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 360
    .line 361
    .line 362
    :cond_8
    :try_start_2
    iget-object v5, v1, Lcom/google/ads/interactivemedia/v3/internal/z8;->a:Landroid/view/MotionEvent;

    .line 363
    .line 364
    invoke-virtual {v1, v5}, Lcom/google/ads/interactivemedia/v3/internal/z8;->g(Landroid/view/MotionEvent;)Lcom/google/ads/interactivemedia/v3/internal/p9;

    .line 365
    .line 366
    .line 367
    move-result-object v5

    .line 368
    iget-object v9, v5, Lcom/google/ads/interactivemedia/v3/internal/p9;->a:Ljava/lang/Long;

    .line 369
    .line 370
    if-eqz v9, :cond_9

    .line 371
    .line 372
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 373
    .line 374
    .line 375
    move-result-wide v9

    .line 376
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/g1;->b()V

    .line 377
    .line 378
    .line 379
    iget-object v13, v0, Lcom/google/ads/interactivemedia/v3/internal/g1;->b:Lcom/google/ads/interactivemedia/v3/internal/j1;

    .line 380
    .line 381
    check-cast v13, Lcom/google/ads/interactivemedia/v3/internal/u4;

    .line 382
    .line 383
    invoke-virtual {v13, v9, v10}, Lcom/google/ads/interactivemedia/v3/internal/u4;->t(J)V

    .line 384
    .line 385
    .line 386
    :cond_9
    iget-object v9, v5, Lcom/google/ads/interactivemedia/v3/internal/p9;->b:Ljava/lang/Long;

    .line 387
    .line 388
    if-eqz v9, :cond_a

    .line 389
    .line 390
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 391
    .line 392
    .line 393
    move-result-wide v9

    .line 394
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/g1;->b()V

    .line 395
    .line 396
    .line 397
    iget-object v13, v0, Lcom/google/ads/interactivemedia/v3/internal/g1;->b:Lcom/google/ads/interactivemedia/v3/internal/j1;

    .line 398
    .line 399
    check-cast v13, Lcom/google/ads/interactivemedia/v3/internal/u4;

    .line 400
    .line 401
    invoke-virtual {v13, v9, v10}, Lcom/google/ads/interactivemedia/v3/internal/u4;->u(J)V

    .line 402
    .line 403
    .line 404
    :cond_a
    iget-object v9, v5, Lcom/google/ads/interactivemedia/v3/internal/p9;->c:Ljava/lang/Long;

    .line 405
    .line 406
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 407
    .line 408
    .line 409
    move-result-wide v9

    .line 410
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/g1;->b()V

    .line 411
    .line 412
    .line 413
    iget-object v13, v0, Lcom/google/ads/interactivemedia/v3/internal/g1;->b:Lcom/google/ads/interactivemedia/v3/internal/j1;

    .line 414
    .line 415
    check-cast v13, Lcom/google/ads/interactivemedia/v3/internal/u4;

    .line 416
    .line 417
    invoke-virtual {v13, v9, v10}, Lcom/google/ads/interactivemedia/v3/internal/u4;->A(J)V

    .line 418
    .line 419
    .line 420
    iget-boolean v9, v1, Lcom/google/ads/interactivemedia/v3/internal/z8;->F:Z

    .line 421
    .line 422
    if-eqz v9, :cond_16

    .line 423
    .line 424
    iget-object v9, v5, Lcom/google/ads/interactivemedia/v3/internal/p9;->e:Ljava/lang/Long;

    .line 425
    .line 426
    if-eqz v9, :cond_b

    .line 427
    .line 428
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 429
    .line 430
    .line 431
    move-result-wide v9

    .line 432
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/g1;->b()V

    .line 433
    .line 434
    .line 435
    iget-object v13, v0, Lcom/google/ads/interactivemedia/v3/internal/g1;->b:Lcom/google/ads/interactivemedia/v3/internal/j1;

    .line 436
    .line 437
    check-cast v13, Lcom/google/ads/interactivemedia/v3/internal/u4;

    .line 438
    .line 439
    invoke-virtual {v13, v9, v10}, Lcom/google/ads/interactivemedia/v3/internal/u4;->v(J)V

    .line 440
    .line 441
    .line 442
    :cond_b
    iget-object v9, v5, Lcom/google/ads/interactivemedia/v3/internal/p9;->d:Ljava/lang/Long;

    .line 443
    .line 444
    if-eqz v9, :cond_c

    .line 445
    .line 446
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 447
    .line 448
    .line 449
    move-result-wide v9

    .line 450
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/g1;->b()V

    .line 451
    .line 452
    .line 453
    iget-object v13, v0, Lcom/google/ads/interactivemedia/v3/internal/g1;->b:Lcom/google/ads/interactivemedia/v3/internal/j1;

    .line 454
    .line 455
    check-cast v13, Lcom/google/ads/interactivemedia/v3/internal/u4;

    .line 456
    .line 457
    invoke-virtual {v13, v9, v10}, Lcom/google/ads/interactivemedia/v3/internal/u4;->y(J)V

    .line 458
    .line 459
    .line 460
    :cond_c
    iget-object v9, v5, Lcom/google/ads/interactivemedia/v3/internal/p9;->f:Ljava/lang/Long;

    .line 461
    .line 462
    if-eqz v9, :cond_e

    .line 463
    .line 464
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 465
    .line 466
    .line 467
    move-result-wide v9

    .line 468
    cmp-long v9, v9, v7

    .line 469
    .line 470
    if-eqz v9, :cond_d

    .line 471
    .line 472
    move v9, v11

    .line 473
    goto :goto_2

    .line 474
    :cond_d
    move v9, v2

    .line 475
    :goto_2
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/g1;->b()V

    .line 476
    .line 477
    .line 478
    iget-object v10, v0, Lcom/google/ads/interactivemedia/v3/internal/g1;->b:Lcom/google/ads/interactivemedia/v3/internal/j1;

    .line 479
    .line 480
    check-cast v10, Lcom/google/ads/interactivemedia/v3/internal/u4;

    .line 481
    .line 482
    invoke-virtual {v10, v9}, Lcom/google/ads/interactivemedia/v3/internal/u4;->L(I)V

    .line 483
    .line 484
    .line 485
    :cond_e
    iget-wide v9, v1, Lcom/google/ads/interactivemedia/v3/internal/z8;->d:J

    .line 486
    .line 487
    cmp-long v13, v9, v7

    .line 488
    .line 489
    if-lez v13, :cond_12

    .line 490
    .line 491
    iget-object v13, v1, Lcom/google/ads/interactivemedia/v3/internal/z8;->G:Landroid/util/DisplayMetrics;

    .line 492
    .line 493
    sget-object v14, Lcom/google/ads/interactivemedia/v3/internal/q9;->a:[C

    .line 494
    .line 495
    if-eqz v13, :cond_f

    .line 496
    .line 497
    iget v13, v13, Landroid/util/DisplayMetrics;->density:F

    .line 498
    .line 499
    cmpl-float v6, v13, v6

    .line 500
    .line 501
    if-eqz v6, :cond_f

    .line 502
    .line 503
    move v6, v2

    .line 504
    goto :goto_3

    .line 505
    :cond_f
    move v6, v12

    .line 506
    :goto_3
    if-eqz v6, :cond_10

    .line 507
    .line 508
    iget-wide v13, v1, Lcom/google/ads/interactivemedia/v3/internal/z8;->v:J

    .line 509
    .line 510
    long-to-double v13, v13

    .line 511
    long-to-double v9, v9

    .line 512
    div-double/2addr v13, v9

    .line 513
    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    .line 514
    .line 515
    .line 516
    move-result-wide v9

    .line 517
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 518
    .line 519
    .line 520
    move-result-object v6

    .line 521
    goto :goto_4

    .line 522
    :cond_10
    const/4 v6, 0x0

    .line 523
    :goto_4
    if-eqz v6, :cond_11

    .line 524
    .line 525
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 526
    .line 527
    .line 528
    move-result-wide v9

    .line 529
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/g1;->b()V

    .line 530
    .line 531
    .line 532
    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/internal/g1;->b:Lcom/google/ads/interactivemedia/v3/internal/j1;

    .line 533
    .line 534
    check-cast v6, Lcom/google/ads/interactivemedia/v3/internal/u4;

    .line 535
    .line 536
    invoke-virtual {v6, v9, v10}, Lcom/google/ads/interactivemedia/v3/internal/u4;->w(J)V

    .line 537
    .line 538
    .line 539
    goto :goto_5

    .line 540
    :cond_11
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/g1;->b()V

    .line 541
    .line 542
    .line 543
    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/internal/g1;->b:Lcom/google/ads/interactivemedia/v3/internal/j1;

    .line 544
    .line 545
    check-cast v6, Lcom/google/ads/interactivemedia/v3/internal/u4;

    .line 546
    .line 547
    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/internal/u4;->x()V

    .line 548
    .line 549
    .line 550
    :goto_5
    iget-wide v9, v1, Lcom/google/ads/interactivemedia/v3/internal/z8;->p:J

    .line 551
    .line 552
    long-to-double v9, v9

    .line 553
    iget-wide v13, v1, Lcom/google/ads/interactivemedia/v3/internal/z8;->d:J

    .line 554
    .line 555
    long-to-double v13, v13

    .line 556
    div-double/2addr v9, v13

    .line 557
    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    .line 558
    .line 559
    .line 560
    move-result-wide v9

    .line 561
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/g1;->b()V

    .line 562
    .line 563
    .line 564
    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/internal/g1;->b:Lcom/google/ads/interactivemedia/v3/internal/j1;

    .line 565
    .line 566
    check-cast v6, Lcom/google/ads/interactivemedia/v3/internal/u4;

    .line 567
    .line 568
    invoke-virtual {v6, v9, v10}, Lcom/google/ads/interactivemedia/v3/internal/u4;->z(J)V

    .line 569
    .line 570
    .line 571
    :cond_12
    iget-object v6, v5, Lcom/google/ads/interactivemedia/v3/internal/p9;->i:Ljava/lang/Long;

    .line 572
    .line 573
    if-eqz v6, :cond_13

    .line 574
    .line 575
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 576
    .line 577
    .line 578
    move-result-wide v9

    .line 579
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/g1;->b()V

    .line 580
    .line 581
    .line 582
    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/internal/g1;->b:Lcom/google/ads/interactivemedia/v3/internal/j1;

    .line 583
    .line 584
    check-cast v6, Lcom/google/ads/interactivemedia/v3/internal/u4;

    .line 585
    .line 586
    invoke-virtual {v6, v9, v10}, Lcom/google/ads/interactivemedia/v3/internal/u4;->C(J)V

    .line 587
    .line 588
    .line 589
    :cond_13
    iget-object v6, v5, Lcom/google/ads/interactivemedia/v3/internal/p9;->j:Ljava/lang/Long;

    .line 590
    .line 591
    if-eqz v6, :cond_14

    .line 592
    .line 593
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 594
    .line 595
    .line 596
    move-result-wide v9

    .line 597
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/g1;->b()V

    .line 598
    .line 599
    .line 600
    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/internal/g1;->b:Lcom/google/ads/interactivemedia/v3/internal/j1;

    .line 601
    .line 602
    check-cast v6, Lcom/google/ads/interactivemedia/v3/internal/u4;

    .line 603
    .line 604
    invoke-virtual {v6, v9, v10}, Lcom/google/ads/interactivemedia/v3/internal/u4;->B(J)V

    .line 605
    .line 606
    .line 607
    :cond_14
    iget-object v5, v5, Lcom/google/ads/interactivemedia/v3/internal/p9;->k:Ljava/lang/Long;

    .line 608
    .line 609
    if-eqz v5, :cond_16

    .line 610
    .line 611
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 612
    .line 613
    .line 614
    move-result-wide v5

    .line 615
    cmp-long v5, v5, v7

    .line 616
    .line 617
    if-eqz v5, :cond_15

    .line 618
    .line 619
    move v2, v11

    .line 620
    :cond_15
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/g1;->b()V

    .line 621
    .line 622
    .line 623
    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/g1;->b:Lcom/google/ads/interactivemedia/v3/internal/j1;

    .line 624
    .line 625
    check-cast v5, Lcom/google/ads/interactivemedia/v3/internal/u4;

    .line 626
    .line 627
    invoke-virtual {v5, v2}, Lcom/google/ads/interactivemedia/v3/internal/u4;->M(I)V
    :try_end_2
    .catch Lcom/google/ads/interactivemedia/v3/internal/zzir; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 628
    .line 629
    .line 630
    :catch_1
    :cond_16
    :try_start_3
    iget-wide v5, v1, Lcom/google/ads/interactivemedia/v3/internal/z8;->i:J

    .line 631
    .line 632
    cmp-long v2, v5, v7

    .line 633
    .line 634
    if-lez v2, :cond_17

    .line 635
    .line 636
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/g1;->b()V

    .line 637
    .line 638
    .line 639
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/g1;->b:Lcom/google/ads/interactivemedia/v3/internal/j1;

    .line 640
    .line 641
    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/u4;

    .line 642
    .line 643
    invoke-virtual {v2, v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/u4;->D(J)V

    .line 644
    .line 645
    .line 646
    :cond_17
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/g1;->d()Lcom/google/ads/interactivemedia/v3/internal/j1;

    .line 647
    .line 648
    .line 649
    move-result-object v0

    .line 650
    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/u4;

    .line 651
    .line 652
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/g1;->b()V

    .line 653
    .line 654
    .line 655
    iget-object v2, v4, Lcom/google/ads/interactivemedia/v3/internal/g1;->b:Lcom/google/ads/interactivemedia/v3/internal/j1;

    .line 656
    .line 657
    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/x4;

    .line 658
    .line 659
    invoke-virtual {v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/x4;->J(Lcom/google/ads/interactivemedia/v3/internal/u4;)V

    .line 660
    .line 661
    .line 662
    iget-wide v5, v1, Lcom/google/ads/interactivemedia/v3/internal/z8;->c:J

    .line 663
    .line 664
    cmp-long v0, v5, v7

    .line 665
    .line 666
    if-lez v0, :cond_18

    .line 667
    .line 668
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/g1;->b()V

    .line 669
    .line 670
    .line 671
    iget-object v0, v4, Lcom/google/ads/interactivemedia/v3/internal/g1;->b:Lcom/google/ads/interactivemedia/v3/internal/j1;

    .line 672
    .line 673
    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/x4;

    .line 674
    .line 675
    invoke-virtual {v0, v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/x4;->A(J)V

    .line 676
    .line 677
    .line 678
    :cond_18
    iget-wide v5, v1, Lcom/google/ads/interactivemedia/v3/internal/z8;->d:J

    .line 679
    .line 680
    cmp-long v0, v5, v7

    .line 681
    .line 682
    if-lez v0, :cond_19

    .line 683
    .line 684
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/g1;->b()V

    .line 685
    .line 686
    .line 687
    iget-object v0, v4, Lcom/google/ads/interactivemedia/v3/internal/g1;->b:Lcom/google/ads/interactivemedia/v3/internal/j1;

    .line 688
    .line 689
    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/x4;

    .line 690
    .line 691
    invoke-virtual {v0, v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/x4;->z(J)V

    .line 692
    .line 693
    .line 694
    :cond_19
    iget-wide v5, v1, Lcom/google/ads/interactivemedia/v3/internal/z8;->f:J

    .line 695
    .line 696
    cmp-long v0, v5, v7

    .line 697
    .line 698
    if-lez v0, :cond_1a

    .line 699
    .line 700
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/g1;->b()V

    .line 701
    .line 702
    .line 703
    iget-object v0, v4, Lcom/google/ads/interactivemedia/v3/internal/g1;->b:Lcom/google/ads/interactivemedia/v3/internal/j1;

    .line 704
    .line 705
    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/x4;

    .line 706
    .line 707
    invoke-virtual {v0, v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/x4;->y(J)V

    .line 708
    .line 709
    .line 710
    :cond_1a
    iget-wide v5, v1, Lcom/google/ads/interactivemedia/v3/internal/z8;->g:J

    .line 711
    .line 712
    cmp-long v0, v5, v7

    .line 713
    .line 714
    if-lez v0, :cond_1b

    .line 715
    .line 716
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/g1;->b()V

    .line 717
    .line 718
    .line 719
    iget-object v0, v4, Lcom/google/ads/interactivemedia/v3/internal/g1;->b:Lcom/google/ads/interactivemedia/v3/internal/j1;

    .line 720
    .line 721
    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/x4;

    .line 722
    .line 723
    invoke-virtual {v0, v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/x4;->B(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 724
    .line 725
    .line 726
    :cond_1b
    :try_start_4
    iget-object v0, v1, Lcom/google/ads/interactivemedia/v3/internal/z8;->b:Ljava/util/LinkedList;

    .line 727
    .line 728
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 729
    .line 730
    .line 731
    move-result v2

    .line 732
    add-int/lit8 v2, v2, -0x1

    .line 733
    .line 734
    if-lez v2, :cond_1c

    .line 735
    .line 736
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/g1;->b()V

    .line 737
    .line 738
    .line 739
    iget-object v5, v4, Lcom/google/ads/interactivemedia/v3/internal/g1;->b:Lcom/google/ads/interactivemedia/v3/internal/j1;

    .line 740
    .line 741
    check-cast v5, Lcom/google/ads/interactivemedia/v3/internal/x4;

    .line 742
    .line 743
    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/x4;->L()V

    .line 744
    .line 745
    .line 746
    move v5, v12

    .line 747
    :goto_6
    if-ge v5, v2, :cond_1c

    .line 748
    .line 749
    sget-object v6, Lcom/google/ads/interactivemedia/v3/internal/z8;->K:Lcom/google/ads/interactivemedia/v3/internal/n9;

    .line 750
    .line 751
    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 752
    .line 753
    .line 754
    move-result-object v7

    .line 755
    check-cast v7, Landroid/view/MotionEvent;

    .line 756
    .line 757
    iget-object v8, v1, Lcom/google/ads/interactivemedia/v3/internal/z8;->G:Landroid/util/DisplayMetrics;

    .line 758
    .line 759
    invoke-static {v6, v7, v8}, Lcom/google/ads/interactivemedia/v3/internal/z8;->l(Lcom/google/ads/interactivemedia/v3/internal/n9;Landroid/view/MotionEvent;Landroid/util/DisplayMetrics;)Lcom/google/ads/interactivemedia/v3/internal/p9;

    .line 760
    .line 761
    .line 762
    move-result-object v6

    .line 763
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/u4;->s()Lcom/google/ads/interactivemedia/v3/internal/s4;

    .line 764
    .line 765
    .line 766
    move-result-object v7

    .line 767
    iget-object v8, v6, Lcom/google/ads/interactivemedia/v3/internal/p9;->a:Ljava/lang/Long;

    .line 768
    .line 769
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 770
    .line 771
    .line 772
    move-result-wide v8

    .line 773
    invoke-virtual {v7}, Lcom/google/ads/interactivemedia/v3/internal/g1;->b()V

    .line 774
    .line 775
    .line 776
    iget-object v10, v7, Lcom/google/ads/interactivemedia/v3/internal/g1;->b:Lcom/google/ads/interactivemedia/v3/internal/j1;

    .line 777
    .line 778
    check-cast v10, Lcom/google/ads/interactivemedia/v3/internal/u4;

    .line 779
    .line 780
    invoke-virtual {v10, v8, v9}, Lcom/google/ads/interactivemedia/v3/internal/u4;->t(J)V

    .line 781
    .line 782
    .line 783
    iget-object v6, v6, Lcom/google/ads/interactivemedia/v3/internal/p9;->b:Ljava/lang/Long;

    .line 784
    .line 785
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 786
    .line 787
    .line 788
    move-result-wide v8

    .line 789
    invoke-virtual {v7}, Lcom/google/ads/interactivemedia/v3/internal/g1;->b()V

    .line 790
    .line 791
    .line 792
    iget-object v6, v7, Lcom/google/ads/interactivemedia/v3/internal/g1;->b:Lcom/google/ads/interactivemedia/v3/internal/j1;

    .line 793
    .line 794
    check-cast v6, Lcom/google/ads/interactivemedia/v3/internal/u4;

    .line 795
    .line 796
    invoke-virtual {v6, v8, v9}, Lcom/google/ads/interactivemedia/v3/internal/u4;->u(J)V

    .line 797
    .line 798
    .line 799
    invoke-virtual {v7}, Lcom/google/ads/interactivemedia/v3/internal/g1;->d()Lcom/google/ads/interactivemedia/v3/internal/j1;

    .line 800
    .line 801
    .line 802
    move-result-object v6

    .line 803
    check-cast v6, Lcom/google/ads/interactivemedia/v3/internal/u4;

    .line 804
    .line 805
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/g1;->b()V

    .line 806
    .line 807
    .line 808
    iget-object v7, v4, Lcom/google/ads/interactivemedia/v3/internal/g1;->b:Lcom/google/ads/interactivemedia/v3/internal/j1;

    .line 809
    .line 810
    check-cast v7, Lcom/google/ads/interactivemedia/v3/internal/x4;

    .line 811
    .line 812
    invoke-virtual {v7, v6}, Lcom/google/ads/interactivemedia/v3/internal/x4;->K(Lcom/google/ads/interactivemedia/v3/internal/u4;)V
    :try_end_4
    .catch Lcom/google/ads/interactivemedia/v3/internal/zzir; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 813
    .line 814
    .line 815
    add-int/lit8 v5, v5, 0x1

    .line 816
    .line 817
    goto :goto_6

    .line 818
    :cond_1c
    monitor-exit p0

    .line 819
    goto :goto_7

    .line 820
    :catch_2
    :try_start_5
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/g1;->b()V

    .line 821
    .line 822
    .line 823
    iget-object v0, v4, Lcom/google/ads/interactivemedia/v3/internal/g1;->b:Lcom/google/ads/interactivemedia/v3/internal/j1;

    .line 824
    .line 825
    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/x4;

    .line 826
    .line 827
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/x4;->L()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 828
    .line 829
    .line 830
    monitor-exit p0

    .line 831
    :goto_7
    new-instance v0, Ljava/util/ArrayList;

    .line 832
    .line 833
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 834
    .line 835
    .line 836
    iget-object v2, v3, Lcom/google/ads/interactivemedia/v3/internal/n9;->b:Ljava/util/concurrent/ExecutorService;

    .line 837
    .line 838
    if-nez v2, :cond_1d

    .line 839
    .line 840
    goto/16 :goto_a

    .line 841
    .line 842
    :cond_1d
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/n9;->e()I

    .line 843
    .line 844
    .line 845
    move-result v5

    .line 846
    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/ib;->p:Lcom/google/ads/interactivemedia/v3/internal/db;

    .line 847
    .line 848
    sget-object v13, Lcom/google/ads/interactivemedia/v3/internal/bb;->e:Lcom/google/ads/interactivemedia/v3/internal/bb;

    .line 849
    .line 850
    iget-object v6, v13, Lcom/google/ads/interactivemedia/v3/internal/bb;->c:Lcom/google/ads/interactivemedia/v3/internal/hb;

    .line 851
    .line 852
    invoke-virtual {v6, v2}, Lcom/google/ads/interactivemedia/v3/internal/hb;->a(Lcom/google/ads/interactivemedia/v3/internal/db;)Ljava/lang/Object;

    .line 853
    .line 854
    .line 855
    move-result-object v2

    .line 856
    check-cast v2, Ljava/lang/Boolean;

    .line 857
    .line 858
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 859
    .line 860
    .line 861
    move-result v2

    .line 862
    if-eqz v2, :cond_20

    .line 863
    .line 864
    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/z8;->I:Landroidx/compose/foundation/text/selection/n0;

    .line 865
    .line 866
    new-instance v6, Lcom/google/ads/interactivemedia/v3/internal/x9;

    .line 867
    .line 868
    iget-object v2, v2, Landroidx/compose/foundation/text/selection/n0;->d:Ljava/lang/Object;

    .line 869
    .line 870
    move-object v7, v2

    .line 871
    check-cast v7, Lcom/google/ads/interactivemedia/v3/internal/a;

    .line 872
    .line 873
    sget-object v8, Lcom/google/ads/interactivemedia/v3/internal/z8;->R:Lcom/google/ads/interactivemedia/v3/internal/q8;

    .line 874
    .line 875
    move-object v2, v6

    .line 876
    move-object/from16 v6, p6

    .line 877
    .line 878
    invoke-direct/range {v2 .. v8}, Lcom/google/ads/interactivemedia/v3/internal/x9;-><init>(Lcom/google/ads/interactivemedia/v3/internal/n9;Lcom/google/ads/interactivemedia/v3/internal/h1;ILandroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/a;Lcom/google/ads/interactivemedia/v3/internal/q8;)V

    .line 879
    .line 880
    .line 881
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 882
    .line 883
    .line 884
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/w9;

    .line 885
    .line 886
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/w9;-><init>(Lcom/google/ads/interactivemedia/v3/internal/n9;Lcom/google/ads/interactivemedia/v3/internal/h1;ILandroid/content/Context;)V

    .line 887
    .line 888
    .line 889
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 890
    .line 891
    .line 892
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/v9;

    .line 893
    .line 894
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/v9;-><init>(Lcom/google/ads/interactivemedia/v3/internal/n9;Lcom/google/ads/interactivemedia/v3/internal/h1;ILandroid/content/Context;)V

    .line 895
    .line 896
    .line 897
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 898
    .line 899
    .line 900
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/y9;

    .line 901
    .line 902
    const/4 v6, 0x4

    .line 903
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/y9;-><init>(Lcom/google/ads/interactivemedia/v3/internal/n9;Lcom/google/ads/interactivemedia/v3/internal/h1;II)V

    .line 904
    .line 905
    .line 906
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 907
    .line 908
    .line 909
    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/z8;->P:Lcom/google/ads/interactivemedia/v3/internal/u9;

    .line 910
    .line 911
    const-wide/16 v6, -0x1

    .line 912
    .line 913
    if-eqz v2, :cond_1f

    .line 914
    .line 915
    iget-boolean v8, v2, Lcom/google/ads/interactivemedia/v3/internal/u9;->d:Z

    .line 916
    .line 917
    if-eqz v8, :cond_1e

    .line 918
    .line 919
    iget-wide v8, v2, Lcom/google/ads/interactivemedia/v3/internal/u9;->b:J

    .line 920
    .line 921
    iget-wide v14, v2, Lcom/google/ads/interactivemedia/v3/internal/u9;->a:J

    .line 922
    .line 923
    sub-long/2addr v8, v14

    .line 924
    goto :goto_8

    .line 925
    :cond_1e
    move-wide v8, v6

    .line 926
    :goto_8
    iget-wide v14, v2, Lcom/google/ads/interactivemedia/v3/internal/u9;->c:J

    .line 927
    .line 928
    iput-wide v6, v2, Lcom/google/ads/interactivemedia/v3/internal/u9;->c:J

    .line 929
    .line 930
    move-wide v7, v8

    .line 931
    move-wide v9, v14

    .line 932
    goto :goto_9

    .line 933
    :cond_1f
    move-wide v9, v6

    .line 934
    move-wide v7, v9

    .line 935
    :goto_9
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/ba;

    .line 936
    .line 937
    sget-object v6, Lcom/google/ads/interactivemedia/v3/internal/z8;->O:Lcom/google/ads/interactivemedia/v3/internal/b9;

    .line 938
    .line 939
    invoke-direct/range {v2 .. v10}, Lcom/google/ads/interactivemedia/v3/internal/ba;-><init>(Lcom/google/ads/interactivemedia/v3/internal/n9;Lcom/google/ads/interactivemedia/v3/internal/h1;ILcom/google/ads/interactivemedia/v3/internal/b9;JJ)V

    .line 940
    .line 941
    .line 942
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 943
    .line 944
    .line 945
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/y9;

    .line 946
    .line 947
    const/16 v6, 0xb

    .line 948
    .line 949
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/y9;-><init>(Lcom/google/ads/interactivemedia/v3/internal/n9;Lcom/google/ads/interactivemedia/v3/internal/h1;II)V

    .line 950
    .line 951
    .line 952
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 953
    .line 954
    .line 955
    :cond_20
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/p8;

    .line 956
    .line 957
    invoke-direct {v2, v11, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/p8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 958
    .line 959
    .line 960
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 961
    .line 962
    .line 963
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/y9;

    .line 964
    .line 965
    const/4 v6, 0x3

    .line 966
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/y9;-><init>(Lcom/google/ads/interactivemedia/v3/internal/n9;Lcom/google/ads/interactivemedia/v3/internal/h1;II)V

    .line 967
    .line 968
    .line 969
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 970
    .line 971
    .line 972
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/z9;

    .line 973
    .line 974
    move v7, v5

    .line 975
    sget-wide v5, Lcom/google/ads/interactivemedia/v3/internal/z8;->N:J

    .line 976
    .line 977
    invoke-direct/range {v2 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/z9;-><init>(Lcom/google/ads/interactivemedia/v3/internal/n9;Lcom/google/ads/interactivemedia/v3/internal/h1;JI)V

    .line 978
    .line 979
    .line 980
    move v5, v7

    .line 981
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 982
    .line 983
    .line 984
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/y9;

    .line 985
    .line 986
    invoke-direct {v2, v3, v4, v5, v12}, Lcom/google/ads/interactivemedia/v3/internal/y9;-><init>(Lcom/google/ads/interactivemedia/v3/internal/n9;Lcom/google/ads/interactivemedia/v3/internal/h1;II)V

    .line 987
    .line 988
    .line 989
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 990
    .line 991
    .line 992
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/y9;

    .line 993
    .line 994
    const/16 v6, 0x9

    .line 995
    .line 996
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/y9;-><init>(Lcom/google/ads/interactivemedia/v3/internal/n9;Lcom/google/ads/interactivemedia/v3/internal/h1;II)V

    .line 997
    .line 998
    .line 999
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1000
    .line 1001
    .line 1002
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/y9;

    .line 1003
    .line 1004
    const/16 v6, 0xa

    .line 1005
    .line 1006
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/y9;-><init>(Lcom/google/ads/interactivemedia/v3/internal/n9;Lcom/google/ads/interactivemedia/v3/internal/h1;II)V

    .line 1007
    .line 1008
    .line 1009
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1010
    .line 1011
    .line 1012
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/y9;

    .line 1013
    .line 1014
    invoke-direct {v2, v3, v4, v5, v11}, Lcom/google/ads/interactivemedia/v3/internal/y9;-><init>(Lcom/google/ads/interactivemedia/v3/internal/n9;Lcom/google/ads/interactivemedia/v3/internal/h1;II)V

    .line 1015
    .line 1016
    .line 1017
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1018
    .line 1019
    .line 1020
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/y9;

    .line 1021
    .line 1022
    const/4 v6, 0x7

    .line 1023
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/y9;-><init>(Lcom/google/ads/interactivemedia/v3/internal/n9;Lcom/google/ads/interactivemedia/v3/internal/h1;II)V

    .line 1024
    .line 1025
    .line 1026
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1027
    .line 1028
    .line 1029
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/y9;

    .line 1030
    .line 1031
    const/16 v6, 0xd

    .line 1032
    .line 1033
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/y9;-><init>(Lcom/google/ads/interactivemedia/v3/internal/n9;Lcom/google/ads/interactivemedia/v3/internal/h1;II)V

    .line 1034
    .line 1035
    .line 1036
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1037
    .line 1038
    .line 1039
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/y9;

    .line 1040
    .line 1041
    const/4 v6, 0x6

    .line 1042
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/y9;-><init>(Lcom/google/ads/interactivemedia/v3/internal/n9;Lcom/google/ads/interactivemedia/v3/internal/h1;II)V

    .line 1043
    .line 1044
    .line 1045
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1046
    .line 1047
    .line 1048
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/y9;

    .line 1049
    .line 1050
    const/16 v6, 0xc

    .line 1051
    .line 1052
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/y9;-><init>(Lcom/google/ads/interactivemedia/v3/internal/n9;Lcom/google/ads/interactivemedia/v3/internal/h1;II)V

    .line 1053
    .line 1054
    .line 1055
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1056
    .line 1057
    .line 1058
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/aa;

    .line 1059
    .line 1060
    new-instance v6, Ljava/lang/Throwable;

    .line 1061
    .line 1062
    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    .line 1063
    .line 1064
    .line 1065
    invoke-virtual {v6}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v6

    .line 1069
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/aa;-><init>(Lcom/google/ads/interactivemedia/v3/internal/n9;Lcom/google/ads/interactivemedia/v3/internal/h1;I[Ljava/lang/StackTraceElement;)V

    .line 1070
    .line 1071
    .line 1072
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1073
    .line 1074
    .line 1075
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/aa;

    .line 1076
    .line 1077
    move-object/from16 v6, p3

    .line 1078
    .line 1079
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/aa;-><init>(Lcom/google/ads/interactivemedia/v3/internal/n9;Lcom/google/ads/interactivemedia/v3/internal/h1;ILandroid/view/View;)V

    .line 1080
    .line 1081
    .line 1082
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1083
    .line 1084
    .line 1085
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/da;

    .line 1086
    .line 1087
    invoke-direct {v2, v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/da;-><init>(Lcom/google/ads/interactivemedia/v3/internal/n9;Lcom/google/ads/interactivemedia/v3/internal/h1;I)V

    .line 1088
    .line 1089
    .line 1090
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1091
    .line 1092
    .line 1093
    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/ib;->l:Lcom/google/ads/interactivemedia/v3/internal/db;

    .line 1094
    .line 1095
    iget-object v7, v13, Lcom/google/ads/interactivemedia/v3/internal/bb;->c:Lcom/google/ads/interactivemedia/v3/internal/hb;

    .line 1096
    .line 1097
    invoke-virtual {v7, v2}, Lcom/google/ads/interactivemedia/v3/internal/hb;->a(Lcom/google/ads/interactivemedia/v3/internal/db;)Ljava/lang/Object;

    .line 1098
    .line 1099
    .line 1100
    move-result-object v2

    .line 1101
    check-cast v2, Ljava/lang/Boolean;

    .line 1102
    .line 1103
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1104
    .line 1105
    .line 1106
    move-result v2

    .line 1107
    if-eqz v2, :cond_21

    .line 1108
    .line 1109
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/v9;

    .line 1110
    .line 1111
    move-object/from16 v7, p4

    .line 1112
    .line 1113
    invoke-direct/range {v2 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/v9;-><init>(Lcom/google/ads/interactivemedia/v3/internal/n9;Lcom/google/ads/interactivemedia/v3/internal/h1;ILandroid/view/View;Landroid/app/Activity;)V

    .line 1114
    .line 1115
    .line 1116
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1117
    .line 1118
    .line 1119
    :cond_21
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/y9;

    .line 1120
    .line 1121
    const/4 v6, 0x5

    .line 1122
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/y9;-><init>(Lcom/google/ads/interactivemedia/v3/internal/n9;Lcom/google/ads/interactivemedia/v3/internal/h1;II)V

    .line 1123
    .line 1124
    .line 1125
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1126
    .line 1127
    .line 1128
    if-eqz p5, :cond_22

    .line 1129
    .line 1130
    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/ib;->n:Lcom/google/ads/interactivemedia/v3/internal/db;

    .line 1131
    .line 1132
    iget-object v6, v13, Lcom/google/ads/interactivemedia/v3/internal/bb;->c:Lcom/google/ads/interactivemedia/v3/internal/hb;

    .line 1133
    .line 1134
    invoke-virtual {v6, v2}, Lcom/google/ads/interactivemedia/v3/internal/hb;->a(Lcom/google/ads/interactivemedia/v3/internal/db;)Ljava/lang/Object;

    .line 1135
    .line 1136
    .line 1137
    move-result-object v2

    .line 1138
    check-cast v2, Ljava/lang/Boolean;

    .line 1139
    .line 1140
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1141
    .line 1142
    .line 1143
    move-result v2

    .line 1144
    if-eqz v2, :cond_23

    .line 1145
    .line 1146
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/ea;

    .line 1147
    .line 1148
    iget-object v6, v1, Lcom/google/ads/interactivemedia/v3/internal/z8;->J:Lcom/google/ads/interactivemedia/v3/internal/s9;

    .line 1149
    .line 1150
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/ea;-><init>(Lcom/google/ads/interactivemedia/v3/internal/n9;Lcom/google/ads/interactivemedia/v3/internal/h1;ILcom/google/ads/interactivemedia/v3/internal/s9;)V

    .line 1151
    .line 1152
    .line 1153
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1154
    .line 1155
    .line 1156
    goto :goto_a

    .line 1157
    :cond_22
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/aa;

    .line 1158
    .line 1159
    sget-object v6, Lcom/google/ads/interactivemedia/v3/internal/z8;->Q:Lcom/google/ads/interactivemedia/v3/internal/o9;

    .line 1160
    .line 1161
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/aa;-><init>(Lcom/google/ads/interactivemedia/v3/internal/n9;Lcom/google/ads/interactivemedia/v3/internal/h1;ILcom/google/ads/interactivemedia/v3/internal/o9;)V

    .line 1162
    .line 1163
    .line 1164
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1165
    .line 1166
    .line 1167
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/aa;

    .line 1168
    .line 1169
    iget-object v6, v1, Lcom/google/ads/interactivemedia/v3/internal/z8;->H:Lcom/google/ads/interactivemedia/v3/internal/g9;

    .line 1170
    .line 1171
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/aa;-><init>(Lcom/google/ads/interactivemedia/v3/internal/n9;Lcom/google/ads/interactivemedia/v3/internal/h1;ILcom/google/ads/interactivemedia/v3/internal/g9;)V

    .line 1172
    .line 1173
    .line 1174
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1175
    .line 1176
    .line 1177
    :cond_23
    :goto_a
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/z8;->n(Ljava/util/List;)V

    .line 1178
    .line 1179
    .line 1180
    return-void

    .line 1181
    :goto_b
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1182
    throw v0
.end method

.method public final zze()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final zzf()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final zzl(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/q9;->a:[C

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v7, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x1

    .line 17
    move-object v2, p0

    .line 18
    move-object v3, p1

    .line 19
    invoke-virtual/range {v2 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/z8;->k(Landroid/content/Context;Ljava/lang/String;ILandroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string v0, "The caller must not be called from the UI thread."

    .line 27
    .line 28
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1
.end method
