.class public Lcom/facebook/react/uimanager/events/TouchEvent;
.super Lcom/facebook/react/uimanager/events/Event;
.source "TouchEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/events/Event<",
        "Lcom/facebook/react/uimanager/events/TouchEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final EVENTS_POOL:Landroidx/core/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$SynchronizedPool<",
            "Lcom/facebook/react/uimanager/events/TouchEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOUCH_EVENTS_POOL_SIZE:I = 0x3

.field public static final UNSET:J = -0x8000000000000000L


# instance fields
.field private mCoalescingKey:S

.field private mMotionEvent:Landroid/view/MotionEvent;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mTouchEventType:Lcom/facebook/react/uimanager/events/TouchEventType;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mViewX:F

.field private mViewY:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcom/facebook/react/uimanager/events/TouchEvent;->EVENTS_POOL:Landroidx/core/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/facebook/react/uimanager/events/Event;-><init>()V

    .line 67
    return-void
.end method

.method private init(ILcom/facebook/react/uimanager/events/TouchEventType;Landroid/view/MotionEvent;JFFLcom/facebook/react/uimanager/events/TouchEventCoalescingKeyHelper;)V
    .locals 5
    .param p1, "viewTag"    # I
    .param p2, "touchEventType"    # Lcom/facebook/react/uimanager/events/TouchEventType;
    .param p3, "motionEventToCopy"    # Landroid/view/MotionEvent;
    .param p4, "gestureStartTime"    # J
    .param p6, "viewX"    # F
    .param p7, "viewY"    # F
    .param p8, "touchEventCoalescingKeyHelper"    # Lcom/facebook/react/uimanager/events/TouchEventCoalescingKeyHelper;

    .line 77
    invoke-super {p0, p1}, Lcom/facebook/react/uimanager/events/Event;->init(I)V

    .line 79
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p4, v0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Gesture start time must be initialized"

    invoke-static {v0, v1}, Lcom/facebook/react/bridge/SoftAssertions;->assertCondition(ZLjava/lang/String;)V

    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, "coalescingKey":S
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 83
    .local v1, "action":I
    packed-switch v1, :pswitch_data_0

    .line 102
    :pswitch_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled MotionEvent action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 92
    :pswitch_1
    invoke-virtual {p8, p4, p5}, Lcom/facebook/react/uimanager/events/TouchEventCoalescingKeyHelper;->incrementCoalescingKey(J)V

    .line 93
    goto :goto_1

    .line 99
    :pswitch_2
    invoke-virtual {p8, p4, p5}, Lcom/facebook/react/uimanager/events/TouchEventCoalescingKeyHelper;->removeCoalescingKey(J)V

    .line 100
    goto :goto_1

    .line 95
    :pswitch_3
    nop

    .line 96
    invoke-virtual {p8, p4, p5}, Lcom/facebook/react/uimanager/events/TouchEventCoalescingKeyHelper;->getCoalescingKey(J)S

    move-result v0

    .line 97
    goto :goto_1

    .line 88
    :pswitch_4
    invoke-virtual {p8, p4, p5}, Lcom/facebook/react/uimanager/events/TouchEventCoalescingKeyHelper;->removeCoalescingKey(J)V

    .line 89
    goto :goto_1

    .line 85
    :pswitch_5
    invoke-virtual {p8, p4, p5}, Lcom/facebook/react/uimanager/events/TouchEventCoalescingKeyHelper;->addCoalescingKey(J)V

    .line 86
    nop

    .line 104
    :goto_1
    iput-object p2, p0, Lcom/facebook/react/uimanager/events/TouchEvent;->mTouchEventType:Lcom/facebook/react/uimanager/events/TouchEventType;

    .line 105
    invoke-static {p3}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/react/uimanager/events/TouchEvent;->mMotionEvent:Landroid/view/MotionEvent;

    .line 106
    iput-short v0, p0, Lcom/facebook/react/uimanager/events/TouchEvent;->mCoalescingKey:S

    .line 107
    iput p6, p0, Lcom/facebook/react/uimanager/events/TouchEvent;->mViewX:F

    .line 108
    iput p7, p0, Lcom/facebook/react/uimanager/events/TouchEvent;->mViewY:F

    .line 109
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static obtain(ILcom/facebook/react/uimanager/events/TouchEventType;Landroid/view/MotionEvent;JFFLcom/facebook/react/uimanager/events/TouchEventCoalescingKeyHelper;)Lcom/facebook/react/uimanager/events/TouchEvent;
    .locals 10
    .param p0, "viewTag"    # I
    .param p1, "touchEventType"    # Lcom/facebook/react/uimanager/events/TouchEventType;
    .param p2, "motionEventToCopy"    # Landroid/view/MotionEvent;
    .param p3, "gestureStartTime"    # J
    .param p5, "viewX"    # F
    .param p6, "viewY"    # F
    .param p7, "touchEventCoalescingKeyHelper"    # Lcom/facebook/react/uimanager/events/TouchEventCoalescingKeyHelper;

    .line 43
    sget-object v0, Lcom/facebook/react/uimanager/events/TouchEvent;->EVENTS_POOL:Landroidx/core/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroidx/core/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/events/TouchEvent;

    .line 44
    .local v0, "event":Lcom/facebook/react/uimanager/events/TouchEvent;
    if-nez v0, :cond_0

    .line 45
    new-instance v1, Lcom/facebook/react/uimanager/events/TouchEvent;

    invoke-direct {v1}, Lcom/facebook/react/uimanager/events/TouchEvent;-><init>()V

    move-object v0, v1

    .line 47
    :cond_0
    move-object v1, v0

    move v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/facebook/react/uimanager/events/TouchEvent;->init(ILcom/facebook/react/uimanager/events/TouchEventType;Landroid/view/MotionEvent;JFFLcom/facebook/react/uimanager/events/TouchEventCoalescingKeyHelper;)V

    .line 55
    return-object v0
