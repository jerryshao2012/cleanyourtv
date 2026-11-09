.class public final Lcom/supertws/dubokutv/FamilySyncPanel;
.super Landroid/widget/ScrollView;
.source "FamilySyncPanel.java"


# instance fields
.field private accountLinked:Z

.field private final authHandler:Landroid/os/Handler;

.field private authLinkButton:Landroid/widget/Button;

.field private authPollSecret:Ljava/lang/String;

.field private authPolling:Z

.field private authQr:Landroid/webkit/WebView;

.field private authSessionId:Ljava/lang/String;

.field private cloudSyncToggle:Landroid/widget/LinearLayout;

.field private cloudSyncValue:Landroid/widget/TextView;

.field private currentFamily:Landroid/widget/TextView;

.field private final host:Landroid/app/Activity;

.field private lanSyncToggle:Landroid/widget/LinearLayout;

.field private lanSyncValue:Landroid/widget/TextView;

.field private linkedDisplayName:Ljava/lang/String;

.field private linkedProviders:Ljava/lang/String;

.field private linkedProvidersFamilyId:Ljava/lang/String;

.field private page:Landroid/widget/LinearLayout;

.field private screen:I

.field private status:Landroid/widget/TextView;

.field private statusMessage:Ljava/lang/String;

.field private welcomeMessage:Landroid/widget/TextView;

.field private final work:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static synthetic $r8$lambda$o2zt37ZJ7U-KCEAGH3auCDdux0c(Lcom/supertws/dubokutv/FamilySyncPanel;)V
    .registers 1

    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->pollAuth()V

    return-void
.end method

