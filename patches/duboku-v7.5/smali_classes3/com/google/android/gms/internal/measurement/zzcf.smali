.class public final Lcom/google/android/gms/internal/measurement/zzcf;
.super Ljava/lang/Object;
.source "r8-map-id-8ba8015df6390efac2340e8bc72cbaa0af05ae8dc58e92835996b10ae6d6a13d"


# static fields
.field private static final zza:Ljava/lang/reflect/Method;

.field private static final zzb:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    const-string v2, "JobSchedulerCompat"

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    const/16 v4, 0x18

    .line 8
    .line 9
    if-lt v0, v4, :cond_0

    .line 10
    .line 11
    :try_start_0
    const-class v0, Landroid/app/job/JobScheduler;

    .line 12
    .line 13
    const-string v5, "scheduleAsPackage"

    .line 14
    .line 15
    const/4 v6, 0x4

    .line 16
    new-array v6, v6, [Ljava/lang/Class;

    .line 17
    .line 18
    const-class v7, Landroid/app/job/JobInfo;

    .line 19
    .line 20
    const/4 v8, 0x0

    .line 21
    aput-object v7, v6, v8

    .line 22
    .line 23
    const-class v7, Ljava/lang/String;

    .line 24
    .line 25
    const/4 v8, 0x1

    .line 26
    aput-object v7, v6, v8

    .line 27
    .line 28
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 29
    .line 30
    const/4 v9, 0x2

    .line 31
    aput-object v8, v6, v9

    .line 32
    .line 33
    const/4 v8, 0x3

    .line 34
    aput-object v7, v6, v8

    .line 35
    .line 36
    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 37
    .line 38
    .line 39
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    goto :goto_0

    .line 41
    :catch_0
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    const-string v0, "No scheduleAsPackage method available, falling back to schedule"

    .line 48
    .line 49
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    :cond_0
    move-object v0, v3

    .line 53
    :goto_0
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzcf;->zza:Ljava/lang/reflect/Method;

    .line 54
    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 56
    .line 57
    if-lt v0, v4, :cond_1

    .line 58
    .line 59
    :try_start_1
    const-class v0, Landroid/os/UserHandle;

    .line 60
    .line 61
    const-string v4, "myUserId"

    .line 62
    .line 63
    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 64
    .line 65
    .line 66
    move-result-object v3
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 67
    goto :goto_1

    .line 68
    :catch_1
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_1

    .line 73
    .line 74
    const-string v0, "No myUserId method available"

    .line 75
    .line 76
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    :cond_1
    :goto_1
    sput-object v3, Lcom/google/android/gms/internal/measurement/zzcf;->zzb:Ljava/lang/reflect/Method;

    .line 80
    .line 81
    return-void
.end method

.method public static zza(Landroid/content/Context;Landroid/app/job/JobInfo;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .line 1
    const-string p2, "jobscheduler"

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    check-cast p2, Landroid/app/job/JobScheduler;

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    sget-object p3, Lcom/google/android/gms/internal/measurement/zzcf;->zza:Ljava/lang/reflect/Method;

    .line 13
    .line 14
    if-eqz p3, :cond_3

    .line 15
    .line 16
    const-string p3, "android.permission.UPDATE_DEVICE_STATS"

    .line 17
    .line 18
    invoke-static {p0, p3}, Landroidx/core/content/e;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-nez p0, :cond_3

    .line 23
    .line 24
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzcf;->zzb:Ljava/lang/reflect/Method;

    .line 25
    .line 26
    const/4 p3, 0x0

    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    :try_start_0
    const-class v0, Landroid/os/UserHandle;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Ljava/lang/Integer;

    .line 37
    .line 38
    if-eqz p0, :cond_0

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    goto :goto_2

    .line 45
    :catch_0
    move-exception p0

    .line 46
    goto :goto_1

    .line 47
    :catch_1
    move-exception p0

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    :goto_0
    move p0, p3

    .line 50
    goto :goto_2

    .line 51
    :goto_1
    const/4 v0, 0x6

    .line 52
    const-string v1, "JobSchedulerCompat"

    .line 53
    .line 54
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    .line 60
    const-string v0, "myUserId invocation illegal"

    .line 61
    .line 62
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :goto_2
    const-string v0, "UploadAlarm"

    .line 67
    .line 68
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzcf;->zza:Ljava/lang/reflect/Method;

    .line 69
    .line 70
    if-eqz v1, :cond_1

    .line 71
    .line 72
    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    const/4 v2, 0x4

    .line 77
    new-array v2, v2, [Ljava/lang/Object;

    .line 78
    .line 79
    aput-object p1, v2, p3

    .line 80
    .line 81
    const-string v3, "com.google.android.gms"

    .line 82
    .line 83
    const/4 v4, 0x1

    .line 84
    aput-object v3, v2, v4

    .line 85
    .line 86
    const/4 v3, 0x2

    .line 87
    aput-object p0, v2, v3

    .line 88
    .line 89
    const/4 p0, 0x3

    .line 90
    aput-object v0, v2, p0

    .line 91
    .line 92
    invoke-virtual {v1, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    check-cast p0, Ljava/lang/Integer;

    .line 97
    .line 98
    if-eqz p0, :cond_2

    .line 99
    .line 100
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 101
    .line 102
    .line 103
    move-result p3
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    .line 104
    goto :goto_4

    .line 105
    :catch_2
    move-exception p0

    .line 106
    goto :goto_3

    .line 107
    :catch_3
    move-exception p0

    .line 108
    :goto_3
    const-string p3, "error calling scheduleAsPackage"

    .line 109
    .line 110
    invoke-static {v0, p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    .line 112
    .line 113
    :cond_1
    invoke-virtual {p2, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 114
    .line 115
    .line 116
    move-result p3

    .line 117
    :cond_2
    :goto_4
    return p3

    .line 118
    :cond_3
    invoke-virtual {p2, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 119
    .line 120
    .line 121
    move-result p0

    .line 122
    return p0
.end method
