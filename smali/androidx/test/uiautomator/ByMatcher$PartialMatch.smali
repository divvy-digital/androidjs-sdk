.class Landroidx/test/uiautomator/ByMatcher$PartialMatch;
.super Ljava/lang/Object;
.source "ByMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/uiautomator/ByMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PartialMatch"
.end annotation


# instance fields
.field private final matchDepth:I

.field private final matchSelector:Landroidx/test/uiautomator/BySelector;

.field private final partialMatches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/test/uiautomator/ByMatcher$PartialMatch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroidx/test/uiautomator/BySelector;I)V
    .locals 1
    .param p1, "selector"    # Landroidx/test/uiautomator/BySelector;
    .param p2, "depth"    # I

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/test/uiautomator/ByMatcher$PartialMatch;->partialMatches:Ljava/util/List;

    .line 223
    iput-object p1, p0, Landroidx/test/uiautomator/ByMatcher$PartialMatch;->matchSelector:Landroidx/test/uiautomator/BySelector;

    .line 224
    iput p2, p0, Landroidx/test/uiautomator/ByMatcher$PartialMatch;->matchDepth:I

    .line 225
    return-void
.end method

.method public static accept(Landroid/view/accessibility/AccessibilityNodeInfo;Landroidx/test/uiautomator/BySelector;II)Landroidx/test/uiautomator/ByMatcher$PartialMatch;
    .locals 1
    .param p0, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p1, "selector"    # Landroidx/test/uiautomator/BySelector;
    .param p2, "index"    # I
    .param p3, "depth"    # I

    .line 240
    invoke-static {p0, p1, p2, p3, p3}, Landroidx/test/uiautomator/ByMatcher$PartialMatch;->accept(Landroid/view/accessibility/AccessibilityNodeInfo;Landroidx/test/uiautomator/BySelector;III)Landroidx/test/uiautomator/ByMatcher$PartialMatch;

    move-result-object v0

    return-object v0
.end method

