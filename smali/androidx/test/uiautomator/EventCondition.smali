.class public abstract Landroidx/test/uiautomator/EventCondition;
.super Landroidx/test/uiautomator/Condition;
.source "EventCondition.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/test/uiautomator/Condition<",
        "Landroid/view/accessibility/AccessibilityEvent;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    .local p0, "this":Landroidx/test/uiautomator/EventCondition;, "Landroidx/test/uiautomator/EventCondition<TR;>;"
    invoke-direct {p0}, Landroidx/test/uiautomator/Condition;-><init>()V

    return-void
.end method


# virtual methods
.method abstract apply(Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/Boolean;
.end method

.method bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 25
    .local p0, "this":Landroidx/test/uiautomator/EventCondition;, "Landroidx/test/uiautomator/EventCondition<TR;>;"
    check-cast p1, Landroid/view/accessibility/AccessibilityEvent;

    invoke-virtual {p0, p1}, Landroidx/test/uiautomator/EventCondition;->apply(Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method abstract getResult()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation
.end method
