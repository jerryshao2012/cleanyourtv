.class public final Lcom/supertws/dubokutv/FamilySyncPanel;
.super Landroid/widget/ScrollView;
.source "FamilySyncPanel.java"


# instance fields
.field private cleanup:Landroid/widget/Button;

.field private cloudSyncToggle:Landroid/widget/Button;

.field private codeDisplay:Landroid/widget/TextView;

.field private copiedCodes:Ljava/lang/String;

.field private currentFamily:Landroid/widget/TextView;

.field private final host:Landroid/app/Activity;

.field private joinCode:Landroid/widget/EditText;

.field private previewed:Z

.field private previewedCodes:Ljava/lang/String;

.field private sourceCodes:Landroid/widget/EditText;

.field private status:Landroid/widget/TextView;

.field private final work:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static synthetic $r8$lambda$4a1yXQG2SQr33L0UnL8-_rTh1TE(Lcom/supertws/dubokutv/FamilySyncPanel;Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/supertws/dubokutv/FamilySyncPanel;->lambda$copyMerge$16(Lorg/json/JSONArray;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AnfPIVi-mpnDor4CyRq_fmUOLJI(Lcom/supertws/dubokutv/FamilySyncPanel;Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/supertws/dubokutv/FamilySyncPanel;->lambda$previewMerge$14(Lorg/json/JSONArray;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$F9iZZtyZNMf86e0M8DdNoI4nnd0(Lcom/supertws/dubokutv/FamilySyncPanel;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/supertws/dubokutv/FamilySyncPanel;->lambda$confirmIssueCode$7(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$H0gKqHXnuISZNdLY6rqVFEXX5G8(Lcom/supertws/dubokutv/FamilySyncPanel;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$N0FDpZ9A318tXlbJw3a8gZKxBo0(Lcom/supertws/dubokutv/FamilySyncPanel;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->lambda$cleanUp$21(Lorg/json/JSONArray;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OgPsRFiAf55ksuAdO74YJ0G6te0(Lcom/supertws/dubokutv/FamilySyncPanel;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->lambda$cleanUp$20(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RPz9xAobcvLAWsUE2d_X3o9Z3ng(Lcom/supertws/dubokutv/FamilySyncPanel;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->lambda$previewMerge$13(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$S1uDfugjuvdXDERSr-BU2emzLlo(Lcom/supertws/dubokutv/FamilySyncPanel;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->lambda$new$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$V-Xw6cP3Uq6LNJuXLxs9b5-qkc0(Lcom/supertws/dubokutv/FamilySyncPanel;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/supertws/dubokutv/FamilySyncPanel;->lambda$confirmCleanup$18(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$YyGK17G6EglGD5Nzx9h9Q2_IZv4(Lcom/supertws/dubokutv/FamilySyncPanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->lambda$cleanUp$19()V

    return-void
.end method

.method public static synthetic $r8$lambda$_VxJ5bUjp7UjRUTYiL92yvSr6uo(Lcom/supertws/dubokutv/FamilySyncPanel;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->lambda$joinFamily$12(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fpQ1nu0duXxfdk5kL1h8wpgjox8(Lcom/supertws/dubokutv/FamilySyncPanel;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->lambda$new$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jySuH2tIKIxQFN9y8ZpKauD0KLc(Lcom/supertws/dubokutv/FamilySyncPanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->lambda$issueCode$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$m09KqiLOM4bMB9lyBC3URZxdpaI(Lcom/supertws/dubokutv/FamilySyncPanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->lambda$joinFamily$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$tGIh6I79e73cIyQWun3XoZEdi3A(Lcom/supertws/dubokutv/FamilySyncPanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->lambda$joinFamily$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$tzt8nwUcPEC3kNIramYQDxJLs_A(Lcom/supertws/dubokutv/FamilySyncPanel;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->lambda$copyMerge$15(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uKLHaAylqjRSovzX4Iax_bEYD_g(Lcom/supertws/dubokutv/FamilySyncPanel;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->lambda$issueCode$8(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ub0EOIhAK_9ED6sNB480EKf3Zq8(Lcom/supertws/dubokutv/FamilySyncPanel;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->lambda$new$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uf8aAvBChOYgClYk27imyEx6Ydw(Lcom/supertws/dubokutv/FamilySyncPanel;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v4Mf1BJhrKIWNtGOJve4Z4Mu6no(Lcom/supertws/dubokutv/FamilySyncPanel;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xBOvvrtFo4dZ336rvy44wltlAX0(Lcom/supertws/dubokutv/FamilySyncPanel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/supertws/dubokutv/FamilySyncPanel;->lambda$showError$22(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->work:Ljava/util/concurrent/ExecutorService;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->previewedCodes:Ljava/lang/String;

    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->copiedCodes:Ljava/lang/String;

    .line 33
    move-object v1, p1

    .line 34
    :goto_0
    instance-of v2, v1, Landroid/app/Activity;

    if-nez v2, :cond_0

    instance-of v3, v1, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_0

    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    .line 35
    :cond_0
    if-eqz v2, :cond_1

    .line 36
    check-cast v1, Landroid/app/Activity;

    iput-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    .line 37
    invoke-static {v1}, Lcom/supertws/dubokutv/CloudSyncClient;->initialize(Landroid/content/Context;)V

    .line 38
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/supertws/dubokutv/FamilySyncPanel;->setFillViewport(Z)V

    .line 39
    const/16 v3, 0x18

    const/16 v4, 0x14

    invoke-static {v4, v4, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/supertws/dubokutv/FamilySyncPanel;->setBackgroundColor(I)V

    .line 40
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 42
    const/16 p1, 0x20

    invoke-virtual {v3, p1, v4, p1, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 43
    invoke-virtual {p0, v3}, Lcom/supertws/dubokutv/FamilySyncPanel;->addView(Landroid/view/View;)V

    .line 45
    const-string p1, "\u5bb6\u5ead\u8bbe\u7f6e"

    const/16 v5, 0x1c

    invoke-direct {p0, p1, v5, v2}, Lcom/supertws/dubokutv/FamilySyncPanel;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 46
    invoke-direct {p0, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object p1

    iput-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cloudSyncToggle:Landroid/widget/Button;

    .line 47
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->updateCloudSyncToggle()V

    .line 48
    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cloudSyncToggle:Landroid/widget/Button;

    new-instance v0, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda6;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cloudSyncToggle:Landroid/widget/Button;

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 56
    const-string p1, "\u7ba1\u7406\u5bb6\u5ead\u52a0\u5165\u7801\u3001\u52a0\u5165\u5176\u4ed6\u7535\u89c6\uff0c\u6216\u5b89\u5168\u5408\u5e76\u65e7\u5bb6\u5ead\u3002"

    const/16 v0, 0x10

    const/4 v5, 0x0

    invoke-direct {p0, p1, v0, v5}, Lcom/supertws/dubokutv/FamilySyncPanel;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 57
    invoke-static {v1}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/supertws/dubokutv/FamilyIdentity;->familyId()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5f53\u524d\u5bb6\u5ead\uff1a"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0xf

    invoke-direct {p0, p1, v1, v5}, Lcom/supertws/dubokutv/FamilySyncPanel;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object p1

    iput-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->currentFamily:Landroid/widget/TextView;

    .line 58
    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 60
    const-string p1, "\u751f\u6210 / \u66f4\u6362\u52a0\u5165\u7801\uff08\u65e7\u7801\u7acb\u5373\u5931\u6548\uff09"

    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object p1

    .line 61
    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 62
    new-instance v1, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda7;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    const-string p1, "\u52a0\u5165\u7801\u5c1a\u672a\u751f\u6210"

    const/16 v1, 0x16

    invoke-direct {p0, p1, v1, v2}, Lcom/supertws/dubokutv/FamilySyncPanel;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object p1

    iput-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->codeDisplay:Landroid/widget/TextView;

    .line 64
    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 66
    const-string p1, "\u65b0\u7535\u89c6\u52a0\u5165\u5f53\u524d\u5bb6\u5ead"

    invoke-direct {p0, p1, v4, v2}, Lcom/supertws/dubokutv/FamilySyncPanel;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 67
    const-string p1, "\u8f93\u5165\u52a0\u5165\u7801\uff0c\u4f8b\u5982 ABCD-EFGH-JKLM-NPQR"

    invoke-direct {p0, p1, v5}, Lcom/supertws/dubokutv/FamilySyncPanel;->input(Ljava/lang/String;Z)Landroid/widget/EditText;

    move-result-object p1

    iput-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->joinCode:Landroid/widget/EditText;

    .line 68
    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 69
    const-string p1, "\u52a0\u5165\u5e76\u540c\u6b65\u5bb6\u5ead\u8fdb\u5ea6"

    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object p1

    .line 70
    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 71
    new-instance v1, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda8;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const-string v1, "\u5408\u5e76\u5176\u4ed6 familyId \u5230\u5f53\u524d\u5bb6\u5ead"

    invoke-direct {p0, v1, v4, v2}, Lcom/supertws/dubokutv/FamilySyncPanel;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 74
    const-string v1, "\u6bcf\u884c\u4e00\u4e2a\u65e7\u5bb6\u5ead\u52a0\u5165\u7801"

    invoke-direct {p0, v1, v2}, Lcom/supertws/dubokutv/FamilySyncPanel;->input(Ljava/lang/String;Z)Landroid/widget/EditText;

    move-result-object v1

    iput-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->sourceCodes:Landroid/widget/EditText;

    .line 75
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 76
    const-string v1, "\u9884\u89c8\u65e7\u5bb6\u5ead\u8bb0\u5f55"

    invoke-direct {p0, v1}, Lcom/supertws/dubokutv/FamilySyncPanel;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    .line 77
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 78
    new-instance v2, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda9;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    const-string v1, "\u590d\u5236\u8bb0\u5f55\u5230\u5f53\u524d\u5bb6\u5ead"

    invoke-direct {p0, v1}, Lcom/supertws/dubokutv/FamilySyncPanel;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    .line 80
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 81
    new-instance v2, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda10;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    const-string v1, "\u786e\u8ba4\u6e05\u7406\u65e7 familyId \u548c\u5feb\u7167"

    invoke-direct {p0, v1}, Lcom/supertws/dubokutv/FamilySyncPanel;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cleanup:Landroid/widget/Button;

    .line 83
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 84
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cleanup:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 85
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cleanup:Landroid/widget/Button;

    new-instance v2, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda11;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const-string v1, "\u5c31\u7eea"

    invoke-direct {p0, v1, v0, v5}, Lcom/supertws/dubokutv/FamilySyncPanel;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->status:Landroid/widget/TextView;

    .line 87
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void

    .line 35
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Family panel requires an Activity context"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private busy(Ljava/lang/String;)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->status:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private button(Ljava/lang/String;)Landroid/widget/Button;
    .locals 4

    .line 102
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 103
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 104
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 105
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    .line 106
    const/high16 p1, 0x41800000    # 16.0f

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextSize(F)V

    .line 107
    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "family_sync_button_text"

    const-string v3, "color"

    invoke-virtual {p1, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 109
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

    .line 109
    return-object v0
.end method

.method private cleanUp()V
    .locals 3

    .line 222
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->codes()Lorg/json/JSONArray;

    move-result-object v0

    .line 223
    const-string v1, "\u6b63\u5728\u6e05\u7406\u65e7\u5bb6\u5ead\u4e91\u7aef\u5feb\u7167\u2026"

    invoke-direct {p0, v1}, Lcom/supertws/dubokutv/FamilySyncPanel;->busy(Ljava/lang/String;)V

    .line 224
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->work:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda3;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;Lorg/json/JSONArray;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 235
    return-void
.end method

.method private codes()Lorg/json/JSONArray;
    .locals 6

    .line 127
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 128
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

    .line 129
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 128
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 130
    :cond_1
    return-object v0
.end method

.method private confirmCleanup()V
    .locals 3

    .line 212
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

    .line 215
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u6c38\u4e45\u6e05\u7406\u65e7\u5bb6\u5ead\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 216
    const-string v1, "\u65e7\u5bb6\u5ead\u5feb\u7167\u5c06\u88ab\u5220\u9664\uff0c\u65e7 familyId \u51ed\u636e\u5c06\u5931\u6548\u3002\u8bf7\u786e\u8ba4\u65b0\u5bb6\u5ead\u5df2\u663e\u793a\u5e76\u53ef\u7ee7\u7eed\u64ad\u653e\u65e7\u8fdb\u5ea6\u3002"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda20;

    invoke-direct {v1}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda20;-><init>()V

    .line 217
    const-string v2, "\u53d6\u6d88"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda21;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V

    .line 218
    const-string v2, "\u590d\u5236\u5df2\u6838\u9a8c\uff0c\u6c38\u4e45\u6e05\u7406"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 219
    return-void

    .line 213
    :cond_1
    :goto_0
    const-string v0, "\u52a0\u5165\u7801\u4e0e\u4e0a\u6b21\u590d\u5236\u4e0d\u4e00\u81f4\uff0c\u8bf7\u91cd\u65b0\u9884\u89c8\u5e76\u590d\u5236\u3002"

    invoke-direct {p0, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->busy(Ljava/lang/String;)V

    return-void
.end method

.method private confirmIssueCode()V
    .locals 3

    .line 136
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u751f\u6210\u65b0\u7684\u5bb6\u5ead\u52a0\u5165\u7801\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 137
    const-string v1, "\u751f\u6210\u540e\uff0c\u5f53\u524d\u65e7\u52a0\u5165\u7801\u4f1a\u7acb\u5373\u5931\u6548\u3002\u786e\u8ba4\u8981\u66f4\u6362\u5417\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda4;-><init>()V

    .line 138
    const-string v2, "\u53d6\u6d88"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda5;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V

    .line 139
    const-string v2, "\u786e\u8ba4\u66f4\u6362"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 140
    return-void
.end method

.method private copyMerge()V
    .locals 4

    .line 190
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->codes()Lorg/json/JSONArray;

    move-result-object v0

    .line 191
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

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->sourceCodes:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 195
    const-string v2, "\u6b63\u5728\u590d\u5236\u5408\u5e76\u5feb\u7167\u2026"

    invoke-direct {p0, v2}, Lcom/supertws/dubokutv/FamilySyncPanel;->busy(Ljava/lang/String;)V

    .line 196
    iget-object v2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->work:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda22;

    invoke-direct {v3, p0, v0, v1}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda22;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;Lorg/json/JSONArray;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 209
    return-void

    .line 192
    :cond_1
    :goto_0
    const-string v0, "\u8bf7\u5148\u9884\u89c8\u5f53\u524d\u8f93\u5165\u7684\u65e7\u5bb6\u5ead\u52a0\u5165\u7801\u3002"

    invoke-direct {p0, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->busy(Ljava/lang/String;)V

    return-void
.end method

.method private input(Ljava/lang/String;Z)Landroid/widget/EditText;
    .locals 2

    .line 113
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 114
    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 115
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 116
    const/4 p1, -0x1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 117
    const p1, -0x333334

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 118
    const/high16 p1, 0x41800000    # 16.0f

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 119
    if-eqz p2, :cond_0

    .line 120
    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setMinLines(I)V

    .line 121
    const p1, 0x800033

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setGravity(I)V

    .line 123
    :cond_0
    return-object v0
.end method

.method private issueCode()V
    .locals 2

    .line 143
    const-string v0, "\u6b63\u5728\u8fde\u63a5\u5bb6\u5ead\u4e91\u7aef\u2026"

    invoke-direct {p0, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->busy(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->work:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda19;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 153
    return-void
.end method

.method private joinFamily()V
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->joinCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "\u8bf7\u5148\u8f93\u5165\u52a0\u5165\u7801\u3002"

    invoke-direct {p0, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->busy(Ljava/lang/String;)V

    return-void

    .line 158
    :cond_0
    const-string v1, "\u6b63\u5728\u9a8c\u8bc1\u52a0\u5165\u7801\u5e76\u8bfb\u53d6\u8bbe\u5907\u5217\u8868\u2026"

    invoke-direct {p0, v1}, Lcom/supertws/dubokutv/FamilySyncPanel;->busy(Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->work:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda16;

    invoke-direct {v2, p0, v0}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda16;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 168
    return-void
.end method

.method private synthetic lambda$cleanUp$19()V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cleanup:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private synthetic lambda$cleanUp$20(Lorg/json/JSONObject;)V
    .locals 2

    .line 232
    const-string v0, "cleanedFamilies"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6e05\u7406\u5b8c\u6210\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " \u4e2a\u65e7\u5bb6\u5ead\u5df2\u5220\u9664\u5e76\u64a4\u9500\u51ed\u636e\u3002"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->busy(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$cleanUp$21(Lorg/json/JSONArray;)V
    .locals 5

    .line 226
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

    .line 227
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->previewed:Z

    .line 228
    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->previewedCodes:Ljava/lang/String;

    .line 229
    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->copiedCodes:Ljava/lang/String;

    .line 230
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cleanup:Landroid/widget/Button;

    new-instance v1, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda1;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->post(Ljava/lang/Runnable;)Z

    .line 231
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-static {v0}, Lcom/supertws/dubokutv/CloudSyncClient;->fetchOnHistory(Landroid/content/Context;)V

    .line 232
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    new-instance v1, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda2;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "\u6e05\u7406\u65e7\u5bb6\u5ead"

    invoke-direct {p0, v0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->showError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 234
    :goto_0
    return-void
.end method

.method static synthetic lambda$confirmCleanup$17(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 217
    return-void
.end method

.method private synthetic lambda$confirmCleanup$18(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 218
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->cleanUp()V

    return-void
.end method

.method static synthetic lambda$confirmIssueCode$6(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 138
    return-void
.end method

.method private synthetic lambda$confirmIssueCode$7(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 139
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->issueCode()V

    return-void
.end method

.method private synthetic lambda$copyMerge$15(Lorg/json/JSONObject;)V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cleanup:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 205
    const-string v0, "copiedSnapshots"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u590d\u5236\u5b8c\u6210\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " \u6761\u5feb\u7167\u3002\u8bf7\u6838\u5bf9\u65b0\u5bb6\u5ead\u8fdb\u5ea6\uff1b\u786e\u8ba4\u65e0\u8bef\u540e\u518d\u6e05\u7406\u65e7\u5bb6\u5ead\u3002"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->busy(Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method private synthetic lambda$copyMerge$16(Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 4

    .line 198
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

    .line 199
    const-string v0, "devices"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 200
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

    .line 201
    :cond_0
    iput-object p2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->copiedCodes:Ljava/lang/String;

    .line 202
    iget-object p2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-static {p2}, Lcom/supertws/dubokutv/CloudSyncClient;->fetchOnHistory(Landroid/content/Context;)V

    .line 203
    iget-object p2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    new-instance v0, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda18;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;Lorg/json/JSONObject;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "\u590d\u5236\u5408\u5e76"

    invoke-direct {p0, p2, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->showError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 208
    :goto_1
    return-void
.end method

.method private synthetic lambda$issueCode$8(Ljava/lang/String;)V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->codeDisplay:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    const-string p1, "\u52a0\u5165\u7801\u5df2\u751f\u6210\uff1b\u8bb0\u4e0b\u540e\u53ef\u5728\u65b0\u7535\u89c6\u8f93\u5165\u3002\u518d\u6b21\u751f\u6210\u4f1a\u7acb\u5373\u4f7f\u65e7\u7801\u5931\u6548\u3002"

    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->busy(Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method private synthetic lambda$issueCode$9()V
    .locals 3

    .line 146
    :try_start_0
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->createJoinCode()Ljava/lang/String;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    new-instance v2, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0, v0}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda15;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "\u751f\u6210\u52a0\u5165\u7801"

    invoke-direct {p0, v1, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->showError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 152
    :goto_0
    return-void
.end method

.method private synthetic lambda$joinFamily$10()V
    .locals 4

    .line 163
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->currentFamily:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-static {v1}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/supertws/dubokutv/FamilyIdentity;->familyId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f53\u524d\u5bb6\u5ead\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$joinFamily$11()V
    .locals 1

    .line 165
    const-string v0, "\u5df2\u52a0\u5165\u5bb6\u5ead\uff0c\u6b63\u5728\u8bfb\u53d6\u5bb6\u5ead\u8fdb\u5ea6\u3002"

    invoke-direct {p0, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->busy(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$joinFamily$12(Ljava/lang/String;)V
    .locals 4

    .line 161
    :try_start_0
    invoke-static {p1}, Lcom/supertws/dubokutv/CloudSyncClient;->redeemJoinCode(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 162
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

    .line 163
    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->currentFamily:Landroid/widget/TextView;

    new-instance v0, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda13;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 164
    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-static {p1}, Lcom/supertws/dubokutv/CloudSyncClient;->fetchOnHistory(Landroid/content/Context;)V

    .line 165
    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    new-instance v0, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda14;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "\u52a0\u5165\u5bb6\u5ead"

    invoke-direct {p0, v0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->showError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 167
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1

    .line 49
    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-static {p1}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object p1

    .line 50
    invoke-virtual {p1}, Lcom/supertws/dubokutv/FamilyIdentity;->isCloudSyncEnabled()Z

    move-result v0

    .line 51
    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/supertws/dubokutv/FamilyIdentity;->setCloudSyncEnabled(Z)V

    .line 52
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->updateCloudSyncToggle()V

    .line 53
    if-eqz v0, :cond_0

    const-string p1, "\u5df2\u5f00\u542f\u5bb6\u5ead\u4e91\u7aef\u540c\u6b65"

    goto :goto_0

    :cond_0
    const-string p1, "\u5df2\u5173\u95ed\u4e91\u7aef\u540c\u6b65\uff08\u4ec5\u4fdd\u7559\u5c40\u57df\u7f51\u540c\u6b65\uff09"

    :goto_0
    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->busy(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->confirmIssueCode()V

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->joinFamily()V

    return-void
.end method

.method private synthetic lambda$new$3(Landroid/view/View;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->previewMerge()V

    return-void
.end method

.method private synthetic lambda$new$4(Landroid/view/View;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->copyMerge()V

    return-void
.end method

.method private synthetic lambda$new$5(Landroid/view/View;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->confirmCleanup()V

    return-void
.end method

.method private synthetic lambda$previewMerge$13(Lorg/json/JSONObject;)V
    .locals 4

    .line 182
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cleanup:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 183
    const-string v0, "families"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "snapshots"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "records"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u9884\u89c8\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u4e2a\u5bb6\u5ead\u3001"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u6761\u8bbe\u5907\u5feb\u7167\u3001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " \u6761\u8bb0\u5f55\u3002\u5f53\u524d\u5bb6\u5ead ID \u5fc5\u987b\u662f\u53c2\u4e0e\u5bb6\u5ead\u4e2d\u6700\u5c0f\u7684 ID\u3002"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->busy(Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method private synthetic lambda$previewMerge$14(Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 4

    .line 177
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

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->previewed:Z

    .line 179
    iput-object p2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->previewedCodes:Ljava/lang/String;

    .line 180
    const-string p2, ""

    iput-object p2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->copiedCodes:Ljava/lang/String;

    .line 181
    iget-object p2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    new-instance v0, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda17;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;Lorg/json/JSONObject;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "\u9884\u89c8\u5408\u5e76"

    invoke-direct {p0, p2, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->showError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 186
    :goto_0
    return-void
.end method

.method private synthetic lambda$showError$22(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 244
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

.method private previewMerge()V
    .locals 4

    .line 171
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncPanel;->codes()Lorg/json/JSONArray;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "\u8bf7\u8f93\u5165\u81f3\u5c11\u4e00\u4e2a\u65e7\u5bb6\u5ead\u52a0\u5165\u7801\u3002"

    invoke-direct {p0, v0}, Lcom/supertws/dubokutv/FamilySyncPanel;->busy(Ljava/lang/String;)V

    return-void

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->sourceCodes:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 174
    const-string v2, "\u6b63\u5728\u8bfb\u53d6\u65e7\u5bb6\u5ead\u5feb\u7167\u2026"

    invoke-direct {p0, v2}, Lcom/supertws/dubokutv/FamilySyncPanel;->busy(Ljava/lang/String;)V

    .line 175
    iget-object v2, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->work:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda12;

    invoke-direct {v3, p0, v0, v1}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda12;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;Lorg/json/JSONArray;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 187
    return-void
.end method

.method private showError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .line 243
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

    .line 244
    :goto_0
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    new-instance v1, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/supertws/dubokutv/FamilySyncPanel$$ExternalSyntheticLambda0;-><init>(Lcom/supertws/dubokutv/FamilySyncPanel;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 245
    return-void
.end method

.method private text(Ljava/lang/String;IZ)Landroid/widget/TextView;
    .locals 2

    .line 92
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 93
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    const/4 p1, -0x1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    int-to-float p1, p2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 96
    const/4 p1, 0x0

    const/16 p2, 0x8

    invoke-virtual {v0, p1, p2, p1, p2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 97
    if-eqz p3, :cond_0

    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 98
    :cond_0
    return-object v0
.end method

.method private updateCloudSyncToggle()V
    .locals 4

    .line 248
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->host:Landroid/app/Activity;

    invoke-static {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->isCloudSyncEnabled()Z

    move-result v0

    .line 249
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->cloudSyncToggle:Landroid/widget/Button;

    if-eqz v0, :cond_0

    const-string v0, "\u5df2\u5f00\u542f"

    goto :goto_0

    :cond_0
    const-string v0, "\u5df2\u5173\u95ed"

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4e91\u7aef\u540c\u6b65\u8bbe\u7f6e\uff1a["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] \uff08\u70b9\u51fb\u5207\u6362\uff0c\u5173\u95ed\u540e\u4ec5\u5c40\u57df\u7f51\u540c\u6b65\uff09"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 250
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncPanel;->work:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 239
    invoke-super {p0}, Landroid/widget/ScrollView;->onDetachedFromWindow()V

    .line 240
    return-void
.end method
