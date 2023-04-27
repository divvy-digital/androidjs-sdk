.class public Landroidx/test/uiautomator/UiScrollable;
.super Landroidx/test/uiautomator/UiCollection;
.source "UiScrollable.java"


# static fields
.field private static final DEFAULT_SWIPE_DEADZONE_PCT:D = 0.1

.field private static final FLING_STEPS:I = 0x5

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final SCROLL_STEPS:I = 0x37

.field private static mMaxSearchSwipes:I


# instance fields
.field private mIsVerticalList:Z

.field private mSwipeDeadZonePercentage:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Landroidx/test/uiautomator/UiScrollable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/test/uiautomator/UiScrollable;->LOG_TAG:Ljava/lang/String;

    .line 41
    const/16 v0, 0x1e

    sput v0, Landroidx/test/uiautomator/UiScrollable;->mMaxSearchSwipes:I

    return-void
.end method

.method public constructor <init>(Landroidx/test/uiautomator/UiSelector;)V
    .locals 2
    .param p1, "container"    # Landroidx/test/uiautomator/UiSelector;

    .line 58
    invoke-direct {p0, p1}, Landroidx/test/uiautomator/UiCollection;-><init>(Landroidx/test/uiautomator/UiSelector;)V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/test/uiautomator/UiScrollable;->mIsVerticalList:Z

    .line 46
    const-wide v0, 0x3fb999999999999aL    # 0.1

    iput-wide v0, p0, Landroidx/test/uiautomator/UiScrollable;->mSwipeDeadZonePercentage:D

    .line 59
    return-void
.end method


# virtual methods
.method public ensureFullyVisible(Landroidx/test/uiautomator/UiObject;)Z
    .locals 7
    .param p1, "childObject"    # Landroidx/test/uiautomator/UiObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/uiautomator/UiObjectNotFoundException;
        }
    .end annotation

    .line 294
    invoke-virtual {p1}, Landroidx/test/uiautomator/UiObject;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 295
    .local v0, "actual":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroidx/test/uiautomator/UiObject;->getVisibleBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 296
    .local v1, "visible":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    mul-int v2, v2, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int v3, v3, v4

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    .line 298
    return v4

    .line 300
    :cond_0
    const/4 v2, 0x0

    .line 301
    .local v2, "shouldSwipeForward":Z
    iget-boolean v3, p0, Landroidx/test/uiautomator/UiScrollable;->mIsVerticalList:Z

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    .line 304
    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->top:I

    if-ne v3, v6, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    move v2, v4

    goto :goto_2

    .line 308
    :cond_2
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v6, v1, Landroid/graphics/Rect;->left:I

    if-ne v3, v6, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    move v2, v4

    .line 310
    :goto_2
    iget-boolean v3, p0, Landroidx/test/uiautomator/UiScrollable;->mIsVerticalList:Z

    const/16 v4, 0xa

    if-eqz v3, :cond_5

    .line 311
    if-eqz v2, :cond_4

    .line 312
    invoke-virtual {p0, v4}, Landroidx/test/uiautomator/UiScrollable;->swipeUp(I)Z

    move-result v3

    return v3

    .line 314
    :cond_4
    invoke-virtual {p0, v4}, Landroidx/test/uiautomator/UiScrollable;->swipeDown(I)Z

    move-result v3

    return v3

    .line 317
    :cond_5
    if-eqz v2, :cond_6

    .line 318
    invoke-virtual {p0, v4}, Landroidx/test/uiautomator/UiScrollable;->swipeLeft(I)Z

    move-result v3

    return v3

    .line 320
    :cond_6
    invoke-virtual {p0, v4}, Landroidx/test/uiautomator/UiScrollable;->swipeRight(I)Z

    move-result v3

    return v3
.end method

.method protected exists(Landroidx/test/uiautomator/UiSelector;)Z
    .locals 1
    .param p1, "selector"    # Landroidx/test/uiautomator/UiSelector;

    .line 92
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiScrollable;->getQueryController()Landroidx/test/uiautomator/QueryController;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/test/uiautomator/QueryController;->findAccessibilityNodeInfo(Landroidx/test/uiautomator/UiSelector;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    const/4 v0, 0x1

    return v0

    .line 95
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public flingBackward()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/uiautomator/UiObjectNotFoundException;
        }
    .end annotation

    .line 460
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 461
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroidx/test/uiautomator/UiScrollable;->scrollBackward(I)Z

    move-result v0

    return v0
.end method

