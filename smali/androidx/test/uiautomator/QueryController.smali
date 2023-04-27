.class Landroidx/test/uiautomator/QueryController;
.super Ljava/lang/Object;
.source "QueryController.java"


# static fields
.field private static final DEBUG:Z

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final QUIET_TIME_TO_BE_CONSIDERED_IDLE_STATE:J = 0x1f4L

.field private static final VERBOSE:Z


# instance fields
.field private mEventListener:Landroid/app/UiAutomation$OnAccessibilityEventListener;

.field private final mInstrumentation:Landroid/app/Instrumentation;

.field private mLastActivityName:Ljava/lang/String;

.field private mLastTraversedText:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private mLogIndent:I

.field private mLogParentIndent:I

.field private mPatternCounter:I

.field private mPatternIndexer:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    const-class v0, Landroidx/test/uiautomator/QueryController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/test/uiautomator/QueryController;->LOG_TAG:Ljava/lang/String;

    .line 43
    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    sput-boolean v1, Landroidx/test/uiautomator/QueryController;->DEBUG:Z

    .line 44
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroidx/test/uiautomator/QueryController;->VERBOSE:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Instrumentation;)V
    .locals 2
    .param p1, "instrumentation"    # Landroid/app/Instrumentation;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/test/uiautomator/QueryController;->mLock:Ljava/lang/Object;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/test/uiautomator/QueryController;->mLastActivityName:Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Landroidx/test/uiautomator/QueryController;->mPatternCounter:I

    .line 55
    iput v0, p0, Landroidx/test/uiautomator/QueryController;->mPatternIndexer:I

    .line 61
    iput v0, p0, Landroidx/test/uiautomator/QueryController;->mLogIndent:I

    .line 62
    iput v0, p0, Landroidx/test/uiautomator/QueryController;->mLogParentIndent:I

    .line 64
    const-string v0, ""

    iput-object v0, p0, Landroidx/test/uiautomator/QueryController;->mLastTraversedText:Ljava/lang/String;

    .line 66
    new-instance v0, Landroidx/test/uiautomator/QueryController$1;

    invoke-direct {v0, p0}, Landroidx/test/uiautomator/QueryController$1;-><init>(Landroidx/test/uiautomator/QueryController;)V

    iput-object v0, p0, Landroidx/test/uiautomator/QueryController;->mEventListener:Landroid/app/UiAutomation$OnAccessibilityEventListener;

    .line 94
    iput-object p1, p0, Landroidx/test/uiautomator/QueryController;->mInstrumentation:Landroid/app/Instrumentation;

    .line 95
    invoke-static {p1}, Landroidx/test/uiautomator/UiDevice;->getUiAutomation(Landroid/app/Instrumentation;)Landroid/app/UiAutomation;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/uiautomator/QueryController;->mEventListener:Landroid/app/UiAutomation$OnAccessibilityEventListener;

    invoke-virtual {v0, v1}, Landroid/app/UiAutomation;->setOnAccessibilityEventListener(Landroid/app/UiAutomation$OnAccessibilityEventListener;)V

    .line 96
    return-void
.end method