.method public static accept(Landroid/view/accessibility/AccessibilityNodeInfo;Landroidx/test/uiautomator/BySelector;III)Landroidx/test/uiautomator/ByMatcher$PartialMatch;
    .locals 3
    .param p0, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p1, "selector"    # Landroidx/test/uiautomator/BySelector;
    .param p2, "index"    # I
    .param p3, "absoluteDepth"    # I
    .param p4, "relativeDepth"    # I

    .line 258
    iget-object v0, p1, Landroidx/test/uiautomator/BySelector;->mMinDepth:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/test/uiautomator/BySelector;->mMinDepth:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt p4, v0, :cond_1

    :cond_0
    iget-object v0, p1, Landroidx/test/uiautomator/BySelector;->mMaxDepth:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroidx/test/uiautomator/BySelector;->mMaxDepth:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le p4, v0, :cond_2

    .line 260
    :cond_1
    const/4 v0, 0x0

    return-object v0

    .line 266
    :cond_2
    const/4 v0, 0x0

    .line 267
    .local v0, "ret":Landroidx/test/uiautomator/ByMatcher$PartialMatch;
    iget-object v1, p1, Landroidx/test/uiautomator/BySelector;->mClazz:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/test/uiautomator/ByMatcher;->access$000(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p1, Landroidx/test/uiautomator/BySelector;->mDesc:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/test/uiautomator/ByMatcher;->access$000(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p1, Landroidx/test/uiautomator/BySelector;->mPkg:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/test/uiautomator/ByMatcher;->access$000(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p1, Landroidx/test/uiautomator/BySelector;->mRes:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getViewIdResourceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/test/uiautomator/ByMatcher;->access$000(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p1, Landroidx/test/uiautomator/BySelector;->mText:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/test/uiautomator/ByMatcher;->access$000(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p1, Landroidx/test/uiautomator/BySelector;->mChecked:Ljava/lang/Boolean;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v2

    invoke-static {v1, v2}, Landroidx/test/uiautomator/ByMatcher;->access$100(Ljava/lang/Boolean;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p1, Landroidx/test/uiautomator/BySelector;->mCheckable:Ljava/lang/Boolean;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z

    move-result v2

    invoke-static {v1, v2}, Landroidx/test/uiautomator/ByMatcher;->access$100(Ljava/lang/Boolean;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p1, Landroidx/test/uiautomator/BySelector;->mClickable:Ljava/lang/Boolean;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v2

    invoke-static {v1, v2}, Landroidx/test/uiautomator/ByMatcher;->access$100(Ljava/lang/Boolean;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p1, Landroidx/test/uiautomator/BySelector;->mEnabled:Ljava/lang/Boolean;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v2

    invoke-static {v1, v2}, Landroidx/test/uiautomator/ByMatcher;->access$100(Ljava/lang/Boolean;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p1, Landroidx/test/uiautomator/BySelector;->mFocused:Ljava/lang/Boolean;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v2

    invoke-static {v1, v2}, Landroidx/test/uiautomator/ByMatcher;->access$100(Ljava/lang/Boolean;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p1, Landroidx/test/uiautomator/BySelector;->mFocusable:Ljava/lang/Boolean;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v2

    invoke-static {v1, v2}, Landroidx/test/uiautomator/ByMatcher;->access$100(Ljava/lang/Boolean;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p1, Landroidx/test/uiautomator/BySelector;->mLongClickable:Ljava/lang/Boolean;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    move-result v2

    invoke-static {v1, v2}, Landroidx/test/uiautomator/ByMatcher;->access$100(Ljava/lang/Boolean;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p1, Landroidx/test/uiautomator/BySelector;->mScrollable:Ljava/lang/Boolean;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v2

    invoke-static {v1, v2}, Landroidx/test/uiautomator/ByMatcher;->access$100(Ljava/lang/Boolean;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p1, Landroidx/test/uiautomator/BySelector;->mSelected:Ljava/lang/Boolean;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    move-result v2

    invoke-static {v1, v2}, Landroidx/test/uiautomator/ByMatcher;->access$100(Ljava/lang/Boolean;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 282
    new-instance v1, Landroidx/test/uiautomator/ByMatcher$PartialMatch;

    invoke-direct {v1, p1, p3}, Landroidx/test/uiautomator/ByMatcher$PartialMatch;-><init>(Landroidx/test/uiautomator/BySelector;I)V

    move-object v0, v1

    .line 284
    :cond_3
    return-object v0
.end method


# virtual methods
.method public finalizeMatch()Z
    .locals 4

    .line 320
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 321
    .local v0, "matches":Ljava/util/Set;, "Ljava/util/Set<Landroidx/test/uiautomator/BySelector;>;"
    iget-object v1, p0, Landroidx/test/uiautomator/ByMatcher$PartialMatch;->partialMatches:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/test/uiautomator/ByMatcher$PartialMatch;

    .line 322
    .local v2, "p":Landroidx/test/uiautomator/ByMatcher$PartialMatch;
    invoke-virtual {v2}, Landroidx/test/uiautomator/ByMatcher$PartialMatch;->finalizeMatch()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 323
    iget-object v3, v2, Landroidx/test/uiautomator/ByMatcher$PartialMatch;->matchSelector:Landroidx/test/uiautomator/BySelector;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 325
    .end local v2    # "p":Landroidx/test/uiautomator/ByMatcher$PartialMatch;
    :cond_0
    goto :goto_0

    .line 328
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v1, p0, Landroidx/test/uiautomator/ByMatcher$PartialMatch;->matchSelector:Landroidx/test/uiautomator/BySelector;

    iget-object v1, v1, Landroidx/test/uiautomator/BySelector;->mChildSelectors:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    return v1
.end method

.method public update(Landroid/view/accessibility/AccessibilityNodeInfo;IILandroidx/test/uiautomator/ByMatcher$SinglyLinkedList;)Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList;
    .locals 4
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
            "Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList<",
            "Landroidx/test/uiautomator/ByMatcher$PartialMatch;",
            ">;"
        }
    .end annotation

    .line 303
    .local p4, "rest":Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList;, "Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList<Landroidx/test/uiautomator/ByMatcher$PartialMatch;>;"
    iget-object v0, p0, Landroidx/test/uiautomator/ByMatcher$PartialMatch;->matchSelector:Landroidx/test/uiautomator/BySelector;

    iget-object v0, v0, Landroidx/test/uiautomator/BySelector;->mChildSelectors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/test/uiautomator/BySelector;

    .line 304
    .local v1, "childSelector":Landroidx/test/uiautomator/BySelector;
    iget v2, p0, Landroidx/test/uiautomator/ByMatcher$PartialMatch;->matchDepth:I

    sub-int v2, p3, v2

    invoke-static {p1, v1, p2, p3, v2}, Landroidx/test/uiautomator/ByMatcher$PartialMatch;->accept(Landroid/view/accessibility/AccessibilityNodeInfo;Landroidx/test/uiautomator/BySelector;III)Landroidx/test/uiautomator/ByMatcher$PartialMatch;

    move-result-object v2

    .line 306
    .local v2, "m":Landroidx/test/uiautomator/ByMatcher$PartialMatch;
    if-eqz v2, :cond_0

    .line 307
    iget-object v3, p0, Landroidx/test/uiautomator/ByMatcher$PartialMatch;->partialMatches:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    invoke-static {v2, p4}, Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList;->prepend(Ljava/lang/Object;Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList;)Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList;

    move-result-object p4

    .line 310
    .end local v1    # "childSelector":Landroidx/test/uiautomator/BySelector;
    .end local v2    # "m":Landroidx/test/uiautomator/ByMatcher$PartialMatch;
    :cond_0
    goto :goto_0

    .line 311
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object p4
.end method
