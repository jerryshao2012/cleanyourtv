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
    .registers 1

    .line 23
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/supertws/dubokutv/FamilyIdentity;->RANDOM:Ljava/security/SecureRandom;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "r2_sync_identity"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/supertws/dubokutv/FamilyIdentity;->prefs:Landroid/content/SharedPreferences;

    .line 28
    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/supertws/dubokutv/FamilyIdentity;
    .registers 2

    .line 30
    new-instance v0, Lcom/supertws/dubokutv/FamilyIdentity;

    invoke-direct {v0, p0}, Lcom/supertws/dubokutv/FamilyIdentity;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static validId(Ljava/lang/String;)Z
    .registers 3

    .line 120
    const/4 v0, 0x0

    if-eqz p0, :cond_15

    :try_start_3
    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_13

    if-eqz p0, :cond_15

    const/4 v0, 0x1

    goto :goto_15

    .line 121
    :catch_13
    move-exception p0

    return v0

    .line 120
    :cond_15
    :goto_15
    return v0
.end method

.method public static validSecret(Ljava/lang/String;)Z
    .registers 3

    .line 125
    const/4 v0, 0x0

    if-eqz p0, :cond_12

    const/16 v1, 0xa

    :try_start_5
    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    array-length p0, p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_10

    const/16 v1, 0x20

    if-ne p0, v1, :cond_12

    const/4 v0, 0x1

    goto :goto_12

    .line 126
    :catch_10
    move-exception p0

    return v0

    .line 125
    :cond_12
    :goto_12
    return v0
.end method


