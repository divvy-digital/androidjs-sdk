.class public Lcom/facebook/imagepipeline/cache/DefaultBitmapMemoryCacheParamsSupplier;
.super Ljava/lang/Object;
.source "DefaultBitmapMemoryCacheParamsSupplier.java"

# interfaces
.implements Lcom/facebook/common/internal/Supplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/common/internal/Supplier<",
        "Lcom/facebook/imagepipeline/cache/MemoryCacheParams;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_CACHE_ENTRIES:I = 0x100

.field private static final MAX_CACHE_ENTRY_SIZE:I = 0x7fffffff

.field private static final MAX_EVICTION_QUEUE_ENTRIES:I = 0x7fffffff

.field private static final MAX_EVICTION_QUEUE_SIZE:I = 0x7fffffff


# instance fields
.field private final mActivityManager:Landroid/app/ActivityManager;


# direct methods
.method public constructor <init>(Landroid/app/ActivityManager;)V
    .locals 0
    .param p1, "activityManager"    # Landroid/app/ActivityManager;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/DefaultBitmapMemoryCacheParamsSupplier;->mActivityManager:Landroid/app/ActivityManager;

    .line 28
    return-void
.end method

.method private getMaxCacheSize()I
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/DefaultBitmapMemoryCacheParamsSupplier;->mActivityManager:Landroid/app/ActivityManager;

    .line 42
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    const/high16 v1, 0x100000

    mul-int v0, v0, v1

    const v1, 0x7fffffff

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 43
    .local v0, "maxMemory":I
    const/high16 v1, 0x2000000

    if-ge v0, v1, :cond_0

    .line 44
    const/high16 v1, 0x400000

    return v1

    .line 45
    :cond_0
    const/high16 v1, 0x4000000

    if-ge v0, v1, :cond_1

    .line 46
    const/high16 v1, 0x600000

    return v1

    .line 50
    :cond_1
    nop

    .line 53
    div-int/lit8 v1, v0, 0x4

    return v1
.end method


# virtual methods
.method public get()Lcom/facebook/imagepipeline/cache/MemoryCacheParams;
    .locals 7

    .line 32
    new-instance v6, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    .line 33
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/DefaultBitmapMemoryCacheParamsSupplier;->getMaxCacheSize()I

    move-result v1

    const/16 v2, 0x100

    const v3, 0x7fffffff

    const v4, 0x7fffffff

    const v5, 0x7fffffff

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;-><init>(IIIII)V

    .line 32
    return-object v6
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/DefaultBitmapMemoryCacheParamsSupplier;->get()Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    move-result-object v0

    return-object v0
.end method
