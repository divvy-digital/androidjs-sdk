.class Lcom/facebook/react/fabric/FabricUIManager$1;
.super Lcom/facebook/react/bridge/GuardedRunnable;
.source "FabricUIManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/fabric/FabricUIManager;->updateRootLayoutSpecs(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/fabric/FabricUIManager;

.field final synthetic val$heightMeasureSpec:I

.field final synthetic val$rootTag:I

.field final synthetic val$widthMeasureSpec:I


# direct methods
.method constructor <init>(Lcom/facebook/react/fabric/FabricUIManager;Lcom/facebook/react/bridge/ReactContext;III)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/react/fabric/FabricUIManager;
    .param p2, "reactContext"    # Lcom/facebook/react/bridge/ReactContext;

    .line 368
    iput-object p1, p0, Lcom/facebook/react/fabric/FabricUIManager$1;->this$0:Lcom/facebook/react/fabric/FabricUIManager;

    iput p3, p0, Lcom/facebook/react/fabric/FabricUIManager$1;->val$rootTag:I

    iput p4, p0, Lcom/facebook/react/fabric/FabricUIManager$1;->val$widthMeasureSpec:I

    iput p5, p0, Lcom/facebook/react/fabric/FabricUIManager$1;->val$heightMeasureSpec:I

    invoke-direct {p0, p2}, Lcom/facebook/react/bridge/GuardedRunnable;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-void
.end method


# virtual methods
.method public runGuarded()V
    .locals 7

    .line 371
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager$1;->this$0:Lcom/facebook/react/fabric/FabricUIManager;

    invoke-static {v0}, Lcom/facebook/react/fabric/FabricUIManager;->access$100(Lcom/facebook/react/fabric/FabricUIManager;)Lcom/facebook/react/fabric/jsi/Binding;

    move-result-object v1

    iget v2, p0, Lcom/facebook/react/fabric/FabricUIManager$1;->val$rootTag:I

    iget v0, p0, Lcom/facebook/react/fabric/FabricUIManager$1;->val$widthMeasureSpec:I

    .line 373
    invoke-static {v0}, Lcom/facebook/react/fabric/mounting/LayoutMetricsConversions;->getMinSize(I)F

    move-result v3

    iget v0, p0, Lcom/facebook/react/fabric/FabricUIManager$1;->val$widthMeasureSpec:I

    .line 374
    invoke-static {v0}, Lcom/facebook/react/fabric/mounting/LayoutMetricsConversions;->getMaxSize(I)F

    move-result v4

    iget v0, p0, Lcom/facebook/react/fabric/FabricUIManager$1;->val$heightMeasureSpec:I

    .line 375
    invoke-static {v0}, Lcom/facebook/react/fabric/mounting/LayoutMetricsConversions;->getMinSize(I)F

    move-result v5

    iget v0, p0, Lcom/facebook/react/fabric/FabricUIManager$1;->val$heightMeasureSpec:I

    .line 376
    invoke-static {v0}, Lcom/facebook/react/fabric/mounting/LayoutMetricsConversions;->getMaxSize(I)F

    move-result v6

    .line 371
    invoke-virtual/range {v1 .. v6}, Lcom/facebook/react/fabric/jsi/Binding;->setConstraints(IFFFF)V

    .line 377
    return-void
.end method
