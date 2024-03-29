.class public Lcom/facebook/react/views/checkbox/ReactCheckBoxManager;
.super Lcom/facebook/react/uimanager/SimpleViewManager;
.source "ReactCheckBoxManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/SimpleViewManager<",
        "Lcom/facebook/react/views/checkbox/ReactCheckBox;",
        ">;"
    }
.end annotation


# static fields
.field private static final ON_CHECKED_CHANGE_LISTENER:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private static final REACT_CLASS:Ljava/lang/String; = "AndroidCheckBox"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/facebook/react/views/checkbox/ReactCheckBoxManager$1;

    invoke-direct {v0}, Lcom/facebook/react/views/checkbox/ReactCheckBoxManager$1;-><init>()V

    sput-object v0, Lcom/facebook/react/views/checkbox/ReactCheckBoxManager;->ON_CHECKED_CHANGE_LISTENER:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/facebook/react/uimanager/SimpleViewManager;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/view/View;)V
    .locals 0

    .line 20
    check-cast p2, Lcom/facebook/react/views/checkbox/ReactCheckBox;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/checkbox/ReactCheckBoxManager;->addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/facebook/react/views/checkbox/ReactCheckBox;)V

    return-void
.end method

.method protected addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/facebook/react/views/checkbox/ReactCheckBox;)V
    .locals 1
    .param p1, "reactContext"    # Lcom/facebook/react/uimanager/ThemedReactContext;
    .param p2, "view"    # Lcom/facebook/react/views/checkbox/ReactCheckBox;

    .line 53
    sget-object v0, Lcom/facebook/react/views/checkbox/ReactCheckBoxManager;->ON_CHECKED_CHANGE_LISTENER:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p2, v0}, Lcom/facebook/react/views/checkbox/ReactCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 54
    return-void
.end method

.method protected bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/facebook/react/views/checkbox/ReactCheckBoxManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/react/views/checkbox/ReactCheckBox;

    move-result-object p1

    return-object p1
.end method

.method protected createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/react/views/checkbox/ReactCheckBox;
    .locals 1
    .param p1, "context"    # Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 58
    new-instance v0, Lcom/facebook/react/views/checkbox/ReactCheckBox;

    invoke-direct {v0, p1}, Lcom/facebook/react/views/checkbox/ReactCheckBox;-><init>(Landroid/content/Context;)V

    .line 59
    .local v0, "view":Lcom/facebook/react/views/checkbox/ReactCheckBox;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 48
    const-string v0, "AndroidCheckBox"

    return-object v0
.end method

.method public setEnabled(Lcom/facebook/react/views/checkbox/ReactCheckBox;Z)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/checkbox/ReactCheckBox;
    .param p2, "enabled"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = true
        name = "enabled"
    .end annotation

    .line 64
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/checkbox/ReactCheckBox;->setEnabled(Z)V

    .line 65
    return-void
.end method

.method public setOn(Lcom/facebook/react/views/checkbox/ReactCheckBox;Z)V
    .locals 1
    .param p1, "view"    # Lcom/facebook/react/views/checkbox/ReactCheckBox;
    .param p2, "on"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "on"
    .end annotation

    .line 71
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/checkbox/ReactCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 72
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/checkbox/ReactCheckBox;->setOn(Z)V

    .line 73
    sget-object v0, Lcom/facebook/react/views/checkbox/ReactCheckBoxManager;->ON_CHECKED_CHANGE_LISTENER:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/checkbox/ReactCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 74
    return-void
.end method
