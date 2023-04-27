.class Landroidx/test/uiautomator/AccessibilityNodeInfoHelper;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoHelper.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getVisibleBoundsInScreen(Landroid/view/accessibility/AccessibilityNodeInfo;II)Landroid/graphics/Rect;
    .locals 4
    .param p0, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 38
    if-nez p0, :cond_0

    .line 39
    const/4 v0, 0x0

    return-object v0

    .line 42
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 43
    .local v0, "nodeRect":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 45
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 46
    .local v1, "displayRect":Landroid/graphics/Rect;
    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 47
    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 48
    iput p1, v1, Landroid/graphics/Rect;->right:I

    .line 49
    iput p2, v1, Landroid/graphics/Rect;->bottom:I

    .line 51
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 54
    sget v2, Landroidx/test/uiautomator/UiDevice;->API_LEVEL_ACTUAL:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 56
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 57
    .local v2, "window":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindow()Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 58
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindow()Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 59
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 63
    .end local v2    # "window":Landroid/graphics/Rect;
    :cond_1
    return-object v0
.end method
