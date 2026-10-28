.class Lcom/supertws/dubokutv/Dbg$1$1;
.super Ljava/lang/Object;
.source "Dbg.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


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

.field final synthetic val$ch:Landroid/view/Choreographer;

.field final synthetic val$frames:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Lcom/supertws/dubokutv/Dbg$1;Ljava/util/concurrent/atomic/AtomicInteger;Landroid/view/Choreographer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/supertws/dubokutv/Dbg$1$1;->this$0:Lcom/supertws/dubokutv/Dbg$1;

    iput-object p2, p0, Lcom/supertws/dubokutv/Dbg$1$1;->val$frames:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p3, p0, Lcom/supertws/dubokutv/Dbg$1$1;->val$ch:Landroid/view/Choreographer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 0

    .line 57
    iget-object p1, p0, Lcom/supertws/dubokutv/Dbg$1$1;->val$frames:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 58
    iget-object p1, p0, Lcom/supertws/dubokutv/Dbg$1$1;->val$ch:Landroid/view/Choreographer;

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 59
    return-void
.end method
