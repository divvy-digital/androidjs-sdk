.class abstract Landroidx/test/uiautomator/PointerGesture$PointerAction;
.super Ljava/lang/Object;
.source "PointerGesture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/uiautomator/PointerGesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "PointerAction"
.end annotation


# instance fields
.field final duration:J

.field final end:Landroid/graphics/Point;

.field final start:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/graphics/Point;Landroid/graphics/Point;J)V
    .locals 0
    .param p1, "startPoint"    # Landroid/graphics/Point;
    .param p2, "endPoint"    # Landroid/graphics/Point;
    .param p3, "time"    # J

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Landroidx/test/uiautomator/PointerGesture$PointerAction;->start:Landroid/graphics/Point;

    .line 111
    iput-object p2, p0, Landroidx/test/uiautomator/PointerGesture$PointerAction;->end:Landroid/graphics/Point;

    .line 112
    iput-wide p3, p0, Landroidx/test/uiautomator/PointerGesture$PointerAction;->duration:J

    .line 113
    return-void
.end method


# virtual methods
.method public abstract interpolate(F)Landroid/graphics/Point;
.end method
