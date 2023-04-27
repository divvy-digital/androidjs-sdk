.class public Landroidx/test/uiautomator/UiObject;
.super Ljava/lang/Object;
.source "UiObject.java"


# static fields
.field protected static final FINGER_TOUCH_HALF_WIDTH:I = 0x14

.field private static final LOG_TAG:Ljava/lang/String;

.field protected static final SWIPE_MARGIN_LIMIT:I = 0x5

.field protected static final WAIT_FOR_EVENT_TMEOUT:J = 0xbb8L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected static final WAIT_FOR_SELECTOR_POLL:J = 0x3e8L

.field protected static final WAIT_FOR_SELECTOR_TIMEOUT:J = 0x2710L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected static final WAIT_FOR_WINDOW_TMEOUT:J = 0x157cL


# instance fields
.field private final mConfig:Landroidx/test/uiautomator/Configurator;

.field private final mDevice:Landroidx/test/uiautomator/UiDevice;

.field private final mUiSelector:Landroidx/test/uiautomator/UiSelector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Landroidx/test/uiautomator/UiObject;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/test/uiautomator/UiObject;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroidx/test/uiautomator/UiDevice;Landroidx/test/uiautomator/UiSelector;)V
    .locals 1
    .param p1, "device"    # Landroidx/test/uiautomator/UiDevice;
    .param p2, "selector"    # Landroidx/test/uiautomator/UiSelector;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-static {}, Landroidx/test/uiautomator/Configurator;->getInstance()Landroidx/test/uiautomator/Configurator;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/uiautomator/UiObject;->mConfig:Landroidx/test/uiautomator/Configurator;

    .line 94
    iput-object p1, p0, Landroidx/test/uiautomator/UiObject;->mDevice:Landroidx/test/uiautomator/UiDevice;

    .line 95
    iput-object p2, p0, Landroidx/test/uiautomator/UiObject;->mUiSelector:Landroidx/test/uiautomator/UiSelector;

    .line 96
    return-void
.end method

.method public constructor <init>(Landroidx/test/uiautomator/UiSelector;)V
    .locals 1
    .param p1, "selector"    # Landroidx/test/uiautomator/UiSelector;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-static {}, Landroidx/test/uiautomator/Configurator;->getInstance()Landroidx/test/uiautomator/Configurator;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/uiautomator/UiObject;->mConfig:Landroidx/test/uiautomator/Configurator;

    .line 85
    iput-object p1, p0, Landroidx/test/uiautomator/UiObject;->mUiSelector:Landroidx/test/uiautomator/UiSelector;

    .line 86
    invoke-static {}, Landroidx/test/uiautomator/UiDevice;->getInstance()Landroidx/test/uiautomator/UiDevice;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/uiautomator/UiObject;->mDevice:Landroidx/test/uiautomator/UiDevice;

    .line 87
    return-void
.end method

