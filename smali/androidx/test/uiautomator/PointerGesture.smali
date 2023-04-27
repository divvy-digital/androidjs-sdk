.class Landroidx/test/uiautomator/PointerGesture;
.super Ljava/lang/Object;
.source "PointerGesture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/uiautomator/PointerGesture$PointerLinearMoveAction;,
        Landroidx/test/uiautomator/PointerGesture$PointerPauseAction;,
        Landroidx/test/uiautomator/PointerGesture$PointerAction;
    }
.end annotation


# instance fields
.field private mActions:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Landroidx/test/uiautomator/PointerGesture$PointerAction;",
            ">;"
        }
    .end annotation
.end field

.field private mDelay:J

.field private mDuration:J


# direct methods
.method public constructor <init>(Landroid/graphics/Point;)V
    .locals 2
    .param p1, "startPoint"    # Landroid/graphics/Point;

    .line 35
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroidx/test/uiautomator/PointerGesture;-><init>(Landroid/graphics/Point;J)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Point;J)V
    .locals 4
    .param p1, "startPoint"    # Landroid/graphics/Point;
    .param p2, "initialDelay"    # J

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/test/uiautomator/PointerGesture;->mActions:Ljava/util/Deque;

    .line 43
    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-ltz v3, :cond_0

    .line 46
    new-instance v3, Landroidx/test/uiautomator/PointerGesture$PointerPauseAction;

    invoke-direct {v3, p1, v1, v2}, Landroidx/test/uiautomator/PointerGesture$PointerPauseAction;-><init>(Landroid/graphics/Point;J)V

    invoke-interface {v0, v3}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 47
    iput-wide p2, p0, Landroidx/test/uiautomator/PointerGesture;->mDelay:J

    .line 48
    return-void

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "initialDelay cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public delay()J
    .locals 2

    .line 84
    iget-wide v0, p0, Landroidx/test/uiautomator/PointerGesture;->mDelay:J

    return-wide v0
.end method

.method public duration()J
    .locals 2

    .line 79
    iget-wide v0, p0, Landroidx/test/uiautomator/PointerGesture;->mDuration:J

    return-wide v0
.end method

.method public end()Landroid/graphics/Point;
    .locals 1

    .line 74
    iget-object v0, p0, Landroidx/test/uiautomator/PointerGesture;->mActions:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/uiautomator/PointerGesture$PointerAction;

    iget-object v0, v0, Landroidx/test/uiautomator/PointerGesture$PointerAction;->end:Landroid/graphics/Point;

    return-object v0
.end method

.method public move(Landroid/graphics/Point;I)Landroidx/test/uiautomator/PointerGesture;
    .locals 4
    .param p1, "dest"    # Landroid/graphics/Point;
    .param p2, "speed"    # I

    .line 62
    iget-object v0, p0, Landroidx/test/uiautomator/PointerGesture;->mActions:Ljava/util/Deque;

    new-instance v1, Landroidx/test/uiautomator/PointerGesture$PointerLinearMoveAction;

    invoke-interface {v0}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/test/uiautomator/PointerGesture$PointerAction;

    iget-object v2, v2, Landroidx/test/uiautomator/PointerGesture$PointerAction;->end:Landroid/graphics/Point;

    invoke-direct {v1, v2, p1, p2}, Landroidx/test/uiautomator/PointerGesture$PointerLinearMoveAction;-><init>(Landroid/graphics/Point;Landroid/graphics/Point;I)V

    invoke-interface {v0, v1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 63
    iget-wide v0, p0, Landroidx/test/uiautomator/PointerGesture;->mDuration:J

    iget-object v2, p0, Landroidx/test/uiautomator/PointerGesture;->mActions:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/test/uiautomator/PointerGesture$PointerAction;

    iget-wide v2, v2, Landroidx/test/uiautomator/PointerGesture$PointerAction;->duration:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/test/uiautomator/PointerGesture;->mDuration:J

    .line 64
    return-object p0
.end method

.method public pause(J)Landroidx/test/uiautomator/PointerGesture;
    .locals 4
    .param p1, "time"    # J

    .line 52
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 55
    iget-object v0, p0, Landroidx/test/uiautomator/PointerGesture;->mActions:Ljava/util/Deque;

    new-instance v1, Landroidx/test/uiautomator/PointerGesture$PointerPauseAction;

    invoke-interface {v0}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/test/uiautomator/PointerGesture$PointerAction;

    iget-object v2, v2, Landroidx/test/uiautomator/PointerGesture$PointerAction;->end:Landroid/graphics/Point;

    invoke-direct {v1, v2, p1, p2}, Landroidx/test/uiautomator/PointerGesture$PointerPauseAction;-><init>(Landroid/graphics/Point;J)V

    invoke-interface {v0, v1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 56
    iget-wide v0, p0, Landroidx/test/uiautomator/PointerGesture;->mDuration:J

    iget-object v2, p0, Landroidx/test/uiautomator/PointerGesture;->mActions:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/test/uiautomator/PointerGesture$PointerAction;

    iget-wide v2, v2, Landroidx/test/uiautomator/PointerGesture$PointerAction;->duration:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/test/uiautomator/PointerGesture;->mDuration:J

    .line 57
    return-object p0

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "time cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pointAt(J)Landroid/graphics/Point;
    .locals 5
    .param p1, "time"    # J

    .line 89
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2

    .line 92
    iget-wide v0, p0, Landroidx/test/uiautomator/PointerGesture;->mDelay:J

    sub-long/2addr p1, v0

    .line 93
    iget-object v0, p0, Landroidx/test/uiautomator/PointerGesture;->mActions:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/test/uiautomator/PointerGesture$PointerAction;

    .line 94
    .local v1, "action":Landroidx/test/uiautomator/PointerGesture$PointerAction;
    iget-wide v2, v1, Landroidx/test/uiautomator/PointerGesture$PointerAction;->duration:J

    cmp-long v4, p1, v2

    if-gez v4, :cond_0

    .line 95
    long-to-float v2, p1

    iget-wide v3, v1, Landroidx/test/uiautomator/PointerGesture$PointerAction;->duration:J

    long-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroidx/test/uiautomator/PointerGesture$PointerAction;->interpolate(F)Landroid/graphics/Point;

    move-result-object v2

    return-object v2

    .line 97
    :cond_0
    iget-wide v2, v1, Landroidx/test/uiautomator/PointerGesture$PointerAction;->duration:J

    sub-long/2addr p1, v2

    .line 98
    .end local v1    # "action":Landroidx/test/uiautomator/PointerGesture$PointerAction;
    goto :goto_0

    .line 99
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v0, p0, Landroidx/test/uiautomator/PointerGesture;->mActions:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/uiautomator/PointerGesture$PointerAction;

    iget-object v0, v0, Landroidx/test/uiautomator/PointerGesture$PointerAction;->end:Landroid/graphics/Point;

    return-object v0

    .line 90
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Time cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public start()Landroid/graphics/Point;
    .locals 1

    .line 69
    iget-object v0, p0, Landroidx/test/uiautomator/PointerGesture;->mActions:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/uiautomator/PointerGesture$PointerAction;

    iget-object v0, v0, Landroidx/test/uiautomator/PointerGesture$PointerAction;->start:Landroid/graphics/Point;

    return-object v0
.end method
