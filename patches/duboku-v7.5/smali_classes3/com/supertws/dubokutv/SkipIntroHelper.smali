.class public final Lcom/supertws/dubokutv/SkipIntroHelper;
.super Ljava/lang/Object;
.source "SkipIntroHelper.java"

# interfaces
.implements Lrb/a;


# static fields
.field public static final INSTANCE:Lcom/supertws/dubokutv/SkipIntroHelper;

.field private static volatile sPlayer:Landroidx/media3/exoplayer/ExoPlayer;

.field private static volatile sProgressState:Landroidx/compose/runtime/a1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/supertws/dubokutv/SkipIntroHelper;

    invoke-direct {v0}, Lcom/supertws/dubokutv/SkipIntroHelper;-><init>()V

    sput-object v0, Lcom/supertws/dubokutv/SkipIntroHelper;->INSTANCE:Lcom/supertws/dubokutv/SkipIntroHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static register(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    if-eqz p0, :cond_0

    check-cast p0, Landroidx/media3/exoplayer/ExoPlayer;

    sput-object p0, Lcom/supertws/dubokutv/SkipIntroHelper;->sPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    :cond_0
    if-eqz p1, :cond_1

    check-cast p1, Landroidx/compose/runtime/a1;

    sput-object p1, Lcom/supertws/dubokutv/SkipIntroHelper;->sProgressState:Landroidx/compose/runtime/a1;

    :cond_1
    return-void
.end method

.method public static skipIntro()V
    .locals 5

    sget-object v0, Lcom/supertws/dubokutv/SkipIntroHelper;->sPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    sget-object v1, Lcom/supertws/dubokutv/SkipIntroHelper;->sProgressState:Landroidx/compose/runtime/a1;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    check-cast v1, Landroidx/compose/runtime/r2;

    invoke-virtual {v1}, Landroidx/compose/runtime/r2;->h()J

    move-result-wide v1

    const-wide/16 v3, 0x7530

    add-long/2addr v1, v3

    check-cast v0, Landroidx/compose/foundation/layout/s0;

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v1, v2}, Landroidx/compose/foundation/layout/s0;->s(IJ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/supertws/dubokutv/SkipIntroHelper;->skipIntro()V

    sget-object v0, Lkotlin/w;->a:Lkotlin/w;

    return-object v0
.end method
