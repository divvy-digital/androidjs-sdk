.class public Landroidx/test/uiautomator/UiSelector;
.super Ljava/lang/Object;
.source "UiSelector.java"


# static fields
.field static final SELECTOR_CHECKABLE:I = 0x1e

.field static final SELECTOR_CHECKED:I = 0xf

.field static final SELECTOR_CHILD:I = 0x13

.field static final SELECTOR_CLASS:I = 0x4

.field static final SELECTOR_CLASS_REGEX:I = 0x1a

.field static final SELECTOR_CLICKABLE:I = 0xe

.field static final SELECTOR_CONTAINER:I = 0x14

.field static final SELECTOR_CONTAINS_DESCRIPTION:I = 0x7

.field static final SELECTOR_CONTAINS_TEXT:I = 0x3

.field static final SELECTOR_COUNT:I = 0x17

.field static final SELECTOR_DESCRIPTION:I = 0x5

.field static final SELECTOR_DESCRIPTION_REGEX:I = 0x1b

.field static final SELECTOR_ENABLED:I = 0xa

.field static final SELECTOR_FOCUSABLE:I = 0xc

.field static final SELECTOR_FOCUSED:I = 0xb

.field static final SELECTOR_ID:I = 0x11

.field static final SELECTOR_INDEX:I = 0x8

.field static final SELECTOR_INSTANCE:I = 0x9

.field static final SELECTOR_LONG_CLICKABLE:I = 0x18

.field static final SELECTOR_NIL:I = 0x0

.field static final SELECTOR_PACKAGE_NAME:I = 0x12

.field static final SELECTOR_PACKAGE_NAME_REGEX:I = 0x1c

.field static final SELECTOR_PARENT:I = 0x16

.field static final SELECTOR_PATTERN:I = 0x15

.field static final SELECTOR_RESOURCE_ID:I = 0x1d

.field static final SELECTOR_RESOURCE_ID_REGEX:I = 0x1f

.field static final SELECTOR_SCROLLABLE:I = 0xd

.field static final SELECTOR_SELECTED:I = 0x10

.field static final SELECTOR_START_DESCRIPTION:I = 0x6

.field static final SELECTOR_START_TEXT:I = 0x2

.field static final SELECTOR_TEXT:I = 0x1

.field static final SELECTOR_TEXT_REGEX:I = 0x19


# instance fields
.field private mSelectorAttributes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    .line 71
    return-void
.end method

.method constructor <init>(Landroidx/test/uiautomator/UiSelector;)V
    .locals 1
    .param p1, "selector"    # Landroidx/test/uiautomator/UiSelector;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    .line 74
    invoke-virtual {p1}, Landroidx/test/uiautomator/UiSelector;->cloneSelector()Landroidx/test/uiautomator/UiSelector;

    move-result-object v0

    iget-object v0, v0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    iput-object v0, p0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    .line 75
    return-void
.end method

.method private buildSelector(ILjava/lang/Object;)Landroidx/test/uiautomator/UiSelector;
    .locals 2
    .param p1, "selectorId"    # I
    .param p2, "selectorValue"    # Ljava/lang/Object;

    .line 637
    new-instance v0, Landroidx/test/uiautomator/UiSelector;

    invoke-direct {v0, p0}, Landroidx/test/uiautomator/UiSelector;-><init>(Landroidx/test/uiautomator/UiSelector;)V

    .line 638
    .local v0, "selector":Landroidx/test/uiautomator/UiSelector;
    const/16 v1, 0x13

    if-eq p1, v1, :cond_1

    const/16 v1, 0x16

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 641
    :cond_0
    iget-object v1, v0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 639
    :cond_1
    :goto_0
    invoke-direct {v0}, Landroidx/test/uiautomator/UiSelector;->getLastSubSelector()Landroidx/test/uiautomator/UiSelector;

    move-result-object v1

    iget-object v1, v1, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 642
    :goto_1
    return-object v0
.end method

.method private containerSelector(Landroidx/test/uiautomator/UiSelector;)Landroidx/test/uiautomator/UiSelector;
    .locals 1
    .param p1, "selector"    # Landroidx/test/uiautomator/UiSelector;

    .line 581
    const/16 v0, 0x14

    invoke-direct {p0, v0, p1}, Landroidx/test/uiautomator/UiSelector;->buildSelector(ILjava/lang/Object;)Landroidx/test/uiautomator/UiSelector;

    move-result-object v0

    return-object v0
.end method

