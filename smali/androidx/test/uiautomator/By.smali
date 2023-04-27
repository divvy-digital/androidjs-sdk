.class public Landroidx/test/uiautomator/By;
.super Ljava/lang/Object;
.source "By.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkable(Z)Landroidx/test/uiautomator/BySelector;
    .locals 1
    .param p0, "isCheckable"    # Z

    .line 220
    new-instance v0, Landroidx/test/uiautomator/BySelector;

    invoke-direct {v0}, Landroidx/test/uiautomator/BySelector;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/test/uiautomator/BySelector;->checkable(Z)Landroidx/test/uiautomator/BySelector;

    move-result-object v0

    return-object v0
.end method

.method public static checked(Z)Landroidx/test/uiautomator/BySelector;
    .locals 1
    .param p0, "isChecked"    # Z

    .line 229
    new-instance v0, Landroidx/test/uiautomator/BySelector;

    invoke-direct {v0}, Landroidx/test/uiautomator/BySelector;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/test/uiautomator/BySelector;->checked(Z)Landroidx/test/uiautomator/BySelector;

    move-result-object v0

    return-object v0
.end method

.method public static clazz(Ljava/lang/Class;)Landroidx/test/uiautomator/BySelector;
    .locals 1
    .param p0, "clazz"    # Ljava/lang/Class;

    .line 67
    new-instance v0, Landroidx/test/uiautomator/BySelector;

    invoke-direct {v0}, Landroidx/test/uiautomator/BySelector;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/test/uiautomator/BySelector;->clazz(Ljava/lang/Class;)Landroidx/test/uiautomator/BySelector;

    move-result-object v0

    return-object v0
.end method

.method public static clazz(Ljava/lang/String;)Landroidx/test/uiautomator/BySelector;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;

    .line 49
    new-instance v0, Landroidx/test/uiautomator/BySelector;

    invoke-direct {v0}, Landroidx/test/uiautomator/BySelector;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/test/uiautomator/BySelector;->clazz(Ljava/lang/String;)Landroidx/test/uiautomator/BySelector;

    move-result-object v0

    return-object v0
.end method

.method public static clazz(Ljava/lang/String;Ljava/lang/String;)Landroidx/test/uiautomator/BySelector;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;

    .line 58
    new-instance v0, Landroidx/test/uiautomator/BySelector;

    invoke-direct {v0}, Landroidx/test/uiautomator/BySelector;-><init>()V

    invoke-virtual {v0, p0, p1}, Landroidx/test/uiautomator/BySelector;->clazz(Ljava/lang/String;Ljava/lang/String;)Landroidx/test/uiautomator/BySelector;

    move-result-object v0

    return-object v0
.end method

.method public static clazz(Ljava/util/regex/Pattern;)Landroidx/test/uiautomator/BySelector;
    .locals 1
    .param p0, "className"    # Ljava/util/regex/Pattern;

    .line 76
    new-instance v0, Landroidx/test/uiautomator/BySelector;

    invoke-direct {v0}, Landroidx/test/uiautomator/BySelector;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/test/uiautomator/BySelector;->clazz(Ljava/util/regex/Pattern;)Landroidx/test/uiautomator/BySelector;

    move-result-object v0

    return-object v0
.end method

.method public static clickable(Z)Landroidx/test/uiautomator/BySelector;
    .locals 1
    .param p0, "isClickable"    # Z

    .line 238
    new-instance v0, Landroidx/test/uiautomator/BySelector;

    invoke-direct {v0}, Landroidx/test/uiautomator/BySelector;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/test/uiautomator/BySelector;->clickable(Z)Landroidx/test/uiautomator/BySelector;

    move-result-object v0

    return-object v0
.end method

.method public static copy(Landroidx/test/uiautomator/BySelector;)Landroidx/test/uiautomator/BySelector;
    .locals 1
    .param p0, "original"    # Landroidx/test/uiautomator/BySelector;

    .line 40
    new-instance v0, Landroidx/test/uiautomator/BySelector;

    invoke-direct {v0, p0}, Landroidx/test/uiautomator/BySelector;-><init>(Landroidx/test/uiautomator/BySelector;)V

    return-object v0
.end method

