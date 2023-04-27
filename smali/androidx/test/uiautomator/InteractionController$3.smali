.class Landroidx/test/uiautomator/InteractionController$3;
.super Ljava/lang/Object;
.source "InteractionController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/uiautomator/InteractionController;->longTapRunnable(II)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/test/uiautomator/InteractionController;

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Landroidx/test/uiautomator/InteractionController;II)V
    .locals 0

    .line 294
    iput-object p1, p0, Landroidx/test/uiautomator/InteractionController$3;->this$0:Landroidx/test/uiautomator/InteractionController;

    iput p2, p0, Landroidx/test/uiautomator/InteractionController$3;->val$x:I

    iput p3, p0, Landroidx/test/uiautomator/InteractionController$3;->val$y:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 297
    iget-object v0, p0, Landroidx/test/uiautomator/InteractionController$3;->this$0:Landroidx/test/uiautomator/InteractionController;

    iget v1, p0, Landroidx/test/uiautomator/InteractionController$3;->val$x:I

    iget v2, p0, Landroidx/test/uiautomator/InteractionController$3;->val$y:I

    invoke-static {v0, v1, v2}, Landroidx/test/uiautomator/InteractionController;->access$100(Landroidx/test/uiautomator/InteractionController;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 299
    iget-object v0, p0, Landroidx/test/uiautomator/InteractionController$3;->this$0:Landroidx/test/uiautomator/InteractionController;

    iget v1, p0, Landroidx/test/uiautomator/InteractionController$3;->val$x:I

    iget v2, p0, Landroidx/test/uiautomator/InteractionController$3;->val$y:I

    invoke-static {v0, v1, v2}, Landroidx/test/uiautomator/InteractionController;->access$200(Landroidx/test/uiautomator/InteractionController;II)Z

    .line 301
    :cond_0
    return-void
.end method
