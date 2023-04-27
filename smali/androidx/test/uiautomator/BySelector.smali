.class public Landroidx/test/uiautomator/BySelector;
.super Ljava/lang/Object;
.source "BySelector.java"


# instance fields
.field mCheckable:Ljava/lang/Boolean;

.field mChecked:Ljava/lang/Boolean;

.field mChildSelectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/test/uiautomator/BySelector;",
            ">;"
        }
    .end annotation
.end field

.field mClazz:Ljava/util/regex/Pattern;

.field mClickable:Ljava/lang/Boolean;

.field mDesc:Ljava/util/regex/Pattern;

.field mEnabled:Ljava/lang/Boolean;

.field mFocusable:Ljava/lang/Boolean;

.field mFocused:Ljava/lang/Boolean;

.field mLongClickable:Ljava/lang/Boolean;

.field mMaxDepth:Ljava/lang/Integer;

.field mMinDepth:Ljava/lang/Integer;

.field mPkg:Ljava/util/regex/Pattern;

.field mRes:Ljava/util/regex/Pattern;

.field mScrollable:Ljava/lang/Boolean;

.field mSelected:Ljava/lang/Boolean;

.field mText:Ljava/util/regex/Pattern;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroidx/test/uiautomator/BySelector;->mChildSelectors:Ljava/util/List;

    .line 58
    return-void
.end method

