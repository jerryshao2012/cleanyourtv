.class public final Landroidx/appcompat/app/h;
.super Landroidx/activity/p;
.source "r8-map-id-8ba8015df6390efac2340e8bc72cbaa0af05ae8dc58e92835996b10ae6d6a13d"

# interfaces
.implements Landroid/content/DialogInterface;
.implements Landroidx/appcompat/app/l;


# instance fields
.field public f:Landroidx/appcompat/app/g0;

.field public final g:Landroidx/appcompat/app/h0;

.field public final i:Landroidx/appcompat/app/f;


# direct methods
.method public constructor <init>(Landroid/view/ContextThemeWrapper;I)V
    .locals 4

    .line 1
    invoke-static {p1, p2}, Landroidx/appcompat/app/h;->g(Landroid/content/Context;I)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x1

    .line 6
    const v1, 0x7f0400cb

    .line 7
    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    new-instance v2, Landroid/util/TypedValue;

    .line 12
    .line 13
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v3, v1, v2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 21
    .line 22
    .line 23
    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v2, p2

    .line 27
    :goto_0
    invoke-direct {p0, p1, v2}, Landroidx/activity/p;-><init>(Landroid/content/Context;I)V

    .line 28
    .line 29
    .line 30
    new-instance v2, Landroidx/appcompat/app/h0;

    .line 31
    .line 32
    invoke-direct {v2, p0}, Landroidx/appcompat/app/h0;-><init>(Landroidx/appcompat/app/h;)V

    .line 33
    .line 34
    .line 35
    iput-object v2, p0, Landroidx/appcompat/app/h;->g:Landroidx/appcompat/app/h0;

    .line 36
    .line 37
    invoke-virtual {p0}, Landroidx/appcompat/app/h;->e()Landroidx/appcompat/app/q;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    if-nez p2, :cond_1

    .line 42
    .line 43
    new-instance p2, Landroid/util/TypedValue;

    .line 44
    .line 45
    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1, v1, p2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 53
    .line 54
    .line 55
    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    .line 56
    .line 57
    :cond_1
    move-object p1, v2

    .line 58
    check-cast p1, Landroidx/appcompat/app/g0;

    .line 59
    .line 60
    iput p2, p1, Landroidx/appcompat/app/g0;->h0:I

    .line 61
    .line 62
    invoke-virtual {v2}, Landroidx/appcompat/app/q;->g()V

    .line 63
    .line 64
    .line 65
    new-instance p1, Landroidx/appcompat/app/f;

    .line 66
    .line 67
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-direct {p1, p2, p0, v0}, Landroidx/appcompat/app/f;-><init>(Landroid/content/Context;Landroidx/appcompat/app/h;Landroid/view/Window;)V

    .line 76
    .line 77
    .line 78
    iput-object p1, p0, Landroidx/appcompat/app/h;->i:Landroidx/appcompat/app/f;

    .line 79
    .line 80
    return-void
.end method

.method public static g(Landroid/content/Context;I)I
    .locals 2

    .line 1
    ushr-int/lit8 v0, p1, 0x18

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    return p1

    .line 9
    :cond_0
    new-instance p1, Landroid/util/TypedValue;

    .line 10
    .line 11
    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const v0, 0x7f040032

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 22
    .line 23
    .line 24
    iget p0, p1, Landroid/util/TypedValue;->resourceId:I

    .line 25
    .line 26
    return p0
.end method


