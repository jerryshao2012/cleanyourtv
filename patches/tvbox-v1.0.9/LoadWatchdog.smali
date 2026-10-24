.class public Lcom/weisen/tvbox/LoadWatchdog;
.super Ljava/lang/Object;
.source "LoadWatchdog.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final act:Lcom/weisen/tvbox/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/weisen/tvbox/WebViewActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/weisen/tvbox/LoadWatchdog;->act:Lcom/weisen/tvbox/WebViewActivity;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/weisen/tvbox/LoadWatchdog;->act:Lcom/weisen/tvbox/WebViewActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/weisen/tvbox/WebViewActivity;->checkLoadWatchdog()V

    :cond_0
    return-void
.end method
