.class final Landroidx/test/uiautomator/Until$18;
.super Landroidx/test/uiautomator/EventCondition;
.source "Until.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/uiautomator/Until;->scrollFinished(Landroidx/test/uiautomator/Direction;)Landroidx/test/uiautomator/EventCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/test/uiautomator/EventCondition<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mDirection:Landroidx/test/uiautomator/Direction;

.field private mResult:Ljava/lang/Boolean;

.field final synthetic val$direction:Landroidx/test/uiautomator/Direction;


# direct methods
.method constructor <init>(Landroidx/test/uiautomator/Direction;)V
    .locals 0

    .line 359
    iput-object p1, p0, Landroidx/test/uiautomator/Until$18;->val$direction:Landroidx/test/uiautomator/Direction;

    invoke-direct {p0}, Landroidx/test/uiautomator/EventCondition;-><init>()V

    .line 360
    iput-object p1, p0, Landroidx/test/uiautomator/Until$18;->mDirection:Landroidx/test/uiautomator/Direction;

    .line 361
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/test/uiautomator/Until$18;->mResult:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method apply(Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 365
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getFromIndex()I

    move-result v0

    const-string v1, "Invalid Direction"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eq v0, v4, :cond_4

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getToIndex()I

    move-result v0

    if-eq v0, v4, :cond_4

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getItemCount()I

    move-result v0

    if-eq v0, v4, :cond_4

    .line 368
    sget-object v0, Landroidx/test/uiautomator/Until$19;->$SwitchMap$android$support$test$uiautomator$Direction:[I

    iget-object v4, p0, Landroidx/test/uiautomator/Until$18;->mDirection:Landroidx/test/uiautomator/Direction;

    invoke-virtual {v4}, Landroidx/test/uiautomator/Direction;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_0

    .line 382
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getToIndex()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v3

    if-ne v0, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/uiautomator/Until$18;->mResult:Ljava/lang/Boolean;

    .line 380
    goto/16 :goto_0

    .line 376
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getFromIndex()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/uiautomator/Until$18;->mResult:Ljava/lang/Boolean;

    .line 377
    goto/16 :goto_0

    .line 373
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getToIndex()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v3

    if-ne v0, v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/uiautomator/Until$18;->mResult:Ljava/lang/Boolean;

    .line 374
    goto :goto_0

    .line 370
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getFromIndex()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/uiautomator/Until$18;->mResult:Ljava/lang/Boolean;

    .line 371
    goto :goto_0

    .line 384
    :cond_4
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getScrollX()I

    move-result v0

    if-eq v0, v4, :cond_9

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getScrollY()I

    move-result v0

    if-eq v0, v4, :cond_9

    .line 385
    sget-object v0, Landroidx/test/uiautomator/Until$19;->$SwitchMap$android$support$test$uiautomator$Direction:[I

    iget-object v4, p0, Landroidx/test/uiautomator/Until$18;->mDirection:Landroidx/test/uiautomator/Direction;

    invoke-virtual {v4}, Landroidx/test/uiautomator/Direction;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_1

    .line 399
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getScrollX()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getMaxScrollX()I

    move-result v1

    if-ne v0, v1, :cond_5

    const/4 v2, 0x1

    :cond_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/uiautomator/Until$18;->mResult:Ljava/lang/Boolean;

    .line 397
    goto :goto_0

    .line 393
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getScrollX()I

    move-result v0

    if-nez v0, :cond_6

    const/4 v2, 0x1

    :cond_6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/uiautomator/Until$18;->mResult:Ljava/lang/Boolean;

    .line 394
    goto :goto_0

    .line 390
    :pswitch_6
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getScrollY()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getMaxScrollY()I

    move-result v1

    if-ne v0, v1, :cond_7

    const/4 v2, 0x1

    :cond_7
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/uiautomator/Until$18;->mResult:Ljava/lang/Boolean;

    .line 391
    goto :goto_0

    .line 387
    :pswitch_7
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getScrollY()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v2, 0x1

    :cond_8
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/uiautomator/Until$18;->mResult:Ljava/lang/Boolean;

    .line 388
    nop

    .line 404
    :cond_9
    :goto_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Landroidx/test/uiautomator/Until$18;->mResult:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 359
    check-cast p1, Landroid/view/accessibility/AccessibilityEvent;

    invoke-virtual {p0, p1}, Landroidx/test/uiautomator/Until$18;->apply(Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method getResult()Ljava/lang/Boolean;
    .locals 1

    .line 411
    iget-object v0, p0, Landroidx/test/uiautomator/Until$18;->mResult:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic getResult()Ljava/lang/Object;
    .locals 1

    .line 359
    invoke-virtual {p0}, Landroidx/test/uiautomator/Until$18;->getResult()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
