.class public Lcom/facebook/react/jscexecutor/JSCExecutorFactory;
.super Ljava/lang/Object;
.source "JSCExecutorFactory.java"

# interfaces
.implements Lcom/facebook/react/bridge/JavaScriptExecutorFactory;


# instance fields
.field private final mAppName:Ljava/lang/String;

.field private final mDeviceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "deviceName"    # Ljava/lang/String;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/facebook/react/jscexecutor/JSCExecutorFactory;->mAppName:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/facebook/react/jscexecutor/JSCExecutorFactory;->mDeviceName:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public create()Lcom/facebook/react/bridge/JavaScriptExecutor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 25
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 26
    .local v0, "jscConfig":Lcom/facebook/react/bridge/WritableNativeMap;
    const-string v1, "OwnerIdentity"

    const-string v2, "ReactNative"

    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string v1, "AppIdentity"

    iget-object v2, p0, Lcom/facebook/react/jscexecutor/JSCExecutorFactory;->mAppName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string v1, "DeviceIdentity"

    iget-object v2, p0, Lcom/facebook/react/jscexecutor/JSCExecutorFactory;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    new-instance v1, Lcom/facebook/react/jscexecutor/JSCExecutor;

    invoke-direct {v1, v0}, Lcom/facebook/react/jscexecutor/JSCExecutor;-><init>(Lcom/facebook/react/bridge/ReadableNativeMap;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 34
    const-string v0, "JSIExecutor+JSCRuntime"

    return-object v0
.end method
