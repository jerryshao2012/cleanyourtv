.class public final Lcom/supertws/dubokutv/FamilySyncActivity;
.super Landroid/app/Activity;
.source "FamilySyncActivity.java"


# instance fields
.field private cleanup:Landroid/widget/Button;

.field private cloudSyncToggle:Landroid/widget/Button;

.field private codeDisplay:Landroid/widget/TextView;

.field private copiedCodes:Ljava/lang/String;

.field private currentFamily:Landroid/widget/TextView;

.field private joinCode:Landroid/widget/EditText;

.field private previewed:Z

.field private previewedCodes:Ljava/lang/String;

.field private sourceCodes:Landroid/widget/EditText;

.field private status:Landroid/widget/TextView;

.field private final work:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static synthetic $r8$lambda$-FhSaq0h9SxOZ2qQctejUf_GDdE(Lcom/supertws/dubokutv/FamilySyncActivity;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncActivity;->lambda$copyMerge$15(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5i7MbwnsW52r9HRMBFI8AyKtKZ8(Lcom/supertws/dubokutv/FamilySyncActivity;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncActivity;->lambda$cleanUp$20(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5yR_GtkAXKaq36Iv1-PrlEA-DaY(Lcom/supertws/dubokutv/FamilySyncActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/supertws/dubokutv/FamilySyncActivity;->lambda$confirmIssueCode$7(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$F91SSvtUjkmqHtfwiU3g3qeyfzI(Lcom/supertws/dubokutv/FamilySyncActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/supertws/dubokutv/FamilySyncActivity;->lambda$confirmCleanup$18(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$GkWH9zuSyWqUxPe-KmIJqvkgMJU(Lcom/supertws/dubokutv/FamilySyncActivity;Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/supertws/dubokutv/FamilySyncActivity;->lambda$previewMerge$14(Lorg/json/JSONArray;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JuWK_zhabSSRLTqgRmlO_pqKDLg(Lcom/supertws/dubokutv/FamilySyncActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncActivity;->lambda$joinFamily$12(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MCr7KL3-C9uMKvbEkcF1F6d4yhk(Lcom/supertws/dubokutv/FamilySyncActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncActivity;->lambda$onCreate$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NtB199OgiqHcf2K6ubXJGZABCxE(Lcom/supertws/dubokutv/FamilySyncActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncActivity;->lambda$cleanUp$19()V

    return-void
.end method

.method public static synthetic $r8$lambda$Y2W-zI4cXzwLkJQ3b6JorPSJlvw(Lcom/supertws/dubokutv/FamilySyncActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncActivity;->lambda$onCreate$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZQVAD2iCXSdIvXXJaSDLYMGi2gk(Lcom/supertws/dubokutv/FamilySyncActivity;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncActivity;->lambda$cleanUp$21(Lorg/json/JSONArray;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZcDktSCkfursTmFPzNHvNqhLxGk(Lcom/supertws/dubokutv/FamilySyncActivity;Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/supertws/dubokutv/FamilySyncActivity;->lambda$copyMerge$16(Lorg/json/JSONArray;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bp3WCG7yDiD1ohBjHhKPGARyKoI(Lcom/supertws/dubokutv/FamilySyncActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncActivity;->lambda$issueCode$8(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gf-dj0GD4HvAYDmJa04fwlRvZ7Q(Lcom/supertws/dubokutv/FamilySyncActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncActivity;->lambda$onCreate$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jbWbJxJYty5IbirdDjdy9-zAvlE(Lcom/supertws/dubokutv/FamilySyncActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncActivity;->lambda$onCreate$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jbz3tNMhBZ38Xam8jm9Jl36QKjM(Lcom/supertws/dubokutv/FamilySyncActivity;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncActivity;->lambda$previewMerge$13(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kCipcOjKtMAX5A26Ys_ZJbl15v4(Lcom/supertws/dubokutv/FamilySyncActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncActivity;->lambda$joinFamily$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$nOt4xC2WqPO7dvaH0IHFS9uscsc(Lcom/supertws/dubokutv/FamilySyncActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncActivity;->lambda$issueCode$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$s-d7vfIRokwzzHJGg6C6X4CAPAs(Lcom/supertws/dubokutv/FamilySyncActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/supertws/dubokutv/FamilySyncActivity;->lambda$showError$22(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tpWCheMAkViTuT7AhQqlSJvtb-E(Lcom/supertws/dubokutv/FamilySyncActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncActivity;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$udqaoS8bW89NaftJIt-Q7Xros78(Lcom/supertws/dubokutv/FamilySyncActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncActivity;->lambda$joinFamily$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$wx9apFbltpuA8nDQ795VL9-0kUQ(Lcom/supertws/dubokutv/FamilySyncActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncActivity;->lambda$onCreate$2(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 22
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncActivity;->work:Ljava/util/concurrent/ExecutorService;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncActivity;->previewedCodes:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncActivity;->copiedCodes:Ljava/lang/String;

    return-void
.end method

.method private busy(Ljava/lang/String;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncActivity;->status:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private button(Ljava/lang/String;)Landroid/widget/Button;
    .locals 4

    .line 71
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setFocusable(Z)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    const/high16 p1, 0x41900000    # 18.0f

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextSize(F)V

    .line 72
    const/4 p1, -0x1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 73
    invoke-virtual {p0}, Lcom/supertws/dubokutv/FamilySyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v1, "drawable"

    invoke-virtual {p0}, Lcom/supertws/dubokutv/FamilySyncActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "family_sync_button_focus"

    invoke-virtual {p1, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 74
    return-object v0
.end method

.method private cleanUp()V
    .locals 3

    .line 138
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncActivity;->codes()Lorg/json/JSONArray;

    move-result-object v0

    const-string v1, "\u6b63\u5728\u6e05\u7406\u65e7\u5bb6\u5ead\u4e91\u7aef\u5feb\u7167\u2026"

    invoke-direct {p0, v1}, Lcom/supertws/dubokutv/FamilySyncActivity;->busy(Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncActivity;->work:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/supertws/dubokutv/FamilySyncActivity$$ExternalSyntheticLambda22;

    invoke-direct {v2, p0, v0}, Lcom/supertws/dubokutv/FamilySyncActivity$$ExternalSyntheticLambda22;-><init>(Lcom/supertws/dubokutv/FamilySyncActivity;Lorg/json/JSONArray;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 145
    return-void
.end method

.method private codes()Lorg/json/JSONArray;
    .locals 6

    .line 82
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 83
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncActivity;->sourceCodes:Landroid/widget/EditText;

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

    .line 84
    :cond_1
    return-object v0
.end method

.method private confirmCleanup()V
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncActivity;->copiedCodes:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncActivity;->copiedCodes:Ljava/lang/String;

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncActivity;->sourceCodes:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u6c38\u4e45\u6e05\u7406\u65e7\u5bb6\u5ead\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 134
    const-string v1, "\u65e7\u5bb6\u5ead\u5feb\u7167\u5c06\u88ab\u5220\u9664\uff0c\u65e7 familyId \u51ed\u636e\u5c06\u5931\u6548\u3002\u8bf7\u786e\u8ba4\u65b0\u5bb6\u5ead\u5df2\u663e\u793a\u5e76\u53ef\u7ee7\u7eed\u64ad\u653e\u65e7\u8fdb\u5ea6\u3002"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/supertws/dubokutv/FamilySyncActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/supertws/dubokutv/FamilySyncActivity$$ExternalSyntheticLambda7;-><init>()V

    .line 135
    const-string v2, "\u53d6\u6d88"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/supertws/dubokutv/FamilySyncActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/supertws/dubokutv/FamilySyncActivity$$ExternalSyntheticLambda8;-><init>(Lcom/supertws/dubokutv/FamilySyncActivity;)V

    const-string v2, "\u590d\u5236\u5df2\u6838\u9a8c\uff0c\u6c38\u4e45\u6e05\u7406"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 136
    return-void

    .line 132
    :cond_1
    :goto_0
    const-string v0, "\u52a0\u5165\u7801\u4e0e\u4e0a\u6b21\u590d\u5236\u4e0d\u4e00\u81f4\uff0c\u8bf7\u91cd\u65b0\u9884\u89c8\u5e76\u590d\u5236\u3002"

    invoke-direct {p0, v0}, Lcom/supertws/dubokutv/FamilySyncActivity;->busy(Ljava/lang/String;)V

    return-void
.end method

.method private confirmIssueCode()V
    .locals 3

    .line 88
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u751f\u6210\u65b0\u7684\u5bb6\u5ead\u52a0\u5165\u7801\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 89
    const-string v1, "\u751f\u6210\u540e\uff0c\u5f53\u524d\u65e7\u52a0\u5165\u7801\u4f1a\u7acb\u5373\u5931\u6548\u3002\u786e\u8ba4\u8981\u66f4\u6362\u5417\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/supertws/dubokutv/FamilySyncActivity$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lcom/supertws/dubokutv/FamilySyncActivity$$ExternalSyntheticLambda9;-><init>()V

    .line 90
    const-string v2, "\u53d6\u6d88"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/supertws/dubokutv/FamilySyncActivity$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/supertws/dubokutv/FamilySyncActivity$$ExternalSyntheticLambda10;-><init>(Lcom/supertws/dubokutv/FamilySyncActivity;)V

    .line 91
    const-string v2, "\u786e\u8ba4\u66f4\u6362"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 92
    return-void
.end method

.method private copyMerge()V
    .locals 4

    .line 121
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncActivity;->codes()Lorg/json/JSONArray;

    move-result-object v0

    iget-boolean v1, p0, Lcom/supertws/dubokutv/FamilySyncActivity;->previewed:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncActivity;->previewedCodes:Ljava/lang/String;

    iget-object v2, p0, Lcom/supertws/dubokutv/FamilySyncActivity;->sourceCodes:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncActivity;->sourceCodes:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u6b63\u5728\u590d\u5236\u5408\u5e76\u5feb\u7167\u2026"

    invoke-direct {p0, v2}, Lcom/supertws/dubokutv/FamilySyncActivity;->busy(Ljava/lang/String;)V

    .line 123
    iget-object v2, p0, Lcom/supertws/dubokutv/FamilySyncActivity;->work:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/supertws/dubokutv/FamilySyncActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, v1}, Lcom/supertws/dubokutv/FamilySyncActivity$$ExternalSyntheticLambda0;-><init>(Lcom/supertws/dubokutv/FamilySyncActivity;Lorg/json/JSONArray;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 130
    return-void

    .line 121
    :cond_1
    :goto_0
    const-string v0, "\u8bf7\u5148\u9884\u89c8\u5f53\u524d\u8f93\u5165\u7684\u65e7\u5bb6\u5ead\u52a0\u5165\u7801\u3002"

    invoke-direct {p0, v0}, Lcom/supertws/dubokutv/FamilySyncActivity;->busy(Ljava/lang/String;)V

    return-void
.end method

.method private input(Ljava/lang/String;Z)Landroid/widget/EditText;
    .locals 2

    .line 77
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/4 p1, -0x1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextColor(I)V

    const p1, -0x333334

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHintTextColor(I)V

    const/high16 p1, 0x41900000    # 18.0f

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 78
    if-eqz p2, :cond_0

    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setMinLines(I)V

    const p1, 0x800033

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setGravity(I)V

    .line 79
    :cond_0
    return-object v0
.end method

.method private issueCode()V
    .locals 2

    .line 94
    const-string v0, "\u6b63\u5728\u8fde\u63a5\u5bb6\u5ead\u4e91\u7aef\u2026"

    invoke-direct {p0, v0}, Lcom/supertws/dubokutv/FamilySyncActivity;->busy(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncActivity;->work:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/supertws/dubokutv/FamilySyncActivity$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lcom/supertws/dubokutv/FamilySyncActivity$$ExternalSyntheticLambda18;-><init>(Lcom/supertws/dubokutv/FamilySyncActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 97
    return-void
.end method

.method private joinFamily()V
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncActivity;->joinCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "\u8bf7\u5148\u8f93\u5165\u52a0\u5165\u7801\u3002"

    invoke-direct {p0, v0}, Lcom/supertws/dubokutv/FamilySyncActivity;->busy(Ljava/lang/String;)V

    return-void

    .line 100
    :cond_0
    const-string v1, "\u6b63\u5728\u9a8c\u8bc1\u52a0\u5165\u7801\u5e76\u8bfb\u53d6\u8bbe\u5907\u5217\u8868\u2026"

    invoke-direct {p0, v1}, Lcom/supertws/dubokutv/FamilySyncActivity;->busy(Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncActivity;->work:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/supertws/dubokutv/FamilySyncActivity$$ExternalSyntheticLambda20;

    invoke-direct {v2, p0, v0}, Lcom/supertws/dubokutv/FamilySyncActivity$$ExternalSyntheticLambda20;-><init>(Lcom/supertws/dubokutv/FamilySyncActivity;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 109
    return-void
.end method

.method private synthetic lambda$cleanUp$19()V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncActivity;->cleanup:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private synthetic lambda$cleanUp$20(Lorg/json/JSONObject;)V
    .locals 2

    .line 143
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

    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncActivity;->busy(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$cleanUp$21(Lorg/json/JSONArray;)V
    .locals 5

    .line 140
    const-string v0, ""

    :try_start_0
    invoke-static {p0}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/supertws/dubokutv/FamilyIdentity;->familyId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/supertws/dubokutv/FamilyIdentity;->familySecret()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cleanup"

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, p1, v4}, Lcom/supertws/dubokutv/CloudSyncClient;->mergeFamilies(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Z)Lorg/json/JSONObject;

    move-result-object p1

    .line 141
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/supertws/dubokutv/FamilySyncActivity;->previewed:Z

    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncActivity;->previewedCodes:Ljava/lang/String;

    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncActivity;->copiedCodes:Ljava/lang/String;

    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncActivity;->cleanup:Landroid/widget/Button;

    new-instance v1, Lcom/supertws/dubokutv/FamilySyncActivity$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/supertws/dubokutv/FamilySyncActivity$$ExternalSyntheticLambda13;-><init>(Lcom/supertws/dubokutv/FamilySyncActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->post(Ljava/lang/Runnable;)Z

    .line 142
    invoke-static {p0}, Lcom/supertws/dubokutv/CloudSyncClient;->fetchOnHistory(Landroid/content/Context;)V

    .line 143
    new-instance v0, Lcom/supertws/dubokutv/FamilySyncActivity$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p1}, Lcom/supertws/dubokutv/FamilySyncActivity$$ExternalSyntheticLambda14;-><init>(Lcom/supertws/dubokutv/FamilySyncActivity;Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0}, Lcom/supertws/dubokutv/FamilySyncActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "\u6e05\u7406\u65e7\u5bb6\u5ead"

    invoke-direct {p0, v0, p1}, Lcom/supertws/dubokutv/FamilySyncActivity;->showError(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$confirmCleanup$17(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 135
    return-void
.end method

.method private synthetic lambda$confirmCleanup$18(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 135
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncActivity;->cleanUp()V

    return-void
.end method

.method static synthetic lambda$confirmIssueCode$6(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 90
    return-void
.end method

.method private synthetic lambda$confirmIssueCode$7(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncActivity;->issueCode()V

    return-void
.end method

.method private synthetic lambda$copyMerge$15(Lorg/json/JSONObject;)V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncActivity;->cleanup:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

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

    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncActivity;->busy(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$copyMerge$16(Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 4

    .line 124
    :try_start_0
    invoke-static {p0}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->familyId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/supertws/dubokutv/FamilyIdentity;->familySecret()Ljava/lang/String;

    move-result-object v1

    const-string v2, "copy"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, p1, v3}, Lcom/supertws/dubokutv/CloudSyncClient;->mergeFamilies(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Z)Lorg/json/JSONObject;

    move-result-object p1

    .line 125
    const-string v0, "devices"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v3, v1, :cond_0

    invoke-static {p0}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/supertws/dubokutv/FamilyIdentity;->addPeer(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 126
    :cond_0
    iput-object p2, p0, Lcom/supertws/dubokutv/FamilySyncActivity;->copiedCodes:Ljava/lang/String;

    .line 127
    invoke-static {p0}, Lcom/supertws/dubokutv/CloudSyncClient;->fetchOnHistory(Landroid/content/Context;)V

    .line 128
    new-instance p2, Lcom/supertws/dubokutv/FamilySyncActivity$$ExternalSyntheticLambda17;

    invoke-direct {p2, p0, p1}, Lcom/supertws/dubokutv/FamilySyncActivity$$ExternalSyntheticLambda17;-><init>(Lcom/supertws/dubokutv/FamilySyncActivity;Lorg/json/JSONObject;)V

    invoke-virtual {p0, p2}, Lcom/supertws/dubokutv/FamilySyncActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "\u590d\u5236\u5408\u5e76"

    invoke-direct {p0, p2, p1}, Lcom/supertws/dubokutv/FamilySyncActivity;->showError(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$issueCode$8(Ljava/lang/String;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncActivity;->codeDisplay:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "\u52a0\u5165\u7801\u5df2\u751f\u6210\uff1b\u8bb0\u4e0b\u540e\u53ef\u5728\u65b0\u7535\u89c6\u8f93\u5165\u3002\u518d\u6b21\u751f\u6210\u4f1a\u7acb\u5373\u4f7f\u65e7\u7801\u5931\u6548\u3002"

    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncActivity;->busy(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$issueCode$9()V
    .locals 2

    .line 95
    :try_start_0
    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->createJoinCode()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/supertws/dubokutv/FamilySyncActivity$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, v0}, Lcom/supertws/dubokutv/FamilySyncActivity$$ExternalSyntheticLambda12;-><init>(Lcom/supertws/dubokutv/FamilySyncActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/supertws/dubokutv/FamilySyncActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "\u751f\u6210\u52a0\u5165\u7801"

    invoke-direct {p0, v1, v0}, Lcom/supertws/dubokutv/FamilySyncActivity;->showError(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$joinFamily$10()V
    .locals 4

    .line 105
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncActivity;->currentFamily:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

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

    .line 107
    const-string v0, "\u5df2\u52a0\u5165\u5bb6\u5ead\uff0c\u6b63\u5728\u8bfb\u53d6\u5bb6\u5ead\u8fdb\u5ea6\u3002"

    invoke-direct {p0, v0}, Lcom/supertws/dubokutv/FamilySyncActivity;->busy(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$joinFamily$12(Ljava/lang/String;)V
    .locals 4

    .line 102
    :try_start_0
    invoke-static {p1}, Lcom/supertws/dubokutv/CloudSyncClient;->redeemJoinCode(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 103
    const-string v0, "deviceIds"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 104
    invoke-static {p0}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v1

    const-string v2, "familyId"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "familySecret"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/supertws/dubokutv/FamilyIdentity;->join(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 105
    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncActivity;->currentFamily:Landroid/widget/TextView;

    new-instance v0, Lcom/supertws/dubokutv/FamilySyncActivity$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0}, Lcom/supertws/dubokutv/FamilySyncActivity$$ExternalSyntheticLambda15;-><init>(Lcom/supertws/dubokutv/FamilySyncActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 106
    invoke-static {p0}, Lcom/supertws/dubokutv/CloudSyncClient;->fetchOnHistory(Landroid/content/Context;)V

    .line 107
    new-instance p1, Lcom/supertws/dubokutv/FamilySyncActivity$$ExternalSyntheticLambda16;

    invoke-direct {p1, p0}, Lcom/supertws/dubokutv/FamilySyncActivity$$ExternalSyntheticLambda16;-><init>(Lcom/supertws/dubokutv/FamilySyncActivity;)V

    invoke-virtual {p0, p1}, Lcom/supertws/dubokutv/FamilySyncActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "\u52a0\u5165\u5bb6\u5ead"

    invoke-direct {p0, v0, p1}, Lcom/supertws/dubokutv/FamilySyncActivity;->showError(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 1

    .line 39
    invoke-static {p0}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lcom/supertws/dubokutv/FamilyIdentity;->isCloudSyncEnabled()Z

    move-result v0

    .line 41
    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/supertws/dubokutv/FamilyIdentity;->setCloudSyncEnabled(Z)V

    .line 42
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncActivity;->updateCloudSyncToggle()V

    .line 43
    if-eqz v0, :cond_0

    const-string p1, "\u5df2\u5f00\u542f\u5bb6\u5ead\u4e91\u7aef\u540c\u6b65"

    goto :goto_0

    :cond_0
    const-string p1, "\u5df2\u5173\u95ed\u4e91\u7aef\u540c\u6b65\uff08\u4ec5\u4fdd\u7559\u5c40\u57df\u7f51\u540c\u6b65\uff09"

    :goto_0
    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncActivity;->busy(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method private synthetic lambda$onCreate$1(Landroid/view/View;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncActivity;->confirmIssueCode()V

    return-void
.end method

.method private synthetic lambda$onCreate$2(Landroid/view/View;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncActivity;->joinFamily()V

    return-void
.end method

.method private synthetic lambda$onCreate$3(Landroid/view/View;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncActivity;->previewMerge()V

    return-void
.end method

.method private synthetic lambda$onCreate$4(Landroid/view/View;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncActivity;->copyMerge()V

    return-void
.end method

.method private synthetic lambda$onCreate$5(Landroid/view/View;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncActivity;->confirmCleanup()V

    return-void
.end method

.method private synthetic lambda$previewMerge$13(Lorg/json/JSONObject;)V
    .locals 4

    .line 117
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncActivity;->cleanup:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

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

    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncActivity;->busy(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$previewMerge$14(Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 4

    .line 115
    :try_start_0
    invoke-static {p0}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->familyId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/supertws/dubokutv/FamilyIdentity;->familySecret()Ljava/lang/String;

    move-result-object v1

    const-string v2, "preview"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, p1, v3}, Lcom/supertws/dubokutv/CloudSyncClient;->mergeFamilies(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Z)Lorg/json/JSONObject;

    move-result-object p1

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/supertws/dubokutv/FamilySyncActivity;->previewed:Z

    iput-object p2, p0, Lcom/supertws/dubokutv/FamilySyncActivity;->previewedCodes:Ljava/lang/String;

    const-string p2, ""

    iput-object p2, p0, Lcom/supertws/dubokutv/FamilySyncActivity;->copiedCodes:Ljava/lang/String;

    .line 117
    new-instance p2, Lcom/supertws/dubokutv/FamilySyncActivity$$ExternalSyntheticLambda11;

    invoke-direct {p2, p0, p1}, Lcom/supertws/dubokutv/FamilySyncActivity$$ExternalSyntheticLambda11;-><init>(Lcom/supertws/dubokutv/FamilySyncActivity;Lorg/json/JSONObject;)V

    invoke-virtual {p0, p2}, Lcom/supertws/dubokutv/FamilySyncActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "\u9884\u89c8\u5408\u5e76"

    invoke-direct {p0, p2, p1}, Lcom/supertws/dubokutv/FamilySyncActivity;->showError(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$showError$22(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 148
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

    invoke-direct {p0, p1}, Lcom/supertws/dubokutv/FamilySyncActivity;->busy(Ljava/lang/String;)V

    return-void
.end method

.method private previewMerge()V
    .locals 4

    .line 111
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncActivity;->codes()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "\u8bf7\u8f93\u5165\u81f3\u5c11\u4e00\u4e2a\u65e7\u5bb6\u5ead\u52a0\u5165\u7801\u3002"

    invoke-direct {p0, v0}, Lcom/supertws/dubokutv/FamilySyncActivity;->busy(Ljava/lang/String;)V

    return-void

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncActivity;->sourceCodes:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 113
    const-string v2, "\u6b63\u5728\u8bfb\u53d6\u65e7\u5bb6\u5ead\u5feb\u7167\u2026"

    invoke-direct {p0, v2}, Lcom/supertws/dubokutv/FamilySyncActivity;->busy(Ljava/lang/String;)V

    .line 114
    iget-object v2, p0, Lcom/supertws/dubokutv/FamilySyncActivity;->work:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/supertws/dubokutv/FamilySyncActivity$$ExternalSyntheticLambda19;

    invoke-direct {v3, p0, v0, v1}, Lcom/supertws/dubokutv/FamilySyncActivity$$ExternalSyntheticLambda19;-><init>(Lcom/supertws/dubokutv/FamilySyncActivity;Lorg/json/JSONArray;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 119
    return-void
.end method

.method private showError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .line 147
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

    .line 148
    :goto_0
    new-instance v0, Lcom/supertws/dubokutv/FamilySyncActivity$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0, p1, p2}, Lcom/supertws/dubokutv/FamilySyncActivity$$ExternalSyntheticLambda21;-><init>(Lcom/supertws/dubokutv/FamilySyncActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/supertws/dubokutv/FamilySyncActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 149
    return-void
.end method

.method private text(Ljava/lang/String;IZ)Landroid/widget/TextView;
    .locals 1

    .line 66
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, -0x1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    int-to-float p1, p2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p1, 0x0

    const/16 p2, 0xc

    invoke-virtual {v0, p1, p2, p1, p2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 67
    if-eqz p3, :cond_0

    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 68
    :cond_0
    return-object v0
.end method

.method private updateCloudSyncToggle()V
    .locals 4

    .line 152
    invoke-static {p0}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->isCloudSyncEnabled()Z

    move-result v0

    .line 153
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilySyncActivity;->cloudSyncToggle:Landroid/widget/Button;

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

    .line 154
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-static {p0}, Lcom/supertws/dubokutv/CloudSyncClient;->initialize(Landroid/content/Context;)V

    .line 33
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x24

    const/16 v2, 0x18

    invoke-virtual {p1, v1, v2, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v1, 0x14

    invoke-static {v1, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 34
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    invoke-virtual {v1, p1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 35
    const-string v2, "\u5bb6\u5ead\u540c\u6b65\u4e0e\u5408\u5e76"

    const/16 v3, 0x1e

    invoke-direct {p0, v2, v3, v0}, Lcom/supertws/dubokutv/FamilySyncActivity;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 36
    const-string v2, ""

    invoke-direct {p0, v2}, Lcom/supertws/dubokutv/FamilySyncActivity;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    iput-object v2, p0, Lcom/supertws/dubokutv/FamilySyncActivity;->cloudSyncToggle:Landroid/widget/Button;

    .line 37
    invoke-direct {p0}, Lcom/supertws/dubokutv/FamilySyncActivity;->updateCloudSyncToggle()V

    .line 38
    iget-object v2, p0, Lcom/supertws/dubokutv/FamilySyncActivity;->cloudSyncToggle:Landroid/widget/Button;

    new-instance v3, Lcom/supertws/dubokutv/FamilySyncActivity$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/supertws/dubokutv/FamilySyncActivity$$ExternalSyntheticLambda1;-><init>(Lcom/supertws/dubokutv/FamilySyncActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object v2, p0, Lcom/supertws/dubokutv/FamilySyncActivity;->cloudSyncToggle:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 46
    const-string v2, "\u5728\u5df2\u52a0\u5165\u7684\u7535\u89c6\u751f\u6210\u52a0\u5165\u7801\uff1b\u65b0\u7535\u89c6\u53ef\u8f93\u5165\u52a0\u5165\u3002\u591a\u4e2a\u5bb6\u5ead\u5408\u5e76\u65f6\uff0c\u5148\u590d\u5236\u6838\u9a8c\uff0c\u518d\u660e\u786e\u786e\u8ba4\u6e05\u7406\u65e7\u5bb6\u5ead\u3002"

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/supertws/dubokutv/FamilySyncActivity;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 47
    invoke-static {p0}, Lcom/supertws/dubokutv/FamilyIdentity;->get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/supertws/dubokutv/FamilyIdentity;->familyId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5f53\u524d\u5bb6\u5ead\uff1a"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-direct {p0, v2, v3, v4}, Lcom/supertws/dubokutv/FamilySyncActivity;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/supertws/dubokutv/FamilySyncActivity;->currentFamily:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 48
    const-string v2, "\u751f\u6210 / \u66f4\u6362\u52a0\u5165\u7801\uff08\u65e7\u7801\u7acb\u5373\u5931\u6548\uff09"

    invoke-direct {p0, v2}, Lcom/supertws/dubokutv/FamilySyncActivity;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Lcom/supertws/dubokutv/FamilySyncActivity$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/supertws/dubokutv/FamilySyncActivity$$ExternalSyntheticLambda2;-><init>(Lcom/supertws/dubokutv/FamilySyncActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    const-string v2, "\u52a0\u5165\u7801\u5c1a\u672a\u751f\u6210"

    const/16 v3, 0x19

    invoke-direct {p0, v2, v3, v0}, Lcom/supertws/dubokutv/FamilySyncActivity;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/supertws/dubokutv/FamilySyncActivity;->codeDisplay:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 51
    const-string v2, "\u65b0\u7535\u89c6\u52a0\u5165\u5f53\u524d\u5bb6\u5ead"

    const/16 v3, 0x16

    invoke-direct {p0, v2, v3, v0}, Lcom/supertws/dubokutv/FamilySyncActivity;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 52
    const-string v2, "\u8f93\u5165\u52a0\u5165\u7801\uff0c\u4f8b\u5982 ABCD-EFGH-JKLM-NPQR"

    invoke-direct {p0, v2, v4}, Lcom/supertws/dubokutv/FamilySyncActivity;->input(Ljava/lang/String;Z)Landroid/widget/EditText;

    move-result-object v2

    iput-object v2, p0, Lcom/supertws/dubokutv/FamilySyncActivity;->joinCode:Landroid/widget/EditText;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 53
    const-string v2, "\u52a0\u5165\u5e76\u540c\u6b65\u5bb6\u5ead\u8fdb\u5ea6"

    invoke-direct {p0, v2}, Lcom/supertws/dubokutv/FamilySyncActivity;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v5, Lcom/supertws/dubokutv/FamilySyncActivity$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0}, Lcom/supertws/dubokutv/FamilySyncActivity$$ExternalSyntheticLambda3;-><init>(Lcom/supertws/dubokutv/FamilySyncActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    const-string v5, "\u5408\u5e76\u5176\u4ed6 familyId \u5230\u5f53\u524d\u5bb6\u5ead"

    invoke-direct {p0, v5, v3, v0}, Lcom/supertws/dubokutv/FamilySyncActivity;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 56
    const-string v3, "\u6bcf\u884c\u4e00\u4e2a\u65e7\u5bb6\u5ead\u52a0\u5165\u7801"

    invoke-direct {p0, v3, v0}, Lcom/supertws/dubokutv/FamilySyncActivity;->input(Ljava/lang/String;Z)Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncActivity;->sourceCodes:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 57
    const-string v0, "\u9884\u89c8\u65e7\u5bb6\u5ead\u8bb0\u5f55"

    invoke-direct {p0, v0}, Lcom/supertws/dubokutv/FamilySyncActivity;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Lcom/supertws/dubokutv/FamilySyncActivity$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/supertws/dubokutv/FamilySyncActivity$$ExternalSyntheticLambda4;-><init>(Lcom/supertws/dubokutv/FamilySyncActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const-string v0, "\u590d\u5236\u8bb0\u5f55\u5230\u5f53\u524d\u5bb6\u5ead"

    invoke-direct {p0, v0}, Lcom/supertws/dubokutv/FamilySyncActivity;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Lcom/supertws/dubokutv/FamilySyncActivity$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Lcom/supertws/dubokutv/FamilySyncActivity$$ExternalSyntheticLambda5;-><init>(Lcom/supertws/dubokutv/FamilySyncActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    const-string v0, "\u786e\u8ba4\u6e05\u7406\u65e7 familyId \u548c\u5feb\u7167"

    invoke-direct {p0, v0}, Lcom/supertws/dubokutv/FamilySyncActivity;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncActivity;->cleanup:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncActivity;->cleanup:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/supertws/dubokutv/FamilySyncActivity;->cleanup:Landroid/widget/Button;

    new-instance v3, Lcom/supertws/dubokutv/FamilySyncActivity$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0}, Lcom/supertws/dubokutv/FamilySyncActivity$$ExternalSyntheticLambda6;-><init>(Lcom/supertws/dubokutv/FamilySyncActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    const-string v0, "\u5c31\u7eea"

    const/16 v3, 0x11

    invoke-direct {p0, v0, v3, v4}, Lcom/supertws/dubokutv/FamilySyncActivity;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/supertws/dubokutv/FamilySyncActivity;->status:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 61
    invoke-virtual {p0, v1}, Lcom/supertws/dubokutv/FamilySyncActivity;->setContentView(Landroid/view/View;)V

    .line 62
    invoke-virtual {v2}, Landroid/widget/Button;->requestFocus()Z

    .line 63
    return-void
.end method
