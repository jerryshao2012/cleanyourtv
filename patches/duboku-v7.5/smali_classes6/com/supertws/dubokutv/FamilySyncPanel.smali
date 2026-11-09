.class public final Lcom/supertws/dubokutv/FamilySyncPanel;
.super Landroid/widget/ScrollView;
.source "FamilySyncPanel.java"


# instance fields
.field private final authHandler:Landroid/os/Handler;

.field private authLinkButton:Landroid/widget/Button;

.field private authPollSecret:Ljava/lang/String;

.field private authPolling:Z

.field private authQr:Landroid/webkit/WebView;

.field private authSessionId:Ljava/lang/String;

.field private cleanup:Landroid/widget/Button;

.field private cleanupReady:Z

.field private cloudSyncToggle:Landroid/widget/LinearLayout;

.field private cloudSyncValue:Landroid/widget/TextView;

.field private codeDisplay:Landroid/widget/TextView;

.field private copiedCodes:Ljava/lang/String;

.field private currentFamily:Landroid/widget/TextView;

.field private generatedCode:Ljava/lang/String;

.field private final host:Landroid/app/Activity;

.field private familyHeader:Landroid/widget/TextView;

.field private joinCode:Landroid/widget/EditText;

.field private joinCodeValue:Ljava/lang/String;

.field private lanSyncToggle:Landroid/widget/LinearLayout;

.field private lanSyncValue:Landroid/widget/TextView;

.field private linkedDisplayName:Ljava/lang/String;

.field private linkedProviders:Ljava/lang/String;

.field private linkedProvidersFamilyId:Ljava/lang/String;

.field private mergeCopy:Landroid/widget/Button;

.field private mergePreview:Landroid/widget/Button;

.field private page:Landroid/widget/LinearLayout;

.field private previewed:Z

.field private previewedCodes:Ljava/lang/String;

.field private screen:I

.field private sourceCodeValue:Ljava/lang/String;

.field private sourceCodes:Landroid/widget/EditText;

.field private status:Landroid/widget/TextView;

.field private statusMessage:Ljava/lang/String;

