.class public final Lx3/i;
.super Ln3/p;
.source "r8-map-id-8ba8015df6390efac2340e8bc72cbaa0af05ae8dc58e92835996b10ae6d6a13d"


# static fields
.field public static final Q1:[I

.field public static R1:Z

.field public static S1:Z


# instance fields
.field public A1:J

.field public B1:Z

.field public C1:J

.field public D1:I

.field public E1:J

.field public F1:Landroidx/media3/common/g1;

.field public G1:Landroidx/media3/common/g1;

.field public H1:I

.field public I1:Z

.field public J1:I

.field public K1:Lx3/h;

.field public L1:Lx3/s;

.field public M1:J

.field public N1:J

.field public O1:Z

.field public P1:I

.field public final X0:Landroid/content/Context;

.field public final Y0:Z

.field public final Z0:Lj3/n;

.field public final a1:I

.field public final b1:Z

.field public final c1:Lx3/t;

.field public final d1:Landroidx/multidex/d;

.field public final e1:Lp3/a;

.field public final f1:J

.field public final g1:Lx3/u;

.field public final h1:Ljava/util/PriorityQueue;

.field public i1:Landroidx/media3/container/j;

.field public j1:Z

.field public k1:Z

.field public l1:Lx3/c0;

.field public m1:Z

.field public n1:I

.field public o1:Ljava/util/List;

.field public p1:Landroid/view/Surface;

.field public q1:Landroidx/media3/exoplayer/video/PlaceholderSurface;

.field public r1:Le3/s;

.field public s1:Z

.field public t1:I

.field public u1:I

.field public v1:J

.field public w1:I

.field public x1:I

.field public y1:I

.field public z1:Landroidx/media3/exoplayer/p1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lx3/i;->Q1:[I

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 4
        0x780
        0x640
        0x5a0
        0x500
        0x3c0
        0x356
        0x280
        0x21c
        0x1e0
    .end array-data
.end method

.method public constructor <init>(Lx3/g;)V
    .locals 7

    .line 1
    iget-object v0, p1, Lx3/g;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p1, Lx3/g;->c:Ln3/k;

    .line 8
    .line 9
    const/high16 v3, 0x41f00000    # 30.0f

    .line 10
    .line 11
    const/4 v4, 0x2

    .line 12
    invoke-direct {p0, v1, v4, v2, v3}, Ln3/p;-><init>(Landroid/content/Context;ILn3/k;F)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lx3/i;->X0:Landroid/content/Context;

    .line 20
    .line 21
    iget v1, p1, Lx3/g;->g:I

    .line 22
    .line 23
    iput v1, p0, Lx3/i;->a1:I

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    iput-object v1, p0, Lx3/i;->l1:Lx3/c0;

    .line 27
    .line 28
    new-instance v2, Lj3/n;

    .line 29
    .line 30
    iget-object v3, p1, Lx3/g;->e:Landroid/os/Handler;

    .line 31
    .line 32
    iget-object v4, p1, Lx3/g;->f:Landroidx/media3/exoplayer/b0;

    .line 33
    .line 34
    const/4 v5, 0x1

    .line 35
    invoke-direct {v2, v3, v4, v5}, Lj3/n;-><init>(Landroid/os/Handler;Landroidx/media3/exoplayer/b0;I)V

    .line 36
    .line 37
    .line 38
    iput-object v2, p0, Lx3/i;->Z0:Lj3/n;

    .line 39
    .line 40
    iget-object v2, p0, Lx3/i;->l1:Lx3/c0;

    .line 41
    .line 42
    const/4 v3, 0x1

    .line 43
    const/4 v4, 0x0

    .line 44
    if-nez v2, :cond_0

    .line 45
    .line 46
    move v2, v3

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    move v2, v4

    .line 49
    :goto_0
    iput-boolean v2, p0, Lx3/i;->Y0:Z

    .line 50
    .line 51
    new-instance v2, Lx3/t;

    .line 52
    .line 53
    iget-wide v5, p1, Lx3/g;->d:J

    .line 54
    .line 55
    invoke-direct {v2, v0, p0, v5, v6}, Lx3/t;-><init>(Landroid/content/Context;Lx3/i;J)V

    .line 56
    .line 57
    .line 58
    iput-object v2, p0, Lx3/i;->c1:Lx3/t;

    .line 59
    .line 60
    new-instance p1, Landroidx/multidex/d;

    .line 61
    .line 62
    const/4 v0, 0x5

    .line 63
    invoke-direct {p1, v0}, Landroidx/multidex/d;-><init>(I)V

    .line 64
    .line 65
    .line 66
    iput-object p1, p0, Lx3/i;->d1:Landroidx/multidex/d;

    .line 67
    .line 68
    const-string p1, "NVIDIA"

    .line 69
    .line 70
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    iput-boolean p1, p0, Lx3/i;->b1:Z

    .line 77
    .line 78
    sget-object p1, Le3/s;->c:Le3/s;

    .line 79
    .line 80
    iput-object p1, p0, Lx3/i;->r1:Le3/s;

    .line 81
    .line 82
    iput v3, p0, Lx3/i;->t1:I

    .line 83
    .line 84
    iput v4, p0, Lx3/i;->u1:I

    .line 85
    .line 86
    sget-object p1, Landroidx/media3/common/g1;->d:Landroidx/media3/common/g1;

    .line 87
    .line 88
    iput-object p1, p0, Lx3/i;->F1:Landroidx/media3/common/g1;

    .line 89
    .line 90
    iput v4, p0, Lx3/i;->J1:I

    .line 91
    .line 92
    iput-object v1, p0, Lx3/i;->G1:Landroidx/media3/common/g1;

    .line 93
    .line 94
    const/16 p1, -0x3e8

    .line 95
    .line 96
    iput p1, p0, Lx3/i;->H1:I

    .line 97
    .line 98
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    iput-wide v2, p0, Lx3/i;->M1:J

    .line 104
    .line 105
    iput-wide v2, p0, Lx3/i;->N1:J

    .line 106
    .line 107
    new-instance p1, Lp3/a;

    .line 108
    .line 109
    invoke-direct {p1}, Lp3/a;-><init>()V

    .line 110
    .line 111
    .line 112
    iput-object p1, p0, Lx3/i;->e1:Lp3/a;

    .line 113
    .line 114
    new-instance p1, Ljava/util/PriorityQueue;

    .line 115
    .line 116
    invoke-direct {p1}, Ljava/util/PriorityQueue;-><init>()V

    .line 117
    .line 118
    .line 119
    iput-object p1, p0, Lx3/i;->h1:Ljava/util/PriorityQueue;

    .line 120
    .line 121
    const-wide/16 v2, -0x3a98

    .line 122
    .line 123
    iput-wide v2, p0, Lx3/i;->f1:J

    .line 124
    .line 125
    new-instance p1, Lx3/u;

    .line 126
    .line 127
    invoke-direct {p1}, Lx3/u;-><init>()V

    .line 128
    .line 129
    .line 130
    iput-object p1, p0, Lx3/i;->g1:Lx3/u;

    .line 131
    .line 132
    iput-object v1, p0, Lx3/i;->z1:Landroidx/media3/exoplayer/p1;

    .line 133
    .line 134
    return-void
.end method

.method public static C0(Ljava/lang/String;)Z
    .locals 17

    .line 1
    const-string v0, "OMX.google"

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    const-class v2, Lx3/i;

    monitor-enter v2

    .line 3
    :try_start_0
    sget-boolean v0, Lx3/i;->R1:Z

    if-nez v0, :cond_a2

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    const/4 v4, 0x7

    const/4 v5, 0x6

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, -0x1

    const/4 v11, 0x1

    if-gt v0, v3, :cond_a

    .line 5
    sget-object v12, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_0

    :goto_0
    move v12, v10

    goto/16 :goto_1

    :sswitch_0
    const-string v13, "machuca"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    goto :goto_0

    :cond_1
    move v12, v4

    goto :goto_1

    :sswitch_1
    const-string v13, "once"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    goto :goto_0

    :cond_2
    move v12, v5

    goto :goto_1

    :sswitch_2
    const-string v13, "magnolia"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    goto :goto_0

    :cond_3
    move v12, v6

    goto :goto_1

    :sswitch_3
    const-string v13, "aquaman"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    goto :goto_0

    :cond_4
    move v12, v7

    goto :goto_1

    :sswitch_4
    const-string v13, "oneday"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    goto :goto_0

    :cond_5
    move v12, v8

    goto :goto_1

    :sswitch_5
    const-string v13, "dangalUHD"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    goto :goto_0

    :cond_6
    move v12, v9

    goto :goto_1

    :sswitch_6
    const-string v13, "dangalFHD"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7

    goto :goto_0

    :cond_7
    move v12, v11

    goto :goto_1

    :sswitch_7
    const-string v13, "dangal"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    goto :goto_0

    :cond_8
    move v12, v1

    :goto_1
    packed-switch v12, :pswitch_data_0

    goto :goto_3

    :cond_9
    :goto_2
    :pswitch_0
    move v1, v11

    goto/16 :goto_8

    :cond_a
    :goto_3
    const/16 v12, 0x1b

    if-gt v0, v12, :cond_b

    .line 6
    :try_start_1
    const-string v13, "HWEML"

    sget-object v14, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    goto :goto_2

    .line 7
    :cond_b
    sget-object v13, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v14

    const/16 v15, 0x8

    sparse-switch v14, :sswitch_data_1

    :goto_4
    move v14, v10

    goto/16 :goto_5

    :sswitch_8
    const-string v14, "AFTEUFF014"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_c

    goto :goto_4

    :cond_c
    move v14, v15

    goto/16 :goto_5

    :sswitch_9
    const-string v14, "AFTSO001"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_d

    goto :goto_4

    :cond_d
    move v14, v4

    goto :goto_5

    :sswitch_a
    const-string v14, "AFTEU014"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_e

    goto :goto_4

    :cond_e
    move v14, v5

    goto :goto_5

    :sswitch_b
    const-string v14, "AFTEU011"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_f

    goto :goto_4

    :cond_f
    move v14, v6

    goto :goto_5

    :sswitch_c
    const-string v14, "AFTR"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_10

    goto :goto_4

    :cond_10
    move v14, v7

    goto :goto_5

    :sswitch_d
    const-string v14, "AFTN"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_11

    goto :goto_4

    :cond_11
    move v14, v8

    goto :goto_5

    :sswitch_e
    const-string v14, "AFTA"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_12

    goto :goto_4

    :cond_12
    move v14, v9

    goto :goto_5

    :sswitch_f
    const-string v14, "AFTKMST12"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_13

    goto :goto_4

    :cond_13
    move v14, v11

    goto :goto_5

    :sswitch_10
    const-string v14, "AFTJMST12"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_14

    goto :goto_4

    :cond_14
    move v14, v1

    :goto_5
    packed-switch v14, :pswitch_data_1

    const/16 v14, 0x1a

    if-gt v0, v14, :cond_a1

    .line 8
    :try_start_2
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_2

    :goto_6
    move v3, v10

    goto/16 :goto_7

    :sswitch_11
    const-string v3, "HWWAS-H"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_6

    :cond_15
    const/16 v3, 0x8b

    goto/16 :goto_7

    :sswitch_12
    const-string v3, "HWVNS-H"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_6

    :cond_16
    const/16 v3, 0x8a

    goto/16 :goto_7

    :sswitch_13
    const-string v3, "ELUGA_Prim"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_6

    :cond_17
    const/16 v3, 0x89

    goto/16 :goto_7

    :sswitch_14
    const-string v3, "ELUGA_Note"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_6

    :cond_18
    const/16 v3, 0x88

    goto/16 :goto_7

    :sswitch_15
    const-string v3, "ASUS_X00AD_2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_6

    :cond_19
    const/16 v3, 0x87

    goto/16 :goto_7

    :sswitch_16
    const-string v3, "HWCAM-H"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_6

    :cond_1a
    const/16 v3, 0x86

    goto/16 :goto_7

    :sswitch_17
    const-string v3, "HWBLN-H"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_6

    :cond_1b
    const/16 v3, 0x85

    goto/16 :goto_7

    :sswitch_18
    const-string v3, "DM-01K"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_6

    :cond_1c
    const/16 v3, 0x84

    goto/16 :goto_7

    :sswitch_19
    const-string v3, "BRAVIA_ATV3_4K"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_6

    :cond_1d
    const/16 v3, 0x83

    goto/16 :goto_7

    :sswitch_1a
    const-string v3, "Infinix-X572"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto/16 :goto_6

    :cond_1e
    const/16 v3, 0x82

    goto/16 :goto_7

    :sswitch_1b
    const-string v3, "PB2-670M"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto/16 :goto_6

    :cond_1f
    const/16 v3, 0x81

    goto/16 :goto_7

    :sswitch_1c
    const-string v3, "santoni"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto/16 :goto_6

    :cond_20
    const/16 v3, 0x80

    goto/16 :goto_7

    :sswitch_1d
    const-string v3, "iball8735_9806"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto/16 :goto_6

    :cond_21
    const/16 v3, 0x7f

    goto/16 :goto_7

    :sswitch_1e
    const-string v3, "CPH1715"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto/16 :goto_6

    :cond_22
    const/16 v3, 0x7e

    goto/16 :goto_7

    :sswitch_1f
    const-string v3, "CPH1609"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    goto/16 :goto_6

    :cond_23
    const/16 v3, 0x7d

    goto/16 :goto_7

    :sswitch_20
    const-string v3, "woods_f"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    goto/16 :goto_6

    :cond_24
    const/16 v3, 0x7c

    goto/16 :goto_7

    :sswitch_21
    const-string v3, "htc_e56ml_dtul"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto/16 :goto_6

    :cond_25
    const/16 v3, 0x7b

    goto/16 :goto_7

    :sswitch_22
    const-string v3, "EverStar_S"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    goto/16 :goto_6

    :cond_26
    const/16 v3, 0x7a

    goto/16 :goto_7

    :sswitch_23
    const-string v3, "hwALE-H"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    goto/16 :goto_6

    :cond_27
    const/16 v3, 0x79

    goto/16 :goto_7

    :sswitch_24
    const-string v3, "itel_S41"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    goto/16 :goto_6

    :cond_28
    const/16 v3, 0x78

    goto/16 :goto_7

    :sswitch_25
    const-string v3, "LS-5017"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    goto/16 :goto_6

    :cond_29
    const/16 v3, 0x77

    goto/16 :goto_7

    :sswitch_26
    const-string v3, "panell_d"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto/16 :goto_6

    :cond_2a
    const/16 v3, 0x76

    goto/16 :goto_7

    :sswitch_27
    const-string v3, "j2xlteins"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto/16 :goto_6

    :cond_2b
    const/16 v3, 0x75

    goto/16 :goto_7

    :sswitch_28
    const-string v3, "A7000plus"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto/16 :goto_6

    :cond_2c
    const/16 v3, 0x74

    goto/16 :goto_7

    :sswitch_29
    const-string v3, "manning"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto/16 :goto_6

    :cond_2d
    const/16 v3, 0x73

    goto/16 :goto_7

    :sswitch_2a
    const-string v3, "GIONEE_WBL7519"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    goto/16 :goto_6

    :cond_2e
    const/16 v3, 0x72

    goto/16 :goto_7

    :sswitch_2b
    const-string v3, "GIONEE_WBL7365"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto/16 :goto_6

    :cond_2f
    const/16 v3, 0x71

    goto/16 :goto_7

    :sswitch_2c
    const-string v3, "GIONEE_WBL5708"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    goto/16 :goto_6

    :cond_30
    const/16 v3, 0x70

    goto/16 :goto_7

    :sswitch_2d
    const-string v3, "QM16XE_U"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    goto/16 :goto_6

    :cond_31
    const/16 v3, 0x6f

    goto/16 :goto_7

    :sswitch_2e
    const-string v3, "Pixi5-10_4G"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    goto/16 :goto_6

    :cond_32
    const/16 v3, 0x6e

    goto/16 :goto_7

    :sswitch_2f
    const-string v3, "TB3-850M"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    goto/16 :goto_6

    :cond_33
    const/16 v3, 0x6d

    goto/16 :goto_7

    :sswitch_30
    const-string v3, "TB3-850F"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    goto/16 :goto_6

    :cond_34
    const/16 v3, 0x6c

    goto/16 :goto_7

    :sswitch_31
    const-string v3, "TB3-730X"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    goto/16 :goto_6

    :cond_35
    const/16 v3, 0x6b

    goto/16 :goto_7

    :sswitch_32
    const-string v3, "TB3-730F"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    goto/16 :goto_6

    :cond_36
    const/16 v3, 0x6a

    goto/16 :goto_7

    :sswitch_33
    const-string v3, "A7020a48"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    goto/16 :goto_6

    :cond_37
    const/16 v3, 0x69

    goto/16 :goto_7

    :sswitch_34
    const-string v3, "A7010a48"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    goto/16 :goto_6

    :cond_38
    const/16 v3, 0x68

    goto/16 :goto_7

    :sswitch_35
    const-string v3, "griffin"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    goto/16 :goto_6

    :cond_39
    const/16 v3, 0x67

    goto/16 :goto_7

    :sswitch_36
    const-string v3, "marino_f"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    goto/16 :goto_6

    :cond_3a
    const/16 v3, 0x66

    goto/16 :goto_7

    :sswitch_37
    const-string v3, "CPY83_I00"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    goto/16 :goto_6

    :cond_3b
    const/16 v3, 0x65

    goto/16 :goto_7

    :sswitch_38
    const-string v3, "A2016a40"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    goto/16 :goto_6

    :cond_3c
    const/16 v3, 0x64

    goto/16 :goto_7

    :sswitch_39
    const-string v3, "le_x6"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    goto/16 :goto_6

    :cond_3d
    const/16 v3, 0x63

    goto/16 :goto_7

    :sswitch_3a
    const-string v3, "l5460"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    goto/16 :goto_6

    :cond_3e
    const/16 v3, 0x62

    goto/16 :goto_7

    :sswitch_3b
    const-string v3, "i9031"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    goto/16 :goto_6

    :cond_3f
    const/16 v3, 0x61

    goto/16 :goto_7

    :sswitch_3c
    const-string v3, "X3_HK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    goto/16 :goto_6

    :cond_40
    const/16 v3, 0x60

    goto/16 :goto_7

    :sswitch_3d
    const-string v3, "V23GB"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    goto/16 :goto_6

    :cond_41
    const/16 v3, 0x5f

    goto/16 :goto_7

    :sswitch_3e
    const-string v3, "Q4310"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    goto/16 :goto_6

    :cond_42
    const/16 v3, 0x5e

    goto/16 :goto_7

    :sswitch_3f
    const-string v3, "Q4260"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    goto/16 :goto_6

    :cond_43
    const/16 v3, 0x5d

    goto/16 :goto_7

    :sswitch_40
    const-string v3, "PRO7S"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    goto/16 :goto_6

    :cond_44
    const/16 v3, 0x5c

    goto/16 :goto_7

    :sswitch_41
    const-string v3, "F3311"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    goto/16 :goto_6

    :cond_45
    const/16 v3, 0x5b

    goto/16 :goto_7

    :sswitch_42
    const-string v3, "F3215"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    goto/16 :goto_6

    :cond_46
    const/16 v3, 0x5a

    goto/16 :goto_7

    :sswitch_43
    const-string v3, "F3213"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    goto/16 :goto_6

    :cond_47
    const/16 v3, 0x59

    goto/16 :goto_7

    :sswitch_44
    const-string v3, "F3211"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    goto/16 :goto_6

    :cond_48
    const/16 v3, 0x58

    goto/16 :goto_7

    :sswitch_45
    const-string v3, "F3116"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    goto/16 :goto_6

    :cond_49
    const/16 v3, 0x57

    goto/16 :goto_7

    :sswitch_46
    const-string v3, "F3113"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    goto/16 :goto_6

    :cond_4a
    const/16 v3, 0x56

    goto/16 :goto_7

    :sswitch_47
    const-string v3, "F3111"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    goto/16 :goto_6

    :cond_4b
    const/16 v3, 0x55

    goto/16 :goto_7

    :sswitch_48
    const-string v3, "E5643"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    goto/16 :goto_6

    :cond_4c
    const/16 v3, 0x54

    goto/16 :goto_7

    :sswitch_49
    const-string v3, "A1601"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    goto/16 :goto_6

    :cond_4d
    const/16 v3, 0x53

    goto/16 :goto_7

    :sswitch_4a
    const-string v3, "Aura_Note_2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    goto/16 :goto_6

    :cond_4e
    const/16 v3, 0x52

    goto/16 :goto_7

    :sswitch_4b
    const-string v3, "602LV"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    goto/16 :goto_6

    :cond_4f
    const/16 v3, 0x51

    goto/16 :goto_7

    :sswitch_4c
    const-string v3, "601LV"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    goto/16 :goto_6

    :cond_50
    const/16 v3, 0x50

    goto/16 :goto_7

    :sswitch_4d
    const-string v3, "MEIZU_M5"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    goto/16 :goto_6

    :cond_51
    const/16 v3, 0x4f

    goto/16 :goto_7

    :sswitch_4e
    const-string v3, "p212"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    goto/16 :goto_6

    :cond_52
    const/16 v3, 0x4e

    goto/16 :goto_7

    :sswitch_4f
    const-string v3, "mido"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    goto/16 :goto_6

    :cond_53
    const/16 v3, 0x4d

    goto/16 :goto_7

    :sswitch_50
    const-string v3, "kate"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    goto/16 :goto_6

    :cond_54
    const/16 v3, 0x4c

    goto/16 :goto_7

    :sswitch_51
    const-string v3, "fugu"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    goto/16 :goto_6

    :cond_55
    const/16 v3, 0x4b

    goto/16 :goto_7

    :sswitch_52
    const-string v3, "XE2X"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    goto/16 :goto_6

    :cond_56
    const/16 v3, 0x4a

    goto/16 :goto_7

    :sswitch_53
    const-string v3, "Q427"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    goto/16 :goto_6

    :cond_57
    const/16 v3, 0x49

    goto/16 :goto_7

    :sswitch_54
    const-string v3, "Q350"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    goto/16 :goto_6

    :cond_58
    const/16 v3, 0x48

    goto/16 :goto_7

    :sswitch_55
    const-string v3, "P681"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_59

    goto/16 :goto_6

    :cond_59
    const/16 v3, 0x47

    goto/16 :goto_7

    :sswitch_56
    const-string v3, "F04J"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    goto/16 :goto_6

    :cond_5a
    const/16 v3, 0x46

    goto/16 :goto_7

    :sswitch_57
    const-string v3, "F04H"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    goto/16 :goto_6

    :cond_5b
    const/16 v3, 0x45

    goto/16 :goto_7

    :sswitch_58
    const-string v3, "F03H"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    goto/16 :goto_6

    :cond_5c
    const/16 v3, 0x44

    goto/16 :goto_7

    :sswitch_59
    const-string v3, "F02H"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    goto/16 :goto_6

    :cond_5d
    const/16 v3, 0x43

    goto/16 :goto_7

    :sswitch_5a
    const-string v3, "F01J"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    goto/16 :goto_6

    :cond_5e
    const/16 v3, 0x42

    goto/16 :goto_7

    :sswitch_5b
    const-string v3, "F01H"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f

    goto/16 :goto_6

    :cond_5f
    const/16 v3, 0x41

    goto/16 :goto_7

    :sswitch_5c
    const-string v3, "1714"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    goto/16 :goto_6

    :cond_60
    const/16 v3, 0x40

    goto/16 :goto_7

    :sswitch_5d
    const-string v3, "1713"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    goto/16 :goto_6

    :cond_61
    const/16 v3, 0x3f

    goto/16 :goto_7

    :sswitch_5e
    const-string v3, "1601"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    goto/16 :goto_6

    :cond_62
    const/16 v3, 0x3e

    goto/16 :goto_7

    :sswitch_5f
    const-string v3, "flo"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    goto/16 :goto_6

    :cond_63
    const/16 v3, 0x3d

    goto/16 :goto_7

    :sswitch_60
    const-string v3, "deb"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_64

    goto/16 :goto_6

    :cond_64
    const/16 v3, 0x3c

    goto/16 :goto_7

    :sswitch_61
    const-string v3, "cv3"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    goto/16 :goto_6

    :cond_65
    const/16 v3, 0x3b

    goto/16 :goto_7

    :sswitch_62
    const-string v3, "cv1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_66

    goto/16 :goto_6

    :cond_66
    const/16 v3, 0x3a

    goto/16 :goto_7

    :sswitch_63
    const-string v3, "Z80"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    goto/16 :goto_6

    :cond_67
    const/16 v3, 0x39

    goto/16 :goto_7

    :sswitch_64
    const-string v3, "QX1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_68

    goto/16 :goto_6

    :cond_68
    const/16 v3, 0x38

    goto/16 :goto_7

    :sswitch_65
    const-string v3, "PLE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    goto/16 :goto_6

    :cond_69
    const/16 v3, 0x37

    goto/16 :goto_7

    :sswitch_66
    const-string v3, "P85"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    goto/16 :goto_6

    :cond_6a
    const/16 v3, 0x36

    goto/16 :goto_7

    :sswitch_67
    const-string v3, "MX6"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    goto/16 :goto_6

    :cond_6b
    const/16 v3, 0x35

    goto/16 :goto_7

    :sswitch_68
    const-string v3, "M5c"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    goto/16 :goto_6

    :cond_6c
    const/16 v3, 0x34

    goto/16 :goto_7

    :sswitch_69
    const-string v3, "M04"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6d

    goto/16 :goto_6

    :cond_6d
    const/16 v3, 0x33

    goto/16 :goto_7

    :sswitch_6a
    const-string v3, "JGZ"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6e

    goto/16 :goto_6

    :cond_6e
    const/16 v3, 0x32

    goto/16 :goto_7

    :sswitch_6b
    const-string v3, "mh"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6f

    goto/16 :goto_6

    :cond_6f
    const/16 v3, 0x31

    goto/16 :goto_7

    :sswitch_6c
    const-string v3, "b5"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_70

    goto/16 :goto_6

    :cond_70
    const/16 v3, 0x30

    goto/16 :goto_7

    :sswitch_6d
    const-string v3, "V5"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_71

    goto/16 :goto_6

    :cond_71
    const/16 v3, 0x2f

    goto/16 :goto_7

    :sswitch_6e
    const-string v3, "V1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_72

    goto/16 :goto_6

    :cond_72
    const/16 v3, 0x2e

    goto/16 :goto_7

    :sswitch_6f
    const-string v3, "Q5"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    goto/16 :goto_6

    :cond_73
    const/16 v3, 0x2d

    goto/16 :goto_7

    :sswitch_70
    const-string v3, "C1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_74

    goto/16 :goto_6

    :cond_74
    const/16 v3, 0x2c

    goto/16 :goto_7

    :sswitch_71
    const-string v3, "woods_fn"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_75

    goto/16 :goto_6

    :cond_75
    const/16 v3, 0x2b

    goto/16 :goto_7

    :sswitch_72
    const-string v3, "ELUGA_A3_Pro"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_76

    goto/16 :goto_6

    :cond_76
    const/16 v3, 0x2a

    goto/16 :goto_7

    :sswitch_73
    const-string v3, "Z12_PRO"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_77

    goto/16 :goto_6

    :cond_77
    const/16 v3, 0x29

    goto/16 :goto_7

    :sswitch_74
    const-string v3, "BLACK-1X"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_78

    goto/16 :goto_6

    :cond_78
    const/16 v3, 0x28

    goto/16 :goto_7

    :sswitch_75
    const-string v3, "taido_row"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79

    goto/16 :goto_6

    :cond_79
    const/16 v3, 0x27

    goto/16 :goto_7

    :sswitch_76
    const-string v3, "Pixi4-7_3G"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7a

    goto/16 :goto_6

    :cond_7a
    const/16 v3, 0x26

    goto/16 :goto_7

    :sswitch_77
    const-string v3, "GIONEE_GBL7360"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    goto/16 :goto_6

    :cond_7b
    const/16 v3, 0x25

    goto/16 :goto_7

    :sswitch_78
    const-string v3, "GiONEE_CBL7513"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7c

    goto/16 :goto_6

    :cond_7c
    const/16 v3, 0x24

    goto/16 :goto_7

    :sswitch_79
    const-string v3, "OnePlus5T"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7d

    goto/16 :goto_6

    :cond_7d
    const/16 v3, 0x23

    goto/16 :goto_7

    :sswitch_7a
    const-string v3, "whyred"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7e

    goto/16 :goto_6

    :cond_7e
    const/16 v3, 0x22

    goto/16 :goto_7

    :sswitch_7b
    const-string v3, "watson"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7f

    goto/16 :goto_6

    :cond_7f
    const/16 v3, 0x21

    goto/16 :goto_7

    :sswitch_7c
    const-string v3, "SVP-DTV15"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_80

    goto/16 :goto_6

    :cond_80
    const/16 v3, 0x20

    goto/16 :goto_7

    :sswitch_7d
    const-string v3, "A7000-a"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_81

    goto/16 :goto_6

    :cond_81
    const/16 v3, 0x1f

    goto/16 :goto_7

    :sswitch_7e
    const-string v3, "nicklaus_f"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_82

    goto/16 :goto_6

    :cond_82
    const/16 v3, 0x1e

    goto/16 :goto_7

    :sswitch_7f
    const-string v3, "tcl_eu"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_83

    goto/16 :goto_6

    :cond_83
    const/16 v3, 0x1d

    goto/16 :goto_7

    :sswitch_80
    const-string v4, "ELUGA_Ray_X"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a0

    goto/16 :goto_6

    :sswitch_81
    const-string v3, "s905x018"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_84

    goto/16 :goto_6

    :cond_84
    move v3, v12

    goto/16 :goto_7

    :sswitch_82
    const-string v3, "A10-70L"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85

    goto/16 :goto_6

    :cond_85
    move v3, v14

    goto/16 :goto_7

    :sswitch_83
    const-string v3, "A10-70F"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_86

    goto/16 :goto_6

    :cond_86
    const/16 v3, 0x19

    goto/16 :goto_7

    :sswitch_84
    const-string v3, "namath"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_87

    goto/16 :goto_6

    :cond_87
    const/16 v3, 0x18

    goto/16 :goto_7

    :sswitch_85
    const-string v3, "Slate_Pro"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_88

    goto/16 :goto_6

    :cond_88
    const/16 v3, 0x17

    goto/16 :goto_7

    :sswitch_86
    const-string v3, "iris60"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_89

    goto/16 :goto_6

    :cond_89
    const/16 v3, 0x16

    goto/16 :goto_7

    :sswitch_87
    const-string v3, "BRAVIA_ATV2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8a

    goto/16 :goto_6

    :cond_8a
    const/16 v3, 0x15

    goto/16 :goto_7

    :sswitch_88
    const-string v3, "GiONEE_GBL7319"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    goto/16 :goto_6

    :cond_8b
    const/16 v3, 0x14

    goto/16 :goto_7

    :sswitch_89
    const-string v3, "panell_dt"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8c

    goto/16 :goto_6

    :cond_8c
    const/16 v3, 0x13

    goto/16 :goto_7

    :sswitch_8a
    const-string v3, "panell_ds"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8d

    goto/16 :goto_6

    :cond_8d
    const/16 v3, 0x12

    goto/16 :goto_7

    :sswitch_8b
    const-string v3, "panell_dl"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8e

    goto/16 :goto_6

    :cond_8e
    const/16 v3, 0x11

    goto/16 :goto_7

    :sswitch_8c
    const-string v3, "vernee_M5"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8f

    goto/16 :goto_6

    :cond_8f
    const/16 v3, 0x10

    goto/16 :goto_7

    :sswitch_8d
    const-string v3, "pacificrim"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    goto/16 :goto_6

    :cond_90
    const/16 v3, 0xf

    goto/16 :goto_7

    :sswitch_8e
    const-string v3, "Phantom6"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_91

    goto/16 :goto_6

    :cond_91
    const/16 v3, 0xe

    goto/16 :goto_7

    :sswitch_8f
    const-string v3, "ComioS1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_92

    goto/16 :goto_6

    :cond_92
    const/16 v3, 0xd

    goto/16 :goto_7

    :sswitch_90
    const-string v3, "XT1663"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_93

    goto/16 :goto_6

    :cond_93
    const/16 v3, 0xc

    goto/16 :goto_7

    :sswitch_91
    const-string v3, "RAIJIN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_94

    goto/16 :goto_6

    :cond_94
    const/16 v3, 0xb

    goto/16 :goto_7

    :sswitch_92
    const-string v3, "AquaPowerM"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_95

    goto/16 :goto_6

    :cond_95
    const/16 v3, 0xa

    goto/16 :goto_7

    :sswitch_93
    const-string v3, "PGN611"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_96

    goto/16 :goto_6

    :cond_96
    const/16 v3, 0x9

    goto/16 :goto_7

    :sswitch_94
    const-string v3, "PGN610"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_97

    goto/16 :goto_6

    :cond_97
    move v3, v15

    goto/16 :goto_7

    :sswitch_95
    const-string v3, "PGN528"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_98

    goto/16 :goto_6

    :cond_98
    move v3, v4

    goto :goto_7

    :sswitch_96
    const-string v3, "NX573J"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_99

    goto/16 :goto_6

    :cond_99
    move v3, v5

    goto :goto_7

    :sswitch_97
    const-string v3, "NX541J"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9a

    goto/16 :goto_6

    :cond_9a
    move v3, v6

    goto :goto_7

    :sswitch_98
    const-string v3, "CP8676_I02"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9b

    goto/16 :goto_6

    :cond_9b
    move v3, v7

    goto :goto_7

    :sswitch_99
    const-string v3, "K50a40"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9c

    goto/16 :goto_6

    :cond_9c
    move v3, v8

    goto :goto_7

    :sswitch_9a
    const-string v3, "GIONEE_SWW1631"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9d

    goto/16 :goto_6

    :cond_9d
    move v3, v9

    goto :goto_7

    :sswitch_9b
    const-string v3, "GIONEE_SWW1627"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9e

    goto/16 :goto_6

    :cond_9e
    move v3, v11

    goto :goto_7

    :sswitch_9c
    const-string v3, "GIONEE_SWW1609"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9f

    goto/16 :goto_6

    :cond_9f
    move v3, v1

    :cond_a0
    :goto_7
    packed-switch v3, :pswitch_data_2

    .line 9
    const-string v0, "JSN-L21"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 10
    :cond_a1
    :goto_8
    :try_start_3
    sput-boolean v1, Lx3/i;->S1:Z

    .line 11
    sput-boolean v11, Lx3/i;->R1:Z

    goto :goto_9

    :catchall_0
    move-exception v0

    goto :goto_a

    .line 12
    :cond_a2
    :goto_9
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 13
    sget-boolean v0, Lx3/i;->S1:Z

    return v0

    .line 14
    :goto_a
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x4fd0ea5f -> :sswitch_7
        -0x48b8f57f -> :sswitch_6
        -0x48b8bd30 -> :sswitch_5
        -0x3c588c8a -> :sswitch_4
        -0x2d5172e2 -> :sswitch_3
        -0x3de1850 -> :sswitch_2
        0x341e81 -> :sswitch_1
        0x31316ffa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x14d76e6c -> :sswitch_10
        -0x132295cd -> :sswitch_f
        0x1e9d52 -> :sswitch_e
        0x1e9d5f -> :sswitch_d
        0x1e9d63 -> :sswitch_c
        0x6a6b6031 -> :sswitch_b
        0x6a6b6034 -> :sswitch_a
        0x6b2deee6 -> :sswitch_9
        0x7e53ab34 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x7fd6c3bd -> :sswitch_9c
        -0x7fd6c381 -> :sswitch_9b
        -0x7fd6c368 -> :sswitch_9a
        -0x7d026749 -> :sswitch_99
        -0x78929d6a -> :sswitch_98
        -0x75f50a1e -> :sswitch_97
        -0x75f4fe9d -> :sswitch_96
        -0x736f875c -> :sswitch_95
        -0x736f83c2 -> :sswitch_94
        -0x736f83c1 -> :sswitch_93
        -0x7327ce1c -> :sswitch_92
        -0x705c574b -> :sswitch_91
        -0x651ebb62 -> :sswitch_90
        -0x6423293b -> :sswitch_8f
        -0x604f5117 -> :sswitch_8e
        -0x5f691e13 -> :sswitch_8d
        -0x5ca40cc4 -> :sswitch_8c
        -0x58520ec1 -> :sswitch_8b
        -0x58520eba -> :sswitch_8a
        -0x58520eb9 -> :sswitch_89
        -0x4eaed329 -> :sswitch_88
        -0x4892fb4f -> :sswitch_87
        -0x465b3df3 -> :sswitch_86
        -0x43e6c939 -> :sswitch_85
        -0x3ec0fcc5 -> :sswitch_84
        -0x3b33cca0 -> :sswitch_83
        -0x3b33cc9a -> :sswitch_82
        -0x398ae3f6 -> :sswitch_81
        -0x391f0fb4 -> :sswitch_80
        -0x346837ae -> :sswitch_7f
        -0x323788e3 -> :sswitch_7e
        -0x30f57652 -> :sswitch_7d
        -0x2f88a116 -> :sswitch_7c
        -0x2f61ed98 -> :sswitch_7b
        -0x2efd0837 -> :sswitch_7a
        -0x2e9e9441 -> :sswitch_79
        -0x2247b8b1 -> :sswitch_78
        -0x1f0fa2b7 -> :sswitch_77
        -0x19af3b41 -> :sswitch_76
        -0x114fad3e -> :sswitch_75
        -0x10dae90b -> :sswitch_74
        -0x1084b7b7 -> :sswitch_73
        -0xa5988e9 -> :sswitch_72
        -0x35f9fbf -> :sswitch_71
        0x84e -> :sswitch_70
        0xa04 -> :sswitch_6f
        0xa9b -> :sswitch_6e
        0xa9f -> :sswitch_6d
        0xc13 -> :sswitch_6c
        0xd9b -> :sswitch_6b
        0x11ebd -> :sswitch_6a
        0x12711 -> :sswitch_69
        0x127db -> :sswitch_68
        0x12beb -> :sswitch_67
        0x1334d -> :sswitch_66
        0x135c9 -> :sswitch_65
        0x13aea -> :sswitch_64
        0x158d2 -> :sswitch_63
        0x1821e -> :sswitch_62
        0x18220 -> :sswitch_61
        0x18401 -> :sswitch_60
        0x18c69 -> :sswitch_5f
        0x1716e6 -> :sswitch_5e
        0x171ac8 -> :sswitch_5d
        0x171ac9 -> :sswitch_5c
        0x208c61 -> :sswitch_5b
        0x208c63 -> :sswitch_5a
        0x208c80 -> :sswitch_59
        0x208c9f -> :sswitch_58
        0x208cbe -> :sswitch_57
        0x208cc0 -> :sswitch_56
        0x252f5f -> :sswitch_55
        0x25981d -> :sswitch_54
        0x259b88 -> :sswitch_53
        0x290a13 -> :sswitch_52
        0x3021fd -> :sswitch_51
        0x321e47 -> :sswitch_50
        0x332327 -> :sswitch_4f
        0x33ab63 -> :sswitch_4e
        0x27691fb -> :sswitch_4d
        0x30f8881 -> :sswitch_4c
        0x30f8c42 -> :sswitch_4b
        0x349f581 -> :sswitch_4a
        0x3ab0ea7 -> :sswitch_49
        0x3e53ea5 -> :sswitch_48
        0x3f25a44 -> :sswitch_47
        0x3f25a46 -> :sswitch_46
        0x3f25a49 -> :sswitch_45
        0x3f25e05 -> :sswitch_44
        0x3f25e07 -> :sswitch_43
        0x3f25e09 -> :sswitch_42
        0x3f261c6 -> :sswitch_41
        0x48dce49 -> :sswitch_40
        0x48dd589 -> :sswitch_3f
        0x48dd8af -> :sswitch_3e
        0x4d36832 -> :sswitch_3d
        0x4f0b0e7 -> :sswitch_3c
        0x5e2479e -> :sswitch_3b
        0x60acc05 -> :sswitch_3a
        0x6214744 -> :sswitch_39
        0x9d91379 -> :sswitch_38
        0xadc0551 -> :sswitch_37
        0xea056b3 -> :sswitch_36
        0x1121dbc3 -> :sswitch_35
        0x1255818c -> :sswitch_34
        0x1263990d -> :sswitch_33
        0x12d90f3a -> :sswitch_32
        0x12d90f4c -> :sswitch_31
        0x12d98b1b -> :sswitch_30
        0x12d98b22 -> :sswitch_2f
        0x1844c711 -> :sswitch_2e
        0x1e3e8044 -> :sswitch_2d
        0x2f5336ed -> :sswitch_2c
        0x2f54115e -> :sswitch_2b
        0x2f541849 -> :sswitch_2a
        0x31cf010e -> :sswitch_29
        0x36ad82f4 -> :sswitch_28
        0x391a0b61 -> :sswitch_27
        0x3f3728cd -> :sswitch_26
        0x448ec687 -> :sswitch_25
        0x46260f63 -> :sswitch_24
        0x4c505106 -> :sswitch_23
        0x4de67084 -> :sswitch_22
        0x506ac5a9 -> :sswitch_21
        0x5abad9cd -> :sswitch_20
        0x64d2e6e9 -> :sswitch_1f
        0x64d2eac5 -> :sswitch_1e
        0x65e4085b -> :sswitch_1d
        0x6f373556 -> :sswitch_1c
        0x719f1dcb -> :sswitch_1b
        0x75d9a0f0 -> :sswitch_1a
        0x7796d144 -> :sswitch_19
        0x785bcb26 -> :sswitch_18
        0x78fc0e50 -> :sswitch_17
        0x790521fb -> :sswitch_16
        0x7933207f -> :sswitch_15
        0x7a05a409 -> :sswitch_14
        0x7a0696bd -> :sswitch_13
        0x7a16dfe7 -> :sswitch_12
        0x7a1f0e95 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static D0(Ln3/n;Landroidx/media3/common/t;)I
    .locals 11

    .line 1
    iget v0, p1, Landroidx/media3/common/t;->v:I

    .line 2
    .line 3
    iget v1, p1, Landroidx/media3/common/t;->w:I

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    if-eq v0, v2, :cond_d

    .line 7
    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    goto/16 :goto_4

    .line 11
    .line 12
    :cond_0
    iget-object v3, p1, Landroidx/media3/common/t;->o:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const-string v4, "video/dolby-vision"

    .line 18
    .line 19
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    const-string v5, "video/avc"

    .line 24
    .line 25
    const-string v6, "video/av01"

    .line 26
    .line 27
    const/4 v7, 0x1

    .line 28
    const-string v8, "video/hevc"

    .line 29
    .line 30
    const/4 v9, 0x2

    .line 31
    if-eqz v4, :cond_4

    .line 32
    .line 33
    invoke-static {p1}, Le3/c;->b(Landroidx/media3/common/t;)Landroid/util/Pair;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-eqz p1, :cond_3

    .line 38
    .line 39
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p1, Ljava/lang/Integer;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    const/16 v3, 0x200

    .line 48
    .line 49
    if-eq p1, v3, :cond_2

    .line 50
    .line 51
    if-eq p1, v7, :cond_2

    .line 52
    .line 53
    if-ne p1, v9, :cond_1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    const/16 v3, 0x400

    .line 57
    .line 58
    if-ne p1, v3, :cond_3

    .line 59
    .line 60
    move-object v3, v6

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    :goto_0
    move-object v3, v5

    .line 63
    goto :goto_1

    .line 64
    :cond_3
    move-object v3, v8

    .line 65
    :cond_4
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    const/4 v4, 0x4

    .line 70
    const/4 v10, 0x3

    .line 71
    sparse-switch p1, :sswitch_data_0

    .line 72
    .line 73
    .line 74
    :goto_2
    move v7, v2

    .line 75
    goto :goto_3

    .line 76
    :sswitch_0
    const-string p1, "video/x-vnd.on2.vp9"

    .line 77
    .line 78
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-nez p1, :cond_5

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_5
    const/4 v7, 0x6

    .line 86
    goto :goto_3

    .line 87
    :sswitch_1
    const-string p1, "video/x-vnd.on2.vp8"

    .line 88
    .line 89
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-nez p1, :cond_6

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_6
    const/4 v7, 0x5

    .line 97
    goto :goto_3

    .line 98
    :sswitch_2
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-nez p1, :cond_7

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_7
    move v7, v4

    .line 106
    goto :goto_3

    .line 107
    :sswitch_3
    const-string p1, "video/mp4v-es"

    .line 108
    .line 109
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-nez p1, :cond_8

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_8
    move v7, v10

    .line 117
    goto :goto_3

    .line 118
    :sswitch_4
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    if-nez p1, :cond_9

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_9
    move v7, v9

    .line 126
    goto :goto_3

    .line 127
    :sswitch_5
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    if-nez p1, :cond_b

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :sswitch_6
    const-string p1, "video/3gpp"

    .line 135
    .line 136
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    if-nez p1, :cond_a

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_a
    const/4 v7, 0x0

    .line 144
    :cond_b
    :goto_3
    packed-switch v7, :pswitch_data_0

    .line 145
    .line 146
    .line 147
    goto :goto_4

    .line 148
    :pswitch_0
    mul-int/2addr v0, v1

    .line 149
    mul-int/2addr v0, v10

    .line 150
    div-int/lit8 v0, v0, 0x8

    .line 151
    .line 152
    return v0

    .line 153
    :pswitch_1
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 154
    .line 155
    const-string v3, "BRAVIA 4K 2015"

    .line 156
    .line 157
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    if-nez v3, :cond_d

    .line 162
    .line 163
    const-string v3, "Amazon"

    .line 164
    .line 165
    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 166
    .line 167
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    if-eqz v3, :cond_c

    .line 172
    .line 173
    const-string v3, "KFSOWI"

    .line 174
    .line 175
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    if-nez v3, :cond_d

    .line 180
    .line 181
    const-string v3, "AFTS"

    .line 182
    .line 183
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result p1

    .line 187
    if-eqz p1, :cond_c

    .line 188
    .line 189
    iget-boolean p0, p0, Ln3/n;->f:Z

    .line 190
    .line 191
    if-eqz p0, :cond_c

    .line 192
    .line 193
    goto :goto_4

    .line 194
    :cond_c
    const/16 p0, 0x10

    .line 195
    .line 196
    invoke-static {v0, p0}, Le3/e0;->g(II)I

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    invoke-static {v1, p0}, Le3/e0;->g(II)I

    .line 201
    .line 202
    .line 203
    move-result p0

    .line 204
    mul-int/2addr p0, p1

    .line 205
    mul-int/lit16 p0, p0, 0x300

    .line 206
    .line 207
    div-int/2addr p0, v4

    .line 208
    return p0

    .line 209
    :pswitch_2
    mul-int/2addr v0, v1

    .line 210
    mul-int/2addr v0, v10

    .line 211
    div-int/2addr v0, v4

    .line 212
    const/high16 p0, 0x200000

    .line 213
    .line 214
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    .line 215
    .line 216
    .line 217
    move-result p0

    .line 218
    return p0

    .line 219
    :pswitch_3
    mul-int/2addr v0, v1

    .line 220
    mul-int/2addr v0, v10

    .line 221
    div-int/2addr v0, v4

    .line 222
    return v0

    .line 223
    :cond_d
    :goto_4
    return v2

    .line 224
    nop

    .line 225
    :sswitch_data_0
    .sparse-switch
        -0x63306f58 -> :sswitch_6
        -0x631b55f6 -> :sswitch_5
        -0x63185e82 -> :sswitch_4
        0x46cdc642 -> :sswitch_3
        0x4f62373a -> :sswitch_2
        0x5f50bed8 -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch

    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public static E0(Landroid/content/Context;Ln3/i;Landroidx/media3/common/t;ZZ)Ljava/util/List;
    .locals 3

    .line 1
    iget-object v0, p2, Landroidx/media3/common/t;->o:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 11
    .line 12
    const/16 v2, 0x1a

    .line 13
    .line 14
    if-lt v1, v2, :cond_2

    .line 15
    .line 16
    const-string v1, "video/dolby-vision"

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-static {p0}, Lc3/f;->e(Landroid/content/Context;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-nez p0, :cond_2

    .line 29
    .line 30
    invoke-static {p2}, Ln3/u;->c(Landroidx/media3/common/t;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    if-nez p0, :cond_1

    .line 35
    .line 36
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p1, p0, p3, p4}, Ln3/i;->b(Ljava/lang/String;ZZ)Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_2

    .line 50
    .line 51
    return-object p0

    .line 52
    :cond_2
    invoke-static {p1, p2, p3, p4}, Ln3/u;->g(Ln3/i;Landroidx/media3/common/t;ZZ)Lcom/google/common/collect/ImmutableList;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0
.end method

.method public static F0(Ln3/n;Landroidx/media3/common/t;)I
    .locals 4

    .line 1
    iget v0, p1, Landroidx/media3/common/t;->p:I

    .line 2
    .line 3
    iget-object v1, p1, Landroidx/media3/common/t;->r:Ljava/util/List;

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    if-eq v0, v2, :cond_1

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    const/4 v0, 0x0

    .line 13
    move v2, v0

    .line 14
    :goto_0
    if-ge v0, p0, :cond_0

    .line 15
    .line 16
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    check-cast v3, [B

    .line 21
    .line 22
    array-length v3, v3

    .line 23
    add-int/2addr v2, v3

    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget p0, p1, Landroidx/media3/common/t;->p:I

    .line 28
    .line 29
    add-int/2addr p0, v2

    .line 30
    return p0

    .line 31
    :cond_1
    invoke-static {p0, p1}, Lx3/i;->D0(Ln3/n;Landroidx/media3/common/t;)I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    return p0
.end method


# virtual methods
.method public final A(FF)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Ln3/p;->A(FF)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lx3/i;->l1:Lx3/c0;

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    invoke-interface {p2, p1}, Lx3/c0;->j(F)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p2, p0, Lx3/i;->c1:Lx3/t;

    .line 13
    .line 14
    invoke-virtual {p2, p1}, Lx3/t;->h(F)V

    .line 15
    .line 16
    .line 17
    :goto_0
    iget-object p2, p0, Lx3/i;->g1:Lx3/u;

    .line 18
    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    invoke-virtual {p2, p1}, Lx3/u;->c(F)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public final D(J)Z
    .locals 6

    .line 1
    iget-wide v0, p0, Ln3/p;->G0:J

    .line 2
    .line 3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v0, v0, v2

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    iget-wide v4, p0, Lx3/i;->A1:J

    .line 15
    .line 16
    cmp-long v0, p1, v4

    .line 17
    .line 18
    if-gez v0, :cond_1

    .line 19
    .line 20
    return v1

    .line 21
    :cond_1
    iget-wide v4, p0, Ln3/p;->O0:J

    .line 22
    .line 23
    cmp-long v0, v4, v2

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    return v2

    .line 29
    :cond_2
    cmp-long p1, p1, v4

    .line 30
    .line 31
    if-lez p1, :cond_3

    .line 32
    .line 33
    return v2

    .line 34
    :cond_3
    return v1
.end method

.method public final G(Ln3/n;Landroidx/media3/common/t;Landroidx/media3/common/t;)Landroidx/media3/exoplayer/d;
    .locals 8

    .line 1
    invoke-virtual {p1, p2, p3}, Ln3/n;->b(Landroidx/media3/common/t;Landroidx/media3/common/t;)Landroidx/media3/exoplayer/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, v0, Landroidx/media3/exoplayer/d;->e:I

    .line 6
    .line 7
    iget-object v2, p0, Lx3/i;->i1:Landroidx/media3/container/j;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget v3, p3, Landroidx/media3/common/t;->v:I

    .line 13
    .line 14
    iget v4, v2, Landroidx/media3/container/j;->a:I

    .line 15
    .line 16
    if-gt v3, v4, :cond_0

    .line 17
    .line 18
    iget v3, p3, Landroidx/media3/common/t;->w:I

    .line 19
    .line 20
    iget v4, v2, Landroidx/media3/container/j;->b:I

    .line 21
    .line 22
    if-le v3, v4, :cond_1

    .line 23
    .line 24
    :cond_0
    or-int/lit16 v1, v1, 0x100

    .line 25
    .line 26
    :cond_1
    invoke-static {p1, p3}, Lx3/i;->F0(Ln3/n;Landroidx/media3/common/t;)I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    iget v2, v2, Landroidx/media3/container/j;->c:I

    .line 31
    .line 32
    if-le v3, v2, :cond_2

    .line 33
    .line 34
    or-int/lit8 v1, v1, 0x40

    .line 35
    .line 36
    :cond_2
    iget v2, p0, Lx3/i;->u1:I

    .line 37
    .line 38
    const/high16 v3, -0x80000000

    .line 39
    .line 40
    if-eq v2, v3, :cond_4

    .line 41
    .line 42
    iget v2, p2, Landroidx/media3/common/t;->z:F

    .line 43
    .line 44
    const/high16 v3, -0x40800000    # -1.0f

    .line 45
    .line 46
    cmpl-float v4, v2, v3

    .line 47
    .line 48
    if-eqz v4, :cond_4

    .line 49
    .line 50
    iget v4, p3, Landroidx/media3/common/t;->z:F

    .line 51
    .line 52
    cmpl-float v3, v4, v3

    .line 53
    .line 54
    if-eqz v3, :cond_4

    .line 55
    .line 56
    sub-float/2addr v4, v2

    .line 57
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    const/high16 v3, 0x3f800000    # 1.0f

    .line 62
    .line 63
    cmpl-float v2, v2, v3

    .line 64
    .line 65
    if-lez v2, :cond_4

    .line 66
    .line 67
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 68
    .line 69
    const/16 v3, 0x1e

    .line 70
    .line 71
    if-lt v2, v3, :cond_3

    .line 72
    .line 73
    if-ne v2, v3, :cond_4

    .line 74
    .line 75
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 76
    .line 77
    const-string v3, "MiTV"

    .line 78
    .line 79
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_4

    .line 84
    .line 85
    :cond_3
    const/high16 v2, 0x10000

    .line 86
    .line 87
    or-int/2addr v1, v2

    .line 88
    :cond_4
    move v7, v1

    .line 89
    new-instance v2, Landroidx/media3/exoplayer/d;

    .line 90
    .line 91
    iget-object v3, p1, Ln3/n;->a:Ljava/lang/String;

    .line 92
    .line 93
    if-eqz v7, :cond_5

    .line 94
    .line 95
    const/4 p1, 0x0

    .line 96
    :goto_0
    move v6, p1

    .line 97
    move-object v4, p2

    .line 98
    move-object v5, p3

    .line 99
    goto :goto_1

    .line 100
    :cond_5
    iget p1, v0, Landroidx/media3/exoplayer/d;->d:I

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :goto_1
    invoke-direct/range {v2 .. v7}, Landroidx/media3/exoplayer/d;-><init>(Ljava/lang/String;Landroidx/media3/common/t;Landroidx/media3/common/t;II)V

    .line 104
    .line 105
    .line 106
    return-object v2
.end method

.method public final G0(Ln3/n;)Landroid/view/Surface;
    .locals 5

    .line 1
    iget-object v0, p0, Lx3/i;->l1:Lx3/c0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lx3/c0;->b()Landroid/view/Surface;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    iget-object v0, p0, Lx3/i;->p1:Landroid/view/Surface;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 16
    .line 17
    const/16 v1, 0x23

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    if-lt v0, v1, :cond_2

    .line 21
    .line 22
    iget-boolean v0, p1, Ln3/n;->h:Z

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    return-object v2

    .line 27
    :cond_2
    invoke-virtual {p0, p1}, Lx3/i;->O0(Ln3/n;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-static {v0}, Lcom/google/common/base/q;->u(Z)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lx3/i;->q1:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    iget-boolean v1, v0, Landroidx/media3/exoplayer/video/PlaceholderSurface;->a:Z

    .line 39
    .line 40
    iget-boolean v3, p1, Ln3/n;->f:Z

    .line 41
    .line 42
    if-eq v1, v3, :cond_3

    .line 43
    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/PlaceholderSurface;->release()V

    .line 47
    .line 48
    .line 49
    iput-object v2, p0, Lx3/i;->q1:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    .line 50
    .line 51
    :cond_3
    iget-object v0, p0, Lx3/i;->q1:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    .line 52
    .line 53
    if-nez v0, :cond_b

    .line 54
    .line 55
    iget-object v0, p0, Lx3/i;->X0:Landroid/content/Context;

    .line 56
    .line 57
    iget-boolean p1, p1, Ln3/n;->f:Z

    .line 58
    .line 59
    const/4 v1, 0x1

    .line 60
    const/4 v2, 0x0

    .line 61
    if-eqz p1, :cond_5

    .line 62
    .line 63
    invoke-static {v0}, Landroidx/media3/exoplayer/video/PlaceholderSurface;->b(Landroid/content/Context;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_4

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_4
    move v0, v2

    .line 71
    goto :goto_1

    .line 72
    :cond_5
    sget v0, Landroidx/media3/exoplayer/video/PlaceholderSurface;->d:I

    .line 73
    .line 74
    :goto_0
    move v0, v1

    .line 75
    :goto_1
    invoke-static {v0}, Lcom/google/common/base/q;->u(Z)V

    .line 76
    .line 77
    .line 78
    new-instance v0, Lx3/j;

    .line 79
    .line 80
    const-string v3, "ExoPlayer:PlaceholderSurface"

    .line 81
    .line 82
    invoke-direct {v0, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    if-eqz p1, :cond_6

    .line 86
    .line 87
    sget p1, Landroidx/media3/exoplayer/video/PlaceholderSurface;->d:I

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_6
    move p1, v2

    .line 91
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 92
    .line 93
    .line 94
    new-instance v3, Landroid/os/Handler;

    .line 95
    .line 96
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-direct {v3, v4, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 101
    .line 102
    .line 103
    iput-object v3, v0, Lx3/j;->b:Landroid/os/Handler;

    .line 104
    .line 105
    new-instance v4, Le3/g;

    .line 106
    .line 107
    invoke-direct {v4, v3}, Le3/g;-><init>(Landroid/os/Handler;)V

    .line 108
    .line 109
    .line 110
    iput-object v4, v0, Lx3/j;->a:Le3/g;

    .line 111
    .line 112
    monitor-enter v0

    .line 113
    :try_start_0
    iget-object v3, v0, Lx3/j;->b:Landroid/os/Handler;

    .line 114
    .line 115
    invoke-virtual {v3, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 120
    .line 121
    .line 122
    :goto_3
    iget-object p1, v0, Lx3/j;->f:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    .line 123
    .line 124
    if-nez p1, :cond_7

    .line 125
    .line 126
    iget-object p1, v0, Lx3/j;->d:Ljava/lang/RuntimeException;

    .line 127
    .line 128
    if-nez p1, :cond_7

    .line 129
    .line 130
    iget-object p1, v0, Lx3/j;->c:Ljava/lang/Error;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    .line 132
    if-nez p1, :cond_7

    .line 133
    .line 134
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    .line 136
    .line 137
    goto :goto_3

    .line 138
    :catchall_0
    move-exception p1

    .line 139
    goto :goto_4

    .line 140
    :catch_0
    move v2, v1

    .line 141
    goto :goto_3

    .line 142
    :cond_7
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    if-eqz v2, :cond_8

    .line 144
    .line 145
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 150
    .line 151
    .line 152
    :cond_8
    iget-object p1, v0, Lx3/j;->d:Ljava/lang/RuntimeException;

    .line 153
    .line 154
    if-nez p1, :cond_a

    .line 155
    .line 156
    iget-object p1, v0, Lx3/j;->c:Ljava/lang/Error;

    .line 157
    .line 158
    if-nez p1, :cond_9

    .line 159
    .line 160
    iget-object p1, v0, Lx3/j;->f:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    .line 161
    .line 162
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    iput-object p1, p0, Lx3/i;->q1:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    .line 166
    .line 167
    goto :goto_5

    .line 168
    :cond_9
    throw p1

    .line 169
    :cond_a
    throw p1

    .line 170
    :goto_4
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 171
    throw p1

    .line 172
    :cond_b
    :goto_5
    iget-object p1, p0, Lx3/i;->q1:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    .line 173
    .line 174
    return-object p1
.end method

.method public final H(Ljava/lang/IllegalStateException;Ln3/n;)Landroidx/media3/exoplayer/mediacodec/MediaCodecDecoderException;
    .locals 2

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/video/MediaCodecVideoDecoderException;

    .line 2
    .line 3
    iget-object v1, p0, Lx3/i;->p1:Landroid/view/Surface;

    .line 4
    .line 5
    invoke-direct {v0, p1, p2, v1}, Landroidx/media3/exoplayer/video/MediaCodecVideoDecoderException;-><init>(Ljava/lang/Throwable;Ln3/n;Landroid/view/Surface;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final H0(Ln3/n;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lx3/i;->l1:Lx3/c0;

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lx3/i;->p1:Landroid/view/Surface;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_3

    .line 14
    .line 15
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 16
    .line 17
    const/16 v1, 0x23

    .line 18
    .line 19
    if-lt v0, v1, :cond_1

    .line 20
    .line 21
    iget-boolean v0, p1, Ln3/n;->h:Z

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p0, p1}, Lx3/i;->O0(Ln3/n;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    const/4 p1, 0x0

    .line 34
    return p1

    .line 35
    :cond_3
    :goto_0
    const/4 p1, 0x1

    .line 36
    return p1
.end method

.method public final I0(Lh3/e;)Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/a;->k()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_3

    .line 7
    .line 8
    const/high16 v0, 0x20000000

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroidx/media3/container/f;->d(I)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-wide v2, p0, Lx3/i;->N1:J

    .line 18
    .line 19
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    cmp-long v0, v2, v4

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    return v1

    .line 29
    :cond_1
    iget-wide v4, p1, Lh3/e;->i:J

    .line 30
    .line 31
    iget-object p1, p0, Ln3/p;->N0:Ln3/o;

    .line 32
    .line 33
    iget-wide v6, p1, Ln3/o;->c:J

    .line 34
    .line 35
    sub-long/2addr v4, v6

    .line 36
    sub-long/2addr v2, v4

    .line 37
    const-wide/32 v4, 0x186a0

    .line 38
    .line 39
    .line 40
    cmp-long p1, v2, v4

    .line 41
    .line 42
    if-gtz p1, :cond_2

    .line 43
    .line 44
    return v1

    .line 45
    :cond_2
    const/4 p1, 0x0

    .line 46
    return p1

    .line 47
    :cond_3
    :goto_0
    return v1
.end method

.method public final J0()V
    .locals 8

    .line 1
    iget v0, p0, Lx3/i;->w1:I

    .line 2
    .line 3
    if-lez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/a;->i:Le3/y;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iget-wide v2, p0, Lx3/i;->v1:J

    .line 15
    .line 16
    sub-long v2, v0, v2

    .line 17
    .line 18
    iget v4, p0, Lx3/i;->w1:I

    .line 19
    .line 20
    iget-object v5, p0, Lx3/i;->Z0:Lj3/n;

    .line 21
    .line 22
    iget-object v6, v5, Lj3/n;->b:Landroid/os/Handler;

    .line 23
    .line 24
    if-eqz v6, :cond_0

    .line 25
    .line 26
    new-instance v7, Lx3/a0;

    .line 27
    .line 28
    invoke-direct {v7, v5, v4, v2, v3}, Lx3/a0;-><init>(Lj3/n;IJ)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 32
    .line 33
    .line 34
    :cond_0
    const/4 v2, 0x0

    .line 35
    iput v2, p0, Lx3/i;->w1:I

    .line 36
    .line 37
    iput-wide v0, p0, Lx3/i;->v1:J

    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method public final K0()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lx3/i;->I1:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Ln3/p;->b0:Ln3/l;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    new-instance v1, Lx3/h;

    .line 12
    .line 13
    invoke-direct {v1, p0, v0}, Lx3/h;-><init>(Lx3/i;Ln3/l;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lx3/i;->K1:Lx3/h;

    .line 17
    .line 18
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 19
    .line 20
    const/16 v2, 0x21

    .line 21
    .line 22
    if-lt v1, v2, :cond_2

    .line 23
    .line 24
    new-instance v1, Landroid/os/Bundle;

    .line 25
    .line 26
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v2, "tunnel-peek"

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    invoke-interface {v0, v1}, Ln3/l;->a(Landroid/os/Bundle;)V

    .line 36
    .line 37
    .line 38
    :cond_2
    :goto_0
    return-void
.end method

.method public final L0(Ln3/l;IJ)V
    .locals 3

    .line 1
    const-string v0, "releaseOutputBuffer"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, p2, p3, p4}, Ln3/l;->h(IJ)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Ln3/p;->M0:Landroidx/media3/exoplayer/c;

    .line 13
    .line 14
    iget p2, p1, Landroidx/media3/exoplayer/c;->e:I

    .line 15
    .line 16
    const/4 p3, 0x1

    .line 17
    add-int/2addr p2, p3

    .line 18
    iput p2, p1, Landroidx/media3/exoplayer/c;->e:I

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lx3/i;->x1:I

    .line 22
    .line 23
    iget-object p2, p0, Lx3/i;->l1:Lx3/c0;

    .line 24
    .line 25
    if-nez p2, :cond_3

    .line 26
    .line 27
    iget-object p2, p0, Lx3/i;->F1:Landroidx/media3/common/g1;

    .line 28
    .line 29
    sget-object p4, Landroidx/media3/common/g1;->d:Landroidx/media3/common/g1;

    .line 30
    .line 31
    invoke-virtual {p2, p4}, Landroidx/media3/common/g1;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p4

    .line 35
    iget-object v0, p0, Lx3/i;->Z0:Lj3/n;

    .line 36
    .line 37
    if-nez p4, :cond_0

    .line 38
    .line 39
    iget-object p4, p0, Lx3/i;->G1:Landroidx/media3/common/g1;

    .line 40
    .line 41
    invoke-virtual {p2, p4}, Landroidx/media3/common/g1;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p4

    .line 45
    if-nez p4, :cond_0

    .line 46
    .line 47
    iput-object p2, p0, Lx3/i;->G1:Landroidx/media3/common/g1;

    .line 48
    .line 49
    invoke-virtual {v0, p2}, Lj3/n;->c(Landroidx/media3/common/g1;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    iget-object p2, p0, Lx3/i;->c1:Lx3/t;

    .line 53
    .line 54
    iget p4, p2, Lx3/t;->e:I

    .line 55
    .line 56
    const/4 v1, 0x3

    .line 57
    if-eq p4, v1, :cond_1

    .line 58
    .line 59
    move p1, p3

    .line 60
    :cond_1
    iput v1, p2, Lx3/t;->e:I

    .line 61
    .line 62
    iget-object p4, p2, Lx3/t;->l:Le3/y;

    .line 63
    .line 64
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 68
    .line 69
    .line 70
    move-result-wide v1

    .line 71
    invoke-static {v1, v2}, Le3/e0;->Q(J)J

    .line 72
    .line 73
    .line 74
    move-result-wide v1

    .line 75
    iput-wide v1, p2, Lx3/t;->g:J

    .line 76
    .line 77
    if-eqz p1, :cond_3

    .line 78
    .line 79
    iget-object p1, p0, Lx3/i;->p1:Landroid/view/Surface;

    .line 80
    .line 81
    if-eqz p1, :cond_3

    .line 82
    .line 83
    iget-object p2, v0, Lj3/n;->b:Landroid/os/Handler;

    .line 84
    .line 85
    if-eqz p2, :cond_2

    .line 86
    .line 87
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 88
    .line 89
    .line 90
    move-result-wide v1

    .line 91
    new-instance p4, Lcom/google/firebase/crashlytics/internal/common/q;

    .line 92
    .line 93
    invoke-direct {p4, v0, p1, v1, v2}, Lcom/google/firebase/crashlytics/internal/common/q;-><init>(Lj3/n;Ljava/lang/Object;J)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 97
    .line 98
    .line 99
    :cond_2
    iput-boolean p3, p0, Lx3/i;->s1:Z

    .line 100
    .line 101
    :cond_3
    return-void
.end method

.method public final M0(Ljava/lang/Object;)V
    .locals 7

    .line 1
    instance-of v0, p1, Landroid/view/Surface;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Landroid/view/Surface;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object p1, v1

    .line 10
    :goto_0
    iget-object v0, p0, Lx3/i;->p1:Landroid/view/Surface;

    .line 11
    .line 12
    iget-object v2, p0, Lx3/i;->Z0:Lj3/n;

    .line 13
    .line 14
    if-eq v0, p1, :cond_a

    .line 15
    .line 16
    iput-object p1, p0, Lx3/i;->p1:Landroid/view/Surface;

    .line 17
    .line 18
    iget-object v0, p0, Lx3/i;->l1:Lx3/c0;

    .line 19
    .line 20
    iget-object v3, p0, Lx3/i;->c1:Lx3/t;

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v3, p1}, Lx3/t;->g(Landroid/view/Surface;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lx3/i;->s1:Z

    .line 29
    .line 30
    iget v0, p0, Landroidx/media3/exoplayer/a;->p:I

    .line 31
    .line 32
    iget-object v4, p0, Ln3/p;->b0:Ln3/l;

    .line 33
    .line 34
    if-eqz v4, :cond_5

    .line 35
    .line 36
    iget-object v5, p0, Lx3/i;->l1:Lx3/c0;

    .line 37
    .line 38
    if-nez v5, :cond_5

    .line 39
    .line 40
    iget-object v5, p0, Ln3/p;->i0:Ln3/n;

    .line 41
    .line 42
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v6, v1, :cond_4

    const/4 v1, 0x0

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v5}, Lx3/i;->H0(Ln3/n;)Z

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    if-eqz v6, :cond_4

    .line 50
    .line 51
    iget-boolean v6, p0, Lx3/i;->j1:Z

    .line 52
    .line 53
    if-nez v6, :cond_4

    .line 54
    .line 55
    invoke-virtual {p0, v5}, Lx3/i;->G0(Ln3/n;)Landroid/view/Surface;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    if-eqz v5, :cond_2

    .line 60
    .line 61
    invoke-interface {v4, v5}, Ln3/l;->m(Landroid/view/Surface;)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 66
    .line 67
    const/16 v6, 0x23

    .line 68
    .line 69
    if-lt v5, v6, :cond_3

    .line 70
    .line 71
    invoke-interface {v4}, Ln3/l;->g()V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 76
    .line 77
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 78
    .line 79
    .line 80
    throw p1

    .line 81
    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p0}, Ln3/p;->m0()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Ln3/p;->W()V

    .line 85
    .line 86
    .line 87
    :cond_5
    :goto_1
    if-eqz p1, :cond_6

    .line 88
    .line 89
    iget-object p1, p0, Lx3/i;->G1:Landroidx/media3/common/g1;

    .line 90
    .line 91
    if-eqz p1, :cond_7

    .line 92
    .line 93
    invoke-virtual {v2, p1}, Lj3/n;->c(Landroidx/media3/common/g1;)V

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_6
    iput-object v1, p0, Lx3/i;->G1:Landroidx/media3/common/g1;

    .line 98
    .line 99
    iget-object p1, p0, Lx3/i;->l1:Lx3/c0;

    .line 100
    .line 101
    if-eqz p1, :cond_7

    .line 102
    .line 103
    invoke-interface {p1}, Lx3/c0;->k()V

    .line 104
    .line 105
    .line 106
    :cond_7
    :goto_2
    const/4 p1, 0x2

    .line 107
    if-ne v0, p1, :cond_9

    .line 108
    .line 109
    iget-object p1, p0, Lx3/i;->l1:Lx3/c0;

    .line 110
    .line 111
    const/4 v0, 0x1

    .line 112
    if-eqz p1, :cond_8

    .line 113
    .line 114
    invoke-interface {p1, v0}, Lx3/c0;->q(Z)V

    .line 115
    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_8
    invoke-virtual {v3, v0}, Lx3/t;->c(Z)V

    .line 119
    .line 120
    .line 121
    :cond_9
    :goto_3
    invoke-virtual {p0}, Lx3/i;->K0()V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :cond_a
    if-eqz p1, :cond_c

    .line 126
    .line 127
    iget-object p1, p0, Lx3/i;->G1:Landroidx/media3/common/g1;

    .line 128
    .line 129
    if-eqz p1, :cond_b

    .line 130
    .line 131
    invoke-virtual {v2, p1}, Lj3/n;->c(Landroidx/media3/common/g1;)V

    .line 132
    .line 133
    .line 134
    :cond_b
    iget-object p1, p0, Lx3/i;->p1:Landroid/view/Surface;

    .line 135
    .line 136
    if-eqz p1, :cond_c

    .line 137
    .line 138
    iget-boolean v0, p0, Lx3/i;->s1:Z

    .line 139
    .line 140
    if-eqz v0, :cond_c

    .line 141
    .line 142
    iget-object v0, v2, Lj3/n;->b:Landroid/os/Handler;

    .line 143
    .line 144
    if-eqz v0, :cond_c

    .line 145
    .line 146
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 147
    .line 148
    .line 149
    move-result-wide v3

    .line 150
    new-instance v1, Lcom/google/firebase/crashlytics/internal/common/q;

    .line 151
    .line 152
    invoke-direct {v1, v2, p1, v3, v4}, Lcom/google/firebase/crashlytics/internal/common/q;-><init>(Lj3/n;Ljava/lang/Object;J)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 156
    .line 157
    .line 158
    :cond_c
    return-void
.end method

.method public final N(Lh3/e;)I
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x22

    .line 4
    .line 5
    if-lt v0, v1, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lx3/i;->z1:Landroidx/media3/exoplayer/p1;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-boolean v0, p0, Lx3/i;->I1:Z

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    :goto_0
    iget-wide v0, p1, Lh3/e;->i:J

    .line 17
    .line 18
    iget-wide v2, p0, Landroidx/media3/exoplayer/a;->y:J

    .line 19
    .line 20
    cmp-long v0, v0, v2

    .line 21
    .line 22
    if-gez v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lx3/i;->I0(Lh3/e;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    const/16 p1, 0x20

    .line 31
    .line 32
    return p1

    .line 33
    :cond_1
    const/4 p1, 0x0

    .line 34
    return p1
.end method

.method public final N0(JJZZ)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lx3/i;->l1:Lx3/c0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lx3/i;->Y0:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-wide v0, p0, Lx3/i;->M1:J

    .line 10
    .line 11
    neg-long v0, v0

    .line 12
    sub-long/2addr p3, v0

    .line 13
    :cond_0
    const-wide/32 v0, -0x7a120

    .line 14
    .line 15
    .line 16
    cmp-long p1, p1, v0

    .line 17
    .line 18
    const/4 p2, 0x0

    .line 19
    if-gez p1, :cond_7

    .line 20
    .line 21
    if-nez p5, :cond_7

    .line 22
    .line 23
    iget-object p1, p0, Landroidx/media3/exoplayer/a;->v:Landroidx/media3/exoplayer/source/c1;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    iget-wide v0, p0, Landroidx/media3/exoplayer/a;->x:J

    .line 29
    .line 30
    sub-long v0, p3, v0

    .line 31
    .line 32
    invoke-interface {p1, v0, v1}, Landroidx/media3/exoplayer/source/c1;->k(J)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_1

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_1
    iput-wide p3, p0, Lx3/i;->A1:J

    .line 40
    .line 41
    const/4 p3, 0x1

    .line 42
    iget-object p4, p0, Lx3/i;->h1:Ljava/util/PriorityQueue;

    .line 43
    .line 44
    if-eqz p6, :cond_2

    .line 45
    .line 46
    iget-object p5, p0, Ln3/p;->M0:Landroidx/media3/exoplayer/c;

    .line 47
    .line 48
    iget p6, p5, Landroidx/media3/exoplayer/c;->d:I

    .line 49
    .line 50
    add-int/2addr p6, p1

    .line 51
    iput p6, p5, Landroidx/media3/exoplayer/c;->d:I

    .line 52
    .line 53
    iget p1, p5, Landroidx/media3/exoplayer/c;->f:I

    .line 54
    .line 55
    iget v0, p0, Lx3/i;->y1:I

    .line 56
    .line 57
    add-int/2addr p1, v0

    .line 58
    iput p1, p5, Landroidx/media3/exoplayer/c;->f:I

    .line 59
    .line 60
    invoke-virtual {p4}, Ljava/util/PriorityQueue;->size()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    add-int/2addr p1, p6

    .line 65
    iput p1, p5, Landroidx/media3/exoplayer/c;->d:I

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    iget-object p5, p0, Ln3/p;->M0:Landroidx/media3/exoplayer/c;

    .line 69
    .line 70
    iget p6, p5, Landroidx/media3/exoplayer/c;->j:I

    .line 71
    .line 72
    add-int/2addr p6, p3

    .line 73
    iput p6, p5, Landroidx/media3/exoplayer/c;->j:I

    .line 74
    .line 75
    invoke-virtual {p4}, Ljava/util/PriorityQueue;->size()I

    .line 76
    .line 77
    .line 78
    move-result p4

    .line 79
    add-int/2addr p4, p1

    .line 80
    iget p1, p0, Lx3/i;->y1:I

    .line 81
    .line 82
    invoke-virtual {p0, p4, p1}, Lx3/i;->Q0(II)V

    .line 83
    .line 84
    .line 85
    :goto_0
    iget-object p1, p0, Ln3/p;->b0:Ln3/l;

    .line 86
    .line 87
    if-nez p1, :cond_3

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    invoke-virtual {p0}, Lx3/i;->w0()Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-eqz p1, :cond_4

    .line 95
    .line 96
    invoke-virtual {p0}, Ln3/p;->m0()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Ln3/p;->W()V

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_4
    invoke-virtual {p0}, Lx3/i;->u0()Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-eqz p1, :cond_5

    .line 108
    .line 109
    invoke-virtual {p0}, Ln3/p;->L()V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_5
    iput-boolean p3, p0, Ln3/p;->R0:Z

    .line 114
    .line 115
    :goto_1
    iget-object p1, p0, Lx3/i;->l1:Lx3/c0;

    .line 116
    .line 117
    if-eqz p1, :cond_6

    .line 118
    .line 119
    invoke-interface {p1, p2}, Lx3/c0;->m(Z)V

    .line 120
    .line 121
    .line 122
    :cond_6
    return p3

    .line 123
    :cond_7
    :goto_2
    return p2
.end method

.method public final O(FLandroidx/media3/common/t;[Landroidx/media3/common/t;)F
    .locals 7

    .line 1
    array-length v0, p3

    .line 2
    const/high16 v1, -0x40800000    # -1.0f

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v1

    .line 6
    :goto_0
    if-ge v2, v0, :cond_1

    .line 7
    .line 8
    aget-object v4, p3, v2

    .line 9
    .line 10
    iget v4, v4, Landroidx/media3/common/t;->z:F

    .line 11
    .line 12
    cmpl-float v5, v4, v1

    .line 13
    .line 14
    if-eqz v5, :cond_0

    .line 15
    .line 16
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    cmpl-float p3, v3, v1

    .line 24
    .line 25
    if-nez p3, :cond_2

    .line 26
    .line 27
    move v3, v1

    .line 28
    goto :goto_1

    .line 29
    :cond_2
    mul-float/2addr v3, p1

    .line 30
    :goto_1
    iget-object p1, p0, Lx3/i;->z1:Landroidx/media3/exoplayer/p1;

    .line 31
    .line 32
    if-eqz p1, :cond_9

    .line 33
    .line 34
    iget-object p1, p0, Ln3/p;->i0:Ln3/n;

    .line 35
    .line 36
    if-eqz p1, :cond_9

    .line 37
    .line 38
    iget p3, p2, Landroidx/media3/common/t;->v:I

    .line 39
    .line 40
    iget p2, p2, Landroidx/media3/common/t;->w:I

    .line 41
    .line 42
    iget-boolean v0, p1, Ln3/n;->i:Z

    .line 43
    .line 44
    const v2, -0x800001

    .line 45
    .line 46
    .line 47
    if-nez v0, :cond_3

    .line 48
    .line 49
    goto :goto_4

    .line 50
    :cond_3
    iget v0, p1, Ln3/n;->l:F

    .line 51
    .line 52
    cmpl-float v2, v0, v2

    .line 53
    .line 54
    if-eqz v2, :cond_4

    .line 55
    .line 56
    iget v2, p1, Ln3/n;->j:I

    .line 57
    .line 58
    if-ne v2, p3, :cond_4

    .line 59
    .line 60
    iget v2, p1, Ln3/n;->k:I

    .line 61
    .line 62
    if-ne v2, p2, :cond_4

    .line 63
    .line 64
    move v2, v0

    .line 65
    goto :goto_4

    .line 66
    :cond_4
    const/high16 v0, 0x44800000    # 1024.0f

    .line 67
    .line 68
    float-to-double v4, v0

    .line 69
    invoke-virtual {p1, p3, p2, v4, v5}, Ln3/n;->g(IID)Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_5

    .line 74
    .line 75
    move v2, v0

    .line 76
    goto :goto_3

    .line 77
    :cond_5
    const/4 v2, 0x0

    .line 78
    :goto_2
    sub-float v4, v0, v2

    .line 79
    .line 80
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    const/high16 v6, 0x40a00000    # 5.0f

    .line 85
    .line 86
    cmpl-float v5, v5, v6

    .line 87
    .line 88
    if-lez v5, :cond_7

    .line 89
    .line 90
    const/high16 v5, 0x40000000    # 2.0f

    .line 91
    .line 92
    div-float/2addr v4, v5

    .line 93
    add-float/2addr v4, v2

    .line 94
    float-to-double v5, v4

    .line 95
    invoke-virtual {p1, p3, p2, v5, v6}, Ln3/n;->g(IID)Z

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    if-eqz v5, :cond_6

    .line 100
    .line 101
    move v2, v4

    .line 102
    goto :goto_2

    .line 103
    :cond_6
    move v0, v4

    .line 104
    goto :goto_2

    .line 105
    :cond_7
    :goto_3
    iput v2, p1, Ln3/n;->l:F

    .line 106
    .line 107
    iput p3, p1, Ln3/n;->j:I

    .line 108
    .line 109
    iput p2, p1, Ln3/n;->k:I

    .line 110
    .line 111
    :goto_4
    cmpl-float p1, v3, v1

    .line 112
    .line 113
    if-eqz p1, :cond_8

    .line 114
    .line 115
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    return p1

    .line 120
    :cond_8
    return v2

    .line 121
    :cond_9
    return v3
.end method

.method public final O0(Ln3/n;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 1
    iget-boolean v0, p0, Lx3/i;->I1:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p1, Ln3/n;->a:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0}, Lx3/i;->C0(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-boolean p1, p1, Ln3/n;->f:Z

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lx3/i;->X0:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {p1}, Landroidx/media3/exoplayer/video/PlaceholderSurface;->b(Landroid/content/Context;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    :cond_0
    const/4 p1, 0x1

    .line 26
    return p1

    .line 27
    :cond_1
    const/4 p1, 0x0

    .line 28
    return p1
.end method

.method public final P(Ln3/i;Landroidx/media3/common/t;Z)Ljava/util/ArrayList;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lx3/i;->I1:Z

    .line 2
    .line 3
    iget-object v1, p0, Lx3/i;->X0:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v1, p1, p2, p3, v0}, Lx3/i;->E0(Landroid/content/Context;Ln3/i;Landroidx/media3/common/t;ZZ)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    sget-object p3, Ln3/u;->a:Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance p3, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {p3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 14
    .line 15
    .line 16
    new-instance p1, La6/i;

    .line 17
    .line 18
    const/16 v0, 0x8

    .line 19
    .line 20
    invoke-direct {p1, v0, v1, p2}, La6/i;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    new-instance p2, Landroidx/compose/ui/semantics/b0;

    .line 24
    .line 25
    const/4 v0, 0x2

    .line 26
    invoke-direct {p2, p1, v0}, Landroidx/compose/ui/semantics/b0;-><init>(Ljava/lang/Object;I)V

    .line 27
    .line 28
    .line 29
    invoke-static {p3, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 30
    .line 31
    .line 32
    return-object p3
.end method

.method public final P0(Ln3/l;I)V
    .locals 1

    .line 1
    const-string v0, "skipVideoBuffer"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, p2}, Ln3/l;->d(I)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Ln3/p;->M0:Landroidx/media3/exoplayer/c;

    .line 13
    .line 14
    iget p2, p1, Landroidx/media3/exoplayer/c;->f:I

    .line 15
    .line 16
    add-int/lit8 p2, p2, 0x1

    .line 17
    .line 18
    iput p2, p1, Landroidx/media3/exoplayer/c;->f:I

    .line 19
    .line 20
    return-void
.end method

.method public final Q0(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/p;->M0:Landroidx/media3/exoplayer/c;

    .line 2
    .line 3
    iget v1, v0, Landroidx/media3/exoplayer/c;->h:I

    .line 4
    .line 5
    add-int/2addr v1, p1

    .line 6
    iput v1, v0, Landroidx/media3/exoplayer/c;->h:I

    .line 7
    .line 8
    add-int/2addr p1, p2

    .line 9
    iget p2, v0, Landroidx/media3/exoplayer/c;->g:I

    .line 10
    .line 11
    add-int/2addr p2, p1

    .line 12
    iput p2, v0, Landroidx/media3/exoplayer/c;->g:I

    .line 13
    .line 14
    iget p2, p0, Lx3/i;->w1:I

    .line 15
    .line 16
    add-int/2addr p2, p1

    .line 17
    iput p2, p0, Lx3/i;->w1:I

    .line 18
    .line 19
    iget p2, p0, Lx3/i;->x1:I

    .line 20
    .line 21
    add-int/2addr p2, p1

    .line 22
    iput p2, p0, Lx3/i;->x1:I

    .line 23
    .line 24
    iget p1, v0, Landroidx/media3/exoplayer/c;->i:I

    .line 25
    .line 26
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    iput p1, v0, Landroidx/media3/exoplayer/c;->i:I

    .line 31
    .line 32
    iget p1, p0, Lx3/i;->a1:I

    .line 33
    .line 34
    if-lez p1, :cond_0

    .line 35
    .line 36
    iget p2, p0, Lx3/i;->w1:I

    .line 37
    .line 38
    if-lt p2, p1, :cond_0

    .line 39
    .line 40
    invoke-virtual {p0}, Lx3/i;->J0()V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method public final R0(Landroidx/media3/exoplayer/source/a0;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/a;->C:Landroidx/media3/common/v0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/common/v0;->p()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iput-wide v2, p0, Lx3/i;->N1:J

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object p1, p1, Landroidx/media3/exoplayer/source/a0;->a:Ljava/lang/Object;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroidx/media3/common/v0;->b(Ljava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    const/4 v1, -0x1

    .line 24
    if-ne p1, v1, :cond_1

    .line 25
    .line 26
    iput-wide v2, p0, Lx3/i;->N1:J

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    new-instance v1, Landroidx/media3/common/t0;

    .line 30
    .line 31
    invoke-direct {v1}, Landroidx/media3/common/t0;-><init>()V

    .line 32
    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-virtual {v0, p1, v1, v2}, Landroidx/media3/common/v0;->f(ILandroidx/media3/common/t0;Z)Landroidx/media3/common/t0;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget-wide v0, p1, Landroidx/media3/common/t0;->d:J

    .line 40
    .line 41
    iput-wide v0, p0, Lx3/i;->N1:J

    .line 42
    .line 43
    return-void
.end method

.method public final S(Ln3/n;Landroidx/media3/common/t;Landroid/media/MediaCrypto;F)Landroidx/appcompat/widget/w;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v4, p2

    .line 6
    .line 7
    iget-object v3, v2, Ln3/n;->c:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v5, v0, Landroidx/media3/exoplayer/a;->w:[Landroidx/media3/common/t;

    .line 10
    .line 11
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget v6, v4, Landroidx/media3/common/t;->v:I

    .line 15
    .line 16
    iget v7, v4, Landroidx/media3/common/t;->z:F

    .line 17
    .line 18
    iget-object v8, v4, Landroidx/media3/common/t;->E:Landroidx/media3/common/j;

    .line 19
    .line 20
    iget v9, v4, Landroidx/media3/common/t;->w:I

    .line 21
    .line 22
    invoke-static/range {p1 .. p2}, Lx3/i;->F0(Ln3/n;Landroidx/media3/common/t;)I

    .line 23
    .line 24
    .line 25
    move-result v10

    .line 26
    array-length v11, v5

    .line 27
    const/4 v13, -0x1

    .line 28
    const/4 v14, 0x1

    .line 29
    if-ne v11, v14, :cond_1

    .line 30
    .line 31
    if-eq v10, v13, :cond_0

    .line 32
    .line 33
    invoke-static/range {p1 .. p2}, Lx3/i;->D0(Ln3/n;Landroidx/media3/common/t;)I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-eq v5, v13, :cond_0

    .line 38
    .line 39
    int-to-float v10, v10

    .line 40
    const/high16 v11, 0x3fc00000    # 1.5f

    .line 41
    .line 42
    mul-float/2addr v10, v11

    .line 43
    float-to-int v10, v10

    .line 44
    invoke-static {v10, v5}, Ljava/lang/Math;->min(II)I

    .line 45
    .line 46
    .line 47
    move-result v10

    .line 48
    :cond_0
    new-instance v5, Landroidx/media3/container/j;

    .line 49
    .line 50
    invoke-direct {v5, v6, v9, v10}, Landroidx/media3/container/j;-><init>(III)V

    .line 51
    .line 52
    .line 53
    move-object/from16 v19, v8

    .line 54
    .line 55
    move v15, v9

    .line 56
    goto/16 :goto_11

    .line 57
    .line 58
    :cond_1
    array-length v11, v5

    .line 59
    move v14, v6

    .line 60
    move v12, v9

    .line 61
    const/4 v15, 0x0

    .line 62
    const/16 v16, 0x0

    .line 63
    .line 64
    :goto_0
    if-ge v15, v11, :cond_6

    .line 65
    .line 66
    aget-object v13, v5, v15

    .line 67
    .line 68
    move-object/from16 v18, v5

    .line 69
    .line 70
    if-eqz v8, :cond_2

    .line 71
    .line 72
    iget-object v5, v13, Landroidx/media3/common/t;->E:Landroidx/media3/common/j;

    .line 73
    .line 74
    if-nez v5, :cond_2

    .line 75
    .line 76
    invoke-virtual {v13}, Landroidx/media3/common/t;->a()Landroidx/media3/common/s;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    iput-object v8, v5, Landroidx/media3/common/s;->D:Landroidx/media3/common/j;

    .line 81
    .line 82
    new-instance v13, Landroidx/media3/common/t;

    .line 83
    .line 84
    invoke-direct {v13, v5}, Landroidx/media3/common/t;-><init>(Landroidx/media3/common/s;)V

    .line 85
    .line 86
    .line 87
    :cond_2
    invoke-virtual {v2, v4, v13}, Ln3/n;->b(Landroidx/media3/common/t;Landroidx/media3/common/t;)Landroidx/media3/exoplayer/d;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    move/from16 v19, v11

    .line 92
    .line 93
    iget v11, v13, Landroidx/media3/common/t;->w:I

    .line 94
    .line 95
    iget v5, v5, Landroidx/media3/exoplayer/d;->d:I

    .line 96
    .line 97
    if-eqz v5, :cond_5

    .line 98
    .line 99
    iget v5, v13, Landroidx/media3/common/t;->v:I

    .line 100
    .line 101
    move/from16 v20, v15

    .line 102
    .line 103
    const/4 v15, -0x1

    .line 104
    if-eq v5, v15, :cond_4

    .line 105
    .line 106
    if-ne v11, v15, :cond_3

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_3
    const/16 v17, 0x0

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_4
    :goto_1
    const/16 v17, 0x1

    .line 113
    .line 114
    :goto_2
    or-int v16, v16, v17

    .line 115
    .line 116
    invoke-static {v14, v5}, Ljava/lang/Math;->max(II)I

    .line 117
    .line 118
    .line 119
    move-result v14

    .line 120
    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    .line 121
    .line 122
    .line 123
    move-result v12

    .line 124
    invoke-static {v2, v13}, Lx3/i;->F0(Ln3/n;Landroidx/media3/common/t;)I

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    move v10, v5

    .line 133
    goto :goto_3

    .line 134
    :cond_5
    move/from16 v20, v15

    .line 135
    .line 136
    const/4 v15, -0x1

    .line 137
    :goto_3
    add-int/lit8 v5, v20, 0x1

    .line 138
    .line 139
    move v13, v15

    .line 140
    move/from16 v11, v19

    .line 141
    .line 142
    move v15, v5

    .line 143
    move-object/from16 v5, v18

    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_6
    if-eqz v16, :cond_12

    .line 147
    .line 148
    new-instance v5, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    const-string v11, "Resolutions unknown. Codec max resolution: "

    .line 151
    .line 152
    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const-string v11, "x"

    .line 159
    .line 160
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    const-string v13, "MediaCodecVideoRenderer"

    .line 171
    .line 172
    invoke-static {v13, v5}, Le3/a;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    if-le v9, v6, :cond_7

    .line 176
    .line 177
    const/4 v5, 0x1

    .line 178
    goto :goto_4

    .line 179
    :cond_7
    const/4 v5, 0x0

    .line 180
    :goto_4
    if-eqz v5, :cond_8

    .line 181
    .line 182
    move v15, v9

    .line 183
    goto :goto_5

    .line 184
    :cond_8
    move v15, v6

    .line 185
    :goto_5
    move/from16 v16, v5

    .line 186
    .line 187
    if-eqz v5, :cond_9

    .line 188
    .line 189
    move v5, v6

    .line 190
    goto :goto_6

    .line 191
    :cond_9
    move v5, v9

    .line 192
    :goto_6
    int-to-float v1, v5

    .line 193
    move/from16 v17, v1

    .line 194
    .line 195
    int-to-float v1, v15

    .line 196
    div-float v1, v17, v1

    .line 197
    .line 198
    move/from16 v17, v1

    .line 199
    .line 200
    const/4 v1, 0x0

    .line 201
    :goto_7
    const/16 v18, 0x0

    .line 202
    .line 203
    move-object/from16 v19, v8

    .line 204
    .line 205
    const/16 v8, 0x9

    .line 206
    .line 207
    if-ge v1, v8, :cond_11

    .line 208
    .line 209
    sget-object v8, Lx3/i;->Q1:[I

    .line 210
    .line 211
    aget v8, v8, v1

    .line 212
    .line 213
    move/from16 v20, v1

    .line 214
    .line 215
    int-to-float v1, v8

    .line 216
    mul-float v1, v1, v17

    .line 217
    .line 218
    float-to-int v1, v1

    .line 219
    if-le v8, v15, :cond_11

    .line 220
    .line 221
    if-gt v1, v5, :cond_a

    .line 222
    .line 223
    goto/16 :goto_e

    .line 224
    .line 225
    :cond_a
    move/from16 v21, v1

    .line 226
    .line 227
    if-eqz v16, :cond_b

    .line 228
    .line 229
    goto :goto_8

    .line 230
    :cond_b
    move v1, v8

    .line 231
    :goto_8
    if-eqz v16, :cond_c

    .line 232
    .line 233
    :goto_9
    move/from16 v21, v5

    .line 234
    .line 235
    goto :goto_a

    .line 236
    :cond_c
    move/from16 v8, v21

    .line 237
    .line 238
    goto :goto_9

    .line 239
    :goto_a
    iget-object v5, v2, Ln3/n;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 240
    .line 241
    if-nez v5, :cond_d

    .line 242
    .line 243
    :goto_b
    move/from16 v23, v15

    .line 244
    .line 245
    move-object/from16 v4, v18

    .line 246
    .line 247
    goto :goto_c

    .line 248
    :cond_d
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    .line 249
    .line 250
    .line 251
    move-result-object v5

    .line 252
    if-nez v5, :cond_e

    .line 253
    .line 254
    goto :goto_b

    .line 255
    :cond_e
    move-object/from16 v22, v5

    .line 256
    .line 257
    invoke-virtual/range {v22 .. v22}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getWidthAlignment()I

    .line 258
    .line 259
    .line 260
    move-result v5

    .line 261
    move/from16 v23, v15

    .line 262
    .line 263
    invoke-virtual/range {v22 .. v22}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getHeightAlignment()I

    .line 264
    .line 265
    .line 266
    move-result v15

    .line 267
    new-instance v4, Landroid/graphics/Point;

    .line 268
    .line 269
    invoke-static {v1, v5}, Le3/e0;->g(II)I

    .line 270
    .line 271
    .line 272
    move-result v1

    .line 273
    mul-int/2addr v1, v5

    .line 274
    invoke-static {v8, v15}, Le3/e0;->g(II)I

    .line 275
    .line 276
    .line 277
    move-result v5

    .line 278
    mul-int/2addr v5, v15

    .line 279
    invoke-direct {v4, v1, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 280
    .line 281
    .line 282
    :goto_c
    if-eqz v4, :cond_f

    .line 283
    .line 284
    iget v1, v4, Landroid/graphics/Point;->x:I

    .line 285
    .line 286
    iget v5, v4, Landroid/graphics/Point;->y:I

    .line 287
    .line 288
    move v15, v9

    .line 289
    float-to-double v8, v7

    .line 290
    invoke-virtual {v2, v1, v5, v8, v9}, Ln3/n;->g(IID)Z

    .line 291
    .line 292
    .line 293
    move-result v1

    .line 294
    if-eqz v1, :cond_10

    .line 295
    .line 296
    goto :goto_f

    .line 297
    :cond_f
    move v15, v9

    .line 298
    :cond_10
    add-int/lit8 v1, v20, 0x1

    .line 299
    .line 300
    move-object/from16 v4, p2

    .line 301
    .line 302
    move v9, v15

    .line 303
    move-object/from16 v8, v19

    .line 304
    .line 305
    move/from16 v5, v21

    .line 306
    .line 307
    move/from16 v15, v23

    .line 308
    .line 309
    goto :goto_7

    .line 310
    :goto_d
    move-object/from16 v4, v18

    .line 311
    .line 312
    goto :goto_f

    .line 313
    :cond_11
    :goto_e
    move v15, v9

    .line 314
    goto :goto_d

    .line 315
    :goto_f
    if-eqz v4, :cond_13

    .line 316
    .line 317
    iget v1, v4, Landroid/graphics/Point;->x:I

    .line 318
    .line 319
    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    .line 320
    .line 321
    .line 322
    move-result v14

    .line 323
    iget v1, v4, Landroid/graphics/Point;->y:I

    .line 324
    .line 325
    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    .line 326
    .line 327
    .line 328
    move-result v12

    .line 329
    invoke-virtual/range {p2 .. p2}, Landroidx/media3/common/t;->a()Landroidx/media3/common/s;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    iput v14, v1, Landroidx/media3/common/s;->u:I

    .line 334
    .line 335
    iput v12, v1, Landroidx/media3/common/s;->v:I

    .line 336
    .line 337
    new-instance v4, Landroidx/media3/common/t;

    .line 338
    .line 339
    invoke-direct {v4, v1}, Landroidx/media3/common/t;-><init>(Landroidx/media3/common/s;)V

    .line 340
    .line 341
    .line 342
    invoke-static {v2, v4}, Lx3/i;->D0(Ln3/n;Landroidx/media3/common/t;)I

    .line 343
    .line 344
    .line 345
    move-result v1

    .line 346
    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    .line 347
    .line 348
    .line 349
    move-result v10

    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    .line 351
    .line 352
    const-string v4, "Codec max resolution adjusted to: "

    .line 353
    .line 354
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v1

    .line 370
    invoke-static {v13, v1}, Le3/a;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    goto :goto_10

    .line 374
    :cond_12
    move-object/from16 v19, v8

    .line 375
    .line 376
    move v15, v9

    .line 377
    :cond_13
    :goto_10
    new-instance v5, Landroidx/media3/container/j;

    .line 378
    .line 379
    invoke-direct {v5, v14, v12, v10}, Landroidx/media3/container/j;-><init>(III)V

    .line 380
    .line 381
    .line 382
    :goto_11
    iput-object v5, v0, Lx3/i;->i1:Landroidx/media3/container/j;

    .line 383
    .line 384
    iget-boolean v1, v0, Lx3/i;->I1:Z

    .line 385
    .line 386
    if-eqz v1, :cond_14

    .line 387
    .line 388
    iget v1, v0, Lx3/i;->J1:I

    .line 389
    .line 390
    goto :goto_12

    .line 391
    :cond_14
    const/4 v1, 0x0

    .line 392
    :goto_12
    new-instance v4, Landroid/media/MediaFormat;

    .line 393
    .line 394
    invoke-direct {v4}, Landroid/media/MediaFormat;-><init>()V

    .line 395
    .line 396
    .line 397
    const-string v8, "mime"

    .line 398
    .line 399
    invoke-virtual {v4, v8, v3}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    const-string v3, "width"

    .line 403
    .line 404
    invoke-virtual {v4, v3, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 405
    .line 406
    .line 407
    const-string v3, "height"

    .line 408
    .line 409
    invoke-virtual {v4, v3, v15}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 410
    .line 411
    .line 412
    move-object/from16 v3, p2

    .line 413
    .line 414
    iget-object v6, v3, Landroidx/media3/common/t;->r:Ljava/util/List;

    .line 415
    .line 416
    invoke-static {v4, v6}, Le3/a;->s(Landroid/media/MediaFormat;Ljava/util/List;)V

    .line 417
    .line 418
    .line 419
    const/high16 v6, -0x40800000    # -1.0f

    .line 420
    .line 421
    cmpl-float v8, v7, v6

    .line 422
    .line 423
    if-eqz v8, :cond_15

    .line 424
    .line 425
    const-string v8, "frame-rate"

    .line 426
    .line 427
    invoke-virtual {v4, v8, v7}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 428
    .line 429
    .line 430
    :cond_15
    const-string v7, "rotation-degrees"

    .line 431
    .line 432
    iget v8, v3, Landroidx/media3/common/t;->A:I

    .line 433
    .line 434
    invoke-static {v4, v7, v8}, Le3/a;->o(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 435
    .line 436
    .line 437
    if-eqz v19, :cond_16

    .line 438
    .line 439
    const-string v7, "color-transfer"

    .line 440
    .line 441
    move-object/from16 v8, v19

    .line 442
    .line 443
    iget v9, v8, Landroidx/media3/common/j;->c:I

    .line 444
    .line 445
    invoke-static {v4, v7, v9}, Le3/a;->o(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 446
    .line 447
    .line 448
    const-string v7, "color-standard"

    .line 449
    .line 450
    iget v9, v8, Landroidx/media3/common/j;->a:I

    .line 451
    .line 452
    invoke-static {v4, v7, v9}, Le3/a;->o(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 453
    .line 454
    .line 455
    const-string v7, "color-range"

    .line 456
    .line 457
    iget v9, v8, Landroidx/media3/common/j;->b:I

    .line 458
    .line 459
    invoke-static {v4, v7, v9}, Le3/a;->o(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 460
    .line 461
    .line 462
    iget-object v7, v8, Landroidx/media3/common/j;->d:[B

    .line 463
    .line 464
    if-eqz v7, :cond_16

    .line 465
    .line 466
    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 467
    .line 468
    .line 469
    move-result-object v7

    .line 470
    const-string v8, "hdr-static-info"

    .line 471
    .line 472
    invoke-virtual {v4, v8, v7}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 473
    .line 474
    .line 475
    :cond_16
    const-string v7, "video/dolby-vision"

    .line 476
    .line 477
    iget-object v8, v3, Landroidx/media3/common/t;->o:Ljava/lang/String;

    .line 478
    .line 479
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 480
    .line 481
    .line 482
    move-result v7

    .line 483
    if-eqz v7, :cond_17

    .line 484
    .line 485
    invoke-static {v3}, Le3/c;->b(Landroidx/media3/common/t;)Landroid/util/Pair;

    .line 486
    .line 487
    .line 488
    move-result-object v7

    .line 489
    if-eqz v7, :cond_17

    .line 490
    .line 491
    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 492
    .line 493
    check-cast v7, Ljava/lang/Integer;

    .line 494
    .line 495
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 496
    .line 497
    .line 498
    move-result v7

    .line 499
    const-string v8, "profile"

    .line 500
    .line 501
    invoke-static {v4, v8, v7}, Le3/a;->o(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 502
    .line 503
    .line 504
    :cond_17
    const-string v7, "max-width"

    .line 505
    .line 506
    iget v8, v5, Landroidx/media3/container/j;->a:I

    .line 507
    .line 508
    invoke-virtual {v4, v7, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 509
    .line 510
    .line 511
    const-string v7, "max-height"

    .line 512
    .line 513
    iget v8, v5, Landroidx/media3/container/j;->b:I

    .line 514
    .line 515
    invoke-virtual {v4, v7, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 516
    .line 517
    .line 518
    const-string v7, "max-input-size"

    .line 519
    .line 520
    iget v5, v5, Landroidx/media3/container/j;->c:I

    .line 521
    .line 522
    invoke-static {v4, v7, v5}, Le3/a;->o(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 523
    .line 524
    .line 525
    const-string v5, "priority"

    .line 526
    .line 527
    const/4 v7, 0x0

    .line 528
    invoke-virtual {v4, v5, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 529
    .line 530
    .line 531
    cmpl-float v5, p4, v6

    .line 532
    .line 533
    if-eqz v5, :cond_18

    .line 534
    .line 535
    const-string v5, "operating-rate"

    .line 536
    .line 537
    move/from16 v6, p4

    .line 538
    .line 539
    invoke-virtual {v4, v5, v6}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 540
    .line 541
    .line 542
    :cond_18
    iget-boolean v5, v0, Lx3/i;->b1:Z

    .line 543
    .line 544
    if-eqz v5, :cond_19

    .line 545
    .line 546
    const-string v5, "no-post-process"

    .line 547
    .line 548
    const/4 v6, 0x1

    .line 549
    invoke-virtual {v4, v5, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 550
    .line 551
    .line 552
    const-string v5, "auto-frc"

    .line 553
    .line 554
    const/4 v7, 0x0

    .line 555
    invoke-virtual {v4, v5, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 556
    .line 557
    .line 558
    goto :goto_13

    .line 559
    :cond_19
    const/4 v6, 0x1

    .line 560
    :goto_13
    if-eqz v1, :cond_1a

    .line 561
    .line 562
    const-string v5, "tunneled-playback"

    .line 563
    .line 564
    invoke-virtual {v4, v5, v6}, Landroid/media/MediaFormat;->setFeatureEnabled(Ljava/lang/String;Z)V

    .line 565
    .line 566
    .line 567
    const-string v5, "audio-session-id"

    .line 568
    .line 569
    invoke-virtual {v4, v5, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 570
    .line 571
    .line 572
    :cond_1a
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 573
    .line 574
    const/16 v5, 0x23

    .line 575
    .line 576
    if-lt v1, v5, :cond_1b

    .line 577
    .line 578
    iget v1, v0, Lx3/i;->H1:I

    .line 579
    .line 580
    neg-int v1, v1

    .line 581
    const/4 v7, 0x0

    .line 582
    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    .line 583
    .line 584
    .line 585
    move-result v1

    .line 586
    const-string v5, "importance"

    .line 587
    .line 588
    invoke-virtual {v4, v5, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 589
    .line 590
    .line 591
    :cond_1b
    invoke-virtual {v0, v4}, Ln3/p;->E(Landroid/media/MediaFormat;)V

    .line 592
    .line 593
    .line 594
    invoke-virtual/range {p0 .. p1}, Lx3/i;->G0(Ln3/n;)Landroid/view/Surface;

    .line 595
    .line 596
    .line 597
    move-result-object v5

    .line 598
    iget-object v1, v0, Lx3/i;->l1:Lx3/c0;

    .line 599
    .line 600
    if-eqz v1, :cond_1c

    .line 601
    .line 602
    iget-object v1, v0, Lx3/i;->X0:Landroid/content/Context;

    .line 603
    .line 604
    invoke-static {v1}, Le3/e0;->N(Landroid/content/Context;)Z

    .line 605
    .line 606
    .line 607
    move-result v1

    .line 608
    if-nez v1, :cond_1c

    .line 609
    .line 610
    const-string v1, "allow-frame-drop"

    .line 611
    .line 612
    const/4 v7, 0x0

    .line 613
    invoke-virtual {v4, v1, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 614
    .line 615
    .line 616
    :cond_1c
    new-instance v1, Landroidx/appcompat/widget/w;

    .line 617
    .line 618
    const/4 v7, 0x0

    .line 619
    move-object v6, v4

    .line 620
    move-object v4, v3

    .line 621
    move-object v3, v6

    .line 622
    move-object/from16 v6, p3

    .line 623
    .line 624
    invoke-direct/range {v1 .. v7}, Landroidx/appcompat/widget/w;-><init>(Ln3/n;Landroid/media/MediaFormat;Landroidx/media3/common/t;Landroid/view/Surface;Landroid/media/MediaCrypto;Ln3/j;)V

    .line 625
    .line 626
    .line 627
    return-object v1
.end method

.method public final S0(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/p;->M0:Landroidx/media3/exoplayer/c;

    .line 2
    .line 3
    iget-wide v1, v0, Landroidx/media3/exoplayer/c;->k:J

    .line 4
    .line 5
    add-long/2addr v1, p1

    .line 6
    iput-wide v1, v0, Landroidx/media3/exoplayer/c;->k:J

    .line 7
    .line 8
    iget v1, v0, Landroidx/media3/exoplayer/c;->l:I

    .line 9
    .line 10
    add-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    iput v1, v0, Landroidx/media3/exoplayer/c;->l:I

    .line 13
    .line 14
    iget-wide v0, p0, Lx3/i;->C1:J

    .line 15
    .line 16
    add-long/2addr v0, p1

    .line 17
    iput-wide v0, p0, Lx3/i;->C1:J

    .line 18
    .line 19
    iget p1, p0, Lx3/i;->D1:I

    .line 20
    .line 21
    add-int/lit8 p1, p1, 0x1

    .line 22
    .line 23
    iput p1, p0, Lx3/i;->D1:I

    .line 24
    .line 25
    return-void
.end method

.method public final T(Lh3/e;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lx3/i;->k1:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p1, Lh3/e;->p:Ljava/nio/ByteBuffer;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x7

    .line 16
    if-lt v0, v1, :cond_2

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    const/4 v5, 0x0

    .line 39
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 40
    .line 41
    .line 42
    const/16 v6, -0x4b

    .line 43
    .line 44
    if-ne v0, v6, :cond_2

    .line 45
    .line 46
    const/16 v0, 0x3c

    .line 47
    .line 48
    if-ne v1, v0, :cond_2

    .line 49
    .line 50
    const/4 v0, 0x1

    .line 51
    if-ne v2, v0, :cond_2

    .line 52
    .line 53
    const/4 v1, 0x4

    .line 54
    if-ne v3, v1, :cond_2

    .line 55
    .line 56
    if-eqz v4, :cond_1

    .line 57
    .line 58
    if-ne v4, v0, :cond_2

    .line 59
    .line 60
    :cond_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    new-array v0, v0, [B

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Ln3/p;->b0:Ln3/l;

    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    new-instance v1, Landroid/os/Bundle;

    .line 78
    .line 79
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 80
    .line 81
    .line 82
    const-string v2, "hdr10-plus-info"

    .line 83
    .line 84
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 85
    .line 86
    .line 87
    invoke-interface {p1, v1}, Ln3/l;->a(Landroid/os/Bundle;)V

    .line 88
    .line 89
    .line 90
    :cond_2
    :goto_0
    return-void
.end method

.method public final Y(Landroidx/media3/common/t;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lx3/i;->l1:Lx3/c0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lx3/c0;->isInitialized()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    :try_start_0
    iget-object v0, p0, Lx3/i;->l1:Lx3/c0;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Lx3/c0;->u(Landroidx/media3/common/t;)Z

    .line 14
    .line 15
    .line 16
    move-result p1
    :try_end_0
    .catch Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return p1

    .line 18
    :catch_0
    move-exception v0

    .line 19
    const/16 v1, 0x1b58

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-virtual {p0, v0, p1, v2, v1}, Landroidx/media3/exoplayer/a;->f(Ljava/lang/Exception;Landroidx/media3/common/t;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    throw p1

    .line 27
    :cond_0
    const/4 p1, 0x1

    .line 28
    return p1
.end method

.method public final Z(Ljava/lang/Exception;)V
    .locals 4

    .line 1
    const-string v0, "MediaCodecVideoRenderer"

    .line 2
    .line 3
    const-string v1, "Video codec error"

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Le3/a;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lx3/i;->Z0:Lj3/n;

    .line 9
    .line 10
    iget-object v1, v0, Lj3/n;->b:Landroid/os/Handler;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    new-instance v2, Lx3/a0;

    .line 15
    .line 16
    const/4 v3, 0x6

    .line 17
    invoke-direct {v2, v0, p1, v3}, Lx3/a0;-><init>(Lj3/n;Ljava/lang/Object;I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final a0(JJLjava/lang/String;)V
    .locals 8

    .line 1
    iget-object v1, p0, Lx3/i;->Z0:Lj3/n;

    .line 2
    .line 3
    iget-object v7, v1, Lj3/n;->b:Landroid/os/Handler;

    .line 4
    .line 5
    if-eqz v7, :cond_0

    .line 6
    .line 7
    new-instance v0, Lx3/a0;

    .line 8
    .line 9
    move-wide v3, p1

    .line 10
    move-wide v5, p3

    .line 11
    move-object v2, p5

    .line 12
    invoke-direct/range {v0 .. v6}, Lx3/a0;-><init>(Lj3/n;Ljava/lang/String;JJ)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v2, p5

    .line 20
    :goto_0
    invoke-static {v2}, Lx3/i;->C0(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    iput-boolean p1, p0, Lx3/i;->j1:Z

    .line 25
    .line 26
    iget-object p1, p0, Ln3/p;->i0:Ln3/n;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 32
    .line 33
    const/16 p3, 0x1d

    .line 34
    .line 35
    const/4 p4, 0x0

    .line 36
    if-lt p2, p3, :cond_4

    .line 37
    .line 38
    const-string p2, "video/x-vnd.on2.vp9"

    .line 39
    .line 40
    iget-object p3, p1, Ln3/n;->b:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    if-eqz p2, :cond_4

    .line 47
    .line 48
    iget-object p1, p1, Ln3/n;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 49
    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    iget-object p1, p1, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 53
    .line 54
    if-nez p1, :cond_2

    .line 55
    .line 56
    :cond_1
    new-array p1, p4, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 57
    .line 58
    :cond_2
    array-length p2, p1

    .line 59
    move p3, p4

    .line 60
    :goto_1
    if-ge p3, p2, :cond_4

    .line 61
    .line 62
    aget-object p5, p1, p3

    .line 63
    .line 64
    iget p5, p5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 65
    .line 66
    const/16 v0, 0x4000

    .line 67
    .line 68
    if-ne p5, v0, :cond_3

    .line 69
    .line 70
    const/4 p4, 0x1

    .line 71
    goto :goto_2

    .line 72
    :cond_3
    add-int/lit8 p3, p3, 0x1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_4
    :goto_2
    iput-boolean p4, p0, Lx3/i;->k1:Z

    .line 76
    .line 77
    invoke-virtual {p0}, Lx3/i;->K0()V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public final b0(Landroidx/media3/exoplayer/b;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lx3/i;->Z0:Lj3/n;

    .line 2
    .line 3
    iget-object v1, v0, Lj3/n;->b:Landroid/os/Handler;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    new-instance v2, Lf8/f;

    .line 8
    .line 9
    const/16 v3, 0x1a

    .line 10
    .line 11
    invoke-direct {v2, v3, v0, p1}, Lf8/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final c0(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lx3/i;->Z0:Lj3/n;

    .line 2
    .line 3
    iget-object v1, v0, Lj3/n;->b:Landroid/os/Handler;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    new-instance v2, Lx3/a0;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-direct {v2, v0, p1, v3}, Lx3/a0;-><init>(Lj3/n;Ljava/lang/Object;I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final d(ILjava/lang/Object;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_e

    .line 3
    .line 4
    const/4 v1, 0x7

    .line 5
    if-eq p1, v1, :cond_c

    .line 6
    .line 7
    const/16 v1, 0xa

    .line 8
    .line 9
    if-eq p1, v1, :cond_b

    .line 10
    .line 11
    const/4 v1, 0x4

    .line 12
    if-eq p1, v1, :cond_a

    .line 13
    .line 14
    const/4 v1, 0x5

    .line 15
    if-eq p1, v1, :cond_7

    .line 16
    .line 17
    const/16 v1, 0xd

    .line 18
    .line 19
    if-eq p1, v1, :cond_4

    .line 20
    .line 21
    const/16 v1, 0xe

    .line 22
    .line 23
    if-eq p1, v1, :cond_3

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    packed-switch p1, :pswitch_data_0

    .line 27
    .line 28
    .line 29
    invoke-super {p0, p1, p2}, Ln3/p;->d(ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_0
    iget-object p1, p0, Lx3/i;->z1:Landroidx/media3/exoplayer/p1;

    .line 34
    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    move p1, v0

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move p1, v1

    .line 40
    :goto_0
    check-cast p2, Landroidx/media3/exoplayer/p1;

    .line 41
    .line 42
    iput-object p2, p0, Lx3/i;->z1:Landroidx/media3/exoplayer/p1;

    .line 43
    .line 44
    if-eqz p2, :cond_1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    move v0, v1

    .line 48
    :goto_1
    if-eq p1, v0, :cond_d

    .line 49
    .line 50
    iget-object p1, p0, Ln3/p;->c0:Landroidx/media3/common/t;

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Ln3/p;->z0(Landroidx/media3/common/t;)Z

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :pswitch_1
    iget-object p1, p0, Lx3/i;->p1:Landroid/view/Surface;

    .line 57
    .line 58
    const/4 v1, 0x0

    .line 59
    invoke-virtual {p0, v1}, Lx3/i;->M0(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    check-cast p2, Lx3/i;

    .line 66
    .line 67
    invoke-virtual {p2, v0, p1}, Lx3/i;->d(ILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :pswitch_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    check-cast p2, Ljava/lang/Integer;

    .line 75
    .line 76
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    iput p1, p0, Lx3/i;->H1:I

    .line 81
    .line 82
    iget-object p1, p0, Ln3/p;->b0:Ln3/l;

    .line 83
    .line 84
    if-nez p1, :cond_2

    .line 85
    .line 86
    goto/16 :goto_2

    .line 87
    .line 88
    :cond_2
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 89
    .line 90
    const/16 v0, 0x23

    .line 91
    .line 92
    if-lt p2, v0, :cond_d

    .line 93
    .line 94
    new-instance p2, Landroid/os/Bundle;

    .line 95
    .line 96
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 97
    .line 98
    .line 99
    iget v0, p0, Lx3/i;->H1:I

    .line 100
    .line 101
    neg-int v0, v0

    .line 102
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    const-string v1, "importance"

    .line 107
    .line 108
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 109
    .line 110
    .line 111
    invoke-interface {p1, p2}, Ln3/l;->a(Landroid/os/Bundle;)V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    check-cast p2, Le3/s;

    .line 119
    .line 120
    iget p1, p2, Le3/s;->a:I

    .line 121
    .line 122
    if-eqz p1, :cond_d

    .line 123
    .line 124
    iget p1, p2, Le3/s;->b:I

    .line 125
    .line 126
    if-eqz p1, :cond_d

    .line 127
    .line 128
    iput-object p2, p0, Lx3/i;->r1:Le3/s;

    .line 129
    .line 130
    iget-object p1, p0, Lx3/i;->l1:Lx3/c0;

    .line 131
    .line 132
    if-eqz p1, :cond_d

    .line 133
    .line 134
    iget-object v0, p0, Lx3/i;->p1:Landroid/view/Surface;

    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    invoke-interface {p1, v0, p2}, Lx3/c0;->d(Landroid/view/Surface;Le3/s;)V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    check-cast p2, Ljava/util/List;

    .line 147
    .line 148
    sget-object p1, Landroidx/media3/common/f1;->a:Lcom/google/common/collect/ImmutableList;

    .line 149
    .line 150
    invoke-interface {p2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    if-eqz p1, :cond_6

    .line 155
    .line 156
    iget-object p1, p0, Lx3/i;->l1:Lx3/c0;

    .line 157
    .line 158
    if-eqz p1, :cond_d

    .line 159
    .line 160
    invoke-interface {p1}, Lx3/c0;->isInitialized()Z

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    if-nez p1, :cond_5

    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_5
    iget-object p1, p0, Lx3/i;->l1:Lx3/c0;

    .line 168
    .line 169
    invoke-interface {p1}, Lx3/c0;->s()V

    .line 170
    .line 171
    .line 172
    return-void

    .line 173
    :cond_6
    iput-object p2, p0, Lx3/i;->o1:Ljava/util/List;

    .line 174
    .line 175
    iget-object p1, p0, Lx3/i;->l1:Lx3/c0;

    .line 176
    .line 177
    if-eqz p1, :cond_d

    .line 178
    .line 179
    invoke-interface {p1, p2}, Lx3/c0;->n(Ljava/util/List;)V

    .line 180
    .line 181
    .line 182
    return-void

    .line 183
    :cond_7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    .line 185
    .line 186
    check-cast p2, Ljava/lang/Integer;

    .line 187
    .line 188
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 189
    .line 190
    .line 191
    move-result p1

    .line 192
    iput p1, p0, Lx3/i;->u1:I

    .line 193
    .line 194
    iget-object p2, p0, Lx3/i;->l1:Lx3/c0;

    .line 195
    .line 196
    if-eqz p2, :cond_8

    .line 197
    .line 198
    invoke-interface {p2, p1}, Lx3/c0;->i(I)V

    .line 199
    .line 200
    .line 201
    return-void

    .line 202
    :cond_8
    iget-object p2, p0, Lx3/i;->c1:Lx3/t;

    .line 203
    .line 204
    iget-object p2, p2, Lx3/t;->b:Lx3/y;

    .line 205
    .line 206
    iget v1, p2, Lx3/y;->j:I

    .line 207
    .line 208
    if-ne v1, p1, :cond_9

    .line 209
    .line 210
    goto :goto_2

    .line 211
    :cond_9
    iput p1, p2, Lx3/y;->j:I

    .line 212
    .line 213
    invoke-virtual {p2, v0}, Lx3/y;->d(Z)V

    .line 214
    .line 215
    .line 216
    return-void

    .line 217
    :cond_a
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 218
    .line 219
    .line 220
    check-cast p2, Ljava/lang/Integer;

    .line 221
    .line 222
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 223
    .line 224
    .line 225
    move-result p1

    .line 226
    iput p1, p0, Lx3/i;->t1:I

    .line 227
    .line 228
    iget-object p2, p0, Ln3/p;->b0:Ln3/l;

    .line 229
    .line 230
    if-eqz p2, :cond_d

    .line 231
    .line 232
    invoke-interface {p2, p1}, Ln3/l;->k(I)V

    .line 233
    .line 234
    .line 235
    return-void

    .line 236
    :cond_b
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 237
    .line 238
    .line 239
    check-cast p2, Ljava/lang/Integer;

    .line 240
    .line 241
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 242
    .line 243
    .line 244
    move-result p1

    .line 245
    iget p2, p0, Lx3/i;->J1:I

    .line 246
    .line 247
    if-eq p2, p1, :cond_d

    .line 248
    .line 249
    iput p1, p0, Lx3/i;->J1:I

    .line 250
    .line 251
    iget-boolean p1, p0, Lx3/i;->I1:Z

    .line 252
    .line 253
    if-eqz p1, :cond_d

    .line 254
    .line 255
    invoke-virtual {p0}, Ln3/p;->m0()V

    .line 256
    .line 257
    .line 258
    return-void

    .line 259
    :cond_c
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 260
    .line 261
    .line 262
    check-cast p2, Lx3/s;

    .line 263
    .line 264
    iput-object p2, p0, Lx3/i;->L1:Lx3/s;

    .line 265
    .line 266
    iget-object p1, p0, Lx3/i;->l1:Lx3/c0;

    .line 267
    .line 268
    if-eqz p1, :cond_d

    .line 269
    .line 270
    invoke-interface {p1, p2}, Lx3/c0;->a(Lx3/s;)V

    .line 271
    .line 272
    .line 273
    :cond_d
    :goto_2
    return-void

    .line 274
    :cond_e
    invoke-virtual {p0, p2}, Lx3/i;->M0(Ljava/lang/Object;)V

    .line 275
    .line 276
    .line 277
    return-void

    .line 278
    nop

    .line 279
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d0(La9/b;)Landroidx/media3/exoplayer/d;
    .locals 4

    .line 1
    invoke-super {p0, p1}, Ln3/p;->d0(La9/b;)Landroidx/media3/exoplayer/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p1, p1, La9/b;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p1, Landroidx/media3/common/t;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lx3/i;->Z0:Lj3/n;

    .line 13
    .line 14
    iget-object v2, v1, Lj3/n;->b:Landroid/os/Handler;

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    new-instance v3, Lx3/a0;

    .line 19
    .line 20
    invoke-direct {v3, v1, p1, v0}, Lx3/a0;-><init>(Lj3/n;Landroidx/media3/common/t;Landroidx/media3/exoplayer/d;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object p1, p0, Lx3/i;->g1:Lx3/u;

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1}, Lx3/u;->b()V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-object v0
.end method

.method public final e0(Landroidx/media3/common/t;Landroid/media/MediaFormat;)V
    .locals 11

    .line 1
    iget-object v0, p0, Ln3/p;->b0:Ln3/l;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, Lx3/i;->t1:I

    .line 6
    .line 7
    invoke-interface {v0, v1}, Ln3/l;->k(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-boolean v0, p0, Lx3/i;->I1:Z

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget p2, p1, Landroidx/media3/common/t;->v:I

    .line 16
    .line 17
    iget v0, p1, Landroidx/media3/common/t;->w:I

    .line 18
    .line 19
    goto :goto_3

    .line 20
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    const-string v0, "crop-right"

    .line 24
    .line 25
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const-string v3, "crop-top"

    .line 30
    .line 31
    const-string v4, "crop-bottom"

    .line 32
    .line 33
    const-string v5, "crop-left"

    .line 34
    .line 35
    const/4 v6, 0x1

    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    invoke-virtual {p2, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    move v2, v6

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    move v2, v1

    .line 59
    :goto_0
    if-eqz v2, :cond_3

    .line 60
    .line 61
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    invoke-virtual {p2, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    sub-int/2addr v0, v5

    .line 70
    add-int/2addr v0, v6

    .line 71
    goto :goto_1

    .line 72
    :cond_3
    const-string v0, "width"

    .line 73
    .line 74
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    :goto_1
    if-eqz v2, :cond_4

    .line 79
    .line 80
    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    sub-int/2addr v2, p2

    .line 89
    add-int/2addr v2, v6

    .line 90
    move p2, v2

    .line 91
    goto :goto_2

    .line 92
    :cond_4
    const-string v2, "height"

    .line 93
    .line 94
    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    :goto_2
    move v10, v0

    .line 99
    move v0, p2

    .line 100
    move p2, v10

    .line 101
    :goto_3
    iget v2, p1, Landroidx/media3/common/t;->B:F

    .line 102
    .line 103
    iget v3, p1, Landroidx/media3/common/t;->A:I

    .line 104
    .line 105
    const/16 v4, 0x5a

    .line 106
    .line 107
    if-eq v3, v4, :cond_5

    .line 108
    .line 109
    const/16 v4, 0x10e

    .line 110
    .line 111
    if-ne v3, v4, :cond_6

    .line 112
    .line 113
    :cond_5
    const/high16 v3, 0x3f800000    # 1.0f

    .line 114
    .line 115
    div-float v2, v3, v2

    .line 116
    .line 117
    move v10, v0

    .line 118
    move v0, p2

    .line 119
    move p2, v10

    .line 120
    :cond_6
    new-instance v3, Landroidx/media3/common/g1;

    .line 121
    .line 122
    invoke-direct {v3, p2, v0, v2}, Landroidx/media3/common/g1;-><init>(IIF)V

    .line 123
    .line 124
    .line 125
    iput-object v3, p0, Lx3/i;->F1:Landroidx/media3/common/g1;

    .line 126
    .line 127
    iget-object v4, p0, Lx3/i;->l1:Lx3/c0;

    .line 128
    .line 129
    if-eqz v4, :cond_8

    .line 130
    .line 131
    iget-boolean v3, p0, Lx3/i;->O1:Z

    .line 132
    .line 133
    if-eqz v3, :cond_8

    .line 134
    .line 135
    invoke-virtual {p1}, Landroidx/media3/common/t;->a()Landroidx/media3/common/s;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    iput p2, p1, Landroidx/media3/common/s;->u:I

    .line 140
    .line 141
    iput v0, p1, Landroidx/media3/common/s;->v:I

    .line 142
    .line 143
    iput v2, p1, Landroidx/media3/common/s;->A:F

    .line 144
    .line 145
    new-instance v5, Landroidx/media3/common/t;

    .line 146
    .line 147
    invoke-direct {v5, p1}, Landroidx/media3/common/t;-><init>(Landroidx/media3/common/s;)V

    .line 148
    .line 149
    .line 150
    iget v8, p0, Lx3/i;->n1:I

    .line 151
    .line 152
    iget-object p1, p0, Lx3/i;->o1:Ljava/util/List;

    .line 153
    .line 154
    if-eqz p1, :cond_7

    .line 155
    .line 156
    :goto_4
    move-object v9, p1

    .line 157
    goto :goto_5

    .line 158
    :cond_7
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    goto :goto_4

    .line 163
    :goto_5
    iget-object p1, p0, Ln3/p;->N0:Ln3/o;

    .line 164
    .line 165
    iget-wide v6, p1, Ln3/o;->b:J

    .line 166
    .line 167
    invoke-interface/range {v4 .. v9}, Lx3/c0;->l(Landroidx/media3/common/t;JILjava/util/List;)V

    .line 168
    .line 169
    .line 170
    const/4 p1, 0x2

    .line 171
    iput p1, p0, Lx3/i;->n1:I

    .line 172
    .line 173
    goto :goto_6

    .line 174
    :cond_8
    iget-object p2, p0, Lx3/i;->c1:Lx3/t;

    .line 175
    .line 176
    iget p1, p1, Landroidx/media3/common/t;->z:F

    .line 177
    .line 178
    invoke-virtual {p2, p1}, Lx3/t;->f(F)V

    .line 179
    .line 180
    .line 181
    :goto_6
    iput-boolean v1, p0, Lx3/i;->O1:Z

    .line 182
    .line 183
    return-void
.end method

.method public final g()V
    .locals 3

    .line 1
    iget-object v0, p0, Lx3/i;->l1:Lx3/c0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget v2, p0, Lx3/i;->n1:I

    .line 7
    .line 8
    if-eqz v2, :cond_1

    .line 9
    .line 10
    if-ne v2, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-interface {v0}, Lx3/c0;->v()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lx3/i;->n1:I

    .line 19
    .line 20
    return-void

    .line 21
    :cond_2
    iget-object v0, p0, Lx3/i;->c1:Lx3/t;

    .line 22
    .line 23
    iget v2, v0, Lx3/t;->e:I

    .line 24
    .line 25
    if-nez v2, :cond_3

    .line 26
    .line 27
    iput v1, v0, Lx3/t;->e:I

    .line 28
    .line 29
    :cond_3
    return-void
.end method

.method public final g0(J)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Ln3/p;->g0(J)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lx3/i;->I1:Z

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    iget p1, p0, Lx3/i;->y1:I

    .line 9
    .line 10
    add-int/lit8 p1, p1, -0x1

    .line 11
    .line 12
    iput p1, p0, Lx3/i;->y1:I

    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final h0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lx3/i;->l1:Lx3/c0;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Lx3/c0;->h()V

    .line 6
    .line 7
    .line 8
    iget-wide v0, p0, Lx3/i;->M1:J

    .line 9
    .line 10
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    cmp-long v0, v0, v2

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Ln3/p;->N0:Ln3/o;

    .line 20
    .line 21
    iget-wide v0, v0, Ln3/o;->b:J

    .line 22
    .line 23
    iput-wide v0, p0, Lx3/i;->M1:J

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lx3/i;->l1:Lx3/c0;

    .line 26
    .line 27
    iget-wide v1, p0, Lx3/i;->M1:J

    .line 28
    .line 29
    neg-long v1, v1

    .line 30
    invoke-interface {v0, v1, v2}, Lx3/c0;->g(J)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object v0, p0, Lx3/i;->c1:Lx3/t;

    .line 35
    .line 36
    const/4 v1, 0x2

    .line 37
    invoke-virtual {v0, v1}, Lx3/t;->e(I)V

    .line 38
    .line 39
    .line 40
    :goto_0
    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lx3/i;->O1:Z

    .line 42
    .line 43
    invoke-virtual {p0}, Lx3/i;->K0()V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final i0(Lh3/e;)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lx3/i;->e1:Lp3/a;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    iget-object v2, p0, Ln3/p;->i0:Ln3/n;

    .line 7
    .line 8
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object v2, v2, Ln3/n;->b:Ljava/lang/String;

    .line 12
    .line 13
    const-string v3, "video/av01"

    .line 14
    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroidx/media3/container/f;->d(I)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    iget-object v2, p1, Lh3/e;->f:Ljava/nio/ByteBuffer;

    .line 28
    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    add-int/lit16 v5, v3, 0x1f4

    .line 40
    .line 41
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 46
    .line 47
    .line 48
    iget-object v1, v1, Lp3/a;->b:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v1, Ljava/nio/ByteBuffer;

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 65
    .line 66
    .line 67
    :cond_0
    const/4 v1, 0x0

    .line 68
    iput v1, p0, Lx3/i;->P1:I

    .line 69
    .line 70
    invoke-virtual {p0, p1}, Lx3/i;->N(Lh3/e;)I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 75
    .line 76
    const/16 v2, 0x22

    .line 77
    .line 78
    if-lt v1, v2, :cond_1

    .line 79
    .line 80
    and-int/lit8 p1, p1, 0x20

    .line 81
    .line 82
    if-nez p1, :cond_2

    .line 83
    .line 84
    :cond_1
    iget-boolean p1, p0, Lx3/i;->I1:Z

    .line 85
    .line 86
    if-nez p1, :cond_2

    .line 87
    .line 88
    iget p1, p0, Lx3/i;->y1:I

    .line 89
    .line 90
    add-int/2addr p1, v0

    .line 91
    iput p1, p0, Lx3/i;->y1:I

    .line 92
    .line 93
    :cond_2
    return-void
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "MediaCodecVideoRenderer"

    .line 2
    .line 3
    return-object v0
.end method

.method public final k0(JJLn3/l;Ljava/nio/ByteBuffer;IIIJZZLandroidx/media3/common/t;)Z
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p5

    .line 4
    .line 5
    move/from16 v3, p7

    .line 6
    .line 7
    move-wide/from16 v6, p10

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object v0, v1, Ln3/p;->N0:Ln3/o;

    .line 13
    .line 14
    iget-wide v4, v0, Ln3/o;->c:J

    .line 15
    .line 16
    sub-long v4, v6, v4

    .line 17
    .line 18
    const/4 v12, 0x0

    .line 19
    move v0, v12

    .line 20
    :goto_0
    iget-object v8, v1, Lx3/i;->h1:Ljava/util/PriorityQueue;

    .line 21
    .line 22
    invoke-virtual {v8}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v9

    .line 26
    check-cast v9, Ljava/lang/Long;

    .line 27
    .line 28
    if-eqz v9, :cond_0

    .line 29
    .line 30
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 31
    .line 32
    .line 33
    move-result-wide v9

    .line 34
    cmp-long v9, v9, v6

    .line 35
    .line 36
    if-gez v9, :cond_0

    .line 37
    .line 38
    add-int/lit8 v0, v0, 0x1

    .line 39
    .line 40
    invoke-virtual {v8}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {v1, v0, v12}, Lx3/i;->Q0(II)V

    .line 45
    .line 46
    .line 47
    iget-object v8, v1, Lx3/i;->l1:Lx3/c0;

    .line 48
    .line 49
    const/4 v13, 0x1

    .line 50
    if-eqz v8, :cond_2

    .line 51
    .line 52
    if-eqz p12, :cond_1

    .line 53
    .line 54
    if-nez p13, :cond_1

    .line 55
    .line 56
    invoke-virtual {v1, v2, v3}, Lx3/i;->P0(Ln3/l;I)V

    .line 57
    .line 58
    .line 59
    return v13

    .line 60
    :cond_1
    new-instance v0, Lx3/f;

    .line 61
    .line 62
    invoke-direct/range {v0 .. v5}, Lx3/f;-><init>(Lx3/i;Ln3/l;IJ)V

    .line 63
    .line 64
    .line 65
    move-object v14, v1

    .line 66
    invoke-interface {v8, v6, v7, v0}, Lx3/c0;->t(JLx3/f;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    return v0

    .line 71
    :cond_2
    move-object v14, v1

    .line 72
    move-object v15, v2

    .line 73
    move-wide/from16 v16, v4

    .line 74
    .line 75
    iget-object v0, v14, Ln3/p;->N0:Ln3/o;

    .line 76
    .line 77
    iget-wide v0, v0, Ln3/o;->b:J

    .line 78
    .line 79
    iget-object v11, v14, Lx3/i;->d1:Landroidx/multidex/d;

    .line 80
    .line 81
    move-wide v7, v0

    .line 82
    iget-object v0, v14, Lx3/i;->c1:Lx3/t;

    .line 83
    .line 84
    move-wide/from16 v3, p1

    .line 85
    .line 86
    move-wide/from16 v5, p3

    .line 87
    .line 88
    move-wide/from16 v1, p10

    .line 89
    .line 90
    move/from16 v9, p12

    .line 91
    .line 92
    move/from16 v10, p13

    .line 93
    .line 94
    move/from16 p6, v12

    .line 95
    .line 96
    move/from16 v12, p7

    .line 97
    .line 98
    invoke-virtual/range {v0 .. v11}, Lx3/t;->a(JJJJZZLandroidx/multidex/d;)I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    const/4 v3, 0x4

    .line 103
    const/4 v4, 0x5

    .line 104
    iget-object v5, v14, Lx3/i;->d1:Landroidx/multidex/d;

    .line 105
    .line 106
    iget-object v6, v14, Lx3/i;->g1:Lx3/u;

    .line 107
    .line 108
    if-eqz v6, :cond_3

    .line 109
    .line 110
    if-eq v0, v4, :cond_3

    .line 111
    .line 112
    if-eq v0, v3, :cond_3

    .line 113
    .line 114
    iget-wide v7, v5, Landroidx/multidex/d;->a:J

    .line 115
    .line 116
    invoke-virtual {v6, v1, v2, v7, v8}, Lx3/u;->a(JJ)V

    .line 117
    .line 118
    .line 119
    :cond_3
    if-eqz v0, :cond_b

    .line 120
    .line 121
    if-eq v0, v13, :cond_8

    .line 122
    .line 123
    const/4 v1, 0x2

    .line 124
    if-eq v0, v1, :cond_7

    .line 125
    .line 126
    const/4 v1, 0x3

    .line 127
    if-eq v0, v1, :cond_6

    .line 128
    .line 129
    if-eq v0, v3, :cond_5

    .line 130
    .line 131
    if-ne v0, v4, :cond_4

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 135
    .line 136
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw v1

    .line 144
    :cond_5
    :goto_1
    return p6

    .line 145
    :cond_6
    invoke-virtual {v14, v15, v12}, Lx3/i;->P0(Ln3/l;I)V

    .line 146
    .line 147
    .line 148
    iget-wide v0, v5, Landroidx/multidex/d;->a:J

    .line 149
    .line 150
    invoke-virtual {v14, v0, v1}, Lx3/i;->S0(J)V

    .line 151
    .line 152
    .line 153
    return v13

    .line 154
    :cond_7
    const-string v0, "dropVideoBuffer"

    .line 155
    .line 156
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-interface {v15, v12}, Ln3/l;->d(I)V

    .line 160
    .line 161
    .line 162
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 163
    .line 164
    .line 165
    move/from16 v0, p6

    .line 166
    .line 167
    invoke-virtual {v14, v0, v13}, Lx3/i;->Q0(II)V

    .line 168
    .line 169
    .line 170
    iget-wide v0, v5, Landroidx/multidex/d;->a:J

    .line 171
    .line 172
    invoke-virtual {v14, v0, v1}, Lx3/i;->S0(J)V

    .line 173
    .line 174
    .line 175
    return v13

    .line 176
    :cond_8
    iget-wide v9, v5, Landroidx/multidex/d;->b:J

    .line 177
    .line 178
    iget-wide v0, v5, Landroidx/multidex/d;->a:J

    .line 179
    .line 180
    iget-wide v2, v14, Lx3/i;->E1:J

    .line 181
    .line 182
    cmp-long v2, v9, v2

    .line 183
    .line 184
    if-nez v2, :cond_9

    .line 185
    .line 186
    invoke-virtual {v14, v15, v12}, Lx3/i;->P0(Ln3/l;I)V

    .line 187
    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_9
    iget-object v6, v14, Lx3/i;->L1:Lx3/s;

    .line 191
    .line 192
    if-eqz v6, :cond_a

    .line 193
    .line 194
    iget-object v12, v14, Ln3/p;->d0:Landroid/media/MediaFormat;

    .line 195
    .line 196
    move/from16 v3, p7

    .line 197
    .line 198
    move-object/from16 v11, p14

    .line 199
    .line 200
    move-wide/from16 v7, v16

    .line 201
    .line 202
    invoke-interface/range {v6 .. v12}, Lx3/s;->b(JJLandroidx/media3/common/t;Landroid/media/MediaFormat;)V

    .line 203
    .line 204
    .line 205
    goto :goto_2

    .line 206
    :cond_a
    move v3, v12

    .line 207
    :goto_2
    invoke-virtual {v14, v15, v3, v9, v10}, Lx3/i;->L0(Ln3/l;IJ)V

    .line 208
    .line 209
    .line 210
    :goto_3
    invoke-virtual {v14, v0, v1}, Lx3/i;->S0(J)V

    .line 211
    .line 212
    .line 213
    iput-wide v9, v14, Lx3/i;->E1:J

    .line 214
    .line 215
    return v13

    .line 216
    :cond_b
    move v3, v12

    .line 217
    move-wide/from16 v7, v16

    .line 218
    .line 219
    iget-object v0, v14, Landroidx/media3/exoplayer/a;->i:Le3/y;

    .line 220
    .line 221
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 222
    .line 223
    .line 224
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 225
    .line 226
    .line 227
    move-result-wide v9

    .line 228
    iget-object v6, v14, Lx3/i;->L1:Lx3/s;

    .line 229
    .line 230
    if-eqz v6, :cond_c

    .line 231
    .line 232
    iget-object v12, v14, Ln3/p;->d0:Landroid/media/MediaFormat;

    .line 233
    .line 234
    move-object/from16 v11, p14

    .line 235
    .line 236
    invoke-interface/range {v6 .. v12}, Lx3/s;->b(JJLandroidx/media3/common/t;Landroid/media/MediaFormat;)V

    .line 237
    .line 238
    .line 239
    :cond_c
    invoke-virtual {v14, v15, v3, v9, v10}, Lx3/i;->L0(Ln3/l;IJ)V

    .line 240
    .line 241
    .line 242
    iget-wide v0, v5, Landroidx/multidex/d;->a:J

    .line 243
    .line 244
    invoke-virtual {v14, v0, v1}, Lx3/i;->S0(J)V

    .line 245
    .line 246
    .line 247
    return v13
.end method

.method public final l()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ln3/p;->I0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lx3/i;->l1:Lx3/c0;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lx3/c0;->c()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    :cond_0
    const/4 v0, 0x1

    .line 16
    return v0

    .line 17
    :cond_1
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method public final m()Z
    .locals 7

    .line 1
    iget-object v0, p0, Ln3/p;->S:Landroidx/media3/common/t;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/media3/exoplayer/a;->k()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-boolean v0, p0, Landroidx/media3/exoplayer/a;->A:Z

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/a;->v:Landroidx/media3/exoplayer/source/c1;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Landroidx/media3/exoplayer/source/c1;->isReady()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    :goto_0
    if-nez v0, :cond_2

    .line 26
    .line 27
    iget v0, p0, Ln3/p;->t0:I

    .line 28
    .line 29
    if-ltz v0, :cond_1

    .line 30
    .line 31
    move v0, v2

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v0, v1

    .line 34
    :goto_1
    if-nez v0, :cond_2

    .line 35
    .line 36
    iget-wide v3, p0, Ln3/p;->r0:J

    .line 37
    .line 38
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    cmp-long v0, v3, v5

    .line 44
    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    iget-object v0, p0, Landroidx/media3/exoplayer/a;->i:Le3/y;

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 53
    .line 54
    .line 55
    move-result-wide v3

    .line 56
    iget-wide v5, p0, Ln3/p;->r0:J

    .line 57
    .line 58
    cmp-long v0, v3, v5

    .line 59
    .line 60
    if-gez v0, :cond_3

    .line 61
    .line 62
    :cond_2
    move v1, v2

    .line 63
    :cond_3
    iget-object v0, p0, Lx3/i;->l1:Lx3/c0;

    .line 64
    .line 65
    if-eqz v0, :cond_4

    .line 66
    .line 67
    invoke-interface {v0, v1}, Lx3/c0;->r(Z)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    return v0

    .line 72
    :cond_4
    if-eqz v1, :cond_6

    .line 73
    .line 74
    iget-object v0, p0, Ln3/p;->b0:Ln3/l;

    .line 75
    .line 76
    if-eqz v0, :cond_5

    .line 77
    .line 78
    iget-boolean v0, p0, Lx3/i;->I1:Z

    .line 79
    .line 80
    if-eqz v0, :cond_6

    .line 81
    .line 82
    :cond_5
    return v2

    .line 83
    :cond_6
    iget-object v0, p0, Lx3/i;->c1:Lx3/t;

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Lx3/t;->b(Z)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    return v0
.end method

.method public final n()V
    .locals 5

    .line 1
    iget-object v0, p0, Lx3/i;->Z0:Lj3/n;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lx3/i;->G1:Landroidx/media3/common/g1;

    .line 5
    .line 6
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    iput-wide v2, p0, Lx3/i;->N1:J

    .line 12
    .line 13
    invoke-virtual {p0}, Lx3/i;->K0()V

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    iput-boolean v2, p0, Lx3/i;->s1:Z

    .line 18
    .line 19
    iput-object v1, p0, Lx3/i;->K1:Lx3/h;

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    iput-boolean v1, p0, Lx3/i;->B1:Z

    .line 23
    .line 24
    :try_start_0
    invoke-super {p0}, Ln3/p;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Ln3/p;->M0:Landroidx/media3/exoplayer/c;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    monitor-enter v1

    .line 33
    monitor-exit v1

    .line 34
    iget-object v2, v0, Lj3/n;->b:Landroid/os/Handler;

    .line 35
    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    new-instance v3, Lf8/f;

    .line 39
    .line 40
    const/16 v4, 0x19

    .line 41
    .line 42
    invoke-direct {v3, v4, v0, v1}, Lf8/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 46
    .line 47
    .line 48
    :cond_0
    sget-object v1, Landroidx/media3/common/g1;->d:Landroidx/media3/common/g1;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lj3/n;->c(Landroidx/media3/common/g1;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :catchall_0
    move-exception v1

    .line 55
    iget-object v2, p0, Ln3/p;->M0:Landroidx/media3/exoplayer/c;

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Lj3/n;->a(Landroidx/media3/exoplayer/c;)V

    .line 58
    .line 59
    .line 60
    sget-object v2, Landroidx/media3/common/g1;->d:Landroidx/media3/common/g1;

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Lj3/n;->c(Landroidx/media3/common/g1;)V

    .line 63
    .line 64
    .line 65
    throw v1
.end method

.method public final n0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lx3/i;->l1:Lx3/c0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lx3/c0;->h()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Ln3/p;->N0:Ln3/o;

    .line 10
    .line 11
    iget-wide v0, v0, Ln3/o;->e:J

    .line 12
    .line 13
    return-void
.end method

.method public final o(ZZ)V
    .locals 8

    .line 1
    new-instance p1, Landroidx/media3/exoplayer/c;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Ln3/p;->M0:Landroidx/media3/exoplayer/c;

    .line 7
    .line 8
    iget-object p1, p0, Landroidx/media3/exoplayer/a;->d:Landroidx/media3/exoplayer/o1;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-boolean p1, p1, Landroidx/media3/exoplayer/o1;->b:Z

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    const/4 v1, 0x1

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    iget v2, p0, Lx3/i;->J1:I

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v2, v0

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    move v2, v1

    .line 27
    :goto_1
    invoke-static {v2}, Lcom/google/common/base/q;->u(Z)V

    .line 28
    .line 29
    .line 30
    iget-boolean v2, p0, Lx3/i;->I1:Z

    .line 31
    .line 32
    if-eq v2, p1, :cond_2

    .line 33
    .line 34
    iput-boolean p1, p0, Lx3/i;->I1:Z

    .line 35
    .line 36
    invoke-virtual {p0}, Ln3/p;->m0()V

    .line 37
    .line 38
    .line 39
    :cond_2
    iget-object p1, p0, Ln3/p;->M0:Landroidx/media3/exoplayer/c;

    .line 40
    .line 41
    iget-object v2, p0, Lx3/i;->Z0:Lj3/n;

    .line 42
    .line 43
    iget-object v3, v2, Lj3/n;->b:Landroid/os/Handler;

    .line 44
    .line 45
    if-eqz v3, :cond_3

    .line 46
    .line 47
    new-instance v4, Lx3/a0;

    .line 48
    .line 49
    const/4 v5, 0x3

    .line 50
    invoke-direct {v4, v2, p1, v5}, Lx3/a0;-><init>(Lj3/n;Ljava/lang/Object;I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 54
    .line 55
    .line 56
    :cond_3
    iget-boolean p1, p0, Lx3/i;->m1:Z

    .line 57
    .line 58
    iget-object v2, p0, Lx3/i;->c1:Lx3/t;

    .line 59
    .line 60
    if-nez p1, :cond_9

    .line 61
    .line 62
    iget-object p1, p0, Lx3/i;->o1:Ljava/util/List;

    .line 63
    .line 64
    if-eqz p1, :cond_8

    .line 65
    .line 66
    iget-object p1, p0, Lx3/i;->l1:Lx3/c0;

    .line 67
    .line 68
    if-nez p1, :cond_8

    .line 69
    .line 70
    new-instance p1, Lx3/l;

    .line 71
    .line 72
    iget-object v3, p0, Lx3/i;->X0:Landroid/content/Context;

    .line 73
    .line 74
    invoke-direct {p1, v3, v2}, Lx3/l;-><init>(Landroid/content/Context;Lx3/t;)V

    .line 75
    .line 76
    .line 77
    iput-boolean v1, p1, Lx3/l;->d:Z

    .line 78
    .line 79
    iget-wide v3, p0, Lx3/i;->f1:J

    .line 80
    .line 81
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    cmp-long v7, v3, v5

    .line 87
    .line 88
    if-eqz v7, :cond_4

    .line 89
    .line 90
    neg-long v5, v3

    .line 91
    :cond_4
    iput-wide v5, p1, Lx3/l;->g:J

    .line 92
    .line 93
    iget-object v3, p0, Landroidx/media3/exoplayer/a;->i:Le3/y;

    .line 94
    .line 95
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    iput-object v3, p1, Lx3/l;->e:Le3/y;

    .line 99
    .line 100
    iget-boolean v3, p1, Lx3/l;->f:Z

    .line 101
    .line 102
    xor-int/2addr v3, v1

    .line 103
    invoke-static {v3}, Lcom/google/common/base/q;->u(Z)V

    .line 104
    .line 105
    .line 106
    iget-object v3, p1, Lx3/l;->c:Lx3/o;

    .line 107
    .line 108
    if-nez v3, :cond_5

    .line 109
    .line 110
    new-instance v3, Lx3/o;

    .line 111
    .line 112
    invoke-direct {v3}, Lx3/o;-><init>()V

    .line 113
    .line 114
    .line 115
    iput-object v3, p1, Lx3/l;->c:Lx3/o;

    .line 116
    .line 117
    :cond_5
    new-instance v3, Lx3/q;

    .line 118
    .line 119
    invoke-direct {v3, p1}, Lx3/q;-><init>(Lx3/l;)V

    .line 120
    .line 121
    .line 122
    iput-boolean v1, p1, Lx3/l;->f:Z

    .line 123
    .line 124
    iget p1, v3, Lx3/q;->p:I

    .line 125
    .line 126
    if-ge v1, p1, :cond_6

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_6
    iput v1, v3, Lx3/q;->p:I

    .line 130
    .line 131
    :goto_2
    iget-object p1, v3, Lx3/q;->c:Landroid/util/SparseArray;

    .line 132
    .line 133
    invoke-static {p1, v0}, Le3/e0;->k(Landroid/util/SparseArray;I)Z

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    if-eqz v4, :cond_7

    .line 138
    .line 139
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    check-cast p1, Lx3/c0;

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_7
    new-instance v4, Lx3/m;

    .line 147
    .line 148
    iget-object v5, v3, Lx3/q;->a:Landroid/content/Context;

    .line 149
    .line 150
    invoke-direct {v4, v3, v5}, Lx3/m;-><init>(Lx3/q;Landroid/content/Context;)V

    .line 151
    .line 152
    .line 153
    iget-object v3, v3, Lx3/q;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 154
    .line 155
    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    move-object p1, v4

    .line 162
    :goto_3
    iput-object p1, p0, Lx3/i;->l1:Lx3/c0;

    .line 163
    .line 164
    :cond_8
    iput-boolean v1, p0, Lx3/i;->m1:Z

    .line 165
    .line 166
    :cond_9
    iget-object p1, p0, Lx3/i;->l1:Lx3/c0;

    .line 167
    .line 168
    if-eqz p1, :cond_d

    .line 169
    .line 170
    new-instance v0, Lp4/f;

    .line 171
    .line 172
    invoke-direct {v0, p0}, Lp4/f;-><init>(Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    invoke-static {}, Lcom/google/common/util/concurrent/m1;->c()Ljava/util/concurrent/Executor;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    invoke-interface {p1, v0, v2}, Lx3/c0;->p(Lp4/f;Ljava/util/concurrent/Executor;)V

    .line 180
    .line 181
    .line 182
    iget-object p1, p0, Lx3/i;->L1:Lx3/s;

    .line 183
    .line 184
    if-eqz p1, :cond_a

    .line 185
    .line 186
    iget-object v0, p0, Lx3/i;->l1:Lx3/c0;

    .line 187
    .line 188
    invoke-interface {v0, p1}, Lx3/c0;->a(Lx3/s;)V

    .line 189
    .line 190
    .line 191
    :cond_a
    iget-object p1, p0, Lx3/i;->p1:Landroid/view/Surface;

    .line 192
    .line 193
    if-eqz p1, :cond_b

    .line 194
    .line 195
    iget-object p1, p0, Lx3/i;->r1:Le3/s;

    .line 196
    .line 197
    sget-object v0, Le3/s;->c:Le3/s;

    .line 198
    .line 199
    invoke-virtual {p1, v0}, Le3/s;->equals(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result p1

    .line 203
    if-nez p1, :cond_b

    .line 204
    .line 205
    iget-object p1, p0, Lx3/i;->l1:Lx3/c0;

    .line 206
    .line 207
    iget-object v0, p0, Lx3/i;->p1:Landroid/view/Surface;

    .line 208
    .line 209
    iget-object v2, p0, Lx3/i;->r1:Le3/s;

    .line 210
    .line 211
    invoke-interface {p1, v0, v2}, Lx3/c0;->d(Landroid/view/Surface;Le3/s;)V

    .line 212
    .line 213
    .line 214
    :cond_b
    iget-object p1, p0, Lx3/i;->l1:Lx3/c0;

    .line 215
    .line 216
    iget v0, p0, Lx3/i;->u1:I

    .line 217
    .line 218
    invoke-interface {p1, v0}, Lx3/c0;->i(I)V

    .line 219
    .line 220
    .line 221
    iget-object p1, p0, Lx3/i;->l1:Lx3/c0;

    .line 222
    .line 223
    iget v0, p0, Ln3/p;->Z:F

    .line 224
    .line 225
    invoke-interface {p1, v0}, Lx3/c0;->j(F)V

    .line 226
    .line 227
    .line 228
    iget-object p1, p0, Lx3/i;->o1:Ljava/util/List;

    .line 229
    .line 230
    if-eqz p1, :cond_c

    .line 231
    .line 232
    iget-object v0, p0, Lx3/i;->l1:Lx3/c0;

    .line 233
    .line 234
    invoke-interface {v0, p1}, Lx3/c0;->n(Ljava/util/List;)V

    .line 235
    .line 236
    .line 237
    :cond_c
    xor-int/lit8 p1, p2, 0x1

    .line 238
    .line 239
    iput p1, p0, Lx3/i;->n1:I

    .line 240
    .line 241
    iput-boolean v1, p0, Ln3/p;->Q0:Z

    .line 242
    .line 243
    return-void

    .line 244
    :cond_d
    iget-object p1, p0, Landroidx/media3/exoplayer/a;->i:Le3/y;

    .line 245
    .line 246
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 247
    .line 248
    .line 249
    iput-object p1, v2, Lx3/t;->l:Le3/y;

    .line 250
    .line 251
    xor-int/lit8 p1, p2, 0x1

    .line 252
    .line 253
    invoke-virtual {v2, p1}, Lx3/t;->e(I)V

    .line 254
    .line 255
    .line 256
    return-void
.end method

.method public final p(JZZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lx3/i;->l1:Lx3/c0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    if-nez p3, :cond_0

    .line 7
    .line 8
    invoke-interface {v0, v1}, Lx3/c0;->m(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    if-eqz p4, :cond_1

    .line 12
    .line 13
    iput-wide p1, p0, Lx3/i;->A1:J

    .line 14
    .line 15
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Ln3/p;->p(JZZ)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lx3/i;->l1:Lx3/c0;

    .line 19
    .line 20
    iget-object p2, p0, Lx3/i;->c1:Lx3/t;

    .line 21
    .line 22
    const/4 p4, 0x0

    .line 23
    if-nez p1, :cond_2

    .line 24
    .line 25
    iget-object p1, p2, Lx3/t;->b:Lx3/y;

    .line 26
    .line 27
    invoke-virtual {p1}, Lx3/y;->b()V

    .line 28
    .line 29
    .line 30
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    iput-wide v2, p2, Lx3/t;->h:J

    .line 36
    .line 37
    iput-wide v2, p2, Lx3/t;->f:J

    .line 38
    .line 39
    iget p1, p2, Lx3/t;->e:I

    .line 40
    .line 41
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    iput p1, p2, Lx3/t;->e:I

    .line 46
    .line 47
    iput-wide v2, p2, Lx3/t;->i:J

    .line 48
    .line 49
    iput-boolean p4, p2, Lx3/t;->n:Z

    .line 50
    .line 51
    :cond_2
    iget-object p1, p0, Lx3/i;->g1:Lx3/u;

    .line 52
    .line 53
    if-eqz p1, :cond_3

    .line 54
    .line 55
    invoke-virtual {p1}, Lx3/u;->b()V

    .line 56
    .line 57
    .line 58
    :cond_3
    if-eqz p3, :cond_5

    .line 59
    .line 60
    iget-object p1, p0, Lx3/i;->l1:Lx3/c0;

    .line 61
    .line 62
    if-eqz p1, :cond_4

    .line 63
    .line 64
    invoke-interface {p1, p4}, Lx3/c0;->q(Z)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_4
    invoke-virtual {p2, p4}, Lx3/t;->c(Z)V

    .line 69
    .line 70
    .line 71
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lx3/i;->K0()V

    .line 72
    .line 73
    .line 74
    iput p4, p0, Lx3/i;->x1:I

    .line 75
    .line 76
    return-void
.end method

.method public final p0()V
    .locals 2

    .line 1
    invoke-super {p0}, Ln3/p;->p0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lx3/i;->h1:Ljava/util/PriorityQueue;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lx3/i;->y1:I

    .line 11
    .line 12
    iput v0, p0, Lx3/i;->P1:I

    .line 13
    .line 14
    iput-boolean v0, p0, Lx3/i;->B1:Z

    .line 15
    .line 16
    iget-object v0, p0, Lx3/i;->e1:Lp3/a;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    iput-object v1, v0, Lp3/a;->c:Ljava/lang/Object;

    .line 22
    .line 23
    iget-object v0, v0, Lp3/a;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public final q()V
    .locals 2

    .line 1
    iget-object v0, p0, Lx3/i;->l1:Lx3/c0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v1, p0, Lx3/i;->Y0:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lx3/c0;->release()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final r()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    :try_start_0
    iput-boolean v0, p0, Ln3/p;->w0:Z

    .line 9
    .line 10
    invoke-virtual {p0}, Ln3/p;->o0()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Ln3/p;->m0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    .line 15
    .line 16
    :try_start_1
    iget-object v4, p0, Ln3/p;->V:Landroidx/work/impl/utils/l;

    .line 17
    .line 18
    if-nez v4, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v4, v3}, Landroidx/work/impl/utils/l;->y(Landroidx/media3/exoplayer/source/h0;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    iput-object v3, p0, Ln3/p;->V:Landroidx/work/impl/utils/l;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    .line 26
    iput-boolean v0, p0, Lx3/i;->m1:Z

    .line 27
    .line 28
    iput-wide v1, p0, Lx3/i;->M1:J

    .line 29
    .line 30
    iget-object v0, p0, Lx3/i;->q1:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/PlaceholderSurface;->release()V

    .line 35
    .line 36
    .line 37
    iput-object v3, p0, Lx3/i;->q1:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    .line 38
    .line 39
    :cond_1
    return-void

    .line 40
    :catchall_0
    move-exception v4

    .line 41
    goto :goto_1

    .line 42
    :catchall_1
    move-exception v4

    .line 43
    :try_start_2
    iget-object v5, p0, Ln3/p;->V:Landroidx/work/impl/utils/l;

    .line 44
    .line 45
    if-eqz v5, :cond_2

    .line 46
    .line 47
    invoke-virtual {v5, v3}, Landroidx/work/impl/utils/l;->y(Landroidx/media3/exoplayer/source/h0;)V

    .line 48
    .line 49
    .line 50
    :cond_2
    iput-object v3, p0, Ln3/p;->V:Landroidx/work/impl/utils/l;

    .line 51
    .line 52
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    :goto_1
    iput-boolean v0, p0, Lx3/i;->m1:Z

    .line 54
    .line 55
    iput-wide v1, p0, Lx3/i;->M1:J

    .line 56
    .line 57
    iget-object v0, p0, Lx3/i;->q1:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    .line 58
    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/PlaceholderSurface;->release()V

    .line 62
    .line 63
    .line 64
    iput-object v3, p0, Lx3/i;->q1:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    .line 65
    .line 66
    :cond_3
    throw v4
.end method

.method public final s()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lx3/i;->w1:I

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/media3/exoplayer/a;->i:Le3/y;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    iput-wide v1, p0, Lx3/i;->v1:J

    .line 14
    .line 15
    const-wide/16 v1, 0x0

    .line 16
    .line 17
    iput-wide v1, p0, Lx3/i;->C1:J

    .line 18
    .line 19
    iput v0, p0, Lx3/i;->D1:I

    .line 20
    .line 21
    iget-object v0, p0, Lx3/i;->l1:Lx3/c0;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-interface {v0}, Lx3/c0;->f()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lx3/i;->c1:Lx3/t;

    .line 30
    .line 31
    invoke-virtual {v0}, Lx3/t;->d()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final t()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lx3/i;->J0()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lx3/i;->D1:I

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-wide v2, p0, Lx3/i;->C1:J

    .line 10
    .line 11
    iget-object v4, p0, Lx3/i;->Z0:Lj3/n;

    .line 12
    .line 13
    iget-object v5, v4, Lj3/n;->b:Landroid/os/Handler;

    .line 14
    .line 15
    if-eqz v5, :cond_0

    .line 16
    .line 17
    new-instance v6, Lx3/a0;

    .line 18
    .line 19
    invoke-direct {v6, v4, v2, v3, v0}, Lx3/a0;-><init>(Lj3/n;JI)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    .line 24
    .line 25
    :cond_0
    const-wide/16 v2, 0x0

    .line 26
    .line 27
    iput-wide v2, p0, Lx3/i;->C1:J

    .line 28
    .line 29
    iput v1, p0, Lx3/i;->D1:I

    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Lx3/i;->l1:Lx3/c0;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-interface {v0}, Lx3/c0;->e()V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    iget-object v0, p0, Lx3/i;->c1:Lx3/t;

    .line 40
    .line 41
    iput-boolean v1, v0, Lx3/t;->d:Z

    .line 42
    .line 43
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    iput-wide v2, v0, Lx3/t;->i:J

    .line 49
    .line 50
    iget-object v0, v0, Lx3/t;->b:Lx3/y;

    .line 51
    .line 52
    iput-boolean v1, v0, Lx3/y;->d:Z

    .line 53
    .line 54
    iget-object v1, v0, Lx3/y;->c:Lx3/v;

    .line 55
    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    invoke-virtual {v1}, Lx3/v;->b()V

    .line 59
    .line 60
    .line 61
    :cond_3
    invoke-virtual {v0}, Lx3/y;->a()V

    .line 62
    .line 63
    .line 64
    :goto_0
    iget-object v0, p0, Lx3/i;->g1:Lx3/u;

    .line 65
    .line 66
    if-eqz v0, :cond_4

    .line 67
    .line 68
    invoke-virtual {v0}, Lx3/u;->b()V

    .line 69
    .line 70
    .line 71
    :cond_4
    return-void
.end method

.method public final t0(Lh3/e;)Z
    .locals 14

    .line 1
    invoke-virtual {p0, p1}, Lx3/i;->I0(Lh3/e;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    goto :goto_3

    .line 9
    :cond_0
    iget-wide v2, p1, Lh3/e;->i:J

    .line 10
    .line 11
    iget-wide v4, p0, Landroidx/media3/exoplayer/a;->y:J

    .line 12
    .line 13
    cmp-long v0, v2, v4

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    if-gez v0, :cond_1

    .line 17
    .line 18
    move v0, v4

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move v0, v1

    .line 21
    :goto_0
    iget-object v5, p0, Lx3/i;->g1:Lx3/u;

    .line 22
    .line 23
    if-eqz v5, :cond_3

    .line 24
    .line 25
    iget-wide v6, v5, Lx3/u;->a:J

    .line 26
    .line 27
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    cmp-long v10, v6, v8

    .line 33
    .line 34
    if-nez v10, :cond_2

    .line 35
    .line 36
    move-wide v2, v8

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    iget-wide v10, v5, Lx3/u;->b:J

    .line 39
    .line 40
    long-to-double v10, v10

    .line 41
    sub-long/2addr v2, v6

    .line 42
    long-to-double v2, v2

    .line 43
    iget-wide v5, v5, Lx3/u;->c:D

    .line 44
    .line 45
    mul-double/2addr v2, v5

    .line 46
    add-double/2addr v2, v10

    .line 47
    double-to-long v2, v2

    .line 48
    :goto_1
    cmp-long v5, v2, v8

    .line 49
    .line 50
    if-eqz v5, :cond_3

    .line 51
    .line 52
    iget-wide v5, p0, Lx3/i;->f1:J

    .line 53
    .line 54
    cmp-long v2, v2, v5

    .line 55
    .line 56
    if-gez v2, :cond_3

    .line 57
    .line 58
    move v2, v4

    .line 59
    goto :goto_2

    .line 60
    :cond_3
    move v2, v1

    .line 61
    :goto_2
    if-nez v0, :cond_4

    .line 62
    .line 63
    if-nez v2, :cond_4

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_4
    const/high16 v2, 0x10000000

    .line 67
    .line 68
    invoke-virtual {p1, v2}, Landroidx/media3/container/f;->d(I)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_5

    .line 73
    .line 74
    :goto_3
    return v1

    .line 75
    :cond_5
    const/high16 v2, 0x4000000

    .line 76
    .line 77
    invoke-virtual {p1, v2}, Landroidx/media3/container/f;->d(I)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_6

    .line 82
    .line 83
    invoke-virtual {p1}, Lh3/e;->f()V

    .line 84
    .line 85
    .line 86
    :goto_4
    move v1, v4

    .line 87
    goto/16 :goto_d

    .line 88
    .line 89
    :cond_6
    iget-object v2, p0, Lx3/i;->e1:Lp3/a;

    .line 90
    .line 91
    if-eqz v2, :cond_15

    .line 92
    .line 93
    iget-object v3, v2, Lp3/a;->b:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v3, Ljava/nio/ByteBuffer;

    .line 96
    .line 97
    iget-object v5, p0, Ln3/p;->i0:Ln3/n;

    .line 98
    .line 99
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    iget-object v5, v5, Ln3/n;->b:Ljava/lang/String;

    .line 103
    .line 104
    const-string v6, "video/av01"

    .line 105
    .line 106
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    if-eqz v5, :cond_15

    .line 111
    .line 112
    iget-object v5, p1, Lh3/e;->f:Ljava/nio/ByteBuffer;

    .line 113
    .line 114
    if-eqz v5, :cond_15

    .line 115
    .line 116
    if-nez v0, :cond_8

    .line 117
    .line 118
    iget v6, p0, Lx3/i;->P1:I

    .line 119
    .line 120
    if-gtz v6, :cond_7

    .line 121
    .line 122
    goto :goto_5

    .line 123
    :cond_7
    move v6, v1

    .line 124
    goto :goto_6

    .line 125
    :cond_8
    :goto_5
    move v6, v4

    .line 126
    :goto_6
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 134
    .line 135
    .line 136
    move-result v7

    .line 137
    if-eqz v7, :cond_9

    .line 138
    .line 139
    invoke-static {v3}, Landroidx/media3/container/r;->o(Ljava/nio/ByteBuffer;)Ljava/util/ArrayList;

    .line 140
    .line 141
    .line 142
    move-result-object v7

    .line 143
    invoke-virtual {v2, v7}, Lp3/a;->p(Ljava/util/ArrayList;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v3}, Ljava/nio/Buffer;->limit()I

    .line 147
    .line 148
    .line 149
    move-result v7

    .line 150
    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 151
    .line 152
    .line 153
    :cond_9
    invoke-static {v5}, Landroidx/media3/container/r;->o(Ljava/nio/ByteBuffer;)Ljava/util/ArrayList;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    invoke-virtual {v2, v3}, Lp3/a;->p(Ljava/util/ArrayList;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 161
    .line 162
    .line 163
    move-result v7

    .line 164
    sub-int/2addr v7, v4

    .line 165
    move v8, v1

    .line 166
    :goto_7
    if-ltz v7, :cond_10

    .line 167
    .line 168
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v9

    .line 172
    check-cast v9, Landroidx/media3/container/u;

    .line 173
    .line 174
    iget v10, v9, Landroidx/media3/container/u;->a:I

    .line 175
    .line 176
    const/4 v11, 0x2

    .line 177
    const/4 v12, 0x6

    .line 178
    const/4 v13, 0x3

    .line 179
    if-eq v10, v11, :cond_d

    .line 180
    .line 181
    const/16 v11, 0xf

    .line 182
    .line 183
    if-ne v10, v11, :cond_a

    .line 184
    .line 185
    goto :goto_9

    .line 186
    :cond_a
    if-ne v10, v13, :cond_b

    .line 187
    .line 188
    if-nez v6, :cond_b

    .line 189
    .line 190
    goto :goto_a

    .line 191
    :cond_b
    if-eq v10, v12, :cond_c

    .line 192
    .line 193
    if-ne v10, v13, :cond_10

    .line 194
    .line 195
    :cond_c
    iget-object v10, v2, Lp3/a;->c:Ljava/lang/Object;

    .line 196
    .line 197
    check-cast v10, Landroidx/media3/container/v;

    .line 198
    .line 199
    if-eqz v10, :cond_10

    .line 200
    .line 201
    :try_start_0
    new-instance v11, Landroidx/media3/container/t;

    .line 202
    .line 203
    invoke-direct {v11, v10, v9}, Landroidx/media3/container/t;-><init>(Landroidx/media3/container/v;Landroidx/media3/container/u;)V
    :try_end_0
    .catch Landroidx/media3/container/ObuParser$NotYetImplementedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    .line 205
    .line 206
    goto :goto_8

    .line 207
    :catch_0
    const/4 v11, 0x0

    .line 208
    :goto_8
    if-eqz v11, :cond_10

    .line 209
    .line 210
    iget-boolean v9, v11, Landroidx/media3/container/t;->a:Z

    .line 211
    .line 212
    if-nez v9, :cond_10

    .line 213
    .line 214
    :cond_d
    :goto_9
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v9

    .line 218
    check-cast v9, Landroidx/media3/container/u;

    .line 219
    .line 220
    iget v9, v9, Landroidx/media3/container/u;->a:I

    .line 221
    .line 222
    if-eq v9, v12, :cond_e

    .line 223
    .line 224
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v9

    .line 228
    check-cast v9, Landroidx/media3/container/u;

    .line 229
    .line 230
    iget v9, v9, Landroidx/media3/container/u;->a:I

    .line 231
    .line 232
    if-ne v9, v13, :cond_f

    .line 233
    .line 234
    :cond_e
    add-int/lit8 v8, v8, 0x1

    .line 235
    .line 236
    :cond_f
    add-int/lit8 v7, v7, -0x1

    .line 237
    .line 238
    goto :goto_7

    .line 239
    :cond_10
    :goto_a
    if-gt v8, v4, :cond_13

    .line 240
    .line 241
    add-int/lit8 v2, v7, 0x1

    .line 242
    .line 243
    const/16 v6, 0x8

    .line 244
    .line 245
    if-lt v2, v6, :cond_11

    .line 246
    .line 247
    goto :goto_b

    .line 248
    :cond_11
    if-ltz v7, :cond_12

    .line 249
    .line 250
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    check-cast v2, Landroidx/media3/container/u;

    .line 255
    .line 256
    iget-object v2, v2, Landroidx/media3/container/u;->b:Ljava/nio/ByteBuffer;

    .line 257
    .line 258
    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    .line 259
    .line 260
    .line 261
    move-result v2

    .line 262
    goto :goto_c

    .line 263
    :cond_12
    invoke-virtual {v5}, Ljava/nio/Buffer;->position()I

    .line 264
    .line 265
    .line 266
    move-result v2

    .line 267
    goto :goto_c

    .line 268
    :cond_13
    :goto_b
    invoke-virtual {v5}, Ljava/nio/Buffer;->limit()I

    .line 269
    .line 270
    .line 271
    move-result v2

    .line 272
    :goto_c
    if-nez v2, :cond_14

    .line 273
    .line 274
    invoke-virtual {p1}, Lh3/e;->f()V

    .line 275
    .line 276
    .line 277
    goto/16 :goto_4

    .line 278
    .line 279
    :cond_14
    invoke-virtual {v5}, Ljava/nio/Buffer;->limit()I

    .line 280
    .line 281
    .line 282
    move-result v3

    .line 283
    if-eq v2, v3, :cond_15

    .line 284
    .line 285
    iget-object v3, p0, Lx3/i;->i1:Landroidx/media3/container/j;

    .line 286
    .line 287
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 288
    .line 289
    .line 290
    iget v3, v3, Landroidx/media3/container/j;->c:I

    .line 291
    .line 292
    add-int/2addr v3, v2

    .line 293
    invoke-virtual {v5}, Ljava/nio/Buffer;->capacity()I

    .line 294
    .line 295
    .line 296
    move-result v5

    .line 297
    if-ge v3, v5, :cond_15

    .line 298
    .line 299
    const/high16 v3, 0x40000000    # 2.0f

    .line 300
    .line 301
    invoke-virtual {p1, v3}, Landroidx/media3/container/f;->d(I)Z

    .line 302
    .line 303
    .line 304
    move-result v3

    .line 305
    if-nez v3, :cond_15

    .line 306
    .line 307
    iget-object v1, p1, Lh3/e;->f:Ljava/nio/ByteBuffer;

    .line 308
    .line 309
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 313
    .line 314
    .line 315
    goto/16 :goto_4

    .line 316
    .line 317
    :cond_15
    :goto_d
    if-eqz v1, :cond_17

    .line 318
    .line 319
    if-eqz v0, :cond_16

    .line 320
    .line 321
    iget-object p1, p0, Ln3/p;->M0:Landroidx/media3/exoplayer/c;

    .line 322
    .line 323
    iget v0, p1, Landroidx/media3/exoplayer/c;->d:I

    .line 324
    .line 325
    add-int/2addr v0, v4

    .line 326
    iput v0, p1, Landroidx/media3/exoplayer/c;->d:I

    .line 327
    .line 328
    goto :goto_e

    .line 329
    :cond_16
    iget-wide v2, p1, Lh3/e;->i:J

    .line 330
    .line 331
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 332
    .line 333
    .line 334
    move-result-object p1

    .line 335
    iget-object v0, p0, Lx3/i;->h1:Ljava/util/PriorityQueue;

    .line 336
    .line 337
    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    iget p1, p0, Lx3/i;->P1:I

    .line 341
    .line 342
    add-int/2addr p1, v4

    .line 343
    iput p1, p0, Lx3/i;->P1:I

    .line 344
    .line 345
    :cond_17
    :goto_e
    return v1
.end method

.method public final u([Landroidx/media3/common/t;JJLandroidx/media3/exoplayer/source/a0;)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p6}, Ln3/p;->u([Landroidx/media3/common/t;JJLandroidx/media3/exoplayer/source/a0;)V

    .line 2
    .line 3
    .line 4
    move-object p1, p0

    .line 5
    invoke-virtual {p0, p6}, Lx3/i;->R0(Landroidx/media3/exoplayer/source/a0;)V

    .line 6
    .line 7
    .line 8
    iget-object p2, p1, Lx3/i;->g1:Lx3/u;

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    invoke-virtual {p2}, Lx3/u;->b()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final u0()Z
    .locals 12

    .line 1
    iget-object v0, p0, Ln3/p;->c0:Landroidx/media3/common/t;

    .line 2
    .line 3
    iget-wide v1, p0, Lx3/i;->N1:J

    .line 4
    .line 5
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    cmp-long v5, v1, v3

    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v7, 0x1

    .line 14
    if-eqz v5, :cond_1

    .line 15
    .line 16
    const-wide/16 v8, 0x1

    .line 17
    .line 18
    add-long/2addr v8, v1

    .line 19
    iget-object v5, p0, Ln3/p;->N0:Ln3/o;

    .line 20
    .line 21
    iget-wide v10, v5, Ln3/o;->c:J

    .line 22
    .line 23
    add-long/2addr v10, v1

    .line 24
    iget-wide v1, p0, Ln3/p;->S0:J

    .line 25
    .line 26
    add-long/2addr v1, v8

    .line 27
    const-wide v8, 0x7fffffffffffffffL

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    sub-long/2addr v8, v10

    .line 33
    cmp-long v1, v1, v8

    .line 34
    .line 35
    if-lez v1, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move v1, v6

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    :goto_0
    move v1, v7

    .line 41
    :goto_1
    iget-object v2, p0, Lx3/i;->z1:Landroidx/media3/exoplayer/p1;

    .line 42
    .line 43
    if-nez v2, :cond_2

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    iget-boolean v2, p0, Lx3/i;->B1:Z

    .line 47
    .line 48
    if-nez v2, :cond_5

    .line 49
    .line 50
    iget-boolean v2, p0, Lx3/i;->I1:Z

    .line 51
    .line 52
    if-nez v2, :cond_5

    .line 53
    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    iget v0, v0, Landroidx/media3/common/t;->q:I

    .line 57
    .line 58
    if-gtz v0, :cond_5

    .line 59
    .line 60
    :cond_3
    if-nez v1, :cond_5

    .line 61
    .line 62
    iget-object v0, p0, Ln3/p;->N0:Ln3/o;

    .line 63
    .line 64
    iget-wide v0, v0, Ln3/o;->e:J

    .line 65
    .line 66
    cmp-long v0, v0, v3

    .line 67
    .line 68
    if-eqz v0, :cond_4

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_4
    return v6

    .line 72
    :cond_5
    :goto_2
    return v7
.end method

.method public final v()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/a;->E:Landroidx/media3/exoplayer/source/a0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lx3/i;->R0(Landroidx/media3/exoplayer/source/a0;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final v0(Ln3/n;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lx3/i;->H0(Ln3/n;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final w0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/p;->i0:Ln3/n;

    .line 2
    .line 3
    iget-object v1, p0, Lx3/i;->l1:Lx3/c0;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, v0, Ln3/n;->a:Ljava/lang/String;

    .line 10
    .line 11
    const-string v1, "c2.mtk.avc.decoder"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    const-string v1, "c2.mtk.hevc.decoder"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    :cond_0
    const/4 v0, 0x1

    .line 28
    return v0

    .line 29
    :cond_1
    invoke-super {p0}, Ln3/p;->w0()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    return v0
.end method

.method public final x(JJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lx3/i;->l1:Lx3/c0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lx3/c0;->o(JJ)V
    :try_end_0
    .catch Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p1

    .line 10
    iget-object p2, p1, Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException;->format:Landroidx/media3/common/t;

    .line 11
    .line 12
    const/16 p3, 0x1b59

    .line 13
    .line 14
    const/4 p4, 0x0

    .line 15
    invoke-virtual {p0, p1, p2, p4, p3}, Landroidx/media3/exoplayer/a;->f(Ljava/lang/Exception;Landroidx/media3/common/t;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    throw p1

    .line 20
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Ln3/p;->x(JJ)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final y0(Ln3/i;Landroidx/media3/common/t;)I
    .locals 13

    .line 1
    iget-object v0, p2, Landroidx/media3/common/t;->o:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/l0;->m(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-static {v1, v1, v1, v1}, Landroidx/compose/runtime/e1;->l(IIII)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    :cond_0
    iget-object v0, p2, Landroidx/media3/common/t;->s:Landroidx/media3/common/DrmInitData;

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    move v0, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move v0, v1

    .line 23
    :goto_0
    iget-object v3, p0, Lx3/i;->X0:Landroid/content/Context;

    .line 24
    .line 25
    invoke-static {v3, p1, p2, v0, v1}, Lx3/i;->E0(Landroid/content/Context;Ln3/i;Landroidx/media3/common/t;ZZ)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-eqz v5, :cond_2

    .line 36
    .line 37
    invoke-static {v3, p1, p2, v1, v1}, Lx3/i;->E0(Landroid/content/Context;Ln3/i;Landroidx/media3/common/t;ZZ)Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-eqz v5, :cond_3

    .line 46
    .line 47
    invoke-static {v2, v1, v1, v1}, Landroidx/compose/runtime/e1;->l(IIII)I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    return p1

    .line 52
    :cond_3
    iget v5, p2, Landroidx/media3/common/t;->P:I

    .line 53
    .line 54
    const/4 v6, 0x2

    .line 55
    if-eqz v5, :cond_5

    .line 56
    .line 57
    if-ne v5, v6, :cond_4

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_4
    invoke-static {v6, v1, v1, v1}, Landroidx/compose/runtime/e1;->l(IIII)I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    return p1

    .line 65
    :cond_5
    :goto_1
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    check-cast v5, Ln3/n;

    .line 70
    .line 71
    invoke-virtual {v5, v3, p2}, Ln3/n;->e(Landroid/content/Context;Landroidx/media3/common/t;)Z

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    if-nez v7, :cond_7

    .line 76
    .line 77
    move v8, v2

    .line 78
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 79
    .line 80
    .line 81
    move-result v9

    .line 82
    if-ge v8, v9, :cond_7

    .line 83
    .line 84
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v9

    .line 88
    check-cast v9, Ln3/n;

    .line 89
    .line 90
    invoke-virtual {v9, v3, p2}, Ln3/n;->e(Landroid/content/Context;Landroidx/media3/common/t;)Z

    .line 91
    .line 92
    .line 93
    move-result v10

    .line 94
    if-eqz v10, :cond_6

    .line 95
    .line 96
    move v4, v1

    .line 97
    move v7, v2

    .line 98
    move-object v5, v9

    .line 99
    goto :goto_3

    .line 100
    :cond_6
    add-int/lit8 v8, v8, 0x1

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_7
    move v4, v2

    .line 104
    :goto_3
    if-eqz v7, :cond_8

    .line 105
    .line 106
    const/4 v8, 0x4

    .line 107
    goto :goto_4

    .line 108
    :cond_8
    const/4 v8, 0x3

    .line 109
    :goto_4
    invoke-virtual {v5, p2}, Ln3/n;->f(Landroidx/media3/common/t;)Z

    .line 110
    .line 111
    .line 112
    move-result v9

    .line 113
    const/16 v10, 0x8

    .line 114
    .line 115
    if-eqz v9, :cond_9

    .line 116
    .line 117
    const/16 v9, 0x10

    .line 118
    .line 119
    goto :goto_5

    .line 120
    :cond_9
    move v9, v10

    .line 121
    :goto_5
    iget-boolean v5, v5, Ln3/n;->g:Z

    .line 122
    .line 123
    if-eqz v5, :cond_a

    .line 124
    .line 125
    const/16 v5, 0x40

    .line 126
    .line 127
    goto :goto_6

    .line 128
    :cond_a
    move v5, v1

    .line 129
    :goto_6
    if-eqz v4, :cond_b

    .line 130
    .line 131
    const/16 v4, 0x80

    .line 132
    .line 133
    goto :goto_7

    .line 134
    :cond_b
    move v4, v1

    .line 135
    :goto_7
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 136
    .line 137
    const/16 v12, 0x1a

    .line 138
    .line 139
    if-lt v11, v12, :cond_c

    .line 140
    .line 141
    const-string v11, "video/dolby-vision"

    .line 142
    .line 143
    iget-object v12, p2, Landroidx/media3/common/t;->o:Ljava/lang/String;

    .line 144
    .line 145
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v11

    .line 149
    if-eqz v11, :cond_c

    .line 150
    .line 151
    invoke-static {v3}, Lc3/f;->e(Landroid/content/Context;)Z

    .line 152
    .line 153
    .line 154
    move-result v11

    .line 155
    if-nez v11, :cond_c

    .line 156
    .line 157
    const/16 v4, 0x100

    .line 158
    .line 159
    :cond_c
    if-eqz v7, :cond_d

    .line 160
    .line 161
    invoke-static {v3, p1, p2, v0, v2}, Lx3/i;->E0(Landroid/content/Context;Ln3/i;Landroidx/media3/common/t;ZZ)Ljava/util/List;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    if-nez v0, :cond_d

    .line 170
    .line 171
    sget-object v0, Ln3/u;->a:Ljava/util/HashMap;

    .line 172
    .line 173
    new-instance v0, Ljava/util/ArrayList;

    .line 174
    .line 175
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 176
    .line 177
    .line 178
    new-instance p1, La6/i;

    .line 179
    .line 180
    invoke-direct {p1, v10, v3, p2}, La6/i;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    new-instance v2, Landroidx/compose/ui/semantics/b0;

    .line 184
    .line 185
    invoke-direct {v2, p1, v6}, Landroidx/compose/ui/semantics/b0;-><init>(Ljava/lang/Object;I)V

    .line 186
    .line 187
    .line 188
    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    check-cast p1, Ln3/n;

    .line 196
    .line 197
    invoke-virtual {p1, v3, p2}, Ln3/n;->e(Landroid/content/Context;Landroidx/media3/common/t;)Z

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    if-eqz v0, :cond_d

    .line 202
    .line 203
    invoke-virtual {p1, p2}, Ln3/n;->f(Landroidx/media3/common/t;)Z

    .line 204
    .line 205
    .line 206
    move-result p1

    .line 207
    if-eqz p1, :cond_d

    .line 208
    .line 209
    const/16 v1, 0x20

    .line 210
    .line 211
    :cond_d
    or-int p1, v8, v9

    .line 212
    .line 213
    or-int/2addr p1, v1

    .line 214
    or-int/2addr p1, v5

    .line 215
    or-int/2addr p1, v4

    .line 216
    return p1
.end method
