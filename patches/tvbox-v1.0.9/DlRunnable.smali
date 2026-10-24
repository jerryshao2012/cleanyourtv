.class public Lcom/weisen/tvbox/DlRunnable;
.super Ljava/lang/Object;
.source "DlRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final act:Lcom/weisen/tvbox/WebViewActivity;

.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:J


# direct methods
.method public constructor <init>(Lcom/weisen/tvbox/WebViewActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/weisen/tvbox/DlRunnable;->act:Lcom/weisen/tvbox/WebViewActivity;

    iput-object p2, p0, Lcom/weisen/tvbox/DlRunnable;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/weisen/tvbox/DlRunnable;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/weisen/tvbox/DlRunnable;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/weisen/tvbox/DlRunnable;->d:Ljava/lang/String;

    iput-wide p6, p0, Lcom/weisen/tvbox/DlRunnable;->e:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/weisen/tvbox/DlRunnable;->act:Lcom/weisen/tvbox/WebViewActivity;

    iget-object v1, p0, Lcom/weisen/tvbox/DlRunnable;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/weisen/tvbox/DlRunnable;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/weisen/tvbox/DlRunnable;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/weisen/tvbox/DlRunnable;->d:Ljava/lang/String;

    iget-wide v5, p0, Lcom/weisen/tvbox/DlRunnable;->e:J

    invoke-static/range {v0 .. v6}, Lcom/weisen/tvbox/WebViewActivity;->access$200(Lcom/weisen/tvbox/WebViewActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
