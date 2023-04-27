.class public Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheTrimStrategy;
.super Ljava/lang/Object;
.source "BitmapMemoryCacheTrimStrategy.java"

# interfaces
.implements Lcom/facebook/imagepipeline/cache/CountingMemoryCache$CacheTrimStrategy;


# static fields
.field private static final TAG:Ljava/lang/String; = "BitmapMemoryCacheTrimStrategy"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTrimRatio(Lcom/facebook/common/memory/MemoryTrimType;)D
    .locals 3
    .param p1, "trimType"    # Lcom/facebook/common/memory/MemoryTrimType;

    .line 27
    sget-object v0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheTrimStrategy$1;->$SwitchMap$com$facebook$common$memory$MemoryTrimType:[I

    invoke-virtual {p1}, Lcom/facebook/common/memory/MemoryTrimType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 41
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "BitmapMemoryCacheTrimStrategy"

    const-string v2, "unknown trim type: %s"

    invoke-static {v1, v2, v0}, Lcom/facebook/common/logging/FLog;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    const-wide/16 v0, 0x0

    return-wide v0

    .line 39
    :pswitch_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0

    .line 29
    :pswitch_1
    nop

    .line 30
    sget-object v0, Lcom/facebook/common/memory/MemoryTrimType;->OnCloseToDalvikHeapLimit:Lcom/facebook/common/memory/MemoryTrimType;

    invoke-virtual {v0}, Lcom/facebook/common/memory/MemoryTrimType;->getSuggestedTrimRatio()D

    move-result-wide v0

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