# virtual methods
.method public final addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/activity/p;->d()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/h;->e()Landroidx/appcompat/app/q;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroidx/appcompat/app/g0;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/appcompat/app/g0;->A()V

    .line 11
    .line 12
    .line 13
    iget-object v1, v0, Landroidx/appcompat/app/g0;->O:Landroid/view/ViewGroup;

    .line 14
    .line 15
    const v2, 0x1020002

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroid/view/ViewGroup;

    .line 23
    .line 24
    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, v0, Landroidx/appcompat/app/g0;->z:Landroidx/appcompat/app/z;

    .line 28
    .line 29
    iget-object p2, v0, Landroidx/appcompat/app/g0;->y:Landroid/view/Window;

    .line 30
    .line 31
    invoke-virtual {p2}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/z;->a(Landroid/view/Window$Callback;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final dismiss()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/h;->e()Landroidx/appcompat/app/q;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroidx/appcompat/app/q;->h()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Landroidx/appcompat/app/h;->g:Landroidx/appcompat/app/h0;

    .line 10
    .line 11
    invoke-static {v1, v0, p0, p1}, Landroidx/core/view/a1;->e(Landroidx/core/view/p;Landroid/view/View;Landroid/view/Window$Callback;Landroid/view/KeyEvent;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public final e()Landroidx/appcompat/app/q;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/h;->f:Landroidx/appcompat/app/g0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Landroidx/appcompat/app/q;->a:Landroidx/room/e0;

    .line 6
    .line 7
    new-instance v0, Landroidx/appcompat/app/g0;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-direct {v0, v1, v2, p0, p0}, Landroidx/appcompat/app/g0;-><init>(Landroid/content/Context;Landroid/view/Window;Landroidx/appcompat/app/l;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Landroidx/appcompat/app/h;->f:Landroidx/appcompat/app/g0;

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/h;->f:Landroidx/appcompat/app/g0;

    .line 23
    .line 24
    return-object v0
.end method

.method public final f(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/h;->e()Landroidx/appcompat/app/q;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/app/q;->d()V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Landroidx/activity/p;->onCreate(Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/appcompat/app/h;->e()Landroidx/appcompat/app/q;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroidx/appcompat/app/q;->g()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final findViewById(I)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/h;->e()Landroidx/appcompat/app/q;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/appcompat/app/g0;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/appcompat/app/g0;->A()V

    .line 8
    .line 9
    .line 10
    iget-object v0, v0, Landroidx/appcompat/app/g0;->y:Landroid/view/Window;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public final h(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/h;->e()Landroidx/appcompat/app/q;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/q;->o(Ljava/lang/CharSequence;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final i(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final invalidateOptionsMenu()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/h;->e()Landroidx/appcompat/app/q;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/appcompat/app/g0;

    .line 6
    .line 7
    iget-object v1, v0, Landroidx/appcompat/app/g0;->B:Landroidx/appcompat/app/p0;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/appcompat/app/g0;->F()V

    .line 12
    .line 13
    .line 14
    iget-object v1, v0, Landroidx/appcompat/app/g0;->B:Landroidx/appcompat/app/p0;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/g0;->G(I)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 17

    .line 1
    invoke-virtual/range {p0 .. p1}, Landroidx/appcompat/app/h;->f(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    move-object/from16 v0, p0

    .line 5
    .line 6
    iget-object v1, v0, Landroidx/appcompat/app/h;->i:Landroidx/appcompat/app/f;

    .line 7
    .line 8
    iget v2, v1, Landroidx/appcompat/app/f;->y:I

    .line 9
    .line 10
    iget-object v3, v1, Landroidx/appcompat/app/f;->b:Landroidx/appcompat/app/h;

    .line 11
    .line 12
    invoke-virtual {v3, v2}, Landroidx/appcompat/app/h;->setContentView(I)V

    .line 13
    .line 14
    .line 15
    iget-object v2, v1, Landroidx/appcompat/app/f;->a:Landroid/content/Context;

    .line 16
    .line 17
    iget-object v3, v1, Landroidx/appcompat/app/f;->c:Landroid/view/Window;

    .line 18
    .line 19
    const v4, 0x7f0a0138

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    const v5, 0x7f0a01a4

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    const v7, 0x7f0a0089

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v8

    .line 40
    const v9, 0x7f0a0073

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v10

    .line 47
    const v11, 0x7f0a008e

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    check-cast v4, Landroid/view/ViewGroup;

    .line 55
    .line 56
    iget-object v11, v1, Landroidx/appcompat/app/f;->f:Landroid/view/View;

    .line 57
    .line 58
    if-eqz v11, :cond_0

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const/4 v11, 0x0

    .line 62
    :goto_0
    const/4 v14, 0x0

    .line 63
    if-eqz v11, :cond_1

    .line 64
    .line 65
    const/4 v15, 0x1

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    move v15, v14

    .line 68
    :goto_1
    if-eqz v15, :cond_2

    .line 69
    .line 70
    invoke-static {v11}, Landroidx/appcompat/app/f;->a(Landroid/view/View;)Z

    .line 71
    .line 72
    .line 73
    move-result v16

    .line 74
    if-nez v16, :cond_3

    .line 75
    .line 76
    :cond_2
    const/high16 v12, 0x20000

    .line 77
    .line 78
    invoke-virtual {v3, v12, v12}, Landroid/view/Window;->setFlags(II)V

    .line 79
    .line 80
    .line 81
    :cond_3
    const/16 v12, 0x8

    .line 82
    .line 83
    const/4 v13, -0x1

    .line 84
    if-eqz v15, :cond_5

    .line 85
    .line 86
    const v15, 0x7f0a008d

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3, v15}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v15

    .line 93
    check-cast v15, Landroid/widget/FrameLayout;

    .line 94
    .line 95
    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    .line 96
    .line 97
    invoke-direct {v9, v13, v13}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v15, v11, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    .line 102
    .line 103
    iget-boolean v9, v1, Landroidx/appcompat/app/f;->g:Z

    .line 104
    .line 105
    if-eqz v9, :cond_4

    .line 106
    .line 107
    invoke-virtual {v15, v14, v14, v14, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 108
    .line 109
    .line 110
    :cond_4
    iget-object v9, v1, Landroidx/appcompat/app/f;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 111
    .line 112
    if-eqz v9, :cond_6

    .line 113
    .line 114
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 115
    .line 116
    .line 117
    move-result-object v9

    .line 118
    check-cast v9, Landroidx/appcompat/widget/d2;

    .line 119
    .line 120
    const/4 v11, 0x0

    .line 121
    iput v11, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_5
    invoke-virtual {v4, v12}, Landroid/view/View;->setVisibility(I)V

    .line 125
    .line 126
    .line 127
    :cond_6
    :goto_2
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    const v9, 0x7f0a0073

    .line 136
    .line 137
    .line 138
    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 139
    .line 140
    .line 141
    move-result-object v9

    .line 142
    invoke-static {v5, v6}, Landroidx/appcompat/app/f;->b(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    invoke-static {v7, v8}, Landroidx/appcompat/app/f;->b(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    invoke-static {v9, v10}, Landroidx/appcompat/app/f;->b(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    .line 151
    .line 152
    .line 153
    move-result-object v7

    .line 154
    const v8, 0x7f0a0154

    .line 155
    .line 156
    .line 157
    invoke-virtual {v3, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 158
    .line 159
    .line 160
    move-result-object v8

    .line 161
    check-cast v8, Landroidx/core/widget/NestedScrollView;

    .line 162
    .line 163
    iput-object v8, v1, Landroidx/appcompat/app/f;->q:Landroidx/core/widget/NestedScrollView;

    .line 164
    .line 165
    invoke-virtual {v8, v14}, Landroid/view/View;->setFocusable(Z)V

    .line 166
    .line 167
    .line 168
    iget-object v8, v1, Landroidx/appcompat/app/f;->q:Landroidx/core/widget/NestedScrollView;

    .line 169
    .line 170
    invoke-virtual {v8, v14}, Landroidx/core/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    .line 171
    .line 172
    .line 173
    const v8, 0x102000b

    .line 174
    .line 175
    .line 176
    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 177
    .line 178
    .line 179
    move-result-object v8

    .line 180
    check-cast v8, Landroid/widget/TextView;

    .line 181
    .line 182
    iput-object v8, v1, Landroidx/appcompat/app/f;->u:Landroid/widget/TextView;

    .line 183
    .line 184
    if-nez v8, :cond_7

    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_7
    invoke-virtual {v8, v12}, Landroid/view/View;->setVisibility(I)V

    .line 188
    .line 189
    .line 190
    iget-object v8, v1, Landroidx/appcompat/app/f;->q:Landroidx/core/widget/NestedScrollView;

    .line 191
    .line 192
    iget-object v9, v1, Landroidx/appcompat/app/f;->u:Landroid/widget/TextView;

    .line 193
    .line 194
    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 195
    .line 196
    .line 197
    iget-object v8, v1, Landroidx/appcompat/app/f;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 198
    .line 199
    if-eqz v8, :cond_8

    .line 200
    .line 201
    iget-object v8, v1, Landroidx/appcompat/app/f;->q:Landroidx/core/widget/NestedScrollView;

    .line 202
    .line 203
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 204
    .line 205
    .line 206
    move-result-object v8

    .line 207
    check-cast v8, Landroid/view/ViewGroup;

    .line 208
    .line 209
    iget-object v9, v1, Landroidx/appcompat/app/f;->q:Landroidx/core/widget/NestedScrollView;

    .line 210
    .line 211
    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 212
    .line 213
    .line 214
    move-result v9

    .line 215
    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 216
    .line 217
    .line 218
    iget-object v10, v1, Landroidx/appcompat/app/f;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 219
    .line 220
    new-instance v11, Landroid/view/ViewGroup$LayoutParams;

    .line 221
    .line 222
    invoke-direct {v11, v13, v13}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v8, v10, v9, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 226
    .line 227
    .line 228
    goto :goto_3

    .line 229
    :cond_8
    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    .line 230
    .line 231
    .line 232
    :goto_3
    const v8, 0x1020019

    .line 233
    .line 234
    .line 235
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 236
    .line 237
    .line 238
    move-result-object v8

    .line 239
    check-cast v8, Landroid/widget/Button;

    .line 240
    .line 241
    iput-object v8, v1, Landroidx/appcompat/app/f;->h:Landroid/widget/Button;

    .line 242
    .line 243
    iget-object v9, v1, Landroidx/appcompat/app/f;->E:Landroidx/appcompat/app/a;

    .line 244
    .line 245
    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    .line 247
    .line 248
    iget-object v8, v1, Landroidx/appcompat/app/f;->i:Ljava/lang/CharSequence;

    .line 249
    .line 250
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 251
    .line 252
    .line 253
    move-result v8

    .line 254
    if-eqz v8, :cond_9

    .line 255
    .line 256
    iget-object v8, v1, Landroidx/appcompat/app/f;->h:Landroid/widget/Button;

    .line 257
    .line 258
    invoke-virtual {v8, v12}, Landroid/view/View;->setVisibility(I)V

    .line 259
    .line 260
    .line 261
    move v8, v14

    .line 262
    goto :goto_4

    .line 263
    :cond_9
    iget-object v8, v1, Landroidx/appcompat/app/f;->h:Landroid/widget/Button;

    .line 264
    .line 265
    iget-object v10, v1, Landroidx/appcompat/app/f;->i:Ljava/lang/CharSequence;

    .line 266
    .line 267
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    .line 269
    .line 270
    iget-object v8, v1, Landroidx/appcompat/app/f;->h:Landroid/widget/Button;

    .line 271
    .line 272
    invoke-virtual {v8, v14}, Landroid/view/View;->setVisibility(I)V

    .line 273
    .line 274
    .line 275
    const/4 v8, 0x1

    .line 276
    :goto_4
    const v10, 0x102001a

    .line 277
    .line 278
    .line 279
    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 280
    .line 281
    .line 282
    move-result-object v10

    .line 283
    check-cast v10, Landroid/widget/Button;

    .line 284
    .line 285
    iput-object v10, v1, Landroidx/appcompat/app/f;->k:Landroid/widget/Button;

    .line 286
    .line 287
    invoke-virtual {v10, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    .line 289
    .line 290
    iget-object v10, v1, Landroidx/appcompat/app/f;->l:Ljava/lang/CharSequence;

    .line 291
    .line 292
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 293
    .line 294
    .line 295
    move-result v10

    .line 296
    if-eqz v10, :cond_a

    .line 297
    .line 298
    iget-object v10, v1, Landroidx/appcompat/app/f;->k:Landroid/widget/Button;

    .line 299
    .line 300
    invoke-virtual {v10, v12}, Landroid/view/View;->setVisibility(I)V

    .line 301
    .line 302
    .line 303
    goto :goto_5

    .line 304
    :cond_a
    iget-object v10, v1, Landroidx/appcompat/app/f;->k:Landroid/widget/Button;

    .line 305
    .line 306
    iget-object v11, v1, Landroidx/appcompat/app/f;->l:Ljava/lang/CharSequence;

    .line 307
    .line 308
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    .line 310
    .line 311
    iget-object v10, v1, Landroidx/appcompat/app/f;->k:Landroid/widget/Button;

    .line 312
    .line 313
    invoke-virtual {v10, v14}, Landroid/view/View;->setVisibility(I)V

    .line 314
    .line 315
    .line 316
    or-int/lit8 v8, v8, 0x2

    .line 317
    .line 318
    :goto_5
    const v10, 0x102001b

    .line 319
    .line 320
    .line 321
    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 322
    .line 323
    .line 324
    move-result-object v10

    .line 325
    check-cast v10, Landroid/widget/Button;

    .line 326
    .line 327
    iput-object v10, v1, Landroidx/appcompat/app/f;->n:Landroid/widget/Button;

    .line 328
    .line 329
    invoke-virtual {v10, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    .line 331
    .line 332
    iget-object v9, v1, Landroidx/appcompat/app/f;->o:Ljava/lang/CharSequence;

    .line 333
    .line 334
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 335
    .line 336
    .line 337
    move-result v9

    .line 338
    if-eqz v9, :cond_b

    .line 339
    .line 340
    iget-object v9, v1, Landroidx/appcompat/app/f;->n:Landroid/widget/Button;

    .line 341
    .line 342
    invoke-virtual {v9, v12}, Landroid/view/View;->setVisibility(I)V

    .line 343
    .line 344
    .line 345
    goto :goto_6

    .line 346
    :cond_b
    iget-object v9, v1, Landroidx/appcompat/app/f;->n:Landroid/widget/Button;

    .line 347
    .line 348
    iget-object v10, v1, Landroidx/appcompat/app/f;->o:Ljava/lang/CharSequence;

    .line 349
    .line 350
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    .line 352
    .line 353
    iget-object v9, v1, Landroidx/appcompat/app/f;->n:Landroid/widget/Button;

    .line 354
    .line 355
    invoke-virtual {v9, v14}, Landroid/view/View;->setVisibility(I)V

    .line 356
    .line 357
    .line 358
    or-int/lit8 v8, v8, 0x4

    .line 359
    .line 360
    :goto_6
    new-instance v9, Landroid/util/TypedValue;

    .line 361
    .line 362
    invoke-direct {v9}, Landroid/util/TypedValue;-><init>()V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 366
    .line 367
    .line 368
    move-result-object v2

    .line 369
    const v10, 0x7f040030

    .line 370
    .line 371
    .line 372
    const/4 v11, 0x1

    .line 373
    invoke-virtual {v2, v10, v9, v11}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 374
    .line 375
    .line 376
    iget v2, v9, Landroid/util/TypedValue;->data:I

    .line 377
    .line 378
    const/4 v9, 0x2

    .line 379
    if-eqz v2, :cond_e

    .line 380
    .line 381
    const/high16 v2, 0x3f000000    # 0.5f

    .line 382
    .line 383
    if-ne v8, v11, :cond_c

    .line 384
    .line 385
    iget-object v10, v1, Landroidx/appcompat/app/f;->h:Landroid/widget/Button;

    .line 386
    .line 387
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 388
    .line 389
    .line 390
    move-result-object v15

    .line 391
    check-cast v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 392
    .line 393
    iput v11, v15, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 394
    .line 395
    iput v2, v15, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 396
    .line 397
    invoke-virtual {v10, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 398
    .line 399
    .line 400
    goto :goto_7

    .line 401
    :cond_c
    if-ne v8, v9, :cond_d

    .line 402
    .line 403
    iget-object v10, v1, Landroidx/appcompat/app/f;->k:Landroid/widget/Button;

    .line 404
    .line 405
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 406
    .line 407
    .line 408
    move-result-object v15

    .line 409
    check-cast v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 410
    .line 411
    iput v11, v15, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 412
    .line 413
    iput v2, v15, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 414
    .line 415
    invoke-virtual {v10, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 416
    .line 417
    .line 418
    goto :goto_7

    .line 419
    :cond_d
    const/4 v10, 0x4

    .line 420
    if-ne v8, v10, :cond_e

    .line 421
    .line 422
    iget-object v10, v1, Landroidx/appcompat/app/f;->n:Landroid/widget/Button;

    .line 423
    .line 424
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 425
    .line 426
    .line 427
    move-result-object v15

    .line 428
    check-cast v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 429
    .line 430
    iput v11, v15, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 431
    .line 432
    iput v2, v15, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 433
    .line 434
    invoke-virtual {v10, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 435
    .line 436
    .line 437
    :cond_e
    :goto_7
    if-eqz v8, :cond_f

    .line 438
    .line 439
    goto :goto_8

    .line 440
    :cond_f
    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    .line 441
    .line 442
    .line 443
    :goto_8
    iget-object v2, v1, Landroidx/appcompat/app/f;->v:Landroid/view/View;

    .line 444
    .line 445
    const v8, 0x7f0a01a1

    .line 446
    .line 447
    .line 448
    if-eqz v2, :cond_10

    .line 449
    .line 450
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .line 451
    .line 452
    const/4 v10, -0x2

    .line 453
    invoke-direct {v2, v13, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 454
    .line 455
    .line 456
    iget-object v10, v1, Landroidx/appcompat/app/f;->v:Landroid/view/View;

    .line 457
    .line 458
    invoke-virtual {v5, v10, v14, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v3, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 462
    .line 463
    .line 464
    move-result-object v2

    .line 465
    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    .line 466
    .line 467
    .line 468
    goto :goto_9

    .line 469
    :cond_10
    const v2, 0x1020006

    .line 470
    .line 471
    .line 472
    invoke-virtual {v3, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 473
    .line 474
    .line 475
    move-result-object v2

    .line 476
    check-cast v2, Landroid/widget/ImageView;

    .line 477
    .line 478
    iput-object v2, v1, Landroidx/appcompat/app/f;->s:Landroid/widget/ImageView;

    .line 479
    .line 480
    iget-object v2, v1, Landroidx/appcompat/app/f;->d:Ljava/lang/CharSequence;

    .line 481
    .line 482
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 483
    .line 484
    .line 485
    move-result v2

    .line 486
    if-nez v2, :cond_12

    .line 487
    .line 488
    iget-boolean v2, v1, Landroidx/appcompat/app/f;->C:Z

    .line 489
    .line 490
    if-eqz v2, :cond_12

    .line 491
    .line 492
    const v2, 0x7f0a0049

    .line 493
    .line 494
    .line 495
    invoke-virtual {v3, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 496
    .line 497
    .line 498
    move-result-object v2

    .line 499
    check-cast v2, Landroid/widget/TextView;

    .line 500
    .line 501
    iput-object v2, v1, Landroidx/appcompat/app/f;->t:Landroid/widget/TextView;

    .line 502
    .line 503
    iget-object v8, v1, Landroidx/appcompat/app/f;->d:Ljava/lang/CharSequence;

    .line 504
    .line 505
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 506
    .line 507
    .line 508
    iget-object v2, v1, Landroidx/appcompat/app/f;->r:Landroid/graphics/drawable/Drawable;

    .line 509
    .line 510
    if-eqz v2, :cond_11

    .line 511
    .line 512
    iget-object v8, v1, Landroidx/appcompat/app/f;->s:Landroid/widget/ImageView;

    .line 513
    .line 514
    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 515
    .line 516
    .line 517
    goto :goto_9

    .line 518
    :cond_11
    iget-object v2, v1, Landroidx/appcompat/app/f;->t:Landroid/widget/TextView;

    .line 519
    .line 520
    iget-object v8, v1, Landroidx/appcompat/app/f;->s:Landroid/widget/ImageView;

    .line 521
    .line 522
    invoke-virtual {v8}, Landroid/view/View;->getPaddingLeft()I

    .line 523
    .line 524
    .line 525
    move-result v8

    .line 526
    iget-object v10, v1, Landroidx/appcompat/app/f;->s:Landroid/widget/ImageView;

    .line 527
    .line 528
    invoke-virtual {v10}, Landroid/view/View;->getPaddingTop()I

    .line 529
    .line 530
    .line 531
    move-result v10

    .line 532
    iget-object v11, v1, Landroidx/appcompat/app/f;->s:Landroid/widget/ImageView;

    .line 533
    .line 534
    invoke-virtual {v11}, Landroid/view/View;->getPaddingRight()I

    .line 535
    .line 536
    .line 537
    move-result v11

    .line 538
    iget-object v15, v1, Landroidx/appcompat/app/f;->s:Landroid/widget/ImageView;

    .line 539
    .line 540
    invoke-virtual {v15}, Landroid/view/View;->getPaddingBottom()I

    .line 541
    .line 542
    .line 543
    move-result v15

    .line 544
    invoke-virtual {v2, v8, v10, v11, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 545
    .line 546
    .line 547
    iget-object v2, v1, Landroidx/appcompat/app/f;->s:Landroid/widget/ImageView;

    .line 548
    .line 549
    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 550
    .line 551
    .line 552
    goto :goto_9

    .line 553
    :cond_12
    invoke-virtual {v3, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 554
    .line 555
    .line 556
    move-result-object v2

    .line 557
    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    .line 558
    .line 559
    .line 560
    iget-object v2, v1, Landroidx/appcompat/app/f;->s:Landroid/widget/ImageView;

    .line 561
    .line 562
    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 563
    .line 564
    .line 565
    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    .line 566
    .line 567
    .line 568
    :goto_9
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 569
    .line 570
    .line 571
    move-result v2

    .line 572
    if-eq v2, v12, :cond_13

    .line 573
    .line 574
    const/4 v11, 0x1

    .line 575
    goto :goto_a

    .line 576
    :cond_13
    move v11, v14

    .line 577
    :goto_a
    if-eqz v5, :cond_14

    .line 578
    .line 579
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 580
    .line 581
    .line 582
    move-result v2

    .line 583
    if-eq v2, v12, :cond_14

    .line 584
    .line 585
    const/4 v2, 0x1

    .line 586
    goto :goto_b

    .line 587
    :cond_14
    move v2, v14

    .line 588
    :goto_b
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    .line 589
    .line 590
    .line 591
    move-result v4

    .line 592
    if-eq v4, v12, :cond_15

    .line 593
    .line 594
    const/4 v4, 0x1

    .line 595
    goto :goto_c

    .line 596
    :cond_15
    move v4, v14

    .line 597
    :goto_c
    if-nez v4, :cond_16

    .line 598
    .line 599
    const v7, 0x7f0a019b

    .line 600
    .line 601
    .line 602
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 603
    .line 604
    .line 605
    move-result-object v7

    .line 606
    if-eqz v7, :cond_16

    .line 607
    .line 608
    invoke-virtual {v7, v14}, Landroid/view/View;->setVisibility(I)V

    .line 609
    .line 610
    .line 611
    :cond_16
    if-eqz v2, :cond_19

    .line 612
    .line 613
    iget-object v7, v1, Landroidx/appcompat/app/f;->q:Landroidx/core/widget/NestedScrollView;

    .line 614
    .line 615
    if-eqz v7, :cond_17

    .line 616
    .line 617
    const/4 v8, 0x1

    .line 618
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 619
    .line 620
    .line 621
    :cond_17
    iget-object v7, v1, Landroidx/appcompat/app/f;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 622
    .line 623
    if-eqz v7, :cond_18

    .line 624
    .line 625
    const v7, 0x7f0a01a0

    .line 626
    .line 627
    .line 628
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 629
    .line 630
    .line 631
    move-result-object v12

    .line 632
    goto :goto_d

    .line 633
    :cond_18
    const/4 v12, 0x0

    .line 634
    :goto_d
    if-eqz v12, :cond_1a

    .line 635
    .line 636
    invoke-virtual {v12, v14}, Landroid/view/View;->setVisibility(I)V

    .line 637
    .line 638
    .line 639
    goto :goto_e

    .line 640
    :cond_19
    const v5, 0x7f0a019c

    .line 641
    .line 642
    .line 643
    invoke-virtual {v6, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 644
    .line 645
    .line 646
    move-result-object v5

    .line 647
    if-eqz v5, :cond_1a

    .line 648
    .line 649
    invoke-virtual {v5, v14}, Landroid/view/View;->setVisibility(I)V

    .line 650
    .line 651
    .line 652
    :cond_1a
    :goto_e
    iget-object v5, v1, Landroidx/appcompat/app/f;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 653
    .line 654
    if-eqz v5, :cond_1e

    .line 655
    .line 656
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 657
    .line 658
    .line 659
    if-eqz v4, :cond_1b

    .line 660
    .line 661
    if-nez v2, :cond_1e

    .line 662
    .line 663
    :cond_1b
    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    .line 664
    .line 665
    .line 666
    move-result v7

    .line 667
    if-eqz v2, :cond_1c

    .line 668
    .line 669
    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    .line 670
    .line 671
    .line 672
    move-result v8

    .line 673
    goto :goto_f

    .line 674
    :cond_1c
    iget v8, v5, Landroidx/appcompat/app/AlertController$RecycleListView;->a:I

    .line 675
    .line 676
    :goto_f
    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    .line 677
    .line 678
    .line 679
    move-result v10

    .line 680
    if-eqz v4, :cond_1d

    .line 681
    .line 682
    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    .line 683
    .line 684
    .line 685
    move-result v12

    .line 686
    goto :goto_10

    .line 687
    :cond_1d
    iget v12, v5, Landroidx/appcompat/app/AlertController$RecycleListView;->b:I

    .line 688
    .line 689
    :goto_10
    invoke-virtual {v5, v7, v8, v10, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 690
    .line 691
    .line 692
    :cond_1e
    if-nez v11, :cond_23

    .line 693
    .line 694
    iget-object v5, v1, Landroidx/appcompat/app/f;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 695
    .line 696
    if-eqz v5, :cond_1f

    .line 697
    .line 698
    goto :goto_11

    .line 699
    :cond_1f
    iget-object v5, v1, Landroidx/appcompat/app/f;->q:Landroidx/core/widget/NestedScrollView;

    .line 700
    .line 701
    :goto_11
    if-eqz v5, :cond_23

    .line 702
    .line 703
    if-eqz v4, :cond_20

    .line 704
    .line 705
    move v14, v9

    .line 706
    :cond_20
    or-int/2addr v2, v14

    .line 707
    const v4, 0x7f0a0153

    .line 708
    .line 709
    .line 710
    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 711
    .line 712
    .line 713
    move-result-object v4

    .line 714
    const v7, 0x7f0a0152

    .line 715
    .line 716
    .line 717
    invoke-virtual {v3, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 718
    .line 719
    .line 720
    move-result-object v3

    .line 721
    sget-object v7, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    .line 722
    .line 723
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    add-int/lit8 v7, v7, -0x17

    if-ltz v7, :cond_21

    const/4 v7, 0x3

    .line 724
    invoke-virtual {v5, v2, v7}, Landroid/view/View;->setScrollIndicators(II)V

    .line 725
    .line 726
    .line 727
    :cond_21
    if-eqz v4, :cond_22

    .line 728
    .line 729
    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 730
    .line 731
    .line 732
    :cond_22
    if-eqz v3, :cond_23

    .line 733
    .line 734
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 735
    .line 736
    .line 737
    :cond_23
    iget-object v2, v1, Landroidx/appcompat/app/f;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 738
    .line 739
    if-eqz v2, :cond_24

    .line 740
    .line 741
    iget-object v3, v1, Landroidx/appcompat/app/f;->w:Landroid/widget/ListAdapter;

    .line 742
    .line 743
    if-eqz v3, :cond_24

    .line 744
    .line 745
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 746
    .line 747
    .line 748
    iget v1, v1, Landroidx/appcompat/app/f;->x:I

    .line 749
    .line 750
    if-le v1, v13, :cond_24

    .line 751
    .line 752
    const/4 v8, 0x1

    .line 753
    invoke-virtual {v2, v1, v8}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 754
    .line 755
    .line 756
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 757
    .line 758
    .line 759
    :cond_24
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/h;->i:Landroidx/appcompat/app/f;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/appcompat/app/f;->q:Landroidx/core/widget/NestedScrollView;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p2}, Landroidx/core/widget/NestedScrollView;->i(Landroid/view/KeyEvent;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/h;->i:Landroidx/appcompat/app/f;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/appcompat/app/f;->q:Landroidx/core/widget/NestedScrollView;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p2}, Landroidx/core/widget/NestedScrollView;->i(Landroid/view/KeyEvent;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method public final onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/activity/p;->onStop()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/h;->e()Landroidx/appcompat/app/q;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroidx/appcompat/app/g0;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/appcompat/app/g0;->F()V

    .line 11
    .line 12
    .line 13
    iget-object v0, v0, Landroidx/appcompat/app/g0;->B:Landroidx/appcompat/app/p0;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    iput-boolean v1, v0, Landroidx/appcompat/app/p0;->L:Z

    .line 19
    .line 20
    iget-object v0, v0, Landroidx/appcompat/app/p0;->K:Lm/i;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0}, Lm/i;->a()V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public final setContentView(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/activity/p;->d()V

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/h;->e()Landroidx/appcompat/app/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/q;->l(I)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Landroidx/activity/p;->d()V

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/h;->e()Landroidx/appcompat/app/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/q;->m(Landroid/view/View;)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 5
    invoke-virtual {p0}, Landroidx/activity/p;->d()V

    .line 6
    invoke-virtual {p0}, Landroidx/appcompat/app/h;->e()Landroidx/appcompat/app/q;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/app/q;->n(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final setTitle(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(I)V

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/h;->e()Landroidx/appcompat/app/q;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/q;->o(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 3
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/h;->h(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/app/h;->i:Landroidx/appcompat/app/f;

    iput-object p1, v0, Landroidx/appcompat/app/f;->d:Ljava/lang/CharSequence;

    .line 5
    iget-object v0, v0, Landroidx/appcompat/app/f;->t:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
