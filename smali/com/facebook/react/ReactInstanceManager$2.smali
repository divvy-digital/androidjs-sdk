.class Lcom/facebook/react/ReactInstanceManager$2;
.super Ljava/lang/Object;
.source "ReactInstanceManager.java"

# interfaces
.implements Lcom/facebook/react/devsupport/ReactInstanceManagerDevHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/ReactInstanceManager;->createDevHelperInterface()Lcom/facebook/react/devsupport/ReactInstanceManagerDevHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/ReactInstanceManager;


# direct methods
.method constructor <init>(Lcom/facebook/react/ReactInstanceManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/react/ReactInstanceManager;

    .line 278
    iput-object p1, p0, Lcom/facebook/react/ReactInstanceManager$2;->this$0:Lcom/facebook/react/ReactInstanceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentActivity()Landroid/app/Activity;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 296
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager$2;->this$0:Lcom/facebook/react/ReactInstanceManager;

    invoke-static {v0}, Lcom/facebook/react/ReactInstanceManager;->access$400(Lcom/facebook/react/ReactInstanceManager;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public onJSBundleLoadedFromServer(Lcom/facebook/react/bridge/NativeDeltaClient;)V
    .locals 1
    .param p1, "nativeDeltaClient"    # Lcom/facebook/react/bridge/NativeDeltaClient;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 286
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager$2;->this$0:Lcom/facebook/react/ReactInstanceManager;

    invoke-static {v0, p1}, Lcom/facebook/react/ReactInstanceManager;->access$200(Lcom/facebook/react/ReactInstanceManager;Lcom/facebook/react/bridge/NativeDeltaClient;)V

    .line 287
    return-void
.end method

.method public onReloadWithJSDebugger(Lcom/facebook/react/bridge/JavaJSExecutor$Factory;)V
    .locals 1
    .param p1, "jsExecutorFactory"    # Lcom/facebook/react/bridge/JavaJSExecutor$Factory;

    .line 281
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager$2;->this$0:Lcom/facebook/react/ReactInstanceManager;

    invoke-static {v0, p1}, Lcom/facebook/react/ReactInstanceManager;->access$100(Lcom/facebook/react/ReactInstanceManager;Lcom/facebook/react/bridge/JavaJSExecutor$Factory;)V

    .line 282
    return-void
.end method

.method public toggleElementInspector()V
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager$2;->this$0:Lcom/facebook/react/ReactInstanceManager;

    invoke-static {v0}, Lcom/facebook/react/ReactInstanceManager;->access$300(Lcom/facebook/react/ReactInstanceManager;)V

    .line 292
    return-void
.end method
