.class final Lcom/supertws/dubokutv/PlaybackSaveGuard;
.super Ljava/lang/Object;
.source "PlaybackSaveGuard.java"


# static fields
.field static final INSTANCE:Lcom/supertws/dubokutv/PlaybackSaveGuard;


# instance fields
.field private blockedModified:J

.field private blockedName:Ljava/lang/String;

.field private episode:Ljava/lang/String;

.field private initialized:Z

.field private name:Ljava/lang/String;

.field private position:J

.field private prefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lcom/supertws/dubokutv/PlaybackSaveGuard;

    invoke-direct {v0}, Lcom/supertws/dubokutv/PlaybackSaveGuard;-><init>()V

    sput-object v0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->INSTANCE:Lcom/supertws/dubokutv/PlaybackSaveGuard;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method declared-synchronized committed(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    monitor-enter p0

    .line 53
    const-wide v5, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    :try_start_0
    invoke-virtual/range {v0 .. v6}, Lcom/supertws/dubokutv/PlaybackSaveGuard;->committedIfCurrent(Ljava/lang/String;Ljava/lang/String;JJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    .line 52
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized committedIfCurrent(Ljava/lang/String;Ljava/lang/String;JJ)Z
    .locals 3

    monitor-enter p0

    .line 57
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->blockedName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->blockedModified:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v2, p5, v0

    if-gtz v2, :cond_0

    monitor-exit p0

    const/4 p1, 0x0

    return p1

    .line 58
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->name:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->episode:Ljava/lang/String;

    .line 60
    iput-wide p3, p0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->position:J

    .line 61
    if-eqz p1, :cond_1

    iget-object p5, p0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->blockedName:Ljava/lang/String;

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_1

    const/4 p5, 0x0

    iput-object p5, p0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->blockedName:Ljava/lang/String;

    const-wide/16 p5, 0x0

    iput-wide p5, p0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->blockedModified:J

    .line 62
    :cond_1
    iget-object p5, p0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->prefs:Landroid/content/SharedPreferences;

    if-eqz p5, :cond_2

    invoke-interface {p5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p5

    const-string p6, "name"

    invoke-interface {p5, p6, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p5, "episode"

    invoke-interface {p1, p5, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "position"

    invoke-interface {p1, p2, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "blockedName"

    iget-object p3, p0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->blockedName:Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "blockedModified"

    iget-wide p3, p0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->blockedModified:J

    invoke-interface {p1, p2, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    :cond_2
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 56
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized initialize(Landroid/content/Context;)V
    .locals 6

    monitor-enter p0

    .line 17
    :try_start_0
    iget-boolean v0, p0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->initialized:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    const-string v0, "playback_save_guard"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->prefs:Landroid/content/SharedPreferences;

    .line 19
    const-string v0, "name"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->name:Ljava/lang/String;

    .line 20
    iget-object p1, p0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->prefs:Landroid/content/SharedPreferences;

    const-string v0, "episode"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->episode:Ljava/lang/String;

    .line 21
    iget-object p1, p0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->prefs:Landroid/content/SharedPreferences;

    const-string v0, "position"

    const-wide/16 v2, 0x0

    invoke-interface {p1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->position:J

    .line 22
    iget-object p1, p0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->prefs:Landroid/content/SharedPreferences;

    const-string v0, "blockedName"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->blockedName:Ljava/lang/String;

    .line 23
    iget-object p1, p0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->prefs:Landroid/content/SharedPreferences;

    const-string v0, "blockedModified"

    invoke-interface {p1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->blockedModified:J

    .line 24
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    monitor-exit p0

    return-void

    .line 17
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 16
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized isDuplicate(Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 1

    monitor-enter p0

    .line 28
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->episode:Ljava/lang/String;

    .line 29
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-wide p1, p0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->position:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, p3, p1

    if-nez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 27
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 29
    :cond_0
    const/4 p1, 0x0

    .line 28
    :goto_0
    monitor-exit p0

    return p1
.end method

.method declared-synchronized onUserPlay(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 45
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->blockedName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 46
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->blockedName:Ljava/lang/String;

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->blockedModified:J

    .line 48
    iget-object p1, p0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->prefs:Landroid/content/SharedPreferences;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "blockedName"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "blockedModified"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 44
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 50
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method declared-synchronized remoteUpdated(Ljava/lang/String;J)V
    .locals 3

    monitor-enter p0

    .line 37
    if-eqz p1, :cond_3

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->blockedName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->blockedModified:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v2, p2, v0

    if-gtz v2, :cond_1

    monitor-exit p0

    return-void

    .line 39
    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->blockedName:Ljava/lang/String;

    .line 40
    iput-wide p2, p0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->blockedModified:J

    .line 41
    iget-object v0, p0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->prefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "blockedName"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "blockedModified"

    invoke-interface {p1, v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    :cond_2
    monitor-exit p0

    return-void

    .line 36
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 37
    :cond_3
    :goto_0
    monitor-exit p0

    return-void
.end method

.method declared-synchronized shouldSkip(Ljava/lang/String;Ljava/lang/String;JZ)Z
    .locals 0

    monitor-enter p0

    .line 33
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/supertws/dubokutv/PlaybackSaveGuard;->isDuplicate(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result p2

    if-nez p2, :cond_1

    if-nez p5, :cond_0

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->blockedName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    monitor-exit p0

    return p1

    .line 33
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
