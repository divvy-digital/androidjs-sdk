.class public Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;
.super Ljava/lang/Object;
.source "NativeMemoryChunk.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final TAG:Ljava/lang/String; = "NativeMemoryChunk"


# instance fields
.field private mClosed:Z

.field private final mNativePtr:J

.field private final mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 31
    invoke-static {}, Lcom/facebook/imagepipeline/nativecode/ImagePipelineNativeLoader;->load()V

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->mSize:I

    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->mNativePtr:J

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->mClosed:Z

    .line 62
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "size"    # I

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    if-lez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Z)V

    .line 52
    iput p1, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->mSize:I

    .line 53
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->nativeAllocate(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->mNativePtr:J

    .line 54
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->mClosed:Z

    .line 55
    return-void
.end method

.method private adjustByteCount(II)I
    .locals 2
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .line 249
    iget v0, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->mSize:I

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 250
    .local v0, "available":I
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method private checkBounds(IIII)V
    .locals 4
    .param p1, "myOffset"    # I
    .param p2, "otherLength"    # I
    .param p3, "otherOffset"    # I
    .param p4, "count"    # I

    .line 261
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Z)V

    .line 262
    if-ltz p1, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Z)V

    .line 263
    if-ltz p3, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    invoke-static {v2}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Z)V

    .line 264
    add-int v2, p1, p4

    iget v3, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->mSize:I

    if-gt v2, v3, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    invoke-static {v2}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Z)V

    .line 265
    add-int v2, p3, p4

    if-gt v2, p2, :cond_4

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Z)V

    .line 266
    return-void
.end method

.method private doCopy(ILcom/facebook/imagepipeline/memory/NativeMemoryChunk;II)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "other"    # Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;
    .param p3, "otherOffset"    # I
    .param p4, "count"    # I

    .line 214
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->isClosed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkState(Z)V

    .line 215
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->isClosed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkState(Z)V

    .line 216
    iget v0, p2, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->mSize:I

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->checkBounds(IIII)V

    .line 217
    iget-wide v0, p2, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->mNativePtr:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->mNativePtr:J

    int-to-long v4, p1

    add-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3, p4}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->nativeMemcpy(JJI)V

    .line 218
    return-void
.end method

.method private static native nativeAllocate(I)J
.end method

