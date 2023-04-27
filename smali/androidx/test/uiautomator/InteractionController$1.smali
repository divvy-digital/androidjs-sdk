.class Landroidx/test/uiautomator/InteractionController$1;
.super Ljava/lang/Object;
.source "InteractionController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/uiautomator/InteractionController;->sendKeyAndWaitForEvent(IIIJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/test/uiautomator/InteractionController;

.field final synthetic val$keyCode:I

.field final synthetic val$metaState:I


# direct methods
.method constructor <init>(Landroidx/test/uiautomator/InteractionController;II)V
    .locals 0

    .line 190
    iput-object p1, p0, Landroidx/test/uiautomator/InteractionController$1;->this$0:Landroidx/test/uiautomator/InteractionController;

    iput p2, p0, Landroidx/test/uiautomator/InteractionController$1;->val$keyCode:I

    iput p3, p0, Landroidx/test/uiautomator/InteractionController$1;->val$metaState:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .line 193
    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 194
    .local v14, "eventTime":J
    new-instance v16, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    iget v7, v0, Landroidx/test/uiautomator/InteractionController$1;->val$keyCode:I

    const/4 v8, 0x0

    iget v9, v0, Landroidx/test/uiautomator/InteractionController$1;->val$metaState:I

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x101

    move-object/from16 v1, v16

    move-wide v2, v14

    move-wide v4, v14

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v13, v16

    .line 197
    .local v13, "downEvent":Landroid/view/KeyEvent;
    iget-object v1, v0, Landroidx/test/uiautomator/InteractionController$1;->this$0:Landroidx/test/uiautomator/InteractionController;

    invoke-static {v1, v13}, Landroidx/test/uiautomator/InteractionController;->access$000(Landroidx/test/uiautomator/InteractionController;Landroid/view/InputEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    new-instance v16, Landroid/view/KeyEvent;

    const/4 v6, 0x1

    iget v7, v0, Landroidx/test/uiautomator/InteractionController$1;->val$keyCode:I

    const/4 v8, 0x0

    iget v9, v0, Landroidx/test/uiautomator/InteractionController$1;->val$metaState:I

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v17, 0x101

    move-object/from16 v1, v16

    move-wide v2, v14

    move-wide v4, v14

    move-object/from16 v18, v13

    .end local v13    # "downEvent":Landroid/view/KeyEvent;
    .local v18, "downEvent":Landroid/view/KeyEvent;
    move/from16 v13, v17

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 201
    .local v1, "upEvent":Landroid/view/KeyEvent;
    iget-object v2, v0, Landroidx/test/uiautomator/InteractionController$1;->this$0:Landroidx/test/uiautomator/InteractionController;

    invoke-static {v2, v1}, Landroidx/test/uiautomator/InteractionController;->access$000(Landroidx/test/uiautomator/InteractionController;Landroid/view/InputEvent;)Z

    goto :goto_0

    .line 197
    .end local v1    # "upEvent":Landroid/view/KeyEvent;
    .end local v18    # "downEvent":Landroid/view/KeyEvent;
    .restart local v13    # "downEvent":Landroid/view/KeyEvent;
    :cond_0
    move-object/from16 v18, v13

    .line 203
    .end local v13    # "downEvent":Landroid/view/KeyEvent;
    .restart local v18    # "downEvent":Landroid/view/KeyEvent;
    :goto_0
    return-void
.end method
