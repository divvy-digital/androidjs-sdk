.class Landroidx/test/uiautomator/InteractionController$4;
.super Ljava/lang/Object;
.source "InteractionController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/uiautomator/InteractionController;->scrollSwipe(IIIII)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/test/uiautomator/InteractionController;

.field final synthetic val$downX:I

.field final synthetic val$downY:I

.field final synthetic val$steps:I

.field final synthetic val$upX:I

.field final synthetic val$upY:I


# direct methods
.method constructor <init>(Landroidx/test/uiautomator/InteractionController;IIIII)V
    .locals 0

    .line 388
    iput-object p1, p0, Landroidx/test/uiautomator/InteractionController$4;->this$0:Landroidx/test/uiautomator/InteractionController;

    iput p2, p0, Landroidx/test/uiautomator/InteractionController$4;->val$downX:I

    iput p3, p0, Landroidx/test/uiautomator/InteractionController$4;->val$downY:I

    iput p4, p0, Landroidx/test/uiautomator/InteractionController$4;->val$upX:I

    iput p5, p0, Landroidx/test/uiautomator/InteractionController$4;->val$upY:I

    iput p6, p0, Landroidx/test/uiautomator/InteractionController$4;->val$steps:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 391
    iget-object v0, p0, Landroidx/test/uiautomator/InteractionController$4;->this$0:Landroidx/test/uiautomator/InteractionController;

    iget v1, p0, Landroidx/test/uiautomator/InteractionController$4;->val$downX:I

    iget v2, p0, Landroidx/test/uiautomator/InteractionController$4;->val$downY:I

    iget v3, p0, Landroidx/test/uiautomator/InteractionController$4;->val$upX:I

    iget v4, p0, Landroidx/test/uiautomator/InteractionController$4;->val$upY:I

    iget v5, p0, Landroidx/test/uiautomator/InteractionController$4;->val$steps:I

    invoke-virtual/range {v0 .. v5}, Landroidx/test/uiautomator/InteractionController;->swipe(IIIII)Z

    .line 392
    return-void
.end method
