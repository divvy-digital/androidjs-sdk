.class Landroidx/test/uiautomator/InstrumentationAutomationSupport;
.super Ljava/lang/Object;
.source "InstrumentationAutomationSupport.java"

# interfaces
.implements Landroidx/test/uiautomator/IAutomationSupport;


# instance fields
.field private mInstrumentation:Landroid/app/Instrumentation;


# direct methods
.method constructor <init>(Landroid/app/Instrumentation;)V
    .locals 0
    .param p1, "instrumentation"    # Landroid/app/Instrumentation;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Landroidx/test/uiautomator/InstrumentationAutomationSupport;->mInstrumentation:Landroid/app/Instrumentation;

    .line 35
    return-void
.end method


# virtual methods
.method public sendStatus(ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "resultCode"    # I
    .param p2, "status"    # Landroid/os/Bundle;

    .line 39
    iget-object v0, p0, Landroidx/test/uiautomator/InstrumentationAutomationSupport;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2}, Landroid/app/Instrumentation;->sendStatus(ILandroid/os/Bundle;)V

    .line 40
    return-void
.end method
