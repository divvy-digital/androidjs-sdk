.class Landroidx/test/uiautomator/GestureController;
.super Ljava/lang/Object;
.source "GestureController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/uiautomator/GestureController$GestureRunnable;,
        Landroidx/test/uiautomator/GestureController$Pointer;
    }
.end annotation


# static fields
.field private static final END_TIME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/test/uiautomator/PointerGesture;",
            ">;"
        }
    .end annotation
.end field

.field private static final MOTION_EVENT_INJECTION_DELAY_MILLIS:J = 0x5L

.field private static final START_TIME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/test/uiautomator/PointerGesture;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Landroidx/test/uiautomator/GestureController;


# instance fields
.field private mDevice:Landroidx/test/uiautomator/UiDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Landroidx/test/uiautomator/GestureController$1;

    invoke-direct {v0}, Landroidx/test/uiautomator/GestureController$1;-><init>()V

    sput-object v0, Landroidx/test/uiautomator/GestureController;->START_TIME_COMPARATOR:Ljava/util/Comparator;

    .line 57
    new-instance v0, Landroidx/test/uiautomator/GestureController$2;

    invoke-direct {v0}, Landroidx/test/uiautomator/GestureController$2;-><init>()V

    sput-object v0, Landroidx/test/uiautomator/GestureController;->END_TIME_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(Landroidx/test/uiautomator/UiDevice;)V
    .locals 0
    .param p1, "device"    # Landroidx/test/uiautomator/UiDevice;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Landroidx/test/uiautomator/GestureController;->mDevice:Landroidx/test/uiautomator/UiDevice;

    .line 70
    return-void
.end method

.method public static getInstance(Landroidx/test/uiautomator/UiDevice;)Landroidx/test/uiautomator/GestureController;
    .locals 1
    .param p0, "device"    # Landroidx/test/uiautomator/UiDevice;

    .line 74
    sget-object v0, Landroidx/test/uiautomator/GestureController;->sInstance:Landroidx/test/uiautomator/GestureController;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Landroidx/test/uiautomator/GestureController;

    invoke-direct {v0, p0}, Landroidx/test/uiautomator/GestureController;-><init>(Landroidx/test/uiautomator/UiDevice;)V

    sput-object v0, Landroidx/test/uiautomator/GestureController;->sInstance:Landroidx/test/uiautomator/GestureController;

    .line 78
    :cond_0
    sget-object v0, Landroidx/test/uiautomator/GestureController;->sInstance:Landroidx/test/uiautomator/GestureController;

    return-object v0
.end method