.method private getLastSubSelector()Landroidx/test/uiautomator/UiSelector;
    .locals 2

    .line 930
    iget-object v0, p0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 931
    iget-object v0, p0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/uiautomator/UiSelector;

    .line 932
    .local v0, "child":Landroidx/test/uiautomator/UiSelector;
    invoke-direct {v0}, Landroidx/test/uiautomator/UiSelector;->getLastSubSelector()Landroidx/test/uiautomator/UiSelector;

    move-result-object v1

    if-nez v1, :cond_0

    .line 933
    return-object v0

    .line 935
    :cond_0
    invoke-direct {v0}, Landroidx/test/uiautomator/UiSelector;->getLastSubSelector()Landroidx/test/uiautomator/UiSelector;

    move-result-object v1

    return-object v1

    .line 936
    .end local v0    # "child":Landroidx/test/uiautomator/UiSelector;
    :cond_1
    iget-object v0, p0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_3

    .line 937
    iget-object v0, p0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/uiautomator/UiSelector;

    .line 938
    .local v0, "parent":Landroidx/test/uiautomator/UiSelector;
    invoke-direct {v0}, Landroidx/test/uiautomator/UiSelector;->getLastSubSelector()Landroidx/test/uiautomator/UiSelector;

    move-result-object v1

    if-nez v1, :cond_2

    .line 939
    return-object v0

    .line 941
    :cond_2
    invoke-direct {v0}, Landroidx/test/uiautomator/UiSelector;->getLastSubSelector()Landroidx/test/uiautomator/UiSelector;

    move-result-object v1

    return-object v1

    .line 943
    .end local v0    # "parent":Landroidx/test/uiautomator/UiSelector;
    :cond_3
    return-object p0
.end method

.method private matchOrUpdateInstance()Z
    .locals 5

    .line 856
    const/4 v0, 0x0

    .line 857
    .local v0, "currentSelectorCounter":I
    const/4 v1, 0x0

    .line 860
    .local v1, "currentSelectorInstance":I
    iget-object v2, p0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_0

    .line 861
    iget-object v2, p0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 866
    :cond_0
    iget-object v2, p0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    const/16 v3, 0x17

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_1

    .line 867
    iget-object v2, p0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 871
    :cond_1
    if-ne v1, v0, :cond_2

    .line 872
    const/4 v2, 0x1

    return v2

    .line 875
    :cond_2
    if-le v1, v0, :cond_3

    .line 876
    iget-object v2, p0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 878
    :cond_3
    const/4 v2, 0x0

    return v2
.end method

.method static patternBuilder(Landroidx/test/uiautomator/UiSelector;)Landroidx/test/uiautomator/UiSelector;
    .locals 1
    .param p0, "selector"    # Landroidx/test/uiautomator/UiSelector;

    .line 93
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiSelector;->hasPatternSelector()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Landroidx/test/uiautomator/UiSelector;

    invoke-direct {v0}, Landroidx/test/uiautomator/UiSelector;-><init>()V

    invoke-direct {v0, p0}, Landroidx/test/uiautomator/UiSelector;->patternSelector(Landroidx/test/uiautomator/UiSelector;)Landroidx/test/uiautomator/UiSelector;

    move-result-object v0

    return-object v0

    .line 96
    :cond_0
    return-object p0
.end method

.method static patternBuilder(Landroidx/test/uiautomator/UiSelector;Landroidx/test/uiautomator/UiSelector;)Landroidx/test/uiautomator/UiSelector;
    .locals 2
    .param p0, "container"    # Landroidx/test/uiautomator/UiSelector;
    .param p1, "pattern"    # Landroidx/test/uiautomator/UiSelector;

    .line 100
    new-instance v0, Landroidx/test/uiautomator/UiSelector;

    new-instance v1, Landroidx/test/uiautomator/UiSelector;

    invoke-direct {v1}, Landroidx/test/uiautomator/UiSelector;-><init>()V

    invoke-direct {v1, p0}, Landroidx/test/uiautomator/UiSelector;->containerSelector(Landroidx/test/uiautomator/UiSelector;)Landroidx/test/uiautomator/UiSelector;

    move-result-object v1

    invoke-direct {v1, p1}, Landroidx/test/uiautomator/UiSelector;->patternSelector(Landroidx/test/uiautomator/UiSelector;)Landroidx/test/uiautomator/UiSelector;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/test/uiautomator/UiSelector;-><init>(Landroidx/test/uiautomator/UiSelector;)V

    return-object v0
.end method

.method private patternSelector(Landroidx/test/uiautomator/UiSelector;)Landroidx/test/uiautomator/UiSelector;
    .locals 1
    .param p1, "selector"    # Landroidx/test/uiautomator/UiSelector;

    .line 577
    const/16 v0, 0x15

    invoke-direct {p0, v0, p1}, Landroidx/test/uiautomator/UiSelector;->buildSelector(ILjava/lang/Object;)Landroidx/test/uiautomator/UiSelector;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public checkable(Z)Landroidx/test/uiautomator/UiSelector;
    .locals 2
    .param p1, "val"    # Z

    .line 537
    const/16 v0, 0x1e

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroidx/test/uiautomator/UiSelector;->buildSelector(ILjava/lang/Object;)Landroidx/test/uiautomator/UiSelector;

    move-result-object v0

    return-object v0
