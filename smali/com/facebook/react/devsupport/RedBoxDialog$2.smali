.class Lcom/facebook/react/devsupport/RedBoxDialog$2;
.super Ljava/lang/Object;
.source "RedBoxDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/devsupport/RedBoxDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/devsupport/RedBoxDialog;


# direct methods
.method constructor <init>(Lcom/facebook/react/devsupport/RedBoxDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/react/devsupport/RedBoxDialog;

    .line 82
    iput-object p1, p0, Lcom/facebook/react/devsupport/RedBoxDialog$2;->this$0:Lcom/facebook/react/devsupport/RedBoxDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .line 85
    iget-object v0, p0, Lcom/facebook/react/devsupport/RedBoxDialog$2;->this$0:Lcom/facebook/react/devsupport/RedBoxDialog;

    invoke-static {v0}, Lcom/facebook/react/devsupport/RedBoxDialog;->access$400(Lcom/facebook/react/devsupport/RedBoxDialog;)Lcom/facebook/react/devsupport/RedBoxHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/react/devsupport/RedBoxDialog$2;->this$0:Lcom/facebook/react/devsupport/RedBoxDialog;

    invoke-static {v0}, Lcom/facebook/react/devsupport/RedBoxDialog;->access$400(Lcom/facebook/react/devsupport/RedBoxDialog;)Lcom/facebook/react/devsupport/RedBoxHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/react/devsupport/RedBoxHandler;->isReportEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/react/devsupport/RedBoxDialog$2;->this$0:Lcom/facebook/react/devsupport/RedBoxDialog;

    invoke-static {v0}, Lcom/facebook/react/devsupport/RedBoxDialog;->access$000(Lcom/facebook/react/devsupport/RedBoxDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/devsupport/RedBoxDialog$2;->this$0:Lcom/facebook/react/devsupport/RedBoxDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/react/devsupport/RedBoxDialog;->access$002(Lcom/facebook/react/devsupport/RedBoxDialog;Z)Z

    .line 89
    iget-object v0, p0, Lcom/facebook/react/devsupport/RedBoxDialog$2;->this$0:Lcom/facebook/react/devsupport/RedBoxDialog;

    invoke-static {v0}, Lcom/facebook/react/devsupport/RedBoxDialog;->access$300(Lcom/facebook/react/devsupport/RedBoxDialog;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "Reporting..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lcom/facebook/react/devsupport/RedBoxDialog$2;->this$0:Lcom/facebook/react/devsupport/RedBoxDialog;

    invoke-static {v0}, Lcom/facebook/react/devsupport/RedBoxDialog;->access$300(Lcom/facebook/react/devsupport/RedBoxDialog;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/facebook/react/devsupport/RedBoxDialog$2;->this$0:Lcom/facebook/react/devsupport/RedBoxDialog;

    invoke-static {v0}, Lcom/facebook/react/devsupport/RedBoxDialog;->access$200(Lcom/facebook/react/devsupport/RedBoxDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/facebook/react/devsupport/RedBoxDialog$2;->this$0:Lcom/facebook/react/devsupport/RedBoxDialog;

    invoke-static {v0}, Lcom/facebook/react/devsupport/RedBoxDialog;->access$500(Lcom/facebook/react/devsupport/RedBoxDialog;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/facebook/react/devsupport/RedBoxDialog$2;->this$0:Lcom/facebook/react/devsupport/RedBoxDialog;

    invoke-static {v0}, Lcom/facebook/react/devsupport/RedBoxDialog;->access$100(Lcom/facebook/react/devsupport/RedBoxDialog;)Landroid/widget/Button;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 95
    iget-object v0, p0, Lcom/facebook/react/devsupport/RedBoxDialog$2;->this$0:Lcom/facebook/react/devsupport/RedBoxDialog;

    invoke-static {v0}, Lcom/facebook/react/devsupport/RedBoxDialog;->access$600(Lcom/facebook/react/devsupport/RedBoxDialog;)Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->getLastErrorTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 96
    .local v0, "title":Ljava/lang/String;
    iget-object v1, p0, Lcom/facebook/react/devsupport/RedBoxDialog$2;->this$0:Lcom/facebook/react/devsupport/RedBoxDialog;

    invoke-static {v1}, Lcom/facebook/react/devsupport/RedBoxDialog;->access$600(Lcom/facebook/react/devsupport/RedBoxDialog;)Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->getLastErrorStack()[Lcom/facebook/react/devsupport/interfaces/StackFrame;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [Lcom/facebook/react/devsupport/interfaces/StackFrame;

    .line 97
    .local v7, "stack":[Lcom/facebook/react/devsupport/interfaces/StackFrame;
    iget-object v1, p0, Lcom/facebook/react/devsupport/RedBoxDialog$2;->this$0:Lcom/facebook/react/devsupport/RedBoxDialog;

    invoke-static {v1}, Lcom/facebook/react/devsupport/RedBoxDialog;->access$600(Lcom/facebook/react/devsupport/RedBoxDialog;)Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->getSourceUrl()Ljava/lang/String;

    move-result-object v8

    .line 99
    .local v8, "sourceUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/facebook/react/devsupport/RedBoxDialog$2;->this$0:Lcom/facebook/react/devsupport/RedBoxDialog;

    invoke-static {v1}, Lcom/facebook/react/devsupport/RedBoxDialog;->access$400(Lcom/facebook/react/devsupport/RedBoxDialog;)Lcom/facebook/react/devsupport/RedBoxHandler;

    move-result-object v1

    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/react/devsupport/RedBoxDialog$2;->this$0:Lcom/facebook/react/devsupport/RedBoxDialog;

    .line 104
    invoke-static {v3}, Lcom/facebook/react/devsupport/RedBoxDialog;->access$700(Lcom/facebook/react/devsupport/RedBoxDialog;)Lcom/facebook/react/devsupport/RedBoxHandler$ReportCompletedListener;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/facebook/react/devsupport/RedBoxHandler$ReportCompletedListener;

    .line 99
    move-object v3, v0

    move-object v4, v7

    move-object v5, v8

    invoke-interface/range {v1 .. v6}, Lcom/facebook/react/devsupport/RedBoxHandler;->reportRedbox(Landroid/content/Context;Ljava/lang/String;[Lcom/facebook/react/devsupport/interfaces/StackFrame;Ljava/lang/String;Lcom/facebook/react/devsupport/RedBoxHandler$ReportCompletedListener;)V

    .line 105
    return-void

    .line 86
    .end local v0    # "title":Ljava/lang/String;
    .end local v7    # "stack":[Lcom/facebook/react/devsupport/interfaces/StackFrame;
    .end local v8    # "sourceUrl":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void
.end method
