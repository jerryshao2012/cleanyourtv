.class public Lcom/weisen/tvbox/WebViewActivity;
.super Landroid/app/Activity;
.source "WebViewActivity.java"


# static fields
.field private static final EXIT_DELAY:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "WebViewActivity"


# instance fields
.field private exitRunnable:Ljava/lang/Runnable;

.field private handler:Landroid/os/Handler;

.field private isExiting:Z

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;

# PATCH: load timeout watchdog / auto-retry state (public for helper runnables)
.field public loadRetryCount:I

.field public loadOk:Z

.field public retryPending:Z

.field public pendingUrl:Ljava/lang/String;

.field public watchdogRunnable:Ljava/lang/Runnable;

.field public lastPageUrl:Ljava/lang/String;



# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/weisen/tvbox/WebViewActivity;->isExiting:Z

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/weisen/tvbox/WebViewActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/weisen/tvbox/WebViewActivity;Z)Z
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/weisen/tvbox/WebViewActivity;->isExiting:Z

    return p1
.end method

.method static synthetic access$100(Lcom/weisen/tvbox/WebViewActivity;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/weisen/tvbox/WebViewActivity;->handleError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/weisen/tvbox/WebViewActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 19
    invoke-direct/range {p0 .. p6}, Lcom/weisen/tvbox/WebViewActivity;->startDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public onMainLoadStarted(Ljava/lang/String;)V
    .locals 4

    # PATCH: ignore Chromium's fake error-page navigation (http://webviewactivity/)
    const-string v0, "http://webviewactivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/weisen/tvbox/WebViewActivity;->pendingUrl:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/weisen/tvbox/WebViewActivity;->loadOk:Z

    iget-object v0, p0, Lcom/weisen/tvbox/WebViewActivity;->watchdogRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    new-instance v0, Lcom/weisen/tvbox/LoadWatchdog;

    invoke-direct {v0, p0}, Lcom/weisen/tvbox/LoadWatchdog;-><init>(Lcom/weisen/tvbox/WebViewActivity;)V

    iput-object v0, p0, Lcom/weisen/tvbox/WebViewActivity;->watchdogRunnable:Ljava/lang/Runnable;

    :cond_1
    iget-object v0, p0, Lcom/weisen/tvbox/WebViewActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/weisen/tvbox/WebViewActivity;->watchdogRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onMainLoadFinished()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/weisen/tvbox/WebViewActivity;->loadOk:Z

    iget-object v0, p0, Lcom/weisen/tvbox/WebViewActivity;->watchdogRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/weisen/tvbox/WebViewActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onMainLoadError(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/weisen/tvbox/WebViewActivity;->loadOk:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/weisen/tvbox/WebViewActivity;->retryOrGiveUp(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public checkLoadWatchdog()V
    .locals 2

    iget-boolean v0, p0, Lcom/weisen/tvbox/WebViewActivity;->loadOk:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/weisen/tvbox/WebViewActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/weisen/tvbox/WebViewActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    const-string v0, "\u52a0\u8f7d\u8d85\u65f620\u79d2\u672a\u54cd\u5e94\uff0c\u81ea\u52a8\u91cd\u8bd5"

    invoke-virtual {p0, v0}, Lcom/weisen/tvbox/WebViewActivity;->retryOrGiveUp(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public retryOrGiveUp(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/weisen/tvbox/WebViewActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/weisen/tvbox/WebViewActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/weisen/tvbox/WebViewActivity;->retryPending:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/weisen/tvbox/WebViewActivity;->loadRetryCount:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/weisen/tvbox/WebViewActivity;->loadRetryCount:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/weisen/tvbox/WebViewActivity;->retryPending:Z

    new-instance v0, Lcom/weisen/tvbox/RetryRunnable;

    invoke-direct {v0, p0}, Lcom/weisen/tvbox/RetryRunnable;-><init>(Lcom/weisen/tvbox/WebViewActivity;)V

    iget-object v1, p0, Lcom/weisen/tvbox/WebViewActivity;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5df2\u81ea\u52a8\u91cd\u8bd52\u6b21\u4ecd\u5931\u8d25\u3002"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/weisen/tvbox/WebViewActivity;->handleError(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public performRetry()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/weisen/tvbox/WebViewActivity;->retryPending:Z

    invoke-virtual {p0}, Lcom/weisen/tvbox/WebViewActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/weisen/tvbox/WebViewActivity;->pendingUrl:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/weisen/tvbox/WebViewActivity;->url:Ljava/lang/String;

    :cond_1
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/weisen/tvbox/WebViewActivity;->webView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    const-string v2, "WebViewActivity"

    const-string v3, "\u91cd\u8bd5\u52a0\u8f7d\u4e2d..."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "\u7f51\u7edc\u6162\uff0c\u6b63\u5728\u81ea\u52a8\u91cd\u8bd5..."

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    # PATCH: if the target equals the committed URL, loadUrl() is deduped by Chromium
    # (retraficking the stale error page) - use reload() for a genuine re-request
    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Landroid/webkit/WebView;->reload()V

    # PATCH: re-arm the watchdog for the retried load
    iget-object v0, p0, Lcom/weisen/tvbox/WebViewActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/weisen/tvbox/WebViewActivity;->watchdogRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void

    :cond_2
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    # PATCH: re-arm the watchdog for the retried load
    iget-object v0, p0, Lcom/weisen/tvbox/WebViewActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/weisen/tvbox/WebViewActivity;->watchdogRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private handleError(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorDescription"
        }
    .end annotation

    .line 311
    new-instance v0, Lcom/weisen/tvbox/-$$Lambda$WebViewActivity$mc5fE-beWjSkH9sfN_7wGHwodKw;

    invoke-direct {v0, p0, p1}, Lcom/weisen/tvbox/-$$Lambda$WebViewActivity$mc5fE-beWjSkH9sfN_7wGHwodKw;-><init>(Lcom/weisen/tvbox/WebViewActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/weisen/tvbox/WebViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "userAgent",
            "contentDisposition",
            "mimetype",
            "contentLength"
        }
    .end annotation

    .line 286
    # PATCH: a triggered download means the load succeeded - stop the watchdog
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/weisen/tvbox/WebViewActivity;->loadOk:Z

    iget-object v0, p0, Lcom/weisen/tvbox/WebViewActivity;->watchdogRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_watch

    iget-object v1, p0, Lcom/weisen/tvbox/WebViewActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_watch
    invoke-static {p1, p3, p4}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 287
    new-instance v3, Lcom/weisen/tvbox/DownloadProgressDialog;

    invoke-direct {v3, p0}, Lcom/weisen/tvbox/DownloadProgressDialog;-><init>(Landroid/content/Context;)V

    const-string p4, "\u51c6\u5907\u4e0b\u8f7d..."

    .line 288
    invoke-virtual {v3, p4}, Lcom/weisen/tvbox/DownloadProgressDialog;->setStatus(Ljava/lang/String;)V

    .line 290
    new-instance p4, Lcom/weisen/tvbox/-$$Lambda$WebViewActivity$83w0gbIXUc7FKe6y95o-9v-YIdI;

    invoke-direct {p4, p0}, Lcom/weisen/tvbox/-$$Lambda$WebViewActivity$83w0gbIXUc7FKe6y95o-9v-YIdI;-><init>(Lcom/weisen/tvbox/WebViewActivity;)V

    invoke-virtual {v3, p4}, Lcom/weisen/tvbox/DownloadProgressDialog;->setOnCancelListener(Lcom/weisen/tvbox/DownloadProgressDialog$OnCancelListener;)V

    .line 296
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p4

    invoke-virtual {p4, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 297
    iget-object p4, p0, Lcom/weisen/tvbox/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p4}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v5

    .line 299
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "\u4e0b\u8f7d Cookie: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string p5, "WebViewActivity"

    invoke-static {p5, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "\u4e0b\u8f7d Referer: "

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p5, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v6, p2

    .line 303
    invoke-static/range {v0 .. v6}, Lcom/weisen/tvbox/DownloadUtil;->downloadFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/weisen/tvbox/DownloadProgressDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u5f00\u59cb\u4e0b\u8f7d\uff1a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$handleError$2$WebViewActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 320
    invoke-virtual {p0}, Lcom/weisen/tvbox/WebViewActivity;->finish()V

    return-void
.end method

.method public synthetic lambda$handleError$3$WebViewActivity(Ljava/lang/String;)V
    .locals 3

    .line 313
    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u65e0\u6cd5\u52a0\u8f7d\u9875\u9762"

    .line 314
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u65e0\u6cd5\u6253\u5f00\u4e0b\u8f7d\u5730\u5740\uff0c\u53ef\u80fd\u539f\u56e0\uff1a\n\n1. \u7f51\u7edc\u8fde\u63a5\u95ee\u9898\n2. \u7f51\u76d8\u9700\u8981\u767b\u5f55\n3. \u94fe\u63a5\u5df2\u5931\u6548\n\n\u9519\u8bef\u4fe1\u606f\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 315
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "\u786e\u5b9a"

    new-instance v1, Lcom/weisen/tvbox/-$$Lambda$WebViewActivity$JMTRyYEml8sYrVaih9erhMRSoCQ;

    invoke-direct {v1, p0}, Lcom/weisen/tvbox/-$$Lambda$WebViewActivity$JMTRyYEml8sYrVaih9erhMRSoCQ;-><init>(Lcom/weisen/tvbox/WebViewActivity;)V

    .line 320
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 321
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 322
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u663e\u793a\u9519\u8bef\u5bf9\u8bdd\u6846\u5931\u8d25\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WebViewActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-virtual {p0}, Lcom/weisen/tvbox/WebViewActivity;->finish()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$onCreate$0$WebViewActivity()V
    .locals 2

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5f00\u59cb\u52a0\u8f7d URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/weisen/tvbox/WebViewActivity;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebViewActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v0, p0, Lcom/weisen/tvbox/WebViewActivity;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/weisen/tvbox/WebViewActivity;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    # PATCH: arm the watchdog from the very first load - Chromium defers onPageStarted
    # on hung connections, so waiting for it would leave the initial load unprotected
    invoke-virtual {p0, v1}, Lcom/weisen/tvbox/WebViewActivity;->onMainLoadStarted(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0}, Lcom/weisen/tvbox/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 228
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 229
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public synthetic lambda$startDownload$1$WebViewActivity()V
    .locals 2

    .line 291
    invoke-static {}, Lcom/weisen/tvbox/DownloadUtil;->cancelDownload()V

    const-string v0, "\u5df2\u53d6\u6d88\u4e0b\u8f7d"

    const/4 v1, 0x0

    .line 292
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    new-instance p1, Lcom/weisen/tvbox/WebViewActivity$1;

    invoke-direct {p1, p0}, Lcom/weisen/tvbox/WebViewActivity$1;-><init>(Lcom/weisen/tvbox/WebViewActivity;)V

    iput-object p1, p0, Lcom/weisen/tvbox/WebViewActivity;->exitRunnable:Ljava/lang/Runnable;

    .line 43
    invoke-virtual {p0}, Lcom/weisen/tvbox/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/weisen/tvbox/WebViewActivity;->url:Ljava/lang/String;

    .line 44
    invoke-virtual {p0}, Lcom/weisen/tvbox/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/weisen/tvbox/WebViewActivity;->title:Ljava/lang/String;

    .line 47
    iget-object p1, p0, Lcom/weisen/tvbox/WebViewActivity;->url:Ljava/lang/String;

    const-string v0, "WebViewActivity"

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_0

    .line 54
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u51c6\u5907\u52a0\u8f7d URL: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/weisen/tvbox/WebViewActivity;->url:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f0a0001

    .line 57
    invoke-virtual {p0, p1}, Lcom/weisen/tvbox/WebViewActivity;->setContentView(I)V

    const p1, 0x7f080110

    .line 60
    invoke-virtual {p0, p1}, Lcom/weisen/tvbox/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/weisen/tvbox/WebViewActivity;->webView:Landroid/webkit/WebView;

    .line 63
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    .line 66
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 67
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 68
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    const/4 v0, -0x1

    .line 69
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 72
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 73
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 76
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 77
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 78
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    const/4 v0, 0x0

    .line 79
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 80
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    const-string v0, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36"

    .line 84
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    # PATCH: allow file:// asset page (1.html) to XHR the live ysupan catalog (blocked by CORS otherwise)
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 90
    iget-object p1, p0, Lcom/weisen/tvbox/WebViewActivity;->webView:Landroid/webkit/WebView;

    new-instance v0, Lcom/weisen/tvbox/WebViewActivity$2;

    invoke-direct {v0, p0}, Lcom/weisen/tvbox/WebViewActivity$2;-><init>(Lcom/weisen/tvbox/WebViewActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 139
    iget-object p1, p0, Lcom/weisen/tvbox/WebViewActivity;->webView:Landroid/webkit/WebView;

    new-instance v0, Lcom/weisen/tvbox/WebViewActivity$3;

    invoke-direct {v0, p0}, Lcom/weisen/tvbox/WebViewActivity$3;-><init>(Lcom/weisen/tvbox/WebViewActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 155
    iget-object p1, p0, Lcom/weisen/tvbox/WebViewActivity;->webView:Landroid/webkit/WebView;

    new-instance v0, Lcom/weisen/tvbox/WebViewActivity$4;

    invoke-direct {v0, p0}, Lcom/weisen/tvbox/WebViewActivity$4;-><init>(Lcom/weisen/tvbox/WebViewActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 221
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/weisen/tvbox/-$$Lambda$WebViewActivity$x5iv1dI6G3dIAZubLzbfVoulAos;

    invoke-direct {v0, p0}, Lcom/weisen/tvbox/-$$Lambda$WebViewActivity$x5iv1dI6G3dIAZubLzbfVoulAos;-><init>(Lcom/weisen/tvbox/WebViewActivity;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    :goto_0
    const-string p1, "URL \u4e3a\u7a7a\uff01"

    .line 48
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "\u4e0b\u8f7d\u5730\u5740\u4e3a\u7a7a"

    .line 49
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 50
    invoke-virtual {p0}, Lcom/weisen/tvbox/WebViewActivity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 267
    invoke-static {}, Lcom/weisen/tvbox/DownloadUtil;->cancelDownload()V

    .line 270
    iget-object v0, p0, Lcom/weisen/tvbox/WebViewActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 272
    iget-object v0, p0, Lcom/weisen/tvbox/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    .line 273
    iput-object v0, p0, Lcom/weisen/tvbox/WebViewActivity;->webView:Landroid/webkit/WebView;

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/weisen/tvbox/WebViewActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/weisen/tvbox/WebViewActivity;->exitRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    # PATCH: cancel load watchdog on destroy
    iget-object v1, p0, Lcom/weisen/tvbox/WebViewActivity;->watchdogRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    .line 278
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 238
    invoke-static {}, Lcom/weisen/tvbox/DownloadUtil;->cancelDownload()V

    .line 242
    invoke-virtual {p0}, Lcom/weisen/tvbox/WebViewActivity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 245
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 1

    .line 258
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 259
    iget-object v0, p0, Lcom/weisen/tvbox/WebViewActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 250
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 251
    iget-object v0, p0, Lcom/weisen/tvbox/WebViewActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    :cond_0
    return-void
.end method
