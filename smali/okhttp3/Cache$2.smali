.class Lokhttp3/Cache$2;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/Cache;->urls()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field canRemove:Z

.field final delegate:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lokhttp3/internal/cache/DiskLruCache$Snapshot;",
            ">;"
        }
    .end annotation
.end field

.field nextUrl:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final synthetic this$0:Lokhttp3/Cache;


# direct methods
.method constructor <init>(Lokhttp3/Cache;)V
    .locals 1
    .param p1, "this$0"    # Lokhttp3/Cache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    iput-object p1, p0, Lokhttp3/Cache$2;->this$0:Lokhttp3/Cache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    iget-object v0, p1, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->snapshots()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$2;->delegate:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 5

    .line 338
    iget-object v0, p0, Lokhttp3/Cache$2;->nextUrl:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 340
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lokhttp3/Cache$2;->canRemove:Z

    .line 341
    :goto_0
    iget-object v2, p0, Lokhttp3/Cache$2;->delegate:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 342
    iget-object v2, p0, Lokhttp3/Cache$2;->delegate:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    .line 344
    .local v2, "snapshot":Lokhttp3/internal/cache/DiskLruCache$Snapshot;
    :try_start_0
    invoke-virtual {v2, v0}, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->getSource(I)Lokio/Source;

    move-result-object v3

    invoke-static {v3}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v3

    .line 345
    .local v3, "metadata":Lokio/BufferedSource;
    invoke-interface {v3}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lokhttp3/Cache$2;->nextUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    nop

    .line 351
    invoke-virtual {v2}, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->close()V

    .line 346
    return v1

    .line 351
    .end local v3    # "metadata":Lokio/BufferedSource;
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->close()V

    throw v0

    .line 347
    :catch_0
    move-exception v3

    .line 351
    invoke-virtual {v2}, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->close()V

    .line 352
    nop

    .line 353
    .end local v2    # "snapshot":Lokhttp3/internal/cache/DiskLruCache$Snapshot;
    goto :goto_0

    .line 355
    :cond_1
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 331
    invoke-virtual {p0}, Lokhttp3/Cache$2;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 2

    .line 359
    invoke-virtual {p0}, Lokhttp3/Cache$2;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lokhttp3/Cache$2;->nextUrl:Ljava/lang/String;

    .line 361
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x0

    iput-object v1, p0, Lokhttp3/Cache$2;->nextUrl:Ljava/lang/String;

    .line 362
    const/4 v1, 0x1

    iput-boolean v1, p0, Lokhttp3/Cache$2;->canRemove:Z

    .line 363
    return-object v0

    .line 359
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 367
    iget-boolean v0, p0, Lokhttp3/Cache$2;->canRemove:Z

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lokhttp3/Cache$2;->delegate:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 369
    return-void

    .line 367
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() before next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
