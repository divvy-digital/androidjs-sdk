.class Landroidx/test/uiautomator/PointerGesture$PointerPauseAction;
.super Landroidx/test/uiautomator/PointerGesture$PointerAction;
.source "PointerGesture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/uiautomator/PointerGesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PointerPauseAction"
.end annotation


# direct methods
.method public constructor <init>(Landroid/graphics/Point;J)V
    .locals 0
    .param p1, "startPoint"    # Landroid/graphics/Point;
    .param p2, "time"    # J

    .line 122
    invoke-direct {p0, p1, p1, p2, p3}, Landroidx/test/uiautomator/PointerGesture$PointerAction;-><init>(Landroid/graphics/Point;Landroid/graphics/Point;J)V

    .line 123
    return-void
.end method


# virtual methods
.method public interpolate(F)Landroid/graphics/Point;
    .locals 2
    .param p1, "fraction"    # F

    .line 127
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Landroidx/test/uiautomator/PointerGesture$PointerPauseAction;->start:Landroid/graphics/Point;

    invoke-direct {v0, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    return-object v0
.end method
