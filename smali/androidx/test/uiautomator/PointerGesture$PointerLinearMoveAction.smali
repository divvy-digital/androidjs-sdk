.class Landroidx/test/uiautomator/PointerGesture$PointerLinearMoveAction;
.super Landroidx/test/uiautomator/PointerGesture$PointerAction;
.source "PointerGesture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/uiautomator/PointerGesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PointerLinearMoveAction"
.end annotation


# direct methods
.method public constructor <init>(Landroid/graphics/Point;Landroid/graphics/Point;I)V
    .locals 4
    .param p1, "startPoint"    # Landroid/graphics/Point;
    .param p2, "endPoint"    # Landroid/graphics/Point;
    .param p3, "speed"    # I

    .line 138
    const-wide v0, 0x408f400000000000L    # 1000.0

    invoke-static {p1, p2}, Landroidx/test/uiautomator/PointerGesture$PointerLinearMoveAction;->calcDistance(Landroid/graphics/Point;Landroid/graphics/Point;)D

    move-result-wide v2

    mul-double v2, v2, v0

    int-to-double v0, p3

    div-double/2addr v2, v0

    double-to-long v0, v2

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/test/uiautomator/PointerGesture$PointerAction;-><init>(Landroid/graphics/Point;Landroid/graphics/Point;J)V

    .line 139
    return-void
.end method

.method private static calcDistance(Landroid/graphics/Point;Landroid/graphics/Point;)D
    .locals 4
    .param p0, "a"    # Landroid/graphics/Point;
    .param p1, "b"    # Landroid/graphics/Point;

    .line 149
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p0, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p0, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    mul-int v0, v0, v1

    iget v1, p1, Landroid/graphics/Point;->y:I

    iget v2, p0, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Point;->y:I

    iget v3, p0, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v3

    mul-int v1, v1, v2

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public interpolate(F)Landroid/graphics/Point;
    .locals 4
    .param p1, "fraction"    # F

    .line 143
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Landroidx/test/uiautomator/PointerGesture$PointerLinearMoveAction;->start:Landroid/graphics/Point;

    invoke-direct {v0, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    .line 144
    .local v0, "ret":Landroid/graphics/Point;
    iget-object v1, p0, Landroidx/test/uiautomator/PointerGesture$PointerLinearMoveAction;->end:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Landroidx/test/uiautomator/PointerGesture$PointerLinearMoveAction;->start:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float v1, v1, p1

    float-to-int v1, v1

    iget-object v2, p0, Landroidx/test/uiautomator/PointerGesture$PointerLinearMoveAction;->end:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Landroidx/test/uiautomator/PointerGesture$PointerLinearMoveAction;->start:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v2, v2, p1

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->offset(II)V

    .line 145
    return-object v0
.end method
