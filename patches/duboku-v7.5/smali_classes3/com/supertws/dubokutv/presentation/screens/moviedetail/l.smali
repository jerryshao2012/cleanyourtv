.class public final synthetic Lcom/supertws/dubokutv/presentation/screens/moviedetail/l;
.super Ljava/lang/Object;
.source "r8-map-id-8ba8015df6390efac2340e8bc72cbaa0af05ae8dc58e92835996b10ae6d6a13d"

# interfaces
.implements Lrb/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lrb/n;

.field public final synthetic c:Lpa/c;


# direct methods
.method public synthetic constructor <init>(Lrb/n;Lpa/c;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/supertws/dubokutv/presentation/screens/moviedetail/l;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/supertws/dubokutv/presentation/screens/moviedetail/l;->b:Lrb/n;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/supertws/dubokutv/presentation/screens/moviedetail/l;->c:Lpa/c;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lcom/supertws/dubokutv/presentation/screens/moviedetail/l;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/supertws/dubokutv/presentation/screens/moviedetail/l;->c:Lpa/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/supertws/dubokutv/LanSyncManager;->resolveLatestRecord(Ljava/lang/Object;Ljava/lang/Object;)Lpa/c;

    move-result-object v0

    .line 7
    .line 8
    iget-object v1, v0, Lpa/c;->a:Ljava/lang/String;

    .line 9
    .line 10
    iget-wide v2, v0, Lpa/c;->d:J

    .line 11
    .line 12
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v2, p0, Lcom/supertws/dubokutv/presentation/screens/moviedetail/l;->b:Lrb/n;

    .line 17
    .line 18
    invoke-interface {v2, v1, v0}, Lrb/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    :goto_0
    sget-object v0, Lkotlin/w;->a:Lkotlin/w;

    .line 22
    .line 23
    return-object v0

    .line 24
    :pswitch_0
    iget-object v0, p0, Lcom/supertws/dubokutv/presentation/screens/moviedetail/l;->c:Lpa/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/supertws/dubokutv/LanSyncManager;->resolveLatestRecord(Ljava/lang/Object;Ljava/lang/Object;)Lpa/c;

    move-result-object v0

    .line 25
    .line 26
    iget-object v1, v0, Lpa/c;->a:Ljava/lang/String;

    .line 27
    .line 28
    iget-wide v2, v0, Lpa/c;->d:J

    .line 29
    .line 30
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v2, p0, Lcom/supertws/dubokutv/presentation/screens/moviedetail/l;->b:Lrb/n;

    .line 35
    .line 36
    invoke-interface {v2, v1, v0}, Lrb/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :pswitch_1
    iget-object v0, p0, Lcom/supertws/dubokutv/presentation/screens/moviedetail/l;->c:Lpa/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/supertws/dubokutv/LanSyncManager;->resolveLatestRecord(Ljava/lang/Object;Ljava/lang/Object;)Lpa/c;

    move-result-object v0

    .line 41
    .line 42
    iget-object v1, v0, Lpa/c;->a:Ljava/lang/String;

    .line 43
    .line 44
    iget-wide v2, v0, Lpa/c;->d:J

    .line 45
    .line 46
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object v2, p0, Lcom/supertws/dubokutv/presentation/screens/moviedetail/l;->b:Lrb/n;

    .line 51
    .line 52
    invoke-interface {v2, v1, v0}, Lrb/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
