.class public final synthetic Lcom/supertws/dubokutv/presentation/screens/videoPlayer/l0;
.super Ljava/lang/Object;
.source "r8-map-id-8ba8015df6390efac2340e8bc72cbaa0af05ae8dc58e92835996b10ae6d6a13d"

# interfaces
.implements Lrb/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/media3/exoplayer/ExoPlayer;

.field public final synthetic c:Lcom/supertws/dubokutv/presentation/screens/videoPlayer/v1;

.field public final synthetic d:Lkotlinx/coroutines/x;

.field public final synthetic f:Landroidx/compose/runtime/b1;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/ExoPlayer;Lcom/supertws/dubokutv/presentation/screens/videoPlayer/v1;Lkotlinx/coroutines/x;Landroidx/compose/runtime/a1;I)V
    .locals 0

    .line 1
    iput p5, p0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/l0;->a:I

    iput-object p1, p0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/l0;->b:Landroidx/media3/exoplayer/ExoPlayer;

    iput-object p2, p0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/l0;->c:Lcom/supertws/dubokutv/presentation/screens/videoPlayer/v1;

    iput-object p3, p0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/l0;->d:Lkotlinx/coroutines/x;

    iput-object p4, p0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/l0;->f:Landroidx/compose/runtime/b1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/exoplayer/ExoPlayer;Lkotlinx/coroutines/x;Lcom/supertws/dubokutv/presentation/screens/videoPlayer/v1;Landroidx/compose/runtime/b1;)V
    .locals 1

    .line 2
    const/4 v0, 0x2

    iput v0, p0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/l0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/l0;->b:Landroidx/media3/exoplayer/ExoPlayer;

    iput-object p2, p0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/l0;->d:Lkotlinx/coroutines/x;

    iput-object p3, p0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/l0;->c:Lcom/supertws/dubokutv/presentation/screens/videoPlayer/v1;

    iput-object p4, p0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/l0;->f:Landroidx/compose/runtime/b1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/l0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/lang/Boolean;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_2

    .line 13
    .line 14
    iget-object p1, p0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/l0;->b:Landroidx/media3/exoplayer/ExoPlayer;

    .line 15
    .line 16
    check-cast p1, Landroidx/compose/foundation/layout/s0;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/compose/foundation/layout/s0;->m()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x3

    .line 23
    iget-object v2, p0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/l0;->d:Lkotlinx/coroutines/x;

    .line 24
    .line 25
    iget-object v3, p0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/l0;->c:Lcom/supertws/dubokutv/presentation/screens/videoPlayer/v1;

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {p1}, Landroidx/compose/foundation/layout/s0;->n()V

    .line 31
    .line 32
    .line 33
    new-instance p1, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/TvVideoPlayerKt$TvVideoPlayer$10$5$1$1;

    .line 34
    .line 35
    invoke-direct {p1, v3, v4}, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/TvVideoPlayerKt$TvVideoPlayer$10$5$1$1;-><init>(Lcom/supertws/dubokutv/presentation/screens/videoPlayer/v1;Lkotlin/coroutines/c;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v2, v4, v4, p1, v1}, Lkotlinx/coroutines/z;->A(Lkotlinx/coroutines/x;Lkotlin/coroutines/h;Lkotlinx/coroutines/CoroutineStart;Lrb/n;I)Lkotlinx/coroutines/p1;

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/l0;->f:Landroidx/compose/runtime/b1;

    .line 43
    .line 44
    invoke-interface {v0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Ljava/lang/Boolean;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    new-instance p1, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/TvVideoPlayerKt$TvVideoPlayer$10$5$1$2;

    .line 57
    .line 58
    invoke-direct {p1, v3, v4}, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/TvVideoPlayerKt$TvVideoPlayer$10$5$1$2;-><init>(Lcom/supertws/dubokutv/presentation/screens/videoPlayer/v1;Lkotlin/coroutines/c;)V

    .line 59
    .line 60
    .line 61
    invoke-static {v2, v4, v4, p1, v1}, Lkotlinx/coroutines/z;->A(Lkotlinx/coroutines/x;Lkotlin/coroutines/h;Lkotlinx/coroutines/CoroutineStart;Lrb/n;I)Lkotlinx/coroutines/p1;

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    invoke-static {p1}, Lcom/supertws/dubokutv/LanSyncManager;->checkSyncOnPlay(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroidx/compose/foundation/layout/s0;->o()V

    .line 66
    .line 67
    .line 68
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/w;->a:Lkotlin/w;

    .line 69
    .line 70
    return-object p1

    .line 71
    :pswitch_0
    iget-object v0, p0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/l0;->f:Landroidx/compose/runtime/b1;

    .line 72
    .line 73
    check-cast v0, Landroidx/compose/runtime/a1;

    .line 74
    .line 75
    check-cast p1, Ljava/lang/Boolean;

    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    check-cast v0, Landroidx/compose/runtime/r2;

    .line 82
    .line 83
    invoke-virtual {v0}, Landroidx/compose/runtime/r2;->h()J

    .line 84
    .line 85
    .line 86
    move-result-wide v0

    .line 87
    if-eqz p1, :cond_3

    .line 88
    .line 89
    const/16 p1, 0x7530

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_3
    const/16 p1, 0x2710

    .line 93
    .line 94
    :goto_1
    int-to-long v2, p1

    .line 95
    add-long/2addr v0, v2

    .line 96
    iget-object p1, p0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/l0;->b:Landroidx/media3/exoplayer/ExoPlayer;

    .line 97
    .line 98
    check-cast p1, Landroidx/compose/foundation/layout/s0;

    .line 99
    .line 100
    const/4 v2, 0x5

    .line 101
    invoke-virtual {p1, v2, v0, v1}, Landroidx/compose/foundation/layout/s0;->s(IJ)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/l0;->c:Lcom/supertws/dubokutv/presentation/screens/videoPlayer/v1;

    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/v1;->a()Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-nez v0, :cond_4

    .line 111
    .line 112
    new-instance v0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/TvVideoPlayerKt$TvVideoPlayer$10$2$1$1;

    .line 113
    .line 114
    const/4 v1, 0x0

    .line 115
    invoke-direct {v0, p1, v1}, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/TvVideoPlayerKt$TvVideoPlayer$10$2$1$1;-><init>(Lcom/supertws/dubokutv/presentation/screens/videoPlayer/v1;Lkotlin/coroutines/c;)V

    .line 116
    .line 117
    .line 118
    const/4 p1, 0x3

    .line 119
    iget-object v2, p0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/l0;->d:Lkotlinx/coroutines/x;

    .line 120
    .line 121
    invoke-static {v2, v1, v1, v0, p1}, Lkotlinx/coroutines/z;->A(Lkotlinx/coroutines/x;Lkotlin/coroutines/h;Lkotlinx/coroutines/CoroutineStart;Lrb/n;I)Lkotlinx/coroutines/p1;

    .line 122
    .line 123
    .line 124
    :cond_4
    sget-object p1, Lkotlin/w;->a:Lkotlin/w;

    .line 125
    .line 126
    return-object p1

    .line 127
    :pswitch_1
    iget-object v0, p0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/l0;->f:Landroidx/compose/runtime/b1;

    .line 128
    .line 129
    check-cast v0, Landroidx/compose/runtime/a1;

    .line 130
    .line 131
    check-cast p1, Ljava/lang/Boolean;

    .line 132
    .line 133
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    check-cast v0, Landroidx/compose/runtime/r2;

    .line 138
    .line 139
    invoke-virtual {v0}, Landroidx/compose/runtime/r2;->h()J

    .line 140
    .line 141
    .line 142
    move-result-wide v0

    .line 143
    if-eqz p1, :cond_5

    .line 144
    .line 145
    const/16 p1, 0x7530

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_5
    const/16 p1, 0x2710

    .line 149
    .line 150
    :goto_2
    int-to-long v2, p1

    .line 151
    sub-long/2addr v0, v2

    .line 152
    iget-object p1, p0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/l0;->b:Landroidx/media3/exoplayer/ExoPlayer;

    .line 153
    .line 154
    check-cast p1, Landroidx/compose/foundation/layout/s0;

    .line 155
    .line 156
    const/4 v2, 0x5

    .line 157
    invoke-virtual {p1, v2, v0, v1}, Landroidx/compose/foundation/layout/s0;->s(IJ)V

    .line 158
    .line 159
    .line 160
    iget-object p1, p0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/l0;->c:Lcom/supertws/dubokutv/presentation/screens/videoPlayer/v1;

    .line 161
    .line 162
    invoke-virtual {p1}, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/v1;->a()Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-nez v0, :cond_6

    .line 167
    .line 168
    new-instance v0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/TvVideoPlayerKt$TvVideoPlayer$10$1$1$1;

    .line 169
    .line 170
    const/4 v1, 0x0

    .line 171
    invoke-direct {v0, p1, v1}, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/TvVideoPlayerKt$TvVideoPlayer$10$1$1$1;-><init>(Lcom/supertws/dubokutv/presentation/screens/videoPlayer/v1;Lkotlin/coroutines/c;)V

    .line 172
    .line 173
    .line 174
    const/4 p1, 0x3

    .line 175
    iget-object v2, p0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/l0;->d:Lkotlinx/coroutines/x;

    .line 176
    .line 177
    invoke-static {v2, v1, v1, v0, p1}, Lkotlinx/coroutines/z;->A(Lkotlinx/coroutines/x;Lkotlin/coroutines/h;Lkotlinx/coroutines/CoroutineStart;Lrb/n;I)Lkotlinx/coroutines/p1;

    .line 178
    .line 179
    .line 180
    :cond_6
    sget-object p1, Lkotlin/w;->a:Lkotlin/w;

    .line 181
    .line 182
    return-object p1

    nop

    .line 183
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
