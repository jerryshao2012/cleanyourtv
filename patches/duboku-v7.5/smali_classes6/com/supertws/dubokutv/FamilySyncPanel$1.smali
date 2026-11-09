.class Lcom/supertws/dubokutv/FamilySyncPanel$1;
.super Ljava/lang/Object;
.source "FamilySyncPanel.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/supertws/dubokutv/FamilySyncPanel;->showJoin()V
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

    .line 250
    iput-object p1, p0, Lcom/supertws/dubokutv/FamilySyncPanel$1;->this$0:Lcom/supertws/dubokutv/FamilySyncPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 253
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 251
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 252
    iget-object p2, p0, Lcom/supertws/dubokutv/FamilySyncPanel$1;->this$0:Lcom/supertws/dubokutv/FamilySyncPanel;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;->access$002(Lcom/supertws/dubokutv/FamilySyncPanel;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
