.class public Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;
.super Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
.source "ReactSwipeRefreshLayout.java"


# static fields
.field private static final DEFAULT_CIRCLE_TARGET:F = 64.0f


# instance fields
.field private mDidLayout:Z

.field private mIntercepted:Z

.field private mPrevTouchX:F

.field private mProgressViewOffset:F

.field private mRefreshing:Z

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 1
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactContext;

    .line 33
    invoke-direct {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->mDidLayout:Z

    .line 26
    iput-boolean v0, p0, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->mRefreshing:Z

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->mProgressViewOffset:F

    .line 34
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->mTouchSlop:I

    .line 35
    return-void
.end method

.method private shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 119
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 120
    .local v0, "eventX":F
    iget v3, p0, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->mPrevTouchX:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 122
    .local v3, "xDiff":F
    iget-boolean v4, p0, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->mIntercepted:Z

    if-nez v4, :cond_0

    iget v4, p0, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-lez v4, :cond_1

    .line 123
    :cond_0
    iput-boolean v2, p0, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->mIntercepted:Z

    .line 124
    return v1

    .line 114
    .end local v0    # "eventX":F
    .end local v3    # "xDiff":F
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->mPrevTouchX:F

    .line 115
    iput-boolean v1, p0, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->mIntercepted:Z

    .line 116
    nop

    .line 127
    :cond_1
    :goto_0
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 90
    invoke-direct {p0, p1}, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    invoke-static {p0, p1}, Lcom/facebook/react/uimanager/events/NativeGestureUtil;->notifyNativeGestureStarted(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 96
    invoke-virtual {p0}, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 100
    :cond_0
    return v1

    .line 102
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 64
    invoke-super/range {p0 .. p5}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->onLayout(ZIIII)V

    .line 66
    iget-boolean v0, p0, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->mDidLayout:Z

    if-nez v0, :cond_0

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->mDidLayout:Z

    .line 70
    iget v0, p0, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->mProgressViewOffset:F

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->setProgressViewOffset(F)V

    .line 71
    iget-boolean v0, p0, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->mRefreshing:Z

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->setRefreshing(Z)V

    .line 73
    :cond_0
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1
    .param p1, "disallowIntercept"    # Z

    .line 83
    invoke-virtual {p0}, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 86
    :cond_0
    return-void
.end method

.method public setProgressViewOffset(F)V
    .locals 4
    .param p1, "offset"    # F

    .line 50
    iput p1, p0, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->mProgressViewOffset:F

    .line 54
    iget-boolean v0, p0, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->mDidLayout:Z

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->getProgressCircleDiameter()I

    move-result v0

    .line 56
    .local v0, "diameter":I
    invoke-static {p1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sub-int/2addr v1, v0

    .line 57
    .local v1, "start":I
    const/high16 v2, 0x42800000    # 64.0f

    add-float/2addr v2, p1

    invoke-static {v2}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v2

    int-to-float v3, v0

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 58
    .local v2, "end":I
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1, v2}, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->setProgressViewOffset(ZII)V

    .line 60
    .end local v0    # "diameter":I
    .end local v1    # "start":I
    .end local v2    # "end":I
    :cond_0
    return-void
.end method

.method public setRefreshing(Z)V
    .locals 1
    .param p1, "refreshing"    # Z

    .line 39
    iput-boolean p1, p0, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->mRefreshing:Z

    .line 44
    iget-boolean v0, p0, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->mDidLayout:Z

    if-eqz v0, :cond_0

    .line 45
    invoke-super {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 47
    :cond_0
    return-void
.end method