.end method

.method public checked(Z)Landroidx/test/uiautomator/UiSelector;
    .locals 2
    .param p1, "val"    # Z

    .line 499
    const/16 v0, 0xf

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroidx/test/uiautomator/UiSelector;->buildSelector(ILjava/lang/Object;)Landroidx/test/uiautomator/UiSelector;

    move-result-object v0

    return-object v0
.end method

.method public childSelector(Landroidx/test/uiautomator/UiSelector;)Landroidx/test/uiautomator/UiSelector;
    .locals 2
    .param p1, "selector"    # Landroidx/test/uiautomator/UiSelector;

    .line 570
    if-eqz p1, :cond_0

    .line 573
    const/16 v0, 0x13

    invoke-direct {p0, v0, p1}, Landroidx/test/uiautomator/UiSelector;->buildSelector(ILjava/lang/Object;)Landroidx/test/uiautomator/UiSelector;

    move-result-object v0

    return-object v0

    .line 571
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "selector cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public className(Ljava/lang/Class;)Landroidx/test/uiautomator/UiSelector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Landroidx/test/uiautomator/UiSelector;"
        }
    .end annotation

    .line 213
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p1, :cond_0

    .line 216
    const/4 v0, 0x4

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroidx/test/uiautomator/UiSelector;->buildSelector(ILjava/lang/Object;)Landroidx/test/uiautomator/UiSelector;

    move-result-object v0

    return-object v0

    .line 214
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "type cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public className(Ljava/lang/String;)Landroidx/test/uiautomator/UiSelector;
    .locals 2
    .param p1, "className"    # Ljava/lang/String;

    .line 183
    if-eqz p1, :cond_0

    .line 186
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroidx/test/uiautomator/UiSelector;->buildSelector(ILjava/lang/Object;)Landroidx/test/uiautomator/UiSelector;

    move-result-object v0

    return-object v0

    .line 184
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "className cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public classNameMatches(Ljava/lang/String;)Landroidx/test/uiautomator/UiSelector;
    .locals 2
    .param p1, "regex"    # Ljava/lang/String;

    .line 198
    if-eqz p1, :cond_0

    .line 201
    const/16 v0, 0x1a

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroidx/test/uiautomator/UiSelector;->buildSelector(ILjava/lang/Object;)Landroidx/test/uiautomator/UiSelector;

    move-result-object v0

    return-object v0

    .line 199
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "regex cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clickable(Z)Landroidx/test/uiautomator/UiSelector;
    .locals 2
    .param p1, "val"    # Z

    .line 518
    const/16 v0, 0xe

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroidx/test/uiautomator/UiSelector;->buildSelector(ILjava/lang/Object;)Landroidx/test/uiautomator/UiSelector;

    move-result-object v0

    return-object v0
.end method

.method protected cloneSelector()Landroidx/test/uiautomator/UiSelector;
    .locals 4

    .line 81
    new-instance v0, Landroidx/test/uiautomator/UiSelector;

    invoke-direct {v0}, Landroidx/test/uiautomator/UiSelector;-><init>()V

    .line 82
    .local v0, "ret":Landroidx/test/uiautomator/UiSelector;
    iget-object v1, p0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    iput-object v1, v0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    .line 83
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiSelector;->hasChildSelector()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, v0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    new-instance v2, Landroidx/test/uiautomator/UiSelector;

    invoke-virtual {p0}, Landroidx/test/uiautomator/UiSelector;->getChildSelector()Landroidx/test/uiautomator/UiSelector;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/test/uiautomator/UiSelector;-><init>(Landroidx/test/uiautomator/UiSelector;)V

    const/16 v3, 0x13

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 85
    :cond_0
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiSelector;->hasParentSelector()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    iget-object v1, v0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    new-instance v2, Landroidx/test/uiautomator/UiSelector;

    invoke-virtual {p0}, Landroidx/test/uiautomator/UiSelector;->getParentSelector()Landroidx/test/uiautomator/UiSelector;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/test/uiautomator/UiSelector;-><init>(Landroidx/test/uiautomator/UiSelector;)V

    const/16 v3, 0x16

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 87
    :cond_1
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiSelector;->hasPatternSelector()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 88
    iget-object v1, v0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    new-instance v2, Landroidx/test/uiautomator/UiSelector;

    invoke-virtual {p0}, Landroidx/test/uiautomator/UiSelector;->getPatternSelector()Landroidx/test/uiautomator/UiSelector;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/test/uiautomator/UiSelector;-><init>(Landroidx/test/uiautomator/UiSelector;)V

    const/16 v3, 0x15

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 89
    :cond_2
    return-object v0
.end method

