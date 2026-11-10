.class final Lcom/supertws/dubokutv/CloudSyncClient$RequestResult;
.super Ljava/lang/Object;
.source "CloudSyncClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/supertws/dubokutv/CloudSyncClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RequestResult"
.end annotation


# instance fields
.field final code:I

.field final errorBody:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/supertws/dubokutv/CloudSyncClient$RequestResult;->code:I

    iput-object p2, p0, Lcom/supertws/dubokutv/CloudSyncClient$RequestResult;->errorBody:Ljava/lang/String;

    return-void
.end method
