.class public Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer;
.super Ljava/lang/Object;
.source "LocalVideoThumbnailProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/Producer;


# annotations
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
.field static final CREATED_THUMBNAIL:Ljava/lang/String; = "createdThumbnail"

.field public static final PRODUCER_NAME:Ljava/lang/String; = "VideoThumbnailProducer"


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "contentResolver"    # Landroid/content/ContentResolver;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer;->mExecutor:Ljava/util/concurrent/Executor;

    .line 48
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer;->mContentResolver:Landroid/content/ContentResolver;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer;Lcom/facebook/imagepipeline/request/ImageRequest;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer;
    .param p1, "x1"    # Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 37
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer;->getLocalFilePath(Lcom/facebook/imagepipeline/request/ImageRequest;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/imagepipeline/request/ImageRequest;)I
    .locals 1
    .param p0, "x0"    # Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 37
    invoke-static {p0}, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer;->calculateKind(Lcom/facebook/imagepipeline/request/ImageRequest;)I

    move-result v0

    return v0
.end method

.method private static calculateKind(Lcom/facebook/imagepipeline/request/ImageRequest;)I
    .locals 2
    .param p0, "imageRequest"    # Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 120
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->getPreferredWidth()I

    move-result v0

    const/16 v1, 0x60

    if-gt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->getPreferredHeight()I

    move-result v0

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    const/4 v0, 0x3

    return v0

    .line 121
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private getLocalFilePath(Lcom/facebook/imagepipeline/request/ImageRequest;)Ljava/lang/String;
    .locals 10
    .param p1, "imageRequest"    # Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 127
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getSourceUri()Landroid/net/Uri;

    move-result-object v0

    .line 128
    .local v0, "uri":Landroid/net/Uri;
    invoke-static {v0}, Lcom/facebook/common/util/UriUtil;->isLocalFileUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getSourceFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 130
    :cond_0
    invoke-static {v0}, Lcom/facebook/common/util/UriUtil;->isLocalContentUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 131
    const/4 v1, 0x0

    .line 132
    .local v1, "selection":Ljava/lang/String;
    const/4 v2, 0x0

    .line 133
    .local v2, "selectionArgs":[Ljava/lang/String;
    nop

    .line 134
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.providers.media.documents"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 135
    invoke-static {v0}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, "documentId":Ljava/lang/String;
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 137
    const-string v1, "_id=?"

    .line 138
    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    const-string v6, ":"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v4, v6, v4

    const/4 v6, 0x0

    aput-object v4, v5, v6

    move-object v2, v5

    .line 140
    .end local v3    # "documentId":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "_data"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    .line 141
    move-object v5, v0

    move-object v7, v1

    move-object v8, v2

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 144
    .local v4, "cursor":Landroid/database/Cursor;
    if-eqz v4, :cond_4

    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 145
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    if-eqz v4, :cond_2

    .line 149
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 145
    :cond_2
    return-object v3

    .line 148
    :catchall_0
    move-exception v3

    if-eqz v4, :cond_3

    .line 149
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 151
    :cond_3
    throw v3

    .line 148
    :cond_4
    if-eqz v4, :cond_5

    .line 149
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 153
    .end local v1    # "selection":Ljava/lang/String;
    .end local v2    # "selectionArgs":[Ljava/lang/String;
    .end local v4    # "cursor":Landroid/database/Cursor;
    :cond_5
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    .locals 13
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

    .line 56
    .local p1, "consumer":Lcom/facebook/imagepipeline/producers/Consumer;, "Lcom/facebook/imagepipeline/producers/Consumer<Lcom/facebook/common/references/CloseableReference<Lcom/facebook/imagepipeline/image/CloseableImage;>;>;"
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getListener()Lcom/facebook/imagepipeline/producers/ProducerListener;

    move-result-object v9

    .line 57
    .local v9, "listener":Lcom/facebook/imagepipeline/producers/ProducerListener;
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getId()Ljava/lang/String;

    move-result-object v10

    .line 58
    .local v10, "requestId":Ljava/lang/String;
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getImageRequest()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v11

    .line 59
    .local v11, "imageRequest":Lcom/facebook/imagepipeline/request/ImageRequest;
    new-instance v12, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer$1;

    const-string v4, "VideoThumbnailProducer"

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, v9

    move-object v5, v10

    move-object v6, v9

    move-object v7, v10

    move-object v8, v11

    invoke-direct/range {v0 .. v8}, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer$1;-><init>(Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerListener;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/ProducerListener;Ljava/lang/String;Lcom/facebook/imagepipeline/request/ImageRequest;)V

    .line 109
    .local v0, "cancellableProducerRunnable":Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;
    new-instance v1, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer$2;

    invoke-direct {v1, p0, v0}, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer$2;-><init>(Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer;Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;)V

    invoke-interface {p2, v1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->addCallbacks(Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;)V

    .line 116
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 117
    return-void
.end method