.method public description(Ljava/lang/String;)Landroidx/test/uiautomator/UiSelector;
    .locals 2
    .param p1, "desc"    # Ljava/lang/String;

    .line 237
    if-eqz p1, :cond_0

    .line 240
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Landroidx/test/uiautomator/UiSelector;->buildSelector(ILjava/lang/Object;)Landroidx/test/uiautomator/UiSelector;

    move-result-object v0

    return-object v0

    .line 238
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "desc cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public descriptionContains(Ljava/lang/String;)Landroidx/test/uiautomator/UiSelector;
    .locals 2
    .param p1, "desc"    # Ljava/lang/String;

    .line 307
    if-eqz p1, :cond_0

    .line 310
    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Landroidx/test/uiautomator/UiSelector;->buildSelector(ILjava/lang/Object;)Landroidx/test/uiautomator/UiSelector;

    move-result-object v0

    return-object v0

    .line 308
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "desc cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public descriptionMatches(Ljava/lang/String;)Landroidx/test/uiautomator/UiSelector;
    .locals 2
    .param p1, "regex"    # Ljava/lang/String;

    .line 259
    if-eqz p1, :cond_0

    .line 262
    const/16 v0, 0x1b

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroidx/test/uiautomator/UiSelector;->buildSelector(ILjava/lang/Object;)Landroidx/test/uiautomator/UiSelector;

    move-result-object v0

    return-object v0

    .line 260
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "regex cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public descriptionStartsWith(Ljava/lang/String;)Landroidx/test/uiautomator/UiSelector;
    .locals 2
    .param p1, "desc"    # Ljava/lang/String;

    .line 283
    if-eqz p1, :cond_0

    .line 286
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Landroidx/test/uiautomator/UiSelector;->buildSelector(ILjava/lang/Object;)Landroidx/test/uiautomator/UiSelector;

    move-result-object v0

    return-object v0

    .line 284
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "desc cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method dumpToString(Z)Ljava/lang/String;
    .locals 6
    .param p1, "all"    # Z

    .line 952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 953
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Landroidx/test/uiautomator/UiSelector;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 954
    iget-object v1, p0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 955
    .local v1, "criterionCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_5

    .line 956
    if-lez v2, :cond_0

    .line 957
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 959
    :cond_0
    iget-object v3, p0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 960
    .local v3, "criterion":I
    packed-switch v3, :pswitch_data_0

    .line 1067
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UNDEFINED="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1064
    :pswitch_0
    const-string v4, "RESOURCE_ID_REGEX="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1065
    goto/16 :goto_1

    .line 1013
    :pswitch_1
    const-string v4, "CHECKABLE="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1014
    goto/16 :goto_1

    .line 1061
    :pswitch_2
    const-string v4, "RESOURCE_ID="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1062
    goto/16 :goto_1

    .line 1058
    :pswitch_3
    const-string v4, "PACKAGE_NAME_REGEX="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1059
    goto/16 :goto_1

    .line 983
    :pswitch_4
    const-string v4, "DESCRIPTION_REGEX="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 984
    goto/16 :goto_1

    .line 977
    :pswitch_5
    const-string v4, "CLASS_REGEX="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 978
    goto/16 :goto_1

    .line 965
    :pswitch_6
    const-string v4, "TEXT_REGEX="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 966
    goto/16 :goto_1

    .line 1016
    :pswitch_7
    const-string v4, "LONG_CLICKABLE="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1017
    goto/16 :goto_1

    .line 1052
    :pswitch_8
    const-string v4, "COUNT="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1053
    goto/16 :goto_1

    .line 1046
    :pswitch_9
    if-eqz p1, :cond_1

    .line 1047
    const-string v4, "PARENT="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1049
    :cond_1
    const-string v4, "PARENT[..]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1050
    goto/16 :goto_1

    .line 1034
    :pswitch_a
    if-eqz p1, :cond_2

    .line 1035
    const-string v4, "PATTERN="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1037
    :cond_2
    const-string v4, "PATTERN[..]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1038
    goto/16 :goto_1

    .line 1040
    :pswitch_b
    if-eqz p1, :cond_3

    .line 1041
    const-string v4, "CONTAINER="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1043
    :cond_3
    const-string v4, "CONTAINER[..]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1044
    goto/16 :goto_1

    .line 1028
    :pswitch_c
    if-eqz p1, :cond_4

    .line 1029
    const-string v4, "CHILD="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1031
    :cond_4
    const-string v4, "CHILD[..]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1032
    goto/16 :goto_1

    .line 1055
    :pswitch_d
    const-string v4, "PACKAGE NAME="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1056
    goto/16 :goto_1

    .line 1025
    :pswitch_e
    const-string v4, "ID="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1026
    goto/16 :goto_1

    .line 1022
    :pswitch_f
    const-string v4, "SELECTED="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1023
    goto/16 :goto_1

    .line 1019
    :pswitch_10
    const-string v4, "CHECKED="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1020
    goto/16 :goto_1

    .line 1010
    :pswitch_11
    const-string v4, "CLICKABLE="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1011
    goto/16 :goto_1

    .line 1007
    :pswitch_12
    const-string v4, "SCROLLABLE="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1008
    goto/16 :goto_1

    .line 1004
    :pswitch_13
    const-string v4, "FOCUSABLE="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1005
    goto/16 :goto_1

    .line 1001
    :pswitch_14
    const-string v4, "FOCUSED="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1002
    goto/16 :goto_1

    .line 998
    :pswitch_15
    const-string v4, "ENABLED="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 999
    goto/16 :goto_1

    .line 995
    :pswitch_16
    const-string v4, "INSTANCE="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 996
    goto/16 :goto_1

    .line 992
    :pswitch_17
    const-string v4, "INDEX="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 993
    goto :goto_1

    .line 989
    :pswitch_18
    const-string v4, "CONTAINS_DESCRIPTION="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 990
    goto :goto_1

    .line 986
    :pswitch_19
    const-string v4, "START_DESCRIPTION="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 987
    goto :goto_1

    .line 980
    :pswitch_1a
    const-string v4, "DESCRIPTION="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 981
    goto :goto_1

    .line 974
    :pswitch_1b
    const-string v4, "CLASS="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 975
    goto :goto_1

    .line 971
    :pswitch_1c
    const-string v4, "CONTAINS_TEXT="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 972
    goto :goto_1

    .line 968
    :pswitch_1d
    const-string v4, "START_TEXT="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 969
    goto :goto_1

    .line 962
    :pswitch_1e
    const-string v4, "TEXT="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 963
    nop

    .line 955
    .end local v3    # "criterion":I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1070
    .end local v2    # "i":I
    :cond_5
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1071
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public enabled(Z)Landroidx/test/uiautomator/UiSelector;
    .locals 2
    .param p1, "val"    # Z

    .line 402
    const/16 v0, 0xa

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroidx/test/uiautomator/UiSelector;->buildSelector(ILjava/lang/Object;)Landroidx/test/uiautomator/UiSelector;

    move-result-object v0

    return-object v0
