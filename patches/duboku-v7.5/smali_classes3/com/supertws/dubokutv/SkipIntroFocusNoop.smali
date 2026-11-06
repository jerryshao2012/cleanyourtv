.class public final Lcom/supertws/dubokutv/SkipIntroFocusNoop;
.super Ljava/lang/Object;
.source "SkipIntroFocusNoop.java"

# interfaces
.implements Lrb/a;

# static fields
.field public static final INSTANCE:Lcom/supertws/dubokutv/SkipIntroFocusNoop;

# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/supertws/dubokutv/SkipIntroFocusNoop;

    invoke-direct {v0}, Lcom/supertws/dubokutv/SkipIntroFocusNoop;-><init>()V

    sput-object v0, Lcom/supertws/dubokutv/SkipIntroFocusNoop;->INSTANCE:Lcom/supertws/dubokutv/SkipIntroFocusNoop;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lkotlin/w;->a:Lkotlin/w;

    return-object v0
.end method
