.class public final Lzc/f;
.super Lzc/o;
.source "r8-map-id-8ba8015df6390efac2340e8bc72cbaa0af05ae8dc58e92835996b10ae6d6a13d"


# static fields
.field public static b:Z


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lzc/f;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lzc/f;->a:I

    .line 2
    .line 3
    sparse-switch v0, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lzc/o;->a()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0

    .line 11
    :sswitch_0
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :sswitch_1
    const/4 v0, -0x1

    .line 14
    return v0

    .line 15
    :sswitch_2
    const/4 v0, 0x1

    .line 16
    return v0

    .line 17
    :sswitch_3
    const/16 v0, 0xa

    .line 18
    .line 19
    return v0

    .line 20
    nop

    .line 21
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x6 -> :sswitch_2
        0x7 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public final b(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .locals 5

    .line 1
    iget v0, p0, Lzc/f;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    if-ne p1, p2, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    return p1

    .line 12
    :pswitch_0
    instance-of p1, p2, Lorg/jsoup/nodes/PseudoTextElement;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    goto :goto_2

    .line 18
    :cond_1
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->textNodes()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lorg/jsoup/nodes/TextNode;

    .line 37
    .line 38
    new-instance v1, Lorg/jsoup/nodes/PseudoTextElement;

    .line 39
    .line 40
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v3}, Lorg/jsoup/parser/Tag;->namespace()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    sget-object v4, Lorg/jsoup/parser/ParseSettings;->preserveCase:Lorg/jsoup/parser/ParseSettings;

    .line 53
    .line 54
    invoke-static {v2, v3, v4}, Lorg/jsoup/parser/Tag;->valueOf(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/ParseSettings;)Lorg/jsoup/parser/Tag;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->baseUri()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-direct {v1, v2, v3, v4}, Lorg/jsoup/nodes/PseudoTextElement;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Node;->replaceWith(Lorg/jsoup/nodes/Node;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v0}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    const/4 p1, 0x0

    .line 77
    :goto_2
    return p1

    .line 78
    :pswitch_1
    instance-of v0, p1, Lorg/jsoup/nodes/Document;

    .line 79
    .line 80
    if-eqz v0, :cond_3

    .line 81
    .line 82
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->firstElementChild()Lorg/jsoup/nodes/Element;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    :cond_3
    if-ne p2, p1, :cond_4

    .line 87
    .line 88
    const/4 p1, 0x1

    .line 89
    goto :goto_3

    .line 90
    :cond_4
    const/4 p1, 0x0

    .line 91
    :goto_3
    return p1

    .line 92
    :pswitch_2
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    const/4 v0, 0x0

    .line 97
    if-eqz p1, :cond_9

    .line 98
    .line 99
    instance-of v1, p1, Lorg/jsoup/nodes/Document;

    .line 100
    .line 101
    if-eqz v1, :cond_5

    .line 102
    .line 103
    goto :goto_6

    .line 104
    :cond_5
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->firstElementChild()Lorg/jsoup/nodes/Element;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    move v1, v0

    .line 109
    :goto_4
    const/4 v2, 0x1

    .line 110
    if-eqz p1, :cond_8

    .line 111
    .line 112
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    if-eqz v3, :cond_6

    .line 125
    .line 126
    add-int/lit8 v1, v1, 0x1

    .line 127
    .line 128
    :cond_6
    if-le v1, v2, :cond_7

    .line 129
    .line 130
    goto :goto_5

    .line 131
    :cond_7
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->nextElementSibling()Lorg/jsoup/nodes/Element;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    goto :goto_4

    .line 136
    :cond_8
    :goto_5
    if-ne v1, v2, :cond_9

    .line 137
    .line 138
    move v0, v2

    .line 139
    :cond_9
    :goto_6
    return v0

    .line 140
    :pswitch_3
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    if-eqz p1, :cond_a

    .line 145
    .line 146
    instance-of p1, p1, Lorg/jsoup/nodes/Document;

    .line 147
    .line 148
    if-nez p1, :cond_a

    .line 149
    .line 150
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->siblingElements()Lorg/jsoup/select/Elements;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    if-eqz p1, :cond_a

    .line 159
    .line 160
    const/4 p1, 0x1

    .line 161
    goto :goto_7

    .line 162
    :cond_a
    const/4 p1, 0x0

    .line 163
    :goto_7
    return p1

    .line 164
    :pswitch_4
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    if-eqz p1, :cond_b

    .line 169
    .line 170
    instance-of v0, p1, Lorg/jsoup/nodes/Document;

    .line 171
    .line 172
    if-nez v0, :cond_b

    .line 173
    .line 174
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->lastElementChild()Lorg/jsoup/nodes/Element;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    if-ne p2, p1, :cond_b

    .line 179
    .line 180
    const/4 p1, 0x1

    .line 181
    goto :goto_8

    .line 182
    :cond_b
    const/4 p1, 0x0

    .line 183
    :goto_8
    return p1

    .line 184
    :pswitch_5
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    if-eqz p1, :cond_c

    .line 189
    .line 190
    instance-of v0, p1, Lorg/jsoup/nodes/Document;

    .line 191
    .line 192
    if-nez v0, :cond_c

    .line 193
    .line 194
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->firstElementChild()Lorg/jsoup/nodes/Element;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    if-ne p2, p1, :cond_c

    .line 199
    .line 200
    const/4 p1, 0x1

    .line 201
    goto :goto_9

    .line 202
    :cond_c
    const/4 p1, 0x0

    .line 203
    :goto_9
    return p1

    .line 204
    :pswitch_6
    invoke-virtual {p2}, Lorg/jsoup/nodes/Node;->firstChild()Lorg/jsoup/nodes/Node;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    :goto_a
    if-eqz p1, :cond_f

    .line 209
    .line 210
    instance-of p2, p1, Lorg/jsoup/nodes/TextNode;

    .line 211
    .line 212
    const/4 v0, 0x0

    .line 213
    if-eqz p2, :cond_d

    .line 214
    .line 215
    move-object p2, p1

    .line 216
    check-cast p2, Lorg/jsoup/nodes/TextNode;

    .line 217
    .line 218
    invoke-virtual {p2}, Lorg/jsoup/nodes/TextNode;->isBlank()Z

    .line 219
    .line 220
    .line 221
    move-result p2

    .line 222
    if-nez p2, :cond_e

    .line 223
    .line 224
    goto :goto_b

    .line 225
    :cond_d
    instance-of p2, p1, Lorg/jsoup/nodes/Comment;

    .line 226
    .line 227
    if-nez p2, :cond_e

    .line 228
    .line 229
    instance-of p2, p1, Lorg/jsoup/nodes/XmlDeclaration;

    .line 230
    .line 231
    if-nez p2, :cond_e

    .line 232
    .line 233
    instance-of p2, p1, Lorg/jsoup/nodes/DocumentType;

    .line 234
    .line 235
    if-nez p2, :cond_e

    .line 236
    .line 237
    goto :goto_b

    .line 238
    :cond_e
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    goto :goto_a

    .line 243
    :cond_f
    const/4 v0, 0x1

    .line 244
    :goto_b
    return v0

    .line 245
    :pswitch_7
    const/4 p1, 0x1

    .line 246
    return p1

    .line 247
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lzc/f;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string v0, ">"

    .line 7
    .line 8
    return-object v0

    .line 9
    :pswitch_0
    const-string v0, ":matchText"

    .line 10
    .line 11
    return-object v0

    .line 12
    :pswitch_1
    const-string v0, ":root"

    .line 13
    .line 14
    return-object v0

    .line 15
    :pswitch_2
    const-string v0, ":only-of-type"

    .line 16
    .line 17
    return-object v0

    .line 18
    :pswitch_3
    const-string v0, ":only-child"

    .line 19
    .line 20
    return-object v0

    .line 21
    :pswitch_4
    const-string v0, ":last-child"

    .line 22
    .line 23
    return-object v0

    .line 24
    :pswitch_5
    const-string v0, ":first-child"

    .line 25
    .line 26
    return-object v0

    .line 27
    :pswitch_6
    const-string v0, ":empty"

    .line 28
    .line 29
    return-object v0

    .line 30
    :pswitch_7
    const-string v0, "*"

    .line 31
    .line 32
    return-object v0

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
