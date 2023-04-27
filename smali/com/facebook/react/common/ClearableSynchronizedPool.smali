.class public Lcom/facebook/react/common/ClearableSynchronizedPool;
.super Ljava/lang/Object;
.source "ClearableSynchronizedPool.java"

# interfaces
.implements Landroidx/core/util/Pools$Pool;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/core/util/Pools$Pool<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mPool:[Ljava/lang/Object;

.field private mSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "maxSize"    # I

    .line 19
    .local p0, "this":Lcom/facebook/react/common/ClearableSynchronizedPool;, "Lcom/facebook/react/common/ClearableSynchronizedPool<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/react/common/ClearableSynchronizedPool;->mSize:I

    .line 20
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/facebook/react/common/ClearableSynchronizedPool;->mPool:[Ljava/lang/Object;

    .line 21
    return-void
.end method


# virtual methods
.method public declared-synchronized acquire()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .local p0, "this":Lcom/facebook/react/common/ClearableSynchronizedPool;, "Lcom/facebook/react/common/ClearableSynchronizedPool<TT;>;"
    monitor-enter p0

    .line 25
    :try_start_0
    iget v0, p0, Lcom/facebook/react/common/ClearableSynchronizedPool;->mSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 26
    monitor-exit p0

    return-object v1

    .line 28
    :cond_0
    add-int/lit8 v0, v0, -0x1

    :try_start_1
    iput v0, p0, Lcom/facebook/react/common/ClearableSynchronizedPool;->mSize:I

    .line 29
    nop

    .line 30
    .local v0, "lastIndex":I
    iget-object v2, p0, Lcom/facebook/react/common/ClearableSynchronizedPool;->mPool:[Ljava/lang/Object;

    aget-object v3, v2, v0

    .line 31
    .local v3, "toReturn":Ljava/lang/Object;, "TT;"
    aput-object v1, v2, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    monitor-exit p0

    return-object v3

    .line 24
    .end local v0    # "lastIndex":I
    .end local v3    # "toReturn":Ljava/lang/Object;, "TT;"
    .end local p0    # "this":Lcom/facebook/react/common/ClearableSynchronizedPool;, "Lcom/facebook/react/common/ClearableSynchronizedPool<TT;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .locals 3

    .local p0, "this":Lcom/facebook/react/common/ClearableSynchronizedPool;, "Lcom/facebook/react/common/ClearableSynchronizedPool<TT;>;"
    monitor-enter p0

    .line 46
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget v1, p0, Lcom/facebook/react/common/ClearableSynchronizedPool;->mSize:I

    if-ge v0, v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/facebook/react/common/ClearableSynchronizedPool;->mPool:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    .end local v0    # "i":I
    .end local p0    # "this":Lcom/facebook/react/common/ClearableSynchronizedPool;, "Lcom/facebook/react/common/ClearableSynchronizedPool<TT;>;"
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/react/common/ClearableSynchronizedPool;->mSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    return-void

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .local p0, "this":Lcom/facebook/react/common/ClearableSynchronizedPool;, "Lcom/facebook/react/common/ClearableSynchronizedPool<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    .line 37
    :try_start_0
    iget v0, p0, Lcom/facebook/react/common/ClearableSynchronizedPool;->mSize:I

    iget-object v1, p0, Lcom/facebook/react/common/ClearableSynchronizedPool;->mPool:[Ljava/lang/Object;

    array-length v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v2, :cond_0

    .line 38
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 40
    :cond_0
    :try_start_1
    aput-object p1, v1, v0

    .line 41
    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/react/common/ClearableSynchronizedPool;->mSize:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    monitor-exit p0

    return v1

    .line 36
    .end local p0    # "this":Lcom/facebook/react/common/ClearableSynchronizedPool;, "Lcom/facebook/react/common/ClearableSynchronizedPool<TT;>;"
    .end local p1    # "obj":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
