.class public Lcom/facebook/react/animation/AnimationRegistry;
.super Ljava/lang/Object;
.source "AnimationRegistry.java"


# instance fields
.field private final mRegistry:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/react/animation/Animation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/animation/AnimationRegistry;->mRegistry:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public getAnimation(I)Lcom/facebook/react/animation/Animation;
    .locals 1
    .param p1, "animationID"    # I

    .line 28
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 29
    iget-object v0, p0, Lcom/facebook/react/animation/AnimationRegistry;->mRegistry:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/animation/Animation;

    return-object v0
.end method

.method public registerAnimation(Lcom/facebook/react/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Lcom/facebook/react/animation/Animation;

    .line 23
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 24
    iget-object v0, p0, Lcom/facebook/react/animation/AnimationRegistry;->mRegistry:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/facebook/react/animation/Animation;->getAnimationID()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 25
    return-void
.end method

.method public removeAnimation(I)Lcom/facebook/react/animation/Animation;
    .locals 2
    .param p1, "animationID"    # I

    .line 33
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 34
    iget-object v0, p0, Lcom/facebook/react/animation/AnimationRegistry;->mRegistry:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/animation/Animation;

    .line 35
    .local v0, "animation":Lcom/facebook/react/animation/Animation;
    if-eqz v0, :cond_0

    .line 36
    iget-object v1, p0, Lcom/facebook/react/animation/AnimationRegistry;->mRegistry:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 38
    :cond_0
    return-object v0
.end method
