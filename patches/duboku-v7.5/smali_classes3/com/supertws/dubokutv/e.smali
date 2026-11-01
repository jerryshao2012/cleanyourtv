.class public final Lcom/supertws/dubokutv/e;
.super Ljava/lang/Object;
.source "r8-map-id-8ba8015df6390efac2340e8bc72cbaa0af05ae8dc58e92835996b10ae6d6a13d"

# interfaces
.implements Ldagger/internal/c;


# instance fields
.field public final a:Lcom/supertws/dubokutv/f;

.field public final b:I


# direct methods
.method public constructor <init>(Lcom/supertws/dubokutv/f;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/supertws/dubokutv/e;->a:Lcom/supertws/dubokutv/f;

    .line 5
    .line 6
    iput p2, p0, Lcom/supertws/dubokutv/e;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lcom/supertws/dubokutv/e;->a:Lcom/supertws/dubokutv/f;

    .line 4
    .line 5
    iget v3, p0, Lcom/supertws/dubokutv/e;->b:I

    .line 6
    .line 7
    packed-switch v3, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance v0, Ljava/lang/AssertionError;

    .line 11
    .line 12
    invoke-direct {v0, v3}, Ljava/lang/AssertionError;-><init>(I)V

    .line 13
    .line 14
    .line 15
    throw v0

    .line 16
    :pswitch_0
    iget-object v2, v2, Lcom/supertws/dubokutv/f;->a:Lhb/a;

    .line 17
    .line 18
    iget-object v2, v2, Lhb/a;->a:Landroid/content/Context;

    .line 19
    .line 20
    const-class v3, Lcom/supertws/dubokutv/data/database/FavoriteDatabase;

    .line 21
    .line 22
    const-string v4, "favorite_database"

    .line 23
    .line 24
    invoke-static {v2, v3, v4}, Landroidx/room/z;->d(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/v;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iput-boolean v1, v2, Landroidx/room/v;->p:Z

    .line 29
    .line 30
    iput-boolean v0, v2, Landroidx/room/v;->q:Z

    .line 31
    .line 32
    iput-boolean v1, v2, Landroidx/room/v;->r:Z

    .line 33
    .line 34
    invoke-virtual {v2}, Landroidx/room/v;->b()Landroidx/room/x;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lcom/supertws/dubokutv/data/database/FavoriteDatabase;

    .line 39
    .line 40
    return-object v0

    .line 41
    :pswitch_1
    iget-object v2, v2, Lcom/supertws/dubokutv/f;->a:Lhb/a;

    .line 42
    .line 43
    iget-object v2, v2, Lhb/a;->a:Landroid/content/Context;

    .line 44
    .line 45
    const-class v3, Lcom/supertws/dubokutv/data/database/RecordDatabase;

    .line 46
    .line 47
    const-string v4, "record_database"

    .line 48
    .line 49
    invoke-static {v2, v3, v4}, Landroidx/room/z;->d(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/v;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    iput-boolean v1, v2, Landroidx/room/v;->p:Z

    .line 54
    .line 55
    iput-boolean v0, v2, Landroidx/room/v;->q:Z

    .line 56
    .line 57
    iput-boolean v1, v2, Landroidx/room/v;->r:Z

    .line 58
    .line 59
    invoke-virtual {v2}, Landroidx/room/v;->b()Landroidx/room/x;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    sput-object v0, Lcom/supertws/dubokutv/LanSyncManager;->sRoomDb:Ljava/lang/Object;

    .line 63
    check-cast v0, Lcom/supertws/dubokutv/data/database/RecordDatabase;

    .line 64
    .line 65
    return-object v0

    .line 66
    :pswitch_2
    new-instance v0, Lcom/supertws/dubokutv/d;

    .line 67
    .line 68
    const/4 v1, 0x4

    .line 69
    invoke-direct {v0, p0, v1}, Lcom/supertws/dubokutv/d;-><init>(Lcom/supertws/dubokutv/e;I)V

    .line 70
    .line 71
    .line 72
    return-object v0

    .line 73
    :pswitch_3
    new-instance v0, Lcom/supertws/dubokutv/d;

    .line 74
    .line 75
    const/4 v1, 0x3

    .line 76
    invoke-direct {v0, p0, v1}, Lcom/supertws/dubokutv/d;-><init>(Lcom/supertws/dubokutv/e;I)V

    .line 77
    .line 78
    .line 79
    return-object v0

    .line 80
    :pswitch_4
    new-instance v0, Lcom/supertws/dubokutv/d;

    .line 81
    .line 82
    const/4 v1, 0x2

    .line 83
    invoke-direct {v0, p0, v1}, Lcom/supertws/dubokutv/d;-><init>(Lcom/supertws/dubokutv/e;I)V

    .line 84
    .line 85
    .line 86
    return-object v0

    .line 87
    :pswitch_5
    new-instance v0, Lcom/supertws/dubokutv/d;

    .line 88
    .line 89
    const/4 v1, 0x1

    .line 90
    invoke-direct {v0, p0, v1}, Lcom/supertws/dubokutv/d;-><init>(Lcom/supertws/dubokutv/e;I)V

    .line 91
    .line 92
    .line 93
    return-object v0

    .line 94
    :pswitch_6
    new-instance v0, Lsa/a;

    .line 95
    .line 96
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 97
    .line 98
    .line 99
    return-object v0

    .line 100
    :pswitch_7
    iget-object v0, v2, Lcom/supertws/dubokutv/f;->a:Lhb/a;

    .line 101
    .line 102
    iget-object v0, v0, Lhb/a;->a:Landroid/content/Context;

    .line 103
    .line 104
    sget-object v1, Lcom/supertws/dubokutv/data/local/i;->f:Landroidx/datastore/preferences/a;

    .line 105
    .line 106
    sget-object v2, Lcom/supertws/dubokutv/data/local/i;->a:[Lkotlin/reflect/t;

    .line 107
    .line 108
    const/4 v3, 0x4

    .line 109
    aget-object v2, v2, v3

    .line 110
    .line 111
    invoke-virtual {v1, v0, v2}, Landroidx/datastore/preferences/a;->a(Ljava/lang/Object;Lkotlin/reflect/t;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    check-cast v0, Landroidx/datastore/core/h;

    .line 116
    .line 117
    return-object v0

    .line 118
    :pswitch_8
    iget-object v0, v2, Lcom/supertws/dubokutv/f;->a:Lhb/a;

    .line 119
    .line 120
    iget-object v0, v0, Lhb/a;->a:Landroid/content/Context;

    .line 121
    .line 122
    sget-object v1, Lcom/supertws/dubokutv/data/local/i;->e:Landroidx/datastore/preferences/a;

    .line 123
    .line 124
    sget-object v2, Lcom/supertws/dubokutv/data/local/i;->a:[Lkotlin/reflect/t;

    .line 125
    .line 126
    const/4 v3, 0x3

    .line 127
    aget-object v2, v2, v3

    .line 128
    .line 129
    invoke-virtual {v1, v0, v2}, Landroidx/datastore/preferences/a;->a(Ljava/lang/Object;Lkotlin/reflect/t;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    check-cast v0, Landroidx/datastore/core/h;

    .line 134
    .line 135
    return-object v0

    .line 136
    :pswitch_9
    iget-object v0, v2, Lcom/supertws/dubokutv/f;->a:Lhb/a;

    .line 137
    .line 138
    iget-object v0, v0, Lhb/a;->a:Landroid/content/Context;

    .line 139
    .line 140
    sget-object v1, Lcom/supertws/dubokutv/data/local/i;->d:Landroidx/datastore/preferences/a;

    .line 141
    .line 142
    sget-object v2, Lcom/supertws/dubokutv/data/local/i;->a:[Lkotlin/reflect/t;

    .line 143
    .line 144
    const/4 v3, 0x2

    .line 145
    aget-object v2, v2, v3

    .line 146
    .line 147
    invoke-virtual {v1, v0, v2}, Landroidx/datastore/preferences/a;->a(Ljava/lang/Object;Lkotlin/reflect/t;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    check-cast v0, Landroidx/datastore/core/h;

    .line 152
    .line 153
    return-object v0

    .line 154
    :pswitch_a
    iget-object v1, v2, Lcom/supertws/dubokutv/f;->a:Lhb/a;

    .line 155
    .line 156
    iget-object v1, v1, Lhb/a;->a:Landroid/content/Context;

    .line 157
    .line 158
    sget-object v2, Lcom/supertws/dubokutv/data/local/i;->c:Landroidx/datastore/preferences/a;

    .line 159
    .line 160
    sget-object v3, Lcom/supertws/dubokutv/data/local/i;->a:[Lkotlin/reflect/t;

    .line 161
    .line 162
    aget-object v0, v3, v0

    .line 163
    .line 164
    invoke-virtual {v2, v1, v0}, Landroidx/datastore/preferences/a;->a(Ljava/lang/Object;Lkotlin/reflect/t;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    check-cast v0, Landroidx/datastore/core/h;

    .line 169
    .line 170
    return-object v0

    .line 171
    :pswitch_b
    iget-object v0, v2, Lcom/supertws/dubokutv/f;->a:Lhb/a;

    .line 172
    .line 173
    iget-object v0, v0, Lhb/a;->a:Landroid/content/Context;

    .line 174
    .line 175
    sget-object v2, Lcom/supertws/dubokutv/data/local/i;->b:Landroidx/datastore/preferences/a;

    .line 176
    .line 177
    sget-object v3, Lcom/supertws/dubokutv/data/local/i;->a:[Lkotlin/reflect/t;

    .line 178
    .line 179
    aget-object v1, v3, v1

    .line 180
    .line 181
    invoke-virtual {v2, v0, v1}, Landroidx/datastore/preferences/a;->a(Ljava/lang/Object;Lkotlin/reflect/t;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    check-cast v0, Landroidx/datastore/core/h;

    .line 186
    .line 187
    return-object v0

    .line 188
    :pswitch_c
    new-instance v1, Lcom/supertws/dubokutv/data/local/e;

    .line 189
    .line 190
    iget-object v0, v2, Lcom/supertws/dubokutv/f;->c:Ldagger/internal/c;

    .line 191
    .line 192
    invoke-interface {v0}, Ljb/a;->get()Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    check-cast v0, Landroidx/datastore/core/h;

    .line 197
    .line 198
    iget-object v3, v2, Lcom/supertws/dubokutv/f;->d:Ldagger/internal/c;

    .line 199
    .line 200
    invoke-interface {v3}, Ljb/a;->get()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    check-cast v3, Landroidx/datastore/core/h;

    .line 205
    .line 206
    iget-object v4, v2, Lcom/supertws/dubokutv/f;->e:Ldagger/internal/c;

    .line 207
    .line 208
    invoke-interface {v4}, Ljb/a;->get()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v4

    .line 212
    check-cast v4, Landroidx/datastore/core/h;

    .line 213
    .line 214
    iget-object v5, v2, Lcom/supertws/dubokutv/f;->f:Ldagger/internal/c;

    .line 215
    .line 216
    invoke-interface {v5}, Ljb/a;->get()Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v5

    .line 220
    check-cast v5, Landroidx/datastore/core/h;

    .line 221
    .line 222
    iget-object v2, v2, Lcom/supertws/dubokutv/f;->g:Ldagger/internal/c;

    .line 223
    .line 224
    invoke-interface {v2}, Ljb/a;->get()Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    move-object v6, v2

    .line 229
    check-cast v6, Landroidx/datastore/core/h;

    .line 230
    .line 231
    move-object v2, v0

    .line 232
    invoke-direct/range {v1 .. v6}, Lcom/supertws/dubokutv/data/local/e;-><init>(Landroidx/datastore/core/h;Landroidx/datastore/core/h;Landroidx/datastore/core/h;Landroidx/datastore/core/h;Landroidx/datastore/core/h;)V

    .line 233
    .line 234
    .line 235
    return-object v1

    .line 236
    :pswitch_d
    new-instance v0, Lcom/supertws/dubokutv/d;

    .line 237
    .line 238
    const/4 v1, 0x0

    .line 239
    invoke-direct {v0, p0, v1}, Lcom/supertws/dubokutv/d;-><init>(Lcom/supertws/dubokutv/e;I)V

    .line 240
    .line 241
    .line 242
    return-object v0

    .line 243
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
