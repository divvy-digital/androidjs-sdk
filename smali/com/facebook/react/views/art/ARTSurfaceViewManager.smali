.class public Lcom/facebook/react/views/art/ARTSurfaceViewManager;
.super Lcom/facebook/react/uimanager/BaseViewManager;
.source "ARTSurfaceViewManager.java"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "ARTSurfaceView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/BaseViewManager<",
        "Lcom/facebook/react/views/art/ARTSurfaceView;",
        "Lcom/facebook/react/views/art/ARTSurfaceViewShadowNode;",
        ">;"
    }
.end annotation


# static fields
.field private static final MEASURE_FUNCTION:Lcom/facebook/yoga/YogaMeasureFunction;

.field public static final REACT_CLASS:Ljava/lang/String; = "ARTSurfaceView"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/facebook/react/views/art/ARTSurfaceViewManager$1;

    invoke-direct {v0}, Lcom/facebook/react/views/art/ARTSurfaceViewManager$1;-><init>()V

    sput-object v0, Lcom/facebook/react/views/art/ARTSurfaceViewManager;->MEASURE_FUNCTION:Lcom/facebook/yoga/YogaMeasureFunction;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/facebook/react/uimanager/BaseViewManager;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createShadowNodeInstance()Lcom/facebook/react/uimanager/ReactShadowNode;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/facebook/react/views/art/ARTSurfaceViewManager;->createShadowNodeInstance()Lcom/facebook/react/views/art/ARTSurfaceViewShadowNode;

    move-result-object v0

    return-object v0
.end method

.method public createShadowNodeInstance()Lcom/facebook/react/views/art/ARTSurfaceViewShadowNode;
    .locals 2

    .line 46
    new-instance v0, Lcom/facebook/react/views/art/ARTSurfaceViewShadowNode;

    invoke-direct {v0}, Lcom/facebook/react/views/art/ARTSurfaceViewShadowNode;-><init>()V

    .line 47
    .local v0, "node":Lcom/facebook/react/views/art/ARTSurfaceViewShadowNode;
    sget-object v1, Lcom/facebook/react/views/art/ARTSurfaceViewManager;->MEASURE_FUNCTION:Lcom/facebook/yoga/YogaMeasureFunction;

    invoke-virtual {v0, v1}, Lcom/facebook/react/views/art/ARTSurfaceViewShadowNode;->setMeasureFunction(Lcom/facebook/yoga/YogaMeasureFunction;)V

    .line 48
    return-object v0
.end method

.method protected bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/facebook/react/views/art/ARTSurfaceViewManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/react/views/art/ARTSurfaceView;

    move-result-object p1

    return-object p1
.end method

.method protected createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/react/views/art/ARTSurfaceView;
    .locals 1
    .param p1, "reactContext"    # Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 58
    new-instance v0, Lcom/facebook/react/views/art/ARTSurfaceView;

    invoke-direct {v0, p1}, Lcom/facebook/react/views/art/ARTSurfaceView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 41
    const-string v0, "ARTSurfaceView"

    return-object v0
.end method

.method public getShadowNodeClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/facebook/react/views/art/ARTSurfaceViewShadowNode;",
            ">;"
        }
    .end annotation

    .line 53
    const-class v0, Lcom/facebook/react/views/art/ARTSurfaceViewShadowNode;

    return-object v0
.end method

.method public bridge synthetic setBackgroundColor(Landroid/view/View;I)V
    .locals 0

    .line 21
    check-cast p1, Lcom/facebook/react/views/art/ARTSurfaceView;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/art/ARTSurfaceViewManager;->setBackgroundColor(Lcom/facebook/react/views/art/ARTSurfaceView;I)V

    return-void
.end method

.method public setBackgroundColor(Lcom/facebook/react/views/art/ARTSurfaceView;I)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/art/ARTSurfaceView;
    .param p2, "backgroundColor"    # I

    .line 72
    return-void
.end method

.method public bridge synthetic updateExtraData(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p1, Lcom/facebook/react/views/art/ARTSurfaceView;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/art/ARTSurfaceViewManager;->updateExtraData(Lcom/facebook/react/views/art/ARTSurfaceView;Ljava/lang/Object;)V

    return-void
.end method

.method public updateExtraData(Lcom/facebook/react/views/art/ARTSurfaceView;Ljava/lang/Object;)V
    .locals 1
    .param p1, "root"    # Lcom/facebook/react/views/art/ARTSurfaceView;
    .param p2, "extraData"    # Ljava/lang/Object;

    .line 63
    move-object v0, p2

    check-cast v0, Lcom/facebook/react/views/art/ARTSurfaceViewShadowNode;

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/art/ARTSurfaceView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 64
    return-void
.end method