# virtual methods
.method public declared-synchronized addPeer(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    .line 90
    :try_start_1
    invoke-static {p1}, Lcom/supertws/dubokutv/FamilyIdentity;->validId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-virtual {p0}, Lcom/supertws/dubokutv/FamilyIdentity;->deviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_4c

    .line 91
    :cond_12
    new-instance v0, Ljava/util/TreeSet;

    invoke-virtual {p0}, Lcom/supertws/dubokutv/FamilyIdentity;->peers()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 92
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_27

    .line 93
    :cond_37
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilyIdentity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "peers"

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_4a
    .catchall {:try_start_1 .. :try_end_4a} :catchall_4e

    .line 94
    monitor-exit p0

    return-void

    .line 90
    :cond_4c
    :goto_4c
    monitor-exit p0

    return-void

    .line 89
    :catchall_4e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized adopt(Lorg/json/JSONObject;)Z
    .registers 14

    monitor-enter p0

    .line 59
    :try_start_1
    const-string v0, "familyId"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    const-string v1, "familySecret"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    const-string v2, "from"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 62
    invoke-static {v0}, Lcom/supertws/dubokutv/FamilyIdentity;->validId(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_10c

    invoke-static {v2}, Lcom/supertws/dubokutv/FamilyIdentity;->validId(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10c

    invoke-static {v1}, Lcom/supertws/dubokutv/FamilyIdentity;->validSecret(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2e

    goto/16 :goto_10c

    .line 66
    :cond_2e
    invoke-virtual {p0}, Lcom/supertws/dubokutv/FamilyIdentity;->familyId()Ljava/lang/String;

    move-result-object v3

    .line 67
    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    if-gtz v5, :cond_4b

    .line 68
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_49

    invoke-virtual {p0}, Lcom/supertws/dubokutv/FamilyIdentity;->familySecret()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4b

    :cond_49
    const/4 v5, 0x1

    goto :goto_4c

    :cond_4b
    const/4 v5, 0x0

    .line 69
    :goto_4c
    new-instance v7, Ljava/util/TreeSet;

    invoke-virtual {p0}, Lcom/supertws/dubokutv/FamilyIdentity;->peers()Ljava/util/Set;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 70
    new-instance v8, Ljava/util/TreeSet;

    invoke-direct {v8, v7}, Ljava/util/TreeSet;-><init>(Ljava/util/SortedSet;)V

    .line 71
    const-string v9, "devices"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 72
    if-eqz p1, :cond_85

    const/4 v9, 0x0

    :goto_63
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_85

    .line 73
    const-string v10, ""

    invoke-virtual {p1, v9, v10}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/supertws/dubokutv/FamilyIdentity;->validId(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_82

    invoke-virtual {p0}, Lcom/supertws/dubokutv/FamilyIdentity;->deviceId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_82

    invoke-virtual {v8, v10}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_82
    add-int/lit8 v9, v9, 0x1

    goto :goto_63

    .line 75
    :cond_85
    invoke-virtual {v8, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v8}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_91
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {p1, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_91

    .line 77
    :cond_a1
    iget-object v2, p0, Lcom/supertws/dubokutv/FamilyIdentity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v9, "peers"

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v9, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 78
    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_d3

    .line 79
    if-eqz v5, :cond_c8

    .line 80
    const-string v2, "cloudAuthRejected"

    invoke-interface {p1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "familyCreatedAt"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-interface {v2, v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 82
    :cond_c8
    const-string v2, "familyId"

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "familySecret"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 84
    :cond_d3
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 85
    const-string p1, "R2Sync"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Family offer accepted: identityChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rosterChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8, v7}, Ljava/util/TreeSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f5

    const/4 v1, 0x1

    goto :goto_f6

    :cond_f5
    const/4 v1, 0x0

    :goto_f6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    if-nez v5, :cond_109

    invoke-virtual {v8, v7}, Ljava/util/TreeSet;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_107
    .catchall {:try_start_1 .. :try_end_107} :catchall_115

    if-nez p1, :cond_10a

    :cond_109
    const/4 v4, 0x1

    :cond_10a
    monitor-exit p0

    return v4

    .line 63
    :cond_10c
    :goto_10c
    :try_start_10c
    const-string p1, "R2Sync"

    const-string v0, "Family offer rejected: invalid fields"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_113
    .catchall {:try_start_10c .. :try_end_113} :catchall_115

    .line 64
    monitor-exit p0

    return v4

    .line 58
    :catchall_115
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized adoptSignedInFamily(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    .line 109
    :try_start_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/supertws/dubokutv/FamilyIdentity;->join(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 110
    monitor-exit p0

    return-void

    .line 108
    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public deviceId()Ljava/lang/String;
    .registers 4

    .line 42
    invoke-virtual {p0}, Lcom/supertws/dubokutv/FamilyIdentity;->ensure()V

    iget-object v0, p0, Lcom/supertws/dubokutv/FamilyIdentity;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "deviceId"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized enableSyncDefaultsIfUnset(Landroid/content/Context;)V
    .registers 7

    monitor-enter p0

    .line 136
    :try_start_1
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilyIdentity;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "cloudSyncEnabled"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 137
    :goto_f
    iget-object v2, p0, Lcom/supertws/dubokutv/FamilyIdentity;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "lanSyncEnabled"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    .line 138
    xor-int/2addr v2, v1

    if-eqz v0, :cond_29

    iget-object v3, p0, Lcom/supertws/dubokutv/FamilyIdentity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "cloudSyncEnabled"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 139
    :cond_29
    if-eqz v2, :cond_3a

    iget-object v3, p0, Lcom/supertws/dubokutv/FamilyIdentity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "lanSyncEnabled"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 140
    :cond_3a
    if-eqz v0, :cond_3f

    invoke-static {p1}, Lcom/supertws/dubokutv/CloudSyncClient;->fetchOnHistory(Landroid/content/Context;)V

    .line 141
    :cond_3f
    if-eqz v2, :cond_44

    invoke-static {v1}, Lcom/supertws/dubokutv/LanSyncManager;->onLanSyncSettingChanged(Z)V
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_46

    .line 142
    :cond_44
    monitor-exit p0

    return-void

    .line 135
    :catchall_46
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized ensure()V
    .registers 5

    monitor-enter p0

    .line 33
    :try_start_1
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilyIdentity;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "deviceId"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

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

    .line 34
    :cond_22
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilyIdentity;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "familyId"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/supertws/dubokutv/FamilyIdentity;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "familySecret"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6c

    .line 35
    :cond_36
    const/16 v0, 0x20

    new-array v0, v0, [B

    sget-object v1, Lcom/supertws/dubokutv/FamilyIdentity;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 36
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

    .line 37
    const/16 v3, 0xb

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "familyCreatedAt"

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_6c
    .catchall {:try_start_1 .. :try_end_6c} :catchall_6e

    .line 40
    :cond_6c
    monitor-exit p0

    return-void

    .line 32
    :catchall_6e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public familyId()Ljava/lang/String;
    .registers 4

    .line 43
    invoke-virtual {p0}, Lcom/supertws/dubokutv/FamilyIdentity;->ensure()V

    iget-object v0, p0, Lcom/supertws/dubokutv/FamilyIdentity;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "familyId"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public familySecret()Ljava/lang/String;
    .registers 4

    .line 44
    invoke-virtual {p0}, Lcom/supertws/dubokutv/FamilyIdentity;->ensure()V

    iget-object v0, p0, Lcom/supertws/dubokutv/FamilyIdentity;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "familySecret"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCloudSyncEnabled()Z
    .registers 4

    .line 130
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilyIdentity;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "cloudSyncEnabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isLanSyncEnabled()Z
    .registers 4

    .line 133
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilyIdentity;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "lanSyncEnabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized join(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)V
    .registers 8

    monitor-enter p0

    .line 97
    :try_start_1
    invoke-static {p1}, Lcom/supertws/dubokutv/FamilyIdentity;->validId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_81

    invoke-static {p2}, Lcom/supertws/dubokutv/FamilyIdentity;->validSecret(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 98
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 99
    if-eqz p3, :cond_37

    const/4 v1, 0x0

    :goto_15
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_37

    .line 100
    const-string v2, ""

    invoke-virtual {p3, v1, v2}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 101
    invoke-static {v2}, Lcom/supertws/dubokutv/FamilyIdentity;->validId(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-virtual {p0}, Lcom/supertws/dubokutv/FamilyIdentity;->deviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 103
    :cond_37
    new-instance p3, Lorg/json/JSONArray;

    invoke-direct {p3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_40
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p3, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_40

    .line 104
    :cond_50
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilyIdentity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "familyId"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "familySecret"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "peers"

    invoke-virtual {p3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "familyCreatedAt"

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "cloudAuthRejected"

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_7f
    .catchall {:try_start_1 .. :try_end_7f} :catchall_89

    .line 106
    monitor-exit p0

    return-void

    .line 97
    :cond_81
    :try_start_81
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid family credentials"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_89
    .catchall {:try_start_81 .. :try_end_89} :catchall_89

    .line 96
    :catchall_89
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public offer(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 113
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 114
    invoke-virtual {p0}, Lcom/supertws/dubokutv/FamilyIdentity;->deviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {p0}, Lcom/supertws/dubokutv/FamilyIdentity;->peers()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_14

    .line 115
    :cond_24
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

    .line 116
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

    .line 115
    return-object p1
.end method

.method public declared-synchronized peers()Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 47
    :try_start_1
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_3c

    .line 49
    :try_start_6
    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/supertws/dubokutv/FamilyIdentity;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "peers"

    const-string v4, "[]"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 50
    const/4 v2, 0x0

    :goto_16
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_39

    .line 51
    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 52
    invoke-static {v3}, Lcom/supertws/dubokutv/FamilyIdentity;->validId(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-virtual {p0}, Lcom/supertws/dubokutv/FamilyIdentity;->deviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_35

    invoke-virtual {v0, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_35} :catch_38
    .catchall {:try_start_6 .. :try_end_35} :catchall_3c

    .line 50
    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 54
    :catch_38
    move-exception v1

    :cond_39
    nop

    .line 55
    monitor-exit p0

    return-object v0

    .line 46
    :catchall_3c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCloudSyncEnabled(Z)V
    .registers 4

    monitor-enter p0

    .line 145
    :try_start_1
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilyIdentity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cloudSyncEnabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 146
    if-nez p1, :cond_15

    invoke-static {}, Lcom/supertws/dubokutv/CloudSyncClient;->cancelPendingCloudSync()V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 147
    :cond_15
    monitor-exit p0

    return-void

    .line 144
    :catchall_17
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setLanSyncEnabled(Z)V
    .registers 4

    monitor-enter p0

    .line 150
    :try_start_1
    iget-object v0, p0, Lcom/supertws/dubokutv/FamilyIdentity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lanSyncEnabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 151
    invoke-static {p1}, Lcom/supertws/dubokutv/LanSyncManager;->onLanSyncSettingChanged(Z)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 152
    monitor-exit p0

    return-void

    .line 149
    :catchall_15
    move-exception p1

    monitor-exit p0

    throw p1
.end method
