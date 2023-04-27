.class Landroidx/test/uiautomator/UiDevice$EventForwardingFilter;
.super Ljava/lang/Object;
.source "UiDevice.java"

# interfaces
.implements Landroid/app/UiAutomation$AccessibilityEventFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/uiautomator/UiDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventForwardingFilter"
.end annotation


# instance fields
.field private mCondition:Landroidx/test/uiautomator/EventCondition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/uiautomator/EventCondition<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/test/uiautomator/EventCondition;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/uiautomator/EventCondition<",
            "*>;)V"
        }
    .end annotation

    .line 207
    .local p1, "condition":Landroidx/test/uiautomator/EventCondition;, "Landroidx/test/uiautomator/EventCondition<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput-object p1, p0, Landroidx/test/uiautomator/UiDevice$EventForwardingFilter;->mCondition:Landroidx/test/uiautomator/EventCondition;

    .line 209
    return-void
.end method


# virtual methods
.method public accept(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 214
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Landroidx/test/uiautomator/UiDevice$EventForwardingFilter;->mCondition:Landroidx/test/uiautomator/EventCondition;

    invoke-virtual {v1, p1}, Landroidx/test/uiautomator/EventCondition;->apply(Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