.method public flingForward()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/uiautomator/UiObjectNotFoundException;
        }
    .end annotation

    .line 381
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 382
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroidx/test/uiautomator/UiScrollable;->scrollForward(I)Z

    move-result v0

    return v0
.end method

.method public flingToBeginning(I)Z
    .locals 3
    .param p1, "maxSwipes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/uiautomator/UiObjectNotFoundException;
        }
    .end annotation

    .line 577
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 578
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroidx/test/uiautomator/UiScrollable;->scrollToBeginning(II)Z

    move-result v0

    return v0
.end method

.method public flingToEnd(I)Z
    .locals 3
    .param p1, "maxSwipes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/uiautomator/UiObjectNotFoundException;
        }
    .end annotation

    .line 628
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 629
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroidx/test/uiautomator/UiScrollable;->scrollToEnd(II)Z

    move-result v0

    return v0
.end method

.method public getChildByDescription(Landroidx/test/uiautomator/UiSelector;Ljava/lang/String;)Landroidx/test/uiautomator/UiObject;
    .locals 2
    .param p1, "childPattern"    # Landroidx/test/uiautomator/UiSelector;
    .param p2, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/uiautomator/UiObjectNotFoundException;
        }
    .end annotation

    .line 118
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 119
    invoke-virtual {p0, p1, p2, v1}, Landroidx/test/uiautomator/UiScrollable;->getChildByDescription(Landroidx/test/uiautomator/UiSelector;Ljava/lang/String;Z)Landroidx/test/uiautomator/UiObject;

    move-result-object v0

    return-object v0
.end method

.method public getChildByDescription(Landroidx/test/uiautomator/UiSelector;Ljava/lang/String;Z)Landroidx/test/uiautomator/UiObject;
    .locals 3
    .param p1, "childPattern"    # Landroidx/test/uiautomator/UiSelector;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "allowScrollSearch"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/uiautomator/UiObjectNotFoundException;
        }
    .end annotation

    .line 140
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 141
    if-eqz p2, :cond_1

    .line 142
    if-eqz p3, :cond_0

    .line 143
    new-instance v0, Landroidx/test/uiautomator/UiSelector;

    invoke-direct {v0}, Landroidx/test/uiautomator/UiSelector;-><init>()V

    invoke-virtual {v0, p2}, Landroidx/test/uiautomator/UiSelector;->descriptionContains(Ljava/lang/String;)Landroidx/test/uiautomator/UiSelector;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/test/uiautomator/UiScrollable;->scrollIntoView(Landroidx/test/uiautomator/UiSelector;)Z

    .line 145
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/test/uiautomator/UiCollection;->getChildByDescription(Landroidx/test/uiautomator/UiSelector;Ljava/lang/String;)Landroidx/test/uiautomator/UiObject;

    move-result-object v0

    return-object v0

    .line 147
    :cond_1
    new-instance v0, Landroidx/test/uiautomator/UiObjectNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "for description= \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/test/uiautomator/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getChildByInstance(Landroidx/test/uiautomator/UiSelector;I)Landroidx/test/uiautomator/UiObject;
    .locals 3
    .param p1, "childPattern"    # Landroidx/test/uiautomator/UiSelector;
    .param p2, "instance"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/uiautomator/UiObjectNotFoundException;
        }
    .end annotation

    .line 164
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 165
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiScrollable;->getSelector()Landroidx/test/uiautomator/UiSelector;

    move-result-object v0

    invoke-static {p1}, Landroidx/test/uiautomator/UiSelector;->patternBuilder(Landroidx/test/uiautomator/UiSelector;)Landroidx/test/uiautomator/UiSelector;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroidx/test/uiautomator/UiSelector;->instance(I)Landroidx/test/uiautomator/UiSelector;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/test/uiautomator/UiSelector;->patternBuilder(Landroidx/test/uiautomator/UiSelector;Landroidx/test/uiautomator/UiSelector;)Landroidx/test/uiautomator/UiSelector;

    move-result-object v0

    .line 167
    .local v0, "patternSelector":Landroidx/test/uiautomator/UiSelector;
    new-instance v1, Landroidx/test/uiautomator/UiObject;

    invoke-direct {v1, v0}, Landroidx/test/uiautomator/UiObject;-><init>(Landroidx/test/uiautomator/UiSelector;)V

    return-object v1
.end method

