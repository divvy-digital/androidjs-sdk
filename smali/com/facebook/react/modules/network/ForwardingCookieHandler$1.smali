.class Lcom/facebook/react/modules/network/ForwardingCookieHandler$1;
.super Lcom/facebook/react/bridge/GuardedResultAsyncTask;
.source "ForwardingCookieHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/modules/network/ForwardingCookieHandler;->clearCookies(Lcom/facebook/react/bridge/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/bridge/GuardedResultAsyncTask<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/modules/network/ForwardingCookieHandler;

.field final synthetic val$callback:Lcom/facebook/react/bridge/Callback;


# direct methods
.method constructor <init>(Lcom/facebook/react/modules/network/ForwardingCookieHandler;Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/bridge/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/react/modules/network/ForwardingCookieHandler;
    .param p2, "reactContext"    # Lcom/facebook/react/bridge/ReactContext;

    .line 83
    iput-object p1, p0, Lcom/facebook/react/modules/network/ForwardingCookieHandler$1;->this$0:Lcom/facebook/react/modules/network/ForwardingCookieHandler;

    iput-object p3, p0, Lcom/facebook/react/modules/network/ForwardingCookieHandler$1;->val$callback:Lcom/facebook/react/bridge/Callback;

    invoke-direct {p0, p2}, Lcom/facebook/react/bridge/GuardedResultAsyncTask;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-void
.end method


# virtual methods
.method protected doInBackgroundGuarded()Ljava/lang/Boolean;
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/facebook/react/modules/network/ForwardingCookieHandler$1;->this$0:Lcom/facebook/react/modules/network/ForwardingCookieHandler;

    invoke-static {v0}, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->access$000(Lcom/facebook/react/modules/network/ForwardingCookieHandler;)Landroid/webkit/CookieManager;

    move-result-object v0

    .line 87
    .local v0, "cookieManager":Landroid/webkit/CookieManager;
    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/facebook/react/modules/network/ForwardingCookieHandler$1;->this$0:Lcom/facebook/react/modules/network/ForwardingCookieHandler;

    invoke-static {v1}, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->access$100(Lcom/facebook/react/modules/network/ForwardingCookieHandler;)Lcom/facebook/react/modules/network/ForwardingCookieHandler$CookieSaver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/react/modules/network/ForwardingCookieHandler$CookieSaver;->onCookiesModified()V

    .line 91
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackgroundGuarded()Ljava/lang/Object;
    .locals 1

    .line 83
    invoke-virtual {p0}, Lcom/facebook/react/modules/network/ForwardingCookieHandler$1;->doInBackgroundGuarded()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecuteGuarded(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .line 96
    iget-object v0, p0, Lcom/facebook/react/modules/network/ForwardingCookieHandler$1;->val$callback:Lcom/facebook/react/bridge/Callback;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 97
    return-void
.end method

.method protected bridge synthetic onPostExecuteGuarded(Ljava/lang/Object;)V
    .locals 0

    .line 83
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/facebook/react/modules/network/ForwardingCookieHandler$1;->onPostExecuteGuarded(Ljava/lang/Boolean;)V

    return-void
.end method
