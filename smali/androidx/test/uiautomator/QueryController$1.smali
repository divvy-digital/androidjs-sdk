.class Landroidx/test/uiautomator/QueryController$1;
.super Ljava/lang/Object;
.source "QueryController.java"

# interfaces
.implements Landroid/app/UiAutomation$OnAccessibilityEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/uiautomator/QueryController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/test/uiautomator/QueryController;


# direct methods
.method constructor <init>(Landroidx/test/uiautomator/QueryController;)V
    .locals 0

    .line 66
    iput-object p1, p0, Landroidx/test/uiautomator/QueryController$1;->this$0:Landroidx/test/uiautomator/QueryController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 69
    iget-object v0, p0, Landroidx/test/uiautomator/QueryController$1;->this$0:Landroidx/test/uiautomator/QueryController;

    invoke-static {v0}, Landroidx/test/uiautomator/QueryController;->access$000(Landroidx/test/uiautomator/QueryController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 70
    :try_start_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    .line 80
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 81
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Landroidx/test/uiautomator/QueryController$1;->this$0:Landroidx/test/uiautomator/QueryController;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/test/uiautomator/QueryController;->access$202(Landroidx/test/uiautomator/QueryController;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    :cond_0
    invoke-static {}, Landroidx/test/uiautomator/QueryController;->access$300()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    invoke-static {}, Landroidx/test/uiautomator/QueryController;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Last text selection reported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroidx/test/uiautomator/QueryController$1;->this$0:Landroidx/test/uiautomator/QueryController;

    invoke-static {v3}, Landroidx/test/uiautomator/QueryController;->access$200(Landroidx/test/uiautomator/QueryController;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 73
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 74
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 75
    iget-object v1, p0, Landroidx/test/uiautomator/QueryController$1;->this$0:Landroidx/test/uiautomator/QueryController;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/test/uiautomator/QueryController;->access$102(Landroidx/test/uiautomator/QueryController;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    :cond_1
    :goto_0
    iget-object v1, p0, Landroidx/test/uiautomator/QueryController$1;->this$0:Landroidx/test/uiautomator/QueryController;

    invoke-static {v1}, Landroidx/test/uiautomator/QueryController;->access$000(Landroidx/test/uiautomator/QueryController;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 89
    monitor-exit v0

    .line 90
    return-void

    .line 89
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_1
        0x20000 -> :sswitch_0
    .end sparse-switch
.end method
