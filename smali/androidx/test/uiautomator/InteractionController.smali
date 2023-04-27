.class Landroidx/test/uiautomator/InteractionController;
.super Ljava/lang/Object;
.source "InteractionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/uiautomator/InteractionController$WaitForAllEventPredicate;,
        Landroidx/test/uiautomator/InteractionController$EventCollectingPredicate;,
        Landroidx/test/uiautomator/InteractionController$WaitForAnyEventPredicate;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MOTION_EVENT_INJECTION_DELAY_MILLIS:I = 0x5

.field private static final REGULAR_CLICK_LENGTH:J = 0x64L


# instance fields
.field private mDownTime:J

.field private final mInstrumentation:Landroid/app/Instrumentation;

.field private final mKeyCharacterMap:Landroid/view/KeyCharacterMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    const-class v0, Landroidx/test/uiautomator/InteractionController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/test/uiautomator/InteractionController;->LOG_TAG:Ljava/lang/String;

    .line 56
    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroidx/test/uiautomator/InteractionController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Instrumentation;)V
    .locals 1
    .param p1, "instrumentation"    # Landroid/app/Instrumentation;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, -0x1

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/uiautomator/InteractionController;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 71
    iput-object p1, p0, Landroidx/test/uiautomator/InteractionController;->mInstrumentation:Landroid/app/Instrumentation;

    .line 72
    return-void
.end method

.method static synthetic access$000(Landroidx/test/uiautomator/InteractionController;Landroid/view/InputEvent;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/test/uiautomator/InteractionController;
    .param p1, "x1"    # Landroid/view/InputEvent;

    .line 52
    invoke-direct {p0, p1}, Landroidx/test/uiautomator/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroidx/test/uiautomator/InteractionController;II)Z
    .locals 1
    .param p0, "x0"    # Landroidx/test/uiautomator/InteractionController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 52
    invoke-direct {p0, p1, p2}, Landroidx/test/uiautomator/InteractionController;->touchDown(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroidx/test/uiautomator/InteractionController;II)Z
    .locals 1
    .param p0, "x0"    # Landroidx/test/uiautomator/InteractionController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 52
    invoke-direct {p0, p1, p2}, Landroidx/test/uiautomator/InteractionController;->touchUp(II)Z

    move-result v0

    return v0
.end method

.method private clickRunnable(II)Ljava/lang/Runnable;
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 274
    new-instance v0, Landroidx/test/uiautomator/InteractionController$2;

    invoke-direct {v0, p0, p1, p2}, Landroidx/test/uiautomator/InteractionController$2;-><init>(Landroidx/test/uiautomator/InteractionController;II)V

    return-object v0
.end method