.method public getChildByText(Landroidx/test/uiautomator/UiSelector;Ljava/lang/String;)Landroidx/test/uiautomator/UiObject;
    .locals 2
    .param p1, "childPattern"    # Landroidx/test/uiautomator/UiSelector;
    .param p2, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/uiautomator/UiObjectNotFoundException;
        }
    .end annotation

    .line 189
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 190
    invoke-virtual {p0, p1, p2, v1}, Landroidx/test/uiautomator/UiScrollable;->getChildByText(Landroidx/test/uiautomator/UiSelector;Ljava/lang/String;Z)Landroidx/test/uiautomator/UiObject;

    move-result-object v0

    return-object v0
.end method

.method public getChildByText(Landroidx/test/uiautomator/UiSelector;Ljava/lang/String;Z)Landroidx/test/uiautomator/UiObject;
    .locals 3
    .param p1, "childPattern"    # Landroidx/test/uiautomator/UiSelector;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "allowScrollSearch"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/uiautomator/UiObjectNotFoundException;
        }
    .end annotation

    .line 210
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 211
    if-eqz p2, :cond_1

    .line 212
    if-eqz p3, :cond_0

    .line 213
    new-instance v0, Landroidx/test/uiautomator/UiSelector;

    invoke-direct {v0}, Landroidx/test/uiautomator/UiSelector;-><init>()V

    invoke-virtual {v0, p2}, Landroidx/test/uiautomator/UiSelector;->text(Ljava/lang/String;)Landroidx/test/uiautomator/UiSelector;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/test/uiautomator/UiScrollable;->scrollIntoView(Landroidx/test/uiautomator/UiSelector;)Z

    .line 215
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/test/uiautomator/UiCollection;->getChildByText(Landroidx/test/uiautomator/UiSelector;Ljava/lang/String;)Landroidx/test/uiautomator/UiObject;

    move-result-object v0

    return-object v0

    .line 217
    :cond_1
    new-instance v0, Landroidx/test/uiautomator/UiObjectNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "for text= \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/test/uiautomator/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMaxSearchSwipes()I
    .locals 1

    .line 365
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 366
    sget v0, Landroidx/test/uiautomator/UiScrollable;->mMaxSearchSwipes:I

    return v0
.end method

.method public getSwipeDeadZonePercentage()D
    .locals 2

    .line 644
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 645
    iget-wide v0, p0, Landroidx/test/uiautomator/UiScrollable;->mSwipeDeadZonePercentage:D

    return-wide v0
.end method

.method public scrollBackward()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/uiautomator/UiObjectNotFoundException;
        }
    .end annotation

    .line 476
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 477
    const/16 v0, 0x37

    invoke-virtual {p0, v0}, Landroidx/test/uiautomator/UiScrollable;->scrollBackward(I)Z

    move-result v0

    return v0
.end method

