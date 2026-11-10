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
    .registers 1

    .line 7
    new-instance v0, Lcom/supertws/dubokutv/PlaybackSaveGuard;

    invoke-direct {v0}, Lcom/supertws/dubokutv/PlaybackSaveGuard;-><init>()V

    sput-object v0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->INSTANCE:Lcom/supertws/dubokutv/PlaybackSaveGuard;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method declared-synchronized committed(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 13

    monitor-enter p0

    .line 57
    const-wide v6, 0x7fffffffffffffffL

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    :try_start_a
    invoke-virtual/range {v1 .. v7}, Lcom/supertws/dubokutv/PlaybackSaveGuard;->committedIfCurrent(Ljava/lang/String;Ljava/lang/String;JJ)Z
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_f

    .line 58
    monitor-exit p0

    return-void

    .line 56
    :catchall_f
    move-exception v0

    move-object p1, v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_f

    throw p1
.end method

.method declared-synchronized committedIfCurrent(Ljava/lang/String;Ljava/lang/String;JJ)Z
    .registers 10

    monitor-enter p0

    .line 61
    if-eqz p1, :cond_14

    :try_start_3
    iget-object v0, p0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->blockedName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-wide v0, p0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->blockedModified:J
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_5d

    cmp-long v2, p5, v0

    if-gtz v2, :cond_14

    monitor-exit p0

    const/4 p1, 0x0

    return p1

    .line 62
    :cond_14
    :try_start_14
    iput-object p1, p0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->name:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->episode:Ljava/lang/String;

    .line 64
    iput-wide p3, p0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->position:J

    .line 65
    if-eqz p1, :cond_2b

    iget-object p5, p0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->blockedName:Ljava/lang/String;

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_2b

    const/4 p5, 0x0

    iput-object p5, p0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->blockedName:Ljava/lang/String;

    const-wide/16 p5, 0x0

    iput-wide p5, p0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->blockedModified:J

    .line 66
    :cond_2b
    iget-object p5, p0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->prefs:Landroid/content/SharedPreferences;

    if-eqz p5, :cond_5a

    iget-object p5, p0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->prefs:Landroid/content/SharedPreferences;

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
    :try_end_5a
    .catchall {:try_start_14 .. :try_end_5a} :catchall_5d

    .line 67
    :cond_5a
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 60
    :catchall_5d
    move-exception p1

    :try_start_5e
    monitor-exit p0
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    throw p1
.end method

.method declared-synchronized initialize(Landroid/content/Context;)V
    .registers 8

    monitor-enter p0

    .line 17
    :try_start_1
    iget-boolean v0, p0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->initialized:Z

    if-nez v0, :cond_4b

    if-nez p1, :cond_8

    goto :goto_4b

    .line 18
    :cond_8
    const-string v0, "playback_save_guard"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->prefs:Landroid/content/SharedPreferences;

    .line 19
    iget-object p1, p0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->prefs:Landroid/content/SharedPreferences;

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
    :try_end_49
    .catchall {:try_start_1 .. :try_end_49} :catchall_4d

    .line 25
    monitor-exit p0

    return-void

    .line 17
    :cond_4b
    :goto_4b
    monitor-exit p0

    return-void

    .line 16
    :catchall_4d
    move-exception p1

    :try_start_4e
    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw p1
.end method

.method declared-synchronized isDuplicate(Ljava/lang/String;Ljava/lang/String;J)Z
    .registers 6

    monitor-enter p0

    .line 28
    if-eqz p1, :cond_20

    if-eqz p2, :cond_20

    :try_start_5
    iget-object v0, p0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    iget-object p1, p0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->episode:Ljava/lang/String;

    .line 29
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    iget-wide p1, p0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->position:J

    cmp-long v0, p3, p1

    if-nez v0, :cond_20

    const/4 p1, 0x1

    goto :goto_21

    .line 27
    :catchall_1d
    move-exception p1

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_1d

    throw p1

    .line 29
    :cond_20
    const/4 p1, 0x0

    .line 28
    :goto_21
    monitor-exit p0

    return p1
.end method

.method declared-synchronized isNewPlaybackEvent(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    monitor-enter p0

    .line 33
    :try_start_1
    iget-object v0, p0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->episode:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lcom/supertws/dubokutv/PlaybackEvent;->startsNewEpisode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return p1

    .line 33
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method declared-synchronized isBlockedByRemote(Ljava/lang/String;J)Z
    .registers 5

    if-eqz p1, :cond_13
    iget-object v0, p0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->blockedName:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :cond_13
    iget-wide v0, p0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->blockedModified:J
    cmp-long v0, p2, v0
    if-lez v0, :cond_11
    goto :cond_13

    :cond_11
    const/4 v0, 0x1
    return v0

    :cond_13
    const/4 v0, 0x0
    return v0
.end method

.method declared-synchronized onUserPlay(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    .line 49
    if-eqz p1, :cond_2f

    :try_start_3
    iget-object v0, p0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->blockedName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 50
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->blockedName:Ljava/lang/String;

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->blockedModified:J

    .line 52
    iget-object p1, p0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->prefs:Landroid/content/SharedPreferences;

    if-eqz p1, :cond_2f

    iget-object p1, p0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "blockedName"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "blockedModified"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2f

    .line 48
    :catchall_2c
    move-exception p1

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw p1

    .line 54
    :cond_2f
    :goto_2f
    monitor-exit p0

    return-void
.end method

.method declared-synchronized remoteUpdated(Ljava/lang/String;J)V
    .registers 7

    monitor-enter p0

    .line 41
    if-eqz p1, :cond_3c

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_3c

    .line 42
    :cond_a
    iget-object v0, p0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->blockedName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-wide v0, p0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->blockedModified:J
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_39

    cmp-long v2, p2, v0

    if-gtz v2, :cond_1a

    monitor-exit p0

    return-void

    .line 43
    :cond_1a
    :try_start_1a
    iput-object p1, p0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->blockedName:Ljava/lang/String;

    .line 44
    iput-wide p2, p0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->blockedModified:J

    .line 45
    iget-object v0, p0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->prefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "blockedName"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "blockedModified"

    invoke-interface {p1, v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_37
    .catchall {:try_start_1a .. :try_end_37} :catchall_39

    .line 46
    :cond_37
    monitor-exit p0

    return-void

    .line 40
    :catchall_39
    move-exception p1

    :try_start_3a
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw p1

    .line 41
    :cond_3c
    :goto_3c
    monitor-exit p0

    return-void
.end method

.method declared-synchronized shouldSkip(Ljava/lang/String;Ljava/lang/String;JZ)Z
    .registers 6

    monitor-enter p0

    .line 37
    :try_start_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/supertws/dubokutv/PlaybackSaveGuard;->isDuplicate(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result p2

    if-nez p2, :cond_16

    if-nez p5, :cond_14

    if-eqz p1, :cond_14

    iget-object p2, p0, Lcom/supertws/dubokutv/PlaybackSaveGuard;->blockedName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_19

    if-eqz p1, :cond_14

    goto :goto_16

    :cond_14
    const/4 p1, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 p1, 0x1

    :goto_17
    monitor-exit p0

    return p1

    .line 37
    :catchall_19
    move-exception p1

    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p1
.end method
