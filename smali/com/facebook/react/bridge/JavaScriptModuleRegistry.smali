.class public final Lcom/facebook/react/bridge/JavaScriptModuleRegistry;
.super Ljava/lang/Object;
.source "JavaScriptModuleRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/bridge/JavaScriptModuleRegistry$JavaScriptModuleInvocationHandler;
    }
.end annotation


# instance fields
.field private final mModuleInstances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/facebook/react/bridge/JavaScriptModule;",
            ">;",
            "Lcom/facebook/react/bridge/JavaScriptModule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/bridge/JavaScriptModuleRegistry;->mModuleInstances:Ljava/util/HashMap;

    .line 31
    return-void
.end method


# virtual methods
.method public declared-synchronized getJavaScriptModule(Lcom/facebook/react/bridge/CatalystInstance;Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;
    .locals 4
    .param p1, "instance"    # Lcom/facebook/react/bridge/CatalystInstance;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/react/bridge/JavaScriptModule;",
            ">(",
            "Lcom/facebook/react/bridge/CatalystInstance;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .local p2, "moduleInterface":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    monitor-enter p0

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/bridge/JavaScriptModuleRegistry;->mModuleInstances:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/JavaScriptModule;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .local v0, "module":Lcom/facebook/react/bridge/JavaScriptModule;
    if-eqz v0, :cond_0

    .line 38
    monitor-exit p0

    return-object v0

    .line 41
    :cond_0
    nop

    .line 42
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    new-instance v3, Lcom/facebook/react/bridge/JavaScriptModuleRegistry$JavaScriptModuleInvocationHandler;

    invoke-direct {v3, p1, p2}, Lcom/facebook/react/bridge/JavaScriptModuleRegistry$JavaScriptModuleInvocationHandler;-><init>(Lcom/facebook/react/bridge/CatalystInstance;Ljava/lang/Class;)V

    .line 41
    invoke-static {v1, v2, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/JavaScriptModule;

    .line 45
    .local v1, "interfaceProxy":Lcom/facebook/react/bridge/JavaScriptModule;
    iget-object v2, p0, Lcom/facebook/react/bridge/JavaScriptModuleRegistry;->mModuleInstances:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    monitor-exit p0

    return-object v1

    .line 35
    .end local v0    # "module":Lcom/facebook/react/bridge/JavaScriptModule;
    .end local v1    # "interfaceProxy":Lcom/facebook/react/bridge/JavaScriptModule;
    .end local p0    # "this":Lcom/facebook/react/bridge/JavaScriptModuleRegistry;
    .end local p1    # "instance":Lcom/facebook/react/bridge/CatalystInstance;
    .end local p2    # "moduleInterface":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
