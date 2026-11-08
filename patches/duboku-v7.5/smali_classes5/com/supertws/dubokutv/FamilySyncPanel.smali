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

.field private final host:Landroid/app/Activity;

.field private joinCode:Landroid/widget/EditText;

.field private lanSyncToggle:Landroid/widget/LinearLayout;

.field private lanSyncValue:Landroid/widget/TextView;

.field private page:Landroid/widget/LinearLayout;

.field private previewed:Z

.field private previewedCodes:Ljava/lang/String;

.field private sourceCodes:Landroid/widget/EditText;

.field private status:Landroid/widget/TextView;

.field private final work:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->work:Ljava/util/concurrent/ExecutorService;

    const-string v0, ""

    .line 30
    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->previewedCodes:Ljava/lang/String;

    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->copiedCodes:Ljava/lang/String;

    move-object v0, p1

    .line 37
    :goto_0
    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_0

    instance-of v2, v0, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 39
    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    .line 40
    invoke-static {v0}, Lcom/supertws/dubokutv/CloudSyncClient;->initialize(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 41
    invoke-virtual {p0, v1}, Lcom/supertws/dubokutv/FamilySyncPanel;->setFillViewport(Z)V

    const/4 v2, 0x0

    .line 42
    invoke-virtual {p0, v2}, Lcom/supertws/dubokutv/FamilySyncPanel;->setBackgroundColor(I)V

    .line 43
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    .line 44
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 45
    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    const/16 v3, 0x90

    const/16 v4, 0x14

    invoke-virtual {p1, v3, v4, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 46
    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->addView(Landroid/view/View;)V

    .line 48
    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    const-string v3, "\u5bb6\u5ead"

    const/16 v5, 0x1c

    invoke-direct {p0, v3, v5, v2}, Lcom/supertws/dubokutv/FamilySyncPanel;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string p1, "\u4e91\u7aef\u540c\u6b65"

    .line 49
    invoke-direct {p0, p1, v1}, Lcom/supertws/dubokutv/FamilySyncPanel;->syncToggleRow(Ljava/lang/String;Z)Landroid/widget/LinearLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cloudSyncToggle:Landroid/widget/LinearLayout;

    .line 50
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v5, -0x2

    invoke-direct {p1, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0x10

    .line 51
    iput v6, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 52
    iget-object v7, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cloudSyncToggle:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v8, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cloudSyncToggle:Landroid/widget/LinearLayout;

    new-instance v7, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda8;

    invoke-direct {v7, p0}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda8;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V

    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p1, "\u5c40\u57df\u7f51\u7edc\u540c\u6b65"

    .line 61
    invoke-direct {p0, p1, v2}, Lcom/supertws/dubokutv/FamilySyncPanel;->syncToggleRow(Ljava/lang/String;Z)Landroid/widget/LinearLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->lanSyncToggle:Landroid/widget/LinearLayout;

    .line 62
    new-instance v7, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda9;

    invoke-direct {v7, p0}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda9;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V

    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->lanSyncToggle:Landroid/widget/LinearLayout;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    const-string v3, "\u7ba1\u7406\u5bb6\u5ead\u52a0\u5165\u7801\u3001\u52a0\u5165\u5176\u4ed6\u7535\u89c6\uff0c\u6216\u5b89\u5168\u5408\u5e76\u65e7\u5bb6\u5ead\u3002"

    invoke-direct {p0, v3, v6, v2}, Lcom/supertws/dubokutv/FamilySyncPanel;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 71
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "\u5f53\u524d\u5bb6\u5ead\uff1a"

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->familyId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xf

    invoke-direct {p0, p1, v0, v2}, Lcom/supertws/dubokutv/FamilySyncPanel;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object p1

    iput-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->currentFamily:Landroid/widget/TextView;

    .line 72
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string p1, "\u751f\u6210 / \u66f4\u6362\u52a0\u5165\u7801\uff08\u65e7\u7801\u7acb\u5373\u5931\u6548\uff09"

    .line 74
    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object p1

    .line 75
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 76
    new-instance v0, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda10;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p1, "\u52a0\u5165\u7801\u5c1a\u672a\u751f\u6210"

    const/16 v0, 0x16

    .line 77
    invoke-direct {p0, p1, v0, v1}, Lcom/supertws/dubokutv/FamilySyncPanel;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object p1

    iput-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->codeDisplay:Landroid/widget/TextView;

    .line 78
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 80
    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    const-string v0, "\u65b0\u7535\u89c6\u52a0\u5165\u5f53\u524d\u5bb6\u5ead"

    invoke-direct {p0, v0, v4, v1}, Lcom/supertws/dubokutv/FamilySyncPanel;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string p1, "\u8f93\u5165\u52a0\u5165\u7801\uff0c\u4f8b\u5982 ABCD-EFGH-JKLM-NPQR"

    .line 81
    invoke-direct {p0, p1, v2}, Lcom/supertws/dubokutv/FamilySyncPanel;->input(Ljava/lang/String;Z)Landroid/widget/EditText;

    move-result-object p1

    iput-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->joinCode:Landroid/widget/EditText;

    .line 82
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string p1, "\u52a0\u5165\u5e76\u540c\u6b65\u5bb6\u5ead\u8fdb\u5ea6"

    .line 83
    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object p1

    .line 84
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 85
    new-instance v0, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda11;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    const-string v0, "\u5408\u5e76\u5176\u4ed6 familyId \u5230\u5f53\u524d\u5bb6\u5ead"

    invoke-direct {p0, v0, v4, v1}, Lcom/supertws/dubokutv/FamilySyncPanel;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string p1, "\u6bcf\u884c\u4e00\u4e2a\u65e7\u5bb6\u5ead\u52a0\u5165\u7801"

    .line 88
    invoke-direct {p0, p1, v1}, Lcom/supertws/dubokutv/FamilySyncPanel;->input(Ljava/lang/String;Z)Landroid/widget/EditText;

    move-result-object p1

    iput-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->sourceCodes:Landroid/widget/EditText;

    .line 89
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string p1, "\u9884\u89c8\u65e7\u5bb6\u5ead\u8bb0\u5f55"

    .line 90
    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object p1

    .line 91
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 92
    new-instance v0, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda12;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p1, "\u590d\u5236\u8bb0\u5f55\u5230\u5f53\u524d\u5bb6\u5ead"

    .line 93
    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object p1

    .line 94
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 95
    new-instance v0, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda13;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p1, "\u786e\u8ba4\u6e05\u7406\u65e7 familyId \u548c\u5feb\u7167"

    .line 96
    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object p1

    iput-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cleanup:Landroid/widget/Button;

    .line 97
    invoke-virtual {p1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 98
    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cleanup:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 99
    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cleanup:Landroid/widget/Button;

    new-instance v0, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda14;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p1, "\u5c31\u7eea"

    .line 100
    invoke-direct {p0, p1, v6, v2}, Lcom/supertws/dubokutv/FamilySyncPanel;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object p1

    iput-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->status:Landroid/widget/TextView;

    .line 101
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 102
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->updateCloudSyncToggle()V

    return-void

    .line 38
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Family panel requires an Activity context"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private busy(Ljava/lang/String;)V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->status:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private button(Ljava/lang/String;)Landroid/widget/Button;
    .locals 4

    .line 116
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 117
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 118
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 119
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    const/high16 p1, 0x41800000    # 16.0f

    .line 120
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextSize(F)V

    .line 121
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

    .line 122
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 123
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

    return-object v0
.end method

.method private cleanUp()V
    .locals 3

    .line 266
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->codes()Lorg/json/JSONArray;

    move-result-object v0

    const-string v1, "\u6b63\u5728\u6e05\u7406\u65e7\u5bb6\u5ead\u4e91\u7aef\u5feb\u7167\u2026"

    .line 267
    invoke-direct {p0, v1}, Lcom/supertws/dubokutv/FamilySyncPanel;->busy(Ljava/lang/String;)V

    .line 268
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->work:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v0}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda5;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;Lorg/json/JSONArray;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private codes()Lorg/json/JSONArray;
    .locals 6

    .line 168
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 169
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->sourceCodes:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[,\\n\\r]+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 170
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private confirmCleanup()V
    .locals 3

    .line 256
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->copiedCodes:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->copiedCodes:Ljava/lang/String;

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->sourceCodes:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u6c38\u4e45\u6e05\u7406\u65e7\u5bb6\u5ead\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u65e7\u5bb6\u5ead\u5feb\u7167\u5c06\u88ab\u5220\u9664\uff0c\u65e7 familyId \u51ed\u636e\u5c06\u5931\u6548\u3002\u8bf7\u786e\u8ba4\u65b0\u5bb6\u5ead\u5df2\u663e\u793a\u5e76\u53ef\u7ee7\u7eed\u64ad\u653e\u65e7\u8fdb\u5ea6\u3002"

    .line 260
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda22;

    invoke-direct {v1}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda22;-><init>()V

    const-string v2, "\u53d6\u6d88"

    .line 261
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda23;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V

    const-string v2, "\u590d\u5236\u5df2\u6838\u9a8c\uff0c\u6c38\u4e45\u6e05\u7406"

    .line 262
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_1
    :goto_0
    const-string v0, "\u52a0\u5165\u7801\u4e0e\u4e0a\u6b21\u590d\u5236\u4e0d\u4e00\u81f4\uff0c\u8bf7\u91cd\u65b0\u9884\u89c8\u5e76\u590d\u5236\u3002"

    .line 257
    invoke-direct {p0, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->busy(Ljava/lang/String;)V

    return-void
.end method

.method private confirmIssueCode()V
    .locals 3

    .line 177
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u751f\u6210\u65b0\u7684\u5bb6\u5ead\u52a0\u5165\u7801\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u751f\u6210\u540e\uff0c\u5f53\u524d\u65e7\u52a0\u5165\u7801\u4f1a\u7acb\u5373\u5931\u6548\u3002\u786e\u8ba4\u8981\u66f4\u6362\u5417\uff1f"

    .line 178
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda6;-><init>()V

    const-string v2, "\u53d6\u6d88"

    .line 179
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda7;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V

    const-string v2, "\u786e\u8ba4\u66f4\u6362"

    .line 180
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private copyMerge()V
    .locals 4

    .line 233
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->codes()Lorg/json/JSONArray;

    move-result-object v0

    .line 234
    iget-boolean v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->previewed:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->previewedCodes:Ljava/lang/String;

    iget-object v2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->sourceCodes:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 237
    :cond_0
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->sourceCodes:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u6b63\u5728\u590d\u5236\u5408\u5e76\u5feb\u7167\u2026"

    .line 238
    invoke-direct {p0, v2}, Lcom/supertws/dubokutv/FamilySyncPanel;->busy(Ljava/lang/String;)V

    .line 239
    iget-object v2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->work:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda24;

    invoke-direct {v3, p0, v0, v1}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda24;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;Lorg/json/JSONArray;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    :goto_0
    const-string v0, "\u8bf7\u5148\u9884\u89c8\u5f53\u524d\u8f93\u5165\u7684\u65e7\u5bb6\u5ead\u52a0\u5165\u7801\u3002"

    .line 235
    invoke-direct {p0, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->busy(Ljava/lang/String;)V

    return-void
.end method

.method private input(Ljava/lang/String;Z)Landroid/widget/EditText;
    .locals 2

    .line 154
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    xor-int/lit8 v1, p2, 0x1

    .line 155
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 156
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/4 p1, -0x1

    .line 157
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextColor(I)V

    const p1, -0x333334

    .line 158
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHintTextColor(I)V

    const/high16 p1, 0x41800000    # 16.0f

    .line 159
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextSize(F)V

    if-eqz p2, :cond_0

    const/4 p1, 0x2

    .line 161
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setMinLines(I)V

    const p1, 0x800033

    .line 162
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setGravity(I)V

    :cond_0
    return-object v0
.end method

.method private issueCode()V
    .locals 2

    const-string v0, "\u6b63\u5728\u8fde\u63a5\u5bb6\u5ead\u4e91\u7aef\u2026"

    .line 184
    invoke-direct {p0, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->busy(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->work:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda21;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private joinFamily()V
    .locals 3

    .line 197
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->joinCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "\u8bf7\u5148\u8f93\u5165\u52a0\u5165\u7801\u3002"

    invoke-direct {p0, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->busy(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "\u6b63\u5728\u9a8c\u8bc1\u52a0\u5165\u7801\u5e76\u8bfb\u53d6\u8bbe\u5907\u5217\u8868\u2026"

    .line 199
    invoke-direct {p0, v1}, Lcom/supertws/dubokutv/FamilySyncPanel;->busy(Ljava/lang/String;)V

    .line 200
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->work:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda16;

    invoke-direct {v2, p0, v0}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda16;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$confirmCleanup$19(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$confirmIssueCode$8(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$syncToggleRow$7(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Z)V
    .locals 0

    if-eqz p3, :cond_0

    const/high16 p2, -0x1000000

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    .line 147
    :goto_0
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 148
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private previewMerge()V
    .locals 4

    .line 212
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->codes()Lorg/json/JSONArray;

    move-result-object v0

    .line 213
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "\u8bf7\u8f93\u5165\u81f3\u5c11\u4e00\u4e2a\u65e7\u5bb6\u5ead\u52a0\u5165\u7801\u3002"

    invoke-direct {p0, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->busy(Ljava/lang/String;)V

    return-void

    .line 214
    :cond_0
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->sourceCodes:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 215
    iput-boolean v2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cleanupReady:Z

    .line 216
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->updateCloudSyncToggle()V

    const-string v2, "\u6b63\u5728\u8bfb\u53d6\u65e7\u5bb6\u5ead\u5feb\u7167\u2026"

    .line 217
    invoke-direct {p0, v2}, Lcom/supertws/dubokutv/FamilySyncPanel;->busy(Ljava/lang/String;)V

    .line 218
    iget-object v2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->work:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda15;

    invoke-direct {v3, p0, v0, v1}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda15;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;Lorg/json/JSONArray;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .line 287
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

    .line 288
    :goto_0
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    new-instance v1, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda0;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private syncToggleRow(Ljava/lang/String;Z)Landroid/widget/LinearLayout;
    .locals 7

    .line 128
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 129
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    .line 130
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v3, 0x18

    const/16 v4, 0x14

    .line 131
    invoke-virtual {v0, v3, v4, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v3, 0x60

    .line 132
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    const/4 v3, 0x1

    .line 133
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 134
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 135
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 136
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

    .line 138
    invoke-direct {p0, p1, v2, v1}, Lcom/supertws/dubokutv/FamilySyncPanel;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object p1

    .line 139
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    const-string v3, ""

    .line 140
    invoke-direct {p0, v3, v2, v1}, Lcom/supertws/dubokutv/FamilySyncPanel;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v2

    .line 141
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    if-eqz p2, :cond_0

    .line 142
    iput-object v2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cloudSyncValue:Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->lanSyncValue:Landroid/widget/TextView;

    .line 143
    :goto_0
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, -0x2

    invoke-direct {p2, v1, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    new-instance p2, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda4;

    invoke-direct {p2, p1, v2}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda4;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-object v0
.end method

.method private text(Ljava/lang/String;IZ)Landroid/widget/TextView;
    .locals 2

    .line 106
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 107
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, -0x1

    .line 108
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    int-to-float p1, p2

    .line 109
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p1, 0x0

    const/16 p2, 0x8

    .line 110
    invoke-virtual {v0, p1, p2, p1, p2}, Landroid/widget/TextView;->setPadding(IIII)V

    if-eqz p3, :cond_0

    .line 111
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_0
    return-object v0
.end method

.method private updateCloudSyncToggle()V
    .locals 6

    .line 292
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-static {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v0

    .line 293
    invoke-virtual {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->isCloudSyncEnabled()Z

    move-result v1

    .line 294
    iget-object v2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cloudSyncValue:Landroid/widget/TextView;

    const-string v3, "\u5df2\u5f00\u542f"

    const-string v4, "\u5df2\u5173\u95ed"

    if-eqz v1, :cond_0

    move-object v5, v3

    goto :goto_0

    :cond_0
    move-object v5, v4

    :goto_0
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->lanSyncValue:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->isLanSyncEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v3, v4

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 296
    :goto_2
    iget-object v3, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 297
    iget-object v3, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->page:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 298
    iget-object v4, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cloudSyncToggle:Landroid/widget/LinearLayout;

    if-eq v3, v4, :cond_6

    iget-object v4, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->lanSyncToggle:Landroid/widget/LinearLayout;

    if-ne v3, v4, :cond_2

    goto :goto_4

    .line 299
    :cond_2
    instance-of v4, v3, Landroid/widget/Button;

    if-eqz v4, :cond_5

    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cleanup:Landroid/widget/Button;

    if-ne v3, v4, :cond_3

    iget-boolean v4, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cleanupReady:Z

    if-eqz v4, :cond_4

    :cond_3
    const/4 v4, 0x1

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_4

    .line 300
    :cond_5
    instance-of v4, v3, Landroid/widget/EditText;

    if-eqz v4, :cond_6

    invoke-virtual {v3, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_6
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method


# virtual methods
.method synthetic lambda$cleanUp$21$com-supertws-dubokutv-FamilySyncPanel()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    .line 274
    iput-boolean v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cleanupReady:Z

    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->updateCloudSyncToggle()V

    return-void
.end method

.method synthetic lambda$cleanUp$22$com-supertws-dubokutv-FamilySyncPanel(Lorg/json/JSONObject;)V
    .locals 2

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6e05\u7406\u5b8c\u6210\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "cleanedFamilies"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " \u4e2a\u65e7\u5bb6\u5ead\u5df2\u5220\u9664\u5e76\u64a4\u9500\u51ed\u636e\u3002"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->busy(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$cleanUp$23$com-supertws-dubokutv-FamilySyncPanel(Lorg/json/JSONArray;)V
    .locals 5

    .line 0
    const-string v0, ""

    .line 270
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

    const/4 v1, 0x0

    .line 271
    iput-boolean v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->previewed:Z

    .line 272
    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->previewedCodes:Ljava/lang/String;

    .line 273
    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->copiedCodes:Ljava/lang/String;

    .line 274
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    new-instance v1, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda19;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 275
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-static {v0}, Lcom/supertws/dubokutv/CloudSyncClient;->fetchOnHistory(Landroid/content/Context;)V

    .line 276
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    new-instance v1, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda20;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "\u6e05\u7406\u65e7\u5bb6\u5ead"

    .line 277
    invoke-direct {p0, v0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->showError(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$confirmCleanup$20$com-supertws-dubokutv-FamilySyncPanel(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 262
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->cleanUp()V

    return-void
.end method

.method synthetic lambda$confirmIssueCode$9$com-supertws-dubokutv-FamilySyncPanel(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 180
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->issueCode()V

    return-void
.end method

.method synthetic lambda$copyMerge$17$com-supertws-dubokutv-FamilySyncPanel(Lorg/json/JSONObject;)V
    .locals 2

    .line 0
    const/4 v0, 0x1

    .line 247
    iput-boolean v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cleanupReady:Z

    .line 248
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->updateCloudSyncToggle()V

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u590d\u5236\u5b8c\u6210\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "copiedSnapshots"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " \u6761\u5feb\u7167\u3002\u8bf7\u6838\u5bf9\u65b0\u5bb6\u5ead\u8fdb\u5ea6\uff1b\u786e\u8ba4\u65e0\u8bef\u540e\u518d\u6e05\u7406\u65e7\u5bb6\u5ead\u3002"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->busy(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$copyMerge$18$com-supertws-dubokutv-FamilySyncPanel(Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 4

    .line 241
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

    const-string v0, "devices"

    .line 242
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 243
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

    .line 244
    :cond_0
    iput-object p2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->copiedCodes:Ljava/lang/String;

    .line 245
    iget-object p2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-static {p2}, Lcom/supertws/dubokutv/CloudSyncClient;->fetchOnHistory(Landroid/content/Context;)V

    .line 246
    iget-object p2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    new-instance v0, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda1;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;Lorg/json/JSONObject;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "\u590d\u5236\u5408\u5e76"

    .line 251
    invoke-direct {p0, p2, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->showError(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method synthetic lambda$issueCode$10$com-supertws-dubokutv-FamilySyncPanel(Ljava/lang/String;)V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->codeDisplay:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "\u52a0\u5165\u7801\u5df2\u751f\u6210\uff1b\u8bb0\u4e0b\u540e\u53ef\u5728\u65b0\u7535\u89c6\u8f93\u5165\u3002\u518d\u6b21\u751f\u6210\u4f1a\u7acb\u5373\u4f7f\u65e7\u7801\u5931\u6548\u3002"

    .line 190
    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->busy(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$issueCode$11$com-supertws-dubokutv-FamilySyncPanel()V
    .locals 3

    .line 187
    :try_start_0
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->createJoinCode()Ljava/lang/String;

    move-result-object v0

    .line 188
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    new-instance v2, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda3;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "\u751f\u6210\u52a0\u5165\u7801"

    .line 192
    invoke-direct {p0, v1, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->showError(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$joinFamily$12$com-supertws-dubokutv-FamilySyncPanel()V
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->currentFamily:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5f53\u524d\u5bb6\u5ead\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-static {v2}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/supertws/dubokutv/FamilyIdentity;->familyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method synthetic lambda$joinFamily$13$com-supertws-dubokutv-FamilySyncPanel()V
    .locals 1

    .line 0
    const-string v0, "\u5df2\u52a0\u5165\u5bb6\u5ead\uff0c\u6b63\u5728\u8bfb\u53d6\u5bb6\u5ead\u8fdb\u5ea6\u3002"

    .line 206
    invoke-direct {p0, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->busy(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$joinFamily$14$com-supertws-dubokutv-FamilySyncPanel(Ljava/lang/String;)V
    .locals 4

    .line 202
    :try_start_0
    invoke-static {p1}, Lcom/supertws/dubokutv/CloudSyncClient;->redeemJoinCode(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 203
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

    .line 204
    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->currentFamily:Landroid/widget/TextView;

    new-instance v0, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda17;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 205
    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-static {p1}, Lcom/supertws/dubokutv/CloudSyncClient;->fetchOnHistory(Landroid/content/Context;)V

    .line 206
    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    new-instance v0, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda18;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "\u52a0\u5165\u5bb6\u5ead"

    .line 207
    invoke-direct {p0, v0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->showError(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$new$0$com-supertws-dubokutv-FamilySyncPanel(Landroid/view/View;)V
    .locals 1

    .line 54
    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-static {p1}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object p1

    .line 55
    invoke-virtual {p1}, Lcom/supertws/dubokutv/FamilyIdentity;->isCloudSyncEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 56
    invoke-virtual {p1, v0}, Lcom/supertws/dubokutv/FamilyIdentity;->setCloudSyncEnabled(Z)V

    .line 57
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->updateCloudSyncToggle()V

    if-eqz v0, :cond_0

    .line 58
    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-static {p1}, Lcom/supertws/dubokutv/CloudSyncClient;->fetchOnHistory(Landroid/content/Context;)V

    :cond_0
    if-eqz v0, :cond_1

    const-string p1, "\u5df2\u5f00\u542f\u5bb6\u5ead\u4e91\u7aef\u540c\u6b65"

    goto :goto_0

    :cond_1
    const-string p1, "\u5df2\u5173\u95ed\u4e91\u7aef\u540c\u6b65\uff08\u4ec5\u4fdd\u7559\u5c40\u57df\u7f51\u540c\u6b65\uff09"

    .line 59
    :goto_0
    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->busy(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$new$1$com-supertws-dubokutv-FamilySyncPanel(Landroid/view/View;)V
    .locals 1

    .line 63
    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-static {p1}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object p1

    .line 64
    invoke-virtual {p1}, Lcom/supertws/dubokutv/FamilyIdentity;->isLanSyncEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 65
    invoke-virtual {p1, v0}, Lcom/supertws/dubokutv/FamilyIdentity;->setLanSyncEnabled(Z)V

    .line 66
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->updateCloudSyncToggle()V

    if-eqz v0, :cond_0

    const-string p1, "\u5df2\u5f00\u542f\u5c40\u57df\u7f51\u7edc\u540c\u6b65"

    goto :goto_0

    :cond_0
    const-string p1, "\u5df2\u5173\u95ed\u5c40\u57df\u7f51\u7edc\u540c\u6b65\uff08\u4ec5\u4f5c\u4e3a\u672c\u5730\u64ad\u653e\u5668\uff09"

    .line 67
    :goto_0
    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->busy(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$new$2$com-supertws-dubokutv-FamilySyncPanel(Landroid/view/View;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->confirmIssueCode()V

    return-void
.end method

.method synthetic lambda$new$3$com-supertws-dubokutv-FamilySyncPanel(Landroid/view/View;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->joinFamily()V

    return-void
.end method

.method synthetic lambda$new$4$com-supertws-dubokutv-FamilySyncPanel(Landroid/view/View;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->previewMerge()V

    return-void
.end method

.method synthetic lambda$new$5$com-supertws-dubokutv-FamilySyncPanel(Landroid/view/View;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->copyMerge()V

    return-void
.end method

.method synthetic lambda$new$6$com-supertws-dubokutv-FamilySyncPanel(Landroid/view/View;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->confirmCleanup()V

    return-void
.end method

.method synthetic lambda$previewMerge$15$com-supertws-dubokutv-FamilySyncPanel(Lorg/json/JSONObject;)V
    .locals 2

    .line 225
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->updateCloudSyncToggle()V

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u9884\u89c8\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "families"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \u4e2a\u5bb6\u5ead\u3001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "snapshots"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \u6761\u8bbe\u5907\u5feb\u7167\u3001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "records"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " \u6761\u8bb0\u5f55\u3002\u5f53\u524d\u5bb6\u5ead ID \u5fc5\u987b\u662f\u53c2\u4e0e\u5bb6\u5ead\u4e2d\u6700\u5c0f\u7684 ID\u3002"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->busy(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$previewMerge$16$com-supertws-dubokutv-FamilySyncPanel(Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 4

    .line 220
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

    const/4 v0, 0x1

    .line 221
    iput-boolean v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->previewed:Z

    .line 222
    iput-object p2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->previewedCodes:Ljava/lang/String;

    const-string p2, ""

    .line 223
    iput-object p2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->copiedCodes:Ljava/lang/String;

    .line 224
    iget-object p2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    new-instance v0, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda2;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;Lorg/json/JSONObject;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "\u9884\u89c8\u5408\u5e76"

    .line 228
    invoke-direct {p0, p2, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->showError(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$showError$24$com-supertws-dubokutv-FamilySyncPanel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u5931\u8d25\uff1a"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u3002\u68c0\u67e5\u7f51\u7edc\u3001Worker \u90e8\u7f72\u72b6\u6001\u548c\u52a0\u5165\u7801\u540e\u91cd\u8bd5\u3002"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->busy(Ljava/lang/String;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->work:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 283
    invoke-super {p0}, Landroid/widget/ScrollView;->onDetachedFromWindow()V

    return-void
.end method
