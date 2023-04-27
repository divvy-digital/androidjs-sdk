.class public Lcom/facebook/yoga/YogaMeasureOutput;
.super Ljava/lang/Object;
.source "YogaMeasureOutput.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHeight(J)F
    .locals 2
    .param p0, "measureOutput"    # J

    .line 30
    const-wide/16 v0, -0x1

    and-long/2addr v0, p0

    long-to-int v1, v0

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public static getWidth(J)F
    .locals 4
    .param p0, "measureOutput"    # J

    .line 26
    const/16 v0, 0x20

    shr-long v0, p0, v0

    const-wide/16 v2, -0x1

    and-long/2addr v0, v2

    long-to-int v1, v0

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public static make(FF)J
    .locals 6
    .param p0, "width"    # F
    .param p1, "height"    # F

    .line 16
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 17
    .local v0, "wBits":I
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    .line 18
    .local v1, "hBits":I
    int-to-long v2, v0

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    int-to-long v4, v1

    or-long/2addr v2, v4

    return-wide v2
.end method

.method public static make(II)J
    .locals 2
    .param p0, "width"    # I
    .param p1, "height"    # I

    .line 22
    int-to-float v0, p0

    int-to-float v1, p1

    invoke-static {v0, v1}, Lcom/facebook/yoga/YogaMeasureOutput;->make(FF)J

    move-result-wide v0

    return-wide v0
.end method
