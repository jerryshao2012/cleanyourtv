.class public final synthetic Lcom/supertws/dubokutv/SyncVersionStore$0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/supertws/dubokutv/SyncVersionStore;"
    method = "lambda$prune$0"
    proto = "([Ljava/lang/String;[Ljava/lang/String;)I"
.end annotation


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 0
    check-cast p1, [Ljava/lang/String;

    check-cast p2, [Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/supertws/dubokutv/SyncVersionStore;->lambda$prune$0([Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method