.method public static depth(I)Landroidx/test/uiautomator/BySelector;
    .locals 1
    .param p0, "depth"    # I

    .line 299
    new-instance v0, Landroidx/test/uiautomator/BySelector;

    invoke-direct {v0}, Landroidx/test/uiautomator/BySelector;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/test/uiautomator/BySelector;->depth(I)Landroidx/test/uiautomator/BySelector;

    move-result-object v0

    return-object v0
.end method

.method public static desc(Ljava/lang/String;)Landroidx/test/uiautomator/BySelector;
    .locals 1
    .param p0, "contentDescription"    # Ljava/lang/String;

    .line 85
    new-instance v0, Landroidx/test/uiautomator/BySelector;

    invoke-direct {v0}, Landroidx/test/uiautomator/BySelector;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/test/uiautomator/BySelector;->desc(Ljava/lang/String;)Landroidx/test/uiautomator/BySelector;

    move-result-object v0

    return-object v0
.end method

.method public static desc(Ljava/util/regex/Pattern;)Landroidx/test/uiautomator/BySelector;
    .locals 1
    .param p0, "contentDescription"    # Ljava/util/regex/Pattern;

    .line 121
    new-instance v0, Landroidx/test/uiautomator/BySelector;

    invoke-direct {v0}, Landroidx/test/uiautomator/BySelector;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/test/uiautomator/BySelector;->desc(Ljava/util/regex/Pattern;)Landroidx/test/uiautomator/BySelector;

    move-result-object v0

    return-object v0
.end method

.method public static descContains(Ljava/lang/String;)Landroidx/test/uiautomator/BySelector;
    .locals 1
    .param p0, "substring"    # Ljava/lang/String;

    .line 94
    new-instance v0, Landroidx/test/uiautomator/BySelector;

    invoke-direct {v0}, Landroidx/test/uiautomator/BySelector;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/test/uiautomator/BySelector;->descContains(Ljava/lang/String;)Landroidx/test/uiautomator/BySelector;

    move-result-object v0

    return-object v0
.end method

.method public static descEndsWith(Ljava/lang/String;)Landroidx/test/uiautomator/BySelector;
    .locals 1
    .param p0, "substring"    # Ljava/lang/String;

    .line 112
    new-instance v0, Landroidx/test/uiautomator/BySelector;

    invoke-direct {v0}, Landroidx/test/uiautomator/BySelector;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/test/uiautomator/BySelector;->descEndsWith(Ljava/lang/String;)Landroidx/test/uiautomator/BySelector;

    move-result-object v0

    return-object v0
.end method

.method public static descStartsWith(Ljava/lang/String;)Landroidx/test/uiautomator/BySelector;
    .locals 1
    .param p0, "substring"    # Ljava/lang/String;

    .line 103
    new-instance v0, Landroidx/test/uiautomator/BySelector;

    invoke-direct {v0}, Landroidx/test/uiautomator/BySelector;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/test/uiautomator/BySelector;->descStartsWith(Ljava/lang/String;)Landroidx/test/uiautomator/BySelector;

    move-result-object v0

    return-object v0
.end method

.method public static enabled(Z)Landroidx/test/uiautomator/BySelector;
    .locals 1
    .param p0, "isEnabled"    # Z

    .line 247
    new-instance v0, Landroidx/test/uiautomator/BySelector;

    invoke-direct {v0}, Landroidx/test/uiautomator/BySelector;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/test/uiautomator/BySelector;->enabled(Z)Landroidx/test/uiautomator/BySelector;

    move-result-object v0

    return-object v0
.end method

.method public static focusable(Z)Landroidx/test/uiautomator/BySelector;
    .locals 1
    .param p0, "isFocusable"    # Z

    .line 256
    new-instance v0, Landroidx/test/uiautomator/BySelector;

    invoke-direct {v0}, Landroidx/test/uiautomator/BySelector;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/test/uiautomator/BySelector;->focusable(Z)Landroidx/test/uiautomator/BySelector;

    move-result-object v0

    return-object v0
.end method

.method public static focused(Z)Landroidx/test/uiautomator/BySelector;
    .locals 1
    .param p0, "isFocused"    # Z

    .line 265
    new-instance v0, Landroidx/test/uiautomator/BySelector;

    invoke-direct {v0}, Landroidx/test/uiautomator/BySelector;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/test/uiautomator/BySelector;->focused(Z)Landroidx/test/uiautomator/BySelector;

    move-result-object v0

    return-object v0
.end method

