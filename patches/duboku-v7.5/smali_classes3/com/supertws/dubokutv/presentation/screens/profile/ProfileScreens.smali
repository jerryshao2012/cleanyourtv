.class public final enum Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;
.super Ljava/lang/Enum;
.source "r8-map-id-8ba8015df6390efac2340e8bc72cbaa0af05ae8dc58e92835996b10ae6d6a13d"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/a;

.field private static final synthetic $VALUES:[Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;

.field public static final enum About:Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;

.field public static final Companion:Lcom/supertws/dubokutv/presentation/screens/profile/x;

.field public static final enum Favorite:Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;

.field public static final enum Family:Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;

.field public static final INDEX_SCREEN:Ljava/lang/String; = "index"

.field public static final START_SCREEN_BUNDLE_KEY:Ljava/lang/String; = "profileStartScreen"

.field public static final enum Setting:Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;

.field public static final enum Support:Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;

.field public static final enum WatchHistory:Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;


# instance fields
.field private final icon:I

.field private final title:I


# direct methods
.method private static final synthetic $values()[Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;
    .locals 3

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;

    .line 3
    .line 4
    sget-object v1, Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;->WatchHistory:Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;->Favorite:Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;->Setting:Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    sget-object v1, Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;->Family:Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    .line 23
    aput-object v1, v0, v2

    .line 24
    .line 25
    sget-object v1, Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;->About:Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 22
    aput-object v1, v0, v2

    .line 23
    .line 24
    sget-object v1, Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;->Support:Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;

    .line 25
    .line 26
    const/4 v2, 0x5

    .line 27
    aput-object v1, v0, v2

    .line 28
    .line 29
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;

    .line 2
    .line 3
    const v1, 0x7f110132

    .line 4
    .line 5
    .line 6
    const v2, 0x7f0800d7

    .line 7
    .line 8
    .line 9
    const-string v3, "WatchHistory"

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;-><init>(Ljava/lang/String;III)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;->WatchHistory:Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;

    .line 16
    .line 17
    new-instance v0, Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;

    .line 18
    .line 19
    const v1, 0x7f11012d

    .line 20
    .line 21
    .line 22
    const v2, 0x7f0800d6

    .line 23
    .line 24
    .line 25
    const-string v3, "Favorite"

    .line 26
    .line 27
    const/4 v4, 0x1

    .line 28
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;-><init>(Ljava/lang/String;III)V

    .line 29
    .line 30
    .line 31
    sput-object v0, Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;->Favorite:Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;

    .line 32
    .line 33
    new-instance v0, Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;

    .line 34
    .line 35
    const v1, 0x7f110130

    .line 36
    .line 37
    .line 38
    const v2, 0x7f0800e7

    .line 39
    .line 40
    .line 41
    const-string v3, "Setting"

    .line 42
    .line 43
    const/4 v4, 0x2

    .line 44
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;-><init>(Ljava/lang/String;III)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;->Setting:Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;

    new-instance v0, Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;

    const v1, 0x7f110194

    const v2, 0x7f0800e0

    const-string v3, "Family"

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;->Family:Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;

    .line 48
    .line 49
    new-instance v0, Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;

    .line 50
    .line 51
    const v1, 0x7f11012b

    .line 52
    .line 53
    .line 54
    const v2, 0x7f0800df

    .line 55
    .line 56
    .line 57
    const-string v3, "About"

    .line 58
    .line 59
    const/4 v4, 0x4

    .line 60
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;-><init>(Ljava/lang/String;III)V

    .line 61
    .line 62
    .line 63
    sput-object v0, Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;->About:Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;

    .line 64
    .line 65
    new-instance v0, Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;

    .line 66
    .line 67
    const v1, 0x7f110131

    .line 68
    .line 69
    .line 70
    const v2, 0x7f0800e1

    .line 71
    .line 72
    .line 73
    const-string v3, "Support"

    .line 74
    .line 75
    const/4 v4, 0x5

    .line 76
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;-><init>(Ljava/lang/String;III)V

    .line 77
    .line 78
    .line 79
    sput-object v0, Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;->Support:Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;

    .line 80
    .line 81
    invoke-static {}, Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;->$values()[Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    sput-object v0, Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;->$VALUES:[Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;

    .line 86
    .line 87
    invoke-static {v0}, Lkotlin/enums/b;->a([Ljava/lang/Enum;)Lkotlin/enums/a;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    sput-object v0, Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;->$ENTRIES:Lkotlin/enums/a;

    .line 92
    .line 93
    new-instance v0, Lcom/supertws/dubokutv/presentation/screens/profile/x;

    .line 94
    .line 95
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 96
    .line 97
    .line 98
    sput-object v0, Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;->Companion:Lcom/supertws/dubokutv/presentation/screens/profile/x;

    .line 99
    .line 100
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;->title:I

    .line 5
    .line 6
    iput p4, p0, Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;->icon:I

    .line 7
    .line 8
    return-void
.end method

.method public static getEntries()Lkotlin/enums/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/a;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;->$ENTRIES:Lkotlin/enums/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;
    .locals 1

    .line 1
    const-class v0, Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;
    .locals 1

    .line 1
    sget-object v0, Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;->$VALUES:[Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getIcon()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;->icon:I

    .line 2
    .line 3
    return v0
.end method

.method public final getTitle()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/supertws/dubokutv/presentation/screens/profile/ProfileScreens;->title:I

    .line 2
    .line 3
    return v0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
