.class final Landroidx/test/uiautomator/GestureController$2;
.super Ljava/lang/Object;
.source "GestureController.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/uiautomator/GestureController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroidx/test/uiautomator/PointerGesture;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroidx/test/uiautomator/PointerGesture;Landroidx/test/uiautomator/PointerGesture;)I
    .locals 6
    .param p1, "o1"    # Landroidx/test/uiautomator/PointerGesture;
    .param p2, "o2"    # Landroidx/test/uiautomator/PointerGesture;

    .line 62
    invoke-virtual {p1}, Landroidx/test/uiautomator/PointerGesture;->delay()J

    move-result-wide v0

    invoke-virtual {p2}, Landroidx/test/uiautomator/PointerGesture;->duration()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {p2}, Landroidx/test/uiautomator/PointerGesture;->delay()J

    move-result-wide v2

    invoke-virtual {p2}, Landroidx/test/uiautomator/PointerGesture;->duration()J

    move-result-wide v4

    add-long/2addr v2, v4

    sub-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 58
    check-cast p1, Landroidx/test/uiautomator/PointerGesture;

    check-cast p2, Landroidx/test/uiautomator/PointerGesture;

    invoke-virtual {p0, p1, p2}, Landroidx/test/uiautomator/GestureController$2;->compare(Landroidx/test/uiautomator/PointerGesture;Landroidx/test/uiautomator/PointerGesture;)I

    move-result p1

    return p1
.end method
