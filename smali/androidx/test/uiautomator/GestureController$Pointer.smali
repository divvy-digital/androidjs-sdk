.class Landroidx/test/uiautomator/GestureController$Pointer;
.super Ljava/lang/Object;
.source "GestureController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/uiautomator/GestureController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Pointer"
.end annotation


# instance fields
.field coords:Landroid/view/MotionEvent$PointerCoords;

.field prop:Landroid/view/MotionEvent$PointerProperties;


# direct methods
.method public constructor <init>(ILandroid/graphics/Point;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "point"    # Landroid/graphics/Point;

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    new-instance v0, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    iput-object v0, p0, Landroidx/test/uiautomator/GestureController$Pointer;->prop:Landroid/view/MotionEvent$PointerProperties;

    .line 214
    iput p1, v0, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 215
    iget-object v0, p0, Landroidx/test/uiautomator/GestureController$Pointer;->prop:Landroid/view/MotionEvent$PointerProperties;

    invoke-static {}, Landroidx/test/uiautomator/Configurator;->getInstance()Landroidx/test/uiautomator/Configurator;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/test/uiautomator/Configurator;->getToolType()I

    move-result v1

    iput v1, v0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 216
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    iput-object v0, p0, Landroidx/test/uiautomator/GestureController$Pointer;->coords:Landroid/view/MotionEvent$PointerCoords;

    .line 217
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 218
    iget-object v0, p0, Landroidx/test/uiautomator/GestureController$Pointer;->coords:Landroid/view/MotionEvent$PointerCoords;

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 219
    iget-object v0, p0, Landroidx/test/uiautomator/GestureController$Pointer;->coords:Landroid/view/MotionEvent$PointerCoords;

    iget v1, p2, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 220
    iget-object v0, p0, Landroidx/test/uiautomator/GestureController$Pointer;->coords:Landroid/view/MotionEvent$PointerCoords;

    iget v1, p2, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 221
    return-void
.end method


# virtual methods
.method public updatePosition(Landroid/graphics/Point;)V
    .locals 2
    .param p1, "point"    # Landroid/graphics/Point;

    .line 224
    iget-object v0, p0, Landroidx/test/uiautomator/GestureController$Pointer;->coords:Landroid/view/MotionEvent$PointerCoords;

    iget v1, p1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 225
    iget-object v0, p0, Landroidx/test/uiautomator/GestureController$Pointer;->coords:Landroid/view/MotionEvent$PointerCoords;

    iget v1, p1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 226
    return-void
.end method
