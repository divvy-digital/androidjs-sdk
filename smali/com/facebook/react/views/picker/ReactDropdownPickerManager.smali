.class public Lcom/facebook/react/views/picker/ReactDropdownPickerManager;
.super Lcom/facebook/react/views/picker/ReactPickerManager;
.source "ReactDropdownPickerManager.java"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "AndroidDropdownPicker"
.end annotation


# static fields
.field public static final REACT_CLASS:Ljava/lang/String; = "AndroidDropdownPicker"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/facebook/react/views/picker/ReactPickerManager;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/facebook/react/views/picker/ReactDropdownPickerManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/react/views/picker/ReactPicker;

    move-result-object p1

    return-object p1
.end method

.method protected createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/react/views/picker/ReactPicker;
    .locals 2
    .param p1, "reactContext"    # Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 30
    new-instance v0, Lcom/facebook/react/views/picker/ReactPicker;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/facebook/react/views/picker/ReactPicker;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 25
    const-string v0, "AndroidDropdownPicker"

    return-object v0
.end method
