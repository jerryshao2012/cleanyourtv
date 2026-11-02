.class public final synthetic Lcom/supertws/dubokutv/presentation/screens/videoPlayer/w;
.super Ljava/lang/Object;
.source "r8-map-id-8ba8015df6390efac2340e8bc72cbaa0af05ae8dc58e92835996b10ae6d6a13d"

# interfaces
.implements Lrb/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/media3/exoplayer/ExoPlayer;

.field public final synthetic c:Landroidx/compose/runtime/b1;

.field public final synthetic d:Landroidx/compose/runtime/b1;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/ExoPlayer;Landroidx/compose/runtime/b1;Landroidx/compose/runtime/b1;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/w;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/w;->b:Landroidx/media3/exoplayer/ExoPlayer;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/w;->c:Landroidx/compose/runtime/b1;

    .line 6
    .line 7
    iput-object p3, p0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/w;->d:Landroidx/compose/runtime/b1;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/w;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/w;->c:Landroidx/compose/runtime/b1;

    .line 7
    .line 8
    invoke-interface {v0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-object v1, p0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/w;->b:Landroidx/media3/exoplayer/ExoPlayer;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    check-cast v1, Landroidx/compose/foundation/layout/s0;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroidx/compose/foundation/layout/s0;->n()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/w;->d:Landroidx/compose/runtime/b1;

    .line 29
    .line 30
    invoke-interface {v0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Ljava/lang/Boolean;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    const-wide/16 v2, 0x0

    .line 43
    .line 44
    move-object v0, v1

    .line 45
    check-cast v0, Landroidx/compose/foundation/layout/s0;

    .line 46
    .line 47
    const/4 v4, 0x0

    .line 48
    invoke-virtual {v0, v2, v3, v4, v4}, Landroidx/compose/foundation/layout/s0;->r(JIZ)V

    .line 49
    .line 50
    .line 51
    const/4 v0, 0x1

    .line 52
    check-cast v1, Landroidx/media3/exoplayer/h0;

    .line 53
    .line 54
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/h0;->k0(Z)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    check-cast v1, Landroidx/compose/foundation/layout/s0;

    .line 59
    .line 60
    invoke-virtual {v1}, Landroidx/compose/foundation/layout/s0;->o()V

    .line 61
    .line 62
    .line 63
    :goto_0
    sget-object v0, Lkotlin/w;->a:Lkotlin/w;

    .line 64
    .line 65
    return-object v0

    .line 66
    :pswitch_0
    iget-object v0, p0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/w;->c:Landroidx/compose/runtime/b1;

    .line 67
    .line 68
    invoke-interface {v0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Ljava/lang/Boolean;

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    iget-object v1, p0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/w;->b:Landroidx/media3/exoplayer/ExoPlayer;

    .line 79
    .line 80
    if-eqz v0, :cond_2

    .line 81
    .line 82
    check-cast v1, Landroidx/compose/foundation/layout/s0;

    .line 83
    .line 84
    invoke-virtual {v1}, Landroidx/compose/foundation/layout/s0;->n()V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/w;->d:Landroidx/compose/runtime/b1;

    .line 89
    .line 90
    invoke-interface {v0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Ljava/lang/Boolean;

    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_3

    .line 101
    .line 102
    const-wide/16 v2, 0x0

    .line 103
    .line 104
    move-object v0, v1

    .line 105
    check-cast v0, Landroidx/compose/foundation/layout/s0;

    .line 106
    .line 107
    const/4 v4, 0x0

    .line 108
    invoke-virtual {v0, v2, v3, v4, v4}, Landroidx/compose/foundation/layout/s0;->r(JIZ)V

    .line 109
    .line 110
    .line 111
    const/4 v0, 0x1

    .line 112
    check-cast v1, Landroidx/media3/exoplayer/h0;

    .line 113
    .line 114
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/h0;->k0(Z)V

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_3
    check-cast v1, Landroidx/compose/foundation/layout/s0;

    .line 119
    .line 120
    invoke-static {v1}, Lcom/supertws/dubokutv/LanSyncManager;->checkSyncOnPlay(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :goto_1

    invoke-virtual {v1}, Landroidx/compose/foundation/layout/s0;->o()V

    .line 121
    .line 122
    .line 123
    :goto_1
    sget-object v0, Lkotlin/w;->a:Lkotlin/w;

    .line 124
    .line 125
    return-object v0

    .line 126
    nop

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
