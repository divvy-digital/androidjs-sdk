.class public Lcom/facebook/react/uimanager/ReactYogaConfigProvider;
.super Ljava/lang/Object;
.source "ReactYogaConfigProvider.java"


# static fields
.field private static YOGA_CONFIG:Lcom/facebook/yoga/YogaConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/facebook/yoga/YogaConfig;
    .locals 2

    .line 17
    sget-object v0, Lcom/facebook/react/uimanager/ReactYogaConfigProvider;->YOGA_CONFIG:Lcom/facebook/yoga/YogaConfig;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/facebook/yoga/YogaConfig;

    invoke-direct {v0}, Lcom/facebook/yoga/YogaConfig;-><init>()V

    sput-object v0, Lcom/facebook/react/uimanager/ReactYogaConfigProvider;->YOGA_CONFIG:Lcom/facebook/yoga/YogaConfig;

    .line 19
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/yoga/YogaConfig;->setPointScaleFactor(F)V

    .line 20
    sget-object v0, Lcom/facebook/react/uimanager/ReactYogaConfigProvider;->YOGA_CONFIG:Lcom/facebook/yoga/YogaConfig;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/yoga/YogaConfig;->setUseLegacyStretchBehaviour(Z)V

    .line 22
    :cond_0
    sget-object v0, Lcom/facebook/react/uimanager/ReactYogaConfigProvider;->YOGA_CONFIG:Lcom/facebook/yoga/YogaConfig;

    return-object v0
.end method
