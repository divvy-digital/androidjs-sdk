.class final Landroidx/test/uiautomator/Until$5;
.super Landroidx/test/uiautomator/UiObject2Condition;
.source "Until.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/uiautomator/Until;->checkable(Z)Landroidx/test/uiautomator/UiObject2Condition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/test/uiautomator/UiObject2Condition<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$isCheckable:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .line 96
    iput-boolean p1, p0, Landroidx/test/uiautomator/Until$5;->val$isCheckable:Z

    invoke-direct {p0}, Landroidx/test/uiautomator/UiObject2Condition;-><init>()V

    return-void
.end method


# virtual methods
.method apply(Landroidx/test/uiautomator/UiObject2;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "object"    # Landroidx/test/uiautomator/UiObject2;

    .line 99
    invoke-virtual {p1}, Landroidx/test/uiautomator/UiObject2;->isCheckable()Z

    move-result v0

    iget-boolean v1, p0, Landroidx/test/uiautomator/Until$5;->val$isCheckable:Z

    if-ne v0, v1, :cond_0

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

    .line 96
    check-cast p1, Landroidx/test/uiautomator/UiObject2;

    invoke-virtual {p0, p1}, Landroidx/test/uiautomator/Until$5;->apply(Landroidx/test/uiautomator/UiObject2;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
