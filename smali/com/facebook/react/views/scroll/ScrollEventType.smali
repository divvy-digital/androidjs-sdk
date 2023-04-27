.class public final enum Lcom/facebook/react/views/scroll/ScrollEventType;
.super Ljava/lang/Enum;
.source "ScrollEventType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/react/views/scroll/ScrollEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/react/views/scroll/ScrollEventType;

.field public static final enum BEGIN_DRAG:Lcom/facebook/react/views/scroll/ScrollEventType;

.field public static final enum END_DRAG:Lcom/facebook/react/views/scroll/ScrollEventType;

.field public static final enum MOMENTUM_BEGIN:Lcom/facebook/react/views/scroll/ScrollEventType;

.field public static final enum MOMENTUM_END:Lcom/facebook/react/views/scroll/ScrollEventType;

.field public static final enum SCROLL:Lcom/facebook/react/views/scroll/ScrollEventType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 14
    new-instance v0, Lcom/facebook/react/views/scroll/ScrollEventType;

    const-string v1, "BEGIN_DRAG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/react/views/scroll/ScrollEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/react/views/scroll/ScrollEventType;->BEGIN_DRAG:Lcom/facebook/react/views/scroll/ScrollEventType;

    .line 15
    new-instance v1, Lcom/facebook/react/views/scroll/ScrollEventType;

    const-string v3, "END_DRAG"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/facebook/react/views/scroll/ScrollEventType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/facebook/react/views/scroll/ScrollEventType;->END_DRAG:Lcom/facebook/react/views/scroll/ScrollEventType;

    .line 16
    new-instance v3, Lcom/facebook/react/views/scroll/ScrollEventType;

    const-string v5, "SCROLL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/facebook/react/views/scroll/ScrollEventType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/facebook/react/views/scroll/ScrollEventType;->SCROLL:Lcom/facebook/react/views/scroll/ScrollEventType;

    .line 17
    new-instance v5, Lcom/facebook/react/views/scroll/ScrollEventType;

    const-string v7, "MOMENTUM_BEGIN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/facebook/react/views/scroll/ScrollEventType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/facebook/react/views/scroll/ScrollEventType;->MOMENTUM_BEGIN:Lcom/facebook/react/views/scroll/ScrollEventType;

    .line 18
    new-instance v7, Lcom/facebook/react/views/scroll/ScrollEventType;

    const-string v9, "MOMENTUM_END"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/facebook/react/views/scroll/ScrollEventType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/facebook/react/views/scroll/ScrollEventType;->MOMENTUM_END:Lcom/facebook/react/views/scroll/ScrollEventType;

    .line 13
    const/4 v9, 0x5

    new-array v9, v9, [Lcom/facebook/react/views/scroll/ScrollEventType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/facebook/react/views/scroll/ScrollEventType;->$VALUES:[Lcom/facebook/react/views/scroll/ScrollEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getJSEventName(Lcom/facebook/react/views/scroll/ScrollEventType;)Ljava/lang/String;
    .locals 3
    .param p0, "type"    # Lcom/facebook/react/views/scroll/ScrollEventType;

    .line 21
    sget-object v0, Lcom/facebook/react/views/scroll/ScrollEventType$1;->$SwitchMap$com$facebook$react$views$scroll$ScrollEventType:[I

    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ScrollEventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported ScrollEventType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :pswitch_0
    const-string v0, "topMomentumScrollEnd"

    return-object v0

    .line 29
    :pswitch_1
    const-string v0, "topMomentumScrollBegin"

    return-object v0

    .line 27
    :pswitch_2
    const-string v0, "topScroll"

    return-object v0

    .line 25
    :pswitch_3
    const-string v0, "topScrollEndDrag"

    return-object v0

    .line 23
    :pswitch_4
    const-string v0, "topScrollBeginDrag"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/react/views/scroll/ScrollEventType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 13
    const-class v0, Lcom/facebook/react/views/scroll/ScrollEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/views/scroll/ScrollEventType;

    return-object v0
.end method

.method public static values()[Lcom/facebook/react/views/scroll/ScrollEventType;
    .locals 1

    .line 13
    sget-object v0, Lcom/facebook/react/views/scroll/ScrollEventType;->$VALUES:[Lcom/facebook/react/views/scroll/ScrollEventType;

    invoke-virtual {v0}, [Lcom/facebook/react/views/scroll/ScrollEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/react/views/scroll/ScrollEventType;

    return-object v0
.end method