.end method

.method public focusable(Z)Landroidx/test/uiautomator/UiSelector;
    .locals 2
    .param p1, "val"    # Z

    .line 440
    const/16 v0, 0xc

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroidx/test/uiautomator/UiSelector;->buildSelector(ILjava/lang/Object;)Landroidx/test/uiautomator/UiSelector;

    move-result-object v0

    return-object v0
.end method

.method public focused(Z)Landroidx/test/uiautomator/UiSelector;
    .locals 2
    .param p1, "val"    # Z

    .line 421
    const/16 v0, 0xb

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroidx/test/uiautomator/UiSelector;->buildSelector(ILjava/lang/Object;)Landroidx/test/uiautomator/UiSelector;

    move-result-object v0

    return-object v0
.end method

.method public fromParent(Landroidx/test/uiautomator/UiSelector;)Landroidx/test/uiautomator/UiSelector;
    .locals 2
    .param p1, "selector"    # Landroidx/test/uiautomator/UiSelector;

    .line 596
    if-eqz p1, :cond_0

    .line 599
    const/16 v0, 0x16

    invoke-direct {p0, v0, p1}, Landroidx/test/uiautomator/UiSelector;->buildSelector(ILjava/lang/Object;)Landroidx/test/uiautomator/UiSelector;

    move-result-object v0

    return-object v0

    .line 597
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "selector cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getBoolean(I)Z
    .locals 2
    .param p1, "criterion"    # I

    .line 694
    iget-object v0, p0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method getChildSelector()Landroidx/test/uiautomator/UiSelector;
    .locals 3

    .line 655
    iget-object v0, p0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    const/16 v1, 0x13

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/uiautomator/UiSelector;

    .line 656
    .local v0, "selector":Landroidx/test/uiautomator/UiSelector;
    if-eqz v0, :cond_0

    .line 657
    new-instance v1, Landroidx/test/uiautomator/UiSelector;

    invoke-direct {v1, v0}, Landroidx/test/uiautomator/UiSelector;-><init>(Landroidx/test/uiautomator/UiSelector;)V

    return-object v1

    .line 658
    :cond_0
    return-object v2
.end method

.method getContainerSelector()Landroidx/test/uiautomator/UiSelector;
    .locals 3

    .line 670
    iget-object v0, p0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    const/16 v1, 0x14

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/uiautomator/UiSelector;

    .line 672
    .local v0, "selector":Landroidx/test/uiautomator/UiSelector;
    if-eqz v0, :cond_0

    .line 673
    new-instance v1, Landroidx/test/uiautomator/UiSelector;

    invoke-direct {v1, v0}, Landroidx/test/uiautomator/UiSelector;-><init>(Landroidx/test/uiautomator/UiSelector;)V

    return-object v1

    .line 674
    :cond_0
    return-object v2
.end method

