.class Lcom/facebook/react/devsupport/DevServerHelper$1$3;
.super Lcom/facebook/react/packagerconnection/RequestOnlyHandler;
.source "DevServerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/devsupport/DevServerHelper$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/react/devsupport/DevServerHelper$1;


# direct methods
.method constructor <init>(Lcom/facebook/react/devsupport/DevServerHelper$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/facebook/react/devsupport/DevServerHelper$1;

    .line 167
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevServerHelper$1$3;->this$1:Lcom/facebook/react/devsupport/DevServerHelper$1;

    invoke-direct {p0}, Lcom/facebook/react/packagerconnection/RequestOnlyHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequest(Ljava/lang/Object;Lcom/facebook/react/packagerconnection/Responder;)V
    .locals 1
    .param p1, "params"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "responder"    # Lcom/facebook/react/packagerconnection/Responder;

    .line 170
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevServerHelper$1$3;->this$1:Lcom/facebook/react/devsupport/DevServerHelper$1;

    iget-object v0, v0, Lcom/facebook/react/devsupport/DevServerHelper$1;->val$commandListener:Lcom/facebook/react/devsupport/DevServerHelper$PackagerCommandListener;

    invoke-interface {v0, p2}, Lcom/facebook/react/devsupport/DevServerHelper$PackagerCommandListener;->onCaptureHeapCommand(Lcom/facebook/react/packagerconnection/Responder;)V

    .line 171
    return-void
.end method
