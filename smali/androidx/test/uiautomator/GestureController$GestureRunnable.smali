.class Landroidx/test/uiautomator/GestureController$GestureRunnable;
.super Ljava/lang/Object;
.source "GestureController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/uiautomator/GestureController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureRunnable"
.end annotation


# instance fields
.field private mGestures:[Landroidx/test/uiautomator/PointerGesture;

.field final synthetic this$0:Landroidx/test/uiautomator/GestureController;


# direct methods
.method public constructor <init>(Landroidx/test/uiautomator/GestureController;[Landroidx/test/uiautomator/PointerGesture;)V
    .locals 0
    .param p2, "gestures"    # [Landroidx/test/uiautomator/PointerGesture;

    .line 233
    iput-object p1, p0, Landroidx/test/uiautomator/GestureController$GestureRunnable;->this$0:Landroidx/test/uiautomator/GestureController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput-object p2, p0, Landroidx/test/uiautomator/GestureController$GestureRunnable;->mGestures:[Landroidx/test/uiautomator/PointerGesture;

    .line 235
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 239
    iget-object v0, p0, Landroidx/test/uiautomator/GestureController$GestureRunnable;->this$0:Landroidx/test/uiautomator/GestureController;

    iget-object v1, p0, Landroidx/test/uiautomator/GestureController$GestureRunnable;->mGestures:[Landroidx/test/uiautomator/PointerGesture;

    invoke-virtual {v0, v1}, Landroidx/test/uiautomator/GestureController;->performGesture([Landroidx/test/uiautomator/PointerGesture;)V

    .line 240
    return-void
.end method
