.class public Lcom/facebook/imagepipeline/nativecode/Bitmaps;
.super Ljava/lang/Object;
.source "Bitmaps.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 26
    invoke-static {}, Lcom/facebook/imagepipeline/nativecode/ImagePipelineNativeLoader;->load()V

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p0, "dest"    # Landroid/graphics/Bitmap;
    .param p1, "src"    # Landroid/graphics/Bitmap;

    .line 65
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Z)V

    .line 66
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Z)V

    .line 67
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Z)V

    .line 68
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    invoke-static {v2}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Z)V

    .line 69
    nop

    .line 71
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    .line 73
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    .line 74
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 69
    invoke-static {p0, v0, p1, v1, v2}, Lcom/facebook/imagepipeline/nativecode/Bitmaps;->nativeCopyBitmap(Landroid/graphics/Bitmap;ILandroid/graphics/Bitmap;II)V

    .line 75
    return-void
.end method

.method public static getByteBuffer(Landroid/graphics/Bitmap;JJ)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "start"    # J
    .param p3, "size"    # J

    .line 43
    invoke-static {p0}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-static {p0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/nativecode/Bitmaps;->nativeGetByteBuffer(Landroid/graphics/Bitmap;JJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private static native nativeCopyBitmap(Landroid/graphics/Bitmap;ILandroid/graphics/Bitmap;II)V
.end method

.method private static native nativeGetByteBuffer(Landroid/graphics/Bitmap;JJ)Ljava/nio/ByteBuffer;
.end method

.method private static native nativePinBitmap(Landroid/graphics/Bitmap;)V
.end method

.method private static native nativeReleaseByteBuffer(Landroid/graphics/Bitmap;)V
.end method

.method public static pinBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 38
    invoke-static {p0}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-static {p0}, Lcom/facebook/imagepipeline/nativecode/Bitmaps;->nativePinBitmap(Landroid/graphics/Bitmap;)V

    .line 40
    return-void
.end method

.method public static reconfigureBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap$Config;)V
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "bitmapConfig"    # Landroid/graphics/Bitmap$Config;

    .line 90
    nop

    .line 91
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v0

    mul-int v1, p1, p2

    .line 92
    invoke-static {p3}, Lcom/facebook/imageutils/BitmapUtil;->getPixelSizeForBitmapConfig(Landroid/graphics/Bitmap$Config;)I

    move-result v2

    mul-int v1, v1, v2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 90
    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Z)V

    .line 93
    invoke-virtual {p0, p1, p2, p3}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    .line 94
    return-void
.end method

.method public static releaseByteBuffer(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 48
    invoke-static {p0}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-static {p0}, Lcom/facebook/imagepipeline/nativecode/Bitmaps;->nativeReleaseByteBuffer(Landroid/graphics/Bitmap;)V

    .line 50
    return-void
.end method
