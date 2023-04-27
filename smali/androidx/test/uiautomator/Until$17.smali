.class final Landroidx/test/uiautomator/Until$17;
.super Landroidx/test/uiautomator/EventCondition;
.source "Until.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/uiautomator/Until;->newWindow()Landroidx/test/uiautomator/EventCondition;
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
.field private mMask:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 335
    invoke-direct {p0}, Landroidx/test/uiautomator/EventCondition;-><init>()V

    .line 336
    const/16 v0, 0x820

    iput v0, p0, Landroidx/test/uiautomator/Until$17;->mMask:I

    return-void
.end method


# virtual methods
.method apply(Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 341
    iget v0, p0, Landroidx/test/uiautomator/Until$17;->mMask:I

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    iput v0, p0, Landroidx/test/uiautomator/Until$17;->mMask:I

    .line 342
    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 335
    check-cast p1, Landroid/view/accessibility/AccessibilityEvent;

    invoke-virtual {p0, p1}, Landroidx/test/uiautomator/Until$17;->apply(Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method getResult()Ljava/lang/Boolean;
    .locals 1

    .line 347
    iget v0, p0, Landroidx/test/uiautomator/Until$17;->mMask:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic getResult()Ljava/lang/Object;
    .locals 1

    .line 335
    invoke-virtual {p0}, Landroidx/test/uiautomator/Until$17;->getResult()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