.method public static hasChild(Landroidx/test/uiautomator/BySelector;)Landroidx/test/uiautomator/BySelector;
    .locals 1
    .param p0, "childSelector"    # Landroidx/test/uiautomator/BySelector;

    .line 308
    new-instance v0, Landroidx/test/uiautomator/BySelector;

    invoke-direct {v0}, Landroidx/test/uiautomator/BySelector;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/test/uiautomator/BySelector;->hasChild(Landroidx/test/uiautomator/BySelector;)Landroidx/test/uiautomator/BySelector;

    move-result-object v0

    return-object v0
.end method

.method public static hasDescendant(Landroidx/test/uiautomator/BySelector;)Landroidx/test/uiautomator/BySelector;
    .locals 1
    .param p0, "descendantSelector"    # Landroidx/test/uiautomator/BySelector;

    .line 317
    new-instance v0, Landroidx/test/uiautomator/BySelector;

    invoke-direct {v0}, Landroidx/test/uiautomator/BySelector;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/test/uiautomator/BySelector;->hasDescendant(Landroidx/test/uiautomator/BySelector;)Landroidx/test/uiautomator/BySelector;

    move-result-object v0

    return-object v0
.end method

.method public static hasDescendant(Landroidx/test/uiautomator/BySelector;I)Landroidx/test/uiautomator/BySelector;
    .locals 1
    .param p0, "descendantSelector"    # Landroidx/test/uiautomator/BySelector;
    .param p1, "maxDepth"    # I

    .line 326
    new-instance v0, Landroidx/test/uiautomator/BySelector;

    invoke-direct {v0}, Landroidx/test/uiautomator/BySelector;-><init>()V

    invoke-virtual {v0, p0, p1}, Landroidx/test/uiautomator/BySelector;->hasDescendant(Landroidx/test/uiautomator/BySelector;I)Landroidx/test/uiautomator/BySelector;

    move-result-object v0

    return-object v0
.end method

.method public static longClickable(Z)Landroidx/test/uiautomator/BySelector;
    .locals 1
    .param p0, "isLongClickable"    # Z

    .line 274
    new-instance v0, Landroidx/test/uiautomator/BySelector;

    invoke-direct {v0}, Landroidx/test/uiautomator/BySelector;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/test/uiautomator/BySelector;->longClickable(Z)Landroidx/test/uiautomator/BySelector;

    move-result-object v0

    return-object v0
.end method

.method public static pkg(Ljava/lang/String;)Landroidx/test/uiautomator/BySelector;
    .locals 1
    .param p0, "applicationPackage"    # Ljava/lang/String;

    .line 130
    new-instance v0, Landroidx/test/uiautomator/BySelector;

    invoke-direct {v0}, Landroidx/test/uiautomator/BySelector;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/test/uiautomator/BySelector;->pkg(Ljava/lang/String;)Landroidx/test/uiautomator/BySelector;

    move-result-object v0

    return-object v0
.end method

.method public static pkg(Ljava/util/regex/Pattern;)Landroidx/test/uiautomator/BySelector;
    .locals 1
    .param p0, "applicationPackage"    # Ljava/util/regex/Pattern;

    .line 139
    new-instance v0, Landroidx/test/uiautomator/BySelector;

    invoke-direct {v0}, Landroidx/test/uiautomator/BySelector;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/test/uiautomator/BySelector;->pkg(Ljava/util/regex/Pattern;)Landroidx/test/uiautomator/BySelector;

    move-result-object v0

    return-object v0
.end method

.method public static res(Ljava/lang/String;)Landroidx/test/uiautomator/BySelector;
    .locals 1
    .param p0, "resourceName"    # Ljava/lang/String;

    .line 148
    new-instance v0, Landroidx/test/uiautomator/BySelector;

    invoke-direct {v0}, Landroidx/test/uiautomator/BySelector;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/test/uiautomator/BySelector;->res(Ljava/lang/String;)Landroidx/test/uiautomator/BySelector;

    move-result-object v0

    return-object v0
.end method

.method public static res(Ljava/lang/String;Ljava/lang/String;)Landroidx/test/uiautomator/BySelector;
    .locals 1
    .param p0, "resourcePackage"    # Ljava/lang/String;
    .param p1, "resourceId"    # Ljava/lang/String;

    .line 157
    new-instance v0, Landroidx/test/uiautomator/BySelector;

    invoke-direct {v0}, Landroidx/test/uiautomator/BySelector;-><init>()V

    invoke-virtual {v0, p0, p1}, Landroidx/test/uiautomator/BySelector;->res(Ljava/lang/String;Ljava/lang/String;)Landroidx/test/uiautomator/BySelector;

    move-result-object v0

    return-object v0