.method private getScrollableParent(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 394
    move-object v0, p1

    .line 395
    .local v0, "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_0
    if-eqz v0, :cond_1

    .line 396
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 397
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 398
    return-object v0

    .line 401
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private getVisibleBounds(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/graphics/Rect;
    .locals 5
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 360
    if-nez p1, :cond_0

    .line 361
    const/4 v0, 0x0

    return-object v0

    .line 365
    :cond_0
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiObject;->getDevice()Landroidx/test/uiautomator/UiDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/test/uiautomator/UiDevice;->getDisplayWidth()I

    move-result v0

    .line 366
    .local v0, "w":I
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiObject;->getDevice()Landroidx/test/uiautomator/UiDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/test/uiautomator/UiDevice;->getDisplayHeight()I

    move-result v1

    .line 367
    .local v1, "h":I
    invoke-static {p1, v0, v1}, Landroidx/test/uiautomator/AccessibilityNodeInfoHelper;->getVisibleBoundsInScreen(Landroid/view/accessibility/AccessibilityNodeInfo;II)Landroid/graphics/Rect;

    move-result-object v2

    .line 370
    .local v2, "nodeRect":Landroid/graphics/Rect;
    invoke-direct {p0, p1}, Landroidx/test/uiautomator/UiObject;->getScrollableParent(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    .line 371
    .local v3, "scrollableParentNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v3, :cond_1

    .line 373
    return-object v2

    .line 377
    :cond_1
    invoke-static {v3, v0, v1}, Landroidx/test/uiautomator/AccessibilityNodeInfoHelper;->getVisibleBoundsInScreen(Landroid/view/accessibility/AccessibilityNodeInfo;II)Landroid/graphics/Rect;

    move-result-object v4

    .line 380
    .local v4, "parentRect":Landroid/graphics/Rect;
    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 381
    return-object v2
.end method

.method private safeStringReturn(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .line 987
    if-nez p1, :cond_0

    .line 988
    const-string v0, ""

    return-object v0

    .line 989
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearTextField()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/uiautomator/UiObjectNotFoundException;
        }
    .end annotation

    .line 689
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v1}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 691
    iget-object v1, p0, Landroidx/test/uiautomator/UiObject;->mConfig:Landroidx/test/uiautomator/Configurator;

    invoke-virtual {v1}, Landroidx/test/uiautomator/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroidx/test/uiautomator/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 692
    .local v1, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v1, :cond_4

    .line 695
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 697
    .local v2, "text":Ljava/lang/CharSequence;
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 698
    sget v3, Landroidx/test/uiautomator/UiDevice;->API_LEVEL_ACTUAL:I

    const/16 v4, 0x13

    if-le v3, v4, :cond_0

    .line 699
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroidx/test/uiautomator/UiObject;->setText(Ljava/lang/String;)Z

    goto :goto_0

    .line 701
    :cond_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 703
    .local v3, "selectionArgs":Landroid/os/Bundle;
    const-string v4, "ACTION_ARGUMENT_SELECTION_START_INT"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 704
    const-string v4, "ACTION_ARGUMENT_SELECTION_END_INT"

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 706
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    move-result v4

    .line 707
    .local v4, "ret":Z
    if-nez v4, :cond_1

    .line 708
    sget-object v5, Landroidx/test/uiautomator/UiObject;->LOG_TAG:Ljava/lang/String;

    const-string v6, "ACTION_FOCUS on text field failed."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    :cond_1
    const/high16 v5, 0x20000

    invoke-virtual {v1, v5, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(ILandroid/os/Bundle;)Z

    move-result v4

    .line 711
    if-nez v4, :cond_2

    .line 712
    sget-object v5, Landroidx/test/uiautomator/UiObject;->LOG_TAG:Ljava/lang/String;

    const-string v6, "ACTION_SET_SELECTION on text field failed."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    :cond_2
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiObject;->getInteractionController()Landroidx/test/uiautomator/InteractionController;

    move-result-object v5

    const/16 v6, 0x43

    invoke-virtual {v5, v6, v0}, Landroidx/test/uiautomator/InteractionController;->sendKey(II)Z

    .line 718
    .end local v3    # "selectionArgs":Landroid/os/Bundle;
    .end local v4    # "ret":Z
    :cond_3
    :goto_0
    return-void

    .line 693
    .end local v2    # "text":Ljava/lang/CharSequence;
    :cond_4
    new-instance v0, Landroidx/test/uiautomator/UiObjectNotFoundException;

    iget-object v2, p0, Landroidx/test/uiautomator/UiObject;->mUiSelector:Landroidx/test/uiautomator/UiSelector;

    invoke-virtual {v2}, Landroidx/test/uiautomator/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/test/uiautomator/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public click()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/uiautomator/UiObjectNotFoundException;
        }
    .end annotation

    .line 413
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 414
    iget-object v0, p0, Landroidx/test/uiautomator/UiObject;->mConfig:Landroidx/test/uiautomator/Configurator;

    invoke-virtual {v0}, Landroidx/test/uiautomator/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/test/uiautomator/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 415
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_0

    .line 418
    invoke-direct {p0, v0}, Landroidx/test/uiautomator/UiObject;->getVisibleBounds(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/graphics/Rect;

    move-result-object v1

    .line 419
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiObject;->getInteractionController()Landroidx/test/uiautomator/InteractionController;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    iget-object v5, p0, Landroidx/test/uiautomator/UiObject;->mConfig:Landroidx/test/uiautomator/Configurator;

    invoke-virtual {v5}, Landroidx/test/uiautomator/Configurator;->getActionAcknowledgmentTimeout()J

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Landroidx/test/uiautomator/InteractionController;->clickAndSync(IIJ)Z

    move-result v2

    return v2

    .line 416
    .end local v1    # "rect":Landroid/graphics/Rect;
    :cond_0
    new-instance v1, Landroidx/test/uiautomator/UiObjectNotFoundException;

    iget-object v2, p0, Landroidx/test/uiautomator/UiObject;->mUiSelector:Landroidx/test/uiautomator/UiSelector;

    invoke-virtual {v2}, Landroidx/test/uiautomator/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/test/uiautomator/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public clickAndWaitForNewWindow()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/uiautomator/UiObjectNotFoundException;
        }
    .end annotation

    .line 433
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 434
    const-wide/16 v0, 0x157c

    invoke-virtual {p0, v0, v1}, Landroidx/test/uiautomator/UiObject;->clickAndWaitForNewWindow(J)Z

    move-result v0

    return v0
.end method

.method public clickAndWaitForNewWindow(J)Z
    .locals 5
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/uiautomator/UiObjectNotFoundException;
        }
    .end annotation

    .line 453
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 454
    iget-object v0, p0, Landroidx/test/uiautomator/UiObject;->mConfig:Landroidx/test/uiautomator/Configurator;

    invoke-virtual {v0}, Landroidx/test/uiautomator/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/test/uiautomator/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 455
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_0

    .line 458
    invoke-direct {p0, v0}, Landroidx/test/uiautomator/UiObject;->getVisibleBounds(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/graphics/Rect;

    move-result-object v1

    .line 459
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiObject;->getInteractionController()Landroidx/test/uiautomator/InteractionController;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    invoke-virtual {v2, v3, v4, p1, p2}, Landroidx/test/uiautomator/InteractionController;->clickAndWaitForNewWindow(IIJ)Z

    move-result v2

    return v2

    .line 456
    .end local v1    # "rect":Landroid/graphics/Rect;
    :cond_0
    new-instance v1, Landroidx/test/uiautomator/UiObjectNotFoundException;

    iget-object v2, p0, Landroidx/test/uiautomator/UiObject;->mUiSelector:Landroidx/test/uiautomator/UiSelector;

    invoke-virtual {v2}, Landroidx/test/uiautomator/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/test/uiautomator/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public clickBottomRight()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/uiautomator/UiObjectNotFoundException;
        }
    .end annotation

    .line 507
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 508
    iget-object v0, p0, Landroidx/test/uiautomator/UiObject;->mConfig:Landroidx/test/uiautomator/Configurator;

    invoke-virtual {v0}, Landroidx/test/uiautomator/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/test/uiautomator/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 509
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_0

    .line 512
    invoke-direct {p0, v0}, Landroidx/test/uiautomator/UiObject;->getVisibleBounds(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/graphics/Rect;

    move-result-object v1

    .line 513
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiObject;->getInteractionController()Landroidx/test/uiautomator/InteractionController;

    move-result-object v2

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, -0x5

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, -0x5

    iget-object v5, p0, Landroidx/test/uiautomator/UiObject;->mConfig:Landroidx/test/uiautomator/Configurator;

    invoke-virtual {v5}, Landroidx/test/uiautomator/Configurator;->getActionAcknowledgmentTimeout()J

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Landroidx/test/uiautomator/InteractionController;->clickAndSync(IIJ)Z

    move-result v2

    return v2

    .line 510
    .end local v1    # "rect":Landroid/graphics/Rect;
    :cond_0
    new-instance v1, Landroidx/test/uiautomator/UiObjectNotFoundException;

    iget-object v2, p0, Landroidx/test/uiautomator/UiObject;->mUiSelector:Landroidx/test/uiautomator/UiSelector;

    invoke-virtual {v2}, Landroidx/test/uiautomator/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/test/uiautomator/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public clickTopLeft()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/uiautomator/UiObjectNotFoundException;
        }
    .end annotation

    .line 471
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 472
    iget-object v0, p0, Landroidx/test/uiautomator/UiObject;->mConfig:Landroidx/test/uiautomator/Configurator;

    invoke-virtual {v0}, Landroidx/test/uiautomator/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/test/uiautomator/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 473
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_0

    .line 476
    invoke-direct {p0, v0}, Landroidx/test/uiautomator/UiObject;->getVisibleBounds(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/graphics/Rect;

    move-result-object v1

    .line 477
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiObject;->getInteractionController()Landroidx/test/uiautomator/InteractionController;

    move-result-object v2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, 0x5

    iget v4, v1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v4, 0x5

    iget-object v5, p0, Landroidx/test/uiautomator/UiObject;->mConfig:Landroidx/test/uiautomator/Configurator;

    invoke-virtual {v5}, Landroidx/test/uiautomator/Configurator;->getActionAcknowledgmentTimeout()J

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Landroidx/test/uiautomator/InteractionController;->clickAndSync(IIJ)Z

    move-result v2

    return v2

    .line 474
    .end local v1    # "rect":Landroid/graphics/Rect;
    :cond_0
    new-instance v1, Landroidx/test/uiautomator/UiObjectNotFoundException;

    iget-object v2, p0, Landroidx/test/uiautomator/UiObject;->mUiSelector:Landroidx/test/uiautomator/UiSelector;

    invoke-virtual {v2}, Landroidx/test/uiautomator/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/test/uiautomator/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public dragTo(III)Z
    .locals 8
    .param p1, "destX"    # I
    .param p2, "destY"    # I
    .param p3, "steps"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/uiautomator/UiObjectNotFoundException;
        }
    .end annotation

    .line 240
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiObject;->getVisibleBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 241
    .local v0, "srcRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiObject;->getInteractionController()Landroidx/test/uiautomator/InteractionController;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    const/4 v7, 0x1

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v7}, Landroidx/test/uiautomator/InteractionController;->swipe(IIIIIZ)Z

    move-result v1

    return v1
.end method

