.class public final synthetic Lcom/supertws/dubokutv/ProgressSyncJobService$0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/supertws/dubokutv/ProgressSyncJobService;"
    method = "lambda$onStartJob$0$com-supertws-dubokutv-ProgressSyncJobService"
    proto = "(Landroid/content/Context;Landroid/app/job/JobParameters;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/supertws/dubokutv/ProgressSyncJobService;
.field public final synthetic f$1:Landroid/content/Context;
.field public final synthetic f$2:Landroid/app/job/JobParameters;


# direct methods
.method public synthetic constructor <init>(Lcom/supertws/dubokutv/ProgressSyncJobService;Landroid/content/Context;Landroid/app/job/JobParameters;)V
    .registers 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/supertws/dubokutv/ProgressSyncJobService$0;->f$0:Lcom/supertws/dubokutv/ProgressSyncJobService;
    iput-object p2, p0, Lcom/supertws/dubokutv/ProgressSyncJobService$0;->f$1:Landroid/content/Context;
    iput-object p3, p0, Lcom/supertws/dubokutv/ProgressSyncJobService$0;->f$2:Landroid/app/job/JobParameters;
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4
    iget-object v0, p0, Lcom/supertws/dubokutv/ProgressSyncJobService$0;->f$0:Lcom/supertws/dubokutv/ProgressSyncJobService;
    iget-object v1, p0, Lcom/supertws/dubokutv/ProgressSyncJobService$0;->f$1:Landroid/content/Context;
    iget-object v2, p0, Lcom/supertws/dubokutv/ProgressSyncJobService$0;->f$2:Landroid/app/job/JobParameters;
    invoke-virtual {v0, v1, v2}, Lcom/supertws/dubokutv/ProgressSyncJobService;->lambda$onStartJob$0$com-supertws-dubokutv-ProgressSyncJobService(Landroid/content/Context;Landroid/app/job/JobParameters;)V
    return-void
.end method
