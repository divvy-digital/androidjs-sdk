.class public Landroidx/test/uiautomator/UiCollection;
.super Landroidx/test/uiautomator/UiObject;
.source "UiCollection.java"


# direct methods
.method public constructor <init>(Landroidx/test/uiautomator/UiSelector;)V
    .locals 0
    .param p1, "selector"    # Landroidx/test/uiautomator/UiSelector;

    .line 33
    invoke-direct {p0, p1}, Landroidx/test/uiautomator/UiObject;-><init>(Landroidx/test/uiautomator/UiSelector;)V

    .line 34
    return-void
.end method


# virtual methods
.method public getChildByDescription(Landroidx/test/uiautomator/UiSelector;Ljava/lang/String;)Landroidx/test/uiautomator/UiObject;
    .locals 6
    .param p1, "childPattern"    # Landroidx/test/uiautomator/UiSelector;
    .param p2, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/uiautomator/UiObjectNotFoundException;
        }
    .end annotation

    .line 53
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 54
    if-eqz p2, :cond_2

    .line 55
    invoke-virtual {p0, p1}, Landroidx/test/uiautomator/UiCollection;->getChildCount(Landroidx/test/uiautomator/UiSelector;)I

    move-result v0

    .line 56
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 57
    invoke-virtual {p0, p1, v1}, Landroidx/test/uiautomator/UiCollection;->getChildByInstance(Landroidx/test/uiautomator/UiSelector;I)Landroidx/test/uiautomator/UiObject;

    move-result-object v2

    .line 58
    .local v2, "row":Landroidx/test/uiautomator/UiObject;
    invoke-virtual {v2}, Landroidx/test/uiautomator/UiObject;->getContentDescription()Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, "nodeDesc":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 60
    return-object v2

    .line 62
    :cond_0
    new-instance v4, Landroidx/test/uiautomator/UiSelector;

    invoke-direct {v4}, Landroidx/test/uiautomator/UiSelector;-><init>()V

    invoke-virtual {v4, p2}, Landroidx/test/uiautomator/UiSelector;->descriptionContains(Ljava/lang/String;)Landroidx/test/uiautomator/UiSelector;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/test/uiautomator/UiObject;->getChild(Landroidx/test/uiautomator/UiSelector;)Landroidx/test/uiautomator/UiObject;

    move-result-object v4

    .line 63
    .local v4, "item":Landroidx/test/uiautomator/UiObject;
    invoke-virtual {v4}, Landroidx/test/uiautomator/UiObject;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 64
    return-object v2

    .line 56
    .end local v2    # "row":Landroidx/test/uiautomator/UiObject;
    .end local v3    # "nodeDesc":Ljava/lang/String;
    .end local v4    # "item":Landroidx/test/uiautomator/UiObject;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    .end local v0    # "count":I
    .end local v1    # "x":I
    :cond_2
    new-instance v0, Landroidx/test/uiautomator/UiObjectNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "for description= \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/test/uiautomator/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getChildByInstance(Landroidx/test/uiautomator/UiSelector;I)Landroidx/test/uiautomator/UiObject;
    .locals 3
    .param p1, "childPattern"    # Landroidx/test/uiautomator/UiSelector;
    .param p2, "instance"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/uiautomator/UiObjectNotFoundException;
        }
    .end annotation

    .line 87
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 88
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiCollection;->getSelector()Landroidx/test/uiautomator/UiSelector;

    move-result-object v0

    invoke-static {p1}, Landroidx/test/uiautomator/UiSelector;->patternBuilder(Landroidx/test/uiautomator/UiSelector;)Landroidx/test/uiautomator/UiSelector;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroidx/test/uiautomator/UiSelector;->instance(I)Landroidx/test/uiautomator/UiSelector;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/test/uiautomator/UiSelector;->patternBuilder(Landroidx/test/uiautomator/UiSelector;Landroidx/test/uiautomator/UiSelector;)Landroidx/test/uiautomator/UiSelector;

    move-result-object v0

    .line 90
    .local v0, "patternSelector":Landroidx/test/uiautomator/UiSelector;
    new-instance v1, Landroidx/test/uiautomator/UiObject;

    invoke-direct {v1, v0}, Landroidx/test/uiautomator/UiObject;-><init>(Landroidx/test/uiautomator/UiSelector;)V

    return-object v1
