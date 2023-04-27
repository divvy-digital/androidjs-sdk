.class Landroidx/test/uiautomator/ByMatcher;
.super Ljava/lang/Object;
.source "ByMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList;,
        Landroidx/test/uiautomator/ByMatcher$PartialMatch;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDevice:Landroidx/test/uiautomator/UiDevice;

.field private mSelector:Landroidx/test/uiautomator/BySelector;

.field private mShortCircuit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Landroidx/test/uiautomator/ByMatcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/test/uiautomator/ByMatcher;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroidx/test/uiautomator/UiDevice;Landroidx/test/uiautomator/BySelector;Z)V
    .locals 0
    .param p1, "device"    # Landroidx/test/uiautomator/UiDevice;
    .param p2, "selector"    # Landroidx/test/uiautomator/BySelector;
    .param p3, "shortCircuit"    # Z

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Landroidx/test/uiautomator/ByMatcher;->mDevice:Landroidx/test/uiautomator/UiDevice;

    .line 52
    iput-object p2, p0, Landroidx/test/uiautomator/ByMatcher;->mSelector:Landroidx/test/uiautomator/BySelector;

    .line 53
    iput-boolean p3, p0, Landroidx/test/uiautomator/ByMatcher;->mShortCircuit:Z

    .line 54
    return-void
.end method

