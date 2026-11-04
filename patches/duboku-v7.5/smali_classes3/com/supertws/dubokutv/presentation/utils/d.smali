.class public final Lcom/supertws/dubokutv/presentation/utils/d;
.super Ljava/lang/Object;
.source "r8-map-id-8ba8015df6390efac2340e8bc72cbaa0af05ae8dc58e92835996b10ae6d6a13d"

# interfaces
.implements Lrb/k;
.implements Lrb/a;


# instance fields
.field public final synthetic a:Lrb/k;

.field public final synthetic b:Lrb/k;

.field public final synthetic c:Lrb/k;

.field public final synthetic d:Lrb/k;

.field public final synthetic f:Lrb/k;

.field public final synthetic g:Z

.field public final synthetic i:Landroidx/compose/runtime/b1;

.field public final synthetic p:Landroidx/compose/runtime/b1;

.field public final synthetic v:Lkotlinx/coroutines/x;


# direct methods
.method public constructor <init>(Lrb/k;Lrb/k;Lrb/k;Lrb/k;Lrb/k;ZLandroidx/compose/runtime/b1;Landroidx/compose/runtime/b1;Lkotlinx/coroutines/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/supertws/dubokutv/presentation/utils/d;->a:Lrb/k;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/supertws/dubokutv/presentation/utils/d;->b:Lrb/k;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/supertws/dubokutv/presentation/utils/d;->c:Lrb/k;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/supertws/dubokutv/presentation/utils/d;->d:Lrb/k;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/supertws/dubokutv/presentation/utils/d;->f:Lrb/k;

    .line 13
    .line 14
    iput-boolean p6, p0, Lcom/supertws/dubokutv/presentation/utils/d;->g:Z

    .line 15
    .line 16
    iput-object p7, p0, Lcom/supertws/dubokutv/presentation/utils/d;->i:Landroidx/compose/runtime/b1;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/supertws/dubokutv/presentation/utils/d;->p:Landroidx/compose/runtime/b1;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/supertws/dubokutv/presentation/utils/d;->v:Lkotlinx/coroutines/x;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    check-cast p1, Lz0/b;

    .line 2
    .line 3
    iget-object p1, p1, Lz0/b;->a:Landroid/view/KeyEvent;

    .line 4
    .line 5
    const-string v0, "keyEvent"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/16 v1, 0x42

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    if-eq v0, v1, :cond_0

    .line 18
    .line 19
    const/16 v1, 0xa0

    .line 20
    .line 21
    if-eq v0, v1, :cond_0

    .line 22
    .line 23
    packed-switch v0, :pswitch_data_0

    .line 24
    .line 25
    .line 26
    move-object v7, v2

    .line 27
    goto :goto_1

    .line 28
    :pswitch_0
    iget-object v0, p0, Lcom/supertws/dubokutv/presentation/utils/d;->b:Lrb/k;

    .line 29
    .line 30
    :goto_0
    move-object v7, v0

    .line 31
    goto :goto_1

    .line 32
    :pswitch_1
    iget-object v0, p0, Lcom/supertws/dubokutv/presentation/utils/d;->a:Lrb/k;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :pswitch_2
    iget-object v0, p0, Lcom/supertws/dubokutv/presentation/utils/d;->d:Lrb/k;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :pswitch_3
    iget-object v0, p0, Lcom/supertws/dubokutv/presentation/utils/d;->c:Lrb/k;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    :pswitch_4
    iget-object v0, p0, Lcom/supertws/dubokutv/presentation/utils/d;->f:Lrb/k;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :goto_1
    const/4 v0, 0x0

    .line 45
    const/4 v1, 0x1

    .line 46
    if-eqz v7, :cond_1

    .line 47
    .line 48
    move v3, v1

    .line 49
    goto :goto_2

    .line 50
    :cond_1
    move v3, v0

    .line 51
    :goto_2
    iget-boolean v4, p0, Lcom/supertws/dubokutv/presentation/utils/d;->g:Z

    .line 52
    .line 53
    and-int/2addr v3, v4

    .line 54
    if-eqz v3, :cond_7

    .line 55
    .line 56
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    iget-object v3, p0, Lcom/supertws/dubokutv/presentation/utils/d;->p:Landroidx/compose/runtime/b1;

    .line 61
    .line 62
    iget-object v11, p0, Lcom/supertws/dubokutv/presentation/utils/d;->i:Landroidx/compose/runtime/b1;

    .line 63
    .line 64
    if-eqz p1, :cond_6

    .line 65
    .line 66
    if-eq p1, v1, :cond_2

    .line 67
    .line 68
    goto :goto_4

    .line 69
    :cond_2
    invoke-interface {v11}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    check-cast p1, Lkotlinx/coroutines/a1;

    .line 74
    .line 75
    if-eqz p1, :cond_3

    .line 76
    .line 77
    invoke-interface {p1, v2}, Lkotlinx/coroutines/a1;->g(Ljava/util/concurrent/CancellationException;)V

    .line 78
    .line 79
    .line 80
    :cond_3
    invoke-interface {v11, v2}, Landroidx/compose/runtime/b1;->setValue(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    invoke-interface {v3}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    check-cast p1, Ljava/lang/Boolean;

    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-nez p1, :cond_4

    .line 94
    .line 95
    if-eqz v7, :cond_4

    .line 96
    .line 97
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 98
    .line 99
    invoke-interface {v7, p1}, Lrb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    :cond_4
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 103
    .line 104
    invoke-interface {v3, p1}, Landroidx/compose/runtime/b1;->setValue(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    :cond_5
    :goto_3
    move v0, v1

    .line 108
    goto :goto_4

    .line 109
    :cond_6
    invoke-interface {v11}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    if-nez p1, :cond_5

    .line 114
    .line 115
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 116
    .line 117
    invoke-interface {v3, p1}, Landroidx/compose/runtime/b1;->setValue(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    new-instance v3, Lcom/supertws/dubokutv/presentation/utils/ModifierUtilsKt$handleDPadKeyEvents$1$1$1;

    .line 121
    .line 122
    const-wide/16 v8, 0xc8

    .line 123
    .line 124
    const/4 v10, 0x0

    .line 125
    const-wide/16 v4, 0x258

    .line 126
    .line 127
    iget-object v6, p0, Lcom/supertws/dubokutv/presentation/utils/d;->p:Landroidx/compose/runtime/b1;

    .line 128
    .line 129
    invoke-direct/range {v3 .. v10}, Lcom/supertws/dubokutv/presentation/utils/ModifierUtilsKt$handleDPadKeyEvents$1$1$1;-><init>(JLandroidx/compose/runtime/b1;Lrb/k;JLkotlin/coroutines/c;)V

    .line 130
    .line 131
    .line 132
    const/4 p1, 0x3

    .line 133
    iget-object v0, p0, Lcom/supertws/dubokutv/presentation/utils/d;->v:Lkotlinx/coroutines/x;

    .line 134
    .line 135
    invoke-static {v0, v2, v2, v3, p1}, Lkotlinx/coroutines/z;->A(Lkotlinx/coroutines/x;Lkotlin/coroutines/h;Lkotlinx/coroutines/CoroutineStart;Lrb/n;I)Lkotlinx/coroutines/p1;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-interface {v11, p1}, Landroidx/compose/runtime/b1;->setValue(Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_7
    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    return-object p1

    .line 148
    nop

    .line 149
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Lcom/supertws/dubokutv/presentation/utils/d;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/supertws/dubokutv/presentation/utils/d;->f:Lrb/k;

    if-eqz v0, :cond_0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lrb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v0, Lkotlin/w;->a:Lkotlin/w;

    return-object v0
.end method
