.class public final synthetic Lcom/supertws/dubokutv/presentation/screens/videoPlayer/j0;
.super Ljava/lang/Object;
.source "r8-map-id-8ba8015df6390efac2340e8bc72cbaa0af05ae8dc58e92835996b10ae6d6a13d"

# interfaces
.implements Lrb/k;


# instance fields
.field public final synthetic A:Landroidx/compose/runtime/b1;

.field public final synthetic a:Landroidx/media3/exoplayer/ExoPlayer;

.field public final synthetic b:Landroid/app/Activity;

.field public final synthetic c:Lcom/supertws/dubokutv/data/models/PlayModeSelection;

.field public final synthetic d:Lqa/f0;

.field public final synthetic f:Lrb/k;

.field public final synthetic g:Lcom/supertws/dubokutv/presentation/screens/videoPlayer/v1;

.field public final synthetic i:Landroidx/compose/runtime/b1;

.field public final synthetic p:Landroidx/compose/runtime/b1;

.field public final synthetic v:Landroidx/compose/runtime/b1;

.field public final synthetic w:Landroidx/compose/runtime/b1;

.field public final synthetic x:Landroidx/compose/runtime/z0;

.field public final synthetic y:Landroidx/compose/runtime/b1;

.field public final synthetic z:I


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/ExoPlayer;Landroid/app/Activity;Lcom/supertws/dubokutv/data/models/PlayModeSelection;Lqa/f0;Lrb/k;Lcom/supertws/dubokutv/presentation/screens/videoPlayer/v1;Landroidx/compose/runtime/b1;Landroidx/compose/runtime/b1;Landroidx/compose/runtime/b1;Landroidx/compose/runtime/b1;Landroidx/compose/runtime/z0;Landroidx/compose/runtime/b1;ILandroidx/compose/runtime/b1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/j0;->a:Landroidx/media3/exoplayer/ExoPlayer;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/j0;->b:Landroid/app/Activity;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/j0;->c:Lcom/supertws/dubokutv/data/models/PlayModeSelection;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/j0;->d:Lqa/f0;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/j0;->f:Lrb/k;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/j0;->g:Lcom/supertws/dubokutv/presentation/screens/videoPlayer/v1;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/j0;->i:Landroidx/compose/runtime/b1;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/j0;->p:Landroidx/compose/runtime/b1;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/j0;->v:Landroidx/compose/runtime/b1;

    .line 21
    .line 22
    iput-object p10, p0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/j0;->w:Landroidx/compose/runtime/b1;

    .line 23
    .line 24
    iput-object p11, p0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/j0;->x:Landroidx/compose/runtime/z0;

    .line 25
    .line 26
    iput-object p12, p0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/j0;->y:Landroidx/compose/runtime/b1;

    .line 27
    .line 28
    iput p13, p0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/j0;->z:I

    .line 29
    .line 30
    iput-object p14, p0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/j0;->A:Landroidx/compose/runtime/b1;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Landroidx/compose/runtime/i0;

    .line 6
    .line 7
    const-string v2, "$this$DisposableEffect"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v1, v0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/j0;->a:Landroidx/media3/exoplayer/ExoPlayer;

    iget-object v2, v0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/j0;->b:Landroid/app/Activity;

    iget-object v3, v0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/j0;->d:Lqa/f0;

    iget-object v4, v0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/j0;->f:Lrb/k;

    invoke-static {v1, v2, v3, v4}, Lcom/supertws/dubokutv/LanSyncManager;->registerActivePlayer(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    .line 12
    new-instance v3, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/n0;

    .line 13
    .line 14
    const/16 v17, 0x0

    .line 15
    .line 16
    iget-object v4, v0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/j0;->c:Lcom/supertws/dubokutv/data/models/PlayModeSelection;

    .line 17
    .line 18
    iget-object v5, v0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/j0;->d:Lqa/f0;

    .line 19
    .line 20
    iget-object v6, v0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/j0;->f:Lrb/k;

    .line 21
    .line 22
    iget-object v7, v0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/j0;->g:Lcom/supertws/dubokutv/presentation/screens/videoPlayer/v1;

    .line 23
    .line 24
    iget-object v8, v0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/j0;->i:Landroidx/compose/runtime/b1;

    .line 25
    .line 26
    iget-object v9, v0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/j0;->p:Landroidx/compose/runtime/b1;

    .line 27
    .line 28
    iget-object v10, v0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/j0;->v:Landroidx/compose/runtime/b1;

    .line 29
    .line 30
    iget-object v11, v0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/j0;->w:Landroidx/compose/runtime/b1;

    .line 31
    .line 32
    iget-object v12, v0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/j0;->x:Landroidx/compose/runtime/z0;

    .line 33
    .line 34
    iget-object v13, v0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/j0;->y:Landroidx/compose/runtime/b1;

    .line 35
    .line 36
    iget-object v14, v0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/j0;->a:Landroidx/media3/exoplayer/ExoPlayer;

    .line 37
    .line 38
    iget v15, v0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/j0;->z:I

    .line 39
    .line 40
    iget-object v1, v0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/j0;->A:Landroidx/compose/runtime/b1;

    .line 41
    .line 42
    move-object/from16 v16, v1

    .line 43
    .line 44
    invoke-direct/range {v3 .. v17}, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/n0;-><init>(Lcom/supertws/dubokutv/data/models/PlayModeSelection;Lqa/f0;Lrb/k;Lcom/supertws/dubokutv/presentation/screens/videoPlayer/v1;Landroidx/compose/runtime/b1;Landroidx/compose/runtime/b1;Landroidx/compose/runtime/b1;Landroidx/compose/runtime/b1;Landroidx/compose/runtime/z0;Landroidx/compose/runtime/b1;Landroidx/media3/exoplayer/ExoPlayer;ILandroidx/compose/runtime/b1;I)V

    .line 45
    .line 46
    .line 47
    move-object v1, v14

    .line 48
    check-cast v1, Landroidx/media3/exoplayer/h0;

    .line 49
    .line 50
    iget-object v1, v1, Landroidx/media3/exoplayer/h0;->m:Le3/l;

    .line 51
    .line 52
    invoke-virtual {v1, v3}, Le3/l;->a(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    iget-object v1, v0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/j0;->b:Landroid/app/Activity;

    .line 56
    .line 57
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    const/16 v4, 0x80

    .line 62
    .line 63
    invoke-virtual {v2, v4}, Landroid/view/Window;->addFlags(I)V

    .line 64
    .line 65
    .line 66
    new-instance v2, Landroidx/compose/animation/c;

    .line 67
    .line 68
    const/4 v4, 0x3

    .line 69
    invoke-direct {v2, v14, v4, v3, v1}, Landroidx/compose/animation/c;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    return-object v2
.end method
