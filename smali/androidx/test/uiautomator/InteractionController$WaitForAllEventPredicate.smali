.class Landroidx/test/uiautomator/InteractionController$WaitForAllEventPredicate;
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
    name = "WaitForAllEventPredicate"
.end annotation


# instance fields
.field mMask:I

.field final synthetic this$0:Landroidx/test/uiautomator/InteractionController;


# direct methods
.method constructor <init>(Landroidx/test/uiautomator/InteractionController;I)V
    .locals 0
    .param p2, "mask"    # I

    .line 127
    iput-object p1, p0, Landroidx/test/uiautomator/InteractionController$WaitForAllEventPredicate;->this$0:Landroidx/test/uiautomator/InteractionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput p2, p0, Landroidx/test/uiautomator/InteractionController$WaitForAllEventPredicate;->mMask:I

    .line 129
    return-void
.end method


# virtual methods
.method public accept(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .param p1, "t"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 134
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    iget v1, p0, Landroidx/test/uiautomator/InteractionController$WaitForAllEventPredicate;->mMask:I

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 136
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    not-int v0, v0

    and-int/2addr v0, v1

    iput v0, p0, Landroidx/test/uiautomator/InteractionController$WaitForAllEventPredicate;->mMask:I

    .line 139
    if-eqz v0, :cond_0

    .line 140
    return v2

    .line 143
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 147
    :cond_1
    return v2
.end method
