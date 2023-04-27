.class public Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;
.super Lcom/facebook/imagepipeline/image/CloseableBitmap;
.source "CloseableStaticBitmap.java"


# instance fields
.field private volatile mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapReference:Lcom/facebook/common/references/CloseableReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mExifOrientation:I

.field private final mQualityInfo:Lcom/facebook/imagepipeline/image/QualityInfo;

.field private final mRotationAngle:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/facebook/common/references/ResourceReleaser;Lcom/facebook/imagepipeline/image/QualityInfo;I)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "qualityInfo"    # Lcom/facebook/imagepipeline/image/QualityInfo;
    .param p4, "rotationAngle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/facebook/common/references/ResourceReleaser<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/facebook/imagepipeline/image/QualityInfo;",
            "I)V"
        }
    .end annotation

    .line 48
    .local p2, "resourceReleaser":Lcom/facebook/common/references/ResourceReleaser;, "Lcom/facebook/common/references/ResourceReleaser<Landroid/graphics/Bitmap;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;-><init>(Landroid/graphics/Bitmap;Lcom/facebook/common/references/ResourceReleaser;Lcom/facebook/imagepipeline/image/QualityInfo;II)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/facebook/common/references/ResourceReleaser;Lcom/facebook/imagepipeline/image/QualityInfo;II)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "qualityInfo"    # Lcom/facebook/imagepipeline/image/QualityInfo;
    .param p4, "rotationAngle"    # I
    .param p5, "exifOrientation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/facebook/common/references/ResourceReleaser<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/facebook/imagepipeline/image/QualityInfo;",
            "II)V"
        }
    .end annotation

    .line 62
    .local p2, "resourceReleaser":Lcom/facebook/common/references/ResourceReleaser;, "Lcom/facebook/common/references/ResourceReleaser<Landroid/graphics/Bitmap;>;"
    invoke-direct {p0}, Lcom/facebook/imagepipeline/image/CloseableBitmap;-><init>()V

    .line 63
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 64
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 66
    invoke-static {p2}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/common/references/ResourceReleaser;

    .line 64
    invoke-static {v0, v1}, Lcom/facebook/common/references/CloseableReference;->of(Ljava/lang/Object;Lcom/facebook/common/references/ResourceReleaser;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->mBitmapReference:Lcom/facebook/common/references/CloseableReference;

    .line 67
    iput-object p3, p0, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->mQualityInfo:Lcom/facebook/imagepipeline/image/QualityInfo;

    .line 68
    iput p4, p0, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->mRotationAngle:I

    .line 69
    iput p5, p0, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->mExifOrientation:I

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/facebook/common/references/CloseableReference;Lcom/facebook/imagepipeline/image/QualityInfo;I)V
    .locals 1
    .param p2, "qualityInfo"    # Lcom/facebook/imagepipeline/image/QualityInfo;
    .param p3, "rotationAngle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/facebook/imagepipeline/image/QualityInfo;",
            "I)V"
        }
    .end annotation

    .line 82
    .local p1, "bitmapReference":Lcom/facebook/common/references/CloseableReference;, "Lcom/facebook/common/references/CloseableReference<Landroid/graphics/Bitmap;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;-><init>(Lcom/facebook/common/references/CloseableReference;Lcom/facebook/imagepipeline/image/QualityInfo;II)V

    .line 83
    return-void
.end method

