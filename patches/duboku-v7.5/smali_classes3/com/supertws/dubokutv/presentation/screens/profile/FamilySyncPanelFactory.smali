.class public final Lcom/supertws/dubokutv/presentation/screens/profile/FamilySyncPanelFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lrb/k;


# static fields
.field public static final INSTANCE:Lcom/supertws/dubokutv/presentation/screens/profile/FamilySyncPanelFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/supertws/dubokutv/presentation/screens/profile/FamilySyncPanelFactory;
    invoke-direct {v0}, Lcom/supertws/dubokutv/presentation/screens/profile/FamilySyncPanelFactory;-><init>()V
    sput-object v0, Lcom/supertws/dubokutv/presentation/screens/profile/FamilySyncPanelFactory;->INSTANCE:Lcom/supertws/dubokutv/presentation/screens/profile/FamilySyncPanelFactory;
    return-void
.end method

.method private constructor <init>()V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/content/Context;
    new-instance v0, Lcom/supertws/dubokutv/FamilySyncPanel;
    invoke-direct {v0, p1}, Lcom/supertws/dubokutv/FamilySyncPanel;-><init>(Landroid/content/Context;)V
    return-object v0
.end method