.method private static native nativeCopyFromByteArray(J[BII)V
.end method

.method private static native nativeCopyToByteArray(J[BII)V
.end method

.method private static native nativeFree(J)V
.end method

.method private static native nativeMemcpy(JJI)V
.end method

.method private static native nativeReadByte(J)B
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    .line 68
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->mClosed:Z

    if-nez v0, :cond_0

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->mClosed:Z

    .line 70
    iget-wide v0, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->nativeFree(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .end local p0    # "this":Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;
    :cond_0
    monitor-exit p0

    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public copy(ILcom/facebook/imagepipeline/memory/NativeMemoryChunk;II)V
    .locals 5
    .param p1, "offset"    # I
    .param p2, "other"    # Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;
    .param p3, "otherOffset"    # I
    .param p4, "count"    # I

    .line 161
    invoke-static {p2}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-wide v0, p2, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->mNativePtr:J

    iget-wide v2, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->mNativePtr:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 172
    const-string v0, "NativeMemoryChunk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Copying from NativeMemoryChunk "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 175
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to NativeMemoryChunk "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 177
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " which share the same address "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->mNativePtr:J

    .line 179
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 172
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Z)V

    .line 184
    :cond_0
    iget-wide v0, p2, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->mNativePtr:J

    iget-wide v2, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->mNativePtr:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 185
    monitor-enter p2

    .line 186
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 187
    :try_start_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->doCopy(ILcom/facebook/imagepipeline/memory/NativeMemoryChunk;II)V

    .line 188
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 190
    return-void

    .line 188
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p1    # "offset":I
    .end local p2    # "other":Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;
    .end local p3    # "otherOffset":I
    .end local p4    # "count":I
    :try_start_4
    throw v0

    .line 189
    .restart local p1    # "offset":I
    .restart local p2    # "other":Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;
    .restart local p3    # "otherOffset":I
    .restart local p4    # "count":I
    :catchall_1
    move-exception v0

    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 194
    :cond_1
    monitor-enter p0

    .line 195
    :try_start_5
    monitor-enter p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 196
    :try_start_6
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->doCopy(ILcom/facebook/imagepipeline/memory/NativeMemoryChunk;II)V

    .line 197
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 198
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 199
    return-void

    .line 197
    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .end local p1    # "offset":I
    .end local p2    # "other":Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;
    .end local p3    # "otherOffset":I
    .end local p4    # "count":I
    :try_start_9
    throw v0

    .line 198
    .restart local p1    # "offset":I
    .restart local p2    # "other":Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;
    .restart local p3    # "otherOffset":I
    .restart local p4    # "count":I
    :catchall_3
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 226
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    return-void

    .line 230
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finalize: Chunk "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 233
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " still active. Underlying address = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->mNativePtr:J

    .line 235
    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 230
    const-string v1, "NativeMemoryChunk"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 241
    nop

    .line 242
    return-void

    .line 240
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 241
    throw v0
.end method

.method public getNativePtr()J
    .locals 2

    .line 202
    iget-wide v0, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->mNativePtr:J

    return-wide v0
.end method

.method public getSize()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->mSize:I

    return v0
.end method

.method public declared-synchronized isClosed()Z
    .locals 1

    monitor-enter p0

    .line 79
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->mClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 79
    .end local p0    # "this":Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read(I)B
    .locals 4
    .param p1, "offset"    # I

    monitor-enter p0

    .line 142
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->isClosed()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkState(Z)V

    .line 143
    if-ltz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Z)V

    .line 144
    iget v0, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->mSize:I

    if-ge p1, v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-static {v1}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Z)V

    .line 145
    iget-wide v0, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->mNativePtr:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->nativeReadByte(J)B

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 141
    .end local p0    # "this":Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;
    .end local p1    # "offset":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized read(I[BII)I
    .locals 5
    .param p1, "nativeMemoryOffset"    # I
    .param p2, "byteArray"    # [B
    .param p3, "byteArrayOffset"    # I
    .param p4, "count"    # I

    monitor-enter p0

    .line 128
    :try_start_0
    invoke-static {p2}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkState(Z)V

    .line 130
    invoke-direct {p0, p1, p4}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->adjustByteCount(II)I

    move-result v0

    .line 131
    .local v0, "actualCount":I
    array-length v1, p2

    invoke-direct {p0, p1, v1, p3, v0}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->checkBounds(IIII)V

    .line 132
    iget-wide v1, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->mNativePtr:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-static {v1, v2, p2, p3, v0}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->nativeCopyToByteArray(J[BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    monitor-exit p0

    return v0

    .line 127
    .end local v0    # "actualCount":I
    .end local p0    # "this":Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;
    .end local p1    # "nativeMemoryOffset":I
    .end local p2    # "byteArray":[B
    .end local p3    # "byteArrayOffset":I
    .end local p4    # "count":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized write(I[BII)I
    .locals 5
    .param p1, "nativeMemoryOffset"    # I
    .param p2, "byteArray"    # [B
    .param p3, "byteArrayOffset"    # I
    .param p4, "count"    # I

    monitor-enter p0

    .line 103
    :try_start_0
    invoke-static {p2}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkState(Z)V

    .line 105
    invoke-direct {p0, p1, p4}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->adjustByteCount(II)I

    move-result v0

    .line 106
    .local v0, "actualCount":I
    array-length v1, p2

    invoke-direct {p0, p1, v1, p3, v0}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->checkBounds(IIII)V

    .line 107
    iget-wide v1, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->mNativePtr:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-static {v1, v2, p2, p3, v0}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->nativeCopyFromByteArray(J[BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    monitor-exit p0

    return v0

    .line 102
    .end local v0    # "actualCount":I
    .end local p0    # "this":Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;
    .end local p1    # "nativeMemoryOffset":I
    .end local p2    # "byteArray":[B
    .end local p3    # "byteArrayOffset":I
    .end local p4    # "count":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
