.class Lcom/facebook/react/devsupport/DevServerHelper$2;
.super Landroid/os/AsyncTask;
.source "DevServerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/devsupport/DevServerHelper;->closePackagerConnection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/devsupport/DevServerHelper;


# direct methods
.method constructor <init>(Lcom/facebook/react/devsupport/DevServerHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/react/devsupport/DevServerHelper;

    .line 205
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevServerHelper$2;->this$0:Lcom/facebook/react/devsupport/DevServerHelper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 205
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/facebook/react/devsupport/DevServerHelper$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .line 208
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevServerHelper$2;->this$0:Lcom/facebook/react/devsupport/DevServerHelper;

    invoke-static {v0}, Lcom/facebook/react/devsupport/DevServerHelper;->access$000(Lcom/facebook/react/devsupport/DevServerHelper;)Lcom/facebook/react/packagerconnection/JSPackagerClient;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevServerHelper$2;->this$0:Lcom/facebook/react/devsupport/DevServerHelper;

    invoke-static {v0}, Lcom/facebook/react/devsupport/DevServerHelper;->access$000(Lcom/facebook/react/devsupport/DevServerHelper;)Lcom/facebook/react/packagerconnection/JSPackagerClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/packagerconnection/JSPackagerClient;->close()V

    .line 210
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevServerHelper$2;->this$0:Lcom/facebook/react/devsupport/DevServerHelper;

    invoke-static {v0, v1}, Lcom/facebook/react/devsupport/DevServerHelper;->access$002(Lcom/facebook/react/devsupport/DevServerHelper;Lcom/facebook/react/packagerconnection/JSPackagerClient;)Lcom/facebook/react/packagerconnection/JSPackagerClient;

    .line 212
    :cond_0
    return-object v1
.end method