.method public scrollBackward(I)Z
    .locals 14
    .param p1, "steps"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/uiautomator/UiObjectNotFoundException;
        }
    .end annotation

    .line 492
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 493
    sget-object v0, Landroidx/test/uiautomator/UiScrollable;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scrollBackward() on selector = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/test/uiautomator/UiScrollable;->getSelector()Landroidx/test/uiautomator/UiSelector;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v1, v2}, Landroidx/test/uiautomator/UiScrollable;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 495
    .local v1, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v1, :cond_1

    .line 498
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 499
    .local v2, "rect":Landroid/graphics/Rect;
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 501
    const/4 v3, 0x0

    .line 502
    .local v3, "downX":I
    const/4 v4, 0x0

    .line 503
    .local v4, "downY":I
    const/4 v5, 0x0

    .line 504
    .local v5, "upX":I
    const/4 v6, 0x0

    .line 508
    .local v6, "upY":I
    iget-boolean v7, p0, Landroidx/test/uiautomator/UiScrollable;->mIsVerticalList:Z

    if-eqz v7, :cond_0

    .line 509
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-double v7, v7

    invoke-virtual {p0}, Landroidx/test/uiautomator/UiScrollable;->getSwipeDeadZonePercentage()D

    move-result-wide v9

    mul-double v7, v7, v9

    double-to-int v7, v7

    .line 510
    .local v7, "swipeAreaAdjust":I
    const-string v8, "scrollToBegining() using vertical scroll"

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 513
    .end local v3    # "downX":I
    .local v0, "downX":I
    iget v3, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v7

    .line 514
    .end local v4    # "downY":I
    .local v3, "downY":I
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    .line 515
    .end local v5    # "upX":I
    .local v4, "upX":I
    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v7

    .line 516
    .end local v6    # "upY":I
    .end local v7    # "swipeAreaAdjust":I
    .local v5, "upY":I
    goto :goto_0

    .line 517
    .end local v0    # "downX":I
    .local v3, "downX":I
    .local v4, "downY":I
    .local v5, "upX":I
    .restart local v6    # "upY":I
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-double v7, v7

    invoke-virtual {p0}, Landroidx/test/uiautomator/UiScrollable;->getSwipeDeadZonePercentage()D

    move-result-wide v9

    mul-double v7, v7, v9

    double-to-int v7, v7

    .line 518
    .restart local v7    # "swipeAreaAdjust":I
    const-string v8, "scrollToBegining() using hotizontal scroll"

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iget v0, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v7

    .line 522
    .end local v3    # "downX":I
    .restart local v0    # "downX":I
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    .line 523
    .end local v4    # "downY":I
    .local v3, "downY":I
    iget v4, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v7

    .line 524
    .end local v5    # "upX":I
    .local v4, "upX":I
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    .line 526
    .end local v6    # "upY":I
    .end local v7    # "swipeAreaAdjust":I
    .local v5, "upY":I
    :goto_0
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiScrollable;->getInteractionController()Landroidx/test/uiautomator/InteractionController;

    move-result-object v8

    move v9, v0

    move v10, v3

    move v11, v4

    move v12, v5

    move v13, p1

    invoke-virtual/range {v8 .. v13}, Landroidx/test/uiautomator/InteractionController;->scrollSwipe(IIIII)Z

    move-result v6

    return v6

    .line 496
    .end local v0    # "downX":I
    .end local v2    # "rect":Landroid/graphics/Rect;
    .end local v3    # "downY":I
    .end local v4    # "upX":I
    .end local v5    # "upY":I
    :cond_1
    new-instance v0, Landroidx/test/uiautomator/UiObjectNotFoundException;

    invoke-virtual {p0}, Landroidx/test/uiautomator/UiScrollable;->getSelector()Landroidx/test/uiautomator/UiSelector;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/test/uiautomator/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/test/uiautomator/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public scrollDescriptionIntoView(Ljava/lang/String;)Z
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/uiautomator/UiObjectNotFoundException;
        }
    .end annotation

    .line 230
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 231
    new-instance v0, Landroidx/test/uiautomator/UiSelector;

    invoke-direct {v0}, Landroidx/test/uiautomator/UiSelector;-><init>()V

    invoke-virtual {v0, p1}, Landroidx/test/uiautomator/UiSelector;->description(Ljava/lang/String;)Landroidx/test/uiautomator/UiSelector;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/test/uiautomator/UiScrollable;->scrollIntoView(Landroidx/test/uiautomator/UiSelector;)Z

    move-result v0

    return v0
.end method

.method public scrollForward()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/uiautomator/UiObjectNotFoundException;
        }
    .end annotation

    .line 397
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 398
    const/16 v0, 0x37

    invoke-virtual {p0, v0}, Landroidx/test/uiautomator/UiScrollable;->scrollForward(I)Z

    move-result v0

    return v0
.end method

