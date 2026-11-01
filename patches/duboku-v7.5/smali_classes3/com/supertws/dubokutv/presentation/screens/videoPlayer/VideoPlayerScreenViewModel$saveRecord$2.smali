.class final Lcom/supertws/dubokutv/presentation/screens/videoPlayer/VideoPlayerScreenViewModel$saveRecord$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-8ba8015df6390efac2340e8bc72cbaa0af05ae8dc58e92835996b10ae6d6a13d"

# interfaces
.implements Lrb/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lrb/n;"
    }
.end annotation

.annotation runtime Llb/c;
    c = "com.supertws.dubokutv.presentation.screens.videoPlayer.VideoPlayerScreenViewModel$saveRecord$2"
    f = "VideoPlayerScreenViewModel.kt"
    l = {
        0x35,
        0x36
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $record:Lpa/c;

.field label:I

.field final synthetic this$0:Lcom/supertws/dubokutv/presentation/screens/videoPlayer/u1;


# direct methods
.method public constructor <init>(Lcom/supertws/dubokutv/presentation/screens/videoPlayer/u1;Lpa/c;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/supertws/dubokutv/presentation/screens/videoPlayer/u1;",
            "Lpa/c;",
            "Lkotlin/coroutines/c;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/VideoPlayerScreenViewModel$saveRecord$2;->this$0:Lcom/supertws/dubokutv/presentation/screens/videoPlayer/u1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/VideoPlayerScreenViewModel$saveRecord$2;->$record:Lpa/c;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/c;",
            ")",
            "Lkotlin/coroutines/c;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/VideoPlayerScreenViewModel$saveRecord$2;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/VideoPlayerScreenViewModel$saveRecord$2;->this$0:Lcom/supertws/dubokutv/presentation/screens/videoPlayer/u1;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/VideoPlayerScreenViewModel$saveRecord$2;->$record:Lpa/c;

    invoke-static {v1}, Lcom/supertws/dubokutv/LanSyncManager;->broadcastProgress(Ljava/lang/Object;)V

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/VideoPlayerScreenViewModel$saveRecord$2;-><init>(Lcom/supertws/dubokutv/presentation/screens/videoPlayer/u1;Lpa/c;Lkotlin/coroutines/c;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/x;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/VideoPlayerScreenViewModel$saveRecord$2;->invoke(Lkotlinx/coroutines/x;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/x;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/x;",
            "Lkotlin/coroutines/c;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/VideoPlayerScreenViewModel$saveRecord$2;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/VideoPlayerScreenViewModel$saveRecord$2;

    sget-object p2, Lkotlin/w;->a:Lkotlin/w;

    invoke-virtual {p1, p2}, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/VideoPlayerScreenViewModel$saveRecord$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/VideoPlayerScreenViewModel$saveRecord$2;->label:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    sget-object v3, Lkotlin/w;->a:Lkotlin/w;

    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    if-eq v1, v4, :cond_1

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    invoke-static {p1}, Lkotlin/l;->b(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-object v3

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    invoke-static {p1}, Lkotlin/l;->b(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_2
    invoke-static {p1}, Lkotlin/l;->b(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/VideoPlayerScreenViewModel$saveRecord$2;->this$0:Lcom/supertws/dubokutv/presentation/screens/videoPlayer/u1;

    .line 35
    .line 36
    iget-object p1, p1, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/u1;->b:Lcom/supertws/dubokutv/data/repositories/a;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/VideoPlayerScreenViewModel$saveRecord$2;->$record:Lpa/c;

    invoke-static {v1}, Lcom/supertws/dubokutv/LanSyncManager;->broadcastProgress(Ljava/lang/Object;)V

    .line 39
    .line 40
    iput v4, p0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/VideoPlayerScreenViewModel$saveRecord$2;->label:I

    .line 41
    .line 42
    iget-object p1, p1, Lcom/supertws/dubokutv/data/repositories/a;->b:Lpa/d;

    .line 43
    .line 44
    iget-object v5, p1, Lpa/d;->a:Landroidx/room/x;

    .line 45
    .line 46
    new-instance v6, Landroidx/compose/ui/text/font/i0;

    .line 47
    .line 48
    const/16 v7, 0x19

    .line 49
    .line 50
    invoke-direct {v6, v7, p1, v1}, Landroidx/compose/ui/text/font/i0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    const/4 p1, 0x0

    .line 54
    invoke-static {v5, p1, v4, v6, p0}, Landroidx/room/util/a;->m(Landroidx/room/x;ZZLrb/k;Lkotlin/coroutines/c;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    if-ne p1, v0, :cond_3

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    move-object p1, v3

    .line 62
    :goto_0
    if-ne p1, v0, :cond_4

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_4
    move-object p1, v3

    .line 66
    :goto_1
    if-ne p1, v0, :cond_5

    .line 67
    .line 68
    goto :goto_4

    .line 69
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/VideoPlayerScreenViewModel$saveRecord$2;->this$0:Lcom/supertws/dubokutv/presentation/screens/videoPlayer/u1;

    .line 70
    .line 71
    iget-object p1, p1, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/u1;->b:Lcom/supertws/dubokutv/data/repositories/a;

    .line 72
    .line 73
    iput v2, p0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/VideoPlayerScreenViewModel$saveRecord$2;->label:I

    .line 74
    .line 75
    iget-object p1, p1, Lcom/supertws/dubokutv/data/repositories/a;->d:Lcom/supertws/dubokutv/data/local/b;

    .line 76
    .line 77
    invoke-virtual {p1, p0}, Lcom/supertws/dubokutv/data/local/b;->c(Lkotlin/coroutines/c;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    if-ne p1, v0, :cond_6

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_6
    move-object p1, v3

    .line 85
    :goto_3
    if-ne p1, v0, :cond_7

    .line 86
    .line 87
    :goto_4
    return-object v0

    .line 88
    :cond_7
    return-object v3
.end method
