.class Lcom/supertws/dubokutv/Dbg$1$3;
.super Ljava/lang/Object;
.source "Dbg.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/supertws/dubokutv/Dbg$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/supertws/dubokutv/Dbg$1;

.field final synthetic val$cb:Landroid/view/Choreographer$FrameCallback;

.field final synthetic val$ch:Landroid/view/Choreographer;


# direct methods
.method constructor <init>(Lcom/supertws/dubokutv/Dbg$1;Landroid/view/Choreographer;Landroid/view/Choreographer$FrameCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/supertws/dubokutv/Dbg$1$3;->this$0:Lcom/supertws/dubokutv/Dbg$1;

    iput-object p2, p0, Lcom/supertws/dubokutv/Dbg$1$3;->val$ch:Landroid/view/Choreographer;

    iput-object p3, p0, Lcom/supertws/dubokutv/Dbg$1$3;->val$cb:Landroid/view/Choreographer$FrameCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/supertws/dubokutv/Dbg$1$3;->val$ch:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/supertws/dubokutv/Dbg$1$3;->val$cb:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 70
    return-void
.end method
