.class Lcom/supertws/dubokutv/FamilySyncPanel$2;
.super Ljava/lang/Object;
.source "FamilySyncPanel.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/supertws/dubokutv/FamilySyncPanel;->showMerge()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/supertws/dubokutv/FamilySyncPanel;


# direct methods
.method constructor <init>(Lcom/supertws/dubokutv/FamilySyncPanel;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel$2;->this$0:Lcom/supertws/dubokutv/FamilySyncPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 277
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 271
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 273
    iget-object p2, p0, Lcom/supertws/dubokutv/FamilySyncPanel$2;->this$0:Lcom/supertws/dubokutv/FamilySyncPanel;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->access$102(Lcom/supertws/dubokutv/FamilySyncPanel;Ljava/lang/String;)Ljava/lang/String;

    .line 274
    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel$2;->this$0:Lcom/supertws/dubokutv/FamilySyncPanel;

    invoke-static {p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->access$200(Lcom/supertws/dubokutv/FamilySyncPanel;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/supertws/dubokutv/FamilySyncPanel$2;->this$0:Lcom/supertws/dubokutv/FamilySyncPanel;

    invoke-static {p2}, Lcom/supertws/dubokutv/FamilySyncPanel;->access$100(Lcom/supertws/dubokutv/FamilySyncPanel;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel$2;->this$0:Lcom/supertws/dubokutv/FamilySyncPanel;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/supertws/dubokutv/FamilySyncPanel;->access$302(Lcom/supertws/dubokutv/FamilySyncPanel;Z)Z

    .line 275
    :cond_0
    iget-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel$2;->this$0:Lcom/supertws/dubokutv/FamilySyncPanel;

    invoke-static {p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->access$400(Lcom/supertws/dubokutv/FamilySyncPanel;)V

    .line 276
    return-void
.end method
