.class Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeFitStart;
.super Lcom/facebook/drawee/drawable/ScalingUtils$AbstractScaleType;
.source "ScalingUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/drawee/drawable/ScalingUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScaleTypeFitStart"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 194
    new-instance v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeFitStart;

    invoke-direct {v0}, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeFitStart;-><init>()V

    sput-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeFitStart;->INSTANCE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 192
    invoke-direct {p0}, Lcom/facebook/drawee/drawable/ScalingUtils$AbstractScaleType;-><init>()V

    return-void
.end method


# virtual methods
.method public getTransformImpl(Landroid/graphics/Matrix;Landroid/graphics/Rect;IIFFFF)V
    .locals 5
    .param p1, "outTransform"    # Landroid/graphics/Matrix;
    .param p2, "parentRect"    # Landroid/graphics/Rect;
    .param p3, "childWidth"    # I
    .param p4, "childHeight"    # I
    .param p5, "focusX"    # F
    .param p6, "focusY"    # F
    .param p7, "scaleX"    # F
    .param p8, "scaleY"    # F

    .line 206
    invoke-static {p7, p8}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 207
    .local v0, "scale":F
    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    .line 208
    .local v1, "dx":F
    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    .line 209
    .local v2, "dy":F
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 210
    const/high16 v3, 0x3f000000    # 0.5f

    add-float v4, v1, v3

    float-to-int v4, v4

    int-to-float v4, v4

    add-float/2addr v3, v2

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p1, v4, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 211
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 215
    const-string v0, "fit_start"

    return-object v0
.end method