.method public static synthetic $r8$lambda$u4KPmfJHoCKHiS-rcC4UmUzSFUI(Lcom/supertws/dubokutv/FamilySyncPanel;)V
    .registers 1

    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->startAuth()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 45
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->work:Ljava/util/concurrent/ExecutorService;

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authHandler:Landroid/os/Handler;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->statusMessage:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->linkedProviders:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->linkedDisplayName:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->linkedProvidersFamilyId:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authSessionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authPollSecret:Ljava/lang/String;

    .line 46
    nop

    .line 47
    :goto_23
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_32

    instance-of v1, p1, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_32

    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_23

    .line 48
    :cond_32
    if-eqz v0, :cond_6e

    .line 49
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    .line 50
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/supertws/dubokutv/CloudSyncClient;->initialize(Landroid/content/Context;)V

    .line 51
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->setFillViewport(Z)V

    .line 52
    invoke-virtual {p0, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->setFocusable(Z)V

    .line 53
    invoke-virtual {p0, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->setFocusableInTouchMode(Z)V

    .line 54
    const/high16 v1, 0x40000

    invoke-virtual {p0, v1}, Lcom/supertws/dubokutv/FamilySyncPanel;->setDescendantFocusability(I)V

    .line 55
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/supertws/dubokutv/FamilySyncPanel;->setBackgroundColor(I)V

    .line 56
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    .line 57
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 58
    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    const/16 v0, 0x90

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1, v0, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 59
    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->addView(Landroid/view/View;)V

    .line 60
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->showHome()V

    .line 61
    return-void

    .line 48
    :cond_6e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Family panel requires an Activity context"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private actionRow(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;
    .registers 6

    .line 141
    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object p1

    .line 142
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 143
    const/16 v1, 0xc

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 144
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    new-instance v0, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda16;

    invoke-direct {v0, p2}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda16;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    return-object p1
.end method

.method private addStatus()V
    .registers 4

    .line 131
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->statusMessage:Ljava/lang/String;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/supertws/dubokutv/FamilySyncPanel;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->status:Landroid/widget/TextView;

    .line 132
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 133
    return-void
.end method

.method private busy(Ljava/lang/String;)V
    .registers 2

    .line 368
    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->setStatus(Ljava/lang/String;)V

    return-void
.end method

.method private button(Ljava/lang/String;)Landroid/widget/Button;
    .registers 6

    .line 74
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 75
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 76
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 77
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    .line 78
    const/high16 p1, 0x41800000    # 16.0f

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextSize(F)V

    .line 79
    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "family_sync_button_text"

    const-string v3, "color"

    invoke-virtual {p1, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 80
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 81
    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "family_sync_button_focus"

    const-string v3, "drawable"

    invoke-virtual {p1, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 82
    return-object v0
.end method

.method static synthetic lambda$actionRow$1(Ljava/lang/Runnable;Landroid/view/View;)V
    .registers 2

    .line 145
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic lambda$startAuth$4(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    .line 197
    :try_start_0
    invoke-static {p0, p1}, Lcom/supertws/dubokutv/FamilyAuthClient;->cancel(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_5

    :catch_4
    move-exception p0

    :goto_5
    return-void
.end method

.method static synthetic lambda$stopAuthPolling$13(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    .line 280
    :try_start_0
    invoke-static {p0, p1}, Lcom/supertws/dubokutv/FamilyAuthClient;->cancel(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_5

    :catch_4
    move-exception p0

    :goto_5
    return-void
.end method

.method static synthetic lambda$syncToggleRow$0(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Z)V
    .registers 4

    .line 104
    if-eqz p3, :cond_5

    const/high16 p2, -0x1000000

    goto :goto_6

    :cond_5
    const/4 p2, -0x1

    .line 105
    :goto_6
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 106
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    return-void
.end method

.method private pollAuth()V
    .registers 5

    .line 228
    iget-boolean v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authPolling:Z

    if-eqz v0, :cond_21

    iget v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->screen:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_21

    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authSessionId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_21

    .line 229
    :cond_12
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authSessionId:Ljava/lang/String;

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authPollSecret:Ljava/lang/String;

    .line 230
    iget-object v2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->work:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda17;

    invoke-direct {v3, p0, v0, v1}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda17;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 272
    return-void

    .line 228
    :cond_21
    :goto_21
    return-void
.end method

.method private refreshLinkedProviders()V
    .registers 5

    .line 313
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-static {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->familyId()Ljava/lang/String;

    move-result-object v0

    .line 314
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-static {v1}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/supertws/dubokutv/FamilyIdentity;->familySecret()Ljava/lang/String;

    move-result-object v1

    .line 315
    iget-object v2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->linkedProvidersFamilyId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 316
    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->linkedProvidersFamilyId:Ljava/lang/String;

    .line 317
    const-string v2, ""

    iput-object v2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->linkedProviders:Ljava/lang/String;

    .line 318
    iput-object v2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->linkedDisplayName:Ljava/lang/String;

    .line 319
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->updateWelcomeMessage()V

    .line 320
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->updateAuthLinkButton()V

    .line 322
    :cond_2a
    iget-object v2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->work:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v0, v1}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda3;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 356
    return-void
.end method

.method private rememberLinkedProvider(Ljava/lang/String;)V
    .registers 9

    .line 305
    const-string v0, "google"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "github"

    if-nez v1, :cond_11

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return-void

    .line 306
    :cond_11
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->linkedProviders:Ljava/lang/String;

    const-string v3, "Google"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v1, :cond_26

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_26

    :cond_24
    const/4 v0, 0x0

    goto :goto_27

    :cond_26
    :goto_26
    const/4 v0, 0x1

    .line 307
    :goto_27
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->linkedProviders:Ljava/lang/String;

    const-string v6, "GitHub"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_37

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_38

    :cond_37
    const/4 v4, 0x1

    .line 308
    :cond_38
    if-eqz v0, :cond_3f

    if-eqz v4, :cond_3f

    const-string v3, "Google \u548c GitHub"

    goto :goto_43

    :cond_3f
    if-eqz v0, :cond_42

    goto :goto_43

    :cond_42
    move-object v3, v6

    :goto_43
    iput-object v3, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->linkedProviders:Ljava/lang/String;

    .line 309
    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-static {p1}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/supertws/dubokutv/FamilyIdentity;->familyId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->linkedProvidersFamilyId:Ljava/lang/String;

    .line 310
    return-void
.end method

.method private resetPage()V
    .registers 2

    .line 112
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->stopAuthPolling(Z)V

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->status:Landroid/widget/TextView;

    .line 114
    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->welcomeMessage:Landroid/widget/TextView;

    .line 115
    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cloudSyncToggle:Landroid/widget/LinearLayout;

    .line 116
    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->lanSyncToggle:Landroid/widget/LinearLayout;

    .line 117
    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cloudSyncValue:Landroid/widget/TextView;

    .line 118
    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->lanSyncValue:Landroid/widget/TextView;

    .line 119
    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authLinkButton:Landroid/widget/Button;

    .line 120
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 121
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->scrollTo(II)V

    .line 122
    return-void
.end method

.method private returnFromAuth()V
    .registers 4

    .line 288
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->statusMessage:Ljava/lang/String;

    const-string v1, "\u5df2\u8fde\u63a5\u5bb6\u5ead\u540c\u6b65"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 289
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->statusMessage:Ljava/lang/String;

    const-string v2, "\u626b\u7801\u767b\u5f55\u5df2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 290
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->showHome()V

    .line 291
    if-nez v0, :cond_1c

    if-nez v1, :cond_1c

    const-string v0, "\u5df2\u9000\u51fa\u624b\u673a\u626b\u7801\u767b\u5f55\u3002"

    invoke-direct {p0, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->setStatus(Ljava/lang/String;)V

    .line 292
    :cond_1c
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authLinkButton:Landroid/widget/Button;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 293
    :cond_23
    return-void
.end method

.method private setStatus(Ljava/lang/String;)V
    .registers 3

    .line 136
    iput-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->statusMessage:Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->status:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    :cond_9
    return-void
.end method

.method private showAuth()V
    .registers 6

    .line 210
    const/4 v0, 0x6

    iput v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->screen:I

    .line 211
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->resetPage()V

    .line 212
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    const/16 v1, 0x18

    const/4 v2, 0x1

    const-string v3, "\u624b\u673a\u626b\u7801\u5173\u8054\u8d26\u53f7"

    invoke-direct {p0, v3, v1, v2}, Lcom/supertws/dubokutv/FamilySyncPanel;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 213
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    const-string v1, "\u626b\u63cf\u4e8c\u7ef4\u7801\u540e\u5728\u624b\u673a\u4e0a\u9009\u62e9 Google \u6216 GitHub\u3002\u5df2\u6709\u8d26\u53f7\u4f1a\u81ea\u52a8\u52a0\u5165\u8be5\u8d26\u53f7\u7684\u5bb6\u5ead\uff1b\u9996\u6b21\u767b\u5f55\u5c06\u5efa\u7acb\u5bb6\u5ead\u3002"

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/supertws/dubokutv/FamilySyncPanel;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 214
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authQr:Landroid/webkit/WebView;

    .line 215
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 216
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 217
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 218
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 219
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 220
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authQr:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 221
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authQr:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 222
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authQr:Landroid/webkit/WebView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/16 v4, 0x168

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->addStatus()V

    .line 224
    invoke-virtual {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->requestFocus()Z

    .line 225
    return-void
.end method

.method private showError(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 5

    .line 377
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    goto :goto_13

    :cond_f
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    .line 378
    :goto_13
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    new-instance v1, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda0;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 379
    return-void
.end method

.method private showHome()V
    .registers 7

    .line 150
    const/4 v0, 0x0

    iput v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->screen:I

    .line 151
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->resetPage()V

    .line 152
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    const-string v2, "\u5bb6\u5ead"

    const/16 v3, 0x1c

    invoke-direct {p0, v2, v3, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 153
    const-string v1, ""

    const/16 v2, 0x12

    invoke-direct {p0, v1, v2, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->welcomeMessage:Landroid/widget/TextView;

    .line 154
    iget-object v2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 155
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->updateWelcomeMessage()V

    .line 156
    new-instance v1, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda8;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V

    const-string v2, "\u5173\u8054 Google / GitHub \u8d26\u53f7\uff08\u624b\u673a\u626b\u7801\uff09"

    invoke-direct {p0, v2, v1}, Lcom/supertws/dubokutv/FamilySyncPanel;->actionRow(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authLinkButton:Landroid/widget/Button;

    .line 157
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->updateAuthLinkButton()V

    .line 158
    const-string v1, "\u4e91\u7aef\u540c\u6b65"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/supertws/dubokutv/FamilySyncPanel;->syncToggleRow(Ljava/lang/String;Z)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cloudSyncToggle:Landroid/widget/LinearLayout;

    .line 159
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 160
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 161
    const/16 v4, 0x10

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 162
    iget-object v4, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cloudSyncToggle:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda9;

    invoke-direct {v5, p0}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda9;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    const-string v4, "\u5c40\u57df\u7f51\u7edc\u540c\u6b65"

    invoke-direct {p0, v4, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->syncToggleRow(Ljava/lang/String;Z)Landroid/widget/LinearLayout;

    move-result-object v4

    iput-object v4, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->lanSyncToggle:Landroid/widget/LinearLayout;

    .line 171
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 172
    iget-object v4, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->lanSyncToggle:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda10;

    invoke-direct {v5, p0}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda10;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v4, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cloudSyncToggle:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->lanSyncToggle:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f53\u524d\u5bb6\u5ead\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-static {v2}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/supertws/dubokutv/FamilyIdentity;->familyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    invoke-direct {p0, v1, v2, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->currentFamily:Landroid/widget/TextView;

    .line 182
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 183
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->refreshLinkedProviders()V

    .line 184
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->addStatus()V

    .line 185
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->updateCloudSyncToggle()V

    .line 186
    return-void
.end method

.method private startAuth()V
    .registers 5

    .line 189
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->showAuth()V

    .line 190
    const-string v0, "\u6b63\u5728\u521b\u5efa\u624b\u673a\u626b\u7801\u767b\u5f55\u2026"

    invoke-direct {p0, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->setStatus(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-static {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->familyId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-static {v1}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/supertws/dubokutv/FamilyIdentity;->familySecret()Ljava/lang/String;

    move-result-object v1

    .line 192
    iget-object v2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->work:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0, v0, v1}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda6;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 207
    return-void
.end method

.method private stopAuthPolling(Z)V
    .registers 6

    .line 275
    iget-boolean v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authPolling:Z

    .line 276
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authPolling:Z

    .line 277
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 278
    if-eqz p1, :cond_25

    if-eqz v0, :cond_25

    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authSessionId:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_25

    .line 279
    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authSessionId:Ljava/lang/String;

    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authPollSecret:Ljava/lang/String;

    .line 280
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->work:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda11;

    invoke-direct {v3, p1, v0}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda11;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 282
    :cond_25
    const-string p1, ""

    iput-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authSessionId:Ljava/lang/String;

    .line 283
    iput-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authPollSecret:Ljava/lang/String;

    .line 284
    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authQr:Landroid/webkit/WebView;

    if-eqz p1, :cond_34

    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    iput-object v2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authQr:Landroid/webkit/WebView;

    .line 285
    :cond_34
    return-void
.end method

.method private syncToggleRow(Ljava/lang/String;Z)Landroid/widget/LinearLayout;
    .registers 10

    .line 86
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 87
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 88
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 89
    const/16 v3, 0x18

    const/16 v4, 0x14

    invoke-virtual {v0, v3, v4, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 90
    const/16 v3, 0x60

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 91
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 92
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 93
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 94
    iget-object v3, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "family_sync_button_focus"

    const-string v6, "drawable"

    invoke-virtual {v3, v5, v6, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 96
    invoke-direct {p0, p1, v2, v1}, Lcom/supertws/dubokutv/FamilySyncPanel;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object p1

    .line 97
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 98
    const-string v3, ""

    invoke-direct {p0, v3, v2, v1}, Lcom/supertws/dubokutv/FamilySyncPanel;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v2

    .line 99
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 100
    if-eqz p2, :cond_52

    iput-object v2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cloudSyncValue:Landroid/widget/TextView;

    goto :goto_54

    :cond_52
    iput-object v2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->lanSyncValue:Landroid/widget/TextView;

    .line 101
    :goto_54
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, -0x2

    invoke-direct {p2, v1, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    new-instance p2, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda4;

    invoke-direct {p2, p1, v2}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda4;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 108
    return-object v0
.end method

.method private text(Ljava/lang/String;IZ)Landroid/widget/TextView;
    .registers 6

    .line 64
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 65
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    const/4 p1, -0x1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    int-to-float p1, p2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 68
    const/4 p1, 0x0

    const/16 p2, 0x8

    invoke-virtual {v0, p1, p2, p1, p2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 69
    if-eqz p3, :cond_20

    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 70
    :cond_20
    return-object v0
.end method

.method private updateAuthLinkButton()V
    .registers 4

    .line 296
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authLinkButton:Landroid/widget/Button;

    if-nez v0, :cond_5

    return-void

    .line 297
    :cond_5
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->linkedProviders:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "\u5173\u8054 Google / GitHub \u8d26\u53f7\uff08\u624b\u673a\u626b\u7801\uff09"

    goto :goto_12

    :cond_10
    const-string v0, "\u7ee7\u7eed\u4f7f\u7528 Google / GitHub \u6dfb\u52a0\u7535\u89c6"

    .line 298
    :goto_12
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authLinkButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authLinkButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSingleLine(Z)V

    .line 300
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authLinkButton:Landroid/widget/Button;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 301
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authLinkButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 302
    return-void
.end method

.method private updateCloudSyncToggle()V
    .registers 6

    .line 382
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-static {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v0

    .line 383
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cloudSyncValue:Landroid/widget/TextView;

    const-string v2, "\u5df2\u5f00\u542f"

    const-string v3, "\u5df2\u5173\u95ed"

    if-eqz v1, :cond_1a

    invoke-virtual {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->isCloudSyncEnabled()Z

    move-result v4

    if-eqz v4, :cond_16

    move-object v4, v2

    goto :goto_17

    :cond_16
    move-object v4, v3

    :goto_17
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    :cond_1a
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->lanSyncValue:Landroid/widget/TextView;

    if-eqz v1, :cond_29

    invoke-virtual {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->isLanSyncEnabled()Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_26

    :cond_25
    move-object v2, v3

    :goto_26
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    :cond_29
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cloudSyncToggle:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_32

    iget-boolean v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->accountLinked:Z

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 386
    :cond_32
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->lanSyncToggle:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3b

    iget-boolean v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->accountLinked:Z

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 387
    :cond_3b
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authLinkButton:Landroid/widget/Button;

    if-eqz v0, :cond_43

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 388
    :cond_43
    return-void
.end method

.method private updateWelcomeMessage()V
    .registers 4

    .line 391
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->welcomeMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_2d

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->linkedDisplayName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, ""

    goto :goto_2a

    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6b22\u8fce\uff0c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->linkedDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\uff01"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2a
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    :cond_2d
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4

    .line 359
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_22

    .line 360
    iget v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->screen:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_16

    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->returnFromAuth()V

    goto :goto_1b

    .line 361
    :cond_16
    if-eqz v0, :cond_1d

    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->showHome()V

    .line 363
    :goto_1b
    const/4 p1, 0x1

    return p1

    .line 362
    :cond_1d
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 365
    :cond_22
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method synthetic lambda$pollAuth$10$com-supertws-dubokutv-FamilySyncPanel(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 12

    .line 235
    iget-boolean v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authPolling:Z

    if-eqz v0, :cond_af

    iget v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->screen:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_af

    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authSessionId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_af

    .line 236
    :cond_13
    const-string v0, "linked"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_58

    .line 237
    iput-boolean v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authPolling:Z

    .line 238
    iget-object v2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authQr:Landroid/webkit/WebView;

    if-eqz v2, :cond_2d

    const/4 v3, 0x0

    const-string v4, "<html><body style=\'font:24px sans-serif;text-align:center;padding:4em\'>\u8d26\u53f7\u5df2\u5173\u8054</body></html>"

    const-string v5, "text/html"

    const-string v6, "UTF-8"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_2d
    const-string p2, "provider"

    invoke-virtual {p3, p2, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 240
    const-string p2, "displayName"

    const-string v0, ""

    invoke-virtual {p3, p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 241
    const-string p2, "familyTicket"

    invoke-virtual {p3, p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 242
    const-string p2, "\u6b63\u5728\u8fde\u63a5\u8be5\u8d26\u53f7\u7684\u5bb6\u5ead\u2026"

    invoke-direct {p0, p2}, Lcom/supertws/dubokutv/FamilySyncPanel;->busy(Ljava/lang/String;)V

    .line 243
    iget-object p2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->work:Ljava/util/concurrent/ExecutorService;

    new-instance p3, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda18;

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda18;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 262
    goto :goto_ae

    :cond_58
    const-string p1, "expired"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_76

    const-string p3, "cancelled"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_69

    goto :goto_76

    .line 266
    :cond_69
    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authHandler:Landroid/os/Handler;

    new-instance p2, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda12;

    invoke-direct {p2, p0}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda12;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_ae

    .line 263
    :cond_76
    :goto_76
    iput-boolean v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authPolling:Z

    .line 264
    iget-object v2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authQr:Landroid/webkit/WebView;

    if-eqz v2, :cond_87

    const/4 v3, 0x0

    const-string v4, "<html><body style=\'font:24px sans-serif;text-align:center;padding:4em\'>\u6b64\u767b\u5f55\u7801\u5df2\u5931\u6548</body></html>"

    const-string v5, "text/html"

    const-string v6, "UTF-8"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :cond_87
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u626b\u7801\u767b\u5f55\u5df2"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9b

    const-string p1, "\u8fc7\u671f"

    goto :goto_9d

    :cond_9b
    const-string p1, "\u53d6\u6d88"

    :goto_9d
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\uff0c\u8bf7\u8fd4\u56de\u540e\u91cd\u65b0\u5f00\u59cb\u3002"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->busy(Ljava/lang/String;)V

    .line 267
    :goto_ae
    return-void

    .line 235
    :cond_af
    :goto_af
    return-void
.end method

.method synthetic lambda$pollAuth$11$com-supertws-dubokutv-FamilySyncPanel()V
    .registers 5

    .line 269
    iget-boolean v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authPolling:Z

    if-eqz v0, :cond_15

    iget v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->screen:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authHandler:Landroid/os/Handler;

    new-instance v1, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda12;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_15
    return-void
.end method

.method synthetic lambda$pollAuth$12$com-supertws-dubokutv-FamilySyncPanel(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 232
    :try_start_0
    invoke-static {p1, p2}, Lcom/supertws/dubokutv/FamilyAuthClient;->status(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 233
    const-string v0, "status"

    const-string v1, "pending"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    new-instance v2, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda13;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    .line 270
    goto :goto_22

    .line 268
    :catch_17
    move-exception p1

    .line 269
    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    new-instance p2, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda14;

    invoke-direct {p2, p0}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda14;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 271
    :goto_22
    return-void
.end method

.method synthetic lambda$pollAuth$7$com-supertws-dubokutv-FamilySyncPanel(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 252
    iget v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->screen:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_6

    return-void

    .line 253
    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->accountLinked:Z

    .line 254
    iput-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->linkedDisplayName:Ljava/lang/String;

    .line 255
    invoke-direct {p0, p2}, Lcom/supertws/dubokutv/FamilySyncPanel;->rememberLinkedProvider(Ljava/lang/String;)V

    .line 256
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->updateWelcomeMessage()V

    .line 257
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->updateCloudSyncToggle()V

    .line 258
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    const-string p1, ""

    goto :goto_3b

    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6b22\u8fce\uff0c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\uff01"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_3b
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\u5df2\u8fde\u63a5\u5bb6\u5ead\u540c\u6b65\u3002\u6309\u8fd4\u56de\u56de\u5230\u5bb6\u5ead\u8bbe\u7f6e\u3002"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->busy(Ljava/lang/String;)V

    .line 259
    return-void
.end method

.method synthetic lambda$pollAuth$8$com-supertws-dubokutv-FamilySyncPanel(Ljava/lang/Exception;)V
    .registers 3

    .line 260
    const-string v0, "\u8fde\u63a5\u5bb6\u5ead"

    invoke-direct {p0, v0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->showError(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method synthetic lambda$pollAuth$9$com-supertws-dubokutv-FamilySyncPanel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 245
    :try_start_0
    invoke-static {p1, p2}, Lcom/supertws/dubokutv/FamilyAuthClient;->claimFamily(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 246
    iget-object p2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-static {p2}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object p2

    const-string v0, "familyId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "familySecret"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/supertws/dubokutv/FamilyIdentity;->adoptSignedInFamily(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-static {p1}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object p1

    .line 248
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/supertws/dubokutv/FamilyIdentity;->setCloudSyncEnabled(Z)V

    .line 249
    invoke-virtual {p1, p2}, Lcom/supertws/dubokutv/FamilyIdentity;->setLanSyncEnabled(Z)V

    .line 250
    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/supertws/dubokutv/CloudSyncClient;->fetchOnHistory(Landroid/content/Context;)V

    .line 251
    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    new-instance p2, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p3, p4}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda1;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3a

    .line 260
    goto :goto_45

    :catch_3a
    move-exception p1

    iget-object p2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    new-instance p3, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda2;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;Ljava/lang/Exception;)V

    invoke-virtual {p2, p3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 261
    :goto_45
    return-void
.end method

.method synthetic lambda$refreshLinkedProviders$14$com-supertws-dubokutv-FamilySyncPanel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 344
    iget v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->screen:I

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-static {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->familyId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 345
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->accountLinked:Z

    .line 346
    if-eqz p1, :cond_2d

    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-static {p1}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object p1

    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/supertws/dubokutv/FamilyIdentity;->enableSyncDefaultsIfUnset(Landroid/content/Context;)V

    .line 347
    :cond_2d
    iput-object p2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->linkedProviders:Ljava/lang/String;

    .line 348
    iput-object p3, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->linkedDisplayName:Ljava/lang/String;

    .line 349
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->updateWelcomeMessage()V

    .line 350
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->updateAuthLinkButton()V

    .line 351
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->updateCloudSyncToggle()V

    .line 353
    :cond_3a
    return-void
.end method

.method synthetic lambda$refreshLinkedProviders$15$com-supertws-dubokutv-FamilySyncPanel(Ljava/lang/String;Ljava/lang/String;)V
    .registers 15

    .line 324
    :try_start_0
    invoke-static {p1, p2}, Lcom/supertws/dubokutv/FamilyAuthClient;->accounts(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 325
    const-string v0, "accounts"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v1, "providers"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_89

    .line 326
    nop

    .line 327
    nop

    .line 328
    const-string v1, "github"

    const-string v2, "google"

    const/4 v3, 0x0

    const-string v4, ""

    if-eqz v0, :cond_4f

    move-object v8, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1f
    :try_start_1f
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v5, v9, :cond_52

    .line 329
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 330
    if-nez v9, :cond_2c

    goto :goto_4c

    .line 331
    :cond_2c
    const-string v10, "provider"

    invoke-virtual {v9, v10, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 332
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v6, v11

    .line 333
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v7, v10

    .line 334
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_4c

    const-string v8, "displayName"

    invoke-virtual {v9, v8, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 328
    :cond_4c
    :goto_4c
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    :cond_4f
    move-object v8, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 336
    :cond_52
    if-nez v0, :cond_6d

    if-eqz p2, :cond_6d

    :goto_56
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v3, v0, :cond_6d

    .line 337
    invoke-virtual {p2, v3, v4}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 338
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v6, v5

    .line 339
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr v7, v0

    .line 336
    add-int/lit8 v3, v3, 0x1

    goto :goto_56

    .line 341
    :cond_6d
    if-eqz v6, :cond_74

    if-eqz v7, :cond_74

    const-string v4, "Google \u548c GitHub"

    goto :goto_7d

    :cond_74
    if-eqz v6, :cond_79

    const-string v4, "Google"

    goto :goto_7d

    :cond_79
    if-eqz v7, :cond_7d

    const-string v4, "GitHub"

    .line 342
    :cond_7d
    :goto_7d
    nop

    .line 343
    iget-object p2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    new-instance v0, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p1, v4, v8}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda15;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_88} :catch_89

    goto :goto_8a

    .line 354
    :catch_89
    move-exception p1

    :goto_8a
    nop

    .line 355
    return-void
.end method

.method synthetic lambda$showError$16$com-supertws-dubokutv-FamilySyncPanel(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\u5931\u8d25\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\u3002\u68c0\u67e5\u7f51\u7edc\u548c Worker \u90e8\u7f72\u72b6\u6001\u540e\u91cd\u8bd5\u3002"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->busy(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$showHome$2$com-supertws-dubokutv-FamilySyncPanel(Landroid/view/View;)V
    .registers 3

    .line 163
    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-static {p1}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object p1

    .line 164
    invoke-virtual {p1}, Lcom/supertws/dubokutv/FamilyIdentity;->isCloudSyncEnabled()Z

    move-result v0

    .line 165
    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/supertws/dubokutv/FamilyIdentity;->setCloudSyncEnabled(Z)V

    .line 166
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->updateCloudSyncToggle()V

    .line 167
    if-eqz v0, :cond_1d

    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/supertws/dubokutv/CloudSyncClient;->fetchOnHistory(Landroid/content/Context;)V

    .line 168
    :cond_1d
    if-eqz v0, :cond_22

    const-string p1, "\u5df2\u5f00\u542f\u5bb6\u5ead\u4e91\u7aef\u540c\u6b65"

    goto :goto_24

    :cond_22
    const-string p1, "\u5df2\u5173\u95ed\u4e91\u7aef\u540c\u6b65\uff08\u4ec5\u4fdd\u7559\u5c40\u57df\u7f51\u540c\u6b65\uff09"

    :goto_24
    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->setStatus(Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method synthetic lambda$showHome$3$com-supertws-dubokutv-FamilySyncPanel(Landroid/view/View;)V
    .registers 3

    .line 173
    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-static {p1}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object p1

    .line 174
    invoke-virtual {p1}, Lcom/supertws/dubokutv/FamilyIdentity;->isLanSyncEnabled()Z

    move-result v0

    .line 175
    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/supertws/dubokutv/FamilyIdentity;->setLanSyncEnabled(Z)V

    .line 176
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->updateCloudSyncToggle()V

    .line 177
    if-eqz v0, :cond_17

    const-string p1, "\u5df2\u5f00\u542f\u5c40\u57df\u7f51\u7edc\u540c\u6b65"

    goto :goto_19

    :cond_17
    const-string p1, "\u5df2\u5173\u95ed\u5c40\u57df\u7f51\u7edc\u540c\u6b65\uff08\u4ec5\u4f5c\u4e3a\u672c\u5730\u64ad\u653e\u5668\uff09"

    :goto_19
    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->setStatus(Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method synthetic lambda$startAuth$5$com-supertws-dubokutv-FamilySyncPanel(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 197
    iget v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->screen:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_10

    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->work:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1, p2}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 198
    :cond_10
    iput-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authSessionId:Ljava/lang/String;

    iput-object p2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authPollSecret:Ljava/lang/String;

    .line 199
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<!doctype html><html><meta name=viewport content=\'width=device-width,initial-scale=1\'><body style=\'margin:0;background:#fff;text-align:center;font:16px sans-serif\'><img alt=\'Scan with your phone to link Google or GitHub\' style=\'display:block;width:180px;height:180px;margin:auto\' src=\'/auth/qr/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ".svg\'></body></html>"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 200
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authQr:Landroid/webkit/WebView;

    const-string v1, "https://cleantv-r2-sync.jerry-shao.workers.dev/"

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authPolling:Z

    .line 202
    const-string p1, "\u8bf7\u7528\u624b\u673a\u626b\u63cf\u4e8c\u7ef4\u7801\u5e76\u5b8c\u6210\u767b\u5f55\uff1b\u6b64\u7801\u4e94\u5206\u949f\u540e\u5931\u6548\u3002"

    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->busy(Ljava/lang/String;)V

    .line 203
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->pollAuth()V

    .line 204
    return-void
.end method

.method synthetic lambda$startAuth$6$com-supertws-dubokutv-FamilySyncPanel(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 194
    :try_start_0
    invoke-static {p1, p2}, Lcom/supertws/dubokutv/FamilyAuthClient;->create(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 195
    const-string p2, "sessionId"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "pollSecret"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 196
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    new-instance v1, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p2, p1}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda5;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 205
    goto :goto_21

    :catch_1b
    move-exception p1

    const-string p2, "\u521b\u5efa\u626b\u7801\u767b\u5f55"

    invoke-direct {p0, p2, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->showError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 206
    :goto_21
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 371
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->stopAuthPolling(Z)V

    .line 372
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->work:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 373
    invoke-super {p0}, Landroid/widget/ScrollView;->onDetachedFromWindow()V

    .line 374
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 5

    .line 125
    iget v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->screen:I

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authLinkButton:Landroid/widget/Button;

    if-eqz v0, :cond_13

    .line 126
    iget-boolean v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->accountLinked:Z

    if-eqz v1, :cond_e

    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cloudSyncToggle:Landroid/widget/LinearLayout;

    :cond_e
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1

    .line 127
    :cond_13
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method
