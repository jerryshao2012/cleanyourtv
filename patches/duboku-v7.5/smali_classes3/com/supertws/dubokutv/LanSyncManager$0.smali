.class public final synthetic Lcom/supertws/dubokutv/LanSyncManager$0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/supertws/dubokutv/LanSyncManager;"
    method = "lambda$syncLanClock$1"
    proto = "(Ljava/lang/String;)Ljava/lang/Long;"
.end annotation


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/supertws/dubokutv/LanSyncManager$0;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/supertws/dubokutv/LanSyncManager$0;->f$0:Ljava/lang/String;

    invoke-static {v0}, Lcom/supertws/dubokutv/LanSyncManager;->lambda$syncLanClock$1(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
