.class public Lcom/facebook/react/views/webview/events/TopLoadingFinishEvent;
.super Lcom/facebook/react/uimanager/events/Event;
.source "TopLoadingFinishEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/events/Event<",
        "Lcom/facebook/react/views/webview/events/TopLoadingFinishEvent;",
        ">;"
    }
.end annotation


# static fields
.field public static final EVENT_NAME:Ljava/lang/String; = "topLoadingFinish"


# instance fields
.field private mEventData:Lcom/facebook/react/bridge/WritableMap;


# direct methods
.method public constructor <init>(ILcom/facebook/react/bridge/WritableMap;)V
    .locals 0
    .param p1, "viewId"    # I
    .param p2, "eventData"    # Lcom/facebook/react/bridge/WritableMap;

    .line 23
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/events/Event;-><init>(I)V

    .line 24
    iput-object p2, p0, Lcom/facebook/react/views/webview/events/TopLoadingFinishEvent;->mEventData:Lcom/facebook/react/bridge/WritableMap;

    .line 25
    return-void
.end method


# virtual methods
.method public canCoalesce()Z
    .locals 1

    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public dispatch(Lcom/facebook/react/uimanager/events/RCTEventEmitter;)V
    .locals 3
    .param p1, "rctEventEmitter"    # Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    .line 45
    invoke-virtual {p0}, Lcom/facebook/react/views/webview/events/TopLoadingFinishEvent;->getViewTag()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/react/views/webview/events/TopLoadingFinishEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/react/views/webview/events/TopLoadingFinishEvent;->mEventData:Lcom/facebook/react/bridge/WritableMap;

    invoke-interface {p1, v0, v1, v2}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 46
    return-void
.end method

.method public getCoalescingKey()S
    .locals 1

    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    .line 29
    const-string v0, "topLoadingFinish"

    return-object v0
.end method