.end method


# virtual methods
.method public canCoalesce()Z
    .locals 3

    .line 128
    sget-object v0, Lcom/facebook/react/uimanager/events/TouchEvent$1;->$SwitchMap$com$facebook$react$uimanager$events$TouchEventType:[I

    iget-object v1, p0, Lcom/facebook/react/uimanager/events/TouchEvent;->mTouchEventType:Lcom/facebook/react/uimanager/events/TouchEventType;

    invoke-static {v1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/uimanager/events/TouchEventType;

    invoke-virtual {v1}, Lcom/facebook/react/uimanager/events/TouchEventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 136
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown touch event type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/react/uimanager/events/TouchEvent;->mTouchEventType:Lcom/facebook/react/uimanager/events/TouchEventType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 132
    :pswitch_1
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public dispatch(Lcom/facebook/react/uimanager/events/RCTEventEmitter;)V
    .locals 2
    .param p1, "rctEventEmitter"    # Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    .line 147
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/TouchEvent;->mTouchEventType:Lcom/facebook/react/uimanager/events/TouchEventType;

    .line 149
    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/events/TouchEventType;

    .line 150
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/events/TouchEvent;->getViewTag()I

    move-result v1

    .line 147
    invoke-static {p1, v0, v1, p0}, Lcom/facebook/react/uimanager/events/TouchesHelper;->sendTouchEvent(Lcom/facebook/react/uimanager/events/RCTEventEmitter;Lcom/facebook/react/uimanager/events/TouchEventType;ILcom/facebook/react/uimanager/events/TouchEvent;)V

    .line 152
    return-void
.end method

.method public getCoalescingKey()S
    .locals 1

    .line 142
    iget-short v0, p0, Lcom/facebook/react/uimanager/events/TouchEvent;->mCoalescingKey:S

    return v0
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/TouchEvent;->mTouchEventType:Lcom/facebook/react/uimanager/events/TouchEventType;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/events/TouchEventType;

    invoke-static {v0}, Lcom/facebook/react/uimanager/events/TouchEventType;->getJSEventName(Lcom/facebook/react/uimanager/events/TouchEventType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMotionEvent()Landroid/view/MotionEvent;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/TouchEvent;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/TouchEvent;->mMotionEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public getViewX()F
    .locals 1

    .line 160
    iget v0, p0, Lcom/facebook/react/uimanager/events/TouchEvent;->mViewX:F

    return v0
.end method

.method public getViewY()F
    .locals 1

    .line 164
    iget v0, p0, Lcom/facebook/react/uimanager/events/TouchEvent;->mViewY:F

    return v0
.end method

.method public onDispose()V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/TouchEvent;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/uimanager/events/TouchEvent;->mMotionEvent:Landroid/view/MotionEvent;

    .line 115
    sget-object v0, Lcom/facebook/react/uimanager/events/TouchEvent;->EVENTS_POOL:Landroidx/core/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroidx/core/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 116
    return-void
.end method
