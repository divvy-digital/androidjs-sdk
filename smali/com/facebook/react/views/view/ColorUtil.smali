.class public Lcom/facebook/react/views/view/ColorUtil;
.super Ljava/lang/Object;
.source "ColorUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOpacityFromColor(I)I
    .locals 2
    .param p0, "color"    # I

    .line 44
    ushr-int/lit8 v0, p0, 0x18

    .line 45
    .local v0, "colorAlpha":I
    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    .line 46
    const/4 v1, -0x1

    return v1

    .line 47
    :cond_0
    if-nez v0, :cond_1

    .line 48
    const/4 v1, -0x2

    return v1

    .line 50
    :cond_1
    const/4 v1, -0x3

    return v1
.end method

.method public static multiplyColorAlpha(II)I
    .locals 4
    .param p0, "color"    # I
    .param p1, "alpha"    # I

    .line 27
    const/16 v0, 0xff

    if-ne p1, v0, :cond_0

    .line 28
    return p0

    .line 30
    :cond_0
    const v0, 0xffffff

    if-nez p1, :cond_1

    .line 31
    and-int/2addr v0, p0

    return v0

    .line 33
    :cond_1
    shr-int/lit8 v1, p1, 0x7

    add-int/2addr p1, v1

    .line 34
    ushr-int/lit8 v1, p0, 0x18

    .line 35
    .local v1, "colorAlpha":I
    mul-int v2, v1, p1

    shr-int/lit8 v2, v2, 0x8

    .line 36
    .local v2, "multipliedAlpha":I
    shl-int/lit8 v3, v2, 0x18

    and-int/2addr v0, p0

    or-int/2addr v0, v3

    return v0
.end method
