.class public final Lcom/supertws/dubokutv/data/util/TTHp;
.super Ljava/lang/Object;
.source "r8-map-id-8ba8015df6390efac2340e8bc72cbaa0af05ae8dc58e92835996b10ae6d6a13d"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_duboku
    const-string v0, "dubokutv"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_duboku
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_duboku .. :try_end_duboku} :catch_duboku

    goto :goto_duboku

    :catch_duboku
    move-exception v0

    :goto_duboku
    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final native gS(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public final native gT(Landroid/content/Context;)I
.end method