.field private final work:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static synthetic $r8$lambda$3_kAalukMjsHk4xS10fRVZO5FU0(Lcom/supertws/dubokutv/FamilySyncPanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->issueCode()V

    return-void
.end method

.method public static synthetic $r8$lambda$5gCY-qO3RyDbdEcU11w9Nw--iiw(Lcom/supertws/dubokutv/FamilySyncPanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->showJoin()V

    return-void
.end method

.method public static synthetic $r8$lambda$8weXfa96tAX_g-oEftmhElhbAkQ(Lcom/supertws/dubokutv/FamilySyncPanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->copyMerge()V

    return-void
.end method

.method public static synthetic $r8$lambda$CxZ6gj2BP60MCj9n7tQY1xf5fYw(Lcom/supertws/dubokutv/FamilySyncPanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->joinFamily()V

    return-void
.end method

.method public static synthetic $r8$lambda$FYeh0lKQg3XOCqNee8q6i1w5m8A(Lcom/supertws/dubokutv/FamilySyncPanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->showCode()V

    return-void
.end method

.method public static synthetic $r8$lambda$O-6Z1P9NBL0OkfMIe4_Vr0fRS8g(Lcom/supertws/dubokutv/FamilySyncPanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->startAuth()V

    return-void
.end method

.method public static synthetic $r8$lambda$RJ6kSfOf_INrRxy3anD9kJjzu0k(Lcom/supertws/dubokutv/FamilySyncPanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->showMerge()V

    return-void
.end method

.method public static synthetic $r8$lambda$_LHjD1-EQPdsS32Rb8va70t8-V4(Lcom/supertws/dubokutv/FamilySyncPanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->pollAuth()V

    return-void
.end method

.method public static synthetic $r8$lambda$aRlf9JsE3gXIgib5x6mC5YTJT2Q(Lcom/supertws/dubokutv/FamilySyncPanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->previewMerge()V

    return-void
.end method

.method public static synthetic $r8$lambda$bCQctg0XlpJt-PCl6h0p2pp-VW0(Lcom/supertws/dubokutv/FamilySyncPanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->returnFromAuth()V

    return-void
.end method

.method public static synthetic $r8$lambda$fuaYR48iBCTthjPTAPNUO2s3wFw(Lcom/supertws/dubokutv/FamilySyncPanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->confirmCleanup()V

    return-void
.end method

.method public static synthetic $r8$lambda$mnnbWqzruy56lbxtPhIdxXYGkX4(Lcom/supertws/dubokutv/FamilySyncPanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->cleanUp()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 52
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->work:Ljava/util/concurrent/ExecutorService;

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authHandler:Landroid/os/Handler;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->previewedCodes:Ljava/lang/String;

    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->copiedCodes:Ljava/lang/String;

    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->joinCodeValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->sourceCodeValue:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->generatedCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->statusMessage:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->linkedProviders:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->linkedDisplayName:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->linkedProvidersFamilyId:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authSessionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authPollSecret:Ljava/lang/String;

    .line 53
    nop

    .line 54
    :goto_0
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_0

    instance-of v1, p1, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_0

    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    .line 55
    :cond_0
    if-eqz v0, :cond_1

    .line 56
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    .line 57
    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/supertws/dubokutv/CloudSyncClient;->initialize(Landroid/content/Context;)V

    .line 58
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->setFillViewport(Z)V

    .line 59
    invoke-virtual {p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->setFocusable(Z)V

    .line 60
    invoke-virtual {p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->setFocusableInTouchMode(Z)V

    .line 61
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->setDescendantFocusability(I)V

    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->setBackgroundColor(I)V

    .line 63
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    .line 64
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 65
    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    const/16 v0, 0x90

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1, v0, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 66
    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->addView(Landroid/view/View;)V

    .line 67
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->showHome()V

    .line 68
    return-void

    .line 55
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Family panel requires an Activity context"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$002(Lcom/supertws/dubokutv/FamilySyncPanel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->joinCodeValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/supertws/dubokutv/FamilySyncPanel;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->sourceCodeValue:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/supertws/dubokutv/FamilySyncPanel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->sourceCodeValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/supertws/dubokutv/FamilySyncPanel;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->previewedCodes:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/supertws/dubokutv/FamilySyncPanel;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cleanupReady:Z

    return p1
.end method

.method static synthetic access$400(Lcom/supertws/dubokutv/FamilySyncPanel;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->updateMergeControls()V

    return-void
.end method

.method private actionRow(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;
    .locals 3

    .line 166
    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object p1

    .line 167
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 168
    const/16 v1, 0xc

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 169
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    new-instance v0, Lcom/supertws/dubokutv/FamilySyncPanel$29;

    invoke-direct {v0, p2}, Lcom/supertws/dubokutv/FamilySyncPanel$29;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    return-object p1
.end method

.method private addStatus()V
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->statusMessage:Ljava/lang/String;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/supertws/dubokutv/FamilySyncPanel;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->status:Landroid/widget/TextView;

    .line 157
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->status:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 158
    return-void
.end method

.method private busy(Ljava/lang/String;)V
    .locals 0

    .line 466
    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->setStatus(Ljava/lang/String;)V

    return-void
.end method

.method private button(Ljava/lang/String;)Landroid/widget/Button;
    .locals 4

    .line 81
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 82
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 83
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 84
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    .line 85
    const/high16 p1, 0x41800000    # 16.0f

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextSize(F)V

    .line 86
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

    .line 87
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 88
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

    .line 89
    return-object v0
.end method

.method private cleanUp()V
    .locals 3

    .line 551
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->codes()Lorg/json/JSONArray;

    move-result-object v0

    .line 552
    const-string v1, "\u6b63\u5728\u6e05\u7406\u65e7\u5bb6\u5ead\u4e91\u7aef\u5feb\u7167\u2026"

    invoke-direct {p0, v1}, Lcom/supertws/dubokutv/FamilySyncPanel;->busy(Ljava/lang/String;)V

    .line 553
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->work:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/supertws/dubokutv/FamilySyncPanel$19;

    invoke-direct {v2, p0, v0}, Lcom/supertws/dubokutv/FamilySyncPanel$19;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;Lorg/json/JSONArray;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 568
    return-void
.end method

.method private codes()Lorg/json/JSONArray;
    .locals 6

    .line 460
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 461
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->sourceCodeValue:Ljava/lang/String;

    const-string v2, "[,\\n\\r]+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 462
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 461
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 463
    :cond_1
    return-object v0
.end method

.method private confirmCleanup()V
    .locals 2

    .line 544
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->copiedCodes:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->copiedCodes:Ljava/lang/String;

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->sourceCodeValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 547
    :cond_0
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->showCleanupConfirm()V

    .line 548
    return-void

    .line 545
    :cond_1
    :goto_0
    const-string v0, "\u52a0\u5165\u7801\u4e0e\u4e0a\u6b21\u590d\u5236\u4e0d\u4e00\u81f4\uff0c\u8bf7\u91cd\u65b0\u9884\u89c8\u5e76\u590d\u5236\u3002"

    invoke-direct {p0, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->busy(Ljava/lang/String;)V

    return-void
.end method

.method private copyMerge()V
    .locals 4

    .line 521
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->codes()Lorg/json/JSONArray;

    move-result-object v0

    .line 522
    iget-boolean v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->previewed:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->previewedCodes:Ljava/lang/String;

    iget-object v2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->sourceCodeValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 525
    :cond_0
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->sourceCodeValue:Ljava/lang/String;

    .line 526
    const-string v2, "\u6b63\u5728\u590d\u5236\u5408\u5e76\u5feb\u7167\u2026"

    invoke-direct {p0, v2}, Lcom/supertws/dubokutv/FamilySyncPanel;->busy(Ljava/lang/String;)V

    .line 527
    iget-object v2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->work:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/supertws/dubokutv/FamilySyncPanel$33;

    invoke-direct {v3, p0, v0, v1}, Lcom/supertws/dubokutv/FamilySyncPanel$33;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;Lorg/json/JSONArray;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 541
    return-void

    .line 523
    :cond_1
    :goto_0
    const-string v0, "\u8bf7\u5148\u9884\u89c8\u5f53\u524d\u8f93\u5165\u7684\u65e7\u5bb6\u5ead\u52a0\u5165\u7801\u3002"

    invoke-direct {p0, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->busy(Ljava/lang/String;)V

    return-void
.end method

.method private input(Ljava/lang/String;Z)Landroid/widget/EditText;
    .locals 2

    .line 119
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 120
    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 121
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 122
    const/4 p1, -0x1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 123
    const p1, -0x333334

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 124
    const/high16 p1, 0x41800000    # 16.0f

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 125
    if-eqz p2, :cond_0

    .line 126
    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setMinLines(I)V

    .line 127
    const p1, 0x800033

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setGravity(I)V

    .line 129
    :cond_0
    return-object v0
.end method

.method private issueCode()V
    .locals 2

    .line 469
    const-string v0, "\u6b63\u5728\u8fde\u63a5\u5bb6\u5ead\u4e91\u7aef\u2026"

    invoke-direct {p0, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->busy(Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->work:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/supertws/dubokutv/FamilySyncPanel$11;

    invoke-direct {v1, p0}, Lcom/supertws/dubokutv/FamilySyncPanel$11;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 480
    return-void
.end method

.method private joinFamily()V
    .locals 3

    .line 483
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->joinCodeValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 484
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "\u8bf7\u5148\u8f93\u5165\u52a0\u5165\u7801\u3002"

    invoke-direct {p0, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->busy(Ljava/lang/String;)V

    return-void

    .line 485
    :cond_0
    const-string v1, "\u6b63\u5728\u9a8c\u8bc1\u52a0\u5165\u7801\u5e76\u8bfb\u53d6\u8bbe\u5907\u5217\u8868\u2026"

    invoke-direct {p0, v1}, Lcom/supertws/dubokutv/FamilySyncPanel;->busy(Ljava/lang/String;)V

    .line 486
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->work:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/supertws/dubokutv/FamilySyncPanel$0;

    invoke-direct {v2, p0, v0}, Lcom/supertws/dubokutv/FamilySyncPanel$0;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 497
    return-void
.end method

.method static synthetic lambda$actionRow$1(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 170
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic lambda$startAuth$5(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 309
    :try_start_0
    invoke-static {p0, p1}, Lcom/supertws/dubokutv/FamilyAuthClient;->cancel(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    :goto_0
    return-void
.end method

.method static synthetic lambda$stopAuthPolling$11(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 372
    :try_start_0
    invoke-static {p0, p1}, Lcom/supertws/dubokutv/FamilyAuthClient;->cancel(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    :goto_0
    return-void
.end method

.method static synthetic lambda$syncToggleRow$0(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Z)V
    .locals 0

    .line 111
    if-eqz p3, :cond_0

    const/high16 p2, -0x1000000

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    .line 112
    :goto_0
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 114
    return-void
.end method

.method private pollAuth()V
    .locals 4

    .line 339
    iget-boolean v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authPolling:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->screen:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authSessionId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authSessionId:Ljava/lang/String;

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authPollSecret:Ljava/lang/String;

    .line 341
    iget-object v2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->work:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/supertws/dubokutv/FamilySyncPanel$25;

    invoke-direct {v3, p0, v0, v1}, Lcom/supertws/dubokutv/FamilySyncPanel$25;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 364
    return-void

    .line 339
    :cond_1
    :goto_0
    return-void
.end method

.method private previewMerge()V
    .locals 4

    .line 500
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->codes()Lorg/json/JSONArray;

    move-result-object v0

    .line 501
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "\u8bf7\u8f93\u5165\u81f3\u5c11\u4e00\u4e2a\u65e7\u5bb6\u5ead\u52a0\u5165\u7801\u3002"

    invoke-direct {p0, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->busy(Ljava/lang/String;)V

    return-void

    .line 502
    :cond_0
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->sourceCodeValue:Ljava/lang/String;

    .line 503
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cleanupReady:Z

    .line 504
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->updateCloudSyncToggle()V

    .line 505
    const-string v2, "\u6b63\u5728\u8bfb\u53d6\u65e7\u5bb6\u5ead\u5feb\u7167\u2026"

    invoke-direct {p0, v2}, Lcom/supertws/dubokutv/FamilySyncPanel;->busy(Ljava/lang/String;)V

    .line 506
    iget-object v2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->work:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/supertws/dubokutv/FamilySyncPanel$34;

    invoke-direct {v3, p0, v0, v1}, Lcom/supertws/dubokutv/FamilySyncPanel$34;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;Lorg/json/JSONArray;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 518
    return-void
.end method

.method private refreshLinkedProviders()V
    .locals 4

    .line 405
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-static {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->isCloudSyncEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-static {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->familyId()Ljava/lang/String;

    move-result-object v0

    .line 407
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-static {v1}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/supertws/dubokutv/FamilyIdentity;->familySecret()Ljava/lang/String;

    move-result-object v1

    .line 408
    iget-object v2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->linkedProvidersFamilyId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 409
    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->linkedProvidersFamilyId:Ljava/lang/String;

    .line 410
    const-string v2, ""

    iput-object v2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->linkedProviders:Ljava/lang/String;

    .line 411
    iput-object v2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->linkedDisplayName:Ljava/lang/String;

    .line 412
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->updateAuthLinkButton()V

    .line 414
    :cond_1
    iget-object v2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->work:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/supertws/dubokutv/FamilySyncPanel$24;

    invoke-direct {v3, p0, v0, v1}, Lcom/supertws/dubokutv/FamilySyncPanel$24;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 445
    return-void
.end method

.method private rememberLinkedProvider(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 396
    const-string v0, "google"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "github"

    if-nez v1, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 397
    :cond_0
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->linkedProviders:Ljava/lang/String;

    const-string v3, "Google"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v1, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 398
    :goto_1
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->linkedProviders:Ljava/lang/String;

    const-string v6, "GitHub"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const/4 v4, 0x1

    .line 399
    :cond_4
    if-eqz v0, :cond_5

    if-eqz v4, :cond_5

    const-string v3, "Google \u548c GitHub"

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    move-object v3, v6

    :goto_2
    iput-object v3, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->linkedProviders:Ljava/lang/String;

    .line 400
    iput-object p2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->linkedDisplayName:Ljava/lang/String;

    .line 401
    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-static {p1}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/supertws/dubokutv/FamilyIdentity;->familyId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->linkedProvidersFamilyId:Ljava/lang/String;

    .line 402
    return-void
.end method

.method private resetPage()V
    .locals 1

    .line 133
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->stopAuthPolling(Z)V

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->status:Landroid/widget/TextView;

    .line 135
    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cleanup:Landroid/widget/Button;

    .line 136
    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cloudSyncToggle:Landroid/widget/LinearLayout;

    .line 137
    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->lanSyncToggle:Landroid/widget/LinearLayout;

    .line 138
    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cloudSyncValue:Landroid/widget/TextView;

    .line 139
    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->lanSyncValue:Landroid/widget/TextView;

    .line 140
    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->joinCode:Landroid/widget/EditText;

    .line 141
    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->sourceCodes:Landroid/widget/EditText;

    .line 142
    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->mergePreview:Landroid/widget/Button;

    .line 143
    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->mergeCopy:Landroid/widget/Button;

    .line 144
    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authLinkButton:Landroid/widget/Button;

    .line 145
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 146
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->scrollTo(II)V

    .line 147
    return-void
.end method

.method private returnFromAuth()V
    .locals 3

    .line 380
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->statusMessage:Ljava/lang/String;

    const-string v1, "\u5173\u8054\u5f53\u524d\u5bb6\u5ead"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 381
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->statusMessage:Ljava/lang/String;

    const-string v2, "\u626b\u7801\u767b\u5f55\u5df2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 382
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->showHome()V

    .line 383
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    const-string v0, "\u5df2\u9000\u51fa\u624b\u673a\u626b\u7801\u767b\u5f55\u3002"

    invoke-direct {p0, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->setStatus(Ljava/lang/String;)V

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authLinkButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authLinkButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 385
    :cond_1
    return-void
.end method

.method private setStatus(Ljava/lang/String;)V
    .locals 1

    .line 161
    iput-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->statusMessage:Ljava/lang/String;

    .line 162
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->status:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->status:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    :cond_0
    return-void
.end method

.method private showAuth()V
    .locals 5

    .line 322
    const/4 v0, 0x6

    iput v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->screen:I

    .line 323
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->resetPage()V

    .line 324
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    const/16 v1, 0x18

    const/4 v2, 0x1

    const-string v3, "\u624b\u673a\u626b\u7801\u5173\u8054\u8d26\u53f7"

    invoke-direct {p0, v3, v1, v2}, Lcom/supertws/dubokutv/FamilySyncPanel;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 325
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    const-string v1, "\u626b\u63cf\u4e8c\u7ef4\u7801\u540e\u5728\u624b\u673a\u4e0a\u9009\u62e9 Google \u6216 GitHub\u3002\u6210\u529f\u540e\u8d26\u53f7\u4f1a\u5173\u8054\u5230\u5f53\u524d\u5bb6\u5ead\u3002"

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/supertws/dubokutv/FamilySyncPanel;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 326
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authQr:Landroid/webkit/WebView;

    .line 327
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authQr:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 328
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 329
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 330
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 331
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authQr:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setFocusable(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 332
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authQr:Landroid/webkit/WebView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/16 v4, 0x168

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 334
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->addStatus()V

    invoke-virtual {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->requestFocus()Z

    .line 336
    return-void
.end method

.method private showCleanupConfirm()V
    .locals 5

    .line 289
    const/4 v0, 0x5

    iput v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->screen:I

    .line 290
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->resetPage()V

    .line 291
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    const-string v1, "\u6c38\u4e45\u6e05\u7406\u65e7\u5bb6\u5ead\uff1f"

    const/16 v2, 0x18

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/supertws/dubokutv/FamilySyncPanel;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 292
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    const-string v1, "\u65e7\u5bb6\u5ead\u5feb\u7167\u5c06\u88ab\u5220\u9664\uff0c\u65e7 familyId \u51ed\u636e\u5c06\u5931\u6548\u3002\u8bf7\u5148\u786e\u8ba4\u5f53\u524d\u5bb6\u5ead\u5df2\u663e\u793a\u5e76\u53ef\u7ee7\u7eed\u64ad\u653e\u521a\u590d\u5236\u7684\u8fdb\u5ea6\u3002"

    const/16 v2, 0x12

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v4}, Lcom/supertws/dubokutv/FamilySyncPanel;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 293
    new-instance v0, Lcom/supertws/dubokutv/FamilySyncPanel$20;

    invoke-direct {v0, p0}, Lcom/supertws/dubokutv/FamilySyncPanel$20;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V

    const-string v1, "\u590d\u5236\u5df2\u6838\u9a8c\uff0c\u6c38\u4e45\u6e05\u7406"

    invoke-direct {p0, v1, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->actionRow(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v0

    .line 294
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-static {v1}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/supertws/dubokutv/FamilyIdentity;->isCloudSyncEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cleanupReady:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->copiedCodes:Ljava/lang/String;

    iget-object v2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->sourceCodeValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 295
    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 296
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->addStatus()V

    .line 297
    return-void
.end method

.method private showCode()V
    .locals 6

    .line 218
    const/4 v0, 0x1

    iput v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->screen:I

    .line 219
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->resetPage()V

    .line 220
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    const-string v2, "\u5bb6\u5ead\u52a0\u5165\u7801"

    const/16 v3, 0x18

    invoke-direct {p0, v2, v3, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 221
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    const-string v2, "\u628a\u5f53\u524d\u52a0\u5165\u7801\u8f93\u5165\u65b0\u7535\u89c6\uff0c\u5373\u53ef\u52a0\u5165\u540c\u4e00\u5bb6\u5ead\u3002\u751f\u6210\u65b0\u7801\u4f1a\u4f7f\u65e7\u7801\u5931\u6548\u3002"

    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-direct {p0, v2, v4, v5}, Lcom/supertws/dubokutv/FamilySyncPanel;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 222
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5f53\u524d\u5bb6\u5ead\uff1a"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-static {v4}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/supertws/dubokutv/FamilyIdentity;->familyId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xf

    invoke-direct {p0, v2, v4, v5}, Lcom/supertws/dubokutv/FamilySyncPanel;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 223
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->generatedCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\u52a0\u5165\u7801\u5c1a\u672a\u751f\u6210"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->generatedCode:Ljava/lang/String;

    :goto_0
    invoke-direct {p0, v1, v3, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->codeDisplay:Landroid/widget/TextView;

    .line 224
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->codeDisplay:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 225
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->generatedCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u751f\u6210\u5bb6\u5ead\u52a0\u5165\u7801"

    goto :goto_1

    :cond_1
    const-string v0, "\u8f6e\u6362\u52a0\u5165\u7801"

    :goto_1
    new-instance v1, Lcom/supertws/dubokutv/FamilySyncPanel$3;

    invoke-direct {v1, p0}, Lcom/supertws/dubokutv/FamilySyncPanel$3;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V

    invoke-direct {p0, v0, v1}, Lcom/supertws/dubokutv/FamilySyncPanel;->actionRow(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v0

    .line 226
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-static {v1}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/supertws/dubokutv/FamilyIdentity;->isCloudSyncEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 227
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->addStatus()V

    .line 228
    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 229
    return-void
.end method

.method private showError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .line 577
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    .line 578
    :goto_0
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    new-instance v1, Lcom/supertws/dubokutv/FamilySyncPanel$14;

    invoke-direct {v1, p0, p1, p2}, Lcom/supertws/dubokutv/FamilySyncPanel$14;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 579
    return-void
.end method

.method private showHome()V
    .locals 7

    .line 175
    const/4 v0, 0x0

    iput v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->screen:I

    .line 176
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->resetPage()V

    .line 177
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    const-string v2, "\u5bb6\u5ead"

    const/16 v3, 0x1c

    invoke-direct {p0, v2, v3, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 178
    const-string v1, "\u4e91\u7aef\u540c\u6b65"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/supertws/dubokutv/FamilySyncPanel;->syncToggleRow(Ljava/lang/String;Z)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cloudSyncToggle:Landroid/widget/LinearLayout;

    .line 179
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 180
    const/16 v5, 0x10

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 181
    iget-object v5, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cloudSyncToggle:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cloudSyncToggle:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/supertws/dubokutv/FamilySyncPanel$4;

    invoke-direct {v5, p0}, Lcom/supertws/dubokutv/FamilySyncPanel$4;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    const-string v1, "\u5c40\u57df\u7f51\u7edc\u540c\u6b65"

    invoke-direct {p0, v1, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->syncToggleRow(Ljava/lang/String;Z)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->lanSyncToggle:Landroid/widget/LinearLayout;

    .line 191
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->lanSyncToggle:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/supertws/dubokutv/FamilySyncPanel$5;

    invoke-direct {v5, p0}, Lcom/supertws/dubokutv/FamilySyncPanel$5;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->lanSyncToggle:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    const-string v3, "\u5bb6\u5ead\u7ba1\u7406"

    const/16 v4, 0x14

    invoke-direct {p0, v3, v4, v2}, Lcom/supertws/dubokutv/FamilySyncPanel;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->familyHeader:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 200
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

    .line 201
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->currentFamily:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 202
    new-instance v0, Lcom/supertws/dubokutv/FamilySyncPanel$6;

    invoke-direct {v0, p0}, Lcom/supertws/dubokutv/FamilySyncPanel$6;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V

    const-string v1, "\u5173\u8054 Google / GitHub \u8d26\u53f7\uff08\u624b\u673a\u626b\u7801\uff09"

    invoke-direct {p0, v1, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->actionRow(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authLinkButton:Landroid/widget/Button;

    .line 203
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authLinkButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-static {v1}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/supertws/dubokutv/FamilyIdentity;->isCloudSyncEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 204
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->updateAuthLinkButton()V

    .line 205
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->refreshLinkedProviders()V

    .line 206
    new-instance v0, Lcom/supertws/dubokutv/FamilySyncPanel$7;

    invoke-direct {v0, p0}, Lcom/supertws/dubokutv/FamilySyncPanel$7;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V

    const-string v1, "\u7ba1\u7406\u5bb6\u5ead\u52a0\u5165\u7801"

    invoke-direct {p0, v1, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->actionRow(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v0

    .line 207
    new-instance v1, Lcom/supertws/dubokutv/FamilySyncPanel$8;

    invoke-direct {v1, p0}, Lcom/supertws/dubokutv/FamilySyncPanel$8;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V

    const-string v2, "\u65b0\u7535\u89c6\u52a0\u5165\u5bb6\u5ead"

    invoke-direct {p0, v2, v1}, Lcom/supertws/dubokutv/FamilySyncPanel;->actionRow(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v1

    .line 208
    new-instance v2, Lcom/supertws/dubokutv/FamilySyncPanel$9;

    invoke-direct {v2, p0}, Lcom/supertws/dubokutv/FamilySyncPanel$9;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V

    const-string v3, "\u5408\u5e76\u65e7\u5bb6\u5ead\u8bb0\u5f55"

    invoke-direct {p0, v3, v2}, Lcom/supertws/dubokutv/FamilySyncPanel;->actionRow(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v2

    .line 209
    iget-object v3, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-static {v3}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/supertws/dubokutv/FamilyIdentity;->isCloudSyncEnabled()Z

    move-result v3

    .line 210
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 211
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 212
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 213
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->addStatus()V

    .line 214
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->updateCloudSyncToggle()V

    .line 215
    return-void
.end method

.method private showIssueConfirm()V
    .locals 4

    .line 232
    const/4 v0, 0x4

    iput v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->screen:I

    .line 233
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->resetPage()V

    .line 234
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    const/16 v1, 0x18

    const/4 v2, 0x1

    const-string v3, "\u786e\u8ba4\u66f4\u6362\u52a0\u5165\u7801\uff1f"

    invoke-direct {p0, v3, v1, v2}, Lcom/supertws/dubokutv/FamilySyncPanel;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 235
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    const/16 v1, 0x12

    const/4 v2, 0x0

    const-string v3, "\u65b0\u7801\u751f\u6210\u540e\uff0c\u539f\u52a0\u5165\u7801\u4f1a\u7acb\u5373\u5931\u6548\u3002"

    invoke-direct {p0, v3, v1, v2}, Lcom/supertws/dubokutv/FamilySyncPanel;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 236
    new-instance v0, Lcom/supertws/dubokutv/FamilySyncPanel$23;

    invoke-direct {v0, p0}, Lcom/supertws/dubokutv/FamilySyncPanel$23;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V

    const-string v1, "\u786e\u8ba4\u751f\u6210\u65b0\u52a0\u5165\u7801"

    invoke-direct {p0, v1, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->actionRow(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v0

    .line 237
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-static {v1}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/supertws/dubokutv/FamilyIdentity;->isCloudSyncEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 238
    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 239
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->addStatus()V

    .line 240
    return-void
.end method

.method private showJoin()V
    .locals 4

    .line 243
    const/4 v0, 0x2

    iput v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->screen:I

    .line 244
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->resetPage()V

    .line 245
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    const/16 v1, 0x18

    const/4 v2, 0x1

    const-string v3, "\u65b0\u7535\u89c6\u52a0\u5165\u5f53\u524d\u5bb6\u5ead"

    invoke-direct {p0, v3, v1, v2}, Lcom/supertws/dubokutv/FamilySyncPanel;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 246
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    const-string v1, "\u8f93\u5165\u53e6\u4e00\u53f0\u7535\u89c6\u663e\u793a\u7684\u5bb6\u5ead\u52a0\u5165\u7801\u3002\u52a0\u5165\u540e\u4f1a\u8bfb\u53d6\u5e76\u5408\u5e76\u5bb6\u5ead\u8fdb\u5ea6\u3002"

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/supertws/dubokutv/FamilySyncPanel;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 247
    const-string v0, "\u4f8b\u5982 ABCD-EFGH-JKLM-NPQR"

    invoke-direct {p0, v0, v3}, Lcom/supertws/dubokutv/FamilySyncPanel;->input(Ljava/lang/String;Z)Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->joinCode:Landroid/widget/EditText;

    .line 248
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->joinCode:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-static {v1}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/supertws/dubokutv/FamilyIdentity;->isCloudSyncEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 249
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->joinCode:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->joinCodeValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->joinCode:Landroid/widget/EditText;

    new-instance v1, Lcom/supertws/dubokutv/FamilySyncPanel$1;

    invoke-direct {v1, p0}, Lcom/supertws/dubokutv/FamilySyncPanel$1;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 255
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->joinCode:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 256
    new-instance v0, Lcom/supertws/dubokutv/FamilySyncPanel$22;

    invoke-direct {v0, p0}, Lcom/supertws/dubokutv/FamilySyncPanel$22;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V

    const-string v1, "\u52a0\u5165\u5e76\u540c\u6b65\u5bb6\u5ead\u8fdb\u5ea6"

    invoke-direct {p0, v1, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->actionRow(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v0

    .line 257
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-static {v1}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/supertws/dubokutv/FamilyIdentity;->isCloudSyncEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 258
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->addStatus()V

    .line 259
    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 260
    return-void
.end method

.method private showMerge()V
    .locals 5

    .line 263
    const/4 v0, 0x3

    iput v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->screen:I

    .line 264
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->resetPage()V

    .line 265
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    const-string v1, "\u5408\u5e76\u65e7\u5bb6\u5ead\u8bb0\u5f55"

    const/16 v2, 0x18

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/supertws/dubokutv/FamilySyncPanel;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 266
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    const/16 v1, 0x10

    const/4 v2, 0x0

    const-string v4, "\u6bcf\u884c\u8f93\u5165\u4e00\u4e2a\u65e7\u5bb6\u5ead\u52a0\u5165\u7801\u3002\u5148\u9884\u89c8\uff0c\u518d\u590d\u5236\u5e76\u6838\u5bf9\u8bb0\u5f55\uff1b\u6700\u540e\u624d\u786e\u8ba4\u6e05\u7406\u65e7\u5bb6\u5ead\u3002"

    invoke-direct {p0, v4, v1, v2}, Lcom/supertws/dubokutv/FamilySyncPanel;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 267
    const-string v0, "\u6bcf\u884c\u4e00\u4e2a\u65e7\u5bb6\u5ead\u52a0\u5165\u7801"

    invoke-direct {p0, v0, v3}, Lcom/supertws/dubokutv/FamilySyncPanel;->input(Ljava/lang/String;Z)Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->sourceCodes:Landroid/widget/EditText;

    .line 268
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->sourceCodes:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-static {v1}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/supertws/dubokutv/FamilyIdentity;->isCloudSyncEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 269
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->sourceCodes:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->sourceCodeValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->sourceCodes:Landroid/widget/EditText;

    new-instance v1, Lcom/supertws/dubokutv/FamilySyncPanel$2;

    invoke-direct {v1, p0}, Lcom/supertws/dubokutv/FamilySyncPanel$2;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 279
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->sourceCodes:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 280
    new-instance v0, Lcom/supertws/dubokutv/FamilySyncPanel$16;

    invoke-direct {v0, p0}, Lcom/supertws/dubokutv/FamilySyncPanel$16;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V

    const-string v1, "\u9884\u89c8\u65e7\u5bb6\u5ead\u8bb0\u5f55"

    invoke-direct {p0, v1, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->actionRow(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->mergePreview:Landroid/widget/Button;

    .line 281
    new-instance v0, Lcom/supertws/dubokutv/FamilySyncPanel$17;

    invoke-direct {v0, p0}, Lcom/supertws/dubokutv/FamilySyncPanel$17;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V

    const-string v1, "\u590d\u5236\u8bb0\u5f55\u5230\u5f53\u524d\u5bb6\u5ead"

    invoke-direct {p0, v1, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->actionRow(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->mergeCopy:Landroid/widget/Button;

    .line 282
    new-instance v0, Lcom/supertws/dubokutv/FamilySyncPanel$18;

    invoke-direct {v0, p0}, Lcom/supertws/dubokutv/FamilySyncPanel$18;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V

    const-string v1, "\u786e\u8ba4\u6e05\u7406\u65e7 familyId \u548c\u5feb\u7167"

    invoke-direct {p0, v1, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->actionRow(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cleanup:Landroid/widget/Button;

    .line 283
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->updateMergeControls()V

    .line 284
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->addStatus()V

    .line 285
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->mergePreview:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 286
    return-void
.end method

.method private startAuth()V
    .locals 4

    .line 300
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-static {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->isCloudSyncEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u8bf7\u5148\u5f00\u542f\u4e91\u7aef\u540c\u6b65\u3002"

    invoke-direct {p0, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->setStatus(Ljava/lang/String;)V

    return-void

    .line 301
    :cond_0
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->showAuth()V

    .line 302
    const-string v0, "\u6b63\u5728\u521b\u5efa\u624b\u673a\u626b\u7801\u767b\u5f55\u2026"

    invoke-direct {p0, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->setStatus(Ljava/lang/String;)V

    .line 303
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

    .line 304
    iget-object v2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->work:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/supertws/dubokutv/FamilySyncPanel$27;

    invoke-direct {v3, p0, v0, v1}, Lcom/supertws/dubokutv/FamilySyncPanel$27;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 319
    return-void
.end method

.method private stopAuthPolling(Z)V
    .locals 4

    .line 367
    iget-boolean v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authPolling:Z

    .line 368
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authPolling:Z

    .line 369
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 370
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authSessionId:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 371
    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authSessionId:Ljava/lang/String;

    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authPollSecret:Ljava/lang/String;

    .line 372
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->work:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/supertws/dubokutv/FamilySyncPanel$13;

    invoke-direct {v3, p1, v0}, Lcom/supertws/dubokutv/FamilySyncPanel$13;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 374
    :cond_0
    const-string p1, ""

    iput-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authSessionId:Ljava/lang/String;

    .line 375
    iput-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authPollSecret:Ljava/lang/String;

    .line 376
    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authQr:Landroid/webkit/WebView;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authQr:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    iput-object v2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authQr:Landroid/webkit/WebView;

    .line 377
    :cond_1
    return-void
.end method

.method private syncToggleRow(Ljava/lang/String;Z)Landroid/widget/LinearLayout;
    .locals 7

    .line 93
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 94
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 95
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 96
    const/16 v3, 0x18

    const/16 v4, 0x14

    invoke-virtual {v0, v3, v4, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 97
    const/16 v3, 0x60

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 98
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 99
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 100
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 101
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

    .line 103
    invoke-direct {p0, p1, v2, v1}, Lcom/supertws/dubokutv/FamilySyncPanel;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object p1

    .line 104
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 105
    const-string v3, ""

    invoke-direct {p0, v3, v2, v1}, Lcom/supertws/dubokutv/FamilySyncPanel;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v2

    .line 106
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 107
    if-eqz p2, :cond_0

    iput-object v2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cloudSyncValue:Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->lanSyncValue:Landroid/widget/TextView;

    .line 108
    :goto_0
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, -0x2

    invoke-direct {p2, v1, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    new-instance p2, Lcom/supertws/dubokutv/FamilySyncPanel$38;

    invoke-direct {p2, p1, v2}, Lcom/supertws/dubokutv/FamilySyncPanel$38;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 115
    return-object v0
.end method

.method private text(Ljava/lang/String;IZ)Landroid/widget/TextView;
    .locals 2

    .line 71
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 72
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    const/4 p1, -0x1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74
    int-to-float p1, p2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 75
    const/4 p1, 0x0

    const/16 p2, 0x8

    invoke-virtual {v0, p1, p2, p1, p2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 76
    if-eqz p3, :cond_0

    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 77
    :cond_0
    return-object v0
.end method

.method private updateAuthLinkButton()V
    .locals 3

    .line 388
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authLinkButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->linkedProviders:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u5173\u8054 Google / GitHub"

    goto :goto_1

    .line 390
    :cond_1
    const-string v0, "\u7ee7\u7eed\u5173\u8054 Google / GitHub"

    .line 391
    :goto_1
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authLinkButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setSingleLine(Z)V

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 392
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authLinkButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-static {v1}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/supertws/dubokutv/FamilyIdentity;->isCloudSyncEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 393
    return-void
.end method

.method private updateFamilyHeader()V
    .locals 3

    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->familyHeader:Landroid/widget/TextView;

    if-eqz v0, :done

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->linkedDisplayName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :welcome

    const-string v1, "\u5bb6\u5ead\u7ba1\u7406"

    goto :set

    :welcome
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5bb6\u5ead\u7ba1\u7406 \u00b7 \u6b22\u8fce\uff0c"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->linkedDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\uff01"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :set
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :done
    return-void
.end method

.method private updateCloudSyncToggle()V
    .locals 5

    .line 582
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-static {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v0

    .line 583
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cloudSyncValue:Landroid/widget/TextView;

    const-string v2, "\u5df2\u5f00\u542f"

    const-string v3, "\u5df2\u5173\u95ed"

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cloudSyncValue:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->isCloudSyncEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 584
    :cond_1
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->lanSyncValue:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->lanSyncValue:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->isLanSyncEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 585
    :cond_3
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authLinkButton:Landroid/widget/Button;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authLinkButton:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->isCloudSyncEnabled()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 586
    :cond_4
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->updateMergeControls()V

    .line 587
    return-void
.end method

.method private updateMergeControls()V
    .locals 6

    .line 590
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-static {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->isCloudSyncEnabled()Z

    move-result v0

    .line 591
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->mergePreview:Landroid/widget/Button;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->mergePreview:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 592
    :cond_0
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->mergeCopy:Landroid/widget/Button;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->mergeCopy:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-boolean v4, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->previewed:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->previewedCodes:Ljava/lang/String;

    iget-object v5, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->sourceCodeValue:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 593
    :cond_2
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cleanup:Landroid/widget/Button;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cleanup:Landroid/widget/Button;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cleanupReady:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->copiedCodes:Ljava/lang/String;

    iget-object v4, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->sourceCodeValue:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 594
    :cond_4
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 448
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 449
    iget v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->screen:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->showCode()V

    goto :goto_0

    .line 450
    :cond_0
    iget v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->screen:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->showMerge()V

    goto :goto_0

    .line 451
    :cond_1
    iget v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->screen:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->returnFromAuth()V

    goto :goto_0

    .line 452
    :cond_2
    iget v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->screen:I

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->showHome()V

    .line 454
    :goto_0
    const/4 p1, 0x1

    return p1

    .line 453
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 456
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method synthetic lambda$cleanUp$22$com-supertws-dubokutv-FamilySyncPanel(Lorg/json/JSONObject;)V
    .locals 2

    .line 561
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cleanupReady:Z

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6e05\u7406\u5b8c\u6210\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cleanedFamilies"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " \u4e2a\u65e7\u5bb6\u5ead\u5df2\u5220\u9664\u5e76\u64a4\u9500\u51ed\u636e\u3002"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->statusMessage:Ljava/lang/String;

    .line 563
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->showMerge()V

    .line 564
    return-void
.end method

.method synthetic lambda$cleanUp$23$com-supertws-dubokutv-FamilySyncPanel(Lorg/json/JSONArray;)V
    .locals 5

    .line 555
    const-string v0, ""

    :try_start_0
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-static {v1}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/supertws/dubokutv/FamilyIdentity;->familyId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-static {v2}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/supertws/dubokutv/FamilyIdentity;->familySecret()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cleanup"

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, p1, v4}, Lcom/supertws/dubokutv/CloudSyncClient;->mergeFamilies(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Z)Lorg/json/JSONObject;

    move-result-object p1

    .line 556
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->previewed:Z

    .line 557
    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->previewedCodes:Ljava/lang/String;

    .line 558
    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->copiedCodes:Ljava/lang/String;

    .line 559
    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->sourceCodeValue:Ljava/lang/String;

    .line 560
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    new-instance v1, Lcom/supertws/dubokutv/FamilySyncPanel$26;

    invoke-direct {v1, p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel$26;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 565
    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/supertws/dubokutv/CloudSyncClient;->fetchOnHistory(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 566
    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "\u6e05\u7406\u65e7\u5bb6\u5ead"

    invoke-direct {p0, v0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->showError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 567
    :goto_0
    return-void
.end method

.method synthetic lambda$copyMerge$20$com-supertws-dubokutv-FamilySyncPanel(Lorg/json/JSONObject;)V
    .locals 2

    .line 535
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cleanupReady:Z

    .line 536
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->updateMergeControls()V

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u590d\u5236\u5b8c\u6210\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "copiedSnapshots"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " \u6761\u5feb\u7167\u3002\u8bf7\u6838\u5bf9\u65b0\u5bb6\u5ead\u8fdb\u5ea6\uff1b\u786e\u8ba4\u65e0\u8bef\u540e\u518d\u6e05\u7406\u65e7\u5bb6\u5ead\u3002"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->busy(Ljava/lang/String;)V

    .line 538
    return-void
.end method

.method synthetic lambda$copyMerge$21$com-supertws-dubokutv-FamilySyncPanel(Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 4

    .line 529
    :try_start_0
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

    const-string v2, "copy"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, p1, v3}, Lcom/supertws/dubokutv/CloudSyncClient;->mergeFamilies(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Z)Lorg/json/JSONObject;

    move-result-object p1

    .line 530
    const-string v0, "devices"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 531
    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v3, v1, :cond_0

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-static {v1}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/supertws/dubokutv/FamilyIdentity;->addPeer(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 532
    :cond_0
    iput-object p2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->copiedCodes:Ljava/lang/String;

    .line 533
    iget-object p2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/supertws/dubokutv/CloudSyncClient;->fetchOnHistory(Landroid/content/Context;)V

    .line 534
    iget-object p2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    new-instance v0, Lcom/supertws/dubokutv/FamilySyncPanel$10;

    invoke-direct {v0, p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel$10;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;Lorg/json/JSONObject;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "\u590d\u5236\u5408\u5e76"

    invoke-direct {p0, p2, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->showError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 540
    :goto_1
    return-void
.end method

.method synthetic lambda$issueCode$14$com-supertws-dubokutv-FamilySyncPanel(Ljava/lang/String;)V
    .locals 0

    .line 474
    iput-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->generatedCode:Ljava/lang/String;

    .line 475
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->showCode()V

    .line 476
    const-string p1, "\u52a0\u5165\u7801\u5df2\u751f\u6210\uff1b\u8bb0\u4e0b\u540e\u53ef\u5728\u65b0\u7535\u89c6\u8f93\u5165\u3002\u518d\u6b21\u751f\u6210\u4f1a\u7acb\u5373\u4f7f\u65e7\u7801\u5931\u6548\u3002"

    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->busy(Ljava/lang/String;)V

    .line 477
    return-void
.end method

.method synthetic lambda$issueCode$15$com-supertws-dubokutv-FamilySyncPanel()V
    .locals 3

    .line 472
    :try_start_0
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->createJoinCode()Ljava/lang/String;

    move-result-object v0

    .line 473
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    new-instance v2, Lcom/supertws/dubokutv/FamilySyncPanel$37;

    invoke-direct {v2, p0, v0}, Lcom/supertws/dubokutv/FamilySyncPanel$37;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "\u751f\u6210\u52a0\u5165\u7801"

    invoke-direct {p0, v1, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->showError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 479
    :goto_0
    return-void
.end method

.method synthetic lambda$joinFamily$16$com-supertws-dubokutv-FamilySyncPanel()V
    .locals 1

    .line 492
    const-string v0, "\u5df2\u52a0\u5165\u5bb6\u5ead\uff0c\u6b63\u5728\u8bfb\u53d6\u5bb6\u5ead\u8fdb\u5ea6\u3002"

    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->statusMessage:Ljava/lang/String;

    .line 493
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->showHome()V

    .line 494
    return-void
.end method

.method synthetic lambda$joinFamily$17$com-supertws-dubokutv-FamilySyncPanel(Ljava/lang/String;)V
    .locals 4

    .line 488
    :try_start_0
    invoke-static {p1}, Lcom/supertws/dubokutv/CloudSyncClient;->redeemJoinCode(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 489
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-static {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v0

    const-string v1, "familyId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "familySecret"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "deviceIds"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/supertws/dubokutv/FamilyIdentity;->join(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 490
    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/supertws/dubokutv/CloudSyncClient;->fetchOnHistory(Landroid/content/Context;)V

    .line 491
    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    new-instance v0, Lcom/supertws/dubokutv/FamilySyncPanel$32;

    invoke-direct {v0, p0}, Lcom/supertws/dubokutv/FamilySyncPanel$32;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "\u52a0\u5165\u5bb6\u5ead"

    invoke-direct {p0, v0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->showError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 496
    :goto_0
    return-void
.end method

.method synthetic lambda$pollAuth$10$com-supertws-dubokutv-FamilySyncPanel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 343
    :try_start_0
    invoke-static {p1, p2}, Lcom/supertws/dubokutv/FamilyAuthClient;->status(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 344
    const-string v0, "status"

    const-string v1, "pending"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 345
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    new-instance v2, Lcom/supertws/dubokutv/FamilySyncPanel$30;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/supertws/dubokutv/FamilySyncPanel$30;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    goto :goto_0

    .line 360
    :catch_0
    move-exception p1

    .line 361
    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    new-instance p2, Lcom/supertws/dubokutv/FamilySyncPanel$31;

    invoke-direct {p2, p0}, Lcom/supertws/dubokutv/FamilySyncPanel$31;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 363
    :goto_0
    return-void
.end method

.method synthetic lambda$pollAuth$8$com-supertws-dubokutv-FamilySyncPanel(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 6

    .line 346
    iget-boolean v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authPolling:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->screen:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authSessionId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_5

    .line 347
    :cond_0
    const-string p1, "linked"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 348
    iput-boolean v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authPolling:Z

    .line 349
    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authQr:Landroid/webkit/WebView;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authQr:Landroid/webkit/WebView;

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    const/4 v1, 0x0

    const-string v2, "<html><body style=\'font:24px sans-serif;text-align:center;padding:4em\'>\u8d26\u53f7\u5df2\u5173\u8054</body></html>"

    const-string v3, "text/html"

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    :cond_1
    const-string p1, "provider"

    invoke-virtual {p3, p1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 351
    const-string p2, "displayName"

    const-string v0, ""

    invoke-virtual {p3, p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 352
    invoke-direct {p0, p1, p2}, Lcom/supertws/dubokutv/FamilySyncPanel;->rememberLinkedProvider(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object p2, v0

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6b22\u8fce\uff0c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "\uff01"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "\u5df2\u4f7f\u7528 "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "google"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    const-string v0, "Google"

    goto :goto_1

    :cond_3
    const-string p3, "github"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string v0, "GitHub"

    :cond_4
    :goto_1
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " \u8d26\u53f7\u5173\u8054\u5f53\u524d\u5bb6\u5ead\u3002\u6309\u8fd4\u56de\u56de\u5230\u5bb6\u5ead\u8bbe\u7f6e\u3002"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->busy(Ljava/lang/String;)V

    .line 354
    goto :goto_4

    :cond_5
    const-string p1, "expired"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_7

    const-string p3, "cancelled"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    goto :goto_2

    .line 358
    :cond_6
    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authHandler:Landroid/os/Handler;

    new-instance p2, Lcom/supertws/dubokutv/FamilySyncPanel$15;

    invoke-direct {p2, p0}, Lcom/supertws/dubokutv/FamilySyncPanel$15;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 355
    :cond_7
    :goto_2
    iput-boolean v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authPolling:Z

    .line 356
    iget-object p3, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authQr:Landroid/webkit/WebView;

    if-eqz p3, :cond_8

    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authQr:Landroid/webkit/WebView;

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    const/4 v1, 0x0

    const-string v2, "<html><body style=\'font:24px sans-serif;text-align:center;padding:4em\'>\u6b64\u767b\u5f55\u7801\u5df2\u5931\u6548</body></html>"

    const-string v3, "text/html"

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    :cond_8
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u626b\u7801\u767b\u5f55\u5df2"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "\u8fc7\u671f"

    goto :goto_3

    :cond_9
    const-string p1, "\u53d6\u6d88"

    :goto_3
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\uff0c\u8bf7\u8fd4\u56de\u540e\u91cd\u65b0\u5f00\u59cb\u3002"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->busy(Ljava/lang/String;)V

    .line 359
    :goto_4
    return-void

    .line 346
    :cond_a
    :goto_5
    return-void
.end method

.method synthetic lambda$pollAuth$9$com-supertws-dubokutv-FamilySyncPanel()V
    .locals 4

    .line 361
    iget-boolean v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authPolling:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->screen:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authHandler:Landroid/os/Handler;

    new-instance v1, Lcom/supertws/dubokutv/FamilySyncPanel$15;

    invoke-direct {v1, p0}, Lcom/supertws/dubokutv/FamilySyncPanel$15;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method synthetic lambda$previewMerge$18$com-supertws-dubokutv-FamilySyncPanel(Lorg/json/JSONObject;)V
    .locals 2

    .line 513
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->updateMergeControls()V

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u9884\u89c8\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "families"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u4e2a\u5bb6\u5ead\u3001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "snapshots"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u6761\u8bbe\u5907\u5feb\u7167\u3001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "records"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " \u6761\u8bb0\u5f55\u3002\u5f53\u524d\u5bb6\u5ead ID \u5fc5\u987b\u662f\u53c2\u4e0e\u5bb6\u5ead\u4e2d\u6700\u5c0f\u7684 ID\u3002"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->busy(Ljava/lang/String;)V

    .line 515
    return-void
.end method

.method synthetic lambda$previewMerge$19$com-supertws-dubokutv-FamilySyncPanel(Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 4

    .line 508
    :try_start_0
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

    const-string v2, "preview"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, p1, v3}, Lcom/supertws/dubokutv/CloudSyncClient;->mergeFamilies(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Z)Lorg/json/JSONObject;

    move-result-object p1

    .line 509
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->previewed:Z

    .line 510
    iput-object p2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->previewedCodes:Ljava/lang/String;

    .line 511
    const-string p2, ""

    iput-object p2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->copiedCodes:Ljava/lang/String;

    .line 512
    iget-object p2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    new-instance v0, Lcom/supertws/dubokutv/FamilySyncPanel$21;

    invoke-direct {v0, p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel$21;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;Lorg/json/JSONObject;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "\u9884\u89c8\u5408\u5e76"

    invoke-direct {p0, p2, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->showError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 517
    :goto_0
    return-void
.end method

.method synthetic lambda$refreshLinkedProviders$12$com-supertws-dubokutv-FamilySyncPanel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 436
    iget v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->screen:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-static {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->familyId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 437
    iput-object p2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->linkedProviders:Ljava/lang/String;

    .line 438
    iput-object p3, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->linkedDisplayName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->updateFamilyHeader()V

    .line 439
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->updateAuthLinkButton()V

    .line 440
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->statusMessage:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->statusMessage:Ljava/lang/String;

    const-string p2, "\u5df2\u9000\u51fa"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u6b22\u8fce\uff0c"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\uff01"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->setStatus(Ljava/lang/String;)V

    .line 442
    :cond_1
    return-void
.end method

.method synthetic lambda$refreshLinkedProviders$13$com-supertws-dubokutv-FamilySyncPanel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .line 416
    :try_start_0
    invoke-static {p1, p2}, Lcom/supertws/dubokutv/FamilyAuthClient;->accounts(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 417
    const-string v0, "accounts"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v1, "providers"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    nop

    .line 419
    nop

    .line 420
    const-string v1, "github"

    const-string v2, "google"

    const/4 v3, 0x0

    const-string v4, ""

    if-eqz v0, :cond_2

    move-object v8, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v5, v9, :cond_3

    .line 421
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 422
    if-nez v9, :cond_0

    goto :goto_1

    .line 423
    :cond_0
    const-string v10, "provider"

    invoke-virtual {v9, v10, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 424
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v6, v11

    .line 425
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v7, v10

    .line 426
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v8, "displayName"

    invoke-virtual {v9, v8, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 420
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    move-object v8, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 428
    :cond_3
    if-nez v0, :cond_4

    if-eqz p2, :cond_4

    :goto_2
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v3, v0, :cond_4

    .line 429
    invoke-virtual {p2, v3, v4}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 430
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v6, v5

    .line 431
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr v7, v0

    .line 428
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 433
    :cond_4
    if-eqz v6, :cond_5

    if-eqz v7, :cond_5

    const-string v4, "Google \u548c GitHub"

    goto :goto_3

    :cond_5
    if-eqz v6, :cond_6

    const-string v4, "Google"

    goto :goto_3

    :cond_6
    if-eqz v7, :cond_7

    const-string v4, "GitHub"

    .line 434
    :cond_7
    :goto_3
    nop

    .line 435
    iget-object p2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    new-instance v0, Lcom/supertws/dubokutv/FamilySyncPanel$28;

    invoke-direct {v0, p0, p1, v4, v8}, Lcom/supertws/dubokutv/FamilySyncPanel$28;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 443
    :catch_0
    move-exception p1

    :goto_4
    nop

    .line 444
    return-void
.end method

.method synthetic lambda$showCode$4$com-supertws-dubokutv-FamilySyncPanel()V
    .locals 0

    .line 225
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->showIssueConfirm()V

    return-void
.end method

.method synthetic lambda$showError$24$com-supertws-dubokutv-FamilySyncPanel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\u5931\u8d25\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\u3002\u68c0\u67e5\u7f51\u7edc\u3001Worker \u90e8\u7f72\u72b6\u6001\u548c\u52a0\u5165\u7801\u540e\u91cd\u8bd5\u3002"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->busy(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$showHome$2$com-supertws-dubokutv-FamilySyncPanel(Landroid/view/View;)V
    .locals 2

    .line 183
    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-static {p1}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object p1

    .line 184
    invoke-virtual {p1}, Lcom/supertws/dubokutv/FamilyIdentity;->isCloudSyncEnabled()Z

    move-result v0

    .line 185
    xor-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Lcom/supertws/dubokutv/FamilyIdentity;->setCloudSyncEnabled(Z)V

    .line 186
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->updateCloudSyncToggle()V

    .line 187
    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/supertws/dubokutv/CloudSyncClient;->fetchOnHistory(Landroid/content/Context;)V

    .line 188
    :cond_0
    if-nez v0, :cond_1

    const-string p1, "\u5df2\u5f00\u542f\u5bb6\u5ead\u4e91\u7aef\u540c\u6b65"

    goto :goto_0

    :cond_1
    const-string p1, "\u5df2\u5173\u95ed\u4e91\u7aef\u540c\u6b65\uff08\u4ec5\u4fdd\u7559\u5c40\u57df\u7f51\u540c\u6b65\uff09"

    :goto_0
    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->setStatus(Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method synthetic lambda$showHome$3$com-supertws-dubokutv-FamilySyncPanel(Landroid/view/View;)V
    .locals 2

    .line 192
    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-static {p1}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object p1

    .line 193
    invoke-virtual {p1}, Lcom/supertws/dubokutv/FamilyIdentity;->isLanSyncEnabled()Z

    move-result v0

    .line 194
    xor-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Lcom/supertws/dubokutv/FamilyIdentity;->setLanSyncEnabled(Z)V

    .line 195
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->updateCloudSyncToggle()V

    .line 196
    if-nez v0, :cond_0

    const-string p1, "\u5df2\u5f00\u542f\u5c40\u57df\u7f51\u7edc\u540c\u6b65"

    goto :goto_0

    :cond_0
    const-string p1, "\u5df2\u5173\u95ed\u5c40\u57df\u7f51\u7edc\u540c\u6b65\uff08\u4ec5\u4f5c\u4e3a\u672c\u5730\u64ad\u653e\u5668\uff09"

    :goto_0
    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->setStatus(Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method synthetic lambda$startAuth$6$com-supertws-dubokutv-FamilySyncPanel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 309
    iget v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->screen:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->work:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/supertws/dubokutv/FamilySyncPanel$36;

    invoke-direct {v1, p1, p2}, Lcom/supertws/dubokutv/FamilySyncPanel$36;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 310
    :cond_0
    iput-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authSessionId:Ljava/lang/String;

    iput-object p2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authPollSecret:Ljava/lang/String;

    .line 311
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

    .line 312
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authQr:Landroid/webkit/WebView;

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    const-string v1, "https://cleantv-r2-sync.jerry-shao.workers.dev/"

    const-string v3, "text/html"

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->authPolling:Z

    .line 314
    const-string p1, "\u8bf7\u7528\u624b\u673a\u626b\u63cf\u4e8c\u7ef4\u7801\u5e76\u5b8c\u6210\u767b\u5f55\uff1b\u6b64\u7801\u4e94\u5206\u949f\u540e\u5931\u6548\u3002"

    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->busy(Ljava/lang/String;)V

    .line 315
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->pollAuth()V

    .line 316
    return-void
.end method

.method synthetic lambda$startAuth$7$com-supertws-dubokutv-FamilySyncPanel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 306
    :try_start_0
    invoke-static {p1, p2}, Lcom/supertws/dubokutv/FamilyAuthClient;->create(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 307
    const-string p2, "sessionId"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "pollSecret"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 308
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    new-instance v1, Lcom/supertws/dubokutv/FamilySyncPanel$35;

    invoke-direct {v1, p0, p2, p1}, Lcom/supertws/dubokutv/FamilySyncPanel$35;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "\u521b\u5efa\u626b\u7801\u767b\u5f55"

    invoke-direct {p0, p2, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->showError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 318
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 571
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->stopAuthPolling(Z)V

    .line 572
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->work:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 573
    invoke-super {p0}, Landroid/widget/ScrollView;->onDetachedFromWindow()V

    .line 574
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    .line 150
    iget v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->screen:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cloudSyncToggle:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cloudSyncToggle:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1

    .line 152
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method
