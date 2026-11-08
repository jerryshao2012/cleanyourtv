.class public final Lcom/supertws/dubokutv/FamilySyncPanel;
.super Landroid/widget/ScrollView;
.source "FamilySyncPanel.java"


# instance fields
.field private cleanup:Landroid/widget/Button;

.field private cleanupReady:Z

.field private cloudSyncToggle:Landroid/widget/LinearLayout;

.field private cloudSyncValue:Landroid/widget/TextView;

.field private codeDisplay:Landroid/widget/TextView;

.field private copiedCodes:Ljava/lang/String;

.field private currentFamily:Landroid/widget/TextView;

.field private generatedCode:Ljava/lang/String;

.field private final host:Landroid/app/Activity;

.field private joinCode:Landroid/widget/EditText;

.field private joinCodeValue:Ljava/lang/String;

.field private lanSyncToggle:Landroid/widget/LinearLayout;

.field private lanSyncValue:Landroid/widget/TextView;

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
.method public static synthetic $r8$lambda$0FCg7PDHI2zEJeHHmkbKtea8RnQ(Lcom/supertws/dubokutv/FamilySyncPanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->confirmCleanup()V

    return-void
.end method

.method public static synthetic $r8$lambda$0_D65fCZSmc3qpRvKcFN1LBnX2I(Lcom/supertws/dubokutv/FamilySyncPanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->previewMerge()V

    return-void
.end method

.method public static synthetic $r8$lambda$AgjA3PQw7PgqioOTjH19YRL_aSU(Lcom/supertws/dubokutv/FamilySyncPanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->showJoin()V

    return-void
.end method

.method public static synthetic $r8$lambda$Czyzqfq-0Phrd371jbPWu9bf_SU(Lcom/supertws/dubokutv/FamilySyncPanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->copyMerge()V

    return-void
.end method

.method public static synthetic $r8$lambda$PCE3u7qxkaDuKACc7b-8zgsDwmU(Lcom/supertws/dubokutv/FamilySyncPanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->showCode()V

    return-void
.end method

.method public static synthetic $r8$lambda$j7jMaF1i3yEU5NFL96LoFaLuyY4(Lcom/supertws/dubokutv/FamilySyncPanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->joinFamily()V

    return-void
.end method

.method public static synthetic $r8$lambda$kWpG_HazZdCL64Mi1nOigvow7b8(Lcom/supertws/dubokutv/FamilySyncPanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->issueCode()V

    return-void
.end method

.method public static synthetic $r8$lambda$oNQrR1MOsthwHbif1chZUl1YRlg(Lcom/supertws/dubokutv/FamilySyncPanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->showMerge()V

    return-void
.end method

.method public static synthetic $r8$lambda$xnk2PEpT_PFdfawCBj6irYN2gRM(Lcom/supertws/dubokutv/FamilySyncPanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->cleanUp()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->work:Ljava/util/concurrent/ExecutorService;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->previewedCodes:Ljava/lang/String;

    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->copiedCodes:Ljava/lang/String;

    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->joinCodeValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->sourceCodeValue:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->generatedCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->statusMessage:Ljava/lang/String;

    .line 40
    nop

    .line 41
    :goto_0
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_0

    instance-of v1, p1, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_0

    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    .line 42
    :cond_0
    if-eqz v0, :cond_1

    .line 43
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    .line 44
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/supertws/dubokutv/CloudSyncClient;->initialize(Landroid/content/Context;)V

    .line 45
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->setFillViewport(Z)V

    .line 46
    invoke-virtual {p0, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->setFocusable(Z)V

    .line 47
    invoke-virtual {p0, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->setFocusableInTouchMode(Z)V

    .line 48
    const/high16 v1, 0x40000

    invoke-virtual {p0, v1}, Lcom/supertws/dubokutv/FamilySyncPanel;->setDescendantFocusability(I)V

    .line 49
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/supertws/dubokutv/FamilySyncPanel;->setBackgroundColor(I)V

    .line 50
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    .line 51
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 52
    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    const/16 v0, 0x90

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1, v0, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 53
    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->addView(Landroid/view/View;)V

    .line 54
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->showHome()V

    .line 55
    return-void

    .line 42
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Family panel requires an Activity context"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$002(Lcom/supertws/dubokutv/FamilySyncPanel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->joinCodeValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/supertws/dubokutv/FamilySyncPanel;)Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->sourceCodeValue:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/supertws/dubokutv/FamilySyncPanel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->sourceCodeValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/supertws/dubokutv/FamilySyncPanel;)Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->previewedCodes:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/supertws/dubokutv/FamilySyncPanel;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cleanupReady:Z

    return p1
.end method

.method static synthetic access$400(Lcom/supertws/dubokutv/FamilySyncPanel;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->updateMergeControls()V

    return-void
.end method

.method private actionRow(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;
    .locals 3

    .line 145
    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object p1

    .line 146
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 147
    const/16 v1, 0xc

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 148
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    new-instance v0, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda21;

    invoke-direct {v0, p2}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda21;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    return-object p1
.end method

.method private addStatus()V
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->statusMessage:Ljava/lang/String;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/supertws/dubokutv/FamilySyncPanel;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->status:Landroid/widget/TextView;

    .line 136
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 137
    return-void
.end method

.method private busy(Ljava/lang/String;)V
    .locals 0

    .line 295
    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->setStatus(Ljava/lang/String;)V

    return-void
.end method

.method private button(Ljava/lang/String;)Landroid/widget/Button;
    .locals 4

    .line 68
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 69
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 70
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 71
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    .line 72
    const/high16 p1, 0x41800000    # 16.0f

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextSize(F)V

    .line 73
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

    .line 74
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 75
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

    .line 76
    return-object v0
.end method

.method private cleanUp()V
    .locals 3

    .line 380
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->codes()Lorg/json/JSONArray;

    move-result-object v0

    .line 381
    const-string v1, "\u6b63\u5728\u6e05\u7406\u65e7\u5bb6\u5ead\u4e91\u7aef\u5feb\u7167\u2026"

    invoke-direct {p0, v1}, Lcom/supertws/dubokutv/FamilySyncPanel;->busy(Ljava/lang/String;)V

    .line 382
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->work:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0, v0}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda14;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;Lorg/json/JSONArray;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 397
    return-void
.end method

.method private codes()Lorg/json/JSONArray;
    .locals 6

    .line 289
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 290
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->sourceCodeValue:Ljava/lang/String;

    const-string v2, "[,\\n\\r]+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 291
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 290
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 292
    :cond_1
    return-object v0
.end method

.method private confirmCleanup()V
    .locals 2

    .line 373
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

    .line 376
    :cond_0
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->showCleanupConfirm()V

    .line 377
    return-void

    .line 374
    :cond_1
    :goto_0
    const-string v0, "\u52a0\u5165\u7801\u4e0e\u4e0a\u6b21\u590d\u5236\u4e0d\u4e00\u81f4\uff0c\u8bf7\u91cd\u65b0\u9884\u89c8\u5e76\u590d\u5236\u3002"

    invoke-direct {p0, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->busy(Ljava/lang/String;)V

    return-void
.end method

.method private copyMerge()V
    .locals 4

    .line 350
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->codes()Lorg/json/JSONArray;

    move-result-object v0

    .line 351
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

    .line 354
    :cond_0
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->sourceCodeValue:Ljava/lang/String;

    .line 355
    const-string v2, "\u6b63\u5728\u590d\u5236\u5408\u5e76\u5feb\u7167\u2026"

    invoke-direct {p0, v2}, Lcom/supertws/dubokutv/FamilySyncPanel;->busy(Ljava/lang/String;)V

    .line 356
    iget-object v2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->work:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda25;

    invoke-direct {v3, p0, v0, v1}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda25;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;Lorg/json/JSONArray;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 370
    return-void

    .line 352
    :cond_1
    :goto_0
    const-string v0, "\u8bf7\u5148\u9884\u89c8\u5f53\u524d\u8f93\u5165\u7684\u65e7\u5bb6\u5ead\u52a0\u5165\u7801\u3002"

    invoke-direct {p0, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->busy(Ljava/lang/String;)V

    return-void
.end method

.method private input(Ljava/lang/String;Z)Landroid/widget/EditText;
    .locals 2

    .line 106
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 107
    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 108
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 109
    const/4 p1, -0x1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 110
    const p1, -0x333334

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 111
    const/high16 p1, 0x41800000    # 16.0f

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 112
    if-eqz p2, :cond_0

    .line 113
    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setMinLines(I)V

    .line 114
    const p1, 0x800033

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setGravity(I)V

    .line 116
    :cond_0
    return-object v0
.end method

.method private issueCode()V
    .locals 2

    .line 298
    const-string v0, "\u6b63\u5728\u8fde\u63a5\u5bb6\u5ead\u4e91\u7aef\u2026"

    invoke-direct {p0, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->busy(Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->work:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda23;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 309
    return-void
.end method

.method private joinFamily()V
    .locals 3

    .line 312
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->joinCodeValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 313
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "\u8bf7\u5148\u8f93\u5165\u52a0\u5165\u7801\u3002"

    invoke-direct {p0, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->busy(Ljava/lang/String;)V

    return-void

    .line 314
    :cond_0
    const-string v1, "\u6b63\u5728\u9a8c\u8bc1\u52a0\u5165\u7801\u5e76\u8bfb\u53d6\u8bbe\u5907\u5217\u8868\u2026"

    invoke-direct {p0, v1}, Lcom/supertws/dubokutv/FamilySyncPanel;->busy(Ljava/lang/String;)V

    .line 315
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->work:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda20;

    invoke-direct {v2, p0, v0}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda20;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 326
    return-void
.end method

.method static synthetic lambda$actionRow$1(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 149
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic lambda$syncToggleRow$0(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Z)V
    .locals 0

    .line 98
    if-eqz p3, :cond_0

    const/high16 p2, -0x1000000

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    .line 99
    :goto_0
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 100
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    return-void
.end method

.method private previewMerge()V
    .locals 4

    .line 329
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->codes()Lorg/json/JSONArray;

    move-result-object v0

    .line 330
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "\u8bf7\u8f93\u5165\u81f3\u5c11\u4e00\u4e2a\u65e7\u5bb6\u5ead\u52a0\u5165\u7801\u3002"

    invoke-direct {p0, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->busy(Ljava/lang/String;)V

    return-void

    .line 331
    :cond_0
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->sourceCodeValue:Ljava/lang/String;

    .line 332
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cleanupReady:Z

    .line 333
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->updateCloudSyncToggle()V

    .line 334
    const-string v2, "\u6b63\u5728\u8bfb\u53d6\u65e7\u5bb6\u5ead\u5feb\u7167\u2026"

    invoke-direct {p0, v2}, Lcom/supertws/dubokutv/FamilySyncPanel;->busy(Ljava/lang/String;)V

    .line 335
    iget-object v2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->work:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda19;

    invoke-direct {v3, p0, v0, v1}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda19;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;Lorg/json/JSONArray;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 347
    return-void
.end method

.method private resetPage()V
    .locals 1

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->status:Landroid/widget/TextView;

    .line 121
    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cleanup:Landroid/widget/Button;

    .line 122
    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cloudSyncToggle:Landroid/widget/LinearLayout;

    .line 123
    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->lanSyncToggle:Landroid/widget/LinearLayout;

    .line 124
    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cloudSyncValue:Landroid/widget/TextView;

    .line 125
    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->lanSyncValue:Landroid/widget/TextView;

    .line 126
    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->joinCode:Landroid/widget/EditText;

    .line 127
    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->sourceCodes:Landroid/widget/EditText;

    .line 128
    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->mergePreview:Landroid/widget/Button;

    .line 129
    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->mergeCopy:Landroid/widget/Button;

    .line 130
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 131
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->scrollTo(II)V

    .line 132
    return-void
.end method


.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    iget v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->screen:I
    if-nez v0, :super

    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cloudSyncToggle:Landroid/widget/LinearLayout;
    if-eqz v0, :super

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->requestFocus(ILandroid/graphics/Rect;)Z
    move-result v0
    return v0

    :super
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    move-result v0
    return v0
.end method


.method private setStatus(Ljava/lang/String;)V
    .locals 1

    .line 140
    iput-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->statusMessage:Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->status:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    :cond_0
    return-void
.end method

.method private showCleanupConfirm()V
    .locals 5

    .line 267
    const/4 v0, 0x5

    iput v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->screen:I

    .line 268
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->resetPage()V

    .line 269
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    const-string v1, "\u6c38\u4e45\u6e05\u7406\u65e7\u5bb6\u5ead\uff1f"

    const/16 v2, 0x18

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/supertws/dubokutv/FamilySyncPanel;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 270
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    const-string v1, "\u65e7\u5bb6\u5ead\u5feb\u7167\u5c06\u88ab\u5220\u9664\uff0c\u65e7 familyId \u51ed\u636e\u5c06\u5931\u6548\u3002\u8bf7\u5148\u786e\u8ba4\u5f53\u524d\u5bb6\u5ead\u5df2\u663e\u793a\u5e76\u53ef\u7ee7\u7eed\u64ad\u653e\u521a\u590d\u5236\u7684\u8fdb\u5ea6\u3002"

    const/16 v2, 0x12

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v4}, Lcom/supertws/dubokutv/FamilySyncPanel;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 271
    new-instance v0, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda5;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V

    const-string v1, "\u590d\u5236\u5df2\u6838\u9a8c\uff0c\u6c38\u4e45\u6e05\u7406"

    invoke-direct {p0, v1, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->actionRow(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v0

    .line 272
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

    .line 273
    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 274
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->addStatus()V

    .line 275
    return-void
.end method

.method private showCode()V
    .locals 6

    .line 196
    const/4 v0, 0x1

    iput v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->screen:I

    .line 197
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->resetPage()V

    .line 198
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    const-string v2, "\u5bb6\u5ead\u52a0\u5165\u7801"

    const/16 v3, 0x18

    invoke-direct {p0, v2, v3, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 199
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    const-string v2, "\u628a\u5f53\u524d\u52a0\u5165\u7801\u8f93\u5165\u65b0\u7535\u89c6\uff0c\u5373\u53ef\u52a0\u5165\u540c\u4e00\u5bb6\u5ead\u3002\u751f\u6210\u65b0\u7801\u4f1a\u4f7f\u65e7\u7801\u5931\u6548\u3002"

    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-direct {p0, v2, v4, v5}, Lcom/supertws/dubokutv/FamilySyncPanel;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 200
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

    .line 201
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

    .line 202
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 203
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->generatedCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u751f\u6210\u5bb6\u5ead\u52a0\u5165\u7801"

    goto :goto_1

    :cond_1
    const-string v0, "\u8f6e\u6362\u52a0\u5165\u7801"

    :goto_1
    new-instance v1, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda12;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V

    invoke-direct {p0, v0, v1}, Lcom/supertws/dubokutv/FamilySyncPanel;->actionRow(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v0

    .line 204
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-static {v1}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/supertws/dubokutv/FamilyIdentity;->isCloudSyncEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 205
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->addStatus()V

    .line 206
    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 207
    return-void
.end method

.method private showError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .line 405
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

    .line 406
    :goto_0
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    new-instance v1, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda1;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 407
    return-void
.end method

.method private showHome()V
    .locals 7

    .line 154
    const/4 v0, 0x0

    iput v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->screen:I

    .line 155
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->resetPage()V

    .line 156
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    const-string v2, "\u5bb6\u5ead"

    const/16 v3, 0x1c

    invoke-direct {p0, v2, v3, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 157
    const-string v1, "\u4e91\u7aef\u540c\u6b65"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/supertws/dubokutv/FamilySyncPanel;->syncToggleRow(Ljava/lang/String;Z)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cloudSyncToggle:Landroid/widget/LinearLayout;

    .line 158
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 159
    const/16 v5, 0x10

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 160
    iget-object v5, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cloudSyncToggle:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cloudSyncToggle:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda6;

    invoke-direct {v5, p0}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda6;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    const-string v1, "\u5c40\u57df\u7f51\u7edc\u540c\u6b65"

    invoke-direct {p0, v1, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->syncToggleRow(Ljava/lang/String;Z)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->lanSyncToggle:Landroid/widget/LinearLayout;

    .line 170
    new-instance v5, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda7;

    invoke-direct {v5, p0}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda7;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->lanSyncToggle:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    const-string v3, "\u5bb6\u5ead\u7ba1\u7406"

    const/16 v4, 0x14

    invoke-direct {p0, v3, v4, v2}, Lcom/supertws/dubokutv/FamilySyncPanel;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 179
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

    .line 180
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 181
    new-instance v0, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda8;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V

    const-string v1, "\u7ba1\u7406\u5bb6\u5ead\u52a0\u5165\u7801"

    invoke-direct {p0, v1, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->actionRow(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v0

    .line 182
    new-instance v1, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda9;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V

    const-string v2, "\u65b0\u7535\u89c6\u52a0\u5165\u5bb6\u5ead"

    invoke-direct {p0, v2, v1}, Lcom/supertws/dubokutv/FamilySyncPanel;->actionRow(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v1

    .line 183
    new-instance v2, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda10;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V

    const-string v3, "\u5408\u5e76\u65e7\u5bb6\u5ead\u8bb0\u5f55"

    invoke-direct {p0, v3, v2}, Lcom/supertws/dubokutv/FamilySyncPanel;->actionRow(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v2

    .line 184
    iget-object v3, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-static {v3}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/supertws/dubokutv/FamilyIdentity;->isCloudSyncEnabled()Z

    move-result v3

    .line 185
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 186
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 187
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 188
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->addStatus()V

    .line 189
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->updateCloudSyncToggle()V

    .line 193
    return-void
.end method

.method private showIssueConfirm()V
    .locals 4

    .line 210
    const/4 v0, 0x4

    iput v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->screen:I

    .line 211
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->resetPage()V

    .line 212
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    const/16 v1, 0x18

    const/4 v2, 0x1

    const-string v3, "\u786e\u8ba4\u66f4\u6362\u52a0\u5165\u7801\uff1f"

    invoke-direct {p0, v3, v1, v2}, Lcom/supertws/dubokutv/FamilySyncPanel;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 213
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    const/16 v1, 0x12

    const/4 v2, 0x0

    const-string v3, "\u65b0\u7801\u751f\u6210\u540e\uff0c\u539f\u52a0\u5165\u7801\u4f1a\u7acb\u5373\u5931\u6548\u3002"

    invoke-direct {p0, v3, v1, v2}, Lcom/supertws/dubokutv/FamilySyncPanel;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 214
    new-instance v0, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda2;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V

    const-string v1, "\u786e\u8ba4\u751f\u6210\u65b0\u52a0\u5165\u7801"

    invoke-direct {p0, v1, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->actionRow(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v0

    .line 215
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-static {v1}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/supertws/dubokutv/FamilyIdentity;->isCloudSyncEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 216
    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 217
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->addStatus()V

    .line 218
    return-void
.end method

.method private showJoin()V
    .locals 4

    .line 221
    const/4 v0, 0x2

    iput v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->screen:I

    .line 222
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->resetPage()V

    .line 223
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    const/16 v1, 0x18

    const/4 v2, 0x1

    const-string v3, "\u65b0\u7535\u89c6\u52a0\u5165\u5f53\u524d\u5bb6\u5ead"

    invoke-direct {p0, v3, v1, v2}, Lcom/supertws/dubokutv/FamilySyncPanel;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 224
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    const-string v1, "\u8f93\u5165\u53e6\u4e00\u53f0\u7535\u89c6\u663e\u793a\u7684\u5bb6\u5ead\u52a0\u5165\u7801\u3002\u52a0\u5165\u540e\u4f1a\u8bfb\u53d6\u5e76\u5408\u5e76\u5bb6\u5ead\u8fdb\u5ea6\u3002"

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/supertws/dubokutv/FamilySyncPanel;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 225
    const-string v0, "\u4f8b\u5982 ABCD-EFGH-JKLM-NPQR"

    invoke-direct {p0, v0, v3}, Lcom/supertws/dubokutv/FamilySyncPanel;->input(Ljava/lang/String;Z)Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->joinCode:Landroid/widget/EditText;

    .line 226
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-static {v1}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/supertws/dubokutv/FamilyIdentity;->isCloudSyncEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 227
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->joinCode:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->joinCodeValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->joinCode:Landroid/widget/EditText;

    new-instance v1, Lcom/supertws/dubokutv/FamilySyncPanel$1;

    invoke-direct {v1, p0}, Lcom/supertws/dubokutv/FamilySyncPanel$1;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 233
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->joinCode:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 234
    new-instance v0, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda0;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V

    const-string v1, "\u52a0\u5165\u5e76\u540c\u6b65\u5bb6\u5ead\u8fdb\u5ea6"

    invoke-direct {p0, v1, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->actionRow(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v0

    .line 235
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-static {v1}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/supertws/dubokutv/FamilyIdentity;->isCloudSyncEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 236
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->addStatus()V

    .line 237
    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 238
    return-void
.end method

.method private showMerge()V
    .locals 5

    .line 241
    const/4 v0, 0x3

    iput v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->screen:I

    .line 242
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->resetPage()V

    .line 243
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    const-string v1, "\u5408\u5e76\u65e7\u5bb6\u5ead\u8bb0\u5f55"

    const/16 v2, 0x18

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/supertws/dubokutv/FamilySyncPanel;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 244
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    const/16 v1, 0x10

    const/4 v2, 0x0

    const-string v4, "\u6bcf\u884c\u8f93\u5165\u4e00\u4e2a\u65e7\u5bb6\u5ead\u52a0\u5165\u7801\u3002\u5148\u9884\u89c8\uff0c\u518d\u590d\u5236\u5e76\u6838\u5bf9\u8bb0\u5f55\uff1b\u6700\u540e\u624d\u786e\u8ba4\u6e05\u7406\u65e7\u5bb6\u5ead\u3002"

    invoke-direct {p0, v4, v1, v2}, Lcom/supertws/dubokutv/FamilySyncPanel;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 245
    const-string v0, "\u6bcf\u884c\u4e00\u4e2a\u65e7\u5bb6\u5ead\u52a0\u5165\u7801"

    invoke-direct {p0, v0, v3}, Lcom/supertws/dubokutv/FamilySyncPanel;->input(Ljava/lang/String;Z)Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->sourceCodes:Landroid/widget/EditText;

    .line 246
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-static {v1}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/supertws/dubokutv/FamilyIdentity;->isCloudSyncEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 247
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->sourceCodes:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->sourceCodeValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->sourceCodes:Landroid/widget/EditText;

    new-instance v1, Lcom/supertws/dubokutv/FamilySyncPanel$2;

    invoke-direct {v1, p0}, Lcom/supertws/dubokutv/FamilySyncPanel$2;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 257
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->sourceCodes:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 258
    new-instance v0, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda16;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V

    const-string v1, "\u9884\u89c8\u65e7\u5bb6\u5ead\u8bb0\u5f55"

    invoke-direct {p0, v1, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->actionRow(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->mergePreview:Landroid/widget/Button;

    .line 259
    new-instance v0, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda17;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V

    const-string v1, "\u590d\u5236\u8bb0\u5f55\u5230\u5f53\u524d\u5bb6\u5ead"

    invoke-direct {p0, v1, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->actionRow(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->mergeCopy:Landroid/widget/Button;

    .line 260
    new-instance v0, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda18;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V

    const-string v1, "\u786e\u8ba4\u6e05\u7406\u65e7 familyId \u548c\u5feb\u7167"

    invoke-direct {p0, v1, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->actionRow(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cleanup:Landroid/widget/Button;

    .line 261
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->updateMergeControls()V

    .line 262
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->addStatus()V

    .line 263
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->mergePreview:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 264
    return-void
.end method

.method private syncToggleRow(Ljava/lang/String;Z)Landroid/widget/LinearLayout;
    .locals 7

    .line 80
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 81
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 82
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 83
    const/16 v3, 0x18

    const/16 v4, 0x14

    invoke-virtual {v0, v3, v4, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 84
    const/16 v3, 0x60

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 85
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 86
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 87
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 88
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

    .line 90
    invoke-direct {p0, p1, v2, v1}, Lcom/supertws/dubokutv/FamilySyncPanel;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object p1

    .line 91
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 92
    const-string v3, ""

    invoke-direct {p0, v3, v2, v1}, Lcom/supertws/dubokutv/FamilySyncPanel;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v2

    .line 93
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 94
    if-eqz p2, :cond_0

    iput-object v2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cloudSyncValue:Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->lanSyncValue:Landroid/widget/TextView;

    .line 95
    :goto_0
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, -0x2

    invoke-direct {p2, v1, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    new-instance p2, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda4;

    invoke-direct {p2, p1, v2}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda4;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 102
    return-object v0
.end method

.method private text(Ljava/lang/String;IZ)Landroid/widget/TextView;
    .locals 2

    .line 58
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 59
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    const/4 p1, -0x1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    int-to-float p1, p2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 62
    const/4 p1, 0x0

    const/16 p2, 0x8

    invoke-virtual {v0, p1, p2, p1, p2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 63
    if-eqz p3, :cond_0

    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 64
    :cond_0
    return-object v0
.end method

.method private updateCloudSyncToggle()V
    .locals 5

    .line 410
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-static {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v0

    .line 411
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cloudSyncValue:Landroid/widget/TextView;

    const-string v2, "\u5df2\u5f00\u542f"

    const-string v3, "\u5df2\u5173\u95ed"

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->isCloudSyncEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    :cond_1
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->lanSyncValue:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->isLanSyncEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    :cond_3
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->updateMergeControls()V

    .line 414
    return-void
.end method

.method private updateMergeControls()V
    .locals 6

    .line 417
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-static {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->isCloudSyncEnabled()Z

    move-result v0

    .line 418
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->mergePreview:Landroid/widget/Button;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 419
    :cond_0
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->mergeCopy:Landroid/widget/Button;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

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

    .line 420
    :cond_2
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cleanup:Landroid/widget/Button;

    if-eqz v1, :cond_4

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

    .line 421
    :cond_4
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 278
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 279
    iget v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->screen:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->showCode()V

    goto :goto_0

    .line 280
    :cond_0
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->showMerge()V

    goto :goto_0

    .line 281
    :cond_1
    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->showHome()V

    .line 283
    :goto_0
    const/4 p1, 0x1

    return p1

    .line 282
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 285
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method synthetic lambda$cleanUp$14$com-supertws-dubokutv-FamilySyncPanel(Lorg/json/JSONObject;)V
    .locals 2

    .line 390
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cleanupReady:Z

    .line 391
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

    .line 392
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->showMerge()V

    .line 393
    return-void
.end method

.method synthetic lambda$cleanUp$15$com-supertws-dubokutv-FamilySyncPanel(Lorg/json/JSONArray;)V
    .locals 5

    .line 384
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

    .line 385
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->previewed:Z

    .line 386
    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->previewedCodes:Ljava/lang/String;

    .line 387
    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->copiedCodes:Ljava/lang/String;

    .line 388
    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->sourceCodeValue:Ljava/lang/String;

    .line 389
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    new-instance v1, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda22;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 394
    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/supertws/dubokutv/CloudSyncClient;->fetchOnHistory(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "\u6e05\u7406\u65e7\u5bb6\u5ead"

    invoke-direct {p0, v0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->showError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 396
    :goto_0
    return-void
.end method

.method synthetic lambda$copyMerge$12$com-supertws-dubokutv-FamilySyncPanel(Lorg/json/JSONObject;)V
    .locals 2

    .line 364
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cleanupReady:Z

    .line 365
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->updateMergeControls()V

    .line 366
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

    .line 367
    return-void
.end method

.method synthetic lambda$copyMerge$13$com-supertws-dubokutv-FamilySyncPanel(Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 4

    .line 358
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

    .line 359
    const-string v0, "devices"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 360
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

    .line 361
    :cond_0
    iput-object p2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->copiedCodes:Ljava/lang/String;

    .line 362
    iget-object p2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/supertws/dubokutv/CloudSyncClient;->fetchOnHistory(Landroid/content/Context;)V

    .line 363
    iget-object p2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    new-instance v0, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda13;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;Lorg/json/JSONObject;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "\u590d\u5236\u5408\u5e76"

    invoke-direct {p0, p2, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->showError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 369
    :goto_1
    return-void
.end method

.method synthetic lambda$issueCode$6$com-supertws-dubokutv-FamilySyncPanel(Ljava/lang/String;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->generatedCode:Ljava/lang/String;

    .line 304
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->showCode()V

    .line 305
    const-string p1, "\u52a0\u5165\u7801\u5df2\u751f\u6210\uff1b\u8bb0\u4e0b\u540e\u53ef\u5728\u65b0\u7535\u89c6\u8f93\u5165\u3002\u518d\u6b21\u751f\u6210\u4f1a\u7acb\u5373\u4f7f\u65e7\u7801\u5931\u6548\u3002"

    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->busy(Ljava/lang/String;)V

    .line 306
    return-void
.end method

.method synthetic lambda$issueCode$7$com-supertws-dubokutv-FamilySyncPanel()V
    .locals 3

    .line 301
    :try_start_0
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->createJoinCode()Ljava/lang/String;

    move-result-object v0

    .line 302
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    new-instance v2, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda24;

    invoke-direct {v2, p0, v0}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda24;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "\u751f\u6210\u52a0\u5165\u7801"

    invoke-direct {p0, v1, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->showError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 308
    :goto_0
    return-void
.end method

.method synthetic lambda$joinFamily$8$com-supertws-dubokutv-FamilySyncPanel()V
    .locals 1

    .line 321
    const-string v0, "\u5df2\u52a0\u5165\u5bb6\u5ead\uff0c\u6b63\u5728\u8bfb\u53d6\u5bb6\u5ead\u8fdb\u5ea6\u3002"

    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->statusMessage:Ljava/lang/String;

    .line 322
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->showHome()V

    .line 323
    return-void
.end method

.method synthetic lambda$joinFamily$9$com-supertws-dubokutv-FamilySyncPanel(Ljava/lang/String;)V
    .locals 4

    .line 317
    :try_start_0
    invoke-static {p1}, Lcom/supertws/dubokutv/CloudSyncClient;->redeemJoinCode(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 318
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

    .line 319
    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/supertws/dubokutv/CloudSyncClient;->fetchOnHistory(Landroid/content/Context;)V

    .line 320
    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    new-instance v0, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda3;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "\u52a0\u5165\u5bb6\u5ead"

    invoke-direct {p0, v0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->showError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 325
    :goto_0
    return-void
.end method

.method synthetic lambda$previewMerge$10$com-supertws-dubokutv-FamilySyncPanel(Lorg/json/JSONObject;)V
    .locals 2

    .line 342
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->updateMergeControls()V

    .line 343
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

    .line 344
    return-void
.end method

.method synthetic lambda$previewMerge$11$com-supertws-dubokutv-FamilySyncPanel(Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 4

    .line 337
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

    .line 338
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->previewed:Z

    .line 339
    iput-object p2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->previewedCodes:Ljava/lang/String;

    .line 340
    const-string p2, ""

    iput-object p2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->copiedCodes:Ljava/lang/String;

    .line 341
    iget-object p2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    new-instance v0, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda15;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;Lorg/json/JSONObject;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "\u9884\u89c8\u5408\u5e76"

    invoke-direct {p0, p2, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->showError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 346
    :goto_0
    return-void
.end method

.method synthetic lambda$showCode$5$com-supertws-dubokutv-FamilySyncPanel()V
    .locals 0

    .line 203
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->showIssueConfirm()V

    return-void
.end method

.method synthetic lambda$showError$16$com-supertws-dubokutv-FamilySyncPanel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 406
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
    .locals 1

    .line 162
    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-static {p1}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object p1

    .line 163
    invoke-virtual {p1}, Lcom/supertws/dubokutv/FamilyIdentity;->isCloudSyncEnabled()Z

    move-result v0

    .line 164
    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/supertws/dubokutv/FamilyIdentity;->setCloudSyncEnabled(Z)V

    .line 165
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->updateCloudSyncToggle()V

    .line 166
    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/supertws/dubokutv/CloudSyncClient;->fetchOnHistory(Landroid/content/Context;)V

    .line 167
    :cond_0
    if-eqz v0, :cond_1

    const-string p1, "\u5df2\u5f00\u542f\u5bb6\u5ead\u4e91\u7aef\u540c\u6b65"

    goto :goto_0

    :cond_1
    const-string p1, "\u5df2\u5173\u95ed\u4e91\u7aef\u540c\u6b65\uff08\u4ec5\u4fdd\u7559\u5c40\u57df\u7f51\u540c\u6b65\uff09"

    :goto_0
    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->setStatus(Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method synthetic lambda$showHome$3$com-supertws-dubokutv-FamilySyncPanel(Landroid/view/View;)V
    .locals 1

    .line 171
    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-static {p1}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object p1

    .line 172
    invoke-virtual {p1}, Lcom/supertws/dubokutv/FamilyIdentity;->isLanSyncEnabled()Z

    move-result v0

    .line 173
    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/supertws/dubokutv/FamilyIdentity;->setLanSyncEnabled(Z)V

    .line 174
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->updateCloudSyncToggle()V

    .line 175
    if-eqz v0, :cond_0

    const-string p1, "\u5df2\u5f00\u542f\u5c40\u57df\u7f51\u7edc\u540c\u6b65"

    goto :goto_0

    :cond_0
    const-string p1, "\u5df2\u5173\u95ed\u5c40\u57df\u7f51\u7edc\u540c\u6b65\uff08\u4ec5\u4f5c\u4e3a\u672c\u5730\u64ad\u653e\u5668\uff09"

    :goto_0
    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->setStatus(Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method synthetic lambda$showHome$4$com-supertws-dubokutv-FamilySyncPanel()V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cloudSyncToggle:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 192
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->work:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 401
    invoke-super {p0}, Landroid/widget/ScrollView;->onDetachedFromWindow()V

    .line 402
    return-void
.end method
