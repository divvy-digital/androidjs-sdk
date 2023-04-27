.class public Lcom/facebook/react/views/drawer/ReactDrawerLayoutManager$DrawerEventEmitter;
.super Ljava/lang/Object;
.source "ReactDrawerLayoutManager.java"

# interfaces
.implements Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/views/drawer/ReactDrawerLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DrawerEventEmitter"
.end annotation


# instance fields
.field private final mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

.field private final mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;


# direct methods
.method public constructor <init>(Landroidx/drawerlayout/widget/DrawerLayout;Lcom/facebook/react/uimanager/events/EventDispatcher;)V
    .locals 0
    .param p1, "drawerLayout"    # Landroidx/drawerlayout/widget/DrawerLayout;
    .param p2, "eventDispatcher"    # Lcom/facebook/react/uimanager/events/EventDispatcher;

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p1, p0, Lcom/facebook/react/views/drawer/ReactDrawerLayoutManager$DrawerEventEmitter;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 179
    iput-object p2, p0, Lcom/facebook/react/views/drawer/ReactDrawerLayoutManager$DrawerEventEmitter;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    .line 180
    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 196
    iget-object v0, p0, Lcom/facebook/react/views/drawer/ReactDrawerLayoutManager$DrawerEventEmitter;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    new-instance v1, Lcom/facebook/react/views/drawer/events/DrawerClosedEvent;

    iget-object v2, p0, Lcom/facebook/react/views/drawer/ReactDrawerLayoutManager$DrawerEventEmitter;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 197
    invoke-virtual {v2}, Landroidx/drawerlayout/widget/DrawerLayout;->getId()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/facebook/react/views/drawer/events/DrawerClosedEvent;-><init>(I)V

    .line 196
    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 198
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 190
    iget-object v0, p0, Lcom/facebook/react/views/drawer/ReactDrawerLayoutManager$DrawerEventEmitter;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    new-instance v1, Lcom/facebook/react/views/drawer/events/DrawerOpenedEvent;

    iget-object v2, p0, Lcom/facebook/react/views/drawer/ReactDrawerLayoutManager$DrawerEventEmitter;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 191
    invoke-virtual {v2}, Landroidx/drawerlayout/widget/DrawerLayout;->getId()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/facebook/react/views/drawer/events/DrawerOpenedEvent;-><init>(I)V

    .line 190
    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 192
    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "v"    # F

    .line 184
    iget-object v0, p0, Lcom/facebook/react/views/drawer/ReactDrawerLayoutManager$DrawerEventEmitter;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    new-instance v1, Lcom/facebook/react/views/drawer/events/DrawerSlideEvent;

    iget-object v2, p0, Lcom/facebook/react/views/drawer/ReactDrawerLayoutManager$DrawerEventEmitter;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 185
    invoke-virtual {v2}, Landroidx/drawerlayout/widget/DrawerLayout;->getId()I

    move-result v2

    invoke-direct {v1, v2, p2}, Lcom/facebook/react/views/drawer/events/DrawerSlideEvent;-><init>(IF)V

    .line 184
    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 186
    return-void
.end method

.method public onDrawerStateChanged(I)V
    .locals 3
    .param p1, "i"    # I

    .line 202
    iget-object v0, p0, Lcom/facebook/react/views/drawer/ReactDrawerLayoutManager$DrawerEventEmitter;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    new-instance v1, Lcom/facebook/react/views/drawer/events/DrawerStateChangedEvent;

    iget-object v2, p0, Lcom/facebook/react/views/drawer/ReactDrawerLayoutManager$DrawerEventEmitter;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 203
    invoke-virtual {v2}, Landroidx/drawerlayout/widget/DrawerLayout;->getId()I

    move-result v2

    invoke-direct {v1, v2, p1}, Lcom/facebook/react/views/drawer/events/DrawerStateChangedEvent;-><init>(II)V

    .line 202
    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 204
    return-void
.end method