.method constructor <init>(Landroidx/test/uiautomator/BySelector;)V
    .locals 4
    .param p1, "original"    # Landroidx/test/uiautomator/BySelector;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroidx/test/uiautomator/BySelector;->mChildSelectors:Ljava/util/List;

    .line 66
    iget-object v0, p1, Landroidx/test/uiautomator/BySelector;->mClazz:Ljava/util/regex/Pattern;

    iput-object v0, p0, Landroidx/test/uiautomator/BySelector;->mClazz:Ljava/util/regex/Pattern;

    .line 67
    iget-object v0, p1, Landroidx/test/uiautomator/BySelector;->mDesc:Ljava/util/regex/Pattern;

    iput-object v0, p0, Landroidx/test/uiautomator/BySelector;->mDesc:Ljava/util/regex/Pattern;

    .line 68
    iget-object v0, p1, Landroidx/test/uiautomator/BySelector;->mPkg:Ljava/util/regex/Pattern;

    iput-object v0, p0, Landroidx/test/uiautomator/BySelector;->mPkg:Ljava/util/regex/Pattern;

    .line 69
    iget-object v0, p1, Landroidx/test/uiautomator/BySelector;->mRes:Ljava/util/regex/Pattern;

    iput-object v0, p0, Landroidx/test/uiautomator/BySelector;->mRes:Ljava/util/regex/Pattern;

    .line 70
    iget-object v0, p1, Landroidx/test/uiautomator/BySelector;->mText:Ljava/util/regex/Pattern;

    iput-object v0, p0, Landroidx/test/uiautomator/BySelector;->mText:Ljava/util/regex/Pattern;

    .line 72
    iget-object v0, p1, Landroidx/test/uiautomator/BySelector;->mChecked:Ljava/lang/Boolean;

    iput-object v0, p0, Landroidx/test/uiautomator/BySelector;->mChecked:Ljava/lang/Boolean;

    .line 73
    iget-object v0, p1, Landroidx/test/uiautomator/BySelector;->mCheckable:Ljava/lang/Boolean;

    iput-object v0, p0, Landroidx/test/uiautomator/BySelector;->mCheckable:Ljava/lang/Boolean;

    .line 74
    iget-object v0, p1, Landroidx/test/uiautomator/BySelector;->mClickable:Ljava/lang/Boolean;

    iput-object v0, p0, Landroidx/test/uiautomator/BySelector;->mClickable:Ljava/lang/Boolean;

    .line 75
    iget-object v0, p1, Landroidx/test/uiautomator/BySelector;->mEnabled:Ljava/lang/Boolean;

    iput-object v0, p0, Landroidx/test/uiautomator/BySelector;->mEnabled:Ljava/lang/Boolean;

    .line 76
    iget-object v0, p1, Landroidx/test/uiautomator/BySelector;->mFocused:Ljava/lang/Boolean;

    iput-object v0, p0, Landroidx/test/uiautomator/BySelector;->mFocused:Ljava/lang/Boolean;

    .line 77
    iget-object v0, p1, Landroidx/test/uiautomator/BySelector;->mFocusable:Ljava/lang/Boolean;

    iput-object v0, p0, Landroidx/test/uiautomator/BySelector;->mFocusable:Ljava/lang/Boolean;

    .line 78
    iget-object v0, p1, Landroidx/test/uiautomator/BySelector;->mLongClickable:Ljava/lang/Boolean;

    iput-object v0, p0, Landroidx/test/uiautomator/BySelector;->mLongClickable:Ljava/lang/Boolean;

    .line 79
    iget-object v0, p1, Landroidx/test/uiautomator/BySelector;->mScrollable:Ljava/lang/Boolean;

    iput-object v0, p0, Landroidx/test/uiautomator/BySelector;->mScrollable:Ljava/lang/Boolean;

    .line 80
    iget-object v0, p1, Landroidx/test/uiautomator/BySelector;->mSelected:Ljava/lang/Boolean;

    iput-object v0, p0, Landroidx/test/uiautomator/BySelector;->mSelected:Ljava/lang/Boolean;

    .line 82
    iget-object v0, p1, Landroidx/test/uiautomator/BySelector;->mChildSelectors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/test/uiautomator/BySelector;

    .line 83
    .local v1, "childSelector":Landroidx/test/uiautomator/BySelector;
    iget-object v2, p0, Landroidx/test/uiautomator/BySelector;->mChildSelectors:Ljava/util/List;

    new-instance v3, Landroidx/test/uiautomator/BySelector;

    invoke-direct {v3, v1}, Landroidx/test/uiautomator/BySelector;-><init>(Landroidx/test/uiautomator/BySelector;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    .end local v1    # "childSelector":Landroidx/test/uiautomator/BySelector;
    goto :goto_0

    .line 85
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private static checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 671
    .local p0, "value":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .line 674
    return-object p0

    .line 672
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public checkable(Z)Landroidx/test/uiautomator/BySelector;
    .locals 2
    .param p1, "isCheckable"    # Z

    .line 392
    iget-object v0, p0, Landroidx/test/uiautomator/BySelector;->mCheckable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 395
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/uiautomator/BySelector;->mCheckable:Ljava/lang/Boolean;

    .line 396
    return-object p0

    .line 393
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Checkable selector is already defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checked(Z)Landroidx/test/uiautomator/BySelector;
    .locals 2
    .param p1, "isChecked"    # Z

    .line 406
    iget-object v0, p0, Landroidx/test/uiautomator/BySelector;->mChecked:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 409
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/uiautomator/BySelector;->mChecked:Ljava/lang/Boolean;

    .line 410
    return-object p0

    .line 407
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Checked selector is already defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clazz(Ljava/lang/Class;)Landroidx/test/uiautomator/BySelector;
    .locals 1
    .param p1, "clazz"    # Ljava/lang/Class;

    .line 132
    const-string v0, "clazz cannot be null"

    invoke-static {p1, v0}, Landroidx/test/uiautomator/BySelector;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 134
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/test/uiautomator/BySelector;->clazz(Ljava/util/regex/Pattern;)Landroidx/test/uiautomator/BySelector;

    move-result-object v0

    return-object v0
.end method

.method public clazz(Ljava/lang/String;)Landroidx/test/uiautomator/BySelector;
    .locals 2
    .param p1, "className"    # Ljava/lang/String;

    .line 97
    const-string v0, "className cannot be null"

    invoke-static {p1, v0}, Landroidx/test/uiautomator/BySelector;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 100
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_0

    .line 101
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.widget"

    invoke-virtual {p0, v1, v0}, Landroidx/test/uiautomator/BySelector;->clazz(Ljava/lang/String;Ljava/lang/String;)Landroidx/test/uiautomator/BySelector;

    move-result-object v0

    return-object v0

    .line 103
    :cond_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/test/uiautomator/BySelector;->clazz(Ljava/util/regex/Pattern;)Landroidx/test/uiautomator/BySelector;

    move-result-object v0

    return-object v0
.end method

.method public clazz(Ljava/lang/String;Ljava/lang/String;)Landroidx/test/uiautomator/BySelector;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 117
    const-string v0, "packageName cannot be null"

    invoke-static {p1, v0}, Landroidx/test/uiautomator/BySelector;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 118
    const-string v0, "className cannot be null"

    invoke-static {p2, v0}, Landroidx/test/uiautomator/BySelector;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 120
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string v1, "%s.%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/test/uiautomator/BySelector;->clazz(Ljava/util/regex/Pattern;)Landroidx/test/uiautomator/BySelector;

    move-result-object v0

    return-object v0
.end method

.method public clazz(Ljava/util/regex/Pattern;)Landroidx/test/uiautomator/BySelector;
    .locals 2
    .param p1, "className"    # Ljava/util/regex/Pattern;

    .line 146
    const-string v0, "className cannot be null"

    invoke-static {p1, v0}, Landroidx/test/uiautomator/BySelector;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Landroidx/test/uiautomator/BySelector;->mClazz:Ljava/util/regex/Pattern;

    if-nez v0, :cond_0

    .line 151
    iput-object p1, p0, Landroidx/test/uiautomator/BySelector;->mClazz:Ljava/util/regex/Pattern;

    .line 152
    return-object p0

    .line 149
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class selector is already defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clickable(Z)Landroidx/test/uiautomator/BySelector;
    .locals 2
    .param p1, "isClickable"    # Z

    .line 421
    iget-object v0, p0, Landroidx/test/uiautomator/BySelector;->mClickable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 424
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/uiautomator/BySelector;->mClickable:Ljava/lang/Boolean;

    .line 425
    return-object p0

    .line 422
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Clickable selector is already defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public depth(I)Landroidx/test/uiautomator/BySelector;
    .locals 1
    .param p1, "exactDepth"    # I

    .line 517
    invoke-virtual {p0, p1, p1}, Landroidx/test/uiautomator/BySelector;->depth(II)Landroidx/test/uiautomator/BySelector;

    move-result-object v0

    return-object v0
.end method

.method public depth(II)Landroidx/test/uiautomator/BySelector;
    .locals 2
    .param p1, "min"    # I
    .param p2, "max"    # I

    .line 522
    if-ltz p1, :cond_3

    .line 525
    if-ltz p2, :cond_2

    .line 528
    iget-object v0, p0, Landroidx/test/uiautomator/BySelector;->mMinDepth:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 531
    iget-object v0, p0, Landroidx/test/uiautomator/BySelector;->mMaxDepth:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 534
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/uiautomator/BySelector;->mMinDepth:Ljava/lang/Integer;

    .line 535
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/uiautomator/BySelector;->mMaxDepth:Ljava/lang/Integer;

    .line 536
    return-object p0

    .line 532
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Maximum Depth selector is already defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 529
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Minimum Depth selector is already defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 526
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "max cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 523
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "min cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public desc(Ljava/lang/String;)Landroidx/test/uiautomator/BySelector;
    .locals 1
    .param p1, "contentDescription"    # Ljava/lang/String;

    .line 164
    const-string v0, "contentDescription cannot be null"

    invoke-static {p1, v0}, Landroidx/test/uiautomator/BySelector;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 166
    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/test/uiautomator/BySelector;->desc(Ljava/util/regex/Pattern;)Landroidx/test/uiautomator/BySelector;

    move-result-object v0

    return-object v0
.end method

.method public desc(Ljava/util/regex/Pattern;)Landroidx/test/uiautomator/BySelector;
    .locals 2
    .param p1, "contentDescription"    # Ljava/util/regex/Pattern;

    .line 220
    const-string v0, "contentDescription cannot be null"

    invoke-static {p1, v0}, Landroidx/test/uiautomator/BySelector;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 222
    iget-object v0, p0, Landroidx/test/uiautomator/BySelector;->mDesc:Ljava/util/regex/Pattern;

    if-nez v0, :cond_0

    .line 225
    iput-object p1, p0, Landroidx/test/uiautomator/BySelector;->mDesc:Ljava/util/regex/Pattern;

    .line 226
    return-object p0

    .line 223
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Description selector is already defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public descContains(Ljava/lang/String;)Landroidx/test/uiautomator/BySelector;
    .locals 3
    .param p1, "substring"    # Ljava/lang/String;

    .line 178
    const-string v0, "substring cannot be null"

    invoke-static {p1, v0}, Landroidx/test/uiautomator/BySelector;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 180
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "^.*%s.*$"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/test/uiautomator/BySelector;->desc(Ljava/util/regex/Pattern;)Landroidx/test/uiautomator/BySelector;

    move-result-object v0

    return-object v0
.end method

.method public descEndsWith(Ljava/lang/String;)Landroidx/test/uiautomator/BySelector;
    .locals 3
    .param p1, "substring"    # Ljava/lang/String;

    .line 206
    const-string v0, "substring cannot be null"

    invoke-static {p1, v0}, Landroidx/test/uiautomator/BySelector;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 208
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "^.*%s$"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/test/uiautomator/BySelector;->desc(Ljava/util/regex/Pattern;)Landroidx/test/uiautomator/BySelector;

    move-result-object v0

    return-object v0
.end method

.method public descStartsWith(Ljava/lang/String;)Landroidx/test/uiautomator/BySelector;
    .locals 3
    .param p1, "substring"    # Ljava/lang/String;

    .line 192
    const-string v0, "substring cannot be null"

    invoke-static {p1, v0}, Landroidx/test/uiautomator/BySelector;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 194
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "^%s.*$"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/test/uiautomator/BySelector;->desc(Ljava/util/regex/Pattern;)Landroidx/test/uiautomator/BySelector;

    move-result-object v0

    return-object v0
.end method

.method public enabled(Z)Landroidx/test/uiautomator/BySelector;
    .locals 2
    .param p1, "isEnabled"    # Z

    .line 434
    iget-object v0, p0, Landroidx/test/uiautomator/BySelector;->mEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 437
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/uiautomator/BySelector;->mEnabled:Ljava/lang/Boolean;

    .line 438
    return-object p0

    .line 435
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Enabled selector is already defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public focusable(Z)Landroidx/test/uiautomator/BySelector;
    .locals 2
    .param p1, "isFocusable"    # Z

    .line 449
    iget-object v0, p0, Landroidx/test/uiautomator/BySelector;->mFocusable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 452
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/uiautomator/BySelector;->mFocusable:Ljava/lang/Boolean;

    .line 453
    return-object p0

    .line 450
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Focusable selector is already defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public focused(Z)Landroidx/test/uiautomator/BySelector;
    .locals 2
    .param p1, "isFocused"    # Z

    .line 463
    iget-object v0, p0, Landroidx/test/uiautomator/BySelector;->mFocused:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 466
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/uiautomator/BySelector;->mFocused:Ljava/lang/Boolean;

    .line 467
    return-object p0

    .line 464
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Focused selector is already defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasChild(Landroidx/test/uiautomator/BySelector;)Landroidx/test/uiautomator/BySelector;
    .locals 1
    .param p1, "childSelector"    # Landroidx/test/uiautomator/BySelector;

    .line 573
    const-string v0, "childSelector cannot be null"

    invoke-static {p1, v0}, Landroidx/test/uiautomator/BySelector;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 575
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/test/uiautomator/BySelector;->hasDescendant(Landroidx/test/uiautomator/BySelector;I)Landroidx/test/uiautomator/BySelector;

    move-result-object v0

    return-object v0
.end method

.method public hasDescendant(Landroidx/test/uiautomator/BySelector;)Landroidx/test/uiautomator/BySelector;
    .locals 1
    .param p1, "descendantSelector"    # Landroidx/test/uiautomator/BySelector;

    .line 588
    const-string v0, "descendantSelector cannot be null"

    invoke-static {p1, v0}, Landroidx/test/uiautomator/BySelector;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 590
    iget-object v0, p0, Landroidx/test/uiautomator/BySelector;->mChildSelectors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 591
    return-object p0
.end method

.method public hasDescendant(Landroidx/test/uiautomator/BySelector;I)Landroidx/test/uiautomator/BySelector;
    .locals 1
    .param p1, "descendantSelector"    # Landroidx/test/uiautomator/BySelector;
    .param p2, "maxDepth"    # I

    .line 605
    const-string v0, "descendantSelector cannot be null"

    invoke-static {p1, v0}, Landroidx/test/uiautomator/BySelector;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 607
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Landroidx/test/uiautomator/BySelector;->mMaxDepth:Ljava/lang/Integer;

    .line 608
    iget-object v0, p0, Landroidx/test/uiautomator/BySelector;->mChildSelectors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 609
    return-object p0
.end method

.method public longClickable(Z)Landroidx/test/uiautomator/BySelector;
    .locals 2
    .param p1, "isLongClickable"    # Z

    .line 478
    iget-object v0, p0, Landroidx/test/uiautomator/BySelector;->mLongClickable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 481
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/uiautomator/BySelector;->mLongClickable:Ljava/lang/Boolean;

    .line 482
    return-object p0

    .line 479
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Long Clickable selector is already defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public maxDepth(I)Landroidx/test/uiautomator/BySelector;
    .locals 2
    .param p1, "max"    # I

    .line 553
    if-ltz p1, :cond_1

    .line 556
    iget-object v0, p0, Landroidx/test/uiautomator/BySelector;->mMaxDepth:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 559
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/uiautomator/BySelector;->mMaxDepth:Ljava/lang/Integer;

    .line 560
    return-object p0

    .line 557
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Depth selector is already defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 554
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "max cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public minDepth(I)Landroidx/test/uiautomator/BySelector;
    .locals 2
    .param p1, "min"    # I

    .line 541
    if-ltz p1, :cond_1

    .line 544
    iget-object v0, p0, Landroidx/test/uiautomator/BySelector;->mMinDepth:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 547
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/uiautomator/BySelector;->mMinDepth:Ljava/lang/Integer;

    .line 548
    return-object p0

    .line 545
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Depth selector is already defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 542
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "min cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pkg(Ljava/lang/String;)Landroidx/test/uiautomator/BySelector;
    .locals 1
    .param p1, "applicationPackage"    # Ljava/lang/String;

    .line 238
    const-string v0, "applicationPackage cannot be null"

    invoke-static {p1, v0}, Landroidx/test/uiautomator/BySelector;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 240
    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/test/uiautomator/BySelector;->pkg(Ljava/util/regex/Pattern;)Landroidx/test/uiautomator/BySelector;

    move-result-object v0

    return-object v0
.end method

.method public pkg(Ljava/util/regex/Pattern;)Landroidx/test/uiautomator/BySelector;
    .locals 2
    .param p1, "applicationPackage"    # Ljava/util/regex/Pattern;

    .line 252
    const-string v0, "applicationPackage cannot be null"

    invoke-static {p1, v0}, Landroidx/test/uiautomator/BySelector;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 254
    iget-object v0, p0, Landroidx/test/uiautomator/BySelector;->mPkg:Ljava/util/regex/Pattern;

    if-nez v0, :cond_0

    .line 257
    iput-object p1, p0, Landroidx/test/uiautomator/BySelector;->mPkg:Ljava/util/regex/Pattern;

    .line 258
    return-object p0

    .line 255
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Package selector is already defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public res(Ljava/lang/String;)Landroidx/test/uiautomator/BySelector;
    .locals 1
    .param p1, "resourceName"    # Ljava/lang/String;

    .line 270
    const-string v0, "resourceName cannot be null"

    invoke-static {p1, v0}, Landroidx/test/uiautomator/BySelector;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 272
    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/test/uiautomator/BySelector;->res(Ljava/util/regex/Pattern;)Landroidx/test/uiautomator/BySelector;

    move-result-object v0

    return-object v0
.end method

.method public res(Ljava/lang/String;Ljava/lang/String;)Landroidx/test/uiautomator/BySelector;
    .locals 2
    .param p1, "resourcePackage"    # Ljava/lang/String;
    .param p2, "resourceId"    # Ljava/lang/String;

    .line 285
    const-string v0, "resourcePackage cannot be null"

    invoke-static {p1, v0}, Landroidx/test/uiautomator/BySelector;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 286
    const-string v0, "resourceId cannot be null"

    invoke-static {p2, v0}, Landroidx/test/uiautomator/BySelector;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 288
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string v1, "%s:id/%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/test/uiautomator/BySelector;->res(Ljava/util/regex/Pattern;)Landroidx/test/uiautomator/BySelector;

    move-result-object v0

    return-object v0
.end method

.method public res(Ljava/util/regex/Pattern;)Landroidx/test/uiautomator/BySelector;
    .locals 2
    .param p1, "resourceName"    # Ljava/util/regex/Pattern;

    .line 301
    const-string v0, "resourceName cannot be null"

    invoke-static {p1, v0}, Landroidx/test/uiautomator/BySelector;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 303
    iget-object v0, p0, Landroidx/test/uiautomator/BySelector;->mRes:Ljava/util/regex/Pattern;

    if-nez v0, :cond_0

    .line 306
    iput-object p1, p0, Landroidx/test/uiautomator/BySelector;->mRes:Ljava/util/regex/Pattern;

    .line 307
    return-object p0

    .line 304
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Resource name selector is already defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public scrollable(Z)Landroidx/test/uiautomator/BySelector;
    .locals 2
    .param p1, "isScrollable"    # Z

    .line 493
    iget-object v0, p0, Landroidx/test/uiautomator/BySelector;->mScrollable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 496
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/uiautomator/BySelector;->mScrollable:Ljava/lang/Boolean;

    .line 497
    return-object p0

    .line 494
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Scrollable selector is already defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public selected(Z)Landroidx/test/uiautomator/BySelector;
    .locals 2
    .param p1, "isSelected"    # Z

    .line 508
    iget-object v0, p0, Landroidx/test/uiautomator/BySelector;->mSelected:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 511
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/uiautomator/BySelector;->mSelected:Ljava/lang/Boolean;

    .line 512
    return-object p0

    .line 509
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Selected selector is already defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public text(Ljava/lang/String;)Landroidx/test/uiautomator/BySelector;
    .locals 1
    .param p1, "textValue"    # Ljava/lang/String;

    .line 319
    const-string v0, "textValue cannot be null"

    invoke-static {p1, v0}, Landroidx/test/uiautomator/BySelector;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 321
    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/test/uiautomator/BySelector;->text(Ljava/util/regex/Pattern;)Landroidx/test/uiautomator/BySelector;

    move-result-object v0

    return-object v0
.end method

.method public text(Ljava/util/regex/Pattern;)Landroidx/test/uiautomator/BySelector;
    .locals 2
    .param p1, "textValue"    # Ljava/util/regex/Pattern;

    .line 374
    const-string v0, "textValue cannot be null"

    invoke-static {p1, v0}, Landroidx/test/uiautomator/BySelector;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 376
    iget-object v0, p0, Landroidx/test/uiautomator/BySelector;->mText:Ljava/util/regex/Pattern;

    if-nez v0, :cond_0

    .line 379
    iput-object p1, p0, Landroidx/test/uiautomator/BySelector;->mText:Ljava/util/regex/Pattern;

    .line 380
    return-object p0

    .line 377
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Text selector is already defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public textContains(Ljava/lang/String;)Landroidx/test/uiautomator/BySelector;
    .locals 3
    .param p1, "substring"    # Ljava/lang/String;

    .line 333
    const-string v0, "substring cannot be null"

    invoke-static {p1, v0}, Landroidx/test/uiautomator/BySelector;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 335
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "^.*%s.*$"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/test/uiautomator/BySelector;->text(Ljava/util/regex/Pattern;)Landroidx/test/uiautomator/BySelector;

    move-result-object v0

    return-object v0
.end method

.method public textEndsWith(Ljava/lang/String;)Landroidx/test/uiautomator/BySelector;
    .locals 3
    .param p1, "substring"    # Ljava/lang/String;

    .line 361
    const-string v0, "substring cannot be null"

    invoke-static {p1, v0}, Landroidx/test/uiautomator/BySelector;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 363
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "^.*%s$"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/test/uiautomator/BySelector;->text(Ljava/util/regex/Pattern;)Landroidx/test/uiautomator/BySelector;

    move-result-object v0

    return-object v0
.end method

.method public textStartsWith(Ljava/lang/String;)Landroidx/test/uiautomator/BySelector;
    .locals 3
    .param p1, "substring"    # Ljava/lang/String;

    .line 347
    const-string v0, "substring cannot be null"

    invoke-static {p1, v0}, Landroidx/test/uiautomator/BySelector;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 349
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "^%s.*$"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/test/uiautomator/BySelector;->text(Ljava/util/regex/Pattern;)Landroidx/test/uiautomator/BySelector;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 619
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BySelector ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 620
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroidx/test/uiautomator/BySelector;->mClazz:Ljava/util/regex/Pattern;

    const-string v2, "\', "

    if-eqz v1, :cond_0

    .line 621
    const-string v1, "CLASS=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroidx/test/uiautomator/BySelector;->mClazz:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    :cond_0
    iget-object v1, p0, Landroidx/test/uiautomator/BySelector;->mDesc:Ljava/util/regex/Pattern;

    if-eqz v1, :cond_1

    .line 624
    const-string v1, "DESC=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroidx/test/uiautomator/BySelector;->mDesc:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    :cond_1
    iget-object v1, p0, Landroidx/test/uiautomator/BySelector;->mPkg:Ljava/util/regex/Pattern;

    if-eqz v1, :cond_2

    .line 627
    const-string v1, "PKG=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroidx/test/uiautomator/BySelector;->mPkg:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    :cond_2
    iget-object v1, p0, Landroidx/test/uiautomator/BySelector;->mRes:Ljava/util/regex/Pattern;

    if-eqz v1, :cond_3

    .line 630
    const-string v1, "RES=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroidx/test/uiautomator/BySelector;->mRes:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    :cond_3
    iget-object v1, p0, Landroidx/test/uiautomator/BySelector;->mText:Ljava/util/regex/Pattern;

    if-eqz v1, :cond_4

    .line 633
    const-string v1, "TEXT=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroidx/test/uiautomator/BySelector;->mText:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    :cond_4
    iget-object v1, p0, Landroidx/test/uiautomator/BySelector;->mChecked:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    .line 636
    const-string v1, "CHECKED=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroidx/test/uiautomator/BySelector;->mChecked:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    :cond_5
    iget-object v1, p0, Landroidx/test/uiautomator/BySelector;->mCheckable:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    .line 639
    const-string v1, "CHECKABLE=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroidx/test/uiautomator/BySelector;->mCheckable:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    :cond_6
    iget-object v1, p0, Landroidx/test/uiautomator/BySelector;->mClickable:Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    .line 642
    const-string v1, "CLICKABLE=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroidx/test/uiautomator/BySelector;->mClickable:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    :cond_7
    iget-object v1, p0, Landroidx/test/uiautomator/BySelector;->mEnabled:Ljava/lang/Boolean;

    if-eqz v1, :cond_8

    .line 645
    const-string v1, "ENABLED=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroidx/test/uiautomator/BySelector;->mEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    :cond_8
    iget-object v1, p0, Landroidx/test/uiautomator/BySelector;->mFocused:Ljava/lang/Boolean;

    if-eqz v1, :cond_9

    .line 648
    const-string v1, "FOCUSED=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroidx/test/uiautomator/BySelector;->mFocused:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    :cond_9
    iget-object v1, p0, Landroidx/test/uiautomator/BySelector;->mFocusable:Ljava/lang/Boolean;

    if-eqz v1, :cond_a

    .line 651
    const-string v1, "FOCUSABLE=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroidx/test/uiautomator/BySelector;->mFocusable:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    :cond_a
    iget-object v1, p0, Landroidx/test/uiautomator/BySelector;->mLongClickable:Ljava/lang/Boolean;

    if-eqz v1, :cond_b

    .line 654
    const-string v1, "LONGCLICKABLE=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroidx/test/uiautomator/BySelector;->mLongClickable:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    :cond_b
    iget-object v1, p0, Landroidx/test/uiautomator/BySelector;->mScrollable:Ljava/lang/Boolean;

    if-eqz v1, :cond_c

    .line 657
    const-string v1, "SCROLLABLE=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroidx/test/uiautomator/BySelector;->mScrollable:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    :cond_c
    iget-object v1, p0, Landroidx/test/uiautomator/BySelector;->mSelected:Ljava/lang/Boolean;

    if-eqz v1, :cond_d

    .line 660
    const-string v1, "SELECTED=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroidx/test/uiautomator/BySelector;->mSelected:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    :cond_d
    iget-object v1, p0, Landroidx/test/uiautomator/BySelector;->mChildSelectors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/test/uiautomator/BySelector;

    .line 663
    .local v3, "childSelector":Landroidx/test/uiautomator/BySelector;
    const-string v4, "CHILD=\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroidx/test/uiautomator/BySelector;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    .end local v3    # "childSelector":Landroidx/test/uiautomator/BySelector;
    goto :goto_0

    .line 665
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 666
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
