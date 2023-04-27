.class Lcom/facebook/react/views/modal/ModalHostHelper;
.super Ljava/lang/Object;
.source "ModalHostHelper.java"


# static fields
.field private static final MAX_POINT:Landroid/graphics/Point;

.field private static final MIN_POINT:Landroid/graphics/Point;

.field private static final SIZE_POINT:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sput-object v0, Lcom/facebook/react/views/modal/ModalHostHelper;->MIN_POINT:Landroid/graphics/Point;

    .line 23
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sput-object v0, Lcom/facebook/react/views/modal/ModalHostHelper;->MAX_POINT:Landroid/graphics/Point;

    .line 24
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sput-object v0, Lcom/facebook/react/views/modal/ModalHostHelper;->SIZE_POINT:Landroid/graphics/Point;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getModalHostSize(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .line 37
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 38
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 40
    .local v1, "display":Landroid/view/Display;
    sget-object v2, Lcom/facebook/react/views/modal/ModalHostHelper;->MIN_POINT:Landroid/graphics/Point;

    sget-object v3, Lcom/facebook/react/views/modal/ModalHostHelper;->MAX_POINT:Landroid/graphics/Point;

    invoke-virtual {v1, v2, v3}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 42
    sget-object v4, Lcom/facebook/react/views/modal/ModalHostHelper;->SIZE_POINT:Landroid/graphics/Point;

    invoke-virtual {v1, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 44
    const/4 v5, 0x1

    new-array v5, v5, [I

    const v6, 0x101020d

    const/4 v7, 0x0

    aput v6, v5, v7

    .line 45
    .local v5, "attrs":[I
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    .line 46
    .local v6, "theme":Landroid/content/res/Resources$Theme;
    invoke-virtual {v6, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 47
    .local v8, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v8, v7, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 51
    .local v7, "windowFullscreen":Z
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 52
    .local v9, "resources":Landroid/content/res/Resources;
    const-string v10, "dimen"

    const-string v11, "android"

    const-string v12, "status_bar_height"

    invoke-virtual {v9, v12, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 53
    .local v10, "statusBarId":I
    const/4 v11, 0x0

    .line 54
    .local v11, "statusBarHeight":I
    if-eqz v7, :cond_0

    if-lez v10, :cond_0

    .line 55
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v11, v12

    .line 58
    :cond_0
    iget v12, v4, Landroid/graphics/Point;->x:I

    iget v4, v4, Landroid/graphics/Point;->y:I

    if-ge v12, v4, :cond_1

    .line 60
    new-instance v4, Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    add-int/2addr v3, v11

    invoke-direct {v4, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    return-object v4

    .line 63
    :cond_1
    new-instance v4, Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    add-int/2addr v2, v11

    invoke-direct {v4, v3, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v4
.end method
