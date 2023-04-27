.class abstract Lcom/facebook/react/uimanager/layoutanimation/BaseLayoutAnimation;
.super Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;
.source "BaseLayoutAnimation.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;-><init>()V

    return-void
.end method


# virtual methods
.method createAnimationImpl(Landroid/view/View;IIII)Landroid/view/animation/Animation;
    .locals 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .line 28
    move-object v0, p0

    iget-object v1, v0, Lcom/facebook/react/uimanager/layoutanimation/BaseLayoutAnimation;->mAnimatedProperty:Lcom/facebook/react/uimanager/layoutanimation/AnimatedPropertyType;

    if-eqz v1, :cond_8

    .line 29
    sget-object v1, Lcom/facebook/react/uimanager/layoutanimation/BaseLayoutAnimation$1;->$SwitchMap$com$facebook$react$uimanager$layoutanimation$AnimatedPropertyType:[I

    iget-object v2, v0, Lcom/facebook/react/uimanager/layoutanimation/BaseLayoutAnimation;->mAnimatedProperty:Lcom/facebook/react/uimanager/layoutanimation/AnimatedPropertyType;

    invoke-virtual {v2}, Lcom/facebook/react/uimanager/layoutanimation/AnimatedPropertyType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    .line 75
    move-object v4, p1

    new-instance v1, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing animation for property : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/facebook/react/uimanager/layoutanimation/BaseLayoutAnimation;->mAnimatedProperty:Lcom/facebook/react/uimanager/layoutanimation/AnimatedPropertyType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    :pswitch_0
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/layoutanimation/BaseLayoutAnimation;->isReverse()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 63
    .local v7, "fromValue":F
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/layoutanimation/BaseLayoutAnimation;->isReverse()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v8, 0x0

    goto :goto_1

    :cond_1
    const/high16 v8, 0x3f800000    # 1.0f

    .line 64
    .local v8, "toValue":F
    :goto_1
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/high16 v12, 0x3f000000    # 0.5f

    move-object v4, v1

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    return-object v1

    .line 49
    .end local v7    # "fromValue":F
    .end local v8    # "toValue":F
    :pswitch_1
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/layoutanimation/BaseLayoutAnimation;->isReverse()Z

    move-result v1

    if-eqz v1, :cond_2

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    .line 50
    .local v5, "fromValue":F
    :goto_2
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/layoutanimation/BaseLayoutAnimation;->isReverse()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v6, 0x0

    goto :goto_3

    :cond_3
    const/high16 v6, 0x3f800000    # 1.0f

    .line 51
    .local v6, "toValue":F
    :goto_3
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    return-object v1

    .line 36
    .end local v5    # "fromValue":F
    .end local v6    # "toValue":F
    :pswitch_2
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/layoutanimation/BaseLayoutAnimation;->isReverse()Z

    move-result v1

    if-eqz v1, :cond_4

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    .line 37
    .restart local v5    # "fromValue":F
    :goto_4
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/layoutanimation/BaseLayoutAnimation;->isReverse()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v6, 0x0

    goto :goto_5

    :cond_5
    const/high16 v6, 0x3f800000    # 1.0f

    .line 38
    .restart local v6    # "toValue":F
    :goto_5
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v11, 0x1

    const/high16 v12, 0x3f000000    # 0.5f

    move-object v4, v1

    move v7, v5

    move v8, v6

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    return-object v1

    .line 31
    .end local v5    # "fromValue":F
    .end local v6    # "toValue":F
    :pswitch_3
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/layoutanimation/BaseLayoutAnimation;->isReverse()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    .line 32
    .local v1, "fromValue":F
    :goto_6
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/layoutanimation/BaseLayoutAnimation;->isReverse()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v3

    :goto_7
    move v2, v3

    .line 33
    .local v2, "toValue":F
    new-instance v3, Lcom/facebook/react/uimanager/layoutanimation/OpacityAnimation;

    move-object v4, p1

    invoke-direct {v3, p1, v1, v2}, Lcom/facebook/react/uimanager/layoutanimation/OpacityAnimation;-><init>(Landroid/view/View;FF)V

    return-object v3

    .line 79
    .end local v1    # "fromValue":F
    .end local v2    # "toValue":F
    :cond_8
    move-object v4, p1

    new-instance v1, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    const-string v2, "Missing animated property from animation config"

    invoke-direct {v1, v2}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method abstract isReverse()Z
.end method

.method isValid()Z
    .locals 1

    .line 23
    iget v0, p0, Lcom/facebook/react/uimanager/layoutanimation/BaseLayoutAnimation;->mDurationMs:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/uimanager/layoutanimation/BaseLayoutAnimation;->mAnimatedProperty:Lcom/facebook/react/uimanager/layoutanimation/AnimatedPropertyType;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
