.class public Landroidx/test/uiautomator/UiAutomatorTestCase;
.super Landroid/test/InstrumentationTestCase;
.source "UiAutomatorTestCase.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mAutomationSupport:Landroidx/test/uiautomator/IAutomationSupport;

.field private mDevice:Landroidx/test/uiautomator/UiDevice;

.field private mParams:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroid/test/InstrumentationTestCase;-><init>()V

    return-void
.end method


# virtual methods
.method public getAutomationSupport()Landroidx/test/uiautomator/IAutomationSupport;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 65
    iget-object v0, p0, Landroidx/test/uiautomator/UiAutomatorTestCase;->mAutomationSupport:Landroidx/test/uiautomator/IAutomationSupport;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Landroidx/test/uiautomator/InstrumentationAutomationSupport;

    invoke-virtual {p0}, Landroidx/test/uiautomator/UiAutomatorTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/test/uiautomator/InstrumentationAutomationSupport;-><init>(Landroid/app/Instrumentation;)V

    iput-object v0, p0, Landroidx/test/uiautomator/UiAutomatorTestCase;->mAutomationSupport:Landroidx/test/uiautomator/IAutomationSupport;

    .line 68
    :cond_0
    iget-object v0, p0, Landroidx/test/uiautomator/UiAutomatorTestCase;->mAutomationSupport:Landroidx/test/uiautomator/IAutomationSupport;

    return-object v0
.end method

.method public getParams()Landroid/os/Bundle;
    .locals 1

    .line 53
    iget-object v0, p0, Landroidx/test/uiautomator/UiAutomatorTestCase;->mParams:Landroid/os/Bundle;

    return-object v0
.end method

.method public getUiDevice()Landroidx/test/uiautomator/UiDevice;
    .locals 1

    .line 43
    iget-object v0, p0, Landroidx/test/uiautomator/UiAutomatorTestCase;->mDevice:Landroidx/test/uiautomator/UiDevice;

    return-object v0
.end method

.method initialize(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "params"    # Landroid/os/Bundle;

    .line 77
    iput-object p1, p0, Landroidx/test/uiautomator/UiAutomatorTestCase;->mParams:Landroid/os/Bundle;

    .line 80
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiAutomatorTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/uiautomator/UiDevice;->getInstance(Landroid/app/Instrumentation;)Landroidx/test/uiautomator/UiDevice;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/uiautomator/UiAutomatorTestCase;->mDevice:Landroidx/test/uiautomator/UiDevice;

    .line 83
    iget-object v0, p0, Landroidx/test/uiautomator/UiAutomatorTestCase;->mParams:Landroid/os/Bundle;

    const-string v1, "monkey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "monkeyVal":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiAutomatorTestCase;->getUiDevice()Landroidx/test/uiautomator/UiDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/test/uiautomator/UiDevice;->getUiAutomation()Landroid/app/UiAutomation;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/UiAutomation;->setRunAsMonkey(Z)V

    .line 89
    :cond_0
    return-void
.end method

.method public sleep(J)V
    .locals 0
    .param p1, "ms"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 99
    invoke-static {p1, p2}, Landroid/os/SystemClock;->sleep(J)V

    .line 100
    return-void
.end method
