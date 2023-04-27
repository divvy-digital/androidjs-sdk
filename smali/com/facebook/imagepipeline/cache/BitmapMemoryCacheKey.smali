.class public Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;
.super Ljava/lang/Object;
.source "BitmapMemoryCacheKey.java"

# interfaces
.implements Lcom/facebook/cache/common/CacheKey;


# instance fields
.field private final mCacheTime:J

.field private final mCallerContext:Ljava/lang/Object;

.field private final mHash:I

.field private final mImageDecodeOptions:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

.field private final mPostprocessorCacheKey:Lcom/facebook/cache/common/CacheKey;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mPostprocessorName:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mResizeOptions:Lcom/facebook/imagepipeline/common/ResizeOptions;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mRotationOptions:Lcom/facebook/imagepipeline/common/RotationOptions;

.field private final mSourceString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/facebook/imagepipeline/common/ResizeOptions;Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;Lcom/facebook/cache/common/CacheKey;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .param p1, "sourceString"    # Ljava/lang/String;
    .param p2, "resizeOptions"    # Lcom/facebook/imagepipeline/common/ResizeOptions;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "rotationOptions"    # Lcom/facebook/imagepipeline/common/RotationOptions;
    .param p4, "imageDecodeOptions"    # Lcom/facebook/imagepipeline/common/ImageDecodeOptions;
    .param p5, "postprocessorCacheKey"    # Lcom/facebook/cache/common/CacheKey;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "postprocessorName"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "callerContext"    # Ljava/lang/Object;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->mSourceString:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->mResizeOptions:Lcom/facebook/imagepipeline/common/ResizeOptions;

    .line 49
    iput-object p3, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->mRotationOptions:Lcom/facebook/imagepipeline/common/RotationOptions;

    .line 50
    iput-object p4, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->mImageDecodeOptions:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    .line 51
    iput-object p5, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->mPostprocessorCacheKey:Lcom/facebook/cache/common/CacheKey;

    .line 52
    iput-object p6, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->mPostprocessorName:Ljava/lang/String;

    .line 53
    nop

    .line 54
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz p2, :cond_0

    .line 55
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/common/ResizeOptions;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 56
    invoke-virtual {p3}, Lcom/facebook/imagepipeline/common/RotationOptions;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 53
    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v1 .. v6}, Lcom/facebook/common/util/HashCodeUtil;->hashCode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->mHash:I

    .line 60
    iput-object p7, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->mCallerContext:Ljava/lang/Object;

    .line 61
    invoke-static {}, Lcom/facebook/common/time/RealtimeSinceBootClock;->get()Lcom/facebook/common/time/RealtimeSinceBootClock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/common/time/RealtimeSinceBootClock;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->mCacheTime:J

    .line 62
    return-void
.end method


# virtual methods
.method public containsUri(Landroid/net/Uri;)Z
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 86
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->getUriString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 66
    instance-of v0, p1, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 67
    return v1

    .line 69
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;

    .line 70
    .local v0, "otherKey":Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;
    iget v2, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->mHash:I

    iget v3, v0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->mHash:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->mSourceString:Ljava/lang/String;

    iget-object v3, v0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->mSourceString:Ljava/lang/String;

    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->mResizeOptions:Lcom/facebook/imagepipeline/common/ResizeOptions;

    iget-object v3, v0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->mResizeOptions:Lcom/facebook/imagepipeline/common/ResizeOptions;

    .line 72
    invoke-static {v2, v3}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->mRotationOptions:Lcom/facebook/imagepipeline/common/RotationOptions;

    iget-object v3, v0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->mRotationOptions:Lcom/facebook/imagepipeline/common/RotationOptions;

    .line 73
    invoke-static {v2, v3}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->mImageDecodeOptions:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    iget-object v3, v0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->mImageDecodeOptions:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    .line 74
    invoke-static {v2, v3}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->mPostprocessorCacheKey:Lcom/facebook/cache/common/CacheKey;

    iget-object v3, v0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->mPostprocessorCacheKey:Lcom/facebook/cache/common/CacheKey;

    .line 75
    invoke-static {v2, v3}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->mPostprocessorName:Ljava/lang/String;

    iget-object v3, v0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->mPostprocessorName:Ljava/lang/String;

    .line 76
    invoke-static {v2, v3}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 70
    :goto_0
    return v1
.end method

.method public getCallerContext()Ljava/lang/Object;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->mCallerContext:Ljava/lang/Object;

    return-object v0
.end method

.method public getInBitmapCacheSince()J
    .locals 2

    .line 118
    iget-wide v0, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->mCacheTime:J

    return-wide v0
.end method

.method public getPostprocessorName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->mPostprocessorName:Ljava/lang/String;

    return-object v0
.end method

.method public getUriString()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->mSourceString:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->mHash:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 101
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/util/Locale;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->mSourceString:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->mResizeOptions:Lcom/facebook/imagepipeline/common/ResizeOptions;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->mRotationOptions:Lcom/facebook/imagepipeline/common/RotationOptions;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->mImageDecodeOptions:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->mPostprocessorCacheKey:Lcom/facebook/cache/common/CacheKey;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->mPostprocessorName:Ljava/lang/String;

    aput-object v3, v1, v2

    iget v2, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->mHash:I

    .line 110
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 101
    const-string v2, "%s_%s_%s_%s_%s_%s_%d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
