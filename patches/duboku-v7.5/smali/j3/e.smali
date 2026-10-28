.class public final Lj3/e;
.super Ljava/lang/Object;
.source "r8-map-id-8ba8015df6390efac2340e8bc72cbaa0af05ae8dc58e92835996b10ae6d6a13d"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroidx/media3/exoplayer/q;

.field public final c:Landroid/os/Handler;

.field public final d:Lj3/c;

.field public final e:Landroidx/appcompat/app/b0;

.field public final f:Lj3/d;

.field public g:Lw3/c;

.field public h:Lj3/b;

.field public i:Landroid/media/AudioDeviceInfo;

.field public j:Landroidx/media3/common/g;

.field public k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/q;Landroidx/media3/common/g;Landroid/media/AudioDeviceInfo;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lj3/e;->a:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p2, p0, Lj3/e;->b:Landroidx/media3/exoplayer/q;

    .line 11
    .line 12
    iput-object p3, p0, Lj3/e;->j:Landroidx/media3/common/g;

    .line 13
    .line 14
    iput-object p4, p0, Lj3/e;->i:Landroid/media/AudioDeviceInfo;

    .line 15
    .line 16
    sget-object p2, Le3/e0;->a:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    :goto_0
    new-instance p3, Landroid/os/Handler;

    .line 30
    .line 31
    const/4 p4, 0x0

    .line 32
    invoke-direct {p3, p2, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 33
    .line 34
    .line 35
    iput-object p3, p0, Lj3/e;->c:Landroid/os/Handler;

    .line 36
    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_duboku_noaudiocb

    new-instance v0, Lj3/c;

    invoke-direct {v0, p0}, Lj3/c;-><init>(Lj3/e;)V

    goto :goto_duboku_audiocb

    :cond_duboku_noaudiocb
    const/4 v0, 0x0

    :goto_duboku_audiocb
    iput-object v0, p0, Lj3/e;->d:Lj3/c;

    .line 43
    .line 44
    new-instance p2, Landroidx/appcompat/app/b0;

    .line 45
    .line 46
    const/4 v0, 0x4

    .line 47
    invoke-direct {p2, p0, v0}, Landroidx/appcompat/app/b0;-><init>(Ljava/lang/Object;I)V

    .line 48
    .line 49
    .line 50
    iput-object p2, p0, Lj3/e;->e:Landroidx/appcompat/app/b0;

    .line 51
    .line 52
    sget-object p2, Lj3/b;->e:Lcom/google/common/collect/ImmutableList;

    .line 53
    .line 54
    sget-object p2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 55
    .line 56
    const-string v0, "Amazon"

    .line 57
    .line 58
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_2

    .line 63
    .line 64
    const-string v0, "Xiaomi"

    .line 65
    .line 66
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    if-eqz p2, :cond_1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    move-object p2, p4

    .line 74
    goto :goto_2

    .line 75
    :cond_2
    :goto_1
    const-string p2, "external_surround_sound_enabled"

    .line 76
    .line 77
    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    :goto_2
    if-eqz p2, :cond_3

    .line 82
    .line 83
    new-instance p4, Lj3/d;

    .line 84
    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-direct {p4, p0, p3, p1, p2}, Lj3/d;-><init>(Lj3/e;Landroid/os/Handler;Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 90
    .line 91
    .line 92
    :cond_3
    iput-object p4, p0, Lj3/e;->f:Lj3/d;

    .line 93
    .line 94
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x20

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lj3/e;->g:Lw3/c;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lw3/c;->b()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public final b(Lj3/b;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lj3/e;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lj3/e;->h:Lj3/b;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lj3/b;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iput-object p1, p0, Lj3/e;->h:Lj3/b;

    .line 14
    .line 15
    iget-object v0, p0, Lj3/e;->b:Landroidx/media3/exoplayer/q;

    .line 16
    .line 17
    iget-object v0, v0, Landroidx/media3/exoplayer/q;->b:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Lj3/x;

    .line 20
    .line 21
    invoke-virtual {v0}, Lj3/x;->f()V

    .line 22
    .line 23
    .line 24
    iget-object v1, v0, Lj3/x;->h:Lj3/b;

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-virtual {p1, v1}, Lj3/b;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_0

    .line 33
    .line 34
    iput-object p1, v0, Lj3/x;->h:Lj3/b;

    .line 35
    .line 36
    iget-object p1, v0, Lj3/x;->f:Le3/l;

    .line 37
    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    new-instance v0, Li3/d;

    .line 41
    .line 42
    const/16 v1, 0x12

    .line 43
    .line 44
    invoke-direct {v0, v1}, Li3/d;-><init>(I)V

    .line 45
    .line 46
    .line 47
    const/4 v1, -0x1

    .line 48
    invoke-virtual {p1, v1, v0}, Le3/l;->e(ILe3/i;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lj3/e;->a()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lj3/e;->j:Landroidx/media3/common/g;

    .line 6
    .line 7
    iget-object v2, p0, Lj3/e;->i:Landroid/media/AudioDeviceInfo;

    .line 8
    .line 9
    sget-object v3, Lj3/b;->e:Lcom/google/common/collect/ImmutableList;

    .line 10
    .line 11
    new-instance v3, Landroid/content/IntentFilter;

    .line 12
    .line 13
    const-string v4, "android.media.action.HDMI_AUDIO_PLUG"

    .line 14
    .line 15
    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v4, p0, Lj3/e;->a:Landroid/content/Context;

    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-static {v4, v3, v1, v2, v0}, Lj3/b;->b(Landroid/content/Context;Landroid/content/Intent;Landroidx/media3/common/g;Landroid/media/AudioDeviceInfo;Ljava/util/List;)Lj3/b;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p0, v0}, Lj3/e;->b(Lj3/b;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
