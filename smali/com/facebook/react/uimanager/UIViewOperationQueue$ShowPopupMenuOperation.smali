.class final Lcom/facebook/react/uimanager/UIViewOperationQueue$ShowPopupMenuOperation;
.super Lcom/facebook/react/uimanager/UIViewOperationQueue$ViewOperation;
.source "UIViewOperationQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/uimanager/UIViewOperationQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShowPopupMenuOperation"
.end annotation


# instance fields
.field private final mError:Lcom/facebook/react/bridge/Callback;

.field private final mItems:Lcom/facebook/react/bridge/ReadableArray;

.field private final mSuccess:Lcom/facebook/react/bridge/Callback;

.field final synthetic this$0:Lcom/facebook/react/uimanager/UIViewOperationQueue;


# direct methods
.method public constructor <init>(Lcom/facebook/react/uimanager/UIViewOperationQueue;ILcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 0
    .param p2, "tag"    # I
    .param p3, "items"    # Lcom/facebook/react/bridge/ReadableArray;
    .param p4, "error"    # Lcom/facebook/react/bridge/Callback;
    .param p5, "success"    # Lcom/facebook/react/bridge/Callback;

    .line 323
    iput-object p1, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$ShowPopupMenuOperation;->this$0:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    .line 324
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/uimanager/UIViewOperationQueue$ViewOperation;-><init>(Lcom/facebook/react/uimanager/UIViewOperationQueue;I)V

    .line 325
    iput-object p3, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$ShowPopupMenuOperation;->mItems:Lcom/facebook/react/bridge/ReadableArray;

    .line 326
    iput-object p4, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$ShowPopupMenuOperation;->mError:Lcom/facebook/react/bridge/Callback;

    .line 327
    iput-object p5, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$ShowPopupMenuOperation;->mSuccess:Lcom/facebook/react/bridge/Callback;

    .line 328
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5

    .line 332
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$ShowPopupMenuOperation;->this$0:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-static {v0}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->access$000(Lcom/facebook/react/uimanager/UIViewOperationQueue;)Lcom/facebook/react/uimanager/NativeViewHierarchyManager;

    move-result-object v0

    iget v1, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$ShowPopupMenuOperation;->mTag:I

    iget-object v2, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$ShowPopupMenuOperation;->mItems:Lcom/facebook/react/bridge/ReadableArray;

    iget-object v3, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$ShowPopupMenuOperation;->mSuccess:Lcom/facebook/react/bridge/Callback;

    iget-object v4, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$ShowPopupMenuOperation;->mError:Lcom/facebook/react/bridge/Callback;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->showPopupMenu(ILcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    .line 333
    return-void
.end method