.method public constructor <init>(Lcom/facebook/common/references/CloseableReference;Lcom/facebook/imagepipeline/image/QualityInfo;II)V
    .locals 1
    .param p2, "qualityInfo"    # Lcom/facebook/imagepipeline/image/QualityInfo;
    .param p3, "rotationAngle"    # I
    .param p4, "exifOrientation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/facebook/imagepipeline/image/QualityInfo;",
            "II)V"
        }
    .end annotation

    .line 95
    .local p1, "bitmapReference":Lcom/facebook/common/references/CloseableReference;, "Lcom/facebook/common/references/CloseableReference<Landroid/graphics/Bitmap;>;"
    invoke-direct {p0}, Lcom/facebook/imagepipeline/image/CloseableBitmap;-><init>()V

    .line 96
    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->cloneOrNull()Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/references/CloseableReference;

    iput-object v0, p0, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->mBitmapReference:Lcom/facebook/common/references/CloseableReference;

    .line 97
    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 98
    iput-object p2, p0, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->mQualityInfo:Lcom/facebook/imagepipeline/image/QualityInfo;

    .line 99
    iput p3, p0, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->mRotationAngle:I

    .line 100
    iput p4, p0, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->mExifOrientation:I

    .line 101
    return-void
.end method

.method private declared-synchronized detachBitmapReference()Lcom/facebook/common/references/CloseableReference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->mBitmapReference:Lcom/facebook/common/references/CloseableReference;

    .line 116
    .local v0, "reference":Lcom/facebook/common/references/CloseableReference;, "Lcom/facebook/common/references/CloseableReference<Landroid/graphics/Bitmap;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->mBitmapReference:Lcom/facebook/common/references/CloseableReference;

    .line 117
    iput-object v1, p0, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    monitor-exit p0

    return-object v0

    .line 114
    .end local v0    # "reference":Lcom/facebook/common/references/CloseableReference;, "Lcom/facebook/common/references/CloseableReference<Landroid/graphics/Bitmap;>;"
    .end local p0    # "this":Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static getBitmapHeight(Landroid/graphics/Bitmap;)I
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 207
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    :goto_0
    return v0
.end method

.method private static getBitmapWidth(Landroid/graphics/Bitmap;)I
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 203
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    :goto_0
    return v0
.end method


# virtual methods
.method public declared-synchronized cloneUnderlyingBitmapReference()Lcom/facebook/common/references/CloseableReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->mBitmapReference:Lcom/facebook/common/references/CloseableReference;

    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->cloneOrNull(Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 147
    .end local p0    # "this":Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .locals 1

    .line 108
    invoke-direct {p0}, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->detachBitmapReference()Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    .line 109
    .local v0, "reference":Lcom/facebook/common/references/CloseableReference;, "Lcom/facebook/common/references/CloseableReference<Landroid/graphics/Bitmap;>;"
    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->close()V

    .line 112
    :cond_0
    return-void
.end method

.method public declared-synchronized convertToBitmapReference()Lcom/facebook/common/references/CloseableReference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->mBitmapReference:Lcom/facebook/common/references/CloseableReference;

    const-string v1, "Cannot convert a closed static bitmap"

    invoke-static {v0, v1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-direct {p0}, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->detachBitmapReference()Lcom/facebook/common/references/CloseableReference;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 132
    .end local p0    # "this":Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getExifOrientation()I
    .locals 1

    .line 219
    iget v0, p0, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->mExifOrientation:I

    return v0
.end method

.method public getHeight()I
    .locals 2

    .line 194
    iget v0, p0, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->mRotationAngle:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_1

    iget v0, p0, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->mExifOrientation:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->getBitmapHeight(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0

    .line 197
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->getBitmapWidth(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public getQualityInfo()Lcom/facebook/imagepipeline/image/QualityInfo;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->mQualityInfo:Lcom/facebook/imagepipeline/image/QualityInfo;

    return-object v0
.end method

.method public getRotationAngle()I
    .locals 1

    .line 214
    iget v0, p0, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->mRotationAngle:I

    return v0
.end method

.method public getSizeInBytes()I
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/facebook/imageutils/BitmapUtil;->getSizeInBytes(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public getUnderlyingBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getWidth()I
    .locals 2

    .line 181
    iget v0, p0, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->mRotationAngle:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_1

    iget v0, p0, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->mExifOrientation:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->getBitmapWidth(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0

    .line 184
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->getBitmapHeight(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized isClosed()Z
    .locals 1

    monitor-enter p0

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->mBitmapReference:Lcom/facebook/common/references/CloseableReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 155
    .end local p0    # "this":Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
