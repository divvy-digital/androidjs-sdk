.class public Lcom/facebook/jni/ThreadScopeSupport;
.super Ljava/lang/Object;
.source "ThreadScopeSupport.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-string v0, "fb"

    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;)Z

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static runStdFunction(J)V
    .locals 0
    .param p0, "ptr"    # J

    .line 21
    invoke-static {p0, p1}, Lcom/facebook/jni/ThreadScopeSupport;->runStdFunctionImpl(J)V

    .line 22
    return-void
.end method

.method private static native runStdFunctionImpl(J)V
.end method
