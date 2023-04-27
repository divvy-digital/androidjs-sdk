.class Lcom/facebook/react/animated/SubtractionAnimatedNode;
.super Lcom/facebook/react/animated/ValueAnimatedNode;
.source "SubtractionAnimatedNode.java"


# instance fields
.field private final mInputNodes:[I

.field private final mNativeAnimatedNodesManager:Lcom/facebook/react/animated/NativeAnimatedNodesManager;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/animated/NativeAnimatedNodesManager;)V
    .locals 4
    .param p1, "config"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p2, "nativeAnimatedNodesManager"    # Lcom/facebook/react/animated/NativeAnimatedNodesManager;

    .line 25
    invoke-direct {p0}, Lcom/facebook/react/animated/ValueAnimatedNode;-><init>()V

    .line 26
    iput-object p2, p0, Lcom/facebook/react/animated/SubtractionAnimatedNode;->mNativeAnimatedNodesManager:Lcom/facebook/react/animated/NativeAnimatedNodesManager;

    .line 27
    const-string v0, "input"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v0

    .line 28
    .local v0, "inputNodes":Lcom/facebook/react/bridge/ReadableArray;
    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/facebook/react/animated/SubtractionAnimatedNode;->mInputNodes:[I

    .line 29
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/facebook/react/animated/SubtractionAnimatedNode;->mInputNodes:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 30
    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v3

    aput v3, v2, v1

    .line 29
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 32
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public update()V
    .locals 8

    .line 36
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/facebook/react/animated/SubtractionAnimatedNode;->mInputNodes:[I

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 37
    iget-object v2, p0, Lcom/facebook/react/animated/SubtractionAnimatedNode;->mNativeAnimatedNodesManager:Lcom/facebook/react/animated/NativeAnimatedNodesManager;

    aget v1, v1, v0

    invoke-virtual {v2, v1}, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->getNodeById(I)Lcom/facebook/react/animated/AnimatedNode;

    move-result-object v1

    .line 38
    .local v1, "animatedNode":Lcom/facebook/react/animated/AnimatedNode;
    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/facebook/react/animated/ValueAnimatedNode;

    if-eqz v2, :cond_1

    .line 39
    move-object v2, v1

    check-cast v2, Lcom/facebook/react/animated/ValueAnimatedNode;

    invoke-virtual {v2}, Lcom/facebook/react/animated/ValueAnimatedNode;->getValue()D

    move-result-wide v2

    .line 40
    .local v2, "value":D
    if-nez v0, :cond_0

    .line 41
    iput-wide v2, p0, Lcom/facebook/react/animated/SubtractionAnimatedNode;->mValue:D

    .line 42
    goto :goto_1

    .line 44
    :cond_0
    iget-wide v4, p0, Lcom/facebook/react/animated/SubtractionAnimatedNode;->mValue:D

    move-object v6, v1

    check-cast v6, Lcom/facebook/react/animated/ValueAnimatedNode;

    invoke-virtual {v6}, Lcom/facebook/react/animated/ValueAnimatedNode;->getValue()D

    move-result-wide v6

    sub-double/2addr v4, v6

    iput-wide v4, p0, Lcom/facebook/react/animated/SubtractionAnimatedNode;->mValue:D

    .line 45
    .end local v2    # "value":D
    nop

    .line 36
    .end local v1    # "animatedNode":Lcom/facebook/react/animated/AnimatedNode;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    .restart local v1    # "animatedNode":Lcom/facebook/react/animated/AnimatedNode;
    :cond_1
    new-instance v2, Lcom/facebook/react/bridge/JSApplicationCausedNativeException;

    const-string v3, "Illegal node ID set as an input for Animated.subtract node"

    invoke-direct {v2, v3}, Lcom/facebook/react/bridge/JSApplicationCausedNativeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 50
    .end local v0    # "i":I
    .end local v1    # "animatedNode":Lcom/facebook/react/animated/AnimatedNode;
    :cond_2
    return-void
.end method
