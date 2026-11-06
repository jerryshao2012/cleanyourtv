.class public final Lcom/supertws/dubokutv/FamilyIdentity;
.super Ljava/lang/Object;
.source "FamilyIdentity.java"


# static fields
.field private static final DEVICE:Ljava/lang/String; = "deviceId"

.field private static final FAMILY:Ljava/lang/String; = "familyId"

.field private static final PEERS:Ljava/lang/String; = "peers"

.field private static final PREFS:Ljava/lang/String; = "r2_sync_identity"

.field private static final RANDOM:Ljava/security/SecureRandom;

.field private static final SECRET:Ljava/lang/String; = "familySecret"


# instance fields
.field private final prefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/supertws/dubokutv/FamilyIdentity;->RANDOM:Ljava/security/SecureRandom;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "r2_sync_identity"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/supertws/dubokutv/FamilyIdentity;->prefs:Landroid/content/SharedPreferences;

    .line 27
    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;
    .locals 1

    .line 29
    new-instance v0, Lcom/supertws/dubokutv/FamilyIdentity;

    invoke-direct {v0, p0}, Lcom/supertws/dubokutv/FamilyIdentity;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static validId(Ljava/lang/String;)Z
    .locals 2

    .line 92
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 93
    :catch_0
    move-exception p0

    return v0

    .line 92
    :cond_0
    :goto_0
    return v0
.end method

.method public static validSecret(Ljava/lang/String;)Z
    .locals 2

    .line 97
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/16 v1, 0xa

    :try_start_0
    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    array-length p0, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x20

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 98
    :catch_0
    move-exception p0

    return v0

    .line 97
    :cond_0
    :goto_0
    return v0
.end method


# virtual methods
.method public declared-synchronized addPeer(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 78
    :try_start_0
    invoke-static {p1}, Lcom/supertws/dubokutv/FamilyIdentity;->validId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/supertws/dubokutv/FamilyIdentity;->deviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 79
    :cond_0
    new-instance v0, Ljava/util/TreeSet;

    invoke-virtual {p0}, Lcom/supertws/dubokutv/FamilyIdentity;->peers()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilyIdentity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "peers"

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    monitor-exit p0

    return-void

    .line 78
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 77
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized adopt(Lorg/json/JSONObject;)Z
    .locals 10

    monitor-enter p0

    .line 58
    :try_start_0
    const-string v0, "familyId"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    const-string v1, "familySecret"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    const-string v2, "from"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 61
    invoke-static {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->validId(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    invoke-static {v2}, Lcom/supertws/dubokutv/FamilyIdentity;->validId(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {v1}, Lcom/supertws/dubokutv/FamilyIdentity;->validSecret(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_2

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/supertws/dubokutv/FamilyIdentity;->familyId()Ljava/lang/String;

    move-result-object v3

    .line 63
    new-instance v5, Ljava/util/TreeSet;

    invoke-virtual {p0}, Lcom/supertws/dubokutv/FamilyIdentity;->peers()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 64
    new-instance v6, Ljava/util/TreeSet;

    invoke-direct {v6, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/SortedSet;)V

    .line 65
    const-string v7, "devices"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 66
    if-eqz p1, :cond_2

    const/4 v7, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 67
    const-string v8, ""

    invoke-virtual {p1, v7, v8}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/supertws/dubokutv/FamilyIdentity;->validId(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {p0}, Lcom/supertws/dubokutv/FamilyIdentity;->deviceId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v6, v8}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 69
    :cond_2
    invoke-virtual {v6, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v6}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p1, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 71
    :cond_3
    iget-object v2, p0, Lcom/supertws/dubokutv/FamilyIdentity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v7, "peers"

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v7, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 72
    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_4

    const-string v2, "familyId"

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v7, "familySecret"

    invoke-interface {v2, v7, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 73
    :cond_4
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 74
    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_5

    invoke-virtual {v6, v5}, Ljava/util/TreeSet;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_6

    :cond_5
    const/4 v4, 0x1

    :cond_6
    monitor-exit p0

    return v4

    .line 61
    :cond_7
    :goto_2
    monitor-exit p0

    return v4

    .line 57
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public deviceId()Ljava/lang/String;
    .locals 3

    .line 41
    invoke-virtual {p0}, Lcom/supertws/dubokutv/FamilyIdentity;->ensure()V

    iget-object v0, p0, Lcom/supertws/dubokutv/FamilyIdentity;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "deviceId"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized ensure()V
    .locals 4

    monitor-enter p0

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilyIdentity;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "deviceId"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/supertws/dubokutv/FamilyIdentity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "deviceId"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilyIdentity;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "familyId"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/supertws/dubokutv/FamilyIdentity;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "familySecret"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 34
    :cond_1
    const/16 v0, 0x20

    new-array v0, v0, [B

    sget-object v1, Lcom/supertws/dubokutv/FamilyIdentity;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 35
    iget-object v1, p0, Lcom/supertws/dubokutv/FamilyIdentity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "familyId"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "familySecret"

    .line 36
    const/16 v3, 0xb

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "familyCreatedAt"

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :cond_2
    monitor-exit p0

    return-void

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public familyId()Ljava/lang/String;
    .locals 3

    .line 42
    invoke-virtual {p0}, Lcom/supertws/dubokutv/FamilyIdentity;->ensure()V

    iget-object v0, p0, Lcom/supertws/dubokutv/FamilyIdentity;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "familyId"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public familySecret()Ljava/lang/String;
    .locals 3

    .line 43
    invoke-virtual {p0}, Lcom/supertws/dubokutv/FamilyIdentity;->ensure()V

    iget-object v0, p0, Lcom/supertws/dubokutv/FamilyIdentity;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "familySecret"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public offer(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 85
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 86
    invoke-virtual {p0}, Lcom/supertws/dubokutv/FamilyIdentity;->deviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {p0}, Lcom/supertws/dubokutv/FamilyIdentity;->peers()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 87
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "action"

    const-string v3, "FAMILY_OFFER"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "from"

    invoke-virtual {p0}, Lcom/supertws/dubokutv/FamilyIdentity;->deviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 88
    const-string v2, "nonce"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "familyId"

    invoke-virtual {p0}, Lcom/supertws/dubokutv/FamilyIdentity;->familyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "familySecret"

    invoke-virtual {p0}, Lcom/supertws/dubokutv/FamilyIdentity;->familySecret()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "devices"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 87
    return-object p1
.end method

.method public declared-synchronized peers()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 46
    :try_start_0
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :try_start_1
    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/supertws/dubokutv/FamilyIdentity;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "peers"

    const-string v4, "[]"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 49
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 50
    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 51
    invoke-static {v3}, Lcom/supertws/dubokutv/FamilyIdentity;->validId(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/supertws/dubokutv/FamilyIdentity;->deviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 53
    :catch_0
    move-exception v1

    :cond_1
    nop

    .line 54
    monitor-exit p0

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