.method getInstance()I
    .locals 1

    .line 686
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Landroidx/test/uiautomator/UiSelector;->getInt(I)I

    move-result v0

    return v0
.end method

.method getInt(I)I
    .locals 2
    .param p1, "criterion"    # I

    .line 698
    iget-object v0, p0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method getParentSelector()Landroidx/test/uiautomator/UiSelector;
    .locals 3

    .line 678
    iget-object v0, p0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    const/16 v1, 0x16

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/uiautomator/UiSelector;

    .line 680
    .local v0, "selector":Landroidx/test/uiautomator/UiSelector;
    if-eqz v0, :cond_0

    .line 681
    new-instance v1, Landroidx/test/uiautomator/UiSelector;

    invoke-direct {v1, v0}, Landroidx/test/uiautomator/UiSelector;-><init>(Landroidx/test/uiautomator/UiSelector;)V

    return-object v1

    .line 682
    :cond_0
    return-object v2
.end method

.method getPattern(I)Ljava/util/regex/Pattern;
    .locals 2
    .param p1, "criterion"    # I

    .line 702
    iget-object v0, p0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    return-object v0
.end method

.method getPatternSelector()Landroidx/test/uiautomator/UiSelector;
    .locals 3

    .line 662
    iget-object v0, p0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    const/16 v1, 0x15

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/uiautomator/UiSelector;

    .line 664
    .local v0, "selector":Landroidx/test/uiautomator/UiSelector;
    if-eqz v0, :cond_0

    .line 665
    new-instance v1, Landroidx/test/uiautomator/UiSelector;

    invoke-direct {v1, v0}, Landroidx/test/uiautomator/UiSelector;-><init>(Landroidx/test/uiautomator/UiSelector;)V

    return-object v1

    .line 666
    :cond_0
    return-object v2
.end method

.method getString(I)Ljava/lang/String;
    .locals 2
    .param p1, "criterion"    # I

    .line 690
    iget-object v0, p0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method hasChildSelector()Z
    .locals 2

    .line 895
    iget-object v0, p0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 896
    const/4 v0, 0x0

    return v0

    .line 898
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasContainerSelector()Z
    .locals 2

    .line 909
    iget-object v0, p0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 910
    const/4 v0, 0x0

    return v0

    .line 912
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasParentSelector()Z
    .locals 2

    .line 916
    iget-object v0, p0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 917
    const/4 v0, 0x0

    return v0

    .line 919
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasPatternSelector()Z
    .locals 2

    .line 902
    iget-object v0, p0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 903
    const/4 v0, 0x0

    return v0

    .line 905
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public index(I)Landroidx/test/uiautomator/UiSelector;
    .locals 2
    .param p1, "index"    # I

    .line 357
    const/16 v0, 0x8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroidx/test/uiautomator/UiSelector;->buildSelector(ILjava/lang/Object;)Landroidx/test/uiautomator/UiSelector;

    move-result-object v0

    return-object v0
.end method

.method public instance(I)Landroidx/test/uiautomator/UiSelector;
    .locals 2
    .param p1, "instance"    # I

    .line 383
    const/16 v0, 0x9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroidx/test/uiautomator/UiSelector;->buildSelector(ILjava/lang/Object;)Landroidx/test/uiautomator/UiSelector;

    move-result-object v0

    return-object v0
.end method

