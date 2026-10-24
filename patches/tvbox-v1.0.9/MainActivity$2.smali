.class Lcom/weisen/tvbox/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/weisen/tvbox/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weisen/tvbox/MainActivity;

.field final synthetic val$btnDownload1:Landroid/widget/Button;

.field final synthetic val$btnDownload2:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/weisen/tvbox/MainActivity;Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$btnDownload1",
            "val$btnDownload2"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/weisen/tvbox/MainActivity$2;->this$0:Lcom/weisen/tvbox/MainActivity;

    iput-object p2, p0, Lcom/weisen/tvbox/MainActivity$2;->val$btnDownload1:Landroid/widget/Button;

    iput-object p3, p0, Lcom/weisen/tvbox/MainActivity$2;->val$btnDownload2:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 47
    iget-object p1, p0, Lcom/weisen/tvbox/MainActivity$2;->this$0:Lcom/weisen/tvbox/MainActivity;

    iget-object v0, p0, Lcom/weisen/tvbox/MainActivity$2;->val$btnDownload1:Landroid/widget/Button;

    iget-object v1, p0, Lcom/weisen/tvbox/MainActivity$2;->val$btnDownload2:Landroid/widget/Button;

    invoke-static {p1, v0, v1}, Lcom/weisen/tvbox/MainActivity;->access$100(Lcom/weisen/tvbox/MainActivity;Landroid/view/View;Landroid/view/View;)V

    .line 48
    iget-object p1, p0, Lcom/weisen/tvbox/MainActivity$2;->this$0:Lcom/weisen/tvbox/MainActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/weisen/tvbox/MainActivity;->access$200(Lcom/weisen/tvbox/MainActivity;I)V

    const-string p1, "MainActivity"

    const-string v0, "\u70b9\u51fb\u4e0b\u8f7d\u5730\u5740 1"

    .line 50
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/weisen/tvbox/MainActivity$2;->this$0:Lcom/weisen/tvbox/MainActivity;

    const-class v1, Lcom/weisen/tvbox/WebViewActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "url"

    const-string v1, "https://xiaomihezi.ysupan.com/"

    .line 52
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "title"

    const-string v1, "\u4e0b\u8f7d\u5730\u5740 1"

    .line 53
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    iget-object v0, p0, Lcom/weisen/tvbox/MainActivity$2;->this$0:Lcom/weisen/tvbox/MainActivity;

    invoke-virtual {v0, p1}, Lcom/weisen/tvbox/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