.method public scrollForward(I)Z
    .locals 14
    .param p1, "steps"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/uiautomator/UiObjectNotFoundException;
        }
    .end annotation

    .line 413
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 414
    sget-object v0, Landroidx/test/uiautomator/UiScrollable;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scrollForward() on selector = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/test/uiautomator/UiScrollable;->getSelector()Landroidx/test/uiautomator/UiSelector;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const-wide/16 v0, 0x2710

    invoke-virtual {p0, v0, v1}, Landroidx/test/uiautomator/UiScrollable;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 416
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_1

    .line 419
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 420
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 422
    const/4 v2, 0x0

    .line 423
    .local v2, "downX":I
    const/4 v3, 0x0

    .line 424
    .local v3, "downY":I
    const/4 v4, 0x0

    .line 425
    .local v4, "upX":I
    const/4 v5, 0x0

    .line 429
    .local v5, "upY":I
    iget-boolean v6, p0, Landroidx/test/uiautomator/UiScrollable;->mIsVerticalList:Z

    if-eqz v6, :cond_0

    .line 430
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-double v6, v6

    invoke-virtual {p0}, Landroidx/test/uiautomator/UiScrollable;->getSwipeDeadZonePercentage()D

    move-result-wide v8

    mul-double v6, v6, v8

    double-to-int v6, v6

    .line 432
    .local v6, "swipeAreaAdjust":I
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    .line 433
    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v6

    .line 434
    .end local v3    # "downY":I
    .local v7, "downY":I
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    .line 435
    .end local v4    # "upX":I
    .local v3, "upX":I
    iget v4, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v6

    .line 436
    .end local v5    # "upY":I
    .end local v6    # "swipeAreaAdjust":I
    .local v4, "upY":I
    goto :goto_0

    .line 437
    .end local v7    # "downY":I
    .local v3, "downY":I
    .local v4, "upX":I
    .restart local v5    # "upY":I
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-double v6, v6

    invoke-virtual {p0}, Landroidx/test/uiautomator/UiScrollable;->getSwipeDeadZonePercentage()D

    move-result-wide v8

    mul-double v6, v6, v8

    double-to-int v6, v6

    .line 440
    .restart local v6    # "swipeAreaAdjust":I
    iget v7, v1, Landroid/graphics/Rect;->right:I

    sub-int v2, v7, v6

    .line 441
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    .line 442
    .end local v3    # "downY":I
    .restart local v7    # "downY":I
    iget v3, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v6

    .line 443
    .end local v4    # "upX":I
    .local v3, "upX":I
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    .line 445
    .end local v5    # "upY":I
    .end local v6    # "swipeAreaAdjust":I
    .local v4, "upY":I
    :goto_0
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiScrollable;->getInteractionController()Landroidx/test/uiautomator/InteractionController;

    move-result-object v8

    move v9, v2

    move v10, v7

    move v11, v3

    move v12, v4

    move v13, p1

    invoke-virtual/range {v8 .. v13}, Landroidx/test/uiautomator/InteractionController;->scrollSwipe(IIIII)Z

    move-result v5

    return v5

    .line 417
    .end local v1    # "rect":Landroid/graphics/Rect;
    .end local v2    # "downX":I
    .end local v3    # "upX":I
    .end local v4    # "upY":I
    .end local v7    # "downY":I
    :cond_1
    new-instance v1, Landroidx/test/uiautomator/UiObjectNotFoundException;

    invoke-virtual {p0}, Landroidx/test/uiautomator/UiScrollable;->getSelector()Landroidx/test/uiautomator/UiSelector;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/test/uiautomator/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/test/uiautomator/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public scrollIntoView(Landroidx/test/uiautomator/UiObject;)Z
    .locals 3
    .param p1, "obj"    # Landroidx/test/uiautomator/UiObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/uiautomator/UiObjectNotFoundException;
        }
    .end annotation

    .line 243
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroidx/test/uiautomator/UiObject;->getSelector()Landroidx/test/uiautomator/UiSelector;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 244
    invoke-virtual {p1}, Landroidx/test/uiautomator/UiObject;->getSelector()Landroidx/test/uiautomator/UiSelector;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/test/uiautomator/UiScrollable;->scrollIntoView(Landroidx/test/uiautomator/UiSelector;)Z

    move-result v0

    return v0
.end method

