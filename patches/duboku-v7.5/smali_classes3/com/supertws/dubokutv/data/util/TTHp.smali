.class public final Lcom/supertws/dubokutv/data/util/TTHp;
.super Ljava/lang/Object;
.source "r8-map-id-8ba8015df6390efac2340e8bc72cbaa0af05ae8dc58e92835996b10ae6d6a13d"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v0, "dubokutv"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "lib.load.OK"

    invoke-static {v0}, Lcom/supertws/dubokutv/Dbg;->stage(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    const-string v0, "lib.load.FAIL"

    invoke-static {v0}, Lcom/supertws/dubokutv/Dbg;->stage(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/supertws/dubokutv/Dbg;->stage(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 4
    .line 5
    .line 6
    :goto_0
    return-void
.end method

.method public static gSw(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "gS.begin"

    invoke-static {v0}, Lcom/supertws/dubokutv/Dbg;->stage(Ljava/lang/String;)V

    new-instance v1, Lcom/supertws/dubokutv/data/util/TTHp;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, p0}, Lcom/supertws/dubokutv/data/util/TTHp;->gS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "gS.ok"

    invoke-static {v0}, Lcom/supertws/dubokutv/Dbg;->stage(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final native gS(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public final native gT(Landroid/content/Context;)I
.end method