.method isLeaf()Z
    .locals 2

    .line 887
    iget-object v0, p0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 889
    const/4 v0, 0x1

    return v0

    .line 891
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method isMatchFor(Landroid/view/accessibility/AccessibilityNodeInfo;I)Z
    .locals 7
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "index"    # I

    .line 706
    iget-object v0, p0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 707
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_0
    if-ge v1, v0, :cond_f

    .line 708
    const/4 v2, 0x0

    .line 709
    .local v2, "s":Ljava/lang/CharSequence;
    iget-object v3, p0, Landroidx/test/uiautomator/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 710
    .local v3, "criterion":I
    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 845
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getViewIdResourceName()Ljava/lang/String;

    move-result-object v2

    .line 846
    if-eqz v2, :cond_0

    invoke-virtual {p0, v3}, Landroidx/test/uiautomator/UiSelector;->getPattern(I)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_e

    .line 847
    :cond_0
    return v4

    .line 738
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z

    move-result v5

    invoke-virtual {p0, v3}, Landroidx/test/uiautomator/UiSelector;->getBoolean(I)Z

    move-result v6

    if-eq v5, v6, :cond_e

    .line 739
    return v4

    .line 839
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getViewIdResourceName()Ljava/lang/String;

    move-result-object v2

    .line 840
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3}, Landroidx/test/uiautomator/UiSelector;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 841
    :cond_1
    return v4

    .line 823
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v2

    .line 824
    if-eqz v2, :cond_2

    invoke-virtual {p0, v3}, Landroidx/test/uiautomator/UiSelector;->getPattern(I)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_e

    .line 825
    :cond_2
    return v4

    .line 768
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    .line 769
    if-eqz v2, :cond_3

    invoke-virtual {p0, v3}, Landroidx/test/uiautomator/UiSelector;->getPattern(I)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_e

    .line 770
    :cond_3
    return v4

    .line 727
    :pswitch_6
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v2

    .line 728
    if-eqz v2, :cond_4

    invoke-virtual {p0, v3}, Landroidx/test/uiautomator/UiSelector;->getPattern(I)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_e

    .line 729
    :cond_4
    return v4

    .line 794
    :pswitch_7
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 795
    if-eqz v2, :cond_5

    invoke-virtual {p0, v3}, Landroidx/test/uiautomator/UiSelector;->getPattern(I)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_e

    .line 796
    :cond_5
    return v4

    .line 743
    :pswitch_8
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    move-result v5

    invoke-virtual {p0, v3}, Landroidx/test/uiautomator/UiSelector;->getBoolean(I)Z

    move-result v6

    if-eq v5, v6, :cond_e

    .line 744
    return v4

    .line 817
    :pswitch_9
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v2

    .line 818
    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3}, Landroidx/test/uiautomator/UiSelector;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 819
    :cond_6
    return v4

    .line 815
    :pswitch_a
    goto/16 :goto_1

    .line 834
    :pswitch_b
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    move-result v5

    invoke-virtual {p0, v3}, Landroidx/test/uiautomator/UiSelector;->getBoolean(I)Z

    move-result v6

    if-eq v5, v6, :cond_e

    .line 835
    return v4

    .line 716
    :pswitch_c
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v5

    invoke-virtual {p0, v3}, Landroidx/test/uiautomator/UiSelector;->getBoolean(I)Z

    move-result v6

    if-eq v5, v6, :cond_e

    .line 717
    return v4

    .line 733
    :pswitch_d
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v5

    invoke-virtual {p0, v3}, Landroidx/test/uiautomator/UiSelector;->getBoolean(I)Z

    move-result v6

    if-eq v5, v6, :cond_e

    .line 734
    return v4

    .line 829
    :pswitch_e
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v5

    invoke-virtual {p0, v3}, Landroidx/test/uiautomator/UiSelector;->getBoolean(I)Z

    move-result v6

    if-eq v5, v6, :cond_e

    .line 830
    return v4

    .line 805
    :pswitch_f
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v5

    invoke-virtual {p0, v3}, Landroidx/test/uiautomator/UiSelector;->getBoolean(I)Z

    move-result v6

    if-eq v5, v6, :cond_e

    .line 806
    return v4

    .line 810
    :pswitch_10
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v5

    invoke-virtual {p0, v3}, Landroidx/test/uiautomator/UiSelector;->getBoolean(I)Z

    move-result v6

    if-eq v5, v6, :cond_e

    .line 811
    return v4

    .line 800
    :pswitch_11
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v5

    invoke-virtual {p0, v3}, Landroidx/test/uiautomator/UiSelector;->getBoolean(I)Z

    move-result v6

    if-eq v5, v6, :cond_e

    .line 801
    return v4

    .line 712
    :pswitch_12
    invoke-virtual {p0, v3}, Landroidx/test/uiautomator/UiSelector;->getInt(I)I

    move-result v5

    if-eq p2, v5, :cond_e

    .line 713
    return v4

    .line 748
    :pswitch_13
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    .line 749
    if-eqz v2, :cond_7

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3}, Landroidx/test/uiautomator/UiSelector;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 751
    :cond_7
    return v4

    .line 755
    :pswitch_14
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    .line 756
    if-eqz v2, :cond_8

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3}, Landroidx/test/uiautomator/UiSelector;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 758
    :cond_8
    return v4

    .line 762
    :pswitch_15
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    .line 763
    if-eqz v2, :cond_9

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3}, Landroidx/test/uiautomator/UiSelector;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 764
    :cond_9
    return v4

    .line 721
    :pswitch_16
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v2

    .line 722
    if-eqz v2, :cond_a

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3}, Landroidx/test/uiautomator/UiSelector;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 723
    :cond_a
    return v4

    .line 774
    :pswitch_17
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 775
    if-eqz v2, :cond_b

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3}, Landroidx/test/uiautomator/UiSelector;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 777
    :cond_b
    return v4

    .line 781
    :pswitch_18
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 782
    if-eqz v2, :cond_c

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3}, Landroidx/test/uiautomator/UiSelector;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 784
    :cond_c
    return v4

    .line 788
    :pswitch_19
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 789
    if-eqz v2, :cond_d

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3}, Landroidx/test/uiautomator/UiSelector;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 790
    :cond_d
    return v4

    .line 707
    .end local v2    # "s":Ljava/lang/CharSequence;
    .end local v3    # "criterion":I
    :cond_e
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 852
    .end local v1    # "x":I
    :cond_f
    invoke-direct {p0}, Landroidx/test/uiautomator/UiSelector;->matchOrUpdateInstance()Z

    move-result v1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public longClickable(Z)Landroidx/test/uiautomator/UiSelector;
    .locals 2
    .param p1, "val"    # Z

    .line 556
    const/16 v0, 0x18

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroidx/test/uiautomator/UiSelector;->buildSelector(ILjava/lang/Object;)Landroidx/test/uiautomator/UiSelector;

    move-result-object v0

    return-object v0
