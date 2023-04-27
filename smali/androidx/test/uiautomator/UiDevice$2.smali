.class Landroidx/test/uiautomator/UiDevice$2;
.super Ljava/lang/Object;
.source "UiDevice.java"

# interfaces
.implements Landroid/app/UiAutomation$AccessibilityEventFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/uiautomator/UiDevice;->waitForWindowUpdate(Ljava/lang/String;J)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/test/uiautomator/UiDevice;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroidx/test/uiautomator/UiDevice;Ljava/lang/String;)V
    .locals 0

    .line 974
    iput-object p1, p0, Landroidx/test/uiautomator/UiDevice$2;->this$0:Landroidx/test/uiautomator/UiDevice;

    iput-object p2, p0, Landroidx/test/uiautomator/UiDevice$2;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .param p1, "t"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 977
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x800

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 978
    iget-object v0, p0, Landroidx/test/uiautomator/UiDevice$2;->val$packageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2

    .line 980
    :cond_2
    return v2
.end method