.method private static getMotionEvent(JJILjava/util/List;Ljava/util/List;)Landroid/view/MotionEvent;
    .locals 20
    .param p0, "downTime"    # J
    .param p2, "eventTime"    # J
    .param p4, "action"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJI",
            "Ljava/util/List<",
            "Landroid/view/MotionEvent$PointerProperties;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/MotionEvent$PointerCoords;",
            ">;)",
            "Landroid/view/MotionEvent;"
        }
    .end annotation

    .line 201
    .local p5, "properties":Ljava/util/List;, "Ljava/util/List<Landroid/view/MotionEvent$PointerProperties;>;"
    .local p6, "coordinates":Ljava/util/List;, "Ljava/util/List<Landroid/view/MotionEvent$PointerCoords;>;"
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/view/MotionEvent$PointerProperties;

    move-object/from16 v1, p5

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/MotionEvent$PointerProperties;

    .line 202
    .local v0, "props":[Landroid/view/MotionEvent$PointerProperties;
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/view/MotionEvent$PointerCoords;

    move-object/from16 v15, p6

    invoke-interface {v15, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, [Landroid/view/MotionEvent$PointerCoords;

    .line 203
    .local v18, "coords":[Landroid/view/MotionEvent$PointerCoords;
    array-length v7, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1002

    const/16 v19, 0x0

    move-wide/from16 v2, p0

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move-object v8, v0

    move-object/from16 v9, v18

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v19

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method getDevice()Landroidx/test/uiautomator/UiDevice;
    .locals 1

    .line 244
    iget-object v0, p0, Landroidx/test/uiautomator/GestureController;->mDevice:Landroidx/test/uiautomator/UiDevice;

    return-object v0
.end method

.method public varargs performGesture([Landroidx/test/uiautomator/PointerGesture;)V
    .locals 23
    .param p1, "gestures"    # [Landroidx/test/uiautomator/PointerGesture;

    .line 106
    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 107
    .local v1, "count":I
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 108
    .local v2, "pointers":Ljava/util/Map;, "Ljava/util/Map<Landroidx/test/uiautomator/PointerGesture;Landroidx/test/uiautomator/GestureController$Pointer;>;"
    move-object/from16 v3, p1

    .local v3, "arr$":[Landroidx/test/uiautomator/PointerGesture;
    array-length v4, v3

    .local v4, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    .line 109
    .local v6, "g":Landroidx/test/uiautomator/PointerGesture;
    new-instance v7, Landroidx/test/uiautomator/GestureController$Pointer;

    add-int/lit8 v8, v1, 0x1

    .end local v1    # "count":I
    .local v8, "count":I
    invoke-virtual {v6}, Landroidx/test/uiautomator/PointerGesture;->start()Landroid/graphics/Point;

    move-result-object v9

    invoke-direct {v7, v1, v9}, Landroidx/test/uiautomator/GestureController$Pointer;-><init>(ILandroid/graphics/Point;)V

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .end local v6    # "g":Landroidx/test/uiautomator/PointerGesture;
    add-int/lit8 v5, v5, 0x1

    move v1, v8

    goto :goto_0

    .line 113
    .end local v3    # "arr$":[Landroidx/test/uiautomator/PointerGesture;
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    .end local v8    # "count":I
    .restart local v1    # "count":I
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v3, "properties":Ljava/util/List;, "Ljava/util/List<Landroid/view/MotionEvent$PointerProperties;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v4

    .line 117
    .local v11, "coordinates":Ljava/util/List;, "Ljava/util/List<Landroid/view/MotionEvent$PointerCoords;>;"
    new-instance v4, Ljava/util/PriorityQueue;

    array-length v5, v0

    sget-object v6, Landroidx/test/uiautomator/GestureController;->END_TIME_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v4, v5, v6}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    move-object v12, v4

    .line 119
    .local v12, "active":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Landroidx/test/uiautomator/PointerGesture;>;"
    new-instance v4, Ljava/util/PriorityQueue;

    array-length v5, v0

    sget-object v6, Landroidx/test/uiautomator/GestureController;->START_TIME_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v4, v5, v6}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    move-object v13, v4

    .line 121
    .local v13, "pending":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Landroidx/test/uiautomator/PointerGesture;>;"
    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/util/PriorityQueue;->addAll(Ljava/util/Collection;)Z

    .line 124
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 128
    .local v14, "startTime":J
    const-wide/16 v4, 0x0

    move-wide v9, v4

    .local v9, "elapsedTime":J
    :goto_1
    invoke-virtual {v13}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v12}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_2

    .line 195
    .end local v9    # "elapsedTime":J
    :cond_1
    return-void

    .line 132
    .restart local v9    # "elapsedTime":J
    :cond_2
    :goto_2
    invoke-virtual {v13}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v4

    const/4 v8, 0x1

    if-nez v4, :cond_4

    invoke-virtual {v13}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/test/uiautomator/PointerGesture;

    invoke-virtual {v4}, Landroidx/test/uiautomator/PointerGesture;->delay()J

    move-result-wide v4

    cmp-long v6, v9, v4

    if-lez v6, :cond_4

    .line 133
    invoke-virtual {v13}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Landroidx/test/uiautomator/PointerGesture;

    .line 134
    .local v6, "gesture":Landroidx/test/uiautomator/PointerGesture;
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Landroidx/test/uiautomator/GestureController$Pointer;

    .line 137
    .local v7, "pointer":Landroidx/test/uiautomator/GestureController$Pointer;
    iget-object v4, v7, Landroidx/test/uiautomator/GestureController$Pointer;->prop:Landroid/view/MotionEvent$PointerProperties;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v4, v7, Landroidx/test/uiautomator/GestureController$Pointer;->coords:Landroid/view/MotionEvent$PointerCoords;

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    const/4 v4, 0x0

    .line 142
    .local v4, "action":I
    invoke-virtual {v12}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 145
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v8

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v4, v5, 0x5

    move/from16 v16, v4

    goto :goto_3

    .line 142
    :cond_3
    move/from16 v16, v4

    .line 148
    .end local v4    # "action":I
    .local v16, "action":I
    :goto_3
    add-long v17, v14, v9

    move-wide v4, v14

    move-object v0, v6

    move-object/from16 v19, v7

    .end local v6    # "gesture":Landroidx/test/uiautomator/PointerGesture;
    .end local v7    # "pointer":Landroidx/test/uiautomator/GestureController$Pointer;
    .local v0, "gesture":Landroidx/test/uiautomator/PointerGesture;
    .local v19, "pointer":Landroidx/test/uiautomator/GestureController$Pointer;
    move-wide/from16 v6, v17

    move/from16 v17, v1

    const/4 v1, 0x1

    .end local v1    # "count":I
    .local v17, "count":I
    move/from16 v8, v16

    move-wide/from16 v20, v9

    .end local v9    # "elapsedTime":J
    .local v20, "elapsedTime":J
    move-object v9, v3

    move-object v10, v11

    invoke-static/range {v4 .. v10}, Landroidx/test/uiautomator/GestureController;->getMotionEvent(JJILjava/util/List;Ljava/util/List;)Landroid/view/MotionEvent;

    move-result-object v4

    .line 150
    .local v4, "event":Landroid/view/MotionEvent;
    invoke-virtual/range {p0 .. p0}, Landroidx/test/uiautomator/GestureController;->getDevice()Landroidx/test/uiautomator/UiDevice;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/test/uiautomator/UiDevice;->getUiAutomation()Landroid/app/UiAutomation;

    move-result-object v5

    invoke-virtual {v5, v4, v1}, Landroid/app/UiAutomation;->injectInputEvent(Landroid/view/InputEvent;Z)Z

    .line 153
    invoke-virtual {v12, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 154
    .end local v0    # "gesture":Landroidx/test/uiautomator/PointerGesture;
    .end local v16    # "action":I
    .end local v19    # "pointer":Landroidx/test/uiautomator/GestureController$Pointer;
    move-object/from16 v0, p1

    move/from16 v1, v17

    move-wide/from16 v9, v20

    goto :goto_2

    .line 132
    .end local v4    # "event":Landroid/view/MotionEvent;
    .end local v17    # "count":I
    .end local v20    # "elapsedTime":J
    .restart local v1    # "count":I
    .restart local v9    # "elapsedTime":J
    :cond_4
    move/from16 v17, v1

    move-wide/from16 v20, v9

    const/4 v1, 0x1

    .line 158
    .end local v1    # "count":I
    .end local v9    # "elapsedTime":J
    .restart local v17    # "count":I
    .restart local v20    # "elapsedTime":J
    :goto_4
    invoke-virtual {v12}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v12}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/uiautomator/PointerGesture;

    invoke-virtual {v0}, Landroidx/test/uiautomator/PointerGesture;->delay()J

    move-result-wide v4

    invoke-virtual {v12}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/uiautomator/PointerGesture;

    invoke-virtual {v0}, Landroidx/test/uiautomator/PointerGesture;->duration()J

    move-result-wide v6

    add-long/2addr v4, v6

    move-wide/from16 v9, v20

    .end local v20    # "elapsedTime":J
    .restart local v9    # "elapsedTime":J
    cmp-long v0, v9, v4

    if-lez v0, :cond_7

    .line 160
    invoke-virtual {v12}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/uiautomator/PointerGesture;

    .line 161
    .restart local v0    # "gesture":Landroidx/test/uiautomator/PointerGesture;
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Landroidx/test/uiautomator/GestureController$Pointer;

    .line 164
    .local v8, "pointer":Landroidx/test/uiautomator/GestureController$Pointer;
    invoke-virtual {v0}, Landroidx/test/uiautomator/PointerGesture;->end()Landroid/graphics/Point;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroidx/test/uiautomator/GestureController$Pointer;->updatePosition(Landroid/graphics/Point;)V

    .line 165
    invoke-virtual {v12}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/test/uiautomator/PointerGesture;

    .line 166
    .local v5, "current":Landroidx/test/uiautomator/PointerGesture;
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/test/uiautomator/GestureController$Pointer;

    invoke-virtual {v5, v9, v10}, Landroidx/test/uiautomator/PointerGesture;->pointAt(J)Landroid/graphics/Point;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/test/uiautomator/GestureController$Pointer;->updatePosition(Landroid/graphics/Point;)V

    .line 167
    .end local v5    # "current":Landroidx/test/uiautomator/PointerGesture;
    goto :goto_5

    .line 169
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_5
    const/4 v4, 0x1

    .line 170
    .local v4, "action":I
    iget-object v5, v8, Landroidx/test/uiautomator/GestureController$Pointer;->prop:Landroid/view/MotionEvent$PointerProperties;

    invoke-interface {v3, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 171
    .local v6, "index":I
    invoke-virtual {v12}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 172
    shl-int/lit8 v5, v6, 0x8

    add-int/lit8 v4, v5, 0x6

    move/from16 v16, v4

    goto :goto_6

    .line 171
    :cond_6
    move/from16 v16, v4

    .line 175
    .end local v4    # "action":I
    .restart local v16    # "action":I
    :goto_6
    add-long v18, v14, v9

    move-wide v4, v14

    move/from16 v22, v6

    .end local v6    # "index":I
    .local v22, "index":I
    move-wide/from16 v6, v18

    move-object/from16 v18, v8

    .end local v8    # "pointer":Landroidx/test/uiautomator/GestureController$Pointer;
    .local v18, "pointer":Landroidx/test/uiautomator/GestureController$Pointer;
    move/from16 v8, v16

    move-wide/from16 v19, v9

    .end local v9    # "elapsedTime":J
    .local v19, "elapsedTime":J
    move-object v9, v3

    move-object v10, v11

    invoke-static/range {v4 .. v10}, Landroidx/test/uiautomator/GestureController;->getMotionEvent(JJILjava/util/List;Ljava/util/List;)Landroid/view/MotionEvent;

    move-result-object v4

    .line 177
    .local v4, "event":Landroid/view/MotionEvent;
    invoke-virtual/range {p0 .. p0}, Landroidx/test/uiautomator/GestureController;->getDevice()Landroidx/test/uiautomator/UiDevice;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/test/uiautomator/UiDevice;->getUiAutomation()Landroid/app/UiAutomation;

    move-result-object v5

    invoke-virtual {v5, v4, v1}, Landroid/app/UiAutomation;->injectInputEvent(Landroid/view/InputEvent;Z)Z

    .line 179
    move/from16 v5, v22

    .end local v22    # "index":I
    .local v5, "index":I
    invoke-interface {v3, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 180
    invoke-interface {v11, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 181
    .end local v0    # "gesture":Landroidx/test/uiautomator/PointerGesture;
    .end local v5    # "index":I
    .end local v16    # "action":I
    .end local v18    # "pointer":Landroidx/test/uiautomator/GestureController$Pointer;
    move-wide/from16 v20, v19

    goto/16 :goto_4

    .line 158
    .end local v4    # "event":Landroid/view/MotionEvent;
    .end local v19    # "elapsedTime":J
    .restart local v9    # "elapsedTime":J
    :cond_7
    move-wide/from16 v19, v9

    .end local v9    # "elapsedTime":J
    .restart local v19    # "elapsedTime":J
    goto :goto_7

    .end local v19    # "elapsedTime":J
    .restart local v20    # "elapsedTime":J
    :cond_8
    move-wide/from16 v19, v20

    .line 184
    .end local v20    # "elapsedTime":J
    .restart local v19    # "elapsedTime":J
    :goto_7
    invoke-virtual {v12}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/test/uiautomator/PointerGesture;

    .line 185
    .local v4, "gesture":Landroidx/test/uiautomator/PointerGesture;
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/test/uiautomator/GestureController$Pointer;

    .line 186
    .local v5, "pointer":Landroidx/test/uiautomator/GestureController$Pointer;
    invoke-virtual {v4}, Landroidx/test/uiautomator/PointerGesture;->delay()J

    move-result-wide v6

    sub-long v9, v19, v6

    invoke-virtual {v4, v9, v10}, Landroidx/test/uiautomator/PointerGesture;->pointAt(J)Landroid/graphics/Point;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/test/uiautomator/GestureController$Pointer;->updatePosition(Landroid/graphics/Point;)V

    .line 188
    .end local v4    # "gesture":Landroidx/test/uiautomator/PointerGesture;
    .end local v5    # "pointer":Landroidx/test/uiautomator/GestureController$Pointer;
    goto :goto_8

    .line 189
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_9
    invoke-virtual {v12}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 190
    add-long v6, v14, v19

    const/4 v8, 0x2

    move-wide v4, v14

    move-object v9, v3

    move-object v10, v11

    invoke-static/range {v4 .. v10}, Landroidx/test/uiautomator/GestureController;->getMotionEvent(JJILjava/util/List;Ljava/util/List;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 192
    .local v0, "event":Landroid/view/MotionEvent;
    invoke-virtual/range {p0 .. p0}, Landroidx/test/uiautomator/GestureController;->getDevice()Landroidx/test/uiautomator/UiDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/test/uiautomator/UiDevice;->getUiAutomation()Landroid/app/UiAutomation;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Landroid/app/UiAutomation;->injectInputEvent(Landroid/view/InputEvent;Z)Z

    .line 129
    .end local v0    # "event":Landroid/view/MotionEvent;
    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long v9, v0, v14

    move-object/from16 v0, p1

    move/from16 v1, v17

    .end local v19    # "elapsedTime":J
    .restart local v9    # "elapsedTime":J
    goto/16 :goto_1
.end method

.method public varargs performGestureAndWait(Landroidx/test/uiautomator/EventCondition;J[Landroidx/test/uiautomator/PointerGesture;)Ljava/lang/Object;
    .locals 2
    .param p2, "timeout"    # J
    .param p4, "gestures"    # [Landroidx/test/uiautomator/PointerGesture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/test/uiautomator/EventCondition<",
            "TR;>;J[",
            "Landroidx/test/uiautomator/PointerGesture;",
            ")TR;"
        }
    .end annotation

    .line 92
    .local p1, "condition":Landroidx/test/uiautomator/EventCondition;, "Landroidx/test/uiautomator/EventCondition<TR;>;"
    invoke-virtual {p0}, Landroidx/test/uiautomator/GestureController;->getDevice()Landroidx/test/uiautomator/UiDevice;

    move-result-object v0

    new-instance v1, Landroidx/test/uiautomator/GestureController$GestureRunnable;

    invoke-direct {v1, p0, p4}, Landroidx/test/uiautomator/GestureController$GestureRunnable;-><init>(Landroidx/test/uiautomator/GestureController;[Landroidx/test/uiautomator/PointerGesture;)V

    invoke-virtual {v0, v1, p1, p2, p3}, Landroidx/test/uiautomator/UiDevice;->performActionAndWait(Ljava/lang/Runnable;Landroidx/test/uiautomator/EventCondition;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