.method public dragTo(Landroidx/test/uiautomator/UiObject;I)Z
    .locals 9
    .param p1, "destObj"    # Landroidx/test/uiautomator/UiObject;
    .param p2, "steps"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/uiautomator/UiObjectNotFoundException;
        }
    .end annotation

    .line 220
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiObject;->getVisibleBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 221
    .local v0, "srcRect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroidx/test/uiautomator/UiObject;->getVisibleBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 222
    .local v1, "dstRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiObject;->getInteractionController()Landroidx/test/uiautomator/InteractionController;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    const/4 v8, 0x1

    move v7, p2

    invoke-virtual/range {v2 .. v8}, Landroidx/test/uiautomator/InteractionController;->swipe(IIIIIZ)Z

    move-result v2

    return v2
.end method

.method public exists()Z
    .locals 2

    .line 982
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 983
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/test/uiautomator/UiObject;->waitForExists(J)Z

    move-result v0

    return v0
.end method

.method protected findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 8
    .param p1, "timeout"    # J

    .line 188
    const/4 v0, 0x0

    .line 189
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 190
    .local v1, "startMills":J
    const-wide/16 v3, 0x0

    .line 191
    .local v3, "currentMills":J
    :cond_0
    :goto_0
    cmp-long v5, v3, p1

    if-gtz v5, :cond_2

    .line 192
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiObject;->getQueryController()Landroidx/test/uiautomator/QueryController;

    move-result-object v5

    iget-object v6, p0, Landroidx/test/uiautomator/UiObject;->mUiSelector:Landroidx/test/uiautomator/UiSelector;

    invoke-virtual {v5, v6}, Landroidx/test/uiautomator/QueryController;->findAccessibilityNodeInfo(Landroidx/test/uiautomator/UiSelector;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 193
    if-eqz v0, :cond_1

    .line 194
    goto :goto_1

    .line 197
    :cond_1
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiObject;->getDevice()Landroidx/test/uiautomator/UiDevice;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/test/uiautomator/UiDevice;->runWatchers()V

    .line 199
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long v3, v5, v1

    .line 200
    const-wide/16 v5, 0x0

    cmp-long v7, p1, v5

    if-lez v7, :cond_0

    .line 201
    const-wide/16 v5, 0x3e8

    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 204
    :cond_2
    :goto_1
    return-object v0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/uiautomator/UiObjectNotFoundException;
        }
    .end annotation

    .line 908
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 909
    iget-object v0, p0, Landroidx/test/uiautomator/UiObject;->mConfig:Landroidx/test/uiautomator/Configurator;

    invoke-virtual {v0}, Landroidx/test/uiautomator/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/test/uiautomator/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 910
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_0

    .line 913
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 914
    .local v1, "nodeRect":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 916
    return-object v1

    .line 911
    .end local v1    # "nodeRect":Landroid/graphics/Rect;
    :cond_0
    new-instance v1, Landroidx/test/uiautomator/UiObjectNotFoundException;

    iget-object v2, p0, Landroidx/test/uiautomator/UiObject;->mUiSelector:Landroidx/test/uiautomator/UiSelector;

    invoke-virtual {v2}, Landroidx/test/uiautomator/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/test/uiautomator/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getChild(Landroidx/test/uiautomator/UiSelector;)Landroidx/test/uiautomator/UiObject;
    .locals 2
    .param p1, "selector"    # Landroidx/test/uiautomator/UiSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/uiautomator/UiObjectNotFoundException;
        }
    .end annotation

    .line 145
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 146
    new-instance v0, Landroidx/test/uiautomator/UiObject;

    invoke-virtual {p0}, Landroidx/test/uiautomator/UiObject;->getSelector()Landroidx/test/uiautomator/UiSelector;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/test/uiautomator/UiSelector;->childSelector(Landroidx/test/uiautomator/UiSelector;)Landroidx/test/uiautomator/UiSelector;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/test/uiautomator/UiObject;-><init>(Landroidx/test/uiautomator/UiSelector;)V

    return-object v0
.end method

.method public getChildCount()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/uiautomator/UiObjectNotFoundException;
        }
    .end annotation

    .line 171
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 172
    iget-object v0, p0, Landroidx/test/uiautomator/UiObject;->mConfig:Landroidx/test/uiautomator/Configurator;

    invoke-virtual {v0}, Landroidx/test/uiautomator/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/test/uiautomator/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 173
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v1

    return v1

    .line 174
    :cond_0
    new-instance v1, Landroidx/test/uiautomator/UiObjectNotFoundException;

    iget-object v2, p0, Landroidx/test/uiautomator/UiObject;->mUiSelector:Landroidx/test/uiautomator/UiSelector;

    invoke-virtual {v2}, Landroidx/test/uiautomator/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/test/uiautomator/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getClassName()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/uiautomator/UiObjectNotFoundException;
        }
    .end annotation

    .line 579
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v1}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 580
    iget-object v1, p0, Landroidx/test/uiautomator/UiObject;->mConfig:Landroidx/test/uiautomator/Configurator;

    invoke-virtual {v1}, Landroidx/test/uiautomator/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroidx/test/uiautomator/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 581
    .local v1, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v1, :cond_0

    .line 584
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2}, Landroidx/test/uiautomator/UiObject;->safeStringReturn(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 585
    .local v2, "retVal":Ljava/lang/String;
    sget-object v3, Landroidx/test/uiautomator/UiObject;->LOG_TAG:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v0

    const-string v0, "getClassName() = %s"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    return-object v2

    .line 582
    .end local v2    # "retVal":Ljava/lang/String;
    :cond_0
    new-instance v0, Landroidx/test/uiautomator/UiObjectNotFoundException;

    iget-object v2, p0, Landroidx/test/uiautomator/UiObject;->mUiSelector:Landroidx/test/uiautomator/UiSelector;

    invoke-virtual {v2}, Landroidx/test/uiautomator/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/test/uiautomator/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContentDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/uiautomator/UiObjectNotFoundException;
        }
    .end annotation

    .line 597
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 598
    iget-object v0, p0, Landroidx/test/uiautomator/UiObject;->mConfig:Landroidx/test/uiautomator/Configurator;

    invoke-virtual {v0}, Landroidx/test/uiautomator/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/test/uiautomator/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 599
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_0

    .line 602
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Landroidx/test/uiautomator/UiObject;->safeStringReturn(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 600
    :cond_0
    new-instance v1, Landroidx/test/uiautomator/UiObjectNotFoundException;

    iget-object v2, p0, Landroidx/test/uiautomator/UiObject;->mUiSelector:Landroidx/test/uiautomator/UiSelector;

    invoke-virtual {v2}, Landroidx/test/uiautomator/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/test/uiautomator/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getDevice()Landroidx/test/uiautomator/UiDevice;
    .locals 1

    .line 114
    iget-object v0, p0, Landroidx/test/uiautomator/UiObject;->mDevice:Landroidx/test/uiautomator/UiDevice;

    return-object v0
.end method

.method public getFromParent(Landroidx/test/uiautomator/UiSelector;)Landroidx/test/uiautomator/UiObject;
    .locals 2
    .param p1, "selector"    # Landroidx/test/uiautomator/UiSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/uiautomator/UiObjectNotFoundException;
        }
    .end annotation

    .line 159
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 160
    new-instance v0, Landroidx/test/uiautomator/UiObject;

    invoke-virtual {p0}, Landroidx/test/uiautomator/UiObject;->getSelector()Landroidx/test/uiautomator/UiSelector;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/test/uiautomator/UiSelector;->fromParent(Landroidx/test/uiautomator/UiSelector;)Landroidx/test/uiautomator/UiSelector;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/test/uiautomator/UiObject;-><init>(Landroidx/test/uiautomator/UiSelector;)V

    return-object v0
