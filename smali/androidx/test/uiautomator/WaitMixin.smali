.class Landroidx/test/uiautomator/WaitMixin;
.super Ljava/lang/Object;
.source "WaitMixin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_POLL_INTERVAL:J = 0x3e8L


# instance fields
.field private mObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 29
    .local p0, "this":Landroidx/test/uiautomator/WaitMixin;, "Landroidx/test/uiautomator/WaitMixin<TT;>;"
    .local p1, "instance":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Landroidx/test/uiautomator/WaitMixin;->mObject:Ljava/lang/Object;

    .line 31
    return-void
.end method


# virtual methods
.method public wait(Landroidx/test/uiautomator/Condition;J)Ljava/lang/Object;
    .locals 6
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/test/uiautomator/Condition<",
            "-TT;TR;>;J)TR;"
        }
    .end annotation

    .line 34
    .local p0, "this":Landroidx/test/uiautomator/WaitMixin;, "Landroidx/test/uiautomator/WaitMixin<TT;>;"
    .local p1, "condition":Landroidx/test/uiautomator/Condition;, "Landroidx/test/uiautomator/Condition<-TT;TR;>;"
    const-wide/16 v4, 0x3e8

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/test/uiautomator/WaitMixin;->wait(Landroidx/test/uiautomator/Condition;JJ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public wait(Landroidx/test/uiautomator/Condition;JJ)Ljava/lang/Object;
    .locals 7
    .param p2, "timeout"    # J
    .param p4, "interval"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/test/uiautomator/Condition<",
            "-TT;TR;>;JJ)TR;"
        }
    .end annotation

    .line 38
    .local p0, "this":Landroidx/test/uiautomator/WaitMixin;, "Landroidx/test/uiautomator/WaitMixin<TT;>;"
    .local p1, "condition":Landroidx/test/uiautomator/Condition;, "Landroidx/test/uiautomator/Condition<-TT;TR;>;"
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 40
    .local v0, "startTime":J
    iget-object v2, p0, Landroidx/test/uiautomator/WaitMixin;->mObject:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Landroidx/test/uiautomator/Condition;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 41
    .local v2, "result":Ljava/lang/Object;, "TR;"
    const-wide/16 v3, 0x0

    .local v3, "elapsedTime":J
    :goto_0
    if-eqz v2, :cond_0

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 44
    :cond_0
    cmp-long v5, v3, p2

    if-ltz v5, :cond_2

    .line 45
    nop

    .line 51
    .end local v3    # "elapsedTime":J
    :cond_1
    return-object v2

    .line 48
    .restart local v3    # "elapsedTime":J
    :cond_2
    invoke-static {p4, p5}, Landroid/os/SystemClock;->sleep(J)V

    .line 49
    iget-object v5, p0, Landroidx/test/uiautomator/WaitMixin;->mObject:Ljava/lang/Object;

    invoke-virtual {p1, v5}, Landroidx/test/uiautomator/Condition;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 42
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long v3, v5, v0

    goto :goto_0
.end method
