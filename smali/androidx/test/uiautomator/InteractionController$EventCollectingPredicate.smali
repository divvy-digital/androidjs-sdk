.class Landroidx/test/uiautomator/InteractionController$EventCollectingPredicate;
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
    name = "EventCollectingPredicate"
.end annotation


# instance fields
.field mEventsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ">;"
        }
    .end annotation
.end field

.field mMask:I

.field final synthetic this$0:Landroidx/test/uiautomator/InteractionController;


# direct methods
.method constructor <init>(Landroidx/test/uiautomator/InteractionController;ILjava/util/List;)V
    .locals 0
    .param p2, "mask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ">;)V"
        }
    .end annotation

    .line 103
    .local p3, "events":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityEvent;>;"
    iput-object p1, p0, Landroidx/test/uiautomator/InteractionController$EventCollectingPredicate;->this$0:Landroidx/test/uiautomator/InteractionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput p2, p0, Landroidx/test/uiautomator/InteractionController$EventCollectingPredicate;->mMask:I

    .line 105
    iput-object p3, p0, Landroidx/test/uiautomator/InteractionController$EventCollectingPredicate;->mEventsList:Ljava/util/List;

    .line 106
    return-void
.end method


# virtual methods
.method public accept(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "t"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 111
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    iget v1, p0, Landroidx/test/uiautomator/InteractionController$EventCollectingPredicate;->mMask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Landroidx/test/uiautomator/InteractionController$EventCollectingPredicate;->mEventsList:Ljava/util/List;

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