.end method

.method public static res(Ljava/util/regex/Pattern;)Landroidx/test/uiautomator/BySelector;
    .locals 1
    .param p0, "resourceName"    # Ljava/util/regex/Pattern;

    .line 166
    new-instance v0, Landroidx/test/uiautomator/BySelector;

    invoke-direct {v0}, Landroidx/test/uiautomator/BySelector;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/test/uiautomator/BySelector;->res(Ljava/util/regex/Pattern;)Landroidx/test/uiautomator/BySelector;

    move-result-object v0

    return-object v0
.end method

.method public static scrollable(Z)Landroidx/test/uiautomator/BySelector;
    .locals 1
    .param p0, "isScrollable"    # Z

    .line 283
    new-instance v0, Landroidx/test/uiautomator/BySelector;

    invoke-direct {v0}, Landroidx/test/uiautomator/BySelector;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/test/uiautomator/BySelector;->scrollable(Z)Landroidx/test/uiautomator/BySelector;

    move-result-object v0

    return-object v0
.end method

.method public static selected(Z)Landroidx/test/uiautomator/BySelector;
    .locals 1
    .param p0, "isSelected"    # Z

    .line 292
    new-instance v0, Landroidx/test/uiautomator/BySelector;

    invoke-direct {v0}, Landroidx/test/uiautomator/BySelector;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/test/uiautomator/BySelector;->selected(Z)Landroidx/test/uiautomator/BySelector;

    move-result-object v0

    return-object v0
.end method

.method public static text(Ljava/lang/String;)Landroidx/test/uiautomator/BySelector;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .line 175
    new-instance v0, Landroidx/test/uiautomator/BySelector;

    invoke-direct {v0}, Landroidx/test/uiautomator/BySelector;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/test/uiautomator/BySelector;->text(Ljava/lang/String;)Landroidx/test/uiautomator/BySelector;

    move-result-object v0

    return-object v0
.end method

.method public static text(Ljava/util/regex/Pattern;)Landroidx/test/uiautomator/BySelector;
    .locals 1
    .param p0, "regex"    # Ljava/util/regex/Pattern;

    .line 211
    new-instance v0, Landroidx/test/uiautomator/BySelector;

    invoke-direct {v0}, Landroidx/test/uiautomator/BySelector;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/test/uiautomator/BySelector;->text(Ljava/util/regex/Pattern;)Landroidx/test/uiautomator/BySelector;

    move-result-object v0

    return-object v0
.end method

.method public static textContains(Ljava/lang/String;)Landroidx/test/uiautomator/BySelector;
    .locals 1
    .param p0, "substring"    # Ljava/lang/String;

    .line 184
    new-instance v0, Landroidx/test/uiautomator/BySelector;

    invoke-direct {v0}, Landroidx/test/uiautomator/BySelector;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/test/uiautomator/BySelector;->textContains(Ljava/lang/String;)Landroidx/test/uiautomator/BySelector;

    move-result-object v0

    return-object v0
.end method

.method public static textEndsWith(Ljava/lang/String;)Landroidx/test/uiautomator/BySelector;
    .locals 1
    .param p0, "substring"    # Ljava/lang/String;

    .line 202
    new-instance v0, Landroidx/test/uiautomator/BySelector;

    invoke-direct {v0}, Landroidx/test/uiautomator/BySelector;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/test/uiautomator/BySelector;->textEndsWith(Ljava/lang/String;)Landroidx/test/uiautomator/BySelector;

    move-result-object v0

    return-object v0
.end method

.method public static textStartsWith(Ljava/lang/String;)Landroidx/test/uiautomator/BySelector;
    .locals 1
    .param p0, "substring"    # Ljava/lang/String;

    .line 193
    new-instance v0, Landroidx/test/uiautomator/BySelector;

    invoke-direct {v0}, Landroidx/test/uiautomator/BySelector;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/test/uiautomator/BySelector;->textStartsWith(Ljava/lang/String;)Landroidx/test/uiautomator/BySelector;

    move-result-object v0

    return-object v0
.end method
