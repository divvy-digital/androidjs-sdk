.class public abstract Lcom/facebook/react/bridge/NativeArray;
.super Ljava/lang/Object;
.source "NativeArray.java"

# interfaces
.implements Lcom/facebook/react/bridge/NativeArrayInterface;


# instance fields
.field private mHybridData:Lcom/facebook/jni/HybridData;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 19
    invoke-static {}, Lcom/facebook/react/bridge/ReactBridge;->staticInit()V

    .line 20
    return-void
.end method

.method protected constructor <init>(Lcom/facebook/jni/HybridData;)V
    .locals 0
    .param p1, "hybridData"    # Lcom/facebook/jni/HybridData;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/facebook/react/bridge/NativeArray;->mHybridData:Lcom/facebook/jni/HybridData;

    .line 24
    return-void
.end method


# virtual methods
.method public native toString()Ljava/lang/String;
.end method
