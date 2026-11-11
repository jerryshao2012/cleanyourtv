.class public final Lcom/supertws/dubokutv/ProgressSnapshot;
.super Ljava/lang/Object;
.source "ProgressSnapshot.java"


# static fields
.field private static final MAX_URL_LENGTH:I = 0x800


# instance fields
.field public final deviceId:Ljava/lang/String;

.field public final familyId:Ljava/lang/String;

.field public final records:Lorg/json/JSONArray;

.field public final updatedAt:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLorg/json/JSONArray;)V
    .registers 6

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/supertws/dubokutv/ProgressSnapshot;->familyId:Ljava/lang/String;

    iput-object p2, p0, Lcom/supertws/dubokutv/ProgressSnapshot;->deviceId:Ljava/lang/String;

    iput-wide p3, p0, Lcom/supertws/dubokutv/ProgressSnapshot;->updatedAt:J

    .line 19
    if-nez p5, :cond_10

    new-instance p5, Lorg/json/JSONArray;

    invoke-direct {p5}, Lorg/json/JSONArray;-><init>()V

    :cond_10
    iput-object p5, p0, Lcom/supertws/dubokutv/ProgressSnapshot;->records:Lorg/json/JSONArray;

    .line 20
    return-void
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/supertws/dubokutv/ProgressSnapshot;
    .registers 8

    .line 30
    invoke-static {p0}, Lcom/supertws/dubokutv/ProgressSnapshot;->valid(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 31
    new-instance v1, Lcom/supertws/dubokutv/ProgressSnapshot;

    const-string v0, "familyId"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "deviceId"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 32
    const-string v0, "updatedAt"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v0, "records"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/supertws/dubokutv/ProgressSnapshot;-><init>(Ljava/lang/String;Ljava/lang/String;JLorg/json/JSONArray;)V

    .line 31
    return-object v1

    .line 30
    :cond_24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid snapshot"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static isWorkerCompatibleUrl(Ljava/lang/String;)Z
    .registers 1

    .line 78
    invoke-static {p0}, Lcom/supertws/dubokutv/ProgressSnapshot;->validUrl(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static normalizeUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 61
    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    .line 62
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 63
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x800

    if-gt v1, v2, :cond_5b

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 64
    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "example.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_26

    goto :goto_5b

    .line 66
    :cond_26
    :try_start_26
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 68
    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_45

    const-string v3, "https"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 69
    :cond_45
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_57

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_53} :catch_59

    if-nez v1, :cond_57

    move-object v0, p0

    goto :goto_58

    :cond_57
    nop

    .line 68
    :goto_58
    return-object v0

    .line 70
    :catch_59
    move-exception p0

    return-object v0

    .line 64
    :cond_5b
    :goto_5b
    return-object v0
.end method

.method public static valid(Lorg/json/JSONObject;)Z
    .registers 15

    .line 36
    const/4 v0, -0x1

    if-nez p0, :cond_4

    goto :goto_a

    :cond_4
    const-string v1, "schemaVersion"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 37
    :goto_a
    const/4 v1, 0x0

    if-eqz p0, :cond_116

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_116

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1a

    if-ne v0, v2, :cond_116

    :cond_1a
    const-string v4, "updatedAt"

    const-wide/16 v5, -0x1

    invoke-virtual {p0, v4, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v4, v7, v9

    if-ltz v4, :cond_116

    .line 38
    const-string v4, "familyId"

    const-string v7, ""

    invoke-virtual {p0, v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/supertws/dubokutv/FamilyIdentity;->validId(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_116

    .line 39
    const-string v4, "deviceId"

    invoke-virtual {p0, v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/supertws/dubokutv/FamilyIdentity;->validId(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_44

    goto/16 :goto_116

    .line 40
    :cond_44
    const-string v4, "records"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 41
    if-eqz p0, :cond_115

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/16 v8, 0x14

    if-le v4, v8, :cond_56

    goto/16 :goto_115

    .line 42
    :cond_56
    const/4 v4, 0x0

    :goto_57
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v4, v8, :cond_114

    .line 43
    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 44
    if-eqz v8, :cond_113

    invoke-virtual {v8}, Lorg/json/JSONObject;->length()I

    move-result v11

    if-ne v0, v2, :cond_6c

    const/16 v12, 0xb

    goto :goto_6e

    :cond_6c
    const/16 v12, 0xa

    :goto_6e
    if-ne v11, v12, :cond_113

    .line 45
    const-string v11, "id"

    invoke-virtual {v8, v11, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_113

    const-string v12, "name"

    invoke-virtual {v8, v12, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_113

    .line 46
    invoke-virtual {v8, v11, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v13, 0x200

    if-gt v11, v13, :cond_113

    invoke-virtual {v8, v12, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-gt v11, v13, :cond_113

    .line 47
    const-string v11, "episode"

    invoke-virtual {v8, v11, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-gt v11, v13, :cond_113

    const-string v11, "progressInMillis"

    invoke-virtual {v8, v11, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v11

    cmp-long v13, v11, v9

    if-ltz v13, :cond_113

    .line 48
    const-string v11, "durationInMillis"

    invoke-virtual {v8, v11, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v11

    cmp-long v13, v11, v9

    if-ltz v13, :cond_113

    const-string v11, "createdAt"

    invoke-virtual {v8, v11, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v11

    cmp-long v13, v11, v9

    if-ltz v13, :cond_113

    .line 49
    const-string v11, "modifiedAt"

    invoke-virtual {v8, v11, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v11

    cmp-long v13, v11, v9

    if-ltz v13, :cond_113

    const-string v11, "videoPageUrl"

    invoke-virtual {v8, v11, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/supertws/dubokutv/ProgressSnapshot;->validUrl(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_113

    .line 50
    const-string v11, "detailPageUrl"

    invoke-virtual {v8, v11, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/supertws/dubokutv/ProgressSnapshot;->validUrl(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_113

    const-string v11, "posterUrl"

    invoke-virtual {v8, v11, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/supertws/dubokutv/ProgressSnapshot;->validUrl(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_f7

    goto :goto_113

    .line 51
    :cond_f7
    if-ne v0, v2, :cond_10f

    .line 52
    const-string v11, "clockVersion"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 53
    if-eqz v8, :cond_10e

    invoke-virtual {v8}, Lorg/json/JSONObject;->length()I

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_10e

    invoke-static {v8}, Lcom/supertws/dubokutv/SyncVersionStore;->fromJson(Lorg/json/JSONObject;)Lcom/supertws/dubokutv/SyncVersion;

    move-result-object v8

    if-nez v8, :cond_10f

    :cond_10e
    return v1

    .line 42
    :cond_10f
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_57

    .line 50
    :cond_113
    :goto_113
    return v1

    .line 56
    :cond_114
    return v3

    .line 41
    :cond_115
    :goto_115
    return v1

    .line 39
    :cond_116
    :goto_116
    return v1
.end method

.method private static validUrl(Ljava/lang/String;)Z
    .registers 4

    .line 74
    const/4 v0, 0x0

    if-eqz p0, :cond_1e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x800

    if-le v1, v2, :cond_c

    goto :goto_1e

    .line 75
    :cond_c
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-static {p0}, Lcom/supertws/dubokutv/ProgressSnapshot;->normalizeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    :cond_1c
    const/4 v0, 0x1

    :cond_1d
    return v0

    .line 74
    :cond_1e
    :goto_1e
    return v0
.end method

# virtual methods
.method public toJson()Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 23
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "schemaVersion"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "familyId"

    iget-object v2, p0, Lcom/supertws/dubokutv/ProgressSnapshot;->familyId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/supertws/dubokutv/ProgressSnapshot;->deviceId:Ljava/lang/String;

    .line 24
    const-string v2, "deviceId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "updatedAt"

    iget-wide v2, p0, Lcom/supertws/dubokutv/ProgressSnapshot;->updatedAt:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "records"

    iget-object v2, p0, Lcom/supertws/dubokutv/ProgressSnapshot;->records:Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 25
    invoke-static {v0}, Lcom/supertws/dubokutv/ProgressSnapshot;->valid(Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 26
    return-object v0

    .line 25
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid snapshot"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
