.class Landroidx/test/uiautomator/Gestures;
.super Ljava/lang/Object;
.source "Gestures.java"


# static fields
.field private static final INNER:I = 0x0

.field private static final INNER_MARGIN:I = 0x5

.field private static final OUTER:I = 0x1

.field private static sInstance:Landroidx/test/uiautomator/Gestures;


# instance fields
.field private mViewConfig:Landroid/view/ViewConfiguration;


# direct methods
.method private constructor <init>(Landroid/view/ViewConfiguration;)V
    .locals 0
    .param p1, "config"    # Landroid/view/ViewConfiguration;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroidx/test/uiautomator/Gestures;->mViewConfig:Landroid/view/ViewConfiguration;

    .line 47
    return-void
.end method

.method private calcPinchCoordinates(Landroid/graphics/Rect;F[Landroid/graphics/Point;[Landroid/graphics/Point;)V
    .locals 6
    .param p1, "area"    # Landroid/graphics/Rect;
    .param p2, "percent"    # F
    .param p3, "bottomLeft"    # [Landroid/graphics/Point;
    .param p4, "topRight"    # [Landroid/graphics/Point;

    .line 192
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/lit8 v0, v0, -0xa

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    mul-float v0, v0, p2

    float-to-int v0, v0

    .line 193
    .local v0, "offsetX":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/lit8 v1, v1, -0xa

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    mul-float v1, v1, p2

    float-to-int v1, v1

    .line 196
    .local v1, "offsetY":I
    new-instance v2, Landroid/graphics/Point;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, 0x5

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, -0x5

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    const/4 v3, 0x1

    aput-object v2, p3, v3

    .line 197
    new-instance v2, Landroid/graphics/Point;

    iget v4, p1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v4, v4, -0x5

    iget v5, p1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v5, v5, 0x5

    invoke-direct {v2, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, p4, v3

    .line 200
    new-instance v2, Landroid/graphics/Point;

    aget-object v4, p3, v3

    invoke-direct {v2, v4}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    const/4 v4, 0x0

    aput-object v2, p3, v4

    .line 201
    aget-object v2, p3, v4

    neg-int v5, v1

    invoke-virtual {v2, v0, v5}, Landroid/graphics/Point;->offset(II)V

    .line 202
    new-instance v2, Landroid/graphics/Point;

    aget-object v3, p4, v3

    invoke-direct {v2, v3}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    aput-object v2, p4, v4

    .line 203
    aget-object v2, p4, v4

    neg-int v3, v0

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Point;->offset(II)V

    .line 204
    return-void
.end method

.method public static getInstance(Landroidx/test/uiautomator/UiDevice;)Landroidx/test/uiautomator/Gestures;
    .locals 3
    .param p0, "device"    # Landroidx/test/uiautomator/UiDevice;

    .line 51
    sget-object v0, Landroidx/test/uiautomator/Gestures;->sInstance:Landroidx/test/uiautomator/Gestures;

    if-nez v0, :cond_0

    .line 52
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiDevice;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 53
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroidx/test/uiautomator/Gestures;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/test/uiautomator/Gestures;-><init>(Landroid/view/ViewConfiguration;)V

    sput-object v1, Landroidx/test/uiautomator/Gestures;->sInstance:Landroidx/test/uiautomator/Gestures;

    .line 56
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    sget-object v0, Landroidx/test/uiautomator/Gestures;->sInstance:Landroidx/test/uiautomator/Gestures;

    return-object v0
.end method


# virtual methods
.method public click(Landroid/graphics/Point;)Landroidx/test/uiautomator/PointerGesture;
    .locals 2
    .param p1, "point"    # Landroid/graphics/Point;

    .line 62
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroidx/test/uiautomator/Gestures;->click(Landroid/graphics/Point;J)Landroidx/test/uiautomator/PointerGesture;

    move-result-object v0

    return-object v0
.end method

.method public click(Landroid/graphics/Point;J)Landroidx/test/uiautomator/PointerGesture;
    .locals 1
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "duration"    # J

    .line 75
    new-instance v0, Landroidx/test/uiautomator/PointerGesture;

    invoke-direct {v0, p1}, Landroidx/test/uiautomator/PointerGesture;-><init>(Landroid/graphics/Point;)V

    invoke-virtual {v0, p2, p3}, Landroidx/test/uiautomator/PointerGesture;->pause(J)Landroidx/test/uiautomator/PointerGesture;

    move-result-object v0

    return-object v0
.end method

.method public drag(Landroid/graphics/Point;Landroid/graphics/Point;I)Landroidx/test/uiautomator/PointerGesture;
    .locals 1
    .param p1, "start"    # Landroid/graphics/Point;
    .param p2, "end"    # Landroid/graphics/Point;
    .param p3, "speed"    # I

    .line 143
    invoke-virtual {p0, p1}, Landroidx/test/uiautomator/Gestures;->longClick(Landroid/graphics/Point;)Landroidx/test/uiautomator/PointerGesture;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroidx/test/uiautomator/PointerGesture;->move(Landroid/graphics/Point;I)Landroidx/test/uiautomator/PointerGesture;

    move-result-object v0

    return-object v0
.end method

.method public longClick(Landroid/graphics/Point;)Landroidx/test/uiautomator/PointerGesture;
    .locals 2
    .param p1, "point"    # Landroid/graphics/Point;

    .line 81
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Landroidx/test/uiautomator/Gestures;->click(Landroid/graphics/Point;J)Landroidx/test/uiautomator/PointerGesture;

    move-result-object v0

    return-object v0
.end method

.method public pinchClose(Landroid/graphics/Rect;FI)[Landroidx/test/uiautomator/PointerGesture;
    .locals 8
    .param p1, "area"    # Landroid/graphics/Rect;
    .param p2, "percent"    # F
    .param p3, "speed"    # I

    .line 155
    const/4 v0, 0x2

    new-array v1, v0, [Landroid/graphics/Point;

    .line 156
    .local v1, "bottomLeft":[Landroid/graphics/Point;
    new-array v2, v0, [Landroid/graphics/Point;

    .line 157
    .local v2, "topRight":[Landroid/graphics/Point;
    invoke-direct {p0, p1, p2, v1, v2}, Landroidx/test/uiautomator/Gestures;->calcPinchCoordinates(Landroid/graphics/Rect;F[Landroid/graphics/Point;[Landroid/graphics/Point;)V

    .line 161
    new-array v0, v0, [Landroidx/test/uiautomator/PointerGesture;

    const/4 v3, 0x1

    aget-object v4, v1, v3

    const/4 v5, 0x0

    aget-object v6, v1, v5

    invoke-virtual {p0, v4, v6, p3}, Landroidx/test/uiautomator/Gestures;->swipe(Landroid/graphics/Point;Landroid/graphics/Point;I)Landroidx/test/uiautomator/PointerGesture;

    move-result-object v4

    const-wide/16 v6, 0xfa

    invoke-virtual {v4, v6, v7}, Landroidx/test/uiautomator/PointerGesture;->pause(J)Landroidx/test/uiautomator/PointerGesture;

    move-result-object v4

    aput-object v4, v0, v5

    aget-object v4, v2, v3

    aget-object v5, v2, v5

    invoke-virtual {p0, v4, v5, p3}, Landroidx/test/uiautomator/Gestures;->swipe(Landroid/graphics/Point;Landroid/graphics/Point;I)Landroidx/test/uiautomator/PointerGesture;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Landroidx/test/uiautomator/PointerGesture;->pause(J)Landroidx/test/uiautomator/PointerGesture;

    move-result-object v4

    aput-object v4, v0, v3

    return-object v0
.end method

.method public pinchOpen(Landroid/graphics/Rect;FI)[Landroidx/test/uiautomator/PointerGesture;
    .locals 7
    .param p1, "area"    # Landroid/graphics/Rect;
    .param p2, "percent"    # F
    .param p3, "speed"    # I

    .line 176
    const/4 v0, 0x2

    new-array v1, v0, [Landroid/graphics/Point;

    .line 177
    .local v1, "bottomLeft":[Landroid/graphics/Point;
    new-array v2, v0, [Landroid/graphics/Point;

    .line 178
    .local v2, "topRight":[Landroid/graphics/Point;
    invoke-direct {p0, p1, p2, v1, v2}, Landroidx/test/uiautomator/Gestures;->calcPinchCoordinates(Landroid/graphics/Rect;F[Landroid/graphics/Point;[Landroid/graphics/Point;)V

    .line 182
    new-array v0, v0, [Landroidx/test/uiautomator/PointerGesture;

    const/4 v3, 0x0

    aget-object v4, v1, v3

    const/4 v5, 0x1

    aget-object v6, v1, v5

    invoke-virtual {p0, v4, v6, p3}, Landroidx/test/uiautomator/Gestures;->swipe(Landroid/graphics/Point;Landroid/graphics/Point;I)Landroidx/test/uiautomator/PointerGesture;

    move-result-object v4

    aput-object v4, v0, v3

    aget-object v3, v2, v3

    aget-object v4, v2, v5

    invoke-virtual {p0, v3, v4, p3}, Landroidx/test/uiautomator/Gestures;->swipe(Landroid/graphics/Point;Landroid/graphics/Point;I)Landroidx/test/uiautomator/PointerGesture;

    move-result-object v3

    aput-object v3, v0, v5

    return-object v0
.end method

.method public swipe(Landroid/graphics/Point;Landroid/graphics/Point;I)Landroidx/test/uiautomator/PointerGesture;
    .locals 1
    .param p1, "start"    # Landroid/graphics/Point;
    .param p2, "end"    # Landroid/graphics/Point;
    .param p3, "speed"    # I

    .line 94
    invoke-virtual {p0, p1}, Landroidx/test/uiautomator/Gestures;->click(Landroid/graphics/Point;)Landroidx/test/uiautomator/PointerGesture;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroidx/test/uiautomator/PointerGesture;->move(Landroid/graphics/Point;I)Landroidx/test/uiautomator/PointerGesture;

    move-result-object v0

    return-object v0
.end method

.method public swipeRect(Landroid/graphics/Rect;Landroidx/test/uiautomator/Direction;FI)Landroidx/test/uiautomator/PointerGesture;
    .locals 5
    .param p1, "area"    # Landroid/graphics/Rect;
    .param p2, "direction"    # Landroidx/test/uiautomator/Direction;
    .param p3, "percent"    # F
    .param p4, "speed"    # I

    .line 109
    sget-object v0, Landroidx/test/uiautomator/Gestures$1;->$SwitchMap$android$support$test$uiautomator$Direction:[I

    invoke-virtual {p2}, Landroidx/test/uiautomator/Direction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 127
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 123
    :pswitch_0
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 124
    .local v0, "start":Landroid/graphics/Point;
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, p3

    float-to-int v4, v4

    add-int/2addr v3, v4

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 125
    .local v1, "end":Landroid/graphics/Point;
    goto :goto_0

    .line 119
    .end local v0    # "start":Landroid/graphics/Point;
    .end local v1    # "end":Landroid/graphics/Point;
    :pswitch_1
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 120
    .restart local v0    # "start":Landroid/graphics/Point;
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, p3

    float-to-int v4, v4

    sub-int/2addr v3, v4

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 121
    .restart local v1    # "end":Landroid/graphics/Point;
    goto :goto_0

    .line 115
    .end local v0    # "start":Landroid/graphics/Point;
    .end local v1    # "end":Landroid/graphics/Point;
    :pswitch_2
    new-instance v0, Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 116
    .restart local v0    # "start":Landroid/graphics/Point;
    new-instance v1, Landroid/graphics/Point;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, p3

    float-to-int v3, v3

    add-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 117
    .restart local v1    # "end":Landroid/graphics/Point;
    goto :goto_0

    .line 111
    .end local v0    # "start":Landroid/graphics/Point;
    .end local v1    # "end":Landroid/graphics/Point;
    :pswitch_3
    new-instance v0, Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 112
    .restart local v0    # "start":Landroid/graphics/Point;
    new-instance v1, Landroid/graphics/Point;

    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, p3

    float-to-int v3, v3

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 113
    .restart local v1    # "end":Landroid/graphics/Point;
    nop

    .line 130
    :goto_0
    invoke-virtual {p0, v0, v1, p4}, Landroidx/test/uiautomator/Gestures;->swipe(Landroid/graphics/Point;Landroid/graphics/Point;I)Landroidx/test/uiautomator/PointerGesture;

    move-result-object v2

    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
