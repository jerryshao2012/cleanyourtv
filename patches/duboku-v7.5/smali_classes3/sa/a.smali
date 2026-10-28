.class public final Lsa/a;
.super Ljava/lang/Object;
.source "r8-map-id-8ba8015df6390efac2340e8bc72cbaa0af05ae8dc58e92835996b10ae6d6a13d"


# direct methods
.method public static a(Ljava/lang/String;)Lqa/c;
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lta/e;->a:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Lcom/supertws/dubokutv/data/util/TTHp;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lcom/supertws/dubokutv/data/util/TTHp;->gSw(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p0, "?"

    .line 24
    .line 25
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {p0}, Lwc/c;->a(Ljava/lang/String;)Lxc/g;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    iget-object v0, p0, Lxc/g;->a:Lxc/e;

    .line 40
    .line 41
    const/4 v1, 0x1

    .line 42
    iput-boolean v1, v0, Lxc/e;->k:Z

    .line 43
    .line 44
    sget-object v0, Lta/e;->b:Lra/a;

    .line 45
    .line 46
    iget-object v0, v0, Lra/a;->a:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Lxc/g;->h(Ljava/lang/String;)Lxc/g;

    .line 49
    .line 50
    .line 51
    sget-object v0, Lta/e;->b:Lra/a;

    .line 52
    .line 53
    iget-object v0, v0, Lra/a;->b:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {p0, v0}, Lxc/g;->d(Ljava/lang/String;)Lxc/g;

    .line 56
    .line 57
    .line 58
    sget-object v0, Lta/e;->b:Lra/a;

    .line 59
    .line 60
    iget-object v0, v0, Lra/a;->c:Ljava/util/Map;

    .line 61
    .line 62
    invoke-virtual {p0, v0}, Lxc/g;->c(Ljava/util/Map;)Lxc/g;

    .line 63
    .line 64
    .line 65
    sget v0, Lta/e;->e:I

    .line 66
    .line 67
    invoke-virtual {p0, v0}, Lxc/g;->f(I)Lxc/g;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lxc/g;->b()Lorg/jsoup/nodes/Document;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->connection()Lwc/b;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Lxc/g;

    .line 79
    .line 80
    invoke-virtual {v0}, Lxc/g;->e()Lwc/a;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Lxc/f;

    .line 85
    .line 86
    iget-object v0, v0, Lxc/f;->k:Ljava/lang/String;

    .line 87
    .line 88
    if-eqz v0, :cond_0

    .line 89
    .line 90
    const-string v2, "json"

    .line 91
    .line 92
    const/4 v3, 0x0

    .line 93
    invoke-static {v0, v2, v3}, Lkotlin/text/r;->a0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-ne v0, v1, :cond_0

    .line 98
    .line 99
    sget-object v0, Lsa/b;->a:Lfc/r;

    .line 100
    .line 101
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    const-string v1, "text(...)"

    .line 106
    .line 107
    invoke-static {p0, v1}, Lkotlin/jvm/internal/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    sget-object v1, Lqa/c;->Companion:Lqa/b;

    .line 114
    .line 115
    invoke-virtual {v1}, Lqa/b;->serializer()Lac/c;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v0, v1, p0}, Lfc/b;->a(Lac/c;Ljava/lang/String;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    check-cast p0, Lqa/c;

    .line 124
    .line 125
    return-object p0

    .line 126
    :cond_0
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/impl/a0;->w(Lorg/jsoup/nodes/Document;)Lqa/c;

    .line 127
    .line 128
    .line 129
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    return-object p0

    .line 131
    :catch_0
    move-exception p0

    .line 132
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 133
    .line 134
    .line 135
    const/4 p0, 0x0

    .line 136
    return-object p0
.end method

.method public static b()Ljava/util/List;
    .locals 6

    .line 1
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 2
    .line 3
    :try_start_0
    sget-object v1, Lta/e;->a:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v2, Lcom/supertws/dubokutv/data/util/TTHp;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v3, "/home"

    .line 11
    .line 12
    invoke-static {v3}, Lcom/supertws/dubokutv/data/util/TTHp;->gSw(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, "/home?"

    .line 25
    .line 26
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v1}, Lwc/c;->a(Ljava/lang/String;)Lxc/g;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iget-object v2, v1, Lxc/g;->a:Lxc/e;

    .line 41
    .line 42
    const/4 v3, 0x1

    .line 43
    iput-boolean v3, v2, Lxc/e;->k:Z

    .line 44
    .line 45
    sget-object v2, Lta/e;->b:Lra/a;

    .line 46
    .line 47
    iget-object v2, v2, Lra/a;->a:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Lxc/g;->h(Ljava/lang/String;)Lxc/g;

    .line 50
    .line 51
    .line 52
    sget-object v2, Lta/e;->b:Lra/a;

    .line 53
    .line 54
    iget-object v2, v2, Lra/a;->b:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Lxc/g;->d(Ljava/lang/String;)Lxc/g;

    .line 57
    .line 58
    .line 59
    sget-object v2, Lta/e;->b:Lra/a;

    .line 60
    .line 61
    iget-object v2, v2, Lra/a;->c:Ljava/util/Map;

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Lxc/g;->c(Ljava/util/Map;)Lxc/g;

    .line 64
    .line 65
    .line 66
    sget v2, Lta/e;->e:I

    .line 67
    .line 68
    invoke-virtual {v1, v2}, Lxc/g;->f(I)Lxc/g;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Lxc/g;->b()Lorg/jsoup/nodes/Document;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v1}, Lorg/jsoup/nodes/Document;->connection()Lwc/b;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    check-cast v2, Lxc/g;

    .line 80
    .line 81
    invoke-virtual {v2}, Lxc/g;->e()Lwc/a;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    check-cast v2, Lxc/f;

    .line 86
    .line 87
    iget-object v2, v2, Lxc/f;->k:Ljava/lang/String;

    .line 88
    .line 89
    if-eqz v2, :cond_0

    .line 90
    .line 91
    const-string v4, "json"

    .line 92
    .line 93
    const/4 v5, 0x0

    .line 94
    invoke-static {v2, v4, v5}, Lkotlin/text/r;->a0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-ne v2, v3, :cond_0

    .line 99
    .line 100
    sget-object v2, Lsa/b;->a:Lfc/r;

    .line 101
    .line 102
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    const-string v3, "text(...)"

    .line 107
    .line 108
    invoke-static {v1, v3}, Lkotlin/jvm/internal/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    new-instance v3, Lec/c;

    .line 115
    .line 116
    sget-object v4, Lqa/l;->Companion:Lqa/k;

    .line 117
    .line 118
    invoke-virtual {v4}, Lqa/k;->serializer()Lac/c;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    const/4 v5, 0x0

    .line 123
    invoke-direct {v3, v4, v5}, Lec/c;-><init>(Lac/c;I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2, v3, v1}, Lfc/b;->a(Lac/c;Ljava/lang/String;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    check-cast v1, Ljava/util/List;

    .line 131
    .line 132
    return-object v1

    .line 133
    :catch_0
    move-exception v1

    .line 134
    goto :goto_0

    .line 135
    :cond_0
    invoke-static {v1}, Lcom/google/firebase/b;->u(Lorg/jsoup/nodes/Document;)Ljava/util/ArrayList;

    .line 136
    .line 137
    .line 138
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    return-object v0

    .line 140
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 141
    .line 142
    .line 143
    return-object v0
.end method
