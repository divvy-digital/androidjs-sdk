.class public Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;
.super Ljava/lang/Object;
.source "ViewGroupDrawingOrderHelper.java"


# instance fields
.field private mDrawingOrderIndices:[I
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mNumberOfChildrenWithZIndex:I

.field private final mViewGroup:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;->mNumberOfChildrenWithZIndex:I

    .line 28
    iput-object p1, p0, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;->mViewGroup:Landroid/view/ViewGroup;

    .line 29
    return-void
.end method


# virtual methods
.method public getChildDrawingOrder(II)I
    .locals 5
    .param p1, "childCount"    # I
    .param p2, "index"    # I

    .line 70
    iget-object v0, p0, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;->mDrawingOrderIndices:[I

    if-nez v0, :cond_1

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v0, "viewsToSort":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 73
    iget-object v2, p0, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper$1;

    invoke-direct {v1, p0}, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper$1;-><init>(Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 93
    new-array v1, p1, [I

    iput-object v1, p0, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;->mDrawingOrderIndices:[I

    .line 94
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, p1, :cond_1

    .line 95
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 96
    .local v2, "child":Landroid/view/View;
    iget-object v3, p0, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;->mDrawingOrderIndices:[I

    iget-object v4, p0, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    aput v4, v3, v1

    .line 94
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 99
    .end local v0    # "viewsToSort":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v1    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;->mDrawingOrderIndices:[I

    aget v0, v0, p2

    return v0
.end method

.method public handleAddView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 36
    invoke-static {p1}, Lcom/facebook/react/uimanager/ViewGroupManager;->getViewZIndex(Landroid/view/View;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    iget v0, p0, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;->mNumberOfChildrenWithZIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;->mNumberOfChildrenWithZIndex:I

    .line 40
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;->mDrawingOrderIndices:[I

    .line 41
    return-void
.end method

.method public handleRemoveView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 49
    invoke-static {p1}, Lcom/facebook/react/uimanager/ViewGroupManager;->getViewZIndex(Landroid/view/View;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    iget v0, p0, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;->mNumberOfChildrenWithZIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;->mNumberOfChildrenWithZIndex:I

    .line 53
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;->mDrawingOrderIndices:[I

    .line 54
    return-void
.end method

.method public shouldEnableCustomDrawingOrder()Z
    .locals 1

    .line 62
    iget v0, p0, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;->mNumberOfChildrenWithZIndex:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public update()V
    .locals 2

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;->mNumberOfChildrenWithZIndex:I

    .line 107
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 108
    iget-object v1, p0, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/react/uimanager/ViewGroupManager;->getViewZIndex(Landroid/view/View;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 109
    iget v1, p0, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;->mNumberOfChildrenWithZIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;->mNumberOfChildrenWithZIndex:I

    .line 107
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/uimanager/ViewGroupDrawingOrderHelper;->mDrawingOrderIndices:[I

    .line 113
    return-void
.end method