.method static synthetic access$000(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "x0"    # Ljava/util/regex/Pattern;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .line 34
    invoke-static {p0, p1}, Landroidx/test/uiautomator/ByMatcher;->checkCriteria(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Ljava/lang/Boolean;Z)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/Boolean;
    .param p1, "x1"    # Z

    .line 34
    invoke-static {p0, p1}, Landroidx/test/uiautomator/ByMatcher;->checkCriteria(Ljava/lang/Boolean;Z)Z

    move-result v0

    return v0
.end method

.method private static checkCriteria(Ljava/lang/Boolean;Z)Z
    .locals 1
    .param p0, "criteria"    # Ljava/lang/Boolean;
    .param p1, "value"    # Z

    .line 201
    if-nez p0, :cond_0

    .line 202
    const/4 v0, 0x1

    return v0

    .line 204
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static checkCriteria(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "criteria"    # Ljava/util/regex/Pattern;
    .param p1, "value"    # Ljava/lang/CharSequence;

    .line 193
    if-nez p0, :cond_0

    .line 194
    const/4 v0, 0x1

    return v0

    .line 196
    :cond_0
    if-eqz p1, :cond_1

    move-object v0, p1

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    invoke-virtual {p0, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method static varargs findMatch(Landroidx/test/uiautomator/UiDevice;Landroidx/test/uiautomator/BySelector;[Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 7
    .param p0, "device"    # Landroidx/test/uiautomator/UiDevice;
    .param p1, "selector"    # Landroidx/test/uiautomator/BySelector;
    .param p2, "roots"    # [Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 70
    new-instance v0, Landroidx/test/uiautomator/ByMatcher;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Landroidx/test/uiautomator/ByMatcher;-><init>(Landroidx/test/uiautomator/UiDevice;Landroidx/test/uiautomator/BySelector;Z)V

    .line 71
    .local v0, "matcher":Landroidx/test/uiautomator/ByMatcher;
    move-object v1, p2

    .local v1, "arr$":[Landroid/view/accessibility/AccessibilityNodeInfo;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 72
    .local v4, "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-direct {v0, v4}, Landroidx/test/uiautomator/ByMatcher;->findMatches(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/util/List;

    move-result-object v5

    .line 73
    .local v5, "matches":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 74
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object v6

    .line 71
    .end local v4    # "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v5    # "matches":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 77
    .end local v1    # "arr$":[Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private findMatches(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/util/List;
    .locals 3
    .param p1, "root"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .line 111
    new-instance v0, Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList;

    invoke-direct {v0}, Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v1, v0}, Landroidx/test/uiautomator/ByMatcher;->findMatches(Landroid/view/accessibility/AccessibilityNodeInfo;IILandroidx/test/uiautomator/ByMatcher$SinglyLinkedList;)Ljava/util/List;

    move-result-object v0

    .line 115
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    iget-object v2, p0, Landroidx/test/uiautomator/ByMatcher;->mDevice:Landroidx/test/uiautomator/UiDevice;

    invoke-virtual {v2}, Landroidx/test/uiautomator/UiDevice;->runWatchers()V

    .line 118
    new-instance v2, Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList;

    invoke-direct {v2}, Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList;-><init>()V

    invoke-direct {p0, p1, v1, v1, v2}, Landroidx/test/uiautomator/ByMatcher;->findMatches(Landroid/view/accessibility/AccessibilityNodeInfo;IILandroidx/test/uiautomator/ByMatcher$SinglyLinkedList;)Ljava/util/List;

    move-result-object v0

    .line 121
    :cond_0
    return-object v0
.end method

.method private findMatches(Landroid/view/accessibility/AccessibilityNodeInfo;IILandroidx/test/uiautomator/ByMatcher$SinglyLinkedList;)Ljava/util/List;
    .locals 11
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "index"    # I
    .param p3, "depth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "II",
            "Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList<",
            "Landroidx/test/uiautomator/ByMatcher$PartialMatch;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .line 139
    .local p4, "partialMatches":Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList;, "Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList<Landroidx/test/uiautomator/ByMatcher$PartialMatch;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v1

    if-nez v1, :cond_0

    .line 143
    return-object v0

    .line 147
    :cond_0
    invoke-virtual {p4}, Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/test/uiautomator/ByMatcher$PartialMatch;

    .line 148
    .local v2, "partialMatch":Landroidx/test/uiautomator/ByMatcher$PartialMatch;
    invoke-virtual {v2, p1, p2, p3, p4}, Landroidx/test/uiautomator/ByMatcher$PartialMatch;->update(Landroid/view/accessibility/AccessibilityNodeInfo;IILandroidx/test/uiautomator/ByMatcher$SinglyLinkedList;)Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList;

    move-result-object p4

    .line 149
    .end local v2    # "partialMatch":Landroidx/test/uiautomator/ByMatcher$PartialMatch;
    goto :goto_0

    .line 152
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v1, p0, Landroidx/test/uiautomator/ByMatcher;->mSelector:Landroidx/test/uiautomator/BySelector;

    invoke-static {p1, v1, p2, p3}, Landroidx/test/uiautomator/ByMatcher$PartialMatch;->accept(Landroid/view/accessibility/AccessibilityNodeInfo;Landroidx/test/uiautomator/BySelector;II)Landroidx/test/uiautomator/ByMatcher$PartialMatch;

    move-result-object v1

    .line 153
    .local v1, "currentMatch":Landroidx/test/uiautomator/ByMatcher$PartialMatch;
    if-eqz v1, :cond_2

    .line 154
    invoke-static {v1, p4}, Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList;->prepend(Ljava/lang/Object;Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList;)Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList;

    move-result-object p4

    .line 158
    :cond_2
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v2

    .line 159
    .local v2, "numChildren":I
    const/4 v3, 0x0

    .line 160
    .local v3, "hasNullChild":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_6

    .line 161
    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    .line 162
    .local v5, "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v5, :cond_4

    .line 163
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v3, :cond_3

    .line 164
    sget-object v8, Landroidx/test/uiautomator/ByMatcher;->TAG:Ljava/lang/String;

    new-array v9, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    const-string v10, "Node returned null child: %s"

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_3
    const/4 v3, 0x1

    .line 167
    sget-object v8, Landroidx/test/uiautomator/ByMatcher;->TAG:Ljava/lang/String;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v7

    const-string v6, "Skipping null child (%s of %s)"

    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    goto :goto_2

    .line 172
    :cond_4
    add-int/lit8 v6, p3, 0x1

    invoke-direct {p0, v5, v4, v6, p4}, Landroidx/test/uiautomator/ByMatcher;->findMatches(Landroid/view/accessibility/AccessibilityNodeInfo;IILandroidx/test/uiautomator/ByMatcher$SinglyLinkedList;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 175
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 178
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    iget-boolean v6, p0, Landroidx/test/uiautomator/ByMatcher;->mShortCircuit:Z

    if-eqz v6, :cond_5

    .line 179
    return-object v0

    .line 160
    .end local v5    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 184
    .end local v4    # "i":I
    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroidx/test/uiautomator/ByMatcher$PartialMatch;->finalizeMatch()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 185
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_7
    return-object v0
.end method

.method static varargs findMatches(Landroidx/test/uiautomator/UiDevice;Landroidx/test/uiautomator/BySelector;[Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/util/List;
    .locals 7
    .param p0, "device"    # Landroidx/test/uiautomator/UiDevice;
    .param p1, "selector"    # Landroidx/test/uiautomator/BySelector;
    .param p2, "roots"    # [Landroid/view/accessibility/AccessibilityNodeInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/uiautomator/UiDevice;",
            "Landroidx/test/uiautomator/BySelector;",
            "[",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    new-instance v1, Landroidx/test/uiautomator/ByMatcher;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Landroidx/test/uiautomator/ByMatcher;-><init>(Landroidx/test/uiautomator/UiDevice;Landroidx/test/uiautomator/BySelector;Z)V

    .line 95
    .local v1, "matcher":Landroidx/test/uiautomator/ByMatcher;
    move-object v2, p2

    .local v2, "arr$":[Landroid/view/accessibility/AccessibilityNodeInfo;
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 96
    .local v5, "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-direct {v1, v5}, Landroidx/test/uiautomator/ByMatcher;->findMatches(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 95
    .end local v5    # "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 98
    .end local v2    # "arr$":[Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_0
    return-object v0
.end method