.end method

.method public getChildByText(Landroidx/test/uiautomator/UiSelector;Ljava/lang/String;)Landroidx/test/uiautomator/UiObject;
    .locals 6
    .param p1, "childPattern"    # Landroidx/test/uiautomator/UiSelector;
    .param p2, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/uiautomator/UiObjectNotFoundException;
        }
    .end annotation

    .line 111
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 112
    if-eqz p2, :cond_2

    .line 113
    invoke-virtual {p0, p1}, Landroidx/test/uiautomator/UiCollection;->getChildCount(Landroidx/test/uiautomator/UiSelector;)I

    move-result v0

    .line 114
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 115
    invoke-virtual {p0, p1, v1}, Landroidx/test/uiautomator/UiCollection;->getChildByInstance(Landroidx/test/uiautomator/UiSelector;I)Landroidx/test/uiautomator/UiObject;

    move-result-object v2

    .line 116
    .local v2, "row":Landroidx/test/uiautomator/UiObject;
    invoke-virtual {v2}, Landroidx/test/uiautomator/UiObject;->getText()Ljava/lang/String;

    move-result-object v3

    .line 117
    .local v3, "nodeText":Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 118
    return-object v2

    .line 120
    :cond_0
    new-instance v4, Landroidx/test/uiautomator/UiSelector;

    invoke-direct {v4}, Landroidx/test/uiautomator/UiSelector;-><init>()V

    invoke-virtual {v4, p2}, Landroidx/test/uiautomator/UiSelector;->text(Ljava/lang/String;)Landroidx/test/uiautomator/UiSelector;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/test/uiautomator/UiObject;->getChild(Landroidx/test/uiautomator/UiSelector;)Landroidx/test/uiautomator/UiObject;

    move-result-object v4

    .line 121
    .local v4, "item":Landroidx/test/uiautomator/UiObject;
    invoke-virtual {v4}, Landroidx/test/uiautomator/UiObject;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 122
    return-object v2

    .line 114
    .end local v2    # "row":Landroidx/test/uiautomator/UiObject;
    .end local v3    # "nodeText":Ljava/lang/String;
    .end local v4    # "item":Landroidx/test/uiautomator/UiObject;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    .end local v0    # "count":I
    .end local v1    # "x":I
    :cond_2
    new-instance v0, Landroidx/test/uiautomator/UiObjectNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "for text= \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/test/uiautomator/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getChildCount(Landroidx/test/uiautomator/UiSelector;)I
    .locals 2
    .param p1, "childPattern"    # Landroidx/test/uiautomator/UiSelector;

    .line 141
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 142
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiCollection;->getSelector()Landroidx/test/uiautomator/UiSelector;

    move-result-object v0

    invoke-static {p1}, Landroidx/test/uiautomator/UiSelector;->patternBuilder(Landroidx/test/uiautomator/UiSelector;)Landroidx/test/uiautomator/UiSelector;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/test/uiautomator/UiSelector;->patternBuilder(Landroidx/test/uiautomator/UiSelector;Landroidx/test/uiautomator/UiSelector;)Landroidx/test/uiautomator/UiSelector;

    move-result-object v0

    .line 144
    .local v0, "patternSelector":Landroidx/test/uiautomator/UiSelector;
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiCollection;->getQueryController()Landroidx/test/uiautomator/QueryController;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/test/uiautomator/QueryController;->getPatternCount(Landroidx/test/uiautomator/UiSelector;)I

    move-result v1

    return v1
.end method
