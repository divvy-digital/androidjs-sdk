.class public Lcom/facebook/react/animation/ScaleYAnimationPropertyUpdater;
.super Lcom/facebook/react/animation/AbstractSingleFloatProperyUpdater;
.source "ScaleYAnimationPropertyUpdater.java"


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .param p1, "toValue"    # F

    .line 18
    invoke-direct {p0, p1}, Lcom/facebook/react/animation/AbstractSingleFloatProperyUpdater;-><init>(F)V

    .line 19
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0
    .param p1, "fromValue"    # F
    .param p2, "toValue"    # F

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/animation/AbstractSingleFloatProperyUpdater;-><init>(FF)V

    .line 23
    return-void
.end method


# virtual methods
.method protected getProperty(Landroid/view/View;)F
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v0

    return v0
.end method

.method protected setProperty(Landroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "propertyValue"    # F

    .line 32
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    .line 33
    return-void
.end method
