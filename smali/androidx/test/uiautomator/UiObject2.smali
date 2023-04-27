.class public Landroidx/test/uiautomator/UiObject2;
.super Ljava/lang/Object;
.source "UiObject2.java"

# interfaces
.implements Landroidx/test/uiautomator/Searchable;


# static fields
.field private static final DEFAULT_DRAG_SPEED:I = 0x9c4

.field private static final DEFAULT_FLING_SPEED:I = 0x1d4c

.field private static final DEFAULT_PINCH_SPEED:I = 0x9c4

.field private static final DEFAULT_SCROLL_SPEED:I = 0x1388

.field private static final DEFAULT_SWIPE_SPEED:I = 0x1388

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final FLING_TIMEOUT:J

.field private final SCROLL_TIMEOUT:J

.field private mCachedNode:Landroid/view/accessibility/AccessibilityNodeInfo;

.field private mDevice:Landroidx/test/uiautomator/UiDevice;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mGestureController:Landroidx/test/uiautomator/GestureController;

.field private mGestures:Landroidx/test/uiautomator/Gestures;

.field private mMarginBottom:I

.field private mMarginLeft:I

.field private mMarginRight:I

.field private mMarginTop:I

.field private mSelector:Landroidx/test/uiautomator/BySelector;

.field private mWaitMixin:Landroidx/test/uiautomator/WaitMixin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/uiautomator/WaitMixin<",
            "Landroidx/test/uiautomator/UiObject2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Landroidx/test/uiautomator/UiObject2;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/test/uiautomator/UiObject2;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroidx/test/uiautomator/UiDevice;Landroidx/test/uiautomator/BySelector;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "device"    # Landroidx/test/uiautomator/UiDevice;
    .param p2, "selector"    # Landroidx/test/uiautomator/BySelector;
    .param p3, "cachedNode"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x5

    iput v0, p0, Landroidx/test/uiautomator/UiObject2;->mMarginLeft:I

    .line 52
    iput v0, p0, Landroidx/test/uiautomator/UiObject2;->mMarginTop:I

    .line 53
    iput v0, p0, Landroidx/test/uiautomator/UiObject2;->mMarginRight:I

    .line 54
    iput v0, p0, Landroidx/test/uiautomator/UiObject2;->mMarginBottom:I

    .line 63
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Landroidx/test/uiautomator/UiObject2;->SCROLL_TIMEOUT:J

    .line 65
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Landroidx/test/uiautomator/UiObject2;->FLING_TIMEOUT:J

    .line 68
    new-instance v0, Landroidx/test/uiautomator/WaitMixin;

    invoke-direct {v0, p0}, Landroidx/test/uiautomator/WaitMixin;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/test/uiautomator/UiObject2;->mWaitMixin:Landroidx/test/uiautomator/WaitMixin;

    .line 73
    iput-object p1, p0, Landroidx/test/uiautomator/UiObject2;->mDevice:Landroidx/test/uiautomator/UiDevice;

    .line 74
    iput-object p2, p0, Landroidx/test/uiautomator/UiObject2;->mSelector:Landroidx/test/uiautomator/BySelector;

    .line 75
    iput-object p3, p0, Landroidx/test/uiautomator/UiObject2;->mCachedNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 76
    invoke-static {p1}, Landroidx/test/uiautomator/Gestures;->getInstance(Landroidx/test/uiautomator/UiDevice;)Landroidx/test/uiautomator/Gestures;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/uiautomator/UiObject2;->mGestures:Landroidx/test/uiautomator/Gestures;

    .line 77
    invoke-static {p1}, Landroidx/test/uiautomator/GestureController;->getInstance(Landroidx/test/uiautomator/UiDevice;)Landroidx/test/uiautomator/GestureController;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/uiautomator/UiObject2;->mGestureController:Landroidx/test/uiautomator/GestureController;

    .line 78
    iget-object v0, p0, Landroidx/test/uiautomator/UiObject2;->mDevice:Landroidx/test/uiautomator/UiDevice;

    invoke-virtual {v0}, Landroidx/test/uiautomator/UiDevice;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/uiautomator/UiObject2;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 80
    return-void
.end method

