.class public final Lcom/supertws/dubokutv/DubokuTvApplication;
.super Landroid/app/Application;
.source "r8-map-id-8ba8015df6390efac2340e8bc72cbaa0af05ae8dc58e92835996b10ae6d6a13d"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Landroidx/lifecycle/c0;
.implements Landroidx/work/a;
.implements Lib/b;


# instance fields
.field public a:Z

.field public final b:Lgb/f;

.field public c:Lcom/supertws/dubokutv/l;

.field public d:Landroid/app/Activity;

.field public f:Lcom/supertws/dubokutv/data/local/b;

.field public g:Z

.field public i:Lu2/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/supertws/dubokutv/DubokuTvApplication;->a:Z

    .line 6
    .line 7
    new-instance v0, Lgb/f;

    .line 8
    .line 9
    new-instance v1, Lcom/supertws/dubokutv/q;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/supertws/dubokutv/q;-><init>(Landroid/content/ContextWrapper;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Lgb/f;-><init>(Lcom/supertws/dubokutv/q;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/supertws/dubokutv/DubokuTvApplication;->b:Lgb/f;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 13

    .line 1
    iget-boolean v0, p0, Lcom/supertws/dubokutv/DubokuTvApplication;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/supertws/dubokutv/DubokuTvApplication;->a:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/supertws/dubokutv/DubokuTvApplication;->b:Lgb/f;

    .line 9
    .line 10
    invoke-virtual {v0}, Lgb/f;->c()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/supertws/dubokutv/o;

    .line 15
    .line 16
    check-cast v0, Lcom/supertws/dubokutv/f;

    .line 17
    .line 18
    new-instance v1, Lcom/supertws/dubokutv/data/local/b;

    .line 19
    .line 20
    iget-object v2, v0, Lcom/supertws/dubokutv/f;->a:Lhb/a;

    .line 21
    .line 22
    iget-object v2, v2, Lhb/a;->a:Landroid/content/Context;

    .line 23
    .line 24
    invoke-direct {v1, v2}, Lcom/supertws/dubokutv/data/local/b;-><init>(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/supertws/dubokutv/DubokuTvApplication;->f:Lcom/supertws/dubokutv/data/local/b;

    .line 28
    .line 29
    iget-object v4, v0, Lcom/supertws/dubokutv/f;->j:Ldagger/internal/c;

    .line 30
    .line 31
    iget-object v6, v0, Lcom/supertws/dubokutv/f;->k:Ldagger/internal/c;

    .line 32
    .line 33
    iget-object v8, v0, Lcom/supertws/dubokutv/f;->l:Ldagger/internal/c;

    .line 34
    .line 35
    iget-object v10, v0, Lcom/supertws/dubokutv/f;->m:Ldagger/internal/c;

    .line 36
    .line 37
    const-string v11, "com.supertws.dubokutv.workers.SyncVarietyPageWorker"

    .line 38
    .line 39
    iget-object v12, v0, Lcom/supertws/dubokutv/f;->n:Ldagger/internal/c;

    .line 40
    .line 41
    const-string v3, "com.supertws.dubokutv.workers.SyncAnimationPageWorker"

    .line 42
    .line 43
    const-string v5, "com.supertws.dubokutv.workers.SyncDramaPageWorker"

    .line 44
    .line 45
    const-string v7, "com.supertws.dubokutv.workers.SyncHomeCatalogsWorker"

    .line 46
    .line 47
    const-string v9, "com.supertws.dubokutv.workers.SyncMoviePageWorker"

    .line 48
    .line 49
    invoke-static/range {v3 .. v12}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    new-instance v1, Lu2/a;

    .line 54
    .line 55
    invoke-direct {v1, v0}, Lu2/a;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    .line 56
    .line 57
    .line 58
    iput-object v1, p0, Lcom/supertws/dubokutv/DubokuTvApplication;->i:Lu2/a;

    .line 59
    .line 60
    :cond_0
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final c()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/supertws/dubokutv/DubokuTvApplication;->b:Lgb/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgb/f;->c()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final i(Landroidx/lifecycle/g0;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/supertws/dubokutv/n;->a:[I

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    aget p1, p1, p2

    .line 8
    .line 9
    const/4 p2, 0x1

    .line 10
    if-ne p1, p2, :cond_2

    .line 11
    .line 12
    iget-object p1, p0, Lcom/supertws/dubokutv/DubokuTvApplication;->d:Landroid/app/Activity;

    .line 13
    .line 14
    instance-of p1, p1, Lcom/supertws/dubokutv/MainActivity;

    .line 15
    .line 16
    if-eqz p1, :cond_2

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string p2, "android.software.leanback"

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string p2, "android.hardware.touchscreen"

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-boolean p1, p0, Lcom/supertws/dubokutv/DubokuTvApplication;->g:Z

    .line 44
    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    iget-object p1, p0, Lcom/supertws/dubokutv/DubokuTvApplication;->c:Lcom/supertws/dubokutv/l;

    .line 48
    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    iget-object p2, p0, Lcom/supertws/dubokutv/DubokuTvApplication;->d:Landroid/app/Activity;

    .line 52
    .line 53
    const-string v0, "null cannot be cast to non-null type com.supertws.dubokutv.MainActivity"

    .line 54
    .line 55
    invoke-static {p2, v0}, Lkotlin/jvm/internal/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    check-cast p2, Lcom/supertws/dubokutv/MainActivity;

    .line 59
    .line 60
    new-instance v0, Lcom/supertws/dubokutv/j;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, p2, v0}, Lcom/supertws/dubokutv/l;->c(Landroid/app/Activity;Lcom/supertws/dubokutv/m;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_1
    const-string p1, "appOpenAdManager"

    .line 70
    .line 71
    invoke-static {p1}, Lkotlin/jvm/internal/g;->k(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const/4 p1, 0x0

    .line 75
    throw p1

    .line 76
    :cond_2
    :goto_0
    return-void
.end method

.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "LC.created"

    invoke-static {v0}, Lcom/supertws/dubokutv/Dbg;->stage(Ljava/lang/String;)V

    .line 1
    const-string p2, "activity"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "LC.destroyed"

    invoke-static {v0}, Lcom/supertws/dubokutv/Dbg;->stage(Ljava/lang/String;)V

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "LC.paused"

    invoke-static {v0}, Lcom/supertws/dubokutv/Dbg;->stage(Ljava/lang/String;)V

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "LC.resumed"

    invoke-static {v0}, Lcom/supertws/dubokutv/Dbg;->stage(Ljava/lang/String;)V

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "outState"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/supertws/dubokutv/DubokuTvApplication;->c:Lcom/supertws/dubokutv/l;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-boolean v0, v0, Lcom/supertws/dubokutv/l;->d:Z

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iput-object p1, p0, Lcom/supertws/dubokutv/DubokuTvApplication;->d:Landroid/app/Activity;

    .line 15
    .line 16
    :cond_0
    return-void

    .line 17
    :cond_1
    const-string p1, "appOpenAdManager"

    .line 18
    .line 19
    invoke-static {p1}, Lkotlin/jvm/internal/g;->k(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    throw p1
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "LC.stopped"

    invoke-static {v0}, Lcom/supertws/dubokutv/Dbg;->stage(Ljava/lang/String;)V

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1

    :try_start_ddbg
    invoke-static {}, Lcom/supertws/dubokutv/Dbg;->install()V
    :try_end_ddbg
    .catch Ljava/lang/Throwable; {:try_start_ddbg .. :try_end_ddbg} :catch_ddbg

    goto :goto_ddbg

    :catch_ddbg
    move-exception v0

    :goto_ddbg
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public final onCreate()V
    .locals 9

    const-string v0, "app.onCreate.begin"

invoke-static {v0}, Lcom/supertws/dubokutv/Dbg;->stage(Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/supertws/dubokutv/DubokuTvApplication;->a()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 5
    .line 6
    .line 7
    sget-object v0, Landroidx/lifecycle/y0;->v:Landroidx/lifecycle/y0;

    .line 8
    .line 9
    iget-object v0, v0, Landroidx/lifecycle/y0;->g:Landroidx/lifecycle/i0;

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Landroidx/lifecycle/i0;->a(Landroidx/lifecycle/f0;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lcom/supertws/dubokutv/l;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "getApplicationContext(...)"

    .line 24
    .line 25
    invoke-static {v1, v2}, Lkotlin/jvm/internal/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    sget-object v2, Lcom/supertws/dubokutv/q;->b:Lcom/supertws/dubokutv/j;

    .line 29
    .line 30
    invoke-virtual {v2, v1}, Lcom/supertws/dubokutv/j;->b(Landroid/content/Context;)Lcom/supertws/dubokutv/q;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iput-object v1, v0, Lcom/supertws/dubokutv/l;->a:Lcom/supertws/dubokutv/q;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/supertws/dubokutv/DubokuTvApplication;->c:Lcom/supertws/dubokutv/l;

    .line 37
    .line 38
    :try_start_0
    sget-object v0, Lta/e;->a:Ljava/lang/String;

    .line 39
    .line 40
    new-instance v0, Lcom/supertws/dubokutv/data/util/TTHp;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p0}, Lcom/supertws/dubokutv/data/util/TTHp;->gT(Landroid/content/Context;)I

    .line 46
    .line 47
    .line 48
    move-result v0

    # duboku: 钳制请求超时下限（gT 在本机返回 12ms 导致所有请求瞬超 → "网络连接错误"）
    const/16 v1, 0x2ee0

    if-ge v0, v1, :cond_duboku_timeout_ok

    const/16 v0, 0x2ee0

    :cond_duboku_timeout_ok
    .line 49
    sput v0, Lta/e;->e:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    :catch_0
    invoke-static {p0}, Landroidx/work/impl/v;->l0(Landroid/content/Context;)Landroidx/work/impl/v;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    const-string v0, "getInstance(...)"

    .line 56
    .line 57
    invoke-static {v2, v0}, Lkotlin/jvm/internal/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    sget-object v4, Landroidx/work/ExistingWorkPolicy;->KEEP:Landroidx/work/ExistingWorkPolicy;

    .line 61
    .line 62
    new-instance v0, Lcom/google/common/reflect/x;

    .line 63
    .line 64
    const-class v1, Lcom/supertws/dubokutv/workers/SyncHomeCatalogsWorker;

    .line 65
    .line 66
    invoke-direct {v0, v1}, Lcom/google/common/reflect/x;-><init>(Ljava/lang/Class;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/google/common/reflect/x;->r()Landroidx/work/x;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    new-instance v1, Lcom/google/common/reflect/x;

    .line 74
    .line 75
    const-class v3, Lcom/supertws/dubokutv/workers/SyncDramaPageWorker;

    .line 76
    .line 77
    invoke-direct {v1, v3}, Lcom/google/common/reflect/x;-><init>(Ljava/lang/Class;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/google/common/reflect/x;->r()Landroidx/work/x;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    new-instance v3, Lcom/google/common/reflect/x;

    .line 85
    .line 86
    const-class v5, Lcom/supertws/dubokutv/workers/SyncVarietyPageWorker;

    .line 87
    .line 88
    invoke-direct {v3, v5}, Lcom/google/common/reflect/x;-><init>(Ljava/lang/Class;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3}, Lcom/google/common/reflect/x;->r()Landroidx/work/x;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    new-instance v5, Lcom/google/common/reflect/x;

    .line 96
    .line 97
    const-class v6, Lcom/supertws/dubokutv/workers/SyncAnimationPageWorker;

    .line 98
    .line 99
    invoke-direct {v5, v6}, Lcom/google/common/reflect/x;-><init>(Ljava/lang/Class;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v5}, Lcom/google/common/reflect/x;->r()Landroidx/work/x;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    new-instance v6, Lcom/google/common/reflect/x;

    .line 107
    .line 108
    const-class v7, Lcom/supertws/dubokutv/workers/SyncMoviePageWorker;

    .line 109
    .line 110
    invoke-direct {v6, v7}, Lcom/google/common/reflect/x;-><init>(Ljava/lang/Class;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v6}, Lcom/google/common/reflect/x;->r()Landroidx/work/x;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    const/4 v7, 0x5

    .line 118
    new-array v7, v7, [Landroidx/work/x;

    .line 119
    .line 120
    const/4 v8, 0x0

    .line 121
    aput-object v0, v7, v8

    .line 122
    .line 123
    const/4 v0, 0x1

    .line 124
    aput-object v1, v7, v0

    .line 125
    .line 126
    const/4 v0, 0x2

    .line 127
    aput-object v3, v7, v0

    .line 128
    .line 129
    const/4 v0, 0x3

    .line 130
    aput-object v5, v7, v0

    .line 131
    .line 132
    const/4 v1, 0x4

    .line 133
    aput-object v6, v7, v1

    .line 134
    .line 135
    invoke-static {v7}, Landroidx/work/d0;->O([Ljava/lang/Object;)Ljava/util/List;

    .line 136
    .line 137
    .line 138
    move-result-object v5

    .line 139
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-nez v1, :cond_0

    .line 144
    .line 145
    new-instance v1, Landroidx/work/impl/m;

    .line 146
    .line 147
    const/4 v6, 0x0

    .line 148
    const-string v3, "startUpSyncWorkChain"

    .line 149
    .line 150
    invoke-direct/range {v1 .. v6}, Landroidx/work/impl/m;-><init>(Landroidx/work/impl/v;Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Ljava/util/List;I)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1}, Landroidx/work/impl/m;->C()Landroidx/work/w;

    .line 154
    .line 155
    .line 156
    sget-object v1, Lkotlinx/coroutines/i0;->a:Lyb/e;

    .line 157
    .line 158
    sget-object v1, Lyb/d;->c:Lyb/d;

    .line 159
    .line 160
    invoke-static {v1}, Lkotlinx/coroutines/z;->c(Lkotlin/coroutines/h;)Lkotlinx/coroutines/internal/c;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    new-instance v2, Lcom/supertws/dubokutv/DubokuTvApplication$onCreate$2;

    .line 165
    .line 166
    const/4 v3, 0x0

    .line 167
    invoke-direct {v2, p0, v3}, Lcom/supertws/dubokutv/DubokuTvApplication$onCreate$2;-><init>(Lcom/supertws/dubokutv/DubokuTvApplication;Lkotlin/coroutines/c;)V

    .line 168
    .line 169
    .line 170
    invoke-static {v1, v3, v3, v2, v0}, Lkotlinx/coroutines/z;->A(Lkotlinx/coroutines/x;Lkotlin/coroutines/h;Lkotlinx/coroutines/CoroutineStart;Lrb/n;I)Lkotlinx/coroutines/p1;

    .line 171
    .line 172
    .line 173
    return-void

    .line 174
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 175
    .line 176
    const-string v1, "beginUniqueWork needs at least one OneTimeWorkRequest."

    .line 177
    .line 178
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    throw v0
.end method
