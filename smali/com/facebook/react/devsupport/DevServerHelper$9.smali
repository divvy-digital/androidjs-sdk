.class Lcom/facebook/react/devsupport/DevServerHelper$9;
.super Ljava/lang/Object;
.source "DevServerHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/devsupport/DevServerHelper;->handleOnChangePollingResponse(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/devsupport/DevServerHelper;


# direct methods
.method constructor <init>(Lcom/facebook/react/devsupport/DevServerHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/react/devsupport/DevServerHelper;

    .line 552
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevServerHelper$9;->this$0:Lcom/facebook/react/devsupport/DevServerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 555
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevServerHelper$9;->this$0:Lcom/facebook/react/devsupport/DevServerHelper;

    invoke-static {v0}, Lcom/facebook/react/devsupport/DevServerHelper;->access$700(Lcom/facebook/react/devsupport/DevServerHelper;)Lcom/facebook/react/devsupport/DevServerHelper$OnServerContentChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevServerHelper$9;->this$0:Lcom/facebook/react/devsupport/DevServerHelper;

    invoke-static {v0}, Lcom/facebook/react/devsupport/DevServerHelper;->access$700(Lcom/facebook/react/devsupport/DevServerHelper;)Lcom/facebook/react/devsupport/DevServerHelper$OnServerContentChangeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/react/devsupport/DevServerHelper$OnServerContentChangeListener;->onServerContentChanged()V

    .line 558
    :cond_0
    return-void
.end method
