.class public Lcom/facebook/react/uimanager/LayoutShadowNode;
.super Lcom/facebook/react/uimanager/ReactShadowNodeImpl;
.source "LayoutShadowNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;
    }
.end annotation


# instance fields
.field private final mTempYogaValue:Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 74
    invoke-direct {p0}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;-><init>()V

    .line 75
    new-instance v0, Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;-><init>(Lcom/facebook/react/uimanager/LayoutShadowNode$1;)V

    iput-object v0, p0, Lcom/facebook/react/uimanager/LayoutShadowNode;->mTempYogaValue:Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;

    .line 76
    return-void
.end method

.method private maybeTransformLeftRightToStartEnd(I)I
    .locals 2
    .param p1, "spacingType"    # I

    .line 704
    invoke-static {}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->getInstance()Lcom/facebook/react/modules/i18nmanager/I18nUtil;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->getThemedContext()Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->doLeftAndRightSwapInRTL(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 705
    return p1

    .line 708
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 714
    :pswitch_0
    return p1

    .line 712
    :pswitch_1
    const/4 v0, 0x5

    return v0

    .line 710
    :pswitch_2
    const/4 v0, 0x4

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public setAlignContent(Ljava/lang/String;)V
    .locals 3
    .param p1, "alignContent"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "alignContent"
    .end annotation

    .line 426
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->isVirtual()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    return-void

    .line 430
    :cond_0
    if-nez p1, :cond_1

    .line 431
    sget-object v0, Lcom/facebook/yoga/YogaAlign;->FLEX_START:Lcom/facebook/yoga/YogaAlign;

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setAlignContent(Lcom/facebook/yoga/YogaAlign;)V

    .line 432
    return-void

    .line 435
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_2
    goto :goto_0

    :sswitch_0
    const-string v0, "space-around"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_1
    const-string v0, "flex-end"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v0, "space-between"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_3
    const-string v0, "auto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_4
    const-string v0, "flex-start"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_5
    const-string v0, "center"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_6
    const-string v0, "baseline"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_7
    const-string v0, "stretch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 469
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid value for alignContent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 465
    :pswitch_0
    sget-object v0, Lcom/facebook/yoga/YogaAlign;->SPACE_AROUND:Lcom/facebook/yoga/YogaAlign;

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setAlignContent(Lcom/facebook/yoga/YogaAlign;)V

    .line 466
    return-void

    .line 461
    :pswitch_1
    sget-object v0, Lcom/facebook/yoga/YogaAlign;->SPACE_BETWEEN:Lcom/facebook/yoga/YogaAlign;

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setAlignContent(Lcom/facebook/yoga/YogaAlign;)V

    .line 462
    return-void

    .line 457
    :pswitch_2
    sget-object v0, Lcom/facebook/yoga/YogaAlign;->BASELINE:Lcom/facebook/yoga/YogaAlign;

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setAlignContent(Lcom/facebook/yoga/YogaAlign;)V

    .line 458
    return-void

    .line 453
    :pswitch_3
    sget-object v0, Lcom/facebook/yoga/YogaAlign;->STRETCH:Lcom/facebook/yoga/YogaAlign;

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setAlignContent(Lcom/facebook/yoga/YogaAlign;)V

    .line 454
    return-void

    .line 449
    :pswitch_4
    sget-object v0, Lcom/facebook/yoga/YogaAlign;->FLEX_END:Lcom/facebook/yoga/YogaAlign;

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setAlignContent(Lcom/facebook/yoga/YogaAlign;)V

    .line 450
    return-void

    .line 445
    :pswitch_5
    sget-object v0, Lcom/facebook/yoga/YogaAlign;->CENTER:Lcom/facebook/yoga/YogaAlign;

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setAlignContent(Lcom/facebook/yoga/YogaAlign;)V

    .line 446
    return-void

    .line 441
    :pswitch_6
    sget-object v0, Lcom/facebook/yoga/YogaAlign;->FLEX_START:Lcom/facebook/yoga/YogaAlign;

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setAlignContent(Lcom/facebook/yoga/YogaAlign;)V

    .line 442
    return-void

    .line 437
    :pswitch_7
    sget-object v0, Lcom/facebook/yoga/YogaAlign;->AUTO:Lcom/facebook/yoga/YogaAlign;

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setAlignContent(Lcom/facebook/yoga/YogaAlign;)V

    .line 438
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x702b18fb -> :sswitch_7
        -0x669119bb -> :sswitch_6
        -0x514d33ab -> :sswitch_5
        -0x2c6c672 -> :sswitch_4
        0x2dddaf -> :sswitch_3
        0x1a4dda41 -> :sswitch_2
        0x67e35907 -> :sswitch_1
        0x73762c74 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAlignItems(Ljava/lang/String;)V
    .locals 3
    .param p1, "alignItems"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "alignItems"
    .end annotation

    .line 375
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->isVirtual()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    return-void

    .line 379
    :cond_0
    if-nez p1, :cond_1

    .line 380
    sget-object v0, Lcom/facebook/yoga/YogaAlign;->STRETCH:Lcom/facebook/yoga/YogaAlign;

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setAlignItems(Lcom/facebook/yoga/YogaAlign;)V

    .line 381
    return-void

    .line 384
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_2
    goto :goto_0

    :sswitch_0
    const-string v0, "space-around"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_1
    const-string v0, "flex-end"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v0, "space-between"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_3
    const-string v0, "auto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_4
    const-string v0, "flex-start"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_5
    const-string v0, "center"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_6
    const-string v0, "baseline"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_7
    const-string v0, "stretch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 418
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid value for alignItems: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 414
    :pswitch_0
    sget-object v0, Lcom/facebook/yoga/YogaAlign;->SPACE_AROUND:Lcom/facebook/yoga/YogaAlign;

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setAlignItems(Lcom/facebook/yoga/YogaAlign;)V

    .line 415
    return-void

    .line 410
    :pswitch_1
    sget-object v0, Lcom/facebook/yoga/YogaAlign;->SPACE_BETWEEN:Lcom/facebook/yoga/YogaAlign;

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setAlignItems(Lcom/facebook/yoga/YogaAlign;)V

    .line 411
    return-void

    .line 406
    :pswitch_2
    sget-object v0, Lcom/facebook/yoga/YogaAlign;->BASELINE:Lcom/facebook/yoga/YogaAlign;

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setAlignItems(Lcom/facebook/yoga/YogaAlign;)V

    .line 407
    return-void

    .line 402
    :pswitch_3
    sget-object v0, Lcom/facebook/yoga/YogaAlign;->STRETCH:Lcom/facebook/yoga/YogaAlign;

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setAlignItems(Lcom/facebook/yoga/YogaAlign;)V

    .line 403
    return-void

    .line 398
    :pswitch_4
    sget-object v0, Lcom/facebook/yoga/YogaAlign;->FLEX_END:Lcom/facebook/yoga/YogaAlign;

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setAlignItems(Lcom/facebook/yoga/YogaAlign;)V

    .line 399
    return-void

    .line 394
    :pswitch_5
    sget-object v0, Lcom/facebook/yoga/YogaAlign;->CENTER:Lcom/facebook/yoga/YogaAlign;

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setAlignItems(Lcom/facebook/yoga/YogaAlign;)V

    .line 395
    return-void

    .line 390
    :pswitch_6
    sget-object v0, Lcom/facebook/yoga/YogaAlign;->FLEX_START:Lcom/facebook/yoga/YogaAlign;

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setAlignItems(Lcom/facebook/yoga/YogaAlign;)V

    .line 391
    return-void

    .line 386
    :pswitch_7
    sget-object v0, Lcom/facebook/yoga/YogaAlign;->AUTO:Lcom/facebook/yoga/YogaAlign;

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setAlignItems(Lcom/facebook/yoga/YogaAlign;)V

    .line 387
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x702b18fb -> :sswitch_7
        -0x669119bb -> :sswitch_6
        -0x514d33ab -> :sswitch_5
        -0x2c6c672 -> :sswitch_4
        0x2dddaf -> :sswitch_3
        0x1a4dda41 -> :sswitch_2
        0x67e35907 -> :sswitch_1
        0x73762c74 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAlignSelf(Ljava/lang/String;)V
    .locals 3
    .param p1, "alignSelf"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "alignSelf"
    .end annotation

    .line 324
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->isVirtual()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    return-void

    .line 328
    :cond_0
    if-nez p1, :cond_1

    .line 329
    sget-object v0, Lcom/facebook/yoga/YogaAlign;->AUTO:Lcom/facebook/yoga/YogaAlign;

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setAlignSelf(Lcom/facebook/yoga/YogaAlign;)V

    .line 330
    return-void

    .line 333
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_2
    goto :goto_0

    :sswitch_0
    const-string v0, "space-around"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_1
    const-string v0, "flex-end"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v0, "space-between"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_3
    const-string v0, "auto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_4
    const-string v0, "flex-start"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_5
    const-string v0, "center"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_6
    const-string v0, "baseline"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_7
    const-string v0, "stretch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 367
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid value for alignSelf: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    :pswitch_0
    sget-object v0, Lcom/facebook/yoga/YogaAlign;->SPACE_AROUND:Lcom/facebook/yoga/YogaAlign;

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setAlignSelf(Lcom/facebook/yoga/YogaAlign;)V

    .line 364
    return-void

    .line 359
    :pswitch_1
    sget-object v0, Lcom/facebook/yoga/YogaAlign;->SPACE_BETWEEN:Lcom/facebook/yoga/YogaAlign;

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setAlignSelf(Lcom/facebook/yoga/YogaAlign;)V

    .line 360
    return-void

    .line 355
    :pswitch_2
    sget-object v0, Lcom/facebook/yoga/YogaAlign;->BASELINE:Lcom/facebook/yoga/YogaAlign;

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setAlignSelf(Lcom/facebook/yoga/YogaAlign;)V

    .line 356
    return-void

    .line 351
    :pswitch_3
    sget-object v0, Lcom/facebook/yoga/YogaAlign;->STRETCH:Lcom/facebook/yoga/YogaAlign;

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setAlignSelf(Lcom/facebook/yoga/YogaAlign;)V

    .line 352
    return-void

    .line 347
    :pswitch_4
    sget-object v0, Lcom/facebook/yoga/YogaAlign;->FLEX_END:Lcom/facebook/yoga/YogaAlign;

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setAlignSelf(Lcom/facebook/yoga/YogaAlign;)V

    .line 348
    return-void

    .line 343
    :pswitch_5
    sget-object v0, Lcom/facebook/yoga/YogaAlign;->CENTER:Lcom/facebook/yoga/YogaAlign;

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setAlignSelf(Lcom/facebook/yoga/YogaAlign;)V

    .line 344
    return-void

    .line 339
    :pswitch_6
    sget-object v0, Lcom/facebook/yoga/YogaAlign;->FLEX_START:Lcom/facebook/yoga/YogaAlign;

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setAlignSelf(Lcom/facebook/yoga/YogaAlign;)V

    .line 340
    return-void

    .line 335
    :pswitch_7
    sget-object v0, Lcom/facebook/yoga/YogaAlign;->AUTO:Lcom/facebook/yoga/YogaAlign;

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setAlignSelf(Lcom/facebook/yoga/YogaAlign;)V

    .line 336
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x702b18fb -> :sswitch_7
        -0x669119bb -> :sswitch_6
        -0x514d33ab -> :sswitch_5
        -0x2c6c672 -> :sswitch_4
        0x2dddaf -> :sswitch_3
        0x1a4dda41 -> :sswitch_2
        0x67e35907 -> :sswitch_1
        0x73762c74 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAspectRatio(F)V
    .locals 0
    .param p1, "aspectRatio"    # F
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = NaNf
        name = "aspectRatio"
    .end annotation

    .line 253
    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setStyleAspectRatio(F)V

    .line 254
    return-void
.end method

.method public setBorderWidths(IF)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "borderWidth"    # F
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactPropGroup;
        defaultFloat = NaNf
        names = {
            "borderWidth",
            "borderStartWidth",
            "borderEndWidth",
            "borderTopWidth",
            "borderBottomWidth",
            "borderLeftWidth",
            "borderRightWidth"
        }
    .end annotation

    .line 661
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->isVirtual()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 662
    return-void

    .line 664
    :cond_0
    sget-object v0, Lcom/facebook/react/uimanager/ViewProps;->BORDER_SPACING_TYPES:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->maybeTransformLeftRightToStartEnd(I)I

    move-result v0

    .line 665
    .local v0, "spacingType":I
    invoke-static {p2}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setBorder(IF)V

    .line 666
    return-void
.end method

.method public setDisplay(Ljava/lang/String;)V
    .locals 3
    .param p1, "display"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "display"
    .end annotation

    .line 550
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->isVirtual()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    return-void

    .line 554
    :cond_0
    if-nez p1, :cond_1

    .line 555
    sget-object v0, Lcom/facebook/yoga/YogaDisplay;->FLEX:Lcom/facebook/yoga/YogaDisplay;

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setDisplay(Lcom/facebook/yoga/YogaDisplay;)V

    .line 556
    return-void

    .line 559
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_2
    goto :goto_0

    :sswitch_0
    const-string v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_1
    const-string v0, "flex"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 569
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid value for display: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 565
    :pswitch_0
    sget-object v0, Lcom/facebook/yoga/YogaDisplay;->NONE:Lcom/facebook/yoga/YogaDisplay;

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setDisplay(Lcom/facebook/yoga/YogaDisplay;)V

    .line 566
    goto :goto_2

    .line 561
    :pswitch_1
    sget-object v0, Lcom/facebook/yoga/YogaDisplay;->FLEX:Lcom/facebook/yoga/YogaDisplay;

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setDisplay(Lcom/facebook/yoga/YogaDisplay;)V

    .line 562
    nop

    .line 573
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2ffff9 -> :sswitch_1
        0x33af38 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setFlex(F)V
    .locals 1
    .param p1, "flex"    # F
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 0.0f
        name = "flex"
    .end annotation

    .line 206
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->isVirtual()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    return-void

    .line 209
    :cond_0
    invoke-super {p0, p1}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->setFlex(F)V

    .line 210
    return-void
.end method

.method public setFlexBasis(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 2
    .param p1, "flexBasis"    # Lcom/facebook/react/bridge/Dynamic;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "flexBasis"
    .end annotation

    .line 230
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->isVirtual()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/LayoutShadowNode;->mTempYogaValue:Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;->setFromDynamic(Lcom/facebook/react/bridge/Dynamic;)V

    .line 235
    sget-object v0, Lcom/facebook/react/uimanager/LayoutShadowNode$1;->$SwitchMap$com$facebook$yoga$YogaUnit:[I

    iget-object v1, p0, Lcom/facebook/react/uimanager/LayoutShadowNode;->mTempYogaValue:Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;

    iget-object v1, v1, Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;->unit:Lcom/facebook/yoga/YogaUnit;

    invoke-virtual {v1}, Lcom/facebook/yoga/YogaUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 244
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/LayoutShadowNode;->mTempYogaValue:Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;

    iget v0, v0, Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;->value:F

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setFlexBasisPercent(F)V

    goto :goto_0

    .line 241
    :pswitch_1
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setFlexBasisAuto()V

    .line 242
    goto :goto_0

    .line 238
    :pswitch_2
    iget-object v0, p0, Lcom/facebook/react/uimanager/LayoutShadowNode;->mTempYogaValue:Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;

    iget v0, v0, Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;->value:F

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setFlexBasis(F)V

    .line 239
    nop

    .line 248
    :goto_0
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->recycle()V

    .line 249
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setFlexDirection(Ljava/lang/String;)V
    .locals 3
    .param p1, "flexDirection"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "flexDirection"
    .end annotation

    .line 258
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->isVirtual()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    return-void

    .line 262
    :cond_0
    if-nez p1, :cond_1

    .line 263
    sget-object v0, Lcom/facebook/yoga/YogaFlexDirection;->COLUMN:Lcom/facebook/yoga/YogaFlexDirection;

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setFlexDirection(Lcom/facebook/yoga/YogaFlexDirection;)V

    .line 264
    return-void

    .line 267
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_2
    goto :goto_0

    :sswitch_0
    const-string v0, "column-reverse"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_1
    const-string v0, "row"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "column"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v0, "row-reverse"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 285
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid value for flexDirection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :pswitch_0
    sget-object v0, Lcom/facebook/yoga/YogaFlexDirection;->ROW_REVERSE:Lcom/facebook/yoga/YogaFlexDirection;

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setFlexDirection(Lcom/facebook/yoga/YogaFlexDirection;)V

    .line 282
    goto :goto_2

    .line 277
    :pswitch_1
    sget-object v0, Lcom/facebook/yoga/YogaFlexDirection;->ROW:Lcom/facebook/yoga/YogaFlexDirection;

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setFlexDirection(Lcom/facebook/yoga/YogaFlexDirection;)V

    .line 278
    goto :goto_2

    .line 273
    :pswitch_2
    sget-object v0, Lcom/facebook/yoga/YogaFlexDirection;->COLUMN_REVERSE:Lcom/facebook/yoga/YogaFlexDirection;

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setFlexDirection(Lcom/facebook/yoga/YogaFlexDirection;)V

    .line 274
    goto :goto_2

    .line 269
    :pswitch_3
    sget-object v0, Lcom/facebook/yoga/YogaFlexDirection;->COLUMN:Lcom/facebook/yoga/YogaFlexDirection;

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setFlexDirection(Lcom/facebook/yoga/YogaFlexDirection;)V

    .line 270
    nop

    .line 289
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x565d8a11 -> :sswitch_3
        -0x50c12caa -> :sswitch_2
        0x1b9da -> :sswitch_1
        0x4bdc536b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setFlexGrow(F)V
    .locals 1
    .param p1, "flexGrow"    # F
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 0.0f
        name = "flexGrow"
    .end annotation

    .line 214
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->isVirtual()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    return-void

    .line 217
    :cond_0
    invoke-super {p0, p1}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->setFlexGrow(F)V

    .line 218
    return-void
.end method

.method public setFlexShrink(F)V
    .locals 1
    .param p1, "flexShrink"    # F
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 0.0f
        name = "flexShrink"
    .end annotation

    .line 222
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->isVirtual()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    return-void

    .line 225
    :cond_0
    invoke-super {p0, p1}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->setFlexShrink(F)V

    .line 226
    return-void
.end method

.method public setFlexWrap(Ljava/lang/String;)V
    .locals 3
    .param p1, "flexWrap"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "flexWrap"
    .end annotation

    .line 293
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->isVirtual()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    return-void

    .line 297
    :cond_0
    if-nez p1, :cond_1

    .line 298
    sget-object v0, Lcom/facebook/yoga/YogaWrap;->NO_WRAP:Lcom/facebook/yoga/YogaWrap;

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setFlexWrap(Lcom/facebook/yoga/YogaWrap;)V

    .line 299
    return-void

    .line 302
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_2
    goto :goto_0

    :sswitch_0
    const-string v0, "wrap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_1
    const-string v0, "wrap-reverse"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "nowrap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 316
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid value for flexWrap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :pswitch_0
    sget-object v0, Lcom/facebook/yoga/YogaWrap;->WRAP_REVERSE:Lcom/facebook/yoga/YogaWrap;

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setFlexWrap(Lcom/facebook/yoga/YogaWrap;)V

    .line 313
    goto :goto_2

    .line 308
    :pswitch_1
    sget-object v0, Lcom/facebook/yoga/YogaWrap;->WRAP:Lcom/facebook/yoga/YogaWrap;

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setFlexWrap(Lcom/facebook/yoga/YogaWrap;)V

    .line 309
    goto :goto_2

    .line 304
    :pswitch_2
    sget-object v0, Lcom/facebook/yoga/YogaWrap;->NO_WRAP:Lcom/facebook/yoga/YogaWrap;

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setFlexWrap(Lcom/facebook/yoga/YogaWrap;)V

    .line 305
    nop

    .line 320
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3df6ea75 -> :sswitch_2
        -0x2cace3a1 -> :sswitch_1
        0x37d04a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setHeight(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 2
    .param p1, "height"    # Lcom/facebook/react/bridge/Dynamic;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "height"
    .end annotation

    .line 143
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->isVirtual()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/LayoutShadowNode;->mTempYogaValue:Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;->setFromDynamic(Lcom/facebook/react/bridge/Dynamic;)V

    .line 148
    sget-object v0, Lcom/facebook/react/uimanager/LayoutShadowNode$1;->$SwitchMap$com$facebook$yoga$YogaUnit:[I

    iget-object v1, p0, Lcom/facebook/react/uimanager/LayoutShadowNode;->mTempYogaValue:Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;

    iget-object v1, v1, Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;->unit:Lcom/facebook/yoga/YogaUnit;

    invoke-virtual {v1}, Lcom/facebook/yoga/YogaUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 157
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/LayoutShadowNode;->mTempYogaValue:Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;

    iget v0, v0, Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;->value:F

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setStyleHeightPercent(F)V

    goto :goto_0

    .line 154
    :pswitch_1
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setStyleHeightAuto()V

    .line 155
    goto :goto_0

    .line 151
    :pswitch_2
    iget-object v0, p0, Lcom/facebook/react/uimanager/LayoutShadowNode;->mTempYogaValue:Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;

    iget v0, v0, Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;->value:F

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setStyleHeight(F)V

    .line 152
    nop

    .line 161
    :goto_0
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->recycle()V

    .line 162
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setJustifyContent(Ljava/lang/String;)V
    .locals 3
    .param p1, "justifyContent"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "justifyContent"
    .end annotation

    .line 477
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->isVirtual()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    return-void

    .line 481
    :cond_0
    if-nez p1, :cond_1

    .line 482
    sget-object v0, Lcom/facebook/yoga/YogaJustify;->FLEX_START:Lcom/facebook/yoga/YogaJustify;

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setJustifyContent(Lcom/facebook/yoga/YogaJustify;)V

    .line 483
    return-void

    .line 486
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_2
    goto :goto_0

    :sswitch_0
    const-string v0, "space-evenly"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_1
    const-string v0, "space-around"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_2
    const-string v0, "flex-end"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v0, "space-between"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string v0, "flex-start"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_5
    const-string v0, "center"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 512
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid value for justifyContent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 508
    :pswitch_0
    sget-object v0, Lcom/facebook/yoga/YogaJustify;->SPACE_EVENLY:Lcom/facebook/yoga/YogaJustify;

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setJustifyContent(Lcom/facebook/yoga/YogaJustify;)V

    .line 509
    goto :goto_2

    .line 504
    :pswitch_1
    sget-object v0, Lcom/facebook/yoga/YogaJustify;->SPACE_AROUND:Lcom/facebook/yoga/YogaJustify;

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setJustifyContent(Lcom/facebook/yoga/YogaJustify;)V

    .line 505
    goto :goto_2

    .line 500
    :pswitch_2
    sget-object v0, Lcom/facebook/yoga/YogaJustify;->SPACE_BETWEEN:Lcom/facebook/yoga/YogaJustify;

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setJustifyContent(Lcom/facebook/yoga/YogaJustify;)V

    .line 501
    goto :goto_2

    .line 496
    :pswitch_3
    sget-object v0, Lcom/facebook/yoga/YogaJustify;->FLEX_END:Lcom/facebook/yoga/YogaJustify;

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setJustifyContent(Lcom/facebook/yoga/YogaJustify;)V

    .line 497
    goto :goto_2

    .line 492
    :pswitch_4
    sget-object v0, Lcom/facebook/yoga/YogaJustify;->CENTER:Lcom/facebook/yoga/YogaJustify;

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setJustifyContent(Lcom/facebook/yoga/YogaJustify;)V

    .line 493
    goto :goto_2

    .line 488
    :pswitch_5
    sget-object v0, Lcom/facebook/yoga/YogaJustify;->FLEX_START:Lcom/facebook/yoga/YogaJustify;

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setJustifyContent(Lcom/facebook/yoga/YogaJustify;)V

    .line 489
    nop

    .line 516
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_5
        -0x2c6c672 -> :sswitch_4
        0x1a4dda41 -> :sswitch_3
        0x67e35907 -> :sswitch_2
        0x73762c74 -> :sswitch_1
        0x7a7d46ce -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setMargins(ILcom/facebook/react/bridge/Dynamic;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "margin"    # Lcom/facebook/react/bridge/Dynamic;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactPropGroup;
        names = {
            "margin",
            "marginVertical",
            "marginHorizontal",
            "marginStart",
            "marginEnd",
            "marginTop",
            "marginBottom",
            "marginLeft",
            "marginRight"
        }
    .end annotation

    .line 589
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->isVirtual()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    return-void

    .line 593
    :cond_0
    sget-object v0, Lcom/facebook/react/uimanager/ViewProps;->PADDING_MARGIN_SPACING_TYPES:[I

    aget v0, v0, p1

    .line 594
    invoke-direct {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->maybeTransformLeftRightToStartEnd(I)I

    move-result v0

    .line 596
    .local v0, "spacingType":I
    iget-object v1, p0, Lcom/facebook/react/uimanager/LayoutShadowNode;->mTempYogaValue:Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;

    invoke-virtual {v1, p2}, Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;->setFromDynamic(Lcom/facebook/react/bridge/Dynamic;)V

    .line 597
    sget-object v1, Lcom/facebook/react/uimanager/LayoutShadowNode$1;->$SwitchMap$com$facebook$yoga$YogaUnit:[I

    iget-object v2, p0, Lcom/facebook/react/uimanager/LayoutShadowNode;->mTempYogaValue:Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;

    iget-object v2, v2, Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;->unit:Lcom/facebook/yoga/YogaUnit;

    invoke-virtual {v2}, Lcom/facebook/yoga/YogaUnit;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 606
    :pswitch_0
    iget-object v1, p0, Lcom/facebook/react/uimanager/LayoutShadowNode;->mTempYogaValue:Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;

    iget v1, v1, Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;->value:F

    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setMarginPercent(IF)V

    goto :goto_0

    .line 603
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setMarginAuto(I)V

    .line 604
    goto :goto_0

    .line 600
    :pswitch_2
    iget-object v1, p0, Lcom/facebook/react/uimanager/LayoutShadowNode;->mTempYogaValue:Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;

    iget v1, v1, Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;->value:F

    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setMargin(IF)V

    .line 601
    nop

    .line 610
    :goto_0
    invoke-interface {p2}, Lcom/facebook/react/bridge/Dynamic;->recycle()V

    .line 611
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setMaxHeight(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 2
    .param p1, "maxHeight"    # Lcom/facebook/react/bridge/Dynamic;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "maxHeight"
    .end annotation

    .line 186
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->isVirtual()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/LayoutShadowNode;->mTempYogaValue:Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;->setFromDynamic(Lcom/facebook/react/bridge/Dynamic;)V

    .line 191
    sget-object v0, Lcom/facebook/react/uimanager/LayoutShadowNode$1;->$SwitchMap$com$facebook$yoga$YogaUnit:[I

    iget-object v1, p0, Lcom/facebook/react/uimanager/LayoutShadowNode;->mTempYogaValue:Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;

    iget-object v1, v1, Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;->unit:Lcom/facebook/yoga/YogaUnit;

    invoke-virtual {v1}, Lcom/facebook/yoga/YogaUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 197
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/react/uimanager/LayoutShadowNode;->mTempYogaValue:Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;

    iget v0, v0, Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;->value:F

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setStyleMaxHeightPercent(F)V

    goto :goto_0

    .line 194
    :pswitch_2
    iget-object v0, p0, Lcom/facebook/react/uimanager/LayoutShadowNode;->mTempYogaValue:Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;

    iget v0, v0, Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;->value:F

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setStyleMaxHeight(F)V

    .line 195
    nop

    .line 201
    :goto_0
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->recycle()V

    .line 202
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setMaxWidth(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 2
    .param p1, "maxWidth"    # Lcom/facebook/react/bridge/Dynamic;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "maxWidth"
    .end annotation

    .line 123
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->isVirtual()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/LayoutShadowNode;->mTempYogaValue:Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;->setFromDynamic(Lcom/facebook/react/bridge/Dynamic;)V

    .line 128
    sget-object v0, Lcom/facebook/react/uimanager/LayoutShadowNode$1;->$SwitchMap$com$facebook$yoga$YogaUnit:[I

    iget-object v1, p0, Lcom/facebook/react/uimanager/LayoutShadowNode;->mTempYogaValue:Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;

    iget-object v1, v1, Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;->unit:Lcom/facebook/yoga/YogaUnit;

    invoke-virtual {v1}, Lcom/facebook/yoga/YogaUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 134
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/react/uimanager/LayoutShadowNode;->mTempYogaValue:Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;

    iget v0, v0, Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;->value:F

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setStyleMaxWidthPercent(F)V

    goto :goto_0

    .line 131
    :pswitch_2
    iget-object v0, p0, Lcom/facebook/react/uimanager/LayoutShadowNode;->mTempYogaValue:Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;

    iget v0, v0, Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;->value:F

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setStyleMaxWidth(F)V

    .line 132
    nop

    .line 138
    :goto_0
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->recycle()V

    .line 139
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setMinHeight(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 2
    .param p1, "minHeight"    # Lcom/facebook/react/bridge/Dynamic;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "minHeight"
    .end annotation

    .line 166
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->isVirtual()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/LayoutShadowNode;->mTempYogaValue:Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;->setFromDynamic(Lcom/facebook/react/bridge/Dynamic;)V

    .line 171
    sget-object v0, Lcom/facebook/react/uimanager/LayoutShadowNode$1;->$SwitchMap$com$facebook$yoga$YogaUnit:[I

    iget-object v1, p0, Lcom/facebook/react/uimanager/LayoutShadowNode;->mTempYogaValue:Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;

    iget-object v1, v1, Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;->unit:Lcom/facebook/yoga/YogaUnit;

    invoke-virtual {v1}, Lcom/facebook/yoga/YogaUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 177
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/react/uimanager/LayoutShadowNode;->mTempYogaValue:Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;

    iget v0, v0, Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;->value:F

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setStyleMinHeightPercent(F)V

    goto :goto_0

    .line 174
    :pswitch_2
    iget-object v0, p0, Lcom/facebook/react/uimanager/LayoutShadowNode;->mTempYogaValue:Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;

    iget v0, v0, Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;->value:F

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setStyleMinHeight(F)V

    .line 175
    nop

    .line 181
    :goto_0
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->recycle()V

    .line 182
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setMinWidth(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 2
    .param p1, "minWidth"    # Lcom/facebook/react/bridge/Dynamic;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "minWidth"
    .end annotation

    .line 103
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->isVirtual()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/LayoutShadowNode;->mTempYogaValue:Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;->setFromDynamic(Lcom/facebook/react/bridge/Dynamic;)V

    .line 108
    sget-object v0, Lcom/facebook/react/uimanager/LayoutShadowNode$1;->$SwitchMap$com$facebook$yoga$YogaUnit:[I

    iget-object v1, p0, Lcom/facebook/react/uimanager/LayoutShadowNode;->mTempYogaValue:Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;

    iget-object v1, v1, Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;->unit:Lcom/facebook/yoga/YogaUnit;

    invoke-virtual {v1}, Lcom/facebook/yoga/YogaUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 114
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/react/uimanager/LayoutShadowNode;->mTempYogaValue:Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;

    iget v0, v0, Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;->value:F

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setStyleMinWidthPercent(F)V

    goto :goto_0

    .line 111
    :pswitch_2
    iget-object v0, p0, Lcom/facebook/react/uimanager/LayoutShadowNode;->mTempYogaValue:Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;

    iget v0, v0, Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;->value:F

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setStyleMinWidth(F)V

    .line 112
    nop

    .line 118
    :goto_0
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->recycle()V

    .line 119
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOverflow(Ljava/lang/String;)V
    .locals 3
    .param p1, "overflow"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "overflow"
    .end annotation

    .line 520
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->isVirtual()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    return-void

    .line 523
    :cond_0
    if-nez p1, :cond_1

    .line 524
    sget-object v0, Lcom/facebook/yoga/YogaOverflow;->VISIBLE:Lcom/facebook/yoga/YogaOverflow;

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setOverflow(Lcom/facebook/yoga/YogaOverflow;)V

    .line 525
    return-void

    .line 528
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_2
    goto :goto_0

    :sswitch_0
    const-string v0, "visible"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v0, "scroll"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "hidden"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 542
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid value for overflow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 538
    :pswitch_0
    sget-object v0, Lcom/facebook/yoga/YogaOverflow;->SCROLL:Lcom/facebook/yoga/YogaOverflow;

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setOverflow(Lcom/facebook/yoga/YogaOverflow;)V

    .line 539
    goto :goto_2

    .line 534
    :pswitch_1
    sget-object v0, Lcom/facebook/yoga/YogaOverflow;->HIDDEN:Lcom/facebook/yoga/YogaOverflow;

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setOverflow(Lcom/facebook/yoga/YogaOverflow;)V

    .line 535
    goto :goto_2

    .line 530
    :pswitch_2
    sget-object v0, Lcom/facebook/yoga/YogaOverflow;->VISIBLE:Lcom/facebook/yoga/YogaOverflow;

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setOverflow(Lcom/facebook/yoga/YogaOverflow;)V

    .line 531
    nop

    .line 546
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x48916256 -> :sswitch_2
        -0x361a1933 -> :sswitch_1
        0x1bd1f072 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setPaddings(ILcom/facebook/react/bridge/Dynamic;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "padding"    # Lcom/facebook/react/bridge/Dynamic;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactPropGroup;
        names = {
            "padding",
            "paddingVertical",
            "paddingHorizontal",
            "paddingStart",
            "paddingEnd",
            "paddingTop",
            "paddingBottom",
            "paddingLeft",
            "paddingRight"
        }
    .end annotation

    .line 627
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->isVirtual()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 628
    return-void

    .line 631
    :cond_0
    sget-object v0, Lcom/facebook/react/uimanager/ViewProps;->PADDING_MARGIN_SPACING_TYPES:[I

    aget v0, v0, p1

    .line 632
    invoke-direct {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->maybeTransformLeftRightToStartEnd(I)I

    move-result v0

    .line 634
    .local v0, "spacingType":I
    iget-object v1, p0, Lcom/facebook/react/uimanager/LayoutShadowNode;->mTempYogaValue:Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;

    invoke-virtual {v1, p2}, Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;->setFromDynamic(Lcom/facebook/react/bridge/Dynamic;)V

    .line 635
    sget-object v1, Lcom/facebook/react/uimanager/LayoutShadowNode$1;->$SwitchMap$com$facebook$yoga$YogaUnit:[I

    iget-object v2, p0, Lcom/facebook/react/uimanager/LayoutShadowNode;->mTempYogaValue:Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;

    iget-object v2, v2, Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;->unit:Lcom/facebook/yoga/YogaUnit;

    invoke-virtual {v2}, Lcom/facebook/yoga/YogaUnit;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 641
    :pswitch_1
    iget-object v1, p0, Lcom/facebook/react/uimanager/LayoutShadowNode;->mTempYogaValue:Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;

    iget v1, v1, Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;->value:F

    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setPaddingPercent(IF)V

    goto :goto_0

    .line 638
    :pswitch_2
    iget-object v1, p0, Lcom/facebook/react/uimanager/LayoutShadowNode;->mTempYogaValue:Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;

    iget v1, v1, Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;->value:F

    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setPadding(IF)V

    .line 639
    nop

    .line 645
    :goto_0
    invoke-interface {p2}, Lcom/facebook/react/bridge/Dynamic;->recycle()V

    .line 646
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setPosition(Ljava/lang/String;)V
    .locals 3
    .param p1, "position"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "position"
    .end annotation

    .line 720
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->isVirtual()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 721
    return-void

    .line 724
    :cond_0
    if-nez p1, :cond_1

    .line 725
    sget-object v0, Lcom/facebook/yoga/YogaPositionType;->RELATIVE:Lcom/facebook/yoga/YogaPositionType;

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setPositionType(Lcom/facebook/yoga/YogaPositionType;)V

    .line 726
    return-void

    .line 729
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_2
    goto :goto_0

    :sswitch_0
    const-string v0, "absolute"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_1
    const-string v0, "relative"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 739
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid value for position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 735
    :pswitch_0
    sget-object v0, Lcom/facebook/yoga/YogaPositionType;->ABSOLUTE:Lcom/facebook/yoga/YogaPositionType;

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setPositionType(Lcom/facebook/yoga/YogaPositionType;)V

    .line 736
    goto :goto_2

    .line 731
    :pswitch_1
    sget-object v0, Lcom/facebook/yoga/YogaPositionType;->RELATIVE:Lcom/facebook/yoga/YogaPositionType;

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setPositionType(Lcom/facebook/yoga/YogaPositionType;)V

    .line 732
    nop

    .line 743
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x210c0534 -> :sswitch_1
        0x67010d77 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setPositionValues(ILcom/facebook/react/bridge/Dynamic;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "position"    # Lcom/facebook/react/bridge/Dynamic;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactPropGroup;
        names = {
            "start",
            "end",
            "left",
            "right",
            "top",
            "bottom"
        }
    .end annotation

    .line 679
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->isVirtual()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 680
    return-void

    .line 683
    :cond_0
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 687
    .local v0, "POSITION_SPACING_TYPES":[I
    aget v1, v0, p1

    invoke-direct {p0, v1}, Lcom/facebook/react/uimanager/LayoutShadowNode;->maybeTransformLeftRightToStartEnd(I)I

    move-result v1

    .line 689
    .local v1, "spacingType":I
    iget-object v2, p0, Lcom/facebook/react/uimanager/LayoutShadowNode;->mTempYogaValue:Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;

    invoke-virtual {v2, p2}, Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;->setFromDynamic(Lcom/facebook/react/bridge/Dynamic;)V

    .line 690
    sget-object v2, Lcom/facebook/react/uimanager/LayoutShadowNode$1;->$SwitchMap$com$facebook$yoga$YogaUnit:[I

    iget-object v3, p0, Lcom/facebook/react/uimanager/LayoutShadowNode;->mTempYogaValue:Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;

    iget-object v3, v3, Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;->unit:Lcom/facebook/yoga/YogaUnit;

    invoke-virtual {v3}, Lcom/facebook/yoga/YogaUnit;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 696
    :pswitch_1
    iget-object v2, p0, Lcom/facebook/react/uimanager/LayoutShadowNode;->mTempYogaValue:Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;

    iget v2, v2, Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;->value:F

    invoke-virtual {p0, v1, v2}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setPositionPercent(IF)V

    goto :goto_0

    .line 693
    :pswitch_2
    iget-object v2, p0, Lcom/facebook/react/uimanager/LayoutShadowNode;->mTempYogaValue:Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;

    iget v2, v2, Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;->value:F

    invoke-virtual {p0, v1, v2}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setPosition(IF)V

    .line 694
    nop

    .line 700
    :goto_0
    invoke-interface {p2}, Lcom/facebook/react/bridge/Dynamic;->recycle()V

    .line 701
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 4
        0x4
        0x5
        0x0
        0x2
        0x1
        0x3
    .end array-data
.end method

.method public setShouldNotifyOnLayout(Z)V
    .locals 0
    .param p1, "shouldNotifyOnLayout"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "onLayout"
    .end annotation

    .line 748
    invoke-super {p0, p1}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;->setShouldNotifyOnLayout(Z)V

    .line 749
    return-void
.end method

.method public setWidth(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 2
    .param p1, "width"    # Lcom/facebook/react/bridge/Dynamic;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "width"
    .end annotation

    .line 80
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->isVirtual()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/LayoutShadowNode;->mTempYogaValue:Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;->setFromDynamic(Lcom/facebook/react/bridge/Dynamic;)V

    .line 85
    sget-object v0, Lcom/facebook/react/uimanager/LayoutShadowNode$1;->$SwitchMap$com$facebook$yoga$YogaUnit:[I

    iget-object v1, p0, Lcom/facebook/react/uimanager/LayoutShadowNode;->mTempYogaValue:Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;

    iget-object v1, v1, Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;->unit:Lcom/facebook/yoga/YogaUnit;

    invoke-virtual {v1}, Lcom/facebook/yoga/YogaUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 94
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/LayoutShadowNode;->mTempYogaValue:Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;

    iget v0, v0, Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;->value:F

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setStyleWidthPercent(F)V

    goto :goto_0

    .line 91
    :pswitch_1
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setStyleWidthAuto()V

    .line 92
    goto :goto_0

    .line 88
    :pswitch_2
    iget-object v0, p0, Lcom/facebook/react/uimanager/LayoutShadowNode;->mTempYogaValue:Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;

    iget v0, v0, Lcom/facebook/react/uimanager/LayoutShadowNode$MutableYogaValue;->value:F

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setStyleWidth(F)V

    .line 89
    nop

    .line 98
    :goto_0
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->recycle()V

    .line 99
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
