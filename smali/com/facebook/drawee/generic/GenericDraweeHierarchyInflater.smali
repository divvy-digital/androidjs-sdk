.class public Lcom/facebook/drawee/generic/GenericDraweeHierarchyInflater;
.super Ljava/lang/Object;
.source "GenericDraweeHierarchyInflater.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gdhAttrs"    # Landroid/content/res/TypedArray;
    .param p2, "attrId"    # I
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 261
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 262
    .local v0, "resourceId":I
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private static getRoundingParams(Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;)Lcom/facebook/drawee/generic/RoundingParams;
    .locals 1
    .param p0, "builder"    # Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;

    .line 250
    invoke-virtual {p0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->getRoundingParams()Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 251
    new-instance v0, Lcom/facebook/drawee/generic/RoundingParams;

    invoke-direct {v0}, Lcom/facebook/drawee/generic/RoundingParams;-><init>()V

    invoke-virtual {p0, v0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->setRoundingParams(Lcom/facebook/drawee/generic/RoundingParams;)Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;

    .line 253
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->getRoundingParams()Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v0

    return-object v0
.end method

.method private static getScaleTypeFromXml(Landroid/content/res/TypedArray;I)Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;
    .locals 2
    .param p0, "gdhAttrs"    # Landroid/content/res/TypedArray;
    .param p1, "attrId"    # I
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 273
    const/4 v0, -0x2

    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 296
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "XML attribute not specified!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :pswitch_0
    sget-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_BOTTOM_START:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object v0

    .line 291
    :pswitch_1
    sget-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FOCUS_CROP:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object v0

    .line 289
    :pswitch_2
    sget-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->CENTER_CROP:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object v0

    .line 287
    :pswitch_3
    sget-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->CENTER_INSIDE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object v0

    .line 285
    :pswitch_4
    sget-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->CENTER:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object v0

    .line 283
    :pswitch_5
    sget-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_END:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object v0

    .line 281
    :pswitch_6
    sget-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_CENTER:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object v0

    .line 279
    :pswitch_7
    sget-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_START:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object v0

    .line 277
    :pswitch_8
    sget-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_XY:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object v0

    .line 275
    :pswitch_9
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_9
        :pswitch_8
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

.method public static inflateBuilder(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 80
    .local v0, "resources":Landroid/content/res/Resources;
    new-instance v1, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;

    invoke-direct {v1, v0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;-><init>(Landroid/content/res/Resources;)V

    .line 81
    .local v1, "builder":Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;
    invoke-static {v1, p0, p1}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyInflater;->updateBuilder(Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;

    move-result-object v2

    return-object v2
.end method

.method public static inflateHierarchy(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/facebook/drawee/generic/GenericDraweeHierarchy;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 69
    invoke-static {p0, p1}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyInflater;->inflateBuilder(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->build()Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    move-result-object v0

    return-object v0
.end method

.method public static updateBuilder(Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;
    .locals 19
    .param p0, "builder"    # Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 100
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const/4 v4, 0x0

    .line 101
    .local v4, "progressBarAutoRotateInterval":I
    const/4 v5, 0x0

    .line 102
    .local v5, "roundedCornerRadius":I
    const/4 v6, 0x1

    .line 103
    .local v6, "roundTopLeft":Z
    const/4 v7, 0x1

    .line 104
    .local v7, "roundTopRight":Z
    const/4 v8, 0x1

    .line 105
    .local v8, "roundBottomLeft":Z
    const/4 v9, 0x1

    .line 106
    .local v9, "roundBottomRight":Z
    const/4 v10, 0x1

    .line 107
    .local v10, "roundTopStart":Z
    const/4 v11, 0x1

    .line 108
    .local v11, "roundTopEnd":Z
    const/4 v12, 0x1

    .line 109
    .local v12, "roundBottomStart":Z
    const/4 v13, 0x1

    .line 111
    .local v13, "roundBottomEnd":Z
    if-eqz v3, :cond_30

    .line 112
    sget-object v14, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy:[I

    invoke-virtual {v2, v3, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v14

    .line 116
    .local v14, "gdhAttrs":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v16

    move/from16 v17, v16

    .line 117
    .local v17, "indexCount":I
    const/16 v16, 0x0

    move/from16 v0, v16

    .local v0, "i":I
    :goto_0
    move/from16 v15, v17

    .end local v17    # "indexCount":I
    .local v15, "indexCount":I
    if-ge v0, v15, :cond_1d

    .line 118
    invoke-virtual {v14, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v17

    move/from16 v18, v17

    .line 120
    .local v18, "attr":I
    sget v3, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_actualImageScaleType:I

    move/from16 v17, v15

    move/from16 v15, v18

    .end local v18    # "attr":I
    .local v15, "attr":I
    .restart local v17    # "indexCount":I
    if-ne v15, v3, :cond_0

    .line 121
    invoke-static {v14, v15}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyInflater;->getScaleTypeFromXml(Landroid/content/res/TypedArray;I)Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->setActualImageScaleType(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;

    move/from16 v18, v0

    const/4 v3, 0x0

    goto/16 :goto_1

    .line 123
    :cond_0
    sget v3, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_placeholderImage:I

    if-ne v15, v3, :cond_1

    .line 124
    invoke-static {v2, v14, v15}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyInflater;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->setPlaceholderImage(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;

    move/from16 v18, v0

    const/4 v3, 0x0

    goto/16 :goto_1

    .line 126
    :cond_1
    sget v3, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_pressedStateOverlayImage:I

    if-ne v15, v3, :cond_2

    .line 127
    invoke-static {v2, v14, v15}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyInflater;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->setPressedStateOverlay(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;

    move/from16 v18, v0

    const/4 v3, 0x0

    goto/16 :goto_1

    .line 129
    :cond_2
    sget v3, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_progressBarImage:I

    if-ne v15, v3, :cond_3

    .line 130
    invoke-static {v2, v14, v15}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyInflater;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->setProgressBarImage(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;

    move/from16 v18, v0

    const/4 v3, 0x0

    goto/16 :goto_1

    .line 133
    :cond_3
    sget v3, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_fadeDuration:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ne v15, v3, :cond_4

    .line 134
    move/from16 v18, v0

    const/4 v3, 0x0

    .end local v0    # "i":I
    .local v18, "i":I
    :try_start_1
    invoke-virtual {v14, v15, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1, v0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->setFadeDuration(I)Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;

    const/4 v3, 0x0

    goto/16 :goto_1

    .line 212
    .end local v15    # "attr":I
    .end local v17    # "indexCount":I
    .end local v18    # "i":I
    :catchall_0
    move-exception v0

    goto/16 :goto_a

    .line 136
    .restart local v0    # "i":I
    .restart local v15    # "attr":I
    .restart local v17    # "indexCount":I
    :cond_4
    move/from16 v18, v0

    .end local v0    # "i":I
    .restart local v18    # "i":I
    sget v0, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_viewAspectRatio:I

    if-ne v15, v0, :cond_5

    .line 137
    const/4 v0, 0x0

    invoke-virtual {v14, v15, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->setDesiredAspectRatio(F)Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;

    const/4 v3, 0x0

    goto/16 :goto_1

    .line 139
    :cond_5
    const/4 v0, 0x0

    sget v3, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_placeholderImageScaleType:I

    if-ne v15, v3, :cond_6

    .line 140
    invoke-static {v14, v15}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyInflater;->getScaleTypeFromXml(Landroid/content/res/TypedArray;I)Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->setPlaceholderImageScaleType(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;

    const/4 v3, 0x0

    goto/16 :goto_1

    .line 142
    :cond_6
    sget v3, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_retryImage:I

    if-ne v15, v3, :cond_7

    .line 143
    invoke-static {v2, v14, v15}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyInflater;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->setRetryImage(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;

    const/4 v3, 0x0

    goto/16 :goto_1

    .line 145
    :cond_7
    sget v3, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_retryImageScaleType:I

    if-ne v15, v3, :cond_8

    .line 146
    invoke-static {v14, v15}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyInflater;->getScaleTypeFromXml(Landroid/content/res/TypedArray;I)Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->setRetryImageScaleType(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;

    const/4 v3, 0x0

    goto/16 :goto_1

    .line 148
    :cond_8
    sget v3, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_failureImage:I

    if-ne v15, v3, :cond_9

    .line 149
    invoke-static {v2, v14, v15}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyInflater;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->setFailureImage(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;

    const/4 v3, 0x0

    goto/16 :goto_1

    .line 151
    :cond_9
    sget v3, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_failureImageScaleType:I

    if-ne v15, v3, :cond_a

    .line 152
    invoke-static {v14, v15}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyInflater;->getScaleTypeFromXml(Landroid/content/res/TypedArray;I)Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->setFailureImageScaleType(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;

    const/4 v3, 0x0

    goto/16 :goto_1

    .line 154
    :cond_a
    sget v3, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_progressBarImageScaleType:I

    if-ne v15, v3, :cond_b

    .line 155
    invoke-static {v14, v15}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyInflater;->getScaleTypeFromXml(Landroid/content/res/TypedArray;I)Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->setProgressBarImageScaleType(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;

    const/4 v3, 0x0

    goto/16 :goto_1

    .line 157
    :cond_b
    sget v3, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_progressBarAutoRotateInterval:I

    if-ne v15, v3, :cond_c

    .line 158
    nop

    .line 159
    invoke-virtual {v14, v15, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    move v4, v3

    const/4 v3, 0x0

    .end local v4    # "progressBarAutoRotateInterval":I
    .local v3, "progressBarAutoRotateInterval":I
    goto/16 :goto_1

    .line 161
    .end local v3    # "progressBarAutoRotateInterval":I
    .restart local v4    # "progressBarAutoRotateInterval":I
    :cond_c
    sget v3, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_backgroundImage:I

    if-ne v15, v3, :cond_d

    .line 162
    invoke-static {v2, v14, v15}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyInflater;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->setBackground(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;

    const/4 v3, 0x0

    goto/16 :goto_1

    .line 164
    :cond_d
    sget v3, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_overlayImage:I

    if-ne v15, v3, :cond_e

    .line 165
    invoke-static {v2, v14, v15}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyInflater;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->setOverlay(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;

    const/4 v3, 0x0

    goto/16 :goto_1

    .line 167
    :cond_e
    sget v3, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_roundAsCircle:I

    if-ne v15, v3, :cond_f

    .line 168
    invoke-static/range {p0 .. p0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyInflater;->getRoundingParams(Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v3

    const/4 v2, 0x0

    invoke-virtual {v14, v15, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/facebook/drawee/generic/RoundingParams;->setRoundAsCircle(Z)Lcom/facebook/drawee/generic/RoundingParams;

    const/4 v3, 0x0

    goto/16 :goto_1

    .line 170
    :cond_f
    sget v0, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_roundedCornerRadius:I

    if-ne v15, v0, :cond_10

    .line 171
    invoke-virtual {v14, v15, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    move v5, v0

    const/4 v3, 0x0

    .end local v5    # "roundedCornerRadius":I
    .local v0, "roundedCornerRadius":I
    goto/16 :goto_1

    .line 173
    .end local v0    # "roundedCornerRadius":I
    .restart local v5    # "roundedCornerRadius":I
    :cond_10
    sget v0, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_roundTopLeft:I

    if-ne v15, v0, :cond_11

    .line 174
    invoke-virtual {v14, v15, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move v6, v0

    const/4 v3, 0x0

    .end local v6    # "roundTopLeft":Z
    .local v0, "roundTopLeft":Z
    goto/16 :goto_1

    .line 176
    .end local v0    # "roundTopLeft":Z
    .restart local v6    # "roundTopLeft":Z
    :cond_11
    sget v0, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_roundTopRight:I

    if-ne v15, v0, :cond_12

    .line 177
    invoke-virtual {v14, v15, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move v7, v0

    const/4 v3, 0x0

    .end local v7    # "roundTopRight":Z
    .local v0, "roundTopRight":Z
    goto/16 :goto_1

    .line 179
    .end local v0    # "roundTopRight":Z
    .restart local v7    # "roundTopRight":Z
    :cond_12
    sget v0, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_roundBottomLeft:I

    if-ne v15, v0, :cond_13

    .line 180
    invoke-virtual {v14, v15, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move v8, v0

    const/4 v3, 0x0

    .end local v8    # "roundBottomLeft":Z
    .local v0, "roundBottomLeft":Z
    goto/16 :goto_1

    .line 182
    .end local v0    # "roundBottomLeft":Z
    .restart local v8    # "roundBottomLeft":Z
    :cond_13
    sget v0, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_roundBottomRight:I

    if-ne v15, v0, :cond_14

    .line 183
    invoke-virtual {v14, v15, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move v9, v0

    const/4 v3, 0x0

    .end local v9    # "roundBottomRight":Z
    .local v0, "roundBottomRight":Z
    goto/16 :goto_1

    .line 185
    .end local v0    # "roundBottomRight":Z
    .restart local v9    # "roundBottomRight":Z
    :cond_14
    sget v0, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_roundTopStart:I

    if-ne v15, v0, :cond_15

    .line 186
    invoke-virtual {v14, v15, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move v10, v0

    const/4 v3, 0x0

    .end local v10    # "roundTopStart":Z
    .local v0, "roundTopStart":Z
    goto/16 :goto_1

    .line 188
    .end local v0    # "roundTopStart":Z
    .restart local v10    # "roundTopStart":Z
    :cond_15
    sget v0, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_roundTopEnd:I

    if-ne v15, v0, :cond_16

    .line 189
    invoke-virtual {v14, v15, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move v11, v0

    const/4 v3, 0x0

    .end local v11    # "roundTopEnd":Z
    .local v0, "roundTopEnd":Z
    goto :goto_1

    .line 191
    .end local v0    # "roundTopEnd":Z
    .restart local v11    # "roundTopEnd":Z
    :cond_16
    sget v0, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_roundBottomStart:I

    if-ne v15, v0, :cond_17

    .line 192
    invoke-virtual {v14, v15, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move v12, v0

    const/4 v3, 0x0

    .end local v12    # "roundBottomStart":Z
    .local v0, "roundBottomStart":Z
    goto :goto_1

    .line 194
    .end local v0    # "roundBottomStart":Z
    .restart local v12    # "roundBottomStart":Z
    :cond_17
    sget v0, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_roundBottomEnd:I

    if-ne v15, v0, :cond_18

    .line 195
    invoke-virtual {v14, v15, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move v13, v0

    const/4 v3, 0x0

    .end local v13    # "roundBottomEnd":Z
    .local v0, "roundBottomEnd":Z
    goto :goto_1

    .line 197
    .end local v0    # "roundBottomEnd":Z
    .restart local v13    # "roundBottomEnd":Z
    :cond_18
    sget v0, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_roundWithOverlayColor:I

    if-ne v15, v0, :cond_19

    .line 198
    invoke-static/range {p0 .. p0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyInflater;->getRoundingParams(Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v14, v15, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/facebook/drawee/generic/RoundingParams;->setOverlayColor(I)Lcom/facebook/drawee/generic/RoundingParams;

    const/4 v3, 0x0

    goto :goto_1

    .line 200
    :cond_19
    sget v0, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_roundingBorderWidth:I

    if-ne v15, v0, :cond_1a

    .line 201
    invoke-static/range {p0 .. p0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyInflater;->getRoundingParams(Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v14, v15, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    int-to-float v2, v3

    invoke-virtual {v0, v2}, Lcom/facebook/drawee/generic/RoundingParams;->setBorderWidth(F)Lcom/facebook/drawee/generic/RoundingParams;

    const/4 v3, 0x0

    goto :goto_1

    .line 203
    :cond_1a
    sget v0, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_roundingBorderColor:I

    if-ne v15, v0, :cond_1b

    .line 204
    invoke-static/range {p0 .. p0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyInflater;->getRoundingParams(Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v14, v15, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/facebook/drawee/generic/RoundingParams;->setBorderColor(I)Lcom/facebook/drawee/generic/RoundingParams;

    const/4 v3, 0x0

    goto :goto_1

    .line 206
    :cond_1b
    sget v0, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy_roundingBorderPadding:I

    if-ne v15, v0, :cond_1c

    .line 207
    invoke-static/range {p0 .. p0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyInflater;->getRoundingParams(Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v3, 0x0

    :try_start_3
    invoke-virtual {v14, v15, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/facebook/drawee/generic/RoundingParams;->setPadding(F)Lcom/facebook/drawee/generic/RoundingParams;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 206
    :cond_1c
    const/4 v3, 0x0

    .line 117
    .end local v15    # "attr":I
    :goto_1
    add-int/lit8 v0, v18, 0x1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .end local v18    # "i":I
    .local v0, "i":I
    goto/16 :goto_0

    .end local v17    # "indexCount":I
    .local v15, "indexCount":I
    :cond_1d
    move/from16 v18, v0

    move/from16 v17, v15

    const/4 v3, 0x0

    .line 212
    .end local v0    # "i":I
    .end local v15    # "indexCount":I
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 214
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_22

    .line 216
    if-eqz v6, :cond_1e

    if-eqz v11, :cond_1e

    const/4 v0, 0x1

    goto :goto_2

    :cond_1e
    const/4 v0, 0x0

    :goto_2
    move v6, v0

    .line 217
    if-eqz v7, :cond_1f

    if-eqz v10, :cond_1f

    const/4 v0, 0x1

    goto :goto_3

    :cond_1f
    const/4 v0, 0x0

    :goto_3
    move v7, v0

    .line 218
    if-eqz v9, :cond_20

    if-eqz v12, :cond_20

    const/4 v0, 0x1

    goto :goto_4

    :cond_20
    const/4 v0, 0x0

    :goto_4
    move v9, v0

    .line 219
    if-eqz v8, :cond_21

    if-eqz v13, :cond_21

    const/4 v15, 0x1

    goto :goto_5

    :cond_21
    const/4 v15, 0x0

    :goto_5
    move v8, v15

    goto/16 :goto_14

    .line 221
    :cond_22
    if-eqz v6, :cond_23

    if-eqz v10, :cond_23

    const/4 v0, 0x1

    goto :goto_6

    :cond_23
    const/4 v0, 0x0

    :goto_6
    move v6, v0

    .line 222
    if-eqz v7, :cond_24

    if-eqz v11, :cond_24

    const/4 v0, 0x1

    goto :goto_7

    :cond_24
    const/4 v0, 0x0

    :goto_7
    move v7, v0

    .line 223
    if-eqz v9, :cond_25

    if-eqz v13, :cond_25

    const/4 v0, 0x1

    goto :goto_8

    :cond_25
    const/4 v0, 0x0

    :goto_8
    move v9, v0

    .line 224
    if-eqz v8, :cond_26

    if-eqz v12, :cond_26

    const/4 v15, 0x1

    goto :goto_9

    :cond_26
    const/4 v15, 0x0

    :goto_9
    move v8, v15

    .line 227
    goto :goto_14

    .line 212
    :catchall_1
    move-exception v0

    const/4 v3, 0x0

    :goto_a
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 214
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 215
    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    const/4 v15, 0x1

    if-ne v2, v15, :cond_2b

    .line 216
    if-eqz v6, :cond_27

    if-eqz v11, :cond_27

    const/4 v2, 0x1

    goto :goto_b

    :cond_27
    const/4 v2, 0x0

    .line 217
    .end local v6    # "roundTopLeft":Z
    .local v2, "roundTopLeft":Z
    :goto_b
    if-eqz v7, :cond_28

    if-eqz v10, :cond_28

    const/4 v6, 0x1

    goto :goto_c

    :cond_28
    const/4 v6, 0x0

    .line 218
    .end local v7    # "roundTopRight":Z
    .local v6, "roundTopRight":Z
    :goto_c
    if-eqz v9, :cond_29

    if-eqz v12, :cond_29

    const/4 v7, 0x1

    goto :goto_d

    :cond_29
    const/4 v7, 0x0

    .line 219
    .end local v9    # "roundBottomRight":Z
    .local v7, "roundBottomRight":Z
    :goto_d
    if-eqz v8, :cond_2a

    if-eqz v13, :cond_2a

    goto :goto_e

    :cond_2a
    const/4 v15, 0x0

    :goto_e
    move v3, v15

    .end local v8    # "roundBottomLeft":Z
    .local v3, "roundBottomLeft":Z
    goto :goto_13

    .line 221
    .end local v2    # "roundTopLeft":Z
    .end local v3    # "roundBottomLeft":Z
    .local v6, "roundTopLeft":Z
    .local v7, "roundTopRight":Z
    .restart local v8    # "roundBottomLeft":Z
    .restart local v9    # "roundBottomRight":Z
    :cond_2b
    if-eqz v6, :cond_2c

    if-eqz v10, :cond_2c

    const/4 v2, 0x1

    goto :goto_f

    :cond_2c
    const/4 v2, 0x0

    .line 222
    .end local v6    # "roundTopLeft":Z
    .restart local v2    # "roundTopLeft":Z
    :goto_f
    if-eqz v7, :cond_2d

    if-eqz v11, :cond_2d

    const/4 v6, 0x1

    goto :goto_10

    :cond_2d
    const/4 v6, 0x0

    .line 223
    .end local v7    # "roundTopRight":Z
    .local v6, "roundTopRight":Z
    :goto_10
    if-eqz v9, :cond_2e

    if-eqz v13, :cond_2e

    const/4 v7, 0x1

    goto :goto_11

    :cond_2e
    const/4 v7, 0x0

    .line 224
    .end local v9    # "roundBottomRight":Z
    .local v7, "roundBottomRight":Z
    :goto_11
    if-eqz v8, :cond_2f

    if-eqz v12, :cond_2f

    goto :goto_12

    :cond_2f
    const/4 v15, 0x0

    :goto_12
    move v3, v15

    .line 227
    .end local v8    # "roundBottomLeft":Z
    .restart local v3    # "roundBottomLeft":Z
    :goto_13
    throw v0

    .line 231
    .end local v2    # "roundTopLeft":Z
    .end local v3    # "roundBottomLeft":Z
    .end local v14    # "gdhAttrs":Landroid/content/res/TypedArray;
    .local v6, "roundTopLeft":Z
    .local v7, "roundTopRight":Z
    .restart local v8    # "roundBottomLeft":Z
    .restart local v9    # "roundBottomRight":Z
    :cond_30
    :goto_14
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->getProgressBarImage()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_31

    if-lez v4, :cond_31

    .line 232
    new-instance v0, Lcom/facebook/drawee/drawable/AutoRotateDrawable;

    .line 233
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->getProgressBarImage()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v0, v2, v4}, Lcom/facebook/drawee/drawable/AutoRotateDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 232
    invoke-virtual {v1, v0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->setProgressBarImage(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;

    .line 237
    :cond_31
    if-lez v5, :cond_36

    .line 238
    invoke-static/range {p0 .. p0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyInflater;->getRoundingParams(Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v0

    if-eqz v6, :cond_32

    int-to-float v2, v5

    goto :goto_15

    :cond_32
    const/4 v2, 0x0

    :goto_15
    if-eqz v7, :cond_33

    int-to-float v3, v5

    goto :goto_16

    :cond_33
    const/4 v3, 0x0

    :goto_16
    if-eqz v9, :cond_34

    int-to-float v14, v5

    goto :goto_17

    :cond_34
    const/4 v14, 0x0

    :goto_17
    if-eqz v8, :cond_35

    int-to-float v15, v5

    goto :goto_18

    :cond_35
    const/4 v15, 0x0

    :goto_18
    invoke-virtual {v0, v2, v3, v14, v15}, Lcom/facebook/drawee/generic/RoundingParams;->setCornersRadii(FFFF)Lcom/facebook/drawee/generic/RoundingParams;

    .line 245
    :cond_36
    return-object v1
.end method