.method private getLastMatchingEvent(Ljava/util/List;I)Landroid/view/accessibility/AccessibilityEvent;
    .locals 3
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ">;I)",
            "Landroid/view/accessibility/AccessibilityEvent;"
        }
    .end annotation

    .line 436
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityEvent;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "x":I
    :goto_0
    if-lez v0, :cond_1

    .line 437
    add-int/lit8 v1, v0, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityEvent;

    .line 438
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 439
    return-object v1

    .line 436
    .end local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 441
    .end local v0    # "x":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getMotionEvent(JJIFF)Landroid/view/MotionEvent;
    .locals 21
    .param p0, "downTime"    # J
    .param p2, "eventTime"    # J
    .param p4, "action"    # I
    .param p5, "x"    # F
    .param p6, "y"    # F

    .line 832
    new-instance v0, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 833
    .local v0, "properties":Landroid/view/MotionEvent$PointerProperties;
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 834
    invoke-static {}, Landroidx/test/uiautomator/Configurator;->getInstance()Landroidx/test/uiautomator/Configurator;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/test/uiautomator/Configurator;->getToolType()I

    move-result v2

    iput v2, v0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 836
    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 837
    .local v2, "coords":Landroid/view/MotionEvent$PointerCoords;
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 838
    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 839
    move/from16 v3, p5

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 840
    move/from16 v4, p6

    iput v4, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 842
    const/4 v10, 0x1

    const/4 v5, 0x1

    new-array v11, v5, [Landroid/view/MotionEvent$PointerProperties;

    aput-object v0, v11, v1

    new-array v12, v5, [Landroid/view/MotionEvent$PointerCoords;

    aput-object v2, v12, v1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1002

    const/16 v20, 0x0

    move-wide/from16 v5, p0

    move-wide/from16 v7, p2

    move/from16 v9, p4

    invoke-static/range {v5 .. v20}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    return-object v1
.end method

.method private getPointerAction(II)I
    .locals 1
    .param p1, "motionEnvent"    # I
    .param p2, "index"    # I

    .line 694
    shl-int/lit8 v0, p2, 0x8

    add-int/2addr v0, p1

    return v0
.end method

.method private injectEventSync(Landroid/view/InputEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 690
    invoke-virtual {p0}, Landroidx/test/uiautomator/InteractionController;->getUiAutomation()Landroid/app/UiAutomation;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/UiAutomation;->injectInputEvent(Landroid/view/InputEvent;Z)Z

    move-result v0

    return v0
.end method

.method private longTapRunnable(II)Ljava/lang/Runnable;
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 294
    new-instance v0, Landroidx/test/uiautomator/InteractionController$3;

    invoke-direct {v0, p0, p1, p2}, Landroidx/test/uiautomator/InteractionController$3;-><init>(Landroidx/test/uiautomator/InteractionController;II)V

    return-object v0
.end method

.method private recycleAccessibilityEvents(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ">;)V"
        }
    .end annotation

    .line 445
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityEvent;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityEvent;

    .line 446
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .end local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    goto :goto_0

    .line 447
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 448
    return-void
.end method

.method private runAndWaitForEvents(Ljava/lang/Runnable;Landroid/app/UiAutomation$AccessibilityEventFilter;J)Landroid/view/accessibility/AccessibilityEvent;
    .locals 4
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "filter"    # Landroid/app/UiAutomation$AccessibilityEventFilter;
    .param p3, "timeout"    # J

    .line 164
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroidx/test/uiautomator/InteractionController;->getUiAutomation()Landroid/app/UiAutomation;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/app/UiAutomation;->executeAndWaitForEvent(Ljava/lang/Runnable;Landroid/app/UiAutomation$AccessibilityEventFilter;J)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 168
    :catch_0
    move-exception v1

    .line 169
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Landroidx/test/uiautomator/InteractionController;->LOG_TAG:Ljava/lang/String;

    const-string v3, "exception from executeCommandAndWaitForAccessibilityEvent"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    return-object v0

    .line 165
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 166
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    sget-object v2, Landroidx/test/uiautomator/InteractionController;->LOG_TAG:Ljava/lang/String;

    const-string v3, "runAndwaitForEvents timed out waiting for events"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return-object v0
.end method

.method private touchDown(II)Z
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 346
    sget-boolean v0, Landroidx/test/uiautomator/InteractionController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 347
    sget-object v0, Landroidx/test/uiautomator/InteractionController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "touchDown ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Landroidx/test/uiautomator/InteractionController;->mDownTime:J

    .line 350
    const/4 v6, 0x0

    int-to-float v7, p1

    int-to-float v8, p2

    move-wide v2, v4

    invoke-static/range {v2 .. v8}, Landroidx/test/uiautomator/InteractionController;->getMotionEvent(JJIFF)Landroid/view/MotionEvent;

    move-result-object v0

    .line 351
    .local v0, "event":Landroid/view/MotionEvent;
    invoke-direct {p0, v0}, Landroidx/test/uiautomator/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    move-result v1

    return v1
.end method

.method private touchMove(II)Z
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 365
    sget-boolean v0, Landroidx/test/uiautomator/InteractionController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 366
    sget-object v0, Landroidx/test/uiautomator/InteractionController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "touchMove ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 369
    .local v0, "eventTime":J
    iget-wide v2, p0, Landroidx/test/uiautomator/InteractionController;->mDownTime:J

    const/4 v6, 0x2

    int-to-float v7, p1

    int-to-float v8, p2

    move-wide v4, v0

    invoke-static/range {v2 .. v8}, Landroidx/test/uiautomator/InteractionController;->getMotionEvent(JJIFF)Landroid/view/MotionEvent;

    move-result-object v2

    .line 370
    .local v2, "event":Landroid/view/MotionEvent;
    invoke-direct {p0, v2}, Landroidx/test/uiautomator/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    move-result v3

    return v3
.end method

.method private touchUp(II)Z
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 355
    sget-boolean v0, Landroidx/test/uiautomator/InteractionController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 356
    sget-object v0, Landroidx/test/uiautomator/InteractionController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "touchUp ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 359
    .local v0, "eventTime":J
    iget-wide v2, p0, Landroidx/test/uiautomator/InteractionController;->mDownTime:J

    const/4 v6, 0x1

    int-to-float v7, p1

    int-to-float v8, p2

    move-wide v4, v0

    invoke-static/range {v2 .. v8}, Landroidx/test/uiautomator/InteractionController;->getMotionEvent(JJIFF)Landroid/view/MotionEvent;

    move-result-object v2

    .line 360
    .local v2, "event":Landroid/view/MotionEvent;
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroidx/test/uiautomator/InteractionController;->mDownTime:J

    .line 361
    invoke-direct {p0, v2}, Landroidx/test/uiautomator/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    move-result v3

    return v3
.end method


# virtual methods
.method public clickAndSync(IIJ)Z
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "timeout"    # J

    .line 239
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "clickAndSync(%d, %d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "logString":Ljava/lang/String;
    sget-object v1, Landroidx/test/uiautomator/InteractionController;->LOG_TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-direct {p0, p1, p2}, Landroidx/test/uiautomator/InteractionController;->clickRunnable(II)Ljava/lang/Runnable;

    move-result-object v1

    new-instance v4, Landroidx/test/uiautomator/InteractionController$WaitForAnyEventPredicate;

    const/16 v5, 0x804

    invoke-direct {v4, p0, v5}, Landroidx/test/uiautomator/InteractionController$WaitForAnyEventPredicate;-><init>(Landroidx/test/uiautomator/InteractionController;I)V

    invoke-direct {p0, v1, v4, p3, p4}, Landroidx/test/uiautomator/InteractionController;->runAndWaitForEvents(Ljava/lang/Runnable;Landroid/app/UiAutomation$AccessibilityEventFilter;J)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public clickAndWaitForNewWindow(IIJ)Z
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "timeout"    # J

    .line 257
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "clickAndWaitForNewWindow(%d, %d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "logString":Ljava/lang/String;
    sget-object v1, Landroidx/test/uiautomator/InteractionController;->LOG_TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-direct {p0, p1, p2}, Landroidx/test/uiautomator/InteractionController;->clickRunnable(II)Ljava/lang/Runnable;

    move-result-object v1

    new-instance v4, Landroidx/test/uiautomator/InteractionController$WaitForAllEventPredicate;

    const/16 v5, 0x820

    invoke-direct {v4, p0, v5}, Landroidx/test/uiautomator/InteractionController$WaitForAllEventPredicate;-><init>(Landroidx/test/uiautomator/InteractionController;I)V

    invoke-direct {p0, v1, v4, p3, p4}, Landroidx/test/uiautomator/InteractionController;->runAndWaitForEvents(Ljava/lang/Runnable;Landroid/app/UiAutomation$AccessibilityEventFilter;J)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public clickNoSync(II)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 218
    sget-object v0, Landroidx/test/uiautomator/InteractionController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clickNoSync ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-direct {p0, p1, p2}, Landroidx/test/uiautomator/InteractionController;->touchDown(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 222
    invoke-direct {p0, p1, p2}, Landroidx/test/uiautomator/InteractionController;->touchUp(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    const/4 v0, 0x1

    return v0

    .line 225
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public freezeRotation()V
    .locals 2

    .line 640
    invoke-virtual {p0}, Landroidx/test/uiautomator/InteractionController;->getUiAutomation()Landroid/app/UiAutomation;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/UiAutomation;->setRotation(I)Z

    .line 641
    return-void
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .line 852
    invoke-virtual {p0}, Landroidx/test/uiautomator/InteractionController;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method getInstrumentation()Landroid/app/Instrumentation;
    .locals 1

    .line 856
    iget-object v0, p0, Landroidx/test/uiautomator/InteractionController;->mInstrumentation:Landroid/app/Instrumentation;

    return-object v0
.end method

.method getUiAutomation()Landroid/app/UiAutomation;
    .locals 1

    .line 848
    invoke-virtual {p0}, Landroidx/test/uiautomator/InteractionController;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/uiautomator/UiDevice;->getUiAutomation(Landroid/app/Instrumentation;)Landroid/app/UiAutomation;

    move-result-object v0

    return-object v0
.end method

.method public isScreenOn()Z
    .locals 2

    .line 685
    invoke-virtual {p0}, Landroidx/test/uiautomator/InteractionController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 686
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    return v1
.end method

.method public longTapAndSync(IIJ)Z
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "timeout"    # J

    .line 337
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "clickAndSync(%d, %d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, "logString":Ljava/lang/String;
    sget-object v1, Landroidx/test/uiautomator/InteractionController;->LOG_TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-direct {p0, p1, p2}, Landroidx/test/uiautomator/InteractionController;->longTapRunnable(II)Ljava/lang/Runnable;

    move-result-object v1

    new-instance v4, Landroidx/test/uiautomator/InteractionController$WaitForAnyEventPredicate;

    const/16 v5, 0x804

    invoke-direct {v4, p0, v5}, Landroidx/test/uiautomator/InteractionController$WaitForAnyEventPredicate;-><init>(Landroidx/test/uiautomator/InteractionController;I)V

    invoke-direct {p0, v1, v4, p3, p4}, Landroidx/test/uiautomator/InteractionController;->runAndWaitForEvents(Ljava/lang/Runnable;Landroid/app/UiAutomation$AccessibilityEventFilter;J)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public longTapNoSync(II)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 313
    sget-boolean v0, Landroidx/test/uiautomator/InteractionController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 314
    sget-object v0, Landroidx/test/uiautomator/InteractionController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "longTapNoSync ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/test/uiautomator/InteractionController;->touchDown(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 319
    invoke-direct {p0, p1, p2}, Landroidx/test/uiautomator/InteractionController;->touchUp(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    const/4 v0, 0x1

    return v0

    .line 323
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public openNotification()Z
    .locals 2

    .line 815
    invoke-virtual {p0}, Landroidx/test/uiautomator/InteractionController;->getUiAutomation()Landroid/app/UiAutomation;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/UiAutomation;->performGlobalAction(I)Z

    move-result v0

    return v0
.end method

.method public openQuickSettings()Z
    .locals 2

    .line 825
    invoke-virtual {p0}, Landroidx/test/uiautomator/InteractionController;->getUiAutomation()Landroid/app/UiAutomation;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/app/UiAutomation;->performGlobalAction(I)Z

    move-result v0

    return v0
.end method

.method public varargs performMultiPointerGesture([[Landroid/view/MotionEvent$PointerCoords;)Z
    .locals 28
    .param p1, "touches"    # [[Landroid/view/MotionEvent$PointerCoords;

    .line 722
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    .line 723
    .local v2, "ret":Z
    array-length v3, v1

    const/4 v4, 0x2

    if-lt v3, v4, :cond_9

    .line 728
    const/4 v3, 0x0

    .line 729
    .local v3, "maxSteps":I
    const/4 v4, 0x0

    .local v4, "x":I
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_1

    .line 730
    aget-object v5, v1, v4

    array-length v5, v5

    if-ge v3, v5, :cond_0

    aget-object v5, v1, v4

    array-length v5, v5

    goto :goto_1

    :cond_0
    move v5, v3

    :goto_1
    move v3, v5

    .line 729
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 733
    .end local v4    # "x":I
    :cond_1
    array-length v4, v1

    new-array v4, v4, [Landroid/view/MotionEvent$PointerProperties;

    .line 734
    .local v4, "properties":[Landroid/view/MotionEvent$PointerProperties;
    array-length v5, v1

    new-array v15, v5, [Landroid/view/MotionEvent$PointerCoords;

    .line 735
    .local v15, "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    const/4 v5, 0x0

    .local v5, "x":I
    :goto_2
    array-length v6, v1

    const/16 v21, 0x0

    if-ge v5, v6, :cond_2

    .line 736
    new-instance v6, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v6}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 737
    .local v6, "prop":Landroid/view/MotionEvent$PointerProperties;
    iput v5, v6, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 738
    invoke-static {}, Landroidx/test/uiautomator/Configurator;->getInstance()Landroidx/test/uiautomator/Configurator;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/test/uiautomator/Configurator;->getToolType()I

    move-result v7

    iput v7, v6, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 739
    aput-object v6, v4, v5

    .line 742
    aget-object v7, v1, v5

    aget-object v7, v7, v21

    aput-object v7, v15, v5

    .line 735
    .end local v6    # "prop":Landroid/view/MotionEvent$PointerProperties;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 746
    .end local v5    # "x":I
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    .line 748
    .local v22, "downTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1002

    const/16 v24, 0x0

    move-wide/from16 v5, v22

    move-object v11, v4

    move-object v12, v15

    move-object/from16 v25, v15

    .end local v15    # "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    .local v25, "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v24

    invoke-static/range {v5 .. v20}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v5

    .line 750
    .local v5, "event":Landroid/view/MotionEvent;
    invoke-direct {v0, v5}, Landroidx/test/uiautomator/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    move-result v6

    and-int/2addr v2, v6

    .line 752
    const/4 v6, 0x1

    move-object/from16 v24, v5

    move v15, v6

    .end local v5    # "event":Landroid/view/MotionEvent;
    .local v15, "x":I
    .local v24, "event":Landroid/view/MotionEvent;
    :goto_3
    array-length v5, v1

    if-ge v15, v5, :cond_3

    .line 753
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const/4 v5, 0x5

    invoke-direct {v0, v5, v15}, Landroidx/test/uiautomator/InteractionController;->getPointerAction(II)I

    move-result v9

    add-int/lit8 v10, v15, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1002

    const/16 v26, 0x0

    move-wide/from16 v5, v22

    move-object v11, v4

    move-object/from16 v12, v25

    move/from16 v27, v15

    .end local v15    # "x":I
    .local v27, "x":I
    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v26

    invoke-static/range {v5 .. v20}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v5

    .line 756
    .end local v24    # "event":Landroid/view/MotionEvent;
    .restart local v5    # "event":Landroid/view/MotionEvent;
    invoke-direct {v0, v5}, Landroidx/test/uiautomator/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    move-result v6

    and-int/2addr v2, v6

    .line 752
    add-int/lit8 v15, v27, 0x1

    move-object/from16 v24, v5

    .end local v27    # "x":I
    .restart local v15    # "x":I
    goto :goto_3

    .end local v5    # "event":Landroid/view/MotionEvent;
    .restart local v24    # "event":Landroid/view/MotionEvent;
    :cond_3
    move/from16 v27, v15

    .line 760
    .end local v15    # "x":I
    const/4 v5, 0x1

    move v15, v5

    .local v15, "i":I
    :goto_4
    add-int/lit8 v5, v3, -0x1

    if-ge v15, v5, :cond_6

    .line 762
    const/4 v5, 0x0

    .local v5, "x":I
    :goto_5
    array-length v6, v1

    if-ge v5, v6, :cond_5

    .line 764
    aget-object v6, v1, v5

    array-length v6, v6

    if-le v6, v15, :cond_4

    .line 765
    aget-object v6, v1, v5

    aget-object v6, v6, v15

    aput-object v6, v25, v5

    goto :goto_6

    .line 767
    :cond_4
    aget-object v6, v1, v5

    aget-object v7, v1, v5

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    aget-object v6, v6, v7

    aput-object v6, v25, v5

    .line 762
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 770
    .end local v5    # "x":I
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const/4 v9, 0x2

    array-length v10, v1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1002

    const/16 v26, 0x0

    move-wide/from16 v5, v22

    move-object v11, v4

    move-object/from16 v12, v25

    move/from16 v27, v15

    .end local v15    # "i":I
    .local v27, "i":I
    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v26

    invoke-static/range {v5 .. v20}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v5

    .line 774
    .end local v24    # "event":Landroid/view/MotionEvent;
    .local v5, "event":Landroid/view/MotionEvent;
    invoke-direct {v0, v5}, Landroidx/test/uiautomator/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    move-result v6

    and-int/2addr v2, v6

    .line 775
    const-wide/16 v6, 0x5

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 760
    add-int/lit8 v15, v27, 0x1

    move-object/from16 v24, v5

    .end local v27    # "i":I
    .restart local v15    # "i":I
    goto :goto_4

    .end local v5    # "event":Landroid/view/MotionEvent;
    .restart local v24    # "event":Landroid/view/MotionEvent;
    :cond_6
    move/from16 v27, v15

    .line 779
    .end local v15    # "i":I
    const/4 v5, 0x0

    .local v5, "x":I
    :goto_7
    array-length v6, v1

    if-ge v5, v6, :cond_7

    .line 780
    aget-object v6, v1, v5

    aget-object v7, v1, v5

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    aget-object v6, v6, v7

    aput-object v6, v25, v5

    .line 779
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 783
    .end local v5    # "x":I
    :cond_7
    const/4 v5, 0x1

    move v15, v5

    .local v15, "x":I
    :goto_8
    array-length v5, v1

    if-ge v15, v5, :cond_8

    .line 784
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const/4 v5, 0x6

    invoke-direct {v0, v5, v15}, Landroidx/test/uiautomator/InteractionController;->getPointerAction(II)I

    move-result v9

    add-int/lit8 v10, v15, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1002

    const/16 v26, 0x0

    move-wide/from16 v5, v22

    move-object v11, v4

    move-object/from16 v12, v25

    move/from16 v27, v15

    .end local v15    # "x":I
    .local v27, "x":I
    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v26

    invoke-static/range {v5 .. v20}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v5

    .line 787
    .end local v24    # "event":Landroid/view/MotionEvent;
    .local v5, "event":Landroid/view/MotionEvent;
    invoke-direct {v0, v5}, Landroidx/test/uiautomator/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    move-result v6

    and-int/2addr v2, v6

    .line 783
    add-int/lit8 v15, v27, 0x1

    move-object/from16 v24, v5

    .end local v27    # "x":I
    .restart local v15    # "x":I
    goto :goto_8

    .end local v5    # "event":Landroid/view/MotionEvent;
    .restart local v24    # "event":Landroid/view/MotionEvent;
    :cond_8
    move/from16 v27, v15

    .line 790
    .end local v15    # "x":I
    sget-object v5, Landroidx/test/uiautomator/InteractionController;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v25, v21

    iget v7, v7, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1002

    const/16 v20, 0x0

    move-wide/from16 v5, v22

    move-object v11, v4

    move-object/from16 v12, v25

    invoke-static/range {v5 .. v20}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v5

    .line 794
    .end local v24    # "event":Landroid/view/MotionEvent;
    .restart local v5    # "event":Landroid/view/MotionEvent;
    invoke-direct {v0, v5}, Landroidx/test/uiautomator/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    move-result v6

    and-int/2addr v2, v6

    .line 795
    return v2

    .line 724
    .end local v3    # "maxSteps":I
    .end local v4    # "properties":[Landroid/view/MotionEvent$PointerProperties;
    .end local v5    # "event":Landroid/view/MotionEvent;
    .end local v22    # "downTime":J
    .end local v25    # "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    :cond_9
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Must provide coordinates for at least 2 pointers"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public scrollSwipe(IIIII)Z
    .locals 9
    .param p1, "downX"    # I
    .param p2, "downY"    # I
    .param p3, "upX"    # I
    .param p4, "upY"    # I
    .param p5, "steps"    # I

    .line 385
    sget-object v0, Landroidx/test/uiautomator/InteractionController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scrollSwipe ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    new-instance v1, Landroidx/test/uiautomator/InteractionController$4;

    move-object v2, v1

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v2 .. v8}, Landroidx/test/uiautomator/InteractionController$4;-><init>(Landroidx/test/uiautomator/InteractionController;IIIII)V

    .line 397
    .local v1, "command":Ljava/lang/Runnable;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 398
    .local v2, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/accessibility/AccessibilityEvent;>;"
    new-instance v3, Landroidx/test/uiautomator/InteractionController$EventCollectingPredicate;

    const/16 v4, 0x1000

    invoke-direct {v3, p0, v4, v2}, Landroidx/test/uiautomator/InteractionController$EventCollectingPredicate;-><init>(Landroidx/test/uiautomator/InteractionController;ILjava/util/List;)V

    invoke-static {}, Landroidx/test/uiautomator/Configurator;->getInstance()Landroidx/test/uiautomator/Configurator;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/test/uiautomator/Configurator;->getScrollAcknowledgmentTimeout()J

    move-result-wide v5

    invoke-direct {p0, v1, v3, v5, v6}, Landroidx/test/uiautomator/InteractionController;->runAndWaitForEvents(Ljava/lang/Runnable;Landroid/app/UiAutomation$AccessibilityEventFilter;J)Landroid/view/accessibility/AccessibilityEvent;

    .line 402
    invoke-direct {p0, v2, v4}, Landroidx/test/uiautomator/InteractionController;->getLastMatchingEvent(Ljava/util/List;I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v3

    .line 405
    .local v3, "event":Landroid/view/accessibility/AccessibilityEvent;
    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 407
    invoke-direct {p0, v2}, Landroidx/test/uiautomator/InteractionController;->recycleAccessibilityEvents(Ljava/util/List;)V

    .line 408
    return v4

    .line 412
    :cond_0
    const/4 v5, 0x0

    .line 413
    .local v5, "foundEnd":Z
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityEvent;->getFromIndex()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, -0x1

    if-eq v6, v8, :cond_3

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityEvent;->getToIndex()I

    move-result v6

    if-eq v6, v8, :cond_3

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityEvent;->getItemCount()I

    move-result v6

    if-eq v6, v8, :cond_3

    .line 414
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityEvent;->getFromIndex()I

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityEvent;->getItemCount()I

    move-result v6

    sub-int/2addr v6, v7

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityEvent;->getToIndex()I

    move-result v8

    if-ne v6, v8, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v6, 0x1

    :goto_1
    move v5, v6

    .line 416
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "scrollSwipe reached scroll end: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 417
    :cond_3
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityEvent;->getScrollX()I

    move-result v6

    if-eq v6, v8, :cond_9

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityEvent;->getScrollY()I

    move-result v6

    if-eq v6, v8, :cond_9

    .line 419
    if-ne p1, p3, :cond_6

    .line 421
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityEvent;->getScrollY()I

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityEvent;->getScrollY()I

    move-result v6

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityEvent;->getMaxScrollY()I

    move-result v8

    if-ne v6, v8, :cond_4

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v6, 0x1

    :goto_3
    move v5, v6

    .line 423
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Vertical scrollSwipe reached scroll end: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 424
    :cond_6
    if-ne p2, p4, :cond_9

    .line 426
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityEvent;->getScrollX()I

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityEvent;->getScrollX()I

    move-result v6

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityEvent;->getMaxScrollX()I

    move-result v8

    if-ne v6, v8, :cond_7

    goto :goto_4

    :cond_7
    const/4 v6, 0x0

    goto :goto_5

    :cond_8
    :goto_4
    const/4 v6, 0x1

    :goto_5
    move v5, v6

    .line 428
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Horizontal scrollSwipe reached scroll end: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_9
    :goto_6
    invoke-direct {p0, v2}, Landroidx/test/uiautomator/InteractionController;->recycleAccessibilityEvents(Ljava/util/List;)V

    .line 432
    if-nez v5, :cond_a

    const/4 v4, 0x1

    :cond_a
    return v4
.end method

.method public sendKey(II)Z
    .locals 19
    .param p1, "keyCode"    # I
    .param p2, "metaState"    # I

    .line 579
    move-object/from16 v0, p0

    sget-boolean v1, Landroidx/test/uiautomator/InteractionController;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 580
    sget-object v1, Landroidx/test/uiautomator/InteractionController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendKey ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v15, p1

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v14, p2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 579
    :cond_0
    move/from16 v15, p1

    move/from16 v14, p2

    .line 583
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 584
    .local v1, "eventTime":J
    new-instance v16, Landroid/view/KeyEvent;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x101

    move-object/from16 v3, v16

    move-wide v4, v1

    move-wide v6, v1

    move/from16 v9, p1

    move/from16 v11, p2

    move/from16 v14, v17

    move/from16 v15, v18

    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v15, v16

    .line 587
    .local v15, "downEvent":Landroid/view/KeyEvent;
    invoke-direct {v0, v15}, Landroidx/test/uiautomator/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 588
    new-instance v16, Landroid/view/KeyEvent;

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x101

    move-object/from16 v3, v16

    move-wide v4, v1

    move-wide v6, v1

    move/from16 v9, p1

    move/from16 v11, p2

    move-object/from16 v18, v15

    .end local v15    # "downEvent":Landroid/view/KeyEvent;
    .local v18, "downEvent":Landroid/view/KeyEvent;
    move/from16 v15, v17

    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 591
    .local v3, "upEvent":Landroid/view/KeyEvent;
    invoke-direct {v0, v3}, Landroidx/test/uiautomator/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 592
    const/4 v4, 0x1

    return v4

    .line 587
    .end local v3    # "upEvent":Landroid/view/KeyEvent;
    .end local v18    # "downEvent":Landroid/view/KeyEvent;
    .restart local v15    # "downEvent":Landroid/view/KeyEvent;
    :cond_1
    move-object/from16 v18, v15

    .line 595
    .end local v15    # "downEvent":Landroid/view/KeyEvent;
    .restart local v18    # "downEvent":Landroid/view/KeyEvent;
    :cond_2
    const/4 v3, 0x0

    return v3
.end method

.method public sendKeyAndWaitForEvent(IIIJ)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "metaState"    # I
    .param p3, "eventType"    # I
    .param p4, "timeout"    # J

    .line 190
    new-instance v0, Landroidx/test/uiautomator/InteractionController$1;

    invoke-direct {v0, p0, p1, p2}, Landroidx/test/uiautomator/InteractionController$1;-><init>(Landroidx/test/uiautomator/InteractionController;II)V

    .line 206
    .local v0, "command":Ljava/lang/Runnable;
    new-instance v1, Landroidx/test/uiautomator/InteractionController$WaitForAnyEventPredicate;

    invoke-direct {v1, p0, p3}, Landroidx/test/uiautomator/InteractionController$WaitForAnyEventPredicate;-><init>(Landroidx/test/uiautomator/InteractionController;I)V

    invoke-direct {p0, v0, v1, p4, p5}, Landroidx/test/uiautomator/InteractionController;->runAndWaitForEvents(Ljava/lang/Runnable;Landroid/app/UiAutomation$AccessibilityEventFilter;J)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public sendText(Ljava/lang/String;)Z
    .locals 10
    .param p1, "text"    # Ljava/lang/String;

    .line 553
    sget-boolean v0, Landroidx/test/uiautomator/InteractionController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 554
    sget-object v0, Landroidx/test/uiautomator/InteractionController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendText ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_0
    iget-object v0, p0, Landroidx/test/uiautomator/InteractionController;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v0

    .line 559
    .local v0, "events":[Landroid/view/KeyEvent;
    if-eqz v0, :cond_2

    .line 560
    invoke-static {}, Landroidx/test/uiautomator/Configurator;->getInstance()Landroidx/test/uiautomator/Configurator;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/test/uiautomator/Configurator;->getKeyInjectionDelay()J

    move-result-wide v1

    .line 561
    .local v1, "keyDelay":J
    move-object v3, v0

    .local v3, "arr$":[Landroid/view/KeyEvent;
    array-length v4, v3

    .local v4, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 567
    .local v6, "event2":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v7

    .line 569
    .local v7, "event":Landroid/view/KeyEvent;
    invoke-direct {p0, v7}, Landroidx/test/uiautomator/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 570
    return v9

    .line 572
    :cond_1
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 561
    .end local v6    # "event2":Landroid/view/KeyEvent;
    .end local v7    # "event":Landroid/view/KeyEvent;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 575
    .end local v1    # "keyDelay":J
    .end local v3    # "arr$":[Landroid/view/KeyEvent;
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public setRotationLeft()V
    .locals 2

    .line 619
    invoke-virtual {p0}, Landroidx/test/uiautomator/InteractionController;->getUiAutomation()Landroid/app/UiAutomation;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/UiAutomation;->setRotation(I)Z

    .line 620
    return-void
.end method

.method public setRotationNatural()V
    .locals 2

    .line 631
    invoke-virtual {p0}, Landroidx/test/uiautomator/InteractionController;->getUiAutomation()Landroid/app/UiAutomation;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/UiAutomation;->setRotation(I)Z

    .line 632
    return-void
.end method

.method public setRotationRight()V
    .locals 2

    .line 607
    invoke-virtual {p0}, Landroidx/test/uiautomator/InteractionController;->getUiAutomation()Landroid/app/UiAutomation;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/UiAutomation;->setRotation(I)Z

    .line 608
    return-void
.end method

.method public sleepDevice()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 673
    invoke-virtual {p0}, Landroidx/test/uiautomator/InteractionController;->isScreenOn()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 674
    const/16 v0, 0x1a

    invoke-virtual {p0, v0, v1}, Landroidx/test/uiautomator/InteractionController;->sendKey(II)Z

    .line 675
    const/4 v0, 0x1

    return v0

    .line 677
    :cond_0
    return v1
.end method

.method public swipe(IIIII)Z
    .locals 7
    .param p1, "downX"    # I
    .param p2, "downY"    # I
    .param p3, "upX"    # I
    .param p4, "upY"    # I
    .param p5, "steps"    # I

    .line 460
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroidx/test/uiautomator/InteractionController;->swipe(IIIIIZ)Z

    move-result v0

    return v0
.end method

.method public swipe(IIIIIZ)Z
    .locals 13
    .param p1, "downX"    # I
    .param p2, "downY"    # I
    .param p3, "upX"    # I
    .param p4, "upY"    # I
    .param p5, "steps"    # I
    .param p6, "drag"    # Z

    .line 474
    move-object v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    const/4 v3, 0x0

    .line 475
    .local v3, "ret":Z
    move/from16 v4, p5

    .line 476
    .local v4, "swipeSteps":I
    const-wide/16 v5, 0x0

    .line 477
    .local v5, "xStep":D
    const-wide/16 v7, 0x0

    .line 480
    .local v7, "yStep":D
    if-nez v4, :cond_0

    .line 481
    const/4 v4, 0x1

    .line 483
    :cond_0
    sub-int v9, v1, p1

    int-to-double v9, v9

    int-to-double v11, v4

    div-double/2addr v9, v11

    .line 484
    .end local v5    # "xStep":D
    .local v9, "xStep":D
    sub-int v5, v2, p2

    int-to-double v5, v5

    int-to-double v11, v4

    div-double/2addr v5, v11

    .line 487
    .end local v7    # "yStep":D
    .local v5, "yStep":D
    invoke-direct {p0, p1, p2}, Landroidx/test/uiautomator/InteractionController;->touchDown(II)Z

    move-result v3

    .line 488
    if-eqz p6, :cond_1

    .line 489
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v7

    int-to-long v7, v7

    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V

    .line 490
    :cond_1
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_0
    if-ge v7, v4, :cond_3

    .line 491
    int-to-double v11, v7

    mul-double v11, v11, v9

    double-to-int v8, v11

    add-int/2addr v8, p1

    int-to-double v11, v7

    mul-double v11, v11, v5

    double-to-int v11, v11

    add-int/2addr v11, p2

    invoke-direct {p0, v8, v11}, Landroidx/test/uiautomator/InteractionController;->touchMove(II)Z

    move-result v8

    and-int/2addr v3, v8

    .line 492
    if-nez v3, :cond_2

    .line 493
    goto :goto_1

    .line 498
    :cond_2
    const-wide/16 v11, 0x5

    invoke-static {v11, v12}, Landroid/os/SystemClock;->sleep(J)V

    .line 490
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 500
    .end local v7    # "i":I
    :cond_3
    :goto_1
    if-eqz p6, :cond_4

    .line 501
    const-wide/16 v7, 0x64

    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V

    .line 502
    :cond_4
    invoke-direct {p0, v1, v2}, Landroidx/test/uiautomator/InteractionController;->touchUp(II)Z

    move-result v7

    and-int/2addr v3, v7

    .line 503
    return v3
.end method

.method public swipe([Landroid/graphics/Point;I)Z
    .locals 12
    .param p1, "segments"    # [Landroid/graphics/Point;
    .param p2, "segmentSteps"    # I

    .line 513
    const/4 v0, 0x0

    .line 514
    .local v0, "ret":Z
    move v1, p2

    .line 515
    .local v1, "swipeSteps":I
    const-wide/16 v2, 0x0

    .line 516
    .local v2, "xStep":D
    const-wide/16 v4, 0x0

    .line 519
    .local v4, "yStep":D
    if-nez p2, :cond_0

    .line 520
    const/4 p2, 0x1

    .line 523
    :cond_0
    array-length v6, p1

    const/4 v7, 0x0

    if-nez v6, :cond_1

    .line 524
    return v7

    .line 527
    :cond_1
    aget-object v6, p1, v7

    iget v6, v6, Landroid/graphics/Point;->x:I

    aget-object v7, p1, v7

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v6, v7}, Landroidx/test/uiautomator/InteractionController;->touchDown(II)Z

    move-result v0

    .line 528
    const/4 v6, 0x0

    .local v6, "seg":I
    :goto_0
    array-length v7, p1

    if-ge v6, v7, :cond_5

    .line 529
    add-int/lit8 v7, v6, 0x1

    array-length v8, p1

    if-ge v7, v8, :cond_4

    .line 531
    add-int/lit8 v7, v6, 0x1

    aget-object v7, p1, v7

    iget v7, v7, Landroid/graphics/Point;->x:I

    aget-object v8, p1, v6

    iget v8, v8, Landroid/graphics/Point;->x:I

    sub-int/2addr v7, v8

    int-to-double v7, v7

    int-to-double v9, p2

    div-double/2addr v7, v9

    .line 532
    .end local v2    # "xStep":D
    .local v7, "xStep":D
    add-int/lit8 v2, v6, 0x1

    aget-object v2, p1, v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    aget-object v3, p1, v6

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    int-to-double v9, p2

    div-double/2addr v2, v9

    .line 534
    .end local v4    # "yStep":D
    .local v2, "yStep":D
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_3

    .line 535
    aget-object v5, p1, v6

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-double v9, v4

    mul-double v9, v9, v7

    double-to-int v9, v9

    add-int/2addr v5, v9

    aget-object v9, p1, v6

    iget v9, v9, Landroid/graphics/Point;->y:I

    int-to-double v10, v4

    mul-double v10, v10, v2

    double-to-int v10, v10

    add-int/2addr v9, v10

    invoke-direct {p0, v5, v9}, Landroidx/test/uiautomator/InteractionController;->touchMove(II)Z

    move-result v5

    and-int/2addr v0, v5

    .line 537
    if-nez v0, :cond_2

    .line 538
    move-wide v4, v2

    move-wide v2, v7

    goto :goto_2

    .line 543
    :cond_2
    const-wide/16 v9, 0x5

    invoke-static {v9, v10}, Landroid/os/SystemClock;->sleep(J)V

    .line 534
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    move-wide v4, v2

    move-wide v2, v7

    .line 528
    .end local v7    # "xStep":D
    .local v2, "xStep":D
    .local v4, "yStep":D
    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 547
    .end local v6    # "seg":I
    :cond_5
    array-length v6, p1

    add-int/lit8 v6, v6, -0x1

    aget-object v6, p1, v6

    iget v6, v6, Landroid/graphics/Point;->x:I

    array-length v7, p1

    add-int/lit8 v7, v7, -0x1

    aget-object v7, p1, v7

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v6, v7}, Landroidx/test/uiautomator/InteractionController;->touchUp(II)Z

    move-result v6

    and-int/2addr v0, v6

    .line 548
    return v0
.end method

.method public toggleRecentApps()Z
    .locals 2

    .line 805
    invoke-virtual {p0}, Landroidx/test/uiautomator/InteractionController;->getUiAutomation()Landroid/app/UiAutomation;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/UiAutomation;->performGlobalAction(I)Z

    move-result v0

    return v0
.end method

.method public unfreezeRotation()V
    .locals 2

    .line 649
    invoke-virtual {p0}, Landroidx/test/uiautomator/InteractionController;->getUiAutomation()Landroid/app/UiAutomation;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/app/UiAutomation;->setRotation(I)Z

    .line 650
    return-void
.end method

.method public wakeDevice()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 659
    invoke-virtual {p0}, Landroidx/test/uiautomator/InteractionController;->isScreenOn()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 660
    const/16 v0, 0x1a

    invoke-virtual {p0, v0, v1}, Landroidx/test/uiautomator/InteractionController;->sendKey(II)Z

    .line 661
    const/4 v0, 0x1

    return v0

    .line 663
    :cond_0
    return v1
.end method