.method private getAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2

    .line 638
    iget-object v0, p0, Landroidx/test/uiautomator/UiObject2;->mCachedNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v0, :cond_2

    .line 642
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiObject2;->getDevice()Landroidx/test/uiautomator/UiDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/test/uiautomator/UiDevice;->waitForIdle()V

    .line 643
    iget-object v0, p0, Landroidx/test/uiautomator/UiObject2;->mCachedNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->refresh()Z

    move-result v0

    if-nez v0, :cond_1

    .line 644
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiObject2;->getDevice()Landroidx/test/uiautomator/UiDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/test/uiautomator/UiDevice;->runWatchers()V

    .line 646
    iget-object v0, p0, Landroidx/test/uiautomator/UiObject2;->mCachedNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->refresh()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 647
    :cond_0
    new-instance v0, Landroidx/test/uiautomator/StaleObjectException;

    invoke-direct {v0}, Landroidx/test/uiautomator/StaleObjectException;-><init>()V

    throw v0

    .line 650
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/test/uiautomator/UiObject2;->mCachedNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object v0

    .line 639
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This object has already been recycled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getVisibleBounds(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/graphics/Rect;
    .locals 5
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 229
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 230
    .local v0, "ret":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 233
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroidx/test/uiautomator/UiObject2;->getDevice()Landroidx/test/uiautomator/UiDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/test/uiautomator/UiDevice;->getDisplayWidth()I

    move-result v2

    invoke-virtual {p0}, Landroidx/test/uiautomator/UiObject2;->getDevice()Landroidx/test/uiautomator/UiDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/test/uiautomator/UiDevice;->getDisplayHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 234
    .local v1, "screen":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 237
    sget v2, Landroidx/test/uiautomator/UiDevice;->API_LEVEL_ACTUAL:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 239
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 240
    .local v2, "window":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindow()Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 241
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindow()Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 242
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 247
    .end local v2    # "window":Landroid/graphics/Rect;
    :cond_0
    const/4 v2, 0x0

    .line 248
    .local v2, "ancestor":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_2

    .line 250
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 253
    invoke-direct {p0, v2}, Landroidx/test/uiautomator/UiObject2;->getVisibleBounds(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/graphics/Rect;

    move-result-object v3

    .line 254
    .local v3, "ancestorRect":Landroid/graphics/Rect;
    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 255
    goto :goto_1

    .line 248
    .end local v3    # "ancestorRect":Landroid/graphics/Rect;
    :cond_1
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    goto :goto_0

    .line 259
    :cond_2
    :goto_1
    return-object v0
.end method

.method private getVisibleBoundsForGestures()Landroid/graphics/Rect;
    .locals 3

    .line 218
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiObject2;->getVisibleBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 219
    .local v0, "ret":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroidx/test/uiautomator/UiObject2;->mMarginLeft:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 220
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroidx/test/uiautomator/UiObject2;->mMarginTop:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 221
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroidx/test/uiautomator/UiObject2;->mMarginRight:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 222
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroidx/test/uiautomator/UiObject2;->mMarginBottom:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 223
    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 351
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroidx/test/uiautomator/UiObject2;->setText(Ljava/lang/String;)V

    .line 352
    return-void
.end method

.method public click()V
    .locals 4

    .line 356
    iget-object v0, p0, Landroidx/test/uiautomator/UiObject2;->mGestureController:Landroidx/test/uiautomator/GestureController;

    const/4 v1, 0x1

    new-array v1, v1, [Landroidx/test/uiautomator/PointerGesture;

    iget-object v2, p0, Landroidx/test/uiautomator/UiObject2;->mGestures:Landroidx/test/uiautomator/Gestures;

    invoke-virtual {p0}, Landroidx/test/uiautomator/UiObject2;->getVisibleCenter()Landroid/graphics/Point;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/test/uiautomator/Gestures;->click(Landroid/graphics/Point;)Landroidx/test/uiautomator/PointerGesture;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroidx/test/uiautomator/GestureController;->performGesture([Landroidx/test/uiautomator/PointerGesture;)V

    .line 357
    return-void
.end method

.method public click(J)V
    .locals 4
    .param p1, "duration"    # J

    .line 361
    iget-object v0, p0, Landroidx/test/uiautomator/UiObject2;->mGestureController:Landroidx/test/uiautomator/GestureController;

    const/4 v1, 0x1

    new-array v1, v1, [Landroidx/test/uiautomator/PointerGesture;

    iget-object v2, p0, Landroidx/test/uiautomator/UiObject2;->mGestures:Landroidx/test/uiautomator/Gestures;

    invoke-virtual {p0}, Landroidx/test/uiautomator/UiObject2;->getVisibleCenter()Landroid/graphics/Point;

    move-result-object v3

    invoke-virtual {v2, v3, p1, p2}, Landroidx/test/uiautomator/Gestures;->click(Landroid/graphics/Point;J)Landroidx/test/uiautomator/PointerGesture;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroidx/test/uiautomator/GestureController;->performGesture([Landroidx/test/uiautomator/PointerGesture;)V

    .line 362
    return-void
.end method

.method public clickAndWait(Landroidx/test/uiautomator/EventCondition;J)Ljava/lang/Object;
    .locals 4
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/test/uiautomator/EventCondition<",
            "TR;>;J)TR;"
        }
    .end annotation

    .line 366
    .local p1, "condition":Landroidx/test/uiautomator/EventCondition;, "Landroidx/test/uiautomator/EventCondition<TR;>;"
    iget-object v0, p0, Landroidx/test/uiautomator/UiObject2;->mGestureController:Landroidx/test/uiautomator/GestureController;

    const/4 v1, 0x1

    new-array v1, v1, [Landroidx/test/uiautomator/PointerGesture;

    iget-object v2, p0, Landroidx/test/uiautomator/UiObject2;->mGestures:Landroidx/test/uiautomator/Gestures;

    invoke-virtual {p0}, Landroidx/test/uiautomator/UiObject2;->getVisibleCenter()Landroid/graphics/Point;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/test/uiautomator/Gestures;->click(Landroid/graphics/Point;)Landroidx/test/uiautomator/PointerGesture;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, p2, p3, v1}, Landroidx/test/uiautomator/GestureController;->performGestureAndWait(Landroidx/test/uiautomator/EventCondition;J[Landroidx/test/uiautomator/PointerGesture;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public drag(Landroid/graphics/Point;)V
    .locals 2
    .param p1, "dest"    # Landroid/graphics/Point;

    .line 376
    iget-object v0, p0, Landroidx/test/uiautomator/UiObject2;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const v1, 0x451c4000    # 2500.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, p1, v0}, Landroidx/test/uiautomator/UiObject2;->drag(Landroid/graphics/Point;I)V

    .line 377
    return-void
.end method

.method public drag(Landroid/graphics/Point;I)V
    .locals 4
    .param p1, "dest"    # Landroid/graphics/Point;
    .param p2, "speed"    # I

    .line 386
    if-ltz p2, :cond_0

    .line 389
    iget-object v0, p0, Landroidx/test/uiautomator/UiObject2;->mGestureController:Landroidx/test/uiautomator/GestureController;

    const/4 v1, 0x1

    new-array v1, v1, [Landroidx/test/uiautomator/PointerGesture;

    iget-object v2, p0, Landroidx/test/uiautomator/UiObject2;->mGestures:Landroidx/test/uiautomator/Gestures;

    invoke-virtual {p0}, Landroidx/test/uiautomator/UiObject2;->getVisibleCenter()Landroid/graphics/Point;

    move-result-object v3

    invoke-virtual {v2, v3, p1, p2}, Landroidx/test/uiautomator/Gestures;->drag(Landroid/graphics/Point;Landroid/graphics/Point;I)Landroidx/test/uiautomator/PointerGesture;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroidx/test/uiautomator/GestureController;->performGesture([Landroidx/test/uiautomator/PointerGesture;)V

    .line 390
    return-void

    .line 387
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Speed cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .line 85
    if-ne p0, p1, :cond_0

    .line 86
    const/4 v0, 0x1

    return v0

    .line 88
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 89
    return v0

    .line 91
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 92
    return v0

    .line 95
    :cond_2
    :try_start_0
    move-object v1, p1

    check-cast v1, Landroidx/test/uiautomator/UiObject2;

    .line 96
    .local v1, "other":Landroidx/test/uiautomator/UiObject2;
    invoke-direct {p0}, Landroidx/test/uiautomator/UiObject2;->getAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-direct {v1}, Landroidx/test/uiautomator/UiObject2;->getAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Landroidx/test/uiautomator/StaleObjectException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 97
    .end local v1    # "other":Landroidx/test/uiautomator/UiObject2;
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Landroidx/test/uiautomator/StaleObjectException;
    return v0
.end method

.method public findObject(Landroidx/test/uiautomator/BySelector;)Landroidx/test/uiautomator/UiObject2;
    .locals 4
    .param p1, "selector"    # Landroidx/test/uiautomator/BySelector;

    .line 191
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiObject2;->getDevice()Landroidx/test/uiautomator/UiDevice;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/accessibility/AccessibilityNodeInfo;

    const/4 v2, 0x0

    invoke-direct {p0}, Landroidx/test/uiautomator/UiObject2;->getAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p1, v1}, Landroidx/test/uiautomator/ByMatcher;->findMatch(Landroidx/test/uiautomator/UiDevice;Landroidx/test/uiautomator/BySelector;[Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 193
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_0

    new-instance v1, Landroidx/test/uiautomator/UiObject2;

    invoke-virtual {p0}, Landroidx/test/uiautomator/UiObject2;->getDevice()Landroidx/test/uiautomator/UiDevice;

    move-result-object v2

    invoke-direct {v1, v2, p1, v0}, Landroidx/test/uiautomator/UiObject2;-><init>(Landroidx/test/uiautomator/UiDevice;Landroidx/test/uiautomator/BySelector;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public findObjects(Landroidx/test/uiautomator/BySelector;)Ljava/util/List;
    .locals 5
    .param p1, "selector"    # Landroidx/test/uiautomator/BySelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/uiautomator/BySelector;",
            ")",
            "Ljava/util/List<",
            "Landroidx/test/uiautomator/UiObject2;",
            ">;"
        }
    .end annotation

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Landroidx/test/uiautomator/UiObject2;>;"
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiObject2;->getDevice()Landroidx/test/uiautomator/UiDevice;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/view/accessibility/AccessibilityNodeInfo;

    const/4 v3, 0x0

    invoke-direct {p0}, Landroidx/test/uiautomator/UiObject2;->getAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, p1, v2}, Landroidx/test/uiautomator/ByMatcher;->findMatches(Landroidx/test/uiautomator/UiDevice;Landroidx/test/uiautomator/BySelector;[Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 202
    .local v2, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    new-instance v3, Landroidx/test/uiautomator/UiObject2;

    invoke-virtual {p0}, Landroidx/test/uiautomator/UiObject2;->getDevice()Landroidx/test/uiautomator/UiDevice;

    move-result-object v4

    invoke-direct {v3, v4, p1, v2}, Landroidx/test/uiautomator/UiObject2;-><init>(Landroidx/test/uiautomator/UiDevice;Landroidx/test/uiautomator/BySelector;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    .end local v2    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    goto :goto_0

    .line 205
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-object v0
.end method

.method public fling(Landroidx/test/uiautomator/Direction;)Z
    .locals 2
    .param p1, "direction"    # Landroidx/test/uiautomator/Direction;

    .line 531
    iget-object v0, p0, Landroidx/test/uiautomator/UiObject2;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const v1, 0x45ea6000    # 7500.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, p1, v0}, Landroidx/test/uiautomator/UiObject2;->fling(Landroidx/test/uiautomator/Direction;I)Z

    move-result v0

    return v0
.end method

.method public fling(Landroidx/test/uiautomator/Direction;I)Z
    .locals 10
    .param p1, "direction"    # Landroidx/test/uiautomator/Direction;
    .param p2, "speed"    # I

    .line 542
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiObject2;->getDevice()Landroidx/test/uiautomator/UiDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/test/uiautomator/UiDevice;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 543
    .local v0, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    if-lt p2, v1, :cond_0

    .line 548
    invoke-static {p1}, Landroidx/test/uiautomator/Direction;->reverse(Landroidx/test/uiautomator/Direction;)Landroidx/test/uiautomator/Direction;

    move-result-object v1

    .line 550
    .local v1, "swipeDirection":Landroidx/test/uiautomator/Direction;
    invoke-direct {p0}, Landroidx/test/uiautomator/UiObject2;->getVisibleBoundsForGestures()Landroid/graphics/Rect;

    move-result-object v2

    .line 551
    .local v2, "bounds":Landroid/graphics/Rect;
    iget-object v3, p0, Landroidx/test/uiautomator/UiObject2;->mGestures:Landroidx/test/uiautomator/Gestures;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v2, v1, v4, p2}, Landroidx/test/uiautomator/Gestures;->swipeRect(Landroid/graphics/Rect;Landroidx/test/uiautomator/Direction;FI)Landroidx/test/uiautomator/PointerGesture;

    move-result-object v3

    .line 554
    .local v3, "swipe":Landroidx/test/uiautomator/PointerGesture;
    iget-object v4, p0, Landroidx/test/uiautomator/UiObject2;->mGestureController:Landroidx/test/uiautomator/GestureController;

    invoke-static {p1}, Landroidx/test/uiautomator/Until;->scrollFinished(Landroidx/test/uiautomator/Direction;)Landroidx/test/uiautomator/EventCondition;

    move-result-object v5

    const/4 v6, 0x1

    new-array v7, v6, [Landroidx/test/uiautomator/PointerGesture;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const-wide/16 v8, 0x1388

    invoke-virtual {v4, v5, v8, v9, v7}, Landroidx/test/uiautomator/GestureController;->performGestureAndWait(Landroidx/test/uiautomator/EventCondition;J[Landroidx/test/uiautomator/PointerGesture;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    xor-int/2addr v4, v6

    return v4

    .line 544
    .end local v1    # "swipeDirection":Landroidx/test/uiautomator/Direction;
    .end local v2    # "bounds":Landroid/graphics/Rect;
    .end local v3    # "swipe":Landroidx/test/uiautomator/PointerGesture;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Speed is less than the minimum fling velocity"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getApplicationPackage()Ljava/lang/String;
    .locals 2

    .line 285
    invoke-direct {p0}, Landroidx/test/uiautomator/UiObject2;->getAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    .line 286
    .local v0, "chars":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getChildCount()I
    .locals 1

    .line 167
    invoke-direct {p0}, Landroidx/test/uiautomator/UiObject2;->getAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/test/uiautomator/UiObject2;",
            ">;"
        }
    .end annotation

    .line 172
    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/test/uiautomator/By;->depth(I)Landroidx/test/uiautomator/BySelector;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/test/uiautomator/UiObject2;->findObjects(Landroidx/test/uiautomator/BySelector;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 2

    .line 273
    invoke-direct {p0}, Landroidx/test/uiautomator/UiObject2;->getAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    .line 274
    .local v0, "chars":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getContentDescription()Ljava/lang/String;
    .locals 2

    .line 279
    invoke-direct {p0}, Landroidx/test/uiautomator/UiObject2;->getAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 280
    .local v0, "chars":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method getDevice()Landroidx/test/uiautomator/UiDevice;
    .locals 1

    .line 654
    iget-object v0, p0, Landroidx/test/uiautomator/UiObject2;->mDevice:Landroidx/test/uiautomator/UiDevice;

    return-object v0
.end method

.method public getParent()Landroidx/test/uiautomator/UiObject2;
    .locals 4

    .line 161
    invoke-direct {p0}, Landroidx/test/uiautomator/UiObject2;->getAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 162
    .local v0, "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_0

    new-instance v1, Landroidx/test/uiautomator/UiObject2;

    invoke-virtual {p0}, Landroidx/test/uiautomator/UiObject2;->getDevice()Landroidx/test/uiautomator/UiDevice;

    move-result-object v2

    iget-object v3, p0, Landroidx/test/uiautomator/UiObject2;->mSelector:Landroidx/test/uiautomator/BySelector;

    invoke-direct {v1, v2, v3, v0}, Landroidx/test/uiautomator/UiObject2;-><init>(Landroidx/test/uiautomator/UiDevice;Landroidx/test/uiautomator/BySelector;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getResourceName()Ljava/lang/String;
    .locals 2

    .line 291
    invoke-direct {p0}, Landroidx/test/uiautomator/UiObject2;->getAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getViewIdResourceName()Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "chars":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .line 297
    invoke-direct {p0}, Landroidx/test/uiautomator/UiObject2;->getAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 298
    .local v0, "chars":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getVisibleBounds()Landroid/graphics/Rect;
    .locals 1

    .line 213
    invoke-direct {p0}, Landroidx/test/uiautomator/UiObject2;->getAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/test/uiautomator/UiObject2;->getVisibleBounds(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getVisibleCenter()Landroid/graphics/Point;
    .locals 4

    .line 264
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiObject2;->getVisibleBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 265
    .local v0, "bounds":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method

.method public hasObject(Landroidx/test/uiautomator/BySelector;)Z
    .locals 5
    .param p1, "selector"    # Landroidx/test/uiautomator/BySelector;

    .line 177
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiObject2;->getDevice()Landroidx/test/uiautomator/UiDevice;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {p0}, Landroidx/test/uiautomator/UiObject2;->getAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, p1, v2}, Landroidx/test/uiautomator/ByMatcher;->findMatch(Landroidx/test/uiautomator/UiDevice;Landroidx/test/uiautomator/BySelector;[Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 179
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 181
    return v1

    .line 183
    :cond_0
    return v4
.end method

.method public hashCode()I
    .locals 1

    .line 105
    invoke-direct {p0}, Landroidx/test/uiautomator/UiObject2;->getAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->hashCode()I

    move-result v0

    return v0
.end method

.method public isCheckable()Z
    .locals 1

    .line 303
    invoke-direct {p0}, Landroidx/test/uiautomator/UiObject2;->getAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z

    move-result v0

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 308
    invoke-direct {p0}, Landroidx/test/uiautomator/UiObject2;->getAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v0

    return v0
.end method

.method public isClickable()Z
    .locals 1

    .line 313
    invoke-direct {p0}, Landroidx/test/uiautomator/UiObject2;->getAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 318
    invoke-direct {p0}, Landroidx/test/uiautomator/UiObject2;->getAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isFocusable()Z
    .locals 1

    .line 323
    invoke-direct {p0}, Landroidx/test/uiautomator/UiObject2;->getAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v0

    return v0
.end method

.method public isFocused()Z
    .locals 1

    .line 328
    invoke-direct {p0}, Landroidx/test/uiautomator/UiObject2;->getAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v0

    return v0
.end method

.method public isLongClickable()Z
    .locals 1

    .line 333
    invoke-direct {p0}, Landroidx/test/uiautomator/UiObject2;->getAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    move-result v0

    return v0
.end method

.method public isScrollable()Z
    .locals 1

    .line 338
    invoke-direct {p0}, Landroidx/test/uiautomator/UiObject2;->getAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v0

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .line 343
    invoke-direct {p0}, Landroidx/test/uiautomator/UiObject2;->getAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    move-result v0

    return v0
.end method

.method public legacySetText(Ljava/lang/String;)V
    .locals 8
    .param p1, "text"    # Ljava/lang/String;

    .line 563
    invoke-direct {p0}, Landroidx/test/uiautomator/UiObject2;->getAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 566
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez p1, :cond_0

    .line 567
    const-string p1, ""

    .line 570
    :cond_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 571
    .local v1, "currentText":Ljava/lang/CharSequence;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 572
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiObject2;->getDevice()Landroidx/test/uiautomator/UiDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/test/uiautomator/UiDevice;->getInteractionController()Landroidx/test/uiautomator/InteractionController;

    move-result-object v2

    .line 575
    .local v2, "ic":Landroidx/test/uiautomator/InteractionController;
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiObject2;->getVisibleBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 576
    .local v3, "rect":Landroid/graphics/Rect;
    iget v4, v3, Landroid/graphics/Rect;->left:I

    add-int/lit8 v4, v4, 0x14

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroidx/test/uiautomator/InteractionController;->longTapNoSync(II)Z

    .line 579
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiObject2;->getDevice()Landroidx/test/uiautomator/UiDevice;

    move-result-object v4

    const-string v5, "Select all"

    invoke-static {v5}, Landroidx/test/uiautomator/By;->descContains(Ljava/lang/String;)Landroidx/test/uiautomator/BySelector;

    move-result-object v5

    invoke-static {v5}, Landroidx/test/uiautomator/Until;->findObject(Landroidx/test/uiautomator/BySelector;)Landroidx/test/uiautomator/SearchCondition;

    move-result-object v5

    const-wide/16 v6, 0x32

    invoke-virtual {v4, v5, v6, v7}, Landroidx/test/uiautomator/UiDevice;->wait(Landroidx/test/uiautomator/SearchCondition;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/test/uiautomator/UiObject2;

    invoke-virtual {v4}, Landroidx/test/uiautomator/UiObject2;->click()V

    .line 581
    const-wide/16 v4, 0xfa

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 583
    const/16 v4, 0x43

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroidx/test/uiautomator/InteractionController;->sendKey(II)Z

    .line 586
    invoke-virtual {v2, p1}, Landroidx/test/uiautomator/InteractionController;->sendText(Ljava/lang/String;)Z

    .line 588
    .end local v2    # "ic":Landroidx/test/uiautomator/InteractionController;
    .end local v3    # "rect":Landroid/graphics/Rect;
    :cond_1
    return-void
.end method

.method public longClick()V
    .locals 4

    .line 394
    iget-object v0, p0, Landroidx/test/uiautomator/UiObject2;->mGestureController:Landroidx/test/uiautomator/GestureController;

    const/4 v1, 0x1

    new-array v1, v1, [Landroidx/test/uiautomator/PointerGesture;

    iget-object v2, p0, Landroidx/test/uiautomator/UiObject2;->mGestures:Landroidx/test/uiautomator/Gestures;

    invoke-virtual {p0}, Landroidx/test/uiautomator/UiObject2;->getVisibleCenter()Landroid/graphics/Point;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/test/uiautomator/Gestures;->longClick(Landroid/graphics/Point;)Landroidx/test/uiautomator/PointerGesture;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroidx/test/uiautomator/GestureController;->performGesture([Landroidx/test/uiautomator/PointerGesture;)V

    .line 395
    return-void
.end method

.method public pinchClose(F)V
    .locals 2
    .param p1, "percent"    # F

    .line 403
    iget-object v0, p0, Landroidx/test/uiautomator/UiObject2;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const v1, 0x451c4000    # 2500.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, p1, v0}, Landroidx/test/uiautomator/UiObject2;->pinchClose(FI)V

    .line 404
    return-void
.end method

.method public pinchClose(FI)V
    .locals 3
    .param p1, "percent"    # F
    .param p2, "speed"    # I

    .line 413
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 416
    if-ltz p2, :cond_0

    .line 419
    iget-object v0, p0, Landroidx/test/uiautomator/UiObject2;->mGestureController:Landroidx/test/uiautomator/GestureController;

    iget-object v1, p0, Landroidx/test/uiautomator/UiObject2;->mGestures:Landroidx/test/uiautomator/Gestures;

    invoke-direct {p0}, Landroidx/test/uiautomator/UiObject2;->getVisibleBoundsForGestures()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2}, Landroidx/test/uiautomator/Gestures;->pinchClose(Landroid/graphics/Rect;FI)[Landroidx/test/uiautomator/PointerGesture;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/test/uiautomator/GestureController;->performGesture([Landroidx/test/uiautomator/PointerGesture;)V

    .line 421
    return-void

    .line 417
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Speed cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 414
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Percent must be between 0.0f and 1.0f"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pinchOpen(F)V
    .locals 2
    .param p1, "percent"    # F

    .line 429
    iget-object v0, p0, Landroidx/test/uiautomator/UiObject2;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const v1, 0x451c4000    # 2500.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, p1, v0}, Landroidx/test/uiautomator/UiObject2;->pinchOpen(FI)V

    .line 430
    return-void
.end method

.method public pinchOpen(FI)V
    .locals 3
    .param p1, "percent"    # F
    .param p2, "speed"    # I

    .line 439
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 442
    if-ltz p2, :cond_0

    .line 445
    iget-object v0, p0, Landroidx/test/uiautomator/UiObject2;->mGestureController:Landroidx/test/uiautomator/GestureController;

    iget-object v1, p0, Landroidx/test/uiautomator/UiObject2;->mGestures:Landroidx/test/uiautomator/Gestures;

    invoke-direct {p0}, Landroidx/test/uiautomator/UiObject2;->getVisibleBoundsForGestures()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2}, Landroidx/test/uiautomator/Gestures;->pinchOpen(Landroid/graphics/Rect;FI)[Landroidx/test/uiautomator/PointerGesture;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/test/uiautomator/GestureController;->performGesture([Landroidx/test/uiautomator/PointerGesture;)V

    .line 447
    return-void

    .line 443
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Speed cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 440
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Percent must be between 0.0f and 1.0f"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public recycle()V
    .locals 1

    .line 110
    iget-object v0, p0, Landroidx/test/uiautomator/UiObject2;->mCachedNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/test/uiautomator/UiObject2;->mCachedNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 112
    return-void
.end method

.method public scroll(Landroidx/test/uiautomator/Direction;F)Z
    .locals 2
    .param p1, "direction"    # Landroidx/test/uiautomator/Direction;
    .param p2, "percent"    # F

    .line 485
    iget-object v0, p0, Landroidx/test/uiautomator/UiObject2;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const v1, 0x459c4000    # 5000.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/test/uiautomator/UiObject2;->scroll(Landroidx/test/uiautomator/Direction;FI)Z

    move-result v0

    return v0
.end method

.method public scroll(Landroidx/test/uiautomator/Direction;FI)Z
    .locals 12
    .param p1, "direction"    # Landroidx/test/uiautomator/Direction;
    .param p2, "percent"    # F
    .param p3, "speed"    # I

    .line 497
    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    if-ltz v1, :cond_4

    .line 500
    if-ltz p3, :cond_3

    .line 505
    invoke-static {p1}, Landroidx/test/uiautomator/Direction;->reverse(Landroidx/test/uiautomator/Direction;)Landroidx/test/uiautomator/Direction;

    move-result-object v1

    .line 508
    .local v1, "swipeDirection":Landroidx/test/uiautomator/Direction;
    invoke-direct {p0}, Landroidx/test/uiautomator/UiObject2;->getVisibleBoundsForGestures()Landroid/graphics/Rect;

    move-result-object v2

    .line 509
    .local v2, "bounds":Landroid/graphics/Rect;
    :goto_0
    const/4 v3, 0x1

    cmpl-float v4, p2, v0

    if-lez v4, :cond_2

    .line 510
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v5, p2, v4

    if-lez v5, :cond_0

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_0
    move v5, p2

    .line 511
    .local v5, "segment":F
    :goto_1
    iget-object v6, p0, Landroidx/test/uiautomator/UiObject2;->mGestures:Landroidx/test/uiautomator/Gestures;

    invoke-virtual {v6, v2, v1, v5, p3}, Landroidx/test/uiautomator/Gestures;->swipeRect(Landroid/graphics/Rect;Landroidx/test/uiautomator/Direction;FI)Landroidx/test/uiautomator/PointerGesture;

    move-result-object v6

    const-wide/16 v7, 0xfa

    invoke-virtual {v6, v7, v8}, Landroidx/test/uiautomator/PointerGesture;->pause(J)Landroidx/test/uiautomator/PointerGesture;

    move-result-object v6

    .line 515
    .local v6, "swipe":Landroidx/test/uiautomator/PointerGesture;
    iget-object v7, p0, Landroidx/test/uiautomator/UiObject2;->mGestureController:Landroidx/test/uiautomator/GestureController;

    invoke-static {p1}, Landroidx/test/uiautomator/Until;->scrollFinished(Landroidx/test/uiautomator/Direction;)Landroidx/test/uiautomator/EventCondition;

    move-result-object v8

    new-array v3, v3, [Landroidx/test/uiautomator/PointerGesture;

    const/4 v9, 0x0

    aput-object v6, v3, v9

    const-wide/16 v10, 0x3e8

    invoke-virtual {v7, v8, v10, v11, v3}, Landroidx/test/uiautomator/GestureController;->performGestureAndWait(Landroidx/test/uiautomator/EventCondition;J[Landroidx/test/uiautomator/PointerGesture;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 517
    return v9

    .line 509
    .end local v5    # "segment":F
    .end local v6    # "swipe":Landroidx/test/uiautomator/PointerGesture;
    :cond_1
    sub-float/2addr p2, v4

    goto :goto_0

    .line 521
    :cond_2
    return v3

    .line 501
    .end local v1    # "swipeDirection":Landroidx/test/uiautomator/Direction;
    .end local v2    # "bounds":Landroid/graphics/Rect;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Speed cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 498
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Percent must be greater than 0.0f"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setGestureMargin(I)V
    .locals 0
    .param p1, "margin"    # I

    .line 119
    invoke-virtual {p0, p1, p1, p1, p1}, Landroidx/test/uiautomator/UiObject2;->setGestureMargins(IIII)V

    .line 120
    return-void
.end method

.method public setGestureMargins(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 124
    iput p1, p0, Landroidx/test/uiautomator/UiObject2;->mMarginLeft:I

    .line 125
    iput p2, p0, Landroidx/test/uiautomator/UiObject2;->mMarginTop:I

    .line 126
    iput p3, p0, Landroidx/test/uiautomator/UiObject2;->mMarginRight:I

    .line 127
    iput p4, p0, Landroidx/test/uiautomator/UiObject2;->mMarginBottom:I

    .line 128
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;

    .line 592
    invoke-direct {p0}, Landroidx/test/uiautomator/UiObject2;->getAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 595
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez p1, :cond_0

    .line 596
    const-string p1, ""

    .line 599
    :cond_0
    sget v1, Landroidx/test/uiautomator/UiDevice;->API_LEVEL_ACTUAL:I

    const/16 v2, 0x13

    if-le v1, v2, :cond_2

    .line 601
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 602
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 603
    const/high16 v2, 0x200000

    invoke-virtual {v0, v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(ILandroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 605
    sget-object v2, Landroidx/test/uiautomator/UiObject2;->TAG:Ljava/lang/String;

    const-string v3, "AccessibilityNodeInfo#performAction(ACTION_SET_TEXT) failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    .end local v1    # "args":Landroid/os/Bundle;
    :cond_1
    goto :goto_0

    .line 608
    :cond_2
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 609
    .local v1, "currentText":Ljava/lang/CharSequence;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 611
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v2

    if-nez v2, :cond_3

    .line 613
    sget-object v2, Landroidx/test/uiautomator/UiObject2;->TAG:Ljava/lang/String;

    const-string v3, "AccessibilityNodeInfo#performAction(ACTION_FOCUS) failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :cond_3
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 617
    .local v2, "args":Landroid/os/Bundle;
    const-string v3, "ACTION_ARGUMENT_SELECTION_START_INT"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 618
    const-string v3, "ACTION_ARGUMENT_SELECTION_END_INT"

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 619
    const/high16 v3, 0x20000

    invoke-virtual {v0, v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(ILandroid/os/Bundle;)Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 622
    sget-object v3, Landroidx/test/uiautomator/UiObject2;->TAG:Ljava/lang/String;

    const-string v5, "AccessibilityNodeInfo#performAction(ACTION_SET_SELECTION) failed"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_4
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiObject2;->getDevice()Landroidx/test/uiautomator/UiDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/test/uiautomator/UiDevice;->getInteractionController()Landroidx/test/uiautomator/InteractionController;

    move-result-object v3

    .line 626
    .local v3, "ic":Landroidx/test/uiautomator/InteractionController;
    const/16 v5, 0x43

    invoke-virtual {v3, v5, v4}, Landroidx/test/uiautomator/InteractionController;->sendKey(II)Z

    .line 627
    invoke-virtual {v3, p1}, Landroidx/test/uiautomator/InteractionController;->sendText(Ljava/lang/String;)Z

    .line 630
    .end local v1    # "currentText":Ljava/lang/CharSequence;
    .end local v2    # "args":Landroid/os/Bundle;
    .end local v3    # "ic":Landroidx/test/uiautomator/InteractionController;
    :cond_5
    :goto_0
    return-void
.end method

.method public swipe(Landroidx/test/uiautomator/Direction;F)V
    .locals 2
    .param p1, "direction"    # Landroidx/test/uiautomator/Direction;
    .param p2, "percent"    # F

    .line 456
    iget-object v0, p0, Landroidx/test/uiautomator/UiObject2;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const v1, 0x459c4000    # 5000.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/test/uiautomator/UiObject2;->swipe(Landroidx/test/uiautomator/Direction;FI)V

    .line 457
    return-void
.end method

.method public swipe(Landroidx/test/uiautomator/Direction;FI)V
    .locals 5
    .param p1, "direction"    # Landroidx/test/uiautomator/Direction;
    .param p2, "percent"    # F
    .param p3, "speed"    # I

    .line 467
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_1

    .line 470
    if-ltz p3, :cond_0

    .line 473
    invoke-direct {p0}, Landroidx/test/uiautomator/UiObject2;->getVisibleBoundsForGestures()Landroid/graphics/Rect;

    move-result-object v0

    .line 474
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Landroidx/test/uiautomator/UiObject2;->mGestureController:Landroidx/test/uiautomator/GestureController;

    const/4 v2, 0x1

    new-array v2, v2, [Landroidx/test/uiautomator/PointerGesture;

    iget-object v3, p0, Landroidx/test/uiautomator/UiObject2;->mGestures:Landroidx/test/uiautomator/Gestures;

    invoke-virtual {v3, v0, p1, p2, p3}, Landroidx/test/uiautomator/Gestures;->swipeRect(Landroid/graphics/Rect;Landroidx/test/uiautomator/Direction;FI)Landroidx/test/uiautomator/PointerGesture;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Landroidx/test/uiautomator/GestureController;->performGesture([Landroidx/test/uiautomator/PointerGesture;)V

    .line 475
    return-void

    .line 471
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Speed cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 468
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Percent must be between 0.0f and 1.0f"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public wait(Landroidx/test/uiautomator/SearchCondition;J)Ljava/lang/Object;
    .locals 1
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/test/uiautomator/SearchCondition<",
            "TR;>;J)TR;"
        }
    .end annotation

    .line 154
    .local p1, "condition":Landroidx/test/uiautomator/SearchCondition;, "Landroidx/test/uiautomator/SearchCondition<TR;>;"
    iget-object v0, p0, Landroidx/test/uiautomator/UiObject2;->mWaitMixin:Landroidx/test/uiautomator/WaitMixin;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/test/uiautomator/WaitMixin;->wait(Landroidx/test/uiautomator/Condition;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public wait(Landroidx/test/uiautomator/UiObject2Condition;J)Ljava/lang/Object;
    .locals 1
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/test/uiautomator/UiObject2Condition<",
            "TR;>;J)TR;"
        }
    .end annotation

    .line 142
    .local p1, "condition":Landroidx/test/uiautomator/UiObject2Condition;, "Landroidx/test/uiautomator/UiObject2Condition<TR;>;"
    iget-object v0, p0, Landroidx/test/uiautomator/UiObject2;->mWaitMixin:Landroidx/test/uiautomator/WaitMixin;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/test/uiautomator/WaitMixin;->wait(Landroidx/test/uiautomator/Condition;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
