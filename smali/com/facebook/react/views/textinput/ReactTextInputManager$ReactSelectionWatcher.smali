.class Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactSelectionWatcher;
.super Ljava/lang/Object;
.source "ReactTextInputManager.java"

# interfaces
.implements Lcom/facebook/react/views/textinput/SelectionWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/views/textinput/ReactTextInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReactSelectionWatcher"
.end annotation


# instance fields
.field private mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

.field private mPreviousSelectionEnd:I

.field private mPreviousSelectionStart:I

.field private mReactEditText:Lcom/facebook/react/views/textinput/ReactEditText;

.field final synthetic this$0:Lcom/facebook/react/views/textinput/ReactTextInputManager;


# direct methods
.method public constructor <init>(Lcom/facebook/react/views/textinput/ReactTextInputManager;Lcom/facebook/react/views/textinput/ReactEditText;)V
    .locals 1
    .param p2, "editText"    # Lcom/facebook/react/views/textinput/ReactEditText;

    .line 955
    iput-object p1, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactSelectionWatcher;->this$0:Lcom/facebook/react/views/textinput/ReactTextInputManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 956
    iput-object p2, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactSelectionWatcher;->mReactEditText:Lcom/facebook/react/views/textinput/ReactEditText;

    .line 957
    invoke-virtual {p2}, Lcom/facebook/react/views/textinput/ReactEditText;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/bridge/ReactContext;

    .line 958
    .local p1, "reactContext":Lcom/facebook/react/bridge/ReactContext;
    const-class v0, Lcom/facebook/react/uimanager/UIManagerModule;

    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/UIManagerModule;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/UIManagerModule;->getEventDispatcher()Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactSelectionWatcher;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    .line 959
    return-void
.end method


# virtual methods
.method public onSelectionChanged(II)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 966
    iget v0, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactSelectionWatcher;->mPreviousSelectionStart:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactSelectionWatcher;->mPreviousSelectionEnd:I

    if-eq v0, p2, :cond_1

    .line 967
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactSelectionWatcher;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    new-instance v1, Lcom/facebook/react/views/textinput/ReactTextInputSelectionEvent;

    iget-object v2, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactSelectionWatcher;->mReactEditText:Lcom/facebook/react/views/textinput/ReactEditText;

    .line 969
    invoke-virtual {v2}, Lcom/facebook/react/views/textinput/ReactEditText;->getId()I

    move-result v2

    invoke-direct {v1, v2, p1, p2}, Lcom/facebook/react/views/textinput/ReactTextInputSelectionEvent;-><init>(III)V

    .line 967
    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 974
    iput p1, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactSelectionWatcher;->mPreviousSelectionStart:I

    .line 975
    iput p2, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactSelectionWatcher;->mPreviousSelectionEnd:I

    .line 977
    :cond_1
    return-void
.end method
