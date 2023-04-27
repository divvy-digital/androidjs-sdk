.class Landroidx/test/uiautomator/InteractionController$WaitForAnyEventPredicate;
.super Ljava/lang/Object;
.source "InteractionController.java"

# interfaces
.implements Landroid/app/UiAutomation$AccessibilityEventFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/uiautomator/InteractionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WaitForAnyEventPredicate"
.end annotation


# instance fields
.field mMask:I

.field final synthetic this$0:Landroidx/test/uiautomator/InteractionController;


# direct methods
.method constructor <init>(Landroidx/test/uiautomator/InteractionController;I)V
    .locals 0
    .param p2, "mask"    # I

    .line 79
    iput-object p1, p0, Landroidx/test/uiautomator/InteractionController$WaitForAnyEventPredicate;->this$0:Landroidx/test/uiautomator/InteractionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput p2, p0, Landroidx/test/uiautomator/InteractionController$WaitForAnyEventPredicate;->mMask:I

    .line 81
    return-void
.end method


# virtual methods
.method public accept(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "t"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 85
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    iget v1, p0, Landroidx/test/uiautomator/InteractionController$WaitForAnyEventPredicate;->mMask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 86
    const/4 v0, 0x1

    return v0

    .line 90
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
