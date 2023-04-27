.class public Lcom/facebook/imagepipeline/producers/PostprocessorProducer;
.super Ljava/lang/Object;
.source "PostprocessorProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/Producer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/PostprocessorProducer$RepeatedPostprocessorConsumer;,
        Lcom/facebook/imagepipeline/producers/PostprocessorProducer$SingleUsePostprocessorConsumer;,
        Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;
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
.field public static final NAME:Ljava/lang/String; = "PostprocessorProducer"

.field static final POSTPROCESSOR:Ljava/lang/String; = "Postprocessor"


# instance fields
.field private final mBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mInputProducer:Lcom/facebook/imagepipeline/producers/Producer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/Producer;Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p2, "platformBitmapFactory"    # Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;",
            "Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 44
    .local p1, "inputProducer":Lcom/facebook/imagepipeline/producers/Producer;, "Lcom/facebook/imagepipeline/producers/Producer<Lcom/facebook/common/references/CloseableReference<Lcom/facebook/imagepipeline/image/CloseableImage;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/producers/Producer;

    iput-object v0, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer;->mInputProducer:Lcom/facebook/imagepipeline/producers/Producer;

    .line 46
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer;->mBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

    .line 47
    invoke-static {p3}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer;->mExecutor:Ljava/util/concurrent/Executor;

    .line 48
    return-void
.end method

.method static synthetic access$800(Lcom/facebook/imagepipeline/producers/PostprocessorProducer;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/imagepipeline/producers/PostprocessorProducer;

    .line 32
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$900(Lcom/facebook/imagepipeline/producers/PostprocessorProducer;)Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/imagepipeline/producers/PostprocessorProducer;

    .line 32
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer;->mBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

    return-object v0
.end method


# virtual methods
.method public produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    .locals 10
    .param p2, "context"    # Lcom/facebook/imagepipeline/producers/ProducerContext;
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

    .line 54
    .local p1, "consumer":Lcom/facebook/imagepipeline/producers/Consumer;, "Lcom/facebook/imagepipeline/producers/Consumer<Lcom/facebook/common/references/CloseableReference<Lcom/facebook/imagepipeline/image/CloseableImage;>;>;"
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getListener()Lcom/facebook/imagepipeline/producers/ProducerListener;

    move-result-object v7

    .line 55
    .local v7, "listener":Lcom/facebook/imagepipeline/producers/ProducerListener;
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getImageRequest()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->getPostprocessor()Lcom/facebook/imagepipeline/request/Postprocessor;

    move-result-object v8

    .line 56
    .local v8, "postprocessor":Lcom/facebook/imagepipeline/request/Postprocessor;
    new-instance v9, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;

    .line 57
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getId()Ljava/lang/String;

    move-result-object v4

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, v7

    move-object v5, v8

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;-><init>(Lcom/facebook/imagepipeline/producers/PostprocessorProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerListener;Ljava/lang/String;Lcom/facebook/imagepipeline/request/Postprocessor;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    move-object v6, v9

    .line 59
    .local v6, "basePostprocessorConsumer":Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;
    instance-of v0, v8, Lcom/facebook/imagepipeline/request/RepeatedPostprocessor;

    if-eqz v0, :cond_0

    .line 60
    new-instance v9, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$RepeatedPostprocessorConsumer;

    move-object v3, v8

    check-cast v3, Lcom/facebook/imagepipeline/request/RepeatedPostprocessor;

    const/4 v5, 0x0

    move-object v0, v9

    move-object v1, p0

    move-object v2, v6

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$RepeatedPostprocessorConsumer;-><init>(Lcom/facebook/imagepipeline/producers/PostprocessorProducer;Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;Lcom/facebook/imagepipeline/request/RepeatedPostprocessor;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/imagepipeline/producers/PostprocessorProducer$1;)V

    .local v0, "postprocessorConsumer":Lcom/facebook/imagepipeline/producers/Consumer;, "Lcom/facebook/imagepipeline/producers/Consumer<Lcom/facebook/common/references/CloseableReference<Lcom/facebook/imagepipeline/image/CloseableImage;>;>;"
    goto :goto_0

    .line 65
    .end local v0    # "postprocessorConsumer":Lcom/facebook/imagepipeline/producers/Consumer;, "Lcom/facebook/imagepipeline/producers/Consumer<Lcom/facebook/common/references/CloseableReference<Lcom/facebook/imagepipeline/image/CloseableImage;>;>;"
    :cond_0
    new-instance v0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$SingleUsePostprocessorConsumer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v6, v1}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$SingleUsePostprocessorConsumer;-><init>(Lcom/facebook/imagepipeline/producers/PostprocessorProducer;Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;Lcom/facebook/imagepipeline/producers/PostprocessorProducer$1;)V

    .line 67
    .restart local v0    # "postprocessorConsumer":Lcom/facebook/imagepipeline/producers/Consumer;, "Lcom/facebook/imagepipeline/producers/Consumer<Lcom/facebook/common/references/CloseableReference<Lcom/facebook/imagepipeline/image/CloseableImage;>;>;"
    :goto_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer;->mInputProducer:Lcom/facebook/imagepipeline/producers/Producer;

    invoke-interface {v1, v0, p2}, Lcom/facebook/imagepipeline/producers/Producer;->produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    .line 68
    return-void
.end method
