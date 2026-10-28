.class public abstract Lo6/g;
.super Ljava/lang/Object;
.source "r8-map-id-8ba8015df6390efac2340e8bc72cbaa0af05ae8dc58e92835996b10ae6d6a13d"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "NetworkStateTracker"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/work/v;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "tagWithPrefix(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lo6/g;->a:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method

.method public static final a(Landroid/net/ConnectivityManager;Z)Landroidx/work/impl/constraints/h;
    .locals 9

    .line 1
    sget-object v1, Lo6/g;->a:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "connectivityManager"

    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 9
    .line 10
    .line 11
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3

    .line 12
    const/4 v3, 0x1

    .line 13
    const/4 v4, 0x0

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    :try_start_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 17
    .line 18
    .line 19
    move-result v0
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    move v5, v3

    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    move-object p0, v0

    .line 26
    move v7, p1

    .line 27
    goto :goto_6

    .line 28
    :cond_0
    move v5, v3

    .line 29
    move v3, v4

    .line 30
    :goto_0
    :try_start_2
    invoke-static {p0}, Lcom/supertws/dubokutv/DubokuCompat;->getActiveNetwork(Landroid/net/ConnectivityManager;)Landroid/net/Network;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    const/16 v6, 0x10

    .line 41
    .line 42
    invoke-virtual {v0, v6}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 43
    .line 44
    .line 45
    move-result v0
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    .line 46
    goto :goto_3

    .line 47
    :catch_1
    move-exception v0

    .line 48
    goto :goto_2

    .line 49
    :cond_1
    :goto_1
    move v0, v4

    .line 50
    goto :goto_3

    .line 51
    :goto_2
    :try_start_3
    invoke-static {}, Landroidx/work/v;->e()Landroidx/work/v;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    const-string v7, "Unable to validate active network"

    .line 56
    .line 57
    invoke-virtual {v6, v1, v7, v0}, Landroidx/work/v;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :goto_3
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    .line 62
    .line 63
    .line 64
    move-result p0
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3

    .line 65
    if-eqz v2, :cond_2

    .line 66
    .line 67
    :try_start_4
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isRoaming()Z

    .line 68
    .line 69
    .line 70
    move-result v2
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0

    .line 71
    if-nez v2, :cond_2

    .line 72
    .line 73
    move v6, v5

    .line 74
    goto :goto_4

    .line 75
    :cond_2
    move v6, v4

    .line 76
    :goto_4
    :try_start_5
    new-instance v2, Landroidx/work/impl/constraints/h;
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_3

    .line 77
    .line 78
    move v5, p0

    .line 79
    move v7, p1

    .line 80
    move v4, v0

    .line 81
    :try_start_6
    invoke-direct/range {v2 .. v7}, Landroidx/work/impl/constraints/h;-><init>(ZZZZZ)V
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_2

    .line 82
    .line 83
    .line 84
    return-object v2

    .line 85
    :catch_2
    move-exception v0

    .line 86
    :goto_5
    move-object p0, v0

    .line 87
    goto :goto_6

    .line 88
    :catch_3
    move-exception v0

    .line 89
    move v7, p1

    .line 90
    goto :goto_5

    .line 91
    :goto_6
    invoke-static {}, Landroidx/work/v;->e()Landroidx/work/v;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    const-string v0, "Unable to get active network state"

    .line 96
    .line 97
    invoke-virtual {p1, v1, v0, p0}, Landroidx/work/v;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    .line 99
    .line 100
    new-instance v3, Landroidx/work/impl/constraints/h;

    .line 101
    .line 102
    const/4 v6, 0x0

    .line 103
    move v8, v7

    .line 104
    const/4 v7, 0x1

    .line 105
    const/4 v4, 0x0

    .line 106
    const/4 v5, 0x0

    .line 107
    invoke-direct/range {v3 .. v8}, Landroidx/work/impl/constraints/h;-><init>(ZZZZZ)V

    .line 108
    .line 109
    .line 110
    return-object v3
.end method
