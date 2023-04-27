.class public Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper;
.super Ljava/lang/Object;
.source "ReactScrollViewCommandHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollToEndCommandData;,
        Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollToCommandData;,
        Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollCommandHandler;
    }
.end annotation


# static fields
.field public static final COMMAND_FLASH_SCROLL_INDICATORS:I = 0x3

.field public static final COMMAND_SCROLL_TO:I = 0x1

.field public static final COMMAND_SCROLL_TO_END:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCommandsMap()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 55
    const-string v0, "scrollTo"

    .line 57
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "scrollToEnd"

    .line 59
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "flashScrollIndicators"

    .line 61
    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 55
    invoke-static/range {v0 .. v5}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static receiveCommand(Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollCommandHandler;Ljava/lang/Object;ILcom/facebook/react/bridge/ReadableArray;)V
    .locals 5
    .param p2, "commandType"    # I
    .param p3, "args"    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollCommandHandler<",
            "TT;>;TT;I",
            "Lcom/facebook/react/bridge/ReadableArray;",
            ")V"
        }
    .end annotation

    .line 69
    .local p0, "viewManager":Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollCommandHandler;, "Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollCommandHandler<TT;>;"
    .local p1, "scrollView":Ljava/lang/Object;, "TT;"
    invoke-static {p0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-static {p1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-static {p3}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p2, :pswitch_data_0

    .line 90
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-array v0, v0, [Ljava/lang/Object;

    .line 92
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v2

    .line 93
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 90
    const-string v1, "Unsupported command %d received by %s."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 86
    :pswitch_0
    invoke-interface {p0, p1}, Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollCommandHandler;->flashScrollIndicators(Ljava/lang/Object;)V

    .line 87
    return-void

    .line 81
    :pswitch_1
    invoke-interface {p3, v2}, Lcom/facebook/react/bridge/ReadableArray;->getBoolean(I)Z

    move-result v0

    .line 82
    .local v0, "animated":Z
    new-instance v1, Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollToEndCommandData;

    invoke-direct {v1, v0}, Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollToEndCommandData;-><init>(Z)V

    invoke-interface {p0, p1, v1}, Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollCommandHandler;->scrollToEnd(Ljava/lang/Object;Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollToEndCommandData;)V

    .line 83
    return-void

    .line 74
    .end local v0    # "animated":Z
    :pswitch_2
    invoke-interface {p3, v2}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(D)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 75
    .local v2, "destX":I
    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(D)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 76
    .local v1, "destY":I
    invoke-interface {p3, v0}, Lcom/facebook/react/bridge/ReadableArray;->getBoolean(I)Z

    move-result v0

    .line 77
    .restart local v0    # "animated":Z
    new-instance v3, Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollToCommandData;

    invoke-direct {v3, v2, v1, v0}, Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollToCommandData;-><init>(IIZ)V

    invoke-interface {p0, p1, v3}, Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollCommandHandler;->scrollTo(Ljava/lang/Object;Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollToCommandData;)V

    .line 78
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
