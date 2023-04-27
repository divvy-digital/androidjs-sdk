.class public Lcom/facebook/drawee/drawable/FadeDrawable;
.super Lcom/facebook/drawee/drawable/ArrayDrawable;
.source "FadeDrawable.java"


# static fields
.field public static final TRANSITION_NONE:I = 0x2

.field public static final TRANSITION_RUNNING:I = 0x1

.field public static final TRANSITION_STARTING:I


# instance fields
.field mAlpha:I

.field mAlphas:[I

.field mDurationMs:I

.field mIsLayerOn:[Z

.field private final mLayers:[Landroid/graphics/drawable/Drawable;

.field mPreventInvalidateCount:I

.field mStartAlphas:[I

.field mStartTimeMs:J

.field mTransitionState:I


# direct methods
.method public constructor <init>([Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "layers"    # [Landroid/graphics/drawable/Drawable;

    .line 82
    invoke-direct {p0, p1}, Lcom/facebook/drawee/drawable/ArrayDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 83
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v0, "At least one layer required!"

    invoke-static {v2, v0}, Lcom/facebook/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 84
    iput-object p1, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->mLayers:[Landroid/graphics/drawable/Drawable;

    .line 85
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->mStartAlphas:[I

    .line 86
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->mAlphas:[I

    .line 87
    const/16 v0, 0xff

    iput v0, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->mAlpha:I

    .line 88
    array-length v0, p1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->mIsLayerOn:[Z

    .line 89
    iput v1, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->mPreventInvalidateCount:I

    .line 90
    invoke-direct {p0}, Lcom/facebook/drawee/drawable/FadeDrawable;->resetInternal()V

    .line 91
    return-void
.end method

.method private drawDrawableWithAlpha(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;I)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "alpha"    # I

    .line 298
    if-eqz p2, :cond_0

    if-lez p3, :cond_0

    .line 299
    iget v0, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->mPreventInvalidateCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->mPreventInvalidateCount:I

    .line 300
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 301
    iget v0, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->mPreventInvalidateCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->mPreventInvalidateCount:I

    .line 302
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 304
    :cond_0
    return-void
.end method

.method private resetInternal()V
    .locals 3

    .line 138
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->mTransitionState:I

    .line 139
    iget-object v0, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->mStartAlphas:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 140
    iget-object v0, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->mStartAlphas:[I

    const/16 v2, 0xff

    aput v2, v0, v1

    .line 141
    iget-object v0, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->mAlphas:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 142
    iget-object v0, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->mAlphas:[I

    aput v2, v0, v1

    .line 143
    iget-object v0, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->mIsLayerOn:[Z

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 144
    iget-object v0, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->mIsLayerOn:[Z

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 145
    return-void
.end method

.method private updateAlphas(F)Z
    .locals 7
    .param p1, "ratio"    # F

    .line 234
    const/4 v0, 0x1

    .line 235
    .local v0, "done":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->mLayers:[Landroid/graphics/drawable/Drawable;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 236
    iget-object v2, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->mIsLayerOn:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, -0x1

    .line 238
    .local v3, "dir":I
    :goto_1
    iget-object v4, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->mAlphas:[I

    iget-object v5, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->mStartAlphas:[I

    aget v5, v5, v1

    int-to-float v5, v5

    mul-int/lit16 v6, v3, 0xff

    int-to-float v6, v6

    mul-float v6, v6, p1

    add-float/2addr v5, v6

    float-to-int v5, v5

    aput v5, v4, v1

    .line 239
    if-gez v5, :cond_1

    .line 240
    const/4 v5, 0x0

    aput v5, v4, v1

    .line 242
    :cond_1
    aget v5, v4, v1

    const/16 v6, 0xff

    if-le v5, v6, :cond_2

    .line 243
    aput v6, v4, v1

    .line 246
    :cond_2
    if-eqz v2, :cond_3

    aget v5, v4, v1

    if-ge v5, v6, :cond_3

    .line 247
    const/4 v0, 0x0

    .line 249
    :cond_3
    if-nez v2, :cond_4

    aget v2, v4, v1

    if-lez v2, :cond_4

    .line 250
    const/4 v0, 0x0

    .line 235
    .end local v3    # "dir":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 253
    .end local v1    # "i":I
    :cond_5
    return v0
.end method


# virtual methods
.method public beginBatchMode()V
    .locals 1

    .line 104
    iget v0, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->mPreventInvalidateCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->mPreventInvalidateCount:I

    .line 105
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 258
    const/4 v0, 0x1

    .line 261
    .local v0, "done":Z
    iget v1, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->mTransitionState:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_3

    .line 284
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_3

    .line 274
    :pswitch_1
    iget v1, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->mDurationMs:I

    if-lez v1, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-static {v3}, Lcom/facebook/common/internal/Preconditions;->checkState(Z)V

    .line 276
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/FadeDrawable;->getCurrentTimeMs()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->mStartTimeMs:J

    sub-long/2addr v5, v7

    long-to-float v1, v5

    iget v3, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->mDurationMs:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    .line 278
    .local v1, "ratio":F
    invoke-direct {p0, v1}, Lcom/facebook/drawee/drawable/FadeDrawable;->updateAlphas(F)Z

    move-result v0

    .line 279
    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    iput v2, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->mTransitionState:I

    .line 280
    goto :goto_3

    .line 264
    .end local v1    # "ratio":F
    :pswitch_2
    iget-object v1, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->mAlphas:[I

    iget-object v5, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->mStartAlphas:[I

    iget-object v6, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->mLayers:[Landroid/graphics/drawable/Drawable;

    array-length v6, v6

    invoke-static {v1, v3, v5, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 265
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/FadeDrawable;->getCurrentTimeMs()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->mStartTimeMs:J

    .line 267
    iget v1, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->mDurationMs:I

    if-nez v1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 269
    .restart local v1    # "ratio":F
    :goto_1
    invoke-direct {p0, v1}, Lcom/facebook/drawee/drawable/FadeDrawable;->updateAlphas(F)Z

    move-result v0

    .line 270
    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x1

    :goto_2
    iput v2, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->mTransitionState:I

    .line 271
    nop

    .line 288
    .end local v1    # "ratio":F
    :goto_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    iget-object v2, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->mLayers:[Landroid/graphics/drawable/Drawable;

    array-length v3, v2

    if-ge v1, v3, :cond_4

    .line 289
    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->mAlphas:[I

    aget v3, v3, v1

    iget v4, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->mAlpha:I

    mul-int v3, v3, v4

    div-int/lit16 v3, v3, 0xff

    invoke-direct {p0, p1, v2, v3}, Lcom/facebook/drawee/drawable/FadeDrawable;->drawDrawableWithAlpha(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;I)V

    .line 288
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 292
    .end local v1    # "i":I
    :cond_4
    if-nez v0, :cond_5

    .line 293
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/FadeDrawable;->invalidateSelf()V

    .line 295
    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public endBatchMode()V
    .locals 1

    .line 111
    iget v0, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->mPreventInvalidateCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->mPreventInvalidateCount:I

    .line 112
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/FadeDrawable;->invalidateSelf()V

    .line 113
    return-void
.end method

.method public fadeInAllLayers()V
    .locals 2

    .line 179
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->mTransitionState:I

    .line 180
    iget-object v0, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->mIsLayerOn:[Z

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 181
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/FadeDrawable;->invalidateSelf()V

    .line 182
    return-void
.end method

.method public fadeInLayer(I)V
    .locals 2
    .param p1, "index"    # I

    .line 160
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->mTransitionState:I

    .line 161
    iget-object v0, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->mIsLayerOn:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 162
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/FadeDrawable;->invalidateSelf()V

    .line 163
    return-void
.end method

.method public fadeOutAllLayers()V
    .locals 2

    .line 188
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->mTransitionState:I

    .line 189
    iget-object v1, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->mIsLayerOn:[Z

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([ZZ)V

    .line 190
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/FadeDrawable;->invalidateSelf()V

    .line 191
    return-void
.end method

.method public fadeOutLayer(I)V
    .locals 2
    .param p1, "index"    # I

    .line 170
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->mTransitionState:I

    .line 171
    iget-object v1, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->mIsLayerOn:[Z

    aput-boolean v0, v1, p1

    .line 172
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/FadeDrawable;->invalidateSelf()V

    .line 173
    return-void
.end method

.method public fadeToLayer(I)V
    .locals 2
    .param p1, "index"    # I

    .line 198
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->mTransitionState:I

    .line 199
    iget-object v1, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->mIsLayerOn:[Z

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([ZZ)V

    .line 200
    iget-object v0, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->mIsLayerOn:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 201
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/FadeDrawable;->invalidateSelf()V

    .line 202
    return-void
.end method

.method public fadeUpToLayer(I)V
    .locals 4
    .param p1, "index"    # I

    .line 211
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->mTransitionState:I

    .line 212
    iget-object v1, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->mIsLayerOn:[Z

    add-int/lit8 v2, p1, 0x1

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 213
    iget-object v1, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->mIsLayerOn:[Z

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->mLayers:[Landroid/graphics/drawable/Drawable;

    array-length v3, v3

    invoke-static {v1, v2, v3, v0}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 214
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/FadeDrawable;->invalidateSelf()V

    .line 215
    return-void
.end method

.method public finishTransitionImmediately()V
    .locals 3

    .line 221
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->mTransitionState:I

    .line 222
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->mLayers:[Landroid/graphics/drawable/Drawable;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 223
    iget-object v1, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->mAlphas:[I

    iget-object v2, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->mIsLayerOn:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    const/16 v2, 0xff

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    aput v2, v1, v0

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 225
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/FadeDrawable;->invalidateSelf()V

    .line 226
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 315
    iget v0, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->mAlpha:I

    return v0
.end method

.method protected getCurrentTimeMs()J
    .locals 2

    .line 324
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTransitionDuration()I
    .locals 1

    .line 131
    iget v0, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->mDurationMs:I

    return v0
.end method

.method public getTransitionState()I
    .locals 1

    .line 334
    iget v0, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->mTransitionState:I

    return v0
.end method

.method public invalidateSelf()V
    .locals 1

    .line 95
    iget v0, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->mPreventInvalidateCount:I

    if-nez v0, :cond_0

    .line 96
    invoke-super {p0}, Lcom/facebook/drawee/drawable/ArrayDrawable;->invalidateSelf()V

    .line 98
    :cond_0
    return-void
.end method

.method public isLayerOn(I)Z
    .locals 1
    .param p1, "index"    # I

    .line 338
    iget-object v0, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->mIsLayerOn:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public reset()V
    .locals 0

    .line 151
    invoke-direct {p0}, Lcom/facebook/drawee/drawable/FadeDrawable;->resetInternal()V

    .line 152
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/FadeDrawable;->invalidateSelf()V

    .line 153
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .line 308
    iget v0, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->mAlpha:I

    if-eq v0, p1, :cond_0

    .line 309
    iput p1, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->mAlpha:I

    .line 310
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/FadeDrawable;->invalidateSelf()V

    .line 312
    :cond_0
    return-void
.end method

.method public setTransitionDuration(I)V
    .locals 2
    .param p1, "durationMs"    # I

    .line 119
    iput p1, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->mDurationMs:I

    .line 121
    iget v0, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->mTransitionState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->mTransitionState:I

    .line 124
    :cond_0
    return-void
.end method
