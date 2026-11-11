.class final Lcom/supertws/dubokutv/PlaybackPauseListener;
.super Ljava/lang/Object;
.implements Landroidx/media3/common/p0;

.field private static volatile registeredPlayer:Ljava/lang/Object;
.field private static volatile registeredListener:Ljava/lang/Object;
.field private final player:Ljava/lang/Object;
.field private wasPlaying:Z

.method private constructor <init>(Ljava/lang/Object;Z)V
    .registers 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/supertws/dubokutv/PlaybackPauseListener;->player:Ljava/lang/Object;
    iput-boolean p2, p0, Lcom/supertws/dubokutv/PlaybackPauseListener;->wasPlaying:Z
    return-void
.end method

.method static declared-synchronized register(Ljava/lang/Object;)V
    .registers 5
    if-eqz p0, :cond_done
    sget-object v0, Lcom/supertws/dubokutv/PlaybackPauseListener;->registeredPlayer:Ljava/lang/Object;
    if-ne p0, v0, :cond_new
    return-void
    :cond_new
    :try_start
    check-cast p0, Landroidx/media3/exoplayer/h0;
    new-instance v0, Lcom/supertws/dubokutv/PlaybackPauseListener;
    invoke-virtual {p0}, Landroidx/compose/foundation/layout/s0;->m()Z
    move-result v1
    invoke-direct {v0, p0, v1}, Lcom/supertws/dubokutv/PlaybackPauseListener;-><init>(Ljava/lang/Object;Z)V
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/h0;->f0(Landroidx/media3/common/p0;)V
    sput-object p0, Lcom/supertws/dubokutv/PlaybackPauseListener;->registeredPlayer:Ljava/lang/Object;
    sput-object v0, Lcom/supertws/dubokutv/PlaybackPauseListener;->registeredListener:Ljava/lang/Object;
    const-string v1, "LanSyncManager"
    const-string v2, "Playback pause listener registered"
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end
    .catch Ljava/lang/Throwable; {:try_start .. :try_end} :catch_register
    return-void
    :catch_register
    move-exception v0
    const/4 v1, 0x0
    sput-object v1, Lcom/supertws/dubokutv/PlaybackPauseListener;->registeredPlayer:Ljava/lang/Object;
    sput-object v1, Lcom/supertws/dubokutv/PlaybackPauseListener;->registeredListener:Ljava/lang/Object;
    const-string v1, "LanSyncManager"
    const-string v2, "Playback pause listener unavailable"
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :cond_done
    return-void
.end method

.method public final G(Z)V
    .registers 6
    const-string v2, "LanSyncManager"
    const-string v3, "Playback isPlaying callback received"
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    iget-object v0, p0, Lcom/supertws/dubokutv/PlaybackPauseListener;->player:Ljava/lang/Object;
    sget-object v1, Lcom/supertws/dubokutv/LanSyncManager;->sActiveExoPlayer:Ljava/lang/Object;
    if-ne v0, v1, :cond_return
    iget-boolean v0, p0, Lcom/supertws/dubokutv/PlaybackPauseListener;->wasPlaying:Z
    iput-boolean p1, p0, Lcom/supertws/dubokutv/PlaybackPauseListener;->wasPlaying:Z
    if-eqz v0, :cond_return
    if-nez p1, :cond_return
    const/4 v0, 0x0
    invoke-static {v0}, Lcom/supertws/dubokutv/LanSyncManager;->onActivityPause(Landroid/app/Activity;)V
    :cond_return
    return-void
.end method

.method public final A(Landroidx/media3/common/PlaybackException;)V
    .registers 3
    return-void
.end method

.method public final B(Landroidx/media3/common/PlaybackException;)V
    .registers 3
    return-void
.end method

.method public final D(II)V
    .registers 4
    return-void
.end method

.method public final E(Landroidx/media3/common/n0;)V
    .registers 3
    return-void
.end method

.method public final a(Landroidx/media3/common/g1;)V
    .registers 3
    return-void
.end method

.method public final b(I)V
    .registers 3
    return-void
.end method

.method public final c(ILandroidx/media3/common/q0;Landroidx/media3/common/q0;)V
    .registers 5
    return-void
.end method

.method public final d(Landroidx/media3/common/o0;)V
    .registers 3
    return-void
.end method

.method public final e(Z)V
    .registers 3
    return-void
.end method

.method public final g(IZ)V
    .registers 4
    return-void
.end method

.method public final h(I)V
    .registers 3
    return-void
.end method

.method public final i(I)V
    .registers 3
    return-void
.end method

.method public final l(Landroidx/media3/common/v0;I)V
    .registers 4
    return-void
.end method

.method public final m(Z)V
    .registers 3
    return-void
.end method

.method public final n(Landroidx/media3/common/m0;)V
    .registers 3
    return-void
.end method

.method public final o(Ld3/c;)V
    .registers 3
    return-void
.end method

.method public final p(Landroidx/media3/common/i0;)V
    .registers 3
    return-void
.end method

.method public final q(Landroidx/media3/common/a1;)V
    .registers 3
    return-void
.end method

.method public final r(I)V
    .registers 3
    return-void
.end method

.method public final s(Landroidx/media3/common/k0;)V
    .registers 3
    return-void
.end method

.method public final t()V
    .registers 2
    return-void
.end method

.method public final u(Z)V
    .registers 3
    return-void
.end method

.method public final v(Landroidx/media3/common/c1;)V
    .registers 3
    return-void
.end method

.method public final w(Ljava/util/List;)V
    .registers 3
    return-void
.end method

.method public final x(Landroidx/media3/common/f0;I)V
    .registers 4
    return-void
.end method

.method public final y(IZ)V
    .registers 4
    return-void
.end method
