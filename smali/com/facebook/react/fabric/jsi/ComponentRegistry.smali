.class public Lcom/facebook/react/fabric/jsi/ComponentRegistry;
.super Ljava/lang/Object;
.source "ComponentRegistry.java"


# instance fields
.field private final mHybridData:Lcom/facebook/jni/HybridData;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 13
    invoke-static {}, Lcom/facebook/react/fabric/jsi/FabricSoLoader;->staticInit()V

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {}, Lcom/facebook/react/fabric/jsi/ComponentRegistry;->initHybrid()Lcom/facebook/jni/HybridData;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/fabric/jsi/ComponentRegistry;->mHybridData:Lcom/facebook/jni/HybridData;

    .line 23
    return-void
.end method

.method private static native initHybrid()Lcom/facebook/jni/HybridData;
.end method
