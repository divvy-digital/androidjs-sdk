.class Landroidx/test/uiautomator/UiAutomatorInstrumentationTestRunner$1;
.super Ljava/lang/Object;
.source "UiAutomatorInstrumentationTestRunner.java"

# interfaces
.implements Ljunit/framework/TestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/uiautomator/UiAutomatorInstrumentationTestRunner;->getAndroidTestRunner()Landroid/test/AndroidTestRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/test/uiautomator/UiAutomatorInstrumentationTestRunner;


# direct methods
.method constructor <init>(Landroidx/test/uiautomator/UiAutomatorInstrumentationTestRunner;)V
    .locals 0

    .line 64
    iput-object p1, p0, Landroidx/test/uiautomator/UiAutomatorInstrumentationTestRunner$1;->this$0:Landroidx/test/uiautomator/UiAutomatorInstrumentationTestRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addError(Ljunit/framework/Test;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 82
    return-void
.end method

.method public addFailure(Ljunit/framework/Test;Ljunit/framework/AssertionFailedError;)V
    .locals 0
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "e"    # Ljunit/framework/AssertionFailedError;

    .line 78
    return-void
.end method

.method public endTest(Ljunit/framework/Test;)V
    .locals 0
    .param p1, "test"    # Ljunit/framework/Test;

    .line 74
    return-void
.end method

.method public startTest(Ljunit/framework/Test;)V
    .locals 2
    .param p1, "test"    # Ljunit/framework/Test;

    .line 67
    instance-of v0, p1, Landroidx/test/uiautomator/UiAutomatorTestCase;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Landroidx/test/uiautomator/UiAutomatorInstrumentationTestRunner$1;->this$0:Landroidx/test/uiautomator/UiAutomatorInstrumentationTestRunner;

    move-object v1, p1

    check-cast v1, Landroidx/test/uiautomator/UiAutomatorTestCase;

    invoke-virtual {v0, v1}, Landroidx/test/uiautomator/UiAutomatorInstrumentationTestRunner;->initializeUiAutomatorTest(Landroidx/test/uiautomator/UiAutomatorTestCase;)V

    .line 70
    :cond_0
    return-void
.end method
