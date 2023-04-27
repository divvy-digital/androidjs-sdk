.class public final Landroidx/test/uiautomator/Configurator;
.super Ljava/lang/Object;
.source "Configurator.java"


# static fields
.field static final DEFAULT_UIAUTOMATION_FLAGS:I

.field private static sConfigurator:Landroidx/test/uiautomator/Configurator;


# instance fields
.field private mKeyInjectionDelay:J

.field private mScrollEventWaitTimeout:J

.field private mToolType:I

.field private mUiAutomationFlags:I

.field private mWaitForActionAcknowledgment:J

.field private mWaitForIdleTimeout:J

.field private mWaitForSelector:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Landroidx/test/uiautomator/Configurator;->mWaitForIdleTimeout:J

    .line 34
    iput-wide v0, p0, Landroidx/test/uiautomator/Configurator;->mWaitForSelector:J

    .line 35
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Landroidx/test/uiautomator/Configurator;->mWaitForActionAcknowledgment:J

    .line 39
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Landroidx/test/uiautomator/Configurator;->mScrollEventWaitTimeout:J

    .line 42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/test/uiautomator/Configurator;->mKeyInjectionDelay:J

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Landroidx/test/uiautomator/Configurator;->mToolType:I

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Landroidx/test/uiautomator/Configurator;->mUiAutomationFlags:I

    .line 56
    return-void
.end method

.method public static getInstance()Landroidx/test/uiautomator/Configurator;
    .locals 1

    .line 65
    sget-object v0, Landroidx/test/uiautomator/Configurator;->sConfigurator:Landroidx/test/uiautomator/Configurator;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Landroidx/test/uiautomator/Configurator;

    invoke-direct {v0}, Landroidx/test/uiautomator/Configurator;-><init>()V

    sput-object v0, Landroidx/test/uiautomator/Configurator;->sConfigurator:Landroidx/test/uiautomator/Configurator;

    .line 68
    :cond_0
    sget-object v0, Landroidx/test/uiautomator/Configurator;->sConfigurator:Landroidx/test/uiautomator/Configurator;

    return-object v0
.end method


# virtual methods
.method public getActionAcknowledgmentTimeout()J
    .locals 2

    .line 208
    iget-wide v0, p0, Landroidx/test/uiautomator/Configurator;->mWaitForActionAcknowledgment:J

    return-wide v0
.end method

.method public getKeyInjectionDelay()J
    .locals 2

    .line 232
    iget-wide v0, p0, Landroidx/test/uiautomator/Configurator;->mKeyInjectionDelay:J

    return-wide v0
.end method

.method public getScrollAcknowledgmentTimeout()J
    .locals 2

    .line 174
    iget-wide v0, p0, Landroidx/test/uiautomator/Configurator;->mScrollEventWaitTimeout:J

    return-wide v0
.end method

.method public getToolType()I
    .locals 1

    .line 249
    iget v0, p0, Landroidx/test/uiautomator/Configurator;->mToolType:I

    return v0
.end method

.method public getUiAutomationFlags()I
    .locals 1

    .line 273
    iget v0, p0, Landroidx/test/uiautomator/Configurator;->mUiAutomationFlags:I

    return v0
.end method

.method public getWaitForIdleTimeout()J
    .locals 2

    .line 106
    iget-wide v0, p0, Landroidx/test/uiautomator/Configurator;->mWaitForIdleTimeout:J

    return-wide v0
.end method

.method public getWaitForSelectorTimeout()J
    .locals 2

    .line 140
    iget-wide v0, p0, Landroidx/test/uiautomator/Configurator;->mWaitForSelector:J

    return-wide v0
.end method

.method public setActionAcknowledgmentTimeout(J)Landroidx/test/uiautomator/Configurator;
    .locals 0
    .param p1, "timeout"    # J

    .line 191
    iput-wide p1, p0, Landroidx/test/uiautomator/Configurator;->mWaitForActionAcknowledgment:J

    .line 192
    return-object p0
.end method

.method public setKeyInjectionDelay(J)Landroidx/test/uiautomator/Configurator;
    .locals 0
    .param p1, "delay"    # J

    .line 220
    iput-wide p1, p0, Landroidx/test/uiautomator/Configurator;->mKeyInjectionDelay:J

    .line 221
    return-object p0
.end method

.method public setScrollAcknowledgmentTimeout(J)Landroidx/test/uiautomator/Configurator;
    .locals 0
    .param p1, "timeout"    # J

    .line 157
    iput-wide p1, p0, Landroidx/test/uiautomator/Configurator;->mScrollEventWaitTimeout:J

    .line 158
    return-object p0
.end method

.method public setToolType(I)Landroidx/test/uiautomator/Configurator;
    .locals 0
    .param p1, "toolType"    # I

    .line 240
    iput p1, p0, Landroidx/test/uiautomator/Configurator;->mToolType:I

    .line 241
    return-object p0
.end method

.method public setUiAutomationFlags(I)Landroidx/test/uiautomator/Configurator;
    .locals 0
    .param p1, "flags"    # I

    .line 261
    iput p1, p0, Landroidx/test/uiautomator/Configurator;->mUiAutomationFlags:I

    .line 262
    return-object p0
.end method

.method public setWaitForIdleTimeout(J)Landroidx/test/uiautomator/Configurator;
    .locals 0
    .param p1, "timeout"    # J

    .line 87
    iput-wide p1, p0, Landroidx/test/uiautomator/Configurator;->mWaitForIdleTimeout:J

    .line 88
    return-object p0
.end method

.method public setWaitForSelectorTimeout(J)Landroidx/test/uiautomator/Configurator;
    .locals 0
    .param p1, "timeout"    # J

    .line 123
    iput-wide p1, p0, Landroidx/test/uiautomator/Configurator;->mWaitForSelector:J

    .line 124
    return-object p0
.end method
