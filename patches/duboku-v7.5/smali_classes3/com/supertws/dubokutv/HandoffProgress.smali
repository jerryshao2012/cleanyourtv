.class final Lcom/supertws/dubokutv/HandoffProgress;
.super Ljava/lang/Object;
.source "HandoffProgress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/supertws/dubokutv/HandoffProgress$Record;
    }
.end annotation


# static fields
.field private static final NUMBER:Ljava/util/regex/Pattern;


# instance fields
.field private final records:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/supertws/dubokutv/HandoffProgress$Record;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-string v0, "(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/supertws/dubokutv/HandoffProgress;->NUMBER:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/supertws/dubokutv/HandoffProgress;->records:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method declared-synchronized offer(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)V
    .locals 11

    move-object v1, p0

    move-object v0, p1

    monitor-enter p0

    .line 22
    if-eqz v0, :cond_3

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const-wide/16 v2, 0x0

    cmp-long v4, p3, v2

    if-ltz v4, :cond_3

    cmp-long v4, p6, v2

    if-gtz v4, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    iget-object v2, v1, Lcom/supertws/dubokutv/HandoffProgress;->records:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/supertws/dubokutv/HandoffProgress$Record;

    .line 24
    if-eqz v2, :cond_1

    iget-wide v3, v2, Lcom/supertws/dubokutv/HandoffProgress$Record;->modified:J

    cmp-long v5, p6, v3

    if-gtz v5, :cond_1

    iget-wide v3, v2, Lcom/supertws/dubokutv/HandoffProgress$Record;->modified:J

    cmp-long v5, p6, v3

    if-nez v5, :cond_2

    iget-wide v2, v2, Lcom/supertws/dubokutv/HandoffProgress$Record;->position:J

    cmp-long v4, p3, v2

    if-lez v4, :cond_2

    .line 25
    :cond_1
    iget-object v9, v1, Lcom/supertws/dubokutv/HandoffProgress;->records:Ljava/util/HashMap;

    new-instance v10, Lcom/supertws/dubokutv/HandoffProgress$Record;

    move-object v2, v10

    move-object v3, p2

    move-wide v4, p3

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    invoke-direct/range {v2 .. v8}, Lcom/supertws/dubokutv/HandoffProgress$Record;-><init>(Ljava/lang/String;JLjava/lang/String;J)V

    invoke-virtual {v9, p1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :cond_2
    monitor-exit p0

    return-void

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 22
    :cond_3
    :goto_0
    monitor-exit p0

    return-void
.end method

.method declared-synchronized select(Ljava/lang/String;Ljava/lang/String;J)Lcom/supertws/dubokutv/HandoffProgress$Record;
    .locals 5

    monitor-enter p0

    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/supertws/dubokutv/HandoffProgress;->records:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/supertws/dubokutv/HandoffProgress$Record;

    .line 31
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto :goto_3

    .line 32
    :cond_0
    iget-object v1, p1, Lcom/supertws/dubokutv/HandoffProgress$Record;->episode:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v1, p1, Lcom/supertws/dubokutv/HandoffProgress$Record;->position:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v3, 0x1388

    add-long/2addr p3, v3

    cmp-long p2, v1, p3

    if-lez p2, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    monitor-exit p0

    return-object p1

    .line 33
    :cond_2
    :try_start_1
    sget-object p3, Lcom/supertws/dubokutv/HandoffProgress;->NUMBER:Ljava/util/regex/Pattern;

    invoke-virtual {p3, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    iget-object p4, p1, Lcom/supertws/dubokutv/HandoffProgress$Record;->episode:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p3

    .line 34
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result p4

    if-eqz p4, :cond_5

    invoke-virtual {p3}, Ljava/util/regex/Matcher;->find()Z

    move-result p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p4, :cond_3

    goto :goto_2

    .line 36
    :cond_3
    const/4 p4, 0x1

    :try_start_2
    invoke-virtual {p3, p4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p2, p4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    cmp-long p4, v1, p2

    if-lez p4, :cond_4

    goto :goto_1

    :cond_4
    move-object p1, v0

    :goto_1
    monitor-exit p0

    return-object p1

    .line 37
    :catch_0
    move-exception p1

    .line 38
    monitor-exit p0

    return-object v0

    .line 34
    :cond_5
    :goto_2
    monitor-exit p0

    return-object v0

    .line 31
    :cond_6
    :goto_3
    monitor-exit p0

    return-object v0

    .line 29
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
