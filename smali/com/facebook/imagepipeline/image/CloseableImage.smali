.class public abstract Lcom/facebook/imagepipeline/image/CloseableImage;
.super Ljava/lang/Object;
.source "CloseableImage.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Lcom/facebook/imagepipeline/image/ImageInfo;


# static fields
.field private static final TAG:Ljava/lang/String; = "CloseableImage"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract close()V
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 58
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/CloseableImage;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    return-void

    .line 61
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 65
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 61
    const-string v1, "CloseableImage"

    const-string v2, "finalize: %s %x still open."

    invoke-static {v1, v2, v0}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/CloseableImage;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 70
    nop

    .line 71
    return-void

    .line 69
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 70
    throw v0
.end method

.method public getQualityInfo()Lcom/facebook/imagepipeline/image/QualityInfo;
    .locals 1

    .line 41
    sget-object v0, Lcom/facebook/imagepipeline/image/ImmutableQualityInfo;->FULL_QUALITY:Lcom/facebook/imagepipeline/image/QualityInfo;

    return-object v0
.end method

.method public abstract getSizeInBytes()I
.end method

.method public abstract isClosed()Z
.end method

.method public isStateful()Z
    .locals 1

    .line 50
    const/4 v0, 0x0

    return v0
.end method
