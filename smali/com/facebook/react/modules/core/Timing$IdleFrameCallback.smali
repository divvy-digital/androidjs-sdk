.class Lcom/facebook/react/modules/core/Timing$IdleFrameCallback;
.super Lcom/facebook/react/modules/core/ChoreographerCompat$FrameCallback;
.source "Timing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/modules/core/Timing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleFrameCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/modules/core/Timing;


# direct methods
.method private constructor <init>(Lcom/facebook/react/modules/core/Timing;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/facebook/react/modules/core/Timing$IdleFrameCallback;->this$0:Lcom/facebook/react/modules/core/Timing;

    invoke-direct {p0}, Lcom/facebook/react/modules/core/ChoreographerCompat$FrameCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/react/modules/core/Timing;Lcom/facebook/react/modules/core/Timing$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/facebook/react/modules/core/Timing;
    .param p2, "x1"    # Lcom/facebook/react/modules/core/Timing$1;

    .line 108
    invoke-direct {p0, p1}, Lcom/facebook/react/modules/core/Timing$IdleFrameCallback;-><init>(Lcom/facebook/react/modules/core/Timing;)V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 2
    .param p1, "frameTimeNanos"    # J

    .line 112
    iget-object v0, p0, Lcom/facebook/react/modules/core/Timing$IdleFrameCallback;->this$0:Lcom/facebook/react/modules/core/Timing;

    invoke-static {v0}, Lcom/facebook/react/modules/core/Timing;->access$000(Lcom/facebook/react/modules/core/Timing;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/modules/core/Timing$IdleFrameCallback;->this$0:Lcom/facebook/react/modules/core/Timing;

    invoke-static {v0}, Lcom/facebook/react/modules/core/Timing;->access$100(Lcom/facebook/react/modules/core/Timing;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/modules/core/Timing$IdleFrameCallback;->this$0:Lcom/facebook/react/modules/core/Timing;

    invoke-static {v0}, Lcom/facebook/react/modules/core/Timing;->access$1100(Lcom/facebook/react/modules/core/Timing;)Lcom/facebook/react/modules/core/Timing$IdleCallbackRunnable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/facebook/react/modules/core/Timing$IdleFrameCallback;->this$0:Lcom/facebook/react/modules/core/Timing;

    invoke-static {v0}, Lcom/facebook/react/modules/core/Timing;->access$1100(Lcom/facebook/react/modules/core/Timing;)Lcom/facebook/react/modules/core/Timing$IdleCallbackRunnable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/modules/core/Timing$IdleCallbackRunnable;->cancel()V

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/modules/core/Timing$IdleFrameCallback;->this$0:Lcom/facebook/react/modules/core/Timing;

    new-instance v1, Lcom/facebook/react/modules/core/Timing$IdleCallbackRunnable;

    invoke-direct {v1, v0, p1, p2}, Lcom/facebook/react/modules/core/Timing$IdleCallbackRunnable;-><init>(Lcom/facebook/react/modules/core/Timing;J)V

    invoke-static {v0, v1}, Lcom/facebook/react/modules/core/Timing;->access$1102(Lcom/facebook/react/modules/core/Timing;Lcom/facebook/react/modules/core/Timing$IdleCallbackRunnable;)Lcom/facebook/react/modules/core/Timing$IdleCallbackRunnable;

    .line 122
    iget-object v0, p0, Lcom/facebook/react/modules/core/Timing$IdleFrameCallback;->this$0:Lcom/facebook/react/modules/core/Timing;

    invoke-static {v0}, Lcom/facebook/react/modules/core/Timing;->access$1200(Lcom/facebook/react/modules/core/Timing;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/react/modules/core/Timing$IdleFrameCallback;->this$0:Lcom/facebook/react/modules/core/Timing;

    invoke-static {v1}, Lcom/facebook/react/modules/core/Timing;->access$1100(Lcom/facebook/react/modules/core/Timing;)Lcom/facebook/react/modules/core/Timing$IdleCallbackRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->runOnJSQueueThread(Ljava/lang/Runnable;)V

    .line 124
    iget-object v0, p0, Lcom/facebook/react/modules/core/Timing$IdleFrameCallback;->this$0:Lcom/facebook/react/modules/core/Timing;

    invoke-static {v0}, Lcom/facebook/react/modules/core/Timing;->access$1000(Lcom/facebook/react/modules/core/Timing;)Lcom/facebook/react/modules/core/ReactChoreographer;

    move-result-object v0

    sget-object v1, Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;->IDLE_EVENT:Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;

    invoke-virtual {v0, v1, p0}, Lcom/facebook/react/modules/core/ReactChoreographer;->postFrameCallback(Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;Lcom/facebook/react/modules/core/ChoreographerCompat$FrameCallback;)V

    .line 125
    return-void
.end method
