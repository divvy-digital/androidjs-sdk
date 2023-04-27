.class public Landroidx/test/uiautomator/UiAutomatorInstrumentationTestRunner;
.super Landroid/test/InstrumentationTestRunner;
.source "UiAutomatorInstrumentationTestRunner.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/test/InstrumentationTestRunner;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAndroidTestRunner()Landroid/test/AndroidTestRunner;
    .locals 2

    .line 63
    invoke-super {p0}, Landroid/test/InstrumentationTestRunner;->getAndroidTestRunner()Landroid/test/AndroidTestRunner;

    move-result-object v0

    .line 64
    .local v0, "testRunner":Landroid/test/AndroidTestRunner;
    new-instance v1, Landroidx/test/uiautomator/UiAutomatorInstrumentationTestRunner$1;

    invoke-direct {v1, p0}, Landroidx/test/uiautomator/UiAutomatorInstrumentationTestRunner$1;-><init>(Landroidx/test/uiautomator/UiAutomatorInstrumentationTestRunner;)V

    invoke-virtual {v0, v1}, Landroid/test/AndroidTestRunner;->addTestListener(Ljunit/framework/TestListener;)V

    .line 84
    return-object v0
.end method

.method protected initializeUiAutomatorTest(Landroidx/test/uiautomator/UiAutomatorTestCase;)V
    .locals 1
    .param p1, "test"    # Landroidx/test/uiautomator/UiAutomatorTestCase;

    .line 58
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiAutomatorInstrumentationTestRunner;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/test/uiautomator/UiAutomatorTestCase;->initialize(Landroid/os/Bundle;)V

    .line 59
    return-void
.end method

.method public onStart()V
    .locals 5

    .line 35
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiAutomatorInstrumentationTestRunner;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "traceOutputMode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "traceType":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 37
    const-class v1, Landroidx/test/uiautomator/Tracer$Mode;

    invoke-static {v1, v0}, Landroidx/test/uiautomator/Tracer$Mode;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Landroidx/test/uiautomator/Tracer$Mode;

    .line 38
    .local v1, "mode":Landroidx/test/uiautomator/Tracer$Mode;
    sget-object v2, Landroidx/test/uiautomator/Tracer$Mode;->FILE:Landroidx/test/uiautomator/Tracer$Mode;

    if-eq v1, v2, :cond_0

    sget-object v2, Landroidx/test/uiautomator/Tracer$Mode;->ALL:Landroidx/test/uiautomator/Tracer$Mode;

    if-ne v1, v2, :cond_1

    .line 39
    :cond_0
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiAutomatorInstrumentationTestRunner;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "traceLogFilename"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40
    .local v2, "filename":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 44
    invoke-static {}, Landroidx/test/uiautomator/Tracer;->getInstance()Landroidx/test/uiautomator/Tracer;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/test/uiautomator/Tracer;->setOutputFilename(Ljava/lang/String;)V

    .line 46
    .end local v2    # "filename":Ljava/lang/String;
    :cond_1
    invoke-static {}, Landroidx/test/uiautomator/Tracer;->getInstance()Landroidx/test/uiautomator/Tracer;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/test/uiautomator/Tracer;->setOutputMode(Landroidx/test/uiautomator/Tracer$Mode;)V

    goto :goto_0

    .line 41
    .restart local v2    # "filename":Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Name of log file not specified. Please specify it using traceLogFilename parameter"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 48
    .end local v1    # "mode":Landroidx/test/uiautomator/Tracer$Mode;
    .end local v2    # "filename":Ljava/lang/String;
    :cond_3
    :goto_0
    invoke-super {p0}, Landroid/test/InstrumentationTestRunner;->onStart()V

    .line 49
    return-void
.end method
