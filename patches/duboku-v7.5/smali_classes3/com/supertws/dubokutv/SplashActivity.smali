.class public final Lcom/supertws/dubokutv/SplashActivity;
.super Landroidx/appcompat/app/k;
.source "r8-map-id-8ba8015df6390efac2340e8bc72cbaa0af05ae8dc58e92835996b10ae6d6a13d"


# static fields
.field public static final synthetic S:I


# instance fields
.field public O:Lcom/supertws/dubokutv/q;

.field public final P:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public Q:J

.field public R:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/k;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/supertws/dubokutv/SplashActivity;->P:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "splash.onCreate.begin"

    invoke-static {v0}, Lcom/supertws/dubokutv/Dbg;->stage(Ljava/lang/String;)V

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-class v0, Lcom/supertws/dubokutv/SplashActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/h0;->onCreate(Landroid/os/Bundle;)V

    .line 13
    .line 14
    .line 15
    new-instance p1, Landroidx/activity/w0;

    .line 16
    .line 17
    new-instance v0, Lac/a;

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    invoke-direct {v0, v1}, Lac/a;-><init>(I)V

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    const/4 v2, 0x2

    .line 25
    invoke-direct {p1, v1, v1, v2, v0}, Landroidx/activity/w0;-><init>(IIILrb/k;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p0, p1}, Landroidx/activity/s;->a(Landroidx/appcompat/app/k;Landroidx/activity/w0;)V

    .line 29
    .line 30
    .line 31
    const p1, 0x7f0d001c

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/k;->setContentView(I)V

    const-string v0, "splash.setContentView.ok"

    invoke-static {v0}, Lcom/supertws/dubokutv/Dbg;->stage(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const p1, 0x7f0a0141

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/k;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const-string v0, "findViewById(...)"

    .line 45
    .line 46
    invoke-static {p1, v0}, Lkotlin/jvm/internal/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    check-cast p1, Landroid/widget/ProgressBar;

    .line 50
    .line 51
    new-instance v0, Lcom/supertws/dubokutv/t1;

    .line 52
    .line 53
    invoke-direct {v0, p0, p1}, Lcom/supertws/dubokutv/t1;-><init>(Lcom/supertws/dubokutv/SplashActivity;Landroid/widget/ProgressBar;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const-string v0, "getApplicationContext(...)"

    .line 64
    .line 65
    invoke-static {p1, v0}, Lkotlin/jvm/internal/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    sget-object v0, Lcom/supertws/dubokutv/q;->b:Lcom/supertws/dubokutv/j;

    .line 69
    .line 70
    invoke-virtual {v0, p1}, Lcom/supertws/dubokutv/j;->b(Landroid/content/Context;)Lcom/supertws/dubokutv/q;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iput-object p1, p0, Lcom/supertws/dubokutv/SplashActivity;->O:Lcom/supertws/dubokutv/q;

    .line 75
    .line 76
    new-instance v0, Landroidx/media3/exoplayer/q;

    .line 77
    .line 78
    const/16 v1, 0xd

    .line 79
    .line 80
    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/q;-><init>(Ljava/lang/Object;I)V

    .line 81
    .line 82
    .line 83
    new-instance v1, Lw7/f;

    .line 84
    .line 85
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 86
    .line 87
    .line 88
    iget-object p1, p1, Lcom/supertws/dubokutv/q;->a:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast p1, Lcom/google/android/gms/internal/consent_sdk/zzj;

    .line 91
    .line 92
    new-instance v2, La6/i;

    .line 93
    .line 94
    const/4 v3, 0x4

    .line 95
    invoke-direct {v2, v3, p0, v0}, La6/i;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    new-instance v3, Landroidx/media3/exoplayer/q;

    .line 99
    .line 100
    const/16 v4, 0xb

    .line 101
    .line 102
    invoke-direct {v3, v0, v4}, Landroidx/media3/exoplayer/q;-><init>(Ljava/lang/Object;I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, p0, v1, v2, v3}, Lcom/google/android/gms/internal/consent_sdk/zzj;->requestConsentInfoUpdate(Landroid/app/Activity;Lw7/f;Lw7/e;Lw7/d;)V

    .line 106
    .line 107
    .line 108
    iget-object p1, p0, Lcom/supertws/dubokutv/SplashActivity;->O:Lcom/supertws/dubokutv/q;

    .line 109
    .line 110
    if-eqz p1, :cond_2

    .line 111
    .line 112
    iget-object p1, p1, Lcom/supertws/dubokutv/q;->a:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast p1, Lcom/google/android/gms/internal/consent_sdk/zzj;

    .line 115
    .line 116
    invoke-virtual {p1}, Lcom/google/android/gms/internal/consent_sdk/zzj;->canRequestAds()Z

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    if-eqz p1, :cond_1

    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/supertws/dubokutv/SplashActivity;->w()V

    .line 123
    .line 124
    .line 125
    :cond_1
    return-void

    .line 126
    :cond_2
    const-string p1, "googleMobileAdsConsentManager"

    .line 127
    .line 128
    invoke-static {p1}, Lkotlin/jvm/internal/g;->k(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    const/4 p1, 0x0

    .line 132
    throw p1
.end method

.method public final w()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "android.software.leanback"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v2, "android.hardware.touchscreen"

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    move v0, v1

    .line 30
    :goto_1
    iget-object v2, p0, Lcom/supertws/dubokutv/SplashActivity;->P:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    .line 32
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_2
    new-instance v2, Lcom/supertws/dubokutv/s1;

    .line 40
    .line 41
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-static {p0, v2}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;)V

    .line 45
    .line 46
    .line 47
    const-string v2, "v1.0.0"

    .line 48
    .line 49
    invoke-static {v1, v2}, Lcom/vungle/ads/d0;->setGDPRStatus(ZLjava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-static {v1}, Lcom/vungle/ads/d0;->setCCPAStatus(Z)V

    .line 53
    .line 54
    .line 55
    if-nez v0, :cond_4

    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const-string v1, "null cannot be cast to non-null type com.supertws.dubokutv.DubokuTvApplication"

    .line 62
    .line 63
    invoke-static {v0, v1}, Lkotlin/jvm/internal/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    check-cast v0, Lcom/supertws/dubokutv/DubokuTvApplication;

    .line 67
    .line 68
    iget-object v0, v0, Lcom/supertws/dubokutv/DubokuTvApplication;->c:Lcom/supertws/dubokutv/l;

    .line 69
    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    invoke-virtual {v0, p0}, Lcom/supertws/dubokutv/l;->b(Landroid/content/Context;)V

    .line 73
    .line 74
    .line 75
    invoke-static {p0}, Lcom/supertws/dubokutv/presentation/utils/c;->a(Landroid/content/Context;)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_3
    const-string v0, "appOpenAdManager"

    .line 80
    .line 81
    invoke-static {v0}, Lkotlin/jvm/internal/g;->k(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    const/4 v0, 0x0

    .line 85
    throw v0

    .line 86
    :cond_4
    :goto_2
    return-void
.end method