.end method

.method getInteractionController()Landroidx/test/uiautomator/InteractionController;
    .locals 1

    .line 134
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiObject;->getDevice()Landroidx/test/uiautomator/UiDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/test/uiautomator/UiDevice;->getInteractionController()Landroidx/test/uiautomator/InteractionController;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/uiautomator/UiObjectNotFoundException;
        }
    .end annotation

    .line 871
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 872
    iget-object v0, p0, Landroidx/test/uiautomator/UiObject;->mConfig:Landroidx/test/uiautomator/Configurator;

    invoke-virtual {v0}, Landroidx/test/uiautomator/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/test/uiautomator/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 873
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_0

    .line 876
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Landroidx/test/uiautomator/UiObject;->safeStringReturn(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 874
    :cond_0
    new-instance v1, Landroidx/test/uiautomator/UiObjectNotFoundException;

    iget-object v2, p0, Landroidx/test/uiautomator/UiObject;->mUiSelector:Landroidx/test/uiautomator/UiSelector;

    invoke-virtual {v2}, Landroidx/test/uiautomator/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/test/uiautomator/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getQueryController()Landroidx/test/uiautomator/QueryController;
    .locals 1

    .line 124
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiObject;->getDevice()Landroidx/test/uiautomator/UiDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/test/uiautomator/UiDevice;->getQueryController()Landroidx/test/uiautomator/QueryController;

    move-result-object v0

    return-object v0
.end method

.method public final getSelector()Landroidx/test/uiautomator/UiSelector;
    .locals 2

    .line 106
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 107
    iget-object v0, p0, Landroidx/test/uiautomator/UiObject;->mUiSelector:Landroidx/test/uiautomator/UiSelector;

    if-eqz v0, :cond_0

    .line 110
    return-object v0

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UiSelector not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getText()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/uiautomator/UiObjectNotFoundException;
        }
    .end annotation

    .line 561
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v1}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 562
    iget-object v1, p0, Landroidx/test/uiautomator/UiObject;->mConfig:Landroidx/test/uiautomator/Configurator;

    invoke-virtual {v1}, Landroidx/test/uiautomator/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroidx/test/uiautomator/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 563
    .local v1, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v1, :cond_0

    .line 566
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2}, Landroidx/test/uiautomator/UiObject;->safeStringReturn(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 567
    .local v2, "retVal":Ljava/lang/String;
    sget-object v3, Landroidx/test/uiautomator/UiObject;->LOG_TAG:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v0

    const-string v0, "getText() = %s"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    return-object v2

    .line 564
    .end local v2    # "retVal":Ljava/lang/String;
    :cond_0
    new-instance v0, Landroidx/test/uiautomator/UiObjectNotFoundException;

    iget-object v2, p0, Landroidx/test/uiautomator/UiObject;->mUiSelector:Landroidx/test/uiautomator/UiSelector;

    invoke-virtual {v2}, Landroidx/test/uiautomator/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/test/uiautomator/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVisibleBounds()Landroid/graphics/Rect;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/uiautomator/UiObjectNotFoundException;
        }
    .end annotation

    .line 892
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 893
    iget-object v0, p0, Landroidx/test/uiautomator/UiObject;->mConfig:Landroidx/test/uiautomator/Configurator;

    invoke-virtual {v0}, Landroidx/test/uiautomator/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/test/uiautomator/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 894
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_0

    .line 897
    invoke-direct {p0, v0}, Landroidx/test/uiautomator/UiObject;->getVisibleBounds(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/graphics/Rect;

    move-result-object v1

    return-object v1

    .line 895
    :cond_0
    new-instance v1, Landroidx/test/uiautomator/UiObjectNotFoundException;

    iget-object v2, p0, Landroidx/test/uiautomator/UiObject;->mUiSelector:Landroidx/test/uiautomator/UiSelector;

    invoke-virtual {v2}, Landroidx/test/uiautomator/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/test/uiautomator/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isCheckable()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/uiautomator/UiObjectNotFoundException;
        }
    .end annotation

    .line 759
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 760
    iget-object v0, p0, Landroidx/test/uiautomator/UiObject;->mConfig:Landroidx/test/uiautomator/Configurator;

    invoke-virtual {v0}, Landroidx/test/uiautomator/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/test/uiautomator/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 761
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_0

    .line 764
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z

    move-result v1

    return v1

    .line 762
    :cond_0
    new-instance v1, Landroidx/test/uiautomator/UiObjectNotFoundException;

    iget-object v2, p0, Landroidx/test/uiautomator/UiObject;->mUiSelector:Landroidx/test/uiautomator/UiSelector;

    invoke-virtual {v2}, Landroidx/test/uiautomator/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/test/uiautomator/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isChecked()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/uiautomator/UiObjectNotFoundException;
        }
    .end annotation

    .line 727
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 728
    iget-object v0, p0, Landroidx/test/uiautomator/UiObject;->mConfig:Landroidx/test/uiautomator/Configurator;

    invoke-virtual {v0}, Landroidx/test/uiautomator/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/test/uiautomator/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 729
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_0

    .line 732
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v1

    return v1

    .line 730
    :cond_0
    new-instance v1, Landroidx/test/uiautomator/UiObjectNotFoundException;

    iget-object v2, p0, Landroidx/test/uiautomator/UiObject;->mUiSelector:Landroidx/test/uiautomator/UiSelector;

    invoke-virtual {v2}, Landroidx/test/uiautomator/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/test/uiautomator/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isClickable()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/uiautomator/UiObjectNotFoundException;
        }
    .end annotation

    .line 791
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 792
    iget-object v0, p0, Landroidx/test/uiautomator/UiObject;->mConfig:Landroidx/test/uiautomator/Configurator;

    invoke-virtual {v0}, Landroidx/test/uiautomator/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/test/uiautomator/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 793
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_0

    .line 796
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v1

    return v1

    .line 794
    :cond_0
    new-instance v1, Landroidx/test/uiautomator/UiObjectNotFoundException;

    iget-object v2, p0, Landroidx/test/uiautomator/UiObject;->mUiSelector:Landroidx/test/uiautomator/UiSelector;

    invoke-virtual {v2}, Landroidx/test/uiautomator/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/test/uiautomator/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isEnabled()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/uiautomator/UiObjectNotFoundException;
        }
    .end annotation

    .line 775
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 776
    iget-object v0, p0, Landroidx/test/uiautomator/UiObject;->mConfig:Landroidx/test/uiautomator/Configurator;

    invoke-virtual {v0}, Landroidx/test/uiautomator/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/test/uiautomator/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 777
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_0

    .line 780
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v1

    return v1

    .line 778
    :cond_0
    new-instance v1, Landroidx/test/uiautomator/UiObjectNotFoundException;

    iget-object v2, p0, Landroidx/test/uiautomator/UiObject;->mUiSelector:Landroidx/test/uiautomator/UiSelector;

    invoke-virtual {v2}, Landroidx/test/uiautomator/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/test/uiautomator/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isFocusable()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/uiautomator/UiObjectNotFoundException;
        }
    .end annotation

    .line 823
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 824
    iget-object v0, p0, Landroidx/test/uiautomator/UiObject;->mConfig:Landroidx/test/uiautomator/Configurator;

    invoke-virtual {v0}, Landroidx/test/uiautomator/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/test/uiautomator/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 825
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_0

    .line 828
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v1

    return v1

    .line 826
    :cond_0
    new-instance v1, Landroidx/test/uiautomator/UiObjectNotFoundException;

    iget-object v2, p0, Landroidx/test/uiautomator/UiObject;->mUiSelector:Landroidx/test/uiautomator/UiSelector;

    invoke-virtual {v2}, Landroidx/test/uiautomator/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/test/uiautomator/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isFocused()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/uiautomator/UiObjectNotFoundException;
        }
    .end annotation

    .line 807
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 808
    iget-object v0, p0, Landroidx/test/uiautomator/UiObject;->mConfig:Landroidx/test/uiautomator/Configurator;

    invoke-virtual {v0}, Landroidx/test/uiautomator/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/test/uiautomator/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 809
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_0

    .line 812
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v1

    return v1

    .line 810
    :cond_0
    new-instance v1, Landroidx/test/uiautomator/UiObjectNotFoundException;

    iget-object v2, p0, Landroidx/test/uiautomator/UiObject;->mUiSelector:Landroidx/test/uiautomator/UiSelector;

    invoke-virtual {v2}, Landroidx/test/uiautomator/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/test/uiautomator/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isLongClickable()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/uiautomator/UiObjectNotFoundException;
        }
    .end annotation

    .line 855
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 856
    iget-object v0, p0, Landroidx/test/uiautomator/UiObject;->mConfig:Landroidx/test/uiautomator/Configurator;

    invoke-virtual {v0}, Landroidx/test/uiautomator/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/test/uiautomator/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 857
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_0

    .line 860
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    move-result v1

    return v1

    .line 858
    :cond_0
    new-instance v1, Landroidx/test/uiautomator/UiObjectNotFoundException;

    iget-object v2, p0, Landroidx/test/uiautomator/UiObject;->mUiSelector:Landroidx/test/uiautomator/UiSelector;

    invoke-virtual {v2}, Landroidx/test/uiautomator/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/test/uiautomator/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isScrollable()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/uiautomator/UiObjectNotFoundException;
        }
    .end annotation

    .line 839
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 840
    iget-object v0, p0, Landroidx/test/uiautomator/UiObject;->mConfig:Landroidx/test/uiautomator/Configurator;

    invoke-virtual {v0}, Landroidx/test/uiautomator/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/test/uiautomator/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 841
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_0

    .line 844
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v1

    return v1

    .line 842
    :cond_0
    new-instance v1, Landroidx/test/uiautomator/UiObjectNotFoundException;

    iget-object v2, p0, Landroidx/test/uiautomator/UiObject;->mUiSelector:Landroidx/test/uiautomator/UiSelector;

    invoke-virtual {v2}, Landroidx/test/uiautomator/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/test/uiautomator/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isSelected()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/uiautomator/UiObjectNotFoundException;
        }
    .end annotation

    .line 743
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 744
    iget-object v0, p0, Landroidx/test/uiautomator/UiObject;->mConfig:Landroidx/test/uiautomator/Configurator;

    invoke-virtual {v0}, Landroidx/test/uiautomator/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/test/uiautomator/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 745
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_0

    .line 748
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    move-result v1

    return v1

    .line 746
    :cond_0
    new-instance v1, Landroidx/test/uiautomator/UiObjectNotFoundException;

    iget-object v2, p0, Landroidx/test/uiautomator/UiObject;->mUiSelector:Landroidx/test/uiautomator/UiSelector;

    invoke-virtual {v2}, Landroidx/test/uiautomator/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/test/uiautomator/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public legacySetText(Ljava/lang/String;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/uiautomator/UiObjectNotFoundException;
        }
    .end annotation

    .line 610
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v1}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 612
    iget-object v1, p0, Landroidx/test/uiautomator/UiObject;->mConfig:Landroidx/test/uiautomator/Configurator;

    invoke-virtual {v1}, Landroidx/test/uiautomator/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroidx/test/uiautomator/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 613
    .local v1, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v1, :cond_1

    .line 616
    invoke-direct {p0, v1}, Landroidx/test/uiautomator/UiObject;->getVisibleBounds(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/graphics/Rect;

    move-result-object v2

    .line 617
    .local v2, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiObject;->getInteractionController()Landroidx/test/uiautomator/InteractionController;

    move-result-object v3

    iget v4, v2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v4, v4, 0x14

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroidx/test/uiautomator/InteractionController;->longTapNoSync(II)Z

    .line 619
    new-instance v3, Landroidx/test/uiautomator/UiObject;

    new-instance v4, Landroidx/test/uiautomator/UiSelector;

    invoke-direct {v4}, Landroidx/test/uiautomator/UiSelector;-><init>()V

    const-string v5, "Select all"

    invoke-virtual {v4, v5}, Landroidx/test/uiautomator/UiSelector;->descriptionContains(Ljava/lang/String;)Landroidx/test/uiautomator/UiSelector;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/test/uiautomator/UiObject;-><init>(Landroidx/test/uiautomator/UiSelector;)V

    .line 620
    .local v3, "selectAll":Landroidx/test/uiautomator/UiObject;
    const-wide/16 v4, 0x32

    invoke-virtual {v3, v4, v5}, Landroidx/test/uiautomator/UiObject;->waitForExists(J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 621
    invoke-virtual {v3}, Landroidx/test/uiautomator/UiObject;->click()Z

    .line 624
    :cond_0
    const-wide/16 v4, 0xfa

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 626
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiObject;->getInteractionController()Landroidx/test/uiautomator/InteractionController;

    move-result-object v4

    const/16 v5, 0x43

    invoke-virtual {v4, v5, v0}, Landroidx/test/uiautomator/InteractionController;->sendKey(II)Z

    .line 629
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiObject;->getInteractionController()Landroidx/test/uiautomator/InteractionController;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/test/uiautomator/InteractionController;->sendText(Ljava/lang/String;)Z

    .line 630
    return-void

    .line 614
    .end local v2    # "rect":Landroid/graphics/Rect;
    .end local v3    # "selectAll":Landroidx/test/uiautomator/UiObject;
    :cond_1
    new-instance v0, Landroidx/test/uiautomator/UiObjectNotFoundException;

    invoke-virtual {p0}, Landroidx/test/uiautomator/UiObject;->getSelector()Landroidx/test/uiautomator/UiSelector;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/test/uiautomator/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/test/uiautomator/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public longClick()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/uiautomator/UiObjectNotFoundException;
        }
    .end annotation

    .line 525
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 526
    iget-object v0, p0, Landroidx/test/uiautomator/UiObject;->mConfig:Landroidx/test/uiautomator/Configurator;

    invoke-virtual {v0}, Landroidx/test/uiautomator/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/test/uiautomator/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 527
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_0

    .line 530
    invoke-direct {p0, v0}, Landroidx/test/uiautomator/UiObject;->getVisibleBounds(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/graphics/Rect;

    move-result-object v1

    .line 531
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiObject;->getInteractionController()Landroidx/test/uiautomator/InteractionController;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    iget-object v5, p0, Landroidx/test/uiautomator/UiObject;->mConfig:Landroidx/test/uiautomator/Configurator;

    invoke-virtual {v5}, Landroidx/test/uiautomator/Configurator;->getActionAcknowledgmentTimeout()J

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Landroidx/test/uiautomator/InteractionController;->longTapAndSync(IIJ)Z

    move-result v2

    return v2

    .line 528
    .end local v1    # "rect":Landroid/graphics/Rect;
    :cond_0
    new-instance v1, Landroidx/test/uiautomator/UiObjectNotFoundException;

    iget-object v2, p0, Landroidx/test/uiautomator/UiObject;->mUiSelector:Landroidx/test/uiautomator/UiSelector;

    invoke-virtual {v2}, Landroidx/test/uiautomator/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/test/uiautomator/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public longClickBottomRight()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/uiautomator/UiObjectNotFoundException;
        }
    .end annotation

    .line 489
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 490
    iget-object v0, p0, Landroidx/test/uiautomator/UiObject;->mConfig:Landroidx/test/uiautomator/Configurator;

    invoke-virtual {v0}, Landroidx/test/uiautomator/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/test/uiautomator/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 491
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_0

    .line 494
    invoke-direct {p0, v0}, Landroidx/test/uiautomator/UiObject;->getVisibleBounds(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/graphics/Rect;

    move-result-object v1

    .line 495
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiObject;->getInteractionController()Landroidx/test/uiautomator/InteractionController;

    move-result-object v2

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, -0x5

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, -0x5

    iget-object v5, p0, Landroidx/test/uiautomator/UiObject;->mConfig:Landroidx/test/uiautomator/Configurator;

    invoke-virtual {v5}, Landroidx/test/uiautomator/Configurator;->getActionAcknowledgmentTimeout()J

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Landroidx/test/uiautomator/InteractionController;->longTapAndSync(IIJ)Z

    move-result v2

    return v2

    .line 492
    .end local v1    # "rect":Landroid/graphics/Rect;
    :cond_0
    new-instance v1, Landroidx/test/uiautomator/UiObjectNotFoundException;

    iget-object v2, p0, Landroidx/test/uiautomator/UiObject;->mUiSelector:Landroidx/test/uiautomator/UiSelector;

    invoke-virtual {v2}, Landroidx/test/uiautomator/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/test/uiautomator/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public longClickTopLeft()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/uiautomator/UiObjectNotFoundException;
        }
    .end annotation

    .line 543
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 544
    iget-object v0, p0, Landroidx/test/uiautomator/UiObject;->mConfig:Landroidx/test/uiautomator/Configurator;

    invoke-virtual {v0}, Landroidx/test/uiautomator/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/test/uiautomator/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 545
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_0

    .line 548
    invoke-direct {p0, v0}, Landroidx/test/uiautomator/UiObject;->getVisibleBounds(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/graphics/Rect;

    move-result-object v1

    .line 549
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiObject;->getInteractionController()Landroidx/test/uiautomator/InteractionController;

    move-result-object v2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, 0x5

    iget v4, v1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v4, 0x5

    iget-object v5, p0, Landroidx/test/uiautomator/UiObject;->mConfig:Landroidx/test/uiautomator/Configurator;

    invoke-virtual {v5}, Landroidx/test/uiautomator/Configurator;->getActionAcknowledgmentTimeout()J

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Landroidx/test/uiautomator/InteractionController;->longTapAndSync(IIJ)Z

    move-result v2

    return v2

    .line 546
    .end local v1    # "rect":Landroid/graphics/Rect;
    :cond_0
    new-instance v1, Landroidx/test/uiautomator/UiObjectNotFoundException;

    iget-object v2, p0, Landroidx/test/uiautomator/UiObject;->mUiSelector:Landroidx/test/uiautomator/UiSelector;

    invoke-virtual {v2}, Landroidx/test/uiautomator/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/test/uiautomator/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public varargs performMultiPointerGesture([[Landroid/view/MotionEvent$PointerCoords;)Z
    .locals 1
    .param p1, "touches"    # [[Landroid/view/MotionEvent$PointerCoords;

    .line 1165
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiObject;->getInteractionController()Landroidx/test/uiautomator/InteractionController;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/test/uiautomator/InteractionController;->performMultiPointerGesture([[Landroid/view/MotionEvent$PointerCoords;)Z

    move-result v0

    return v0
.end method

.method public performTwoPointerGesture(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;I)Z
    .locals 17
    .param p1, "startPoint1"    # Landroid/graphics/Point;
    .param p2, "startPoint2"    # Landroid/graphics/Point;
    .param p3, "endPoint1"    # Landroid/graphics/Point;
    .param p4, "endPoint2"    # Landroid/graphics/Point;
    .param p5, "steps"    # I

    .line 1084
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    if-nez p5, :cond_0

    .line 1085
    const/4 v4, 0x1

    .end local p5    # "steps":I
    .local v4, "steps":I
    goto :goto_0

    .line 1084
    .end local v4    # "steps":I
    .restart local p5    # "steps":I
    :cond_0
    move/from16 v4, p5

    .line 1087
    .end local p5    # "steps":I
    .restart local v4    # "steps":I
    :goto_0
    iget v5, v2, Landroid/graphics/Point;->x:I

    iget v6, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v6

    div-int/2addr v5, v4

    int-to-float v5, v5

    .line 1088
    .local v5, "stepX1":F
    iget v6, v2, Landroid/graphics/Point;->y:I

    iget v7, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v7

    div-int/2addr v6, v4

    int-to-float v6, v6

    .line 1089
    .local v6, "stepY1":F
    iget v7, v3, Landroid/graphics/Point;->x:I

    iget v8, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v7, v8

    div-int/2addr v7, v4

    int-to-float v7, v7

    .line 1090
    .local v7, "stepX2":F
    iget v8, v3, Landroid/graphics/Point;->y:I

    iget v9, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v9

    div-int/2addr v8, v4

    int-to-float v8, v8

    .line 1093
    .local v8, "stepY2":F
    iget v9, v0, Landroid/graphics/Point;->x:I

    .line 1094
    .local v9, "eventX1":I
    iget v10, v0, Landroid/graphics/Point;->y:I

    .line 1095
    .local v10, "eventY1":I
    iget v11, v1, Landroid/graphics/Point;->x:I

    .line 1096
    .local v11, "eventX2":I
    iget v12, v1, Landroid/graphics/Point;->y:I

    .line 1099
    .local v12, "eventY2":I
    add-int/lit8 v13, v4, 0x2

    new-array v13, v13, [Landroid/view/MotionEvent$PointerCoords;

    .line 1100
    .local v13, "points1":[Landroid/view/MotionEvent$PointerCoords;
    add-int/lit8 v14, v4, 0x2

    new-array v14, v14, [Landroid/view/MotionEvent$PointerCoords;

    .line 1103
    .local v14, "points2":[Landroid/view/MotionEvent$PointerCoords;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    add-int/lit8 v0, v4, 0x1

    if-ge v15, v0, :cond_1

    .line 1104
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 1105
    .local v0, "p1":Landroid/view/MotionEvent$PointerCoords;
    int-to-float v1, v9

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 1106
    int-to-float v1, v10

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 1107
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 1108
    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 1109
    aput-object v0, v13, v15

    .line 1111
    new-instance v1, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v1}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 1112
    .local v1, "p2":Landroid/view/MotionEvent$PointerCoords;
    move-object/from16 v16, v0

    .end local v0    # "p1":Landroid/view/MotionEvent$PointerCoords;
    .local v16, "p1":Landroid/view/MotionEvent$PointerCoords;
    int-to-float v0, v11

    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 1113
    int-to-float v0, v12

    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 1114
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 1115
    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 1116
    aput-object v1, v14, v15

    .line 1118
    int-to-float v0, v9

    add-float/2addr v0, v5

    float-to-int v9, v0

    .line 1119
    int-to-float v0, v10

    add-float/2addr v0, v6

    float-to-int v10, v0

    .line 1120
    int-to-float v0, v11

    add-float/2addr v0, v7

    float-to-int v11, v0

    .line 1121
    int-to-float v0, v12

    add-float/2addr v0, v8

    float-to-int v12, v0

    .line 1103
    .end local v1    # "p2":Landroid/view/MotionEvent$PointerCoords;
    .end local v16    # "p1":Landroid/view/MotionEvent$PointerCoords;
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    goto :goto_1

    .line 1125
    .end local v15    # "i":I
    :cond_1
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 1126
    .restart local v0    # "p1":Landroid/view/MotionEvent$PointerCoords;
    iget v1, v2, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 1127
    iget v1, v2, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 1128
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 1129
    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 1130
    add-int/lit8 v1, v4, 0x1

    aput-object v0, v13, v1

    .line 1132
    new-instance v1, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v1}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 1133
    .restart local v1    # "p2":Landroid/view/MotionEvent$PointerCoords;
    iget v15, v3, Landroid/graphics/Point;->x:I

    int-to-float v15, v15

    iput v15, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 1134
    iget v15, v3, Landroid/graphics/Point;->y:I

    int-to-float v15, v15

    iput v15, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 1135
    const/high16 v15, 0x3f800000    # 1.0f

    iput v15, v1, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 1136
    iput v15, v1, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 1137
    add-int/lit8 v15, v4, 0x1

    aput-object v1, v14, v15

    .line 1139
    const/4 v15, 0x2

    new-array v15, v15, [[Landroid/view/MotionEvent$PointerCoords;

    const/16 v16, 0x0

    aput-object v13, v15, v16

    const/16 v16, 0x1

    aput-object v14, v15, v16

    move-object/from16 p5, v0

    move-object/from16 v0, p0

    .end local v0    # "p1":Landroid/view/MotionEvent$PointerCoords;
    .local p5, "p1":Landroid/view/MotionEvent$PointerCoords;
    invoke-virtual {v0, v15}, Landroidx/test/uiautomator/UiObject;->performMultiPointerGesture([[Landroid/view/MotionEvent$PointerCoords;)Z

    move-result v15

    return v15
.end method

.method public pinchIn(II)Z
    .locals 11
    .param p1, "percent"    # I
    .param p2, "steps"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/uiautomator/UiObjectNotFoundException;
        }
    .end annotation

    .line 1044
    if-gez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    move p1, v0

    .line 1045
    int-to-float v0, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 1047
    .local v0, "percentage":F
    iget-object v1, p0, Landroidx/test/uiautomator/UiObject;->mConfig:Landroidx/test/uiautomator/Configurator;

    invoke-virtual {v1}, Landroidx/test/uiautomator/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroidx/test/uiautomator/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 1048
    .local v1, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v1, :cond_3

    .line 1052
    invoke-direct {p0, v1}, Landroidx/test/uiautomator/UiObject;->getVisibleBounds(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/graphics/Rect;

    move-result-object v2

    .line 1053
    .local v2, "rect":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    const/16 v4, 0x28

    if-le v3, v4, :cond_2

    .line 1056
    new-instance v6, Landroid/graphics/Point;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    mul-float v4, v4, v0

    float-to-int v4, v4

    sub-int/2addr v3, v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    invoke-direct {v6, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 1058
    .local v6, "startPoint1":Landroid/graphics/Point;
    new-instance v7, Landroid/graphics/Point;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    mul-float v4, v4, v0

    float-to-int v4, v4

    add-int/2addr v3, v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    invoke-direct {v7, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 1061
    .local v7, "startPoint2":Landroid/graphics/Point;
    new-instance v8, Landroid/graphics/Point;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    add-int/lit8 v3, v3, -0x14

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    invoke-direct {v8, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 1062
    .local v8, "endPoint1":Landroid/graphics/Point;
    new-instance v9, Landroid/graphics/Point;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    add-int/lit8 v3, v3, 0x14

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    invoke-direct {v9, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 1064
    .local v9, "endPoint2":Landroid/graphics/Point;
    move-object v5, p0

    move v10, p2

    invoke-virtual/range {v5 .. v10}, Landroidx/test/uiautomator/UiObject;->performTwoPointerGesture(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;I)Z

    move-result v3

    return v3

    .line 1054
    .end local v6    # "startPoint1":Landroid/graphics/Point;
    .end local v7    # "startPoint2":Landroid/graphics/Point;
    .end local v8    # "endPoint1":Landroid/graphics/Point;
    .end local v9    # "endPoint2":Landroid/graphics/Point;
    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Object width is too small for operation"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1049
    .end local v2    # "rect":Landroid/graphics/Rect;
    :cond_3
    new-instance v2, Landroidx/test/uiautomator/UiObjectNotFoundException;

    iget-object v3, p0, Landroidx/test/uiautomator/UiObject;->mUiSelector:Landroidx/test/uiautomator/UiSelector;

    invoke-virtual {v3}, Landroidx/test/uiautomator/UiSelector;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/test/uiautomator/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public pinchOut(II)Z
    .locals 11
    .param p1, "percent"    # I
    .param p2, "steps"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/uiautomator/UiObjectNotFoundException;
        }
    .end annotation

    .line 1006
    if-gez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    move p1, v0

    .line 1007
    int-to-float v0, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 1009
    .local v0, "percentage":F
    iget-object v1, p0, Landroidx/test/uiautomator/UiObject;->mConfig:Landroidx/test/uiautomator/Configurator;

    invoke-virtual {v1}, Landroidx/test/uiautomator/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroidx/test/uiautomator/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 1010
    .local v1, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v1, :cond_3

    .line 1014
    invoke-direct {p0, v1}, Landroidx/test/uiautomator/UiObject;->getVisibleBounds(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/graphics/Rect;

    move-result-object v2

    .line 1015
    .local v2, "rect":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    const/16 v4, 0x28

    if-le v3, v4, :cond_2

    .line 1019
    new-instance v6, Landroid/graphics/Point;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    add-int/lit8 v3, v3, -0x14

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    invoke-direct {v6, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 1020
    .local v6, "startPoint1":Landroid/graphics/Point;
    new-instance v7, Landroid/graphics/Point;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    add-int/lit8 v3, v3, 0x14

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    invoke-direct {v7, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 1023
    .local v7, "startPoint2":Landroid/graphics/Point;
    new-instance v8, Landroid/graphics/Point;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    mul-float v4, v4, v0

    float-to-int v4, v4

    sub-int/2addr v3, v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    invoke-direct {v8, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 1025
    .local v8, "endPoint1":Landroid/graphics/Point;
    new-instance v9, Landroid/graphics/Point;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    mul-float v4, v4, v0

    float-to-int v4, v4

    add-int/2addr v3, v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    invoke-direct {v9, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 1028
    .local v9, "endPoint2":Landroid/graphics/Point;
    move-object v5, p0

    move v10, p2

    invoke-virtual/range {v5 .. v10}, Landroidx/test/uiautomator/UiObject;->performTwoPointerGesture(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;I)Z

    move-result v3

    return v3

    .line 1016
    .end local v6    # "startPoint1":Landroid/graphics/Point;
    .end local v7    # "startPoint2":Landroid/graphics/Point;
    .end local v8    # "endPoint1":Landroid/graphics/Point;
    .end local v9    # "endPoint2":Landroid/graphics/Point;
    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Object width is too small for operation"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1011
    .end local v2    # "rect":Landroid/graphics/Rect;
    :cond_3
    new-instance v2, Landroidx/test/uiautomator/UiObjectNotFoundException;

    iget-object v3, p0, Landroidx/test/uiautomator/UiObject;->mUiSelector:Landroidx/test/uiautomator/UiSelector;

    invoke-virtual {v3}, Landroidx/test/uiautomator/UiSelector;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/test/uiautomator/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setText(Ljava/lang/String;)Z
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/uiautomator/UiObjectNotFoundException;
        }
    .end annotation

    .line 657
    if-nez p1, :cond_0

    .line 658
    const-string p1, ""

    .line 660
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 661
    sget v0, Landroidx/test/uiautomator/UiDevice;->API_LEVEL_ACTUAL:I

    const/16 v1, 0x13

    if-le v0, v1, :cond_2

    .line 663
    iget-object v0, p0, Landroidx/test/uiautomator/UiObject;->mConfig:Landroidx/test/uiautomator/Configurator;

    invoke-virtual {v0}, Landroidx/test/uiautomator/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/test/uiautomator/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 665
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_1

    .line 668
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 669
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 670
    const/high16 v2, 0x200000

    invoke-virtual {v0, v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(ILandroid/os/Bundle;)Z

    move-result v2

    return v2

    .line 666
    .end local v1    # "args":Landroid/os/Bundle;
    :cond_1
    new-instance v1, Landroidx/test/uiautomator/UiObjectNotFoundException;

    invoke-virtual {p0}, Landroidx/test/uiautomator/UiObject;->getSelector()Landroidx/test/uiautomator/UiSelector;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/test/uiautomator/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/test/uiautomator/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 672
    .end local v0    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_2
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiObject;->clearTextField()V

    .line 673
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiObject;->getInteractionController()Landroidx/test/uiautomator/InteractionController;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/test/uiautomator/InteractionController;->sendText(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public swipeDown(I)Z
    .locals 10
    .param p1, "steps"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/uiautomator/UiObjectNotFoundException;
        }
    .end annotation

    .line 290
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 291
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiObject;->getVisibleBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 292
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    const/16 v3, 0xa

    if-gt v1, v3, :cond_0

    .line 293
    return v2

    .line 294
    :cond_0
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiObject;->getInteractionController()Landroidx/test/uiautomator/InteractionController;

    move-result-object v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v1, 0x5

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v8, v1, -0x5

    move v9, p1

    invoke-virtual/range {v4 .. v9}, Landroidx/test/uiautomator/InteractionController;->swipe(IIIII)Z

    move-result v1

    return v1
.end method

.method public swipeLeft(I)Z
    .locals 10
    .param p1, "steps"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/uiautomator/UiObjectNotFoundException;
        }
    .end annotation

    .line 318
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 319
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiObject;->getVisibleBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 320
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    const/16 v3, 0xa

    if-gt v1, v3, :cond_0

    .line 321
    return v2

    .line 322
    :cond_0
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiObject;->getInteractionController()Landroidx/test/uiautomator/InteractionController;

    move-result-object v4

    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v5, v1, -0x5

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v7, v1, 0x5

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    move v9, p1

    invoke-virtual/range {v4 .. v9}, Landroidx/test/uiautomator/InteractionController;->swipe(IIIII)Z

    move-result v1

    return v1
.end method

.method public swipeRight(I)Z
    .locals 10
    .param p1, "steps"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/uiautomator/UiObjectNotFoundException;
        }
    .end annotation

    .line 345
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 346
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiObject;->getVisibleBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 347
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    const/16 v3, 0xa

    if-gt v1, v3, :cond_0

    .line 348
    return v2

    .line 349
    :cond_0
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiObject;->getInteractionController()Landroidx/test/uiautomator/InteractionController;

    move-result-object v4

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v5, v1, 0x5

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v7, v1, -0x5

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    move v9, p1

    invoke-virtual/range {v4 .. v9}, Landroidx/test/uiautomator/InteractionController;->swipe(IIIII)Z

    move-result v1

    return v1
.end method

.method public swipeUp(I)Z
    .locals 10
    .param p1, "steps"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/uiautomator/UiObjectNotFoundException;
        }
    .end annotation

    .line 262
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 263
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiObject;->getVisibleBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 264
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    const/16 v3, 0xa

    if-gt v1, v3, :cond_0

    .line 265
    return v2

    .line 266
    :cond_0
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiObject;->getInteractionController()Landroidx/test/uiautomator/InteractionController;

    move-result-object v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v6, v1, -0x5

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v8, v1, 0x5

    move v9, p1

    invoke-virtual/range {v4 .. v9}, Landroidx/test/uiautomator/InteractionController;->swipe(IIIII)Z

    move-result v1

    return v1
.end method

.method public waitForExists(J)Z
    .locals 4
    .param p1, "timeout"    # J

    .line 931
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 932
    invoke-virtual {p0, p1, p2}, Landroidx/test/uiautomator/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 933
    return v0

    .line 935
    :cond_0
    return v3
.end method

.method public waitUntilGone(J)Z
    .locals 10
    .param p1, "timeout"    # J

    .line 957
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 958
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 959
    .local v1, "startMills":J
    const-wide/16 v4, 0x0

    .line 960
    .local v4, "currentMills":J
    :cond_0
    :goto_0
    cmp-long v6, v4, p1

    if-gtz v6, :cond_2

    .line 961
    const-wide/16 v6, 0x0

    invoke-virtual {p0, v6, v7}, Landroidx/test/uiautomator/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v8

    if-nez v8, :cond_1

    .line 962
    return v0

    .line 963
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long v4, v8, v1

    .line 964
    cmp-long v8, p1, v6

    if-lez v8, :cond_0

    .line 965
    const-wide/16 v6, 0x3e8

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 967
    :cond_2
    return v3
.end method
