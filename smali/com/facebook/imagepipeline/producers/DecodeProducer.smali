.class public Lcom/facebook/imagepipeline/producers/DecodeProducer;
.super Ljava/lang/Object;
.source "DecodeProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/Producer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/DecodeProducer$NetworkImagesProgressiveDecoder;,
        Lcom/facebook/imagepipeline/producers/DecodeProducer$LocalImagesProgressiveDecoder;,
        Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/producers/Producer<",
        "Lcom/facebook/common/references/CloseableReference<",
        "Lcom/facebook/imagepipeline/image/CloseableImage;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final ENCODED_IMAGE_SIZE:Ljava/lang/String; = "encodedImageSize"

.field public static final EXTRA_BITMAP_SIZE:Ljava/lang/String; = "bitmapSize"

.field public static final EXTRA_HAS_GOOD_QUALITY:Ljava/lang/String; = "hasGoodQuality"

.field public static final EXTRA_IMAGE_FORMAT_NAME:Ljava/lang/String; = "imageFormat"

.field public static final EXTRA_IS_FINAL:Ljava/lang/String; = "isFinal"

.field public static final PRODUCER_NAME:Ljava/lang/String; = "DecodeProducer"

.field public static final REQUESTED_IMAGE_SIZE:Ljava/lang/String; = "requestedImageSize"

.field public static final SAMPLE_SIZE:Ljava/lang/String; = "sampleSize"


# instance fields
.field private final mByteArrayPool:Lcom/facebook/common/memory/ByteArrayPool;

.field private final mDecodeCancellationEnabled:Z

.field private final mDownsampleEnabled:Z

.field private final mDownsampleEnabledForNetwork:Z

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mImageDecoder:Lcom/facebook/imagepipeline/decoder/ImageDecoder;

.field private final mInputProducer:Lcom/facebook/imagepipeline/producers/Producer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;"
        }
    .end annotation
.end field

.field private final mProgressiveJpegConfig:Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;


# direct methods
.method public constructor <init>(Lcom/facebook/common/memory/ByteArrayPool;Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/decoder/ImageDecoder;Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;ZZZLcom/facebook/imagepipeline/producers/Producer;)V
    .locals 1
    .param p1, "byteArrayPool"    # Lcom/facebook/common/memory/ByteArrayPool;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "imageDecoder"    # Lcom/facebook/imagepipeline/decoder/ImageDecoder;
    .param p4, "progressiveJpegConfig"    # Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;
    .param p5, "downsampleEnabled"    # Z
    .param p6, "downsampleEnabledForNetwork"    # Z
    .param p7, "decodeCancellationEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/memory/ByteArrayPool;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/facebook/imagepipeline/decoder/ImageDecoder;",
            "Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;",
            "ZZZ",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;)V"
        }
    .end annotation

    .line 75
    .local p8, "inputProducer":Lcom/facebook/imagepipeline/producers/Producer;, "Lcom/facebook/imagepipeline/producers/Producer<Lcom/facebook/imagepipeline/image/EncodedImage;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/memory/ByteArrayPool;

    iput-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer;->mByteArrayPool:Lcom/facebook/common/memory/ByteArrayPool;

    .line 77
    invoke-static {p2}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer;->mExecutor:Ljava/util/concurrent/Executor;

    .line 78
    invoke-static {p3}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/decoder/ImageDecoder;

    iput-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer;->mImageDecoder:Lcom/facebook/imagepipeline/decoder/ImageDecoder;

    .line 79
    invoke-static {p4}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;

    iput-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer;->mProgressiveJpegConfig:Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;

    .line 80
    iput-boolean p5, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer;->mDownsampleEnabled:Z

    .line 81
    iput-boolean p6, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer;->mDownsampleEnabledForNetwork:Z

    .line 82
    invoke-static {p8}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/producers/Producer;

    iput-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer;->mInputProducer:Lcom/facebook/imagepipeline/producers/Producer;

    .line 83
    iput-boolean p7, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer;->mDecodeCancellationEnabled:Z

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/imagepipeline/producers/DecodeProducer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/facebook/imagepipeline/producers/DecodeProducer;

    .line 45
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer;->mDownsampleEnabled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/facebook/imagepipeline/producers/DecodeProducer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/facebook/imagepipeline/producers/DecodeProducer;

    .line 45
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer;->mDownsampleEnabledForNetwork:Z

    return v0
.end method

.method static synthetic access$300(Lcom/facebook/imagepipeline/producers/DecodeProducer;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/imagepipeline/producers/DecodeProducer;

    .line 45
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$700(Lcom/facebook/imagepipeline/producers/DecodeProducer;)Lcom/facebook/imagepipeline/decoder/ImageDecoder;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/imagepipeline/producers/DecodeProducer;

    .line 45
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer;->mImageDecoder:Lcom/facebook/imagepipeline/decoder/ImageDecoder;

    return-object v0
.end method


# virtual methods
.method public produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    .locals 9
    .param p2, "producerContext"    # Lcom/facebook/imagepipeline/producers/ProducerContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            ")V"
        }
    .end annotation

    .line 90
    .local p1, "consumer":Lcom/facebook/imagepipeline/producers/Consumer;, "Lcom/facebook/imagepipeline/producers/Consumer<Lcom/facebook/common/references/CloseableReference<Lcom/facebook/imagepipeline/image/CloseableImage;>;>;"
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getImageRequest()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    .line 92
    .local v0, "imageRequest":Lcom/facebook/imagepipeline/request/ImageRequest;
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->getSourceUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/common/util/UriUtil;->isNetworkUri(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 93
    new-instance v1, Lcom/facebook/imagepipeline/producers/DecodeProducer$LocalImagesProgressiveDecoder;

    iget-boolean v2, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer;->mDecodeCancellationEnabled:Z

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/facebook/imagepipeline/producers/DecodeProducer$LocalImagesProgressiveDecoder;-><init>(Lcom/facebook/imagepipeline/producers/DecodeProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Z)V

    .local v1, "progressiveDecoder":Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;
    goto :goto_0

    .line 98
    .end local v1    # "progressiveDecoder":Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;
    :cond_0
    new-instance v6, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer;->mByteArrayPool:Lcom/facebook/common/memory/ByteArrayPool;

    invoke-direct {v6, v1}, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;-><init>(Lcom/facebook/common/memory/ByteArrayPool;)V

    .line 99
    .local v6, "jpegParser":Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;
    new-instance v1, Lcom/facebook/imagepipeline/producers/DecodeProducer$NetworkImagesProgressiveDecoder;

    iget-object v7, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer;->mProgressiveJpegConfig:Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;

    iget-boolean v8, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer;->mDecodeCancellationEnabled:Z

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v2 .. v8}, Lcom/facebook/imagepipeline/producers/DecodeProducer$NetworkImagesProgressiveDecoder;-><init>(Lcom/facebook/imagepipeline/producers/DecodeProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;Z)V

    .line 106
    .end local v6    # "jpegParser":Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;
    .restart local v1    # "progressiveDecoder":Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;
    :goto_0
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer;->mInputProducer:Lcom/facebook/imagepipeline/producers/Producer;

    invoke-interface {v2, v1, p2}, Lcom/facebook/imagepipeline/producers/Producer;->produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    .line 107
    return-void
.end method