.end method

.method public packageName(Ljava/lang/String;)Landroidx/test/uiautomator/UiSelector;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 611
    if-eqz p1, :cond_0

    .line 614
    const/16 v0, 0x12

    invoke-direct {p0, v0, p1}, Landroidx/test/uiautomator/UiSelector;->buildSelector(ILjava/lang/Object;)Landroidx/test/uiautomator/UiSelector;

    move-result-object v0

    return-object v0

    .line 612
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public packageNameMatches(Ljava/lang/String;)Landroidx/test/uiautomator/UiSelector;
    .locals 2
    .param p1, "regex"    # Ljava/lang/String;

    .line 626
    if-eqz p1, :cond_0

    .line 629
    const/16 v0, 0x1c

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroidx/test/uiautomator/UiSelector;->buildSelector(ILjava/lang/Object;)Landroidx/test/uiautomator/UiSelector;

    move-result-object v0

    return-object v0

    .line 627
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "regex cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resourceId(Ljava/lang/String;)Landroidx/test/uiautomator/UiSelector;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .line 321
    if-eqz p1, :cond_0

    .line 324
    const/16 v0, 0x1d

    invoke-direct {p0, v0, p1}, Landroidx/test/uiautomator/UiSelector;->buildSelector(ILjava/lang/Object;)Landroidx/test/uiautomator/UiSelector;

    move-result-object v0

    return-object v0

    .line 322
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "id cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resourceIdMatches(Ljava/lang/String;)Landroidx/test/uiautomator/UiSelector;
    .locals 2
    .param p1, "regex"    # Ljava/lang/String;

    .line 336
    if-eqz p1, :cond_0

    .line 339
    const/16 v0, 0x1f

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroidx/test/uiautomator/UiSelector;->buildSelector(ILjava/lang/Object;)Landroidx/test/uiautomator/UiSelector;

    move-result-object v0

    return-object v0

    .line 337
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "regex cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public scrollable(Z)Landroidx/test/uiautomator/UiSelector;
    .locals 2
    .param p1, "val"    # Z

    .line 459
    const/16 v0, 0xd

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroidx/test/uiautomator/UiSelector;->buildSelector(ILjava/lang/Object;)Landroidx/test/uiautomator/UiSelector;

    move-result-object v0

    return-object v0
.end method

.method public selected(Z)Landroidx/test/uiautomator/UiSelector;
    .locals 2
    .param p1, "val"    # Z

    .line 479
    const/16 v0, 0x10

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroidx/test/uiautomator/UiSelector;->buildSelector(ILjava/lang/Object;)Landroidx/test/uiautomator/UiSelector;

    move-result-object v0

    return-object v0
.end method

.method public text(Ljava/lang/String;)Landroidx/test/uiautomator/UiSelector;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 116
    if-eqz p1, :cond_0

    .line 119
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroidx/test/uiautomator/UiSelector;->buildSelector(ILjava/lang/Object;)Landroidx/test/uiautomator/UiSelector;

    move-result-object v0

    return-object v0

    .line 117
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public textContains(Ljava/lang/String;)Landroidx/test/uiautomator/UiSelector;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 168
    if-eqz p1, :cond_0

    .line 171
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Landroidx/test/uiautomator/UiSelector;->buildSelector(ILjava/lang/Object;)Landroidx/test/uiautomator/UiSelector;

    move-result-object v0

    return-object v0

    .line 169
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public textMatches(Ljava/lang/String;)Landroidx/test/uiautomator/UiSelector;
    .locals 2
    .param p1, "regex"    # Ljava/lang/String;

    .line 134
    if-eqz p1, :cond_0

    .line 137
    const/16 v0, 0x19

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroidx/test/uiautomator/UiSelector;->buildSelector(ILjava/lang/Object;)Landroidx/test/uiautomator/UiSelector;

    move-result-object v0

    return-object v0

    .line 135
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "regex cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public textStartsWith(Ljava/lang/String;)Landroidx/test/uiautomator/UiSelector;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 151
    if-eqz p1, :cond_0

    .line 154
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroidx/test/uiautomator/UiSelector;->buildSelector(ILjava/lang/Object;)Landroidx/test/uiautomator/UiSelector;

    move-result-object v0

    return-object v0

    .line 152
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 948
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/test/uiautomator/UiSelector;->dumpToString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