.method public scrollIntoView(Landroidx/test/uiautomator/UiSelector;)Z
    .locals 6
    .param p1, "selector"    # Landroidx/test/uiautomator/UiSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/uiautomator/UiObjectNotFoundException;
        }
    .end annotation

    .line 258
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 260
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiScrollable;->getSelector()Landroidx/test/uiautomator/UiSelector;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/test/uiautomator/UiSelector;->childSelector(Landroidx/test/uiautomator/UiSelector;)Landroidx/test/uiautomator/UiSelector;

    move-result-object v1

    .line 261
    .local v1, "childSelector":Landroidx/test/uiautomator/UiSelector;
    invoke-virtual {p0, v1}, Landroidx/test/uiautomator/UiScrollable;->exists(Landroidx/test/uiautomator/UiSelector;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 262
    return v0

    .line 265
    :cond_0
    sget v3, Landroidx/test/uiautomator/UiScrollable;->mMaxSearchSwipes:I

    invoke-virtual {p0, v3}, Landroidx/test/uiautomator/UiScrollable;->scrollToBeginning(I)Z

    .line 266
    invoke-virtual {p0, v1}, Landroidx/test/uiautomator/UiScrollable;->exists(Landroidx/test/uiautomator/UiSelector;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 267
    return v0

    .line 269
    :cond_1
    const/4 v3, 0x0

    .local v3, "x":I
    :goto_0
    sget v4, Landroidx/test/uiautomator/UiScrollable;->mMaxSearchSwipes:I

    if-ge v3, v4, :cond_4

    .line 270
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiScrollable;->scrollForward()Z

    move-result v4

    .line 271
    .local v4, "scrolled":Z
    invoke-virtual {p0, v1}, Landroidx/test/uiautomator/UiScrollable;->exists(Landroidx/test/uiautomator/UiSelector;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 272
    return v0

    .line 274
    :cond_2
    if-nez v4, :cond_3

    .line 275
    return v2

    .line 269
    .end local v4    # "scrolled":Z
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 279
    .end local v3    # "x":I
    :cond_4
    return v2
.end method

.method public scrollTextIntoView(Ljava/lang/String;)Z
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/uiautomator/UiObjectNotFoundException;
        }
    .end annotation

    .line 335
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 336
    new-instance v0, Landroidx/test/uiautomator/UiSelector;

    invoke-direct {v0}, Landroidx/test/uiautomator/UiSelector;-><init>()V

    invoke-virtual {v0, p1}, Landroidx/test/uiautomator/UiSelector;->text(Ljava/lang/String;)Landroidx/test/uiautomator/UiSelector;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/test/uiautomator/UiScrollable;->scrollIntoView(Landroidx/test/uiautomator/UiSelector;)Z

    move-result v0

    return v0
.end method

.method public scrollToBeginning(I)Z
    .locals 3
    .param p1, "maxSwipes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/uiautomator/UiObjectNotFoundException;
        }
    .end annotation

    .line 562
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 563
    const/16 v0, 0x37

    invoke-virtual {p0, p1, v0}, Landroidx/test/uiautomator/UiScrollable;->scrollToBeginning(II)Z

    move-result v0

    return v0
.end method

.method public scrollToBeginning(II)Z
    .locals 4
    .param p1, "maxSwipes"    # I
    .param p2, "steps"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/uiautomator/UiObjectNotFoundException;
        }
    .end annotation

    .line 540
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 541
    sget-object v0, Landroidx/test/uiautomator/UiScrollable;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scrollToBeginning() on selector = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/test/uiautomator/UiScrollable;->getSelector()Landroidx/test/uiautomator/UiSelector;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const/4 v0, 0x0

    .local v0, "x":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 544
    invoke-virtual {p0, p2}, Landroidx/test/uiautomator/UiScrollable;->scrollBackward(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 545
    goto :goto_1

    .line 543
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 548
    .end local v0    # "x":I
    :cond_1
    :goto_1
    return v2
.end method

.method public scrollToEnd(I)Z
    .locals 3
    .param p1, "maxSwipes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/uiautomator/UiObjectNotFoundException;
        }
    .end annotation

    .line 613
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 614
    const/16 v0, 0x37

    invoke-virtual {p0, p1, v0}, Landroidx/test/uiautomator/UiScrollable;->scrollToEnd(II)Z

    move-result v0

    return v0
.end method

.method public scrollToEnd(II)Z
    .locals 3
    .param p1, "maxSwipes"    # I
    .param p2, "steps"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/uiautomator/UiObjectNotFoundException;
        }
    .end annotation

    .line 592
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 594
    const/4 v0, 0x0

    .local v0, "x":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 595
    invoke-virtual {p0, p2}, Landroidx/test/uiautomator/UiScrollable;->scrollForward(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 596
    goto :goto_1

    .line 594
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 599
    .end local v0    # "x":I
    :cond_1
    :goto_1
    return v2
.end method

.method public setAsHorizontalList()Landroidx/test/uiautomator/UiScrollable;
    .locals 2

    .line 78
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v1}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 79
    iput-boolean v0, p0, Landroidx/test/uiautomator/UiScrollable;->mIsVerticalList:Z

    .line 80
    return-object p0
.end method

.method public setAsVerticalList()Landroidx/test/uiautomator/UiScrollable;
    .locals 1

    .line 67
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/test/uiautomator/UiScrollable;->mIsVerticalList:Z

    .line 69
    return-object p0
.end method

.method public setMaxSearchSwipes(I)Landroidx/test/uiautomator/UiScrollable;
    .locals 3
    .param p1, "swipes"    # I

    .line 350
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 351
    sput p1, Landroidx/test/uiautomator/UiScrollable;->mMaxSearchSwipes:I

    .line 352
    return-object p0
.end method

.method public setSwipeDeadZonePercentage(D)Landroidx/test/uiautomator/UiScrollable;
    .locals 3
    .param p1, "swipeDeadZonePercentage"    # D

    .line 662
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 663
    iput-wide p1, p0, Landroidx/test/uiautomator/UiScrollable;->mSwipeDeadZonePercentage:D

    .line 664
    return-object p0
.end method