.method static synthetic access$000(Landroidx/test/uiautomator/QueryController;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroidx/test/uiautomator/QueryController;

    .line 32
    iget-object v0, p0, Landroidx/test/uiautomator/QueryController;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Landroidx/test/uiautomator/QueryController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroidx/test/uiautomator/QueryController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 32
    iput-object p1, p0, Landroidx/test/uiautomator/QueryController;->mLastActivityName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Landroidx/test/uiautomator/QueryController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroidx/test/uiautomator/QueryController;

    .line 32
    iget-object v0, p0, Landroidx/test/uiautomator/QueryController;->mLastTraversedText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Landroidx/test/uiautomator/QueryController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroidx/test/uiautomator/QueryController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 32
    iput-object p1, p0, Landroidx/test/uiautomator/QueryController;->mLastTraversedText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300()Z
    .locals 1

    .line 32
    sget-boolean v0, Landroidx/test/uiautomator/QueryController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 32
    sget-object v0, Landroidx/test/uiautomator/QueryController;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private findNodePatternRecursive(Landroidx/test/uiautomator/UiSelector;Landroid/view/accessibility/AccessibilityNodeInfo;ILandroidx/test/uiautomator/UiSelector;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 10
    .param p1, "subSelector"    # Landroidx/test/uiautomator/UiSelector;
    .param p2, "fromNode"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p3, "index"    # I
    .param p4, "originalPattern"    # Landroidx/test/uiautomator/UiSelector;

    .line 417
    invoke-virtual {p1, p2, p3}, Landroidx/test/uiautomator/UiSelector;->isMatchFor(Landroid/view/accessibility/AccessibilityNodeInfo;I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_7

    .line 418
    invoke-virtual {p1}, Landroidx/test/uiautomator/UiSelector;->isLeaf()Z

    move-result v0

    const-string v4, "%s"

    if-eqz v0, :cond_3

    .line 419
    iget v0, p0, Landroidx/test/uiautomator/QueryController;->mPatternIndexer:I

    if-nez v0, :cond_1

    .line 420
    sget-boolean v0, Landroidx/test/uiautomator/QueryController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 421
    sget-object v0, Landroidx/test/uiautomator/QueryController;->LOG_TAG:Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v2}, Landroidx/test/uiautomator/UiSelector;->dumpToString(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroidx/test/uiautomator/QueryController;->formatLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_0
    return-object p2

    .line 425
    :cond_1
    sget-boolean v0, Landroidx/test/uiautomator/QueryController;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 426
    sget-object v0, Landroidx/test/uiautomator/QueryController;->LOG_TAG:Ljava/lang/String;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v2}, Landroidx/test/uiautomator/UiSelector;->dumpToString(Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroidx/test/uiautomator/QueryController;->formatLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_2
    iget v0, p0, Landroidx/test/uiautomator/QueryController;->mPatternCounter:I

    add-int/2addr v0, v3

    iput v0, p0, Landroidx/test/uiautomator/QueryController;->mPatternCounter:I

    .line 429
    iget v0, p0, Landroidx/test/uiautomator/QueryController;->mPatternIndexer:I

    sub-int/2addr v0, v3

    iput v0, p0, Landroidx/test/uiautomator/QueryController;->mPatternIndexer:I

    .line 435
    move-object p1, p4

    .line 437
    iget v0, p0, Landroidx/test/uiautomator/QueryController;->mLogParentIndent:I

    iput v0, p0, Landroidx/test/uiautomator/QueryController;->mLogIndent:I

    goto :goto_0

    .line 440
    :cond_3
    sget-boolean v0, Landroidx/test/uiautomator/QueryController;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 441
    sget-object v0, Landroidx/test/uiautomator/QueryController;->LOG_TAG:Ljava/lang/String;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v2}, Landroidx/test/uiautomator/UiSelector;->dumpToString(Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroidx/test/uiautomator/QueryController;->formatLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_4
    invoke-virtual {p1}, Landroidx/test/uiautomator/UiSelector;->hasChildSelector()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 445
    iget v0, p0, Landroidx/test/uiautomator/QueryController;->mLogIndent:I

    add-int/2addr v0, v3

    iput v0, p0, Landroidx/test/uiautomator/QueryController;->mLogIndent:I

    .line 446
    invoke-virtual {p1}, Landroidx/test/uiautomator/UiSelector;->getChildSelector()Landroidx/test/uiautomator/UiSelector;

    move-result-object p1

    .line 447
    if-nez p1, :cond_7

    .line 448
    sget-object v0, Landroidx/test/uiautomator/QueryController;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error: A child selector without content"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    return-object v1

    .line 451
    :cond_5
    invoke-virtual {p1}, Landroidx/test/uiautomator/UiSelector;->hasParentSelector()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 452
    iget v0, p0, Landroidx/test/uiautomator/QueryController;->mLogIndent:I

    add-int/2addr v0, v3

    iput v0, p0, Landroidx/test/uiautomator/QueryController;->mLogIndent:I

    .line 453
    invoke-virtual {p1}, Landroidx/test/uiautomator/UiSelector;->getParentSelector()Landroidx/test/uiautomator/UiSelector;

    move-result-object p1

    .line 454
    if-nez p1, :cond_6

    .line 455
    sget-object v0, Landroidx/test/uiautomator/QueryController;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error: A parent selector without content"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    return-object v1

    .line 458
    :cond_6
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p2

    .line 459
    if-nez p2, :cond_7

    .line 460
    return-object v1

    .line 465
    :cond_7
    :goto_0
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v0

    .line 466
    .local v0, "childCount":I
    const/4 v4, 0x0

    .line 467
    .local v4, "hasNullChild":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v0, :cond_c

    .line 468
    invoke-virtual {p2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v6

    .line 469
    .local v6, "childNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v6, :cond_9

    .line 470
    sget-object v7, Landroidx/test/uiautomator/QueryController;->LOG_TAG:Ljava/lang/String;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    const-string v9, "AccessibilityNodeInfo returned a null child (%d of %d)"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    if-nez v4, :cond_8

    .line 473
    new-array v8, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    const-string v9, "parent = %s"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_8
    const/4 v4, 0x1

    .line 476
    goto :goto_2

    .line 478
    :cond_9
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v7

    if-nez v7, :cond_a

    .line 479
    sget-boolean v7, Landroidx/test/uiautomator/QueryController;->DEBUG:Z

    if-eqz v7, :cond_b

    .line 480
    sget-object v7, Landroidx/test/uiautomator/QueryController;->LOG_TAG:Ljava/lang/String;

    new-array v8, v3, [Ljava/lang/Object;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    const-string v9, "Skipping invisible child: %s"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 484
    :cond_a
    invoke-direct {p0, p1, v6, v5, p4}, Landroidx/test/uiautomator/QueryController;->findNodePatternRecursive(Landroidx/test/uiautomator/UiSelector;Landroid/view/accessibility/AccessibilityNodeInfo;ILandroidx/test/uiautomator/UiSelector;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v7

    .line 486
    .local v7, "retNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v7, :cond_b

    .line 487
    return-object v7

    .line 467
    .end local v6    # "childNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v7    # "retNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_b
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 490
    .end local v5    # "i":I
    :cond_c
    return-object v1
.end method

.method private findNodeRegularRecursive(Landroidx/test/uiautomator/UiSelector;Landroid/view/accessibility/AccessibilityNodeInfo;I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 10
    .param p1, "subSelector"    # Landroidx/test/uiautomator/UiSelector;
    .param p2, "fromNode"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p3, "index"    # I

    .line 305
    invoke-virtual {p1, p2, p3}, Landroidx/test/uiautomator/UiSelector;->isMatchFor(Landroid/view/accessibility/AccessibilityNodeInfo;I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    .line 306
    sget-boolean v0, Landroidx/test/uiautomator/QueryController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 307
    sget-object v0, Landroidx/test/uiautomator/QueryController;->LOG_TAG:Ljava/lang/String;

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v2}, Landroidx/test/uiautomator/UiSelector;->dumpToString(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "%s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroidx/test/uiautomator/QueryController;->formatLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_0
    invoke-virtual {p1}, Landroidx/test/uiautomator/UiSelector;->isLeaf()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    return-object p2

    .line 313
    :cond_1
    invoke-virtual {p1}, Landroidx/test/uiautomator/UiSelector;->hasChildSelector()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 314
    iget v0, p0, Landroidx/test/uiautomator/QueryController;->mLogIndent:I

    add-int/2addr v0, v3

    iput v0, p0, Landroidx/test/uiautomator/QueryController;->mLogIndent:I

    .line 315
    invoke-virtual {p1}, Landroidx/test/uiautomator/UiSelector;->getChildSelector()Landroidx/test/uiautomator/UiSelector;

    move-result-object p1

    .line 316
    if-nez p1, :cond_4

    .line 317
    sget-object v0, Landroidx/test/uiautomator/QueryController;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error: A child selector without content"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    return-object v1

    .line 320
    :cond_2
    invoke-virtual {p1}, Landroidx/test/uiautomator/UiSelector;->hasParentSelector()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 321
    iget v0, p0, Landroidx/test/uiautomator/QueryController;->mLogIndent:I

    add-int/2addr v0, v3

    iput v0, p0, Landroidx/test/uiautomator/QueryController;->mLogIndent:I

    .line 322
    invoke-virtual {p1}, Landroidx/test/uiautomator/UiSelector;->getParentSelector()Landroidx/test/uiautomator/UiSelector;

    move-result-object p1

    .line 323
    if-nez p1, :cond_3

    .line 324
    sget-object v0, Landroidx/test/uiautomator/QueryController;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error: A parent selector without content"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    return-object v1

    .line 329
    :cond_3
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p2

    .line 330
    if-nez p2, :cond_4

    .line 331
    return-object v1

    .line 335
    :cond_4
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v0

    .line 336
    .local v0, "childCount":I
    const/4 v4, 0x0

    .line 337
    .local v4, "hasNullChild":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_9

    .line 338
    invoke-virtual {p2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v6

    .line 339
    .local v6, "childNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v6, :cond_6

    .line 340
    sget-object v7, Landroidx/test/uiautomator/QueryController;->LOG_TAG:Ljava/lang/String;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    const-string v9, "AccessibilityNodeInfo returned a null child (%d of %d)"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    if-nez v4, :cond_5

    .line 343
    new-array v8, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    const-string v9, "parent = %s"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_5
    const/4 v4, 0x1

    .line 346
    goto :goto_1

    .line 348
    :cond_6
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v7

    if-nez v7, :cond_7

    .line 349
    sget-boolean v7, Landroidx/test/uiautomator/QueryController;->VERBOSE:Z

    if-eqz v7, :cond_8

    .line 350
    sget-object v7, Landroidx/test/uiautomator/QueryController;->LOG_TAG:Ljava/lang/String;

    new-array v8, v3, [Ljava/lang/Object;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    const-string v9, "Skipping invisible child: %s"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 354
    :cond_7
    invoke-direct {p0, p1, v6, v5}, Landroidx/test/uiautomator/QueryController;->findNodeRegularRecursive(Landroidx/test/uiautomator/UiSelector;Landroid/view/accessibility/AccessibilityNodeInfo;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v7

    .line 355
    .local v7, "retNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v7, :cond_8

    .line 356
    return-object v7

    .line 337
    .end local v6    # "childNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v7    # "retNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_8
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 359
    .end local v5    # "i":I
    :cond_9
    return-object v1
.end method

.method private formatLog(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "str"    # Ljava/lang/String;

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 541
    .local v0, "l":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "space":I
    :goto_0
    iget v2, p0, Landroidx/test/uiautomator/QueryController;->mLogIndent:I

    if-ge v1, v2, :cond_0

    .line 542
    const-string v2, ". . "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 543
    .end local v1    # "space":I
    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x2

    const-string v4, ". . [%d]: %s"

    const/4 v5, 0x1

    if-lez v2, :cond_1

    .line 544
    new-array v2, v3, [Ljava/lang/Object;

    iget v3, p0, Landroidx/test/uiautomator/QueryController;->mPatternCounter:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    aput-object p1, v2, v5

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 546
    :cond_1
    new-array v2, v3, [Ljava/lang/Object;

    iget v3, p0, Landroidx/test/uiautomator/QueryController;->mPatternCounter:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    aput-object p1, v2, v5

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getInstrumentation()Landroid/app/Instrumentation;
    .locals 1

    .line 551
    iget-object v0, p0, Landroidx/test/uiautomator/QueryController;->mInstrumentation:Landroid/app/Instrumentation;

    return-object v0
.end method

.method private initializeNewSearch()V
    .locals 1

    .line 125
    const/4 v0, 0x0

    iput v0, p0, Landroidx/test/uiautomator/QueryController;->mPatternCounter:I

    .line 126
    iput v0, p0, Landroidx/test/uiautomator/QueryController;->mPatternIndexer:I

    .line 127
    iput v0, p0, Landroidx/test/uiautomator/QueryController;->mLogIndent:I

    .line 128
    iput v0, p0, Landroidx/test/uiautomator/QueryController;->mLogParentIndent:I

    .line 129
    return-void
.end method

.method private translateCompoundSelector(Landroidx/test/uiautomator/UiSelector;Landroid/view/accessibility/AccessibilityNodeInfo;Z)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 6
    .param p1, "selector"    # Landroidx/test/uiautomator/UiSelector;
    .param p2, "fromNode"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p3, "isCounting"    # Z

    .line 232
    invoke-virtual {p1}, Landroidx/test/uiautomator/UiSelector;->hasContainerSelector()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 234
    invoke-virtual {p1}, Landroidx/test/uiautomator/UiSelector;->getContainerSelector()Landroidx/test/uiautomator/UiSelector;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/test/uiautomator/UiSelector;->hasContainerSelector()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {p1}, Landroidx/test/uiautomator/UiSelector;->getContainerSelector()Landroidx/test/uiautomator/UiSelector;

    move-result-object v0

    invoke-direct {p0, v0, p2, v1}, Landroidx/test/uiautomator/QueryController;->translateCompoundSelector(Landroidx/test/uiautomator/UiSelector;Landroid/view/accessibility/AccessibilityNodeInfo;Z)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p2

    .line 237
    invoke-direct {p0}, Landroidx/test/uiautomator/QueryController;->initializeNewSearch()V

    goto :goto_0

    .line 239
    :cond_0
    invoke-virtual {p1}, Landroidx/test/uiautomator/UiSelector;->getContainerSelector()Landroidx/test/uiautomator/UiSelector;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroidx/test/uiautomator/QueryController;->translateReqularSelector(Landroidx/test/uiautomator/UiSelector;Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p2

    goto :goto_0

    .line 241
    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/test/uiautomator/QueryController;->translateReqularSelector(Landroidx/test/uiautomator/UiSelector;Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p2

    .line 243
    :goto_0
    const/4 v0, 0x0

    if-nez p2, :cond_3

    .line 244
    sget-boolean v2, Landroidx/test/uiautomator/QueryController;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 245
    sget-object v2, Landroidx/test/uiautomator/QueryController;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Container selector not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v1}, Landroidx/test/uiautomator/UiSelector;->dumpToString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_2
    return-object v0

    .line 249
    :cond_3
    invoke-virtual {p1}, Landroidx/test/uiautomator/UiSelector;->hasPatternSelector()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v2, :cond_6

    .line 250
    invoke-virtual {p1}, Landroidx/test/uiautomator/UiSelector;->getPatternSelector()Landroidx/test/uiautomator/UiSelector;

    move-result-object v2

    invoke-direct {p0, v2, p2, p3}, Landroidx/test/uiautomator/QueryController;->translatePatternSelector(Landroidx/test/uiautomator/UiSelector;Landroid/view/accessibility/AccessibilityNodeInfo;Z)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p2

    .line 253
    if-eqz p3, :cond_4

    .line 254
    sget-object v2, Landroidx/test/uiautomator/QueryController;->LOG_TAG:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Landroidx/test/uiautomator/QueryController;->mPatternCounter:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    aput-object p1, v4, v3

    const-string v1, "Counted %d instances of: %s"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    return-object v0

    .line 258
    :cond_4
    if-nez p2, :cond_6

    .line 259
    sget-boolean v2, Landroidx/test/uiautomator/QueryController;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 260
    sget-object v2, Landroidx/test/uiautomator/QueryController;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pattern selector not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v1}, Landroidx/test/uiautomator/UiSelector;->dumpToString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_5
    return-object v0

    .line 269
    :cond_6
    invoke-virtual {p1}, Landroidx/test/uiautomator/UiSelector;->hasContainerSelector()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p1}, Landroidx/test/uiautomator/UiSelector;->hasPatternSelector()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 270
    :cond_7
    invoke-virtual {p1}, Landroidx/test/uiautomator/UiSelector;->hasChildSelector()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {p1}, Landroidx/test/uiautomator/UiSelector;->hasParentSelector()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 271
    :cond_8
    invoke-direct {p0, p1, p2}, Landroidx/test/uiautomator/QueryController;->translateReqularSelector(Landroidx/test/uiautomator/UiSelector;Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p2

    .line 274
    :cond_9
    if-nez p2, :cond_b

    .line 275
    sget-boolean v1, Landroidx/test/uiautomator/QueryController;->DEBUG:Z

    if-eqz v1, :cond_a

    .line 276
    sget-object v1, Landroidx/test/uiautomator/QueryController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Object Not Found for selector "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_a
    return-object v0

    .line 279
    :cond_b
    sget-object v0, Landroidx/test/uiautomator/QueryController;->LOG_TAG:Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v1

    aput-object p2, v2, v3

    const-string v1, "Matched selector: %s <<==>> [%s]"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return-object p2
.end method

.method private translatePatternSelector(Landroidx/test/uiautomator/UiSelector;Landroid/view/accessibility/AccessibilityNodeInfo;Z)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 3
    .param p1, "subSelector"    # Landroidx/test/uiautomator/UiSelector;
    .param p2, "fromNode"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p3, "isCounting"    # Z

    .line 386
    invoke-virtual {p1}, Landroidx/test/uiautomator/UiSelector;->hasPatternSelector()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 389
    if-eqz p3, :cond_0

    .line 392
    const/4 v0, -0x1

    iput v0, p0, Landroidx/test/uiautomator/QueryController;->mPatternIndexer:I

    goto :goto_0

    .line 395
    :cond_0
    invoke-virtual {p1}, Landroidx/test/uiautomator/UiSelector;->getInstance()I

    move-result v0

    iput v0, p0, Landroidx/test/uiautomator/QueryController;->mPatternIndexer:I

    .line 398
    :goto_0
    invoke-virtual {p1}, Landroidx/test/uiautomator/UiSelector;->getPatternSelector()Landroidx/test/uiautomator/UiSelector;

    move-result-object p1

    .line 399
    if-nez p1, :cond_1

    .line 400
    sget-object v0, Landroidx/test/uiautomator/QueryController;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Pattern portion of the selector is null or not defined"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    return-object v1

    .line 405
    :cond_1
    iget v0, p0, Landroidx/test/uiautomator/QueryController;->mLogIndent:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/test/uiautomator/QueryController;->mLogIndent:I

    iput v0, p0, Landroidx/test/uiautomator/QueryController;->mLogParentIndent:I

    .line 406
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p1}, Landroidx/test/uiautomator/QueryController;->findNodePatternRecursive(Landroidx/test/uiautomator/UiSelector;Landroid/view/accessibility/AccessibilityNodeInfo;ILandroidx/test/uiautomator/UiSelector;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0

    .line 409
    :cond_2
    sget-object v0, Landroidx/test/uiautomator/QueryController;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Selector must have a pattern selector defined"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    return-object v1
.end method

.method private translateReqularSelector(Landroidx/test/uiautomator/UiSelector;Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1
    .param p1, "selector"    # Landroidx/test/uiautomator/UiSelector;
    .param p2, "fromNode"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 299
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/test/uiautomator/QueryController;->findNodeRegularRecursive(Landroidx/test/uiautomator/UiSelector;Landroid/view/accessibility/AccessibilityNodeInfo;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearLastTraversedText()V
    .locals 2

    .line 118
    invoke-virtual {p0}, Landroidx/test/uiautomator/QueryController;->waitForIdle()V

    .line 119
    iget-object v0, p0, Landroidx/test/uiautomator/QueryController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 120
    :try_start_0
    const-string v1, ""

    iput-object v1, p0, Landroidx/test/uiautomator/QueryController;->mLastTraversedText:Ljava/lang/String;

    .line 121
    monitor-exit v0

    .line 122
    return-void

    .line 121
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public findAccessibilityNodeInfo(Landroidx/test/uiautomator/UiSelector;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1
    .param p1, "selector"    # Landroidx/test/uiautomator/UiSelector;

    .line 150
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/test/uiautomator/QueryController;->findAccessibilityNodeInfo(Landroidx/test/uiautomator/UiSelector;Z)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method protected findAccessibilityNodeInfo(Landroidx/test/uiautomator/UiSelector;Z)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 3
    .param p1, "selector"    # Landroidx/test/uiautomator/UiSelector;
    .param p2, "isCounting"    # Z

    .line 155
    invoke-virtual {p0}, Landroidx/test/uiautomator/QueryController;->waitForIdle()V

    .line 156
    invoke-direct {p0}, Landroidx/test/uiautomator/QueryController;->initializeNewSearch()V

    .line 158
    sget-boolean v0, Landroidx/test/uiautomator/QueryController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 159
    sget-object v0, Landroidx/test/uiautomator/QueryController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Searching: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    invoke-virtual {p0}, Landroidx/test/uiautomator/QueryController;->getRootNode()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 162
    .local v0, "rootNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_1

    .line 163
    sget-object v1, Landroidx/test/uiautomator/QueryController;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Cannot proceed when root node is null. Aborted search"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/4 v1, 0x0

    return-object v1

    .line 168
    :cond_1
    new-instance v1, Landroidx/test/uiautomator/UiSelector;

    invoke-direct {v1, p1}, Landroidx/test/uiautomator/UiSelector;-><init>(Landroidx/test/uiautomator/UiSelector;)V

    .line 169
    .local v1, "uiSelector":Landroidx/test/uiautomator/UiSelector;
    invoke-direct {p0, v1, v0, p2}, Landroidx/test/uiautomator/QueryController;->translateCompoundSelector(Landroidx/test/uiautomator/UiSelector;Landroid/view/accessibility/AccessibilityNodeInfo;Z)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    return-object v2
.end method

.method public getCurrentActivityName()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 500
    invoke-virtual {p0}, Landroidx/test/uiautomator/QueryController;->waitForIdle()V

    .line 501
    iget-object v0, p0, Landroidx/test/uiautomator/QueryController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 502
    :try_start_0
    iget-object v1, p0, Landroidx/test/uiautomator/QueryController;->mLastActivityName:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 503
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCurrentPackageName()Ljava/lang/String;
    .locals 3

    .line 511
    invoke-virtual {p0}, Landroidx/test/uiautomator/QueryController;->waitForIdle()V

    .line 512
    invoke-virtual {p0}, Landroidx/test/uiautomator/QueryController;->getRootNode()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 513
    .local v0, "rootNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 514
    return-object v1

    .line 515
    :cond_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public getLastTraversedText()Ljava/lang/String;
    .locals 2

    .line 104
    invoke-virtual {p0}, Landroidx/test/uiautomator/QueryController;->waitForIdle()V

    .line 105
    iget-object v0, p0, Landroidx/test/uiautomator/QueryController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 106
    :try_start_0
    iget-object v1, p0, Landroidx/test/uiautomator/QueryController;->mLastTraversedText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 107
    iget-object v1, p0, Landroidx/test/uiautomator/QueryController;->mLastTraversedText:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 109
    :cond_0
    monitor-exit v0

    .line 110
    const/4 v0, 0x0

    return-object v0

    .line 109
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPatternCount(Landroidx/test/uiautomator/UiSelector;)I
    .locals 1
    .param p1, "selector"    # Landroidx/test/uiautomator/UiSelector;

    .line 140
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/test/uiautomator/QueryController;->findAccessibilityNodeInfo(Landroidx/test/uiautomator/UiSelector;Z)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 141
    iget v0, p0, Landroidx/test/uiautomator/QueryController;->mPatternCounter:I

    return v0
.end method

.method getRootNode()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 7

    .line 178
    const/4 v0, 0x6

    .line 179
    .local v0, "maxRetry":I
    const-wide/16 v1, 0xfa

    .line 180
    .local v1, "waitInterval":J
    const/4 v3, 0x0

    .line 181
    .local v3, "rootNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v4, 0x0

    .local v4, "x":I
    :goto_0
    const/4 v5, 0x6

    if-ge v4, v5, :cond_2

    .line 182
    invoke-direct {p0}, Landroidx/test/uiautomator/QueryController;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v5

    invoke-static {v5}, Landroidx/test/uiautomator/UiDevice;->getUiAutomation(Landroid/app/Instrumentation;)Landroid/app/UiAutomation;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/UiAutomation;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    .line 183
    if-eqz v3, :cond_0

    .line 184
    return-object v3

    .line 186
    :cond_0
    const/4 v5, 0x5

    if-ge v4, v5, :cond_1

    .line 187
    sget-object v5, Landroidx/test/uiautomator/QueryController;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Got null root node from accessibility - Retrying..."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 189
    const-wide/16 v5, 0x2

    mul-long v1, v1, v5

    .line 181
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 192
    .end local v4    # "x":I
    :cond_2
    return-object v3
.end method

.method public waitForIdle()V
    .locals 2

    .line 523
    invoke-static {}, Landroidx/test/uiautomator/Configurator;->getInstance()Landroidx/test/uiautomator/Configurator;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/test/uiautomator/Configurator;->getWaitForIdleTimeout()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/test/uiautomator/QueryController;->waitForIdle(J)V

    .line 524
    return-void
.end method

.method public waitForIdle(J)V
    .locals 3
    .param p1, "timeout"    # J

    .line 532
    :try_start_0
    invoke-direct {p0}, Landroidx/test/uiautomator/QueryController;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/uiautomator/UiDevice;->getUiAutomation(Landroid/app/Instrumentation;)Landroid/app/UiAutomation;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/app/UiAutomation;->waitForIdle(JJ)V
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 536
    goto :goto_0

    .line 534
    :catch_0
    move-exception v0

    .line 535
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    sget-object v1, Landroidx/test/uiautomator/QueryController;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Could not detect idle state."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    .end local v0    # "e":Ljava/util/concurrent/TimeoutException;
    :goto_0
    return-void
.end method
