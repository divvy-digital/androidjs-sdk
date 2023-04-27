.class public Landroidx/test/uiautomator/Until;
.super Ljava/lang/Object;
.source "Until.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    return-void
.end method

.method public static checkable(Z)Landroidx/test/uiautomator/UiObject2Condition;
    .locals 1
    .param p0, "isCheckable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroidx/test/uiautomator/UiObject2Condition<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 96
    new-instance v0, Landroidx/test/uiautomator/Until$5;

    invoke-direct {v0, p0}, Landroidx/test/uiautomator/Until$5;-><init>(Z)V

    return-object v0
.end method

.method public static checked(Z)Landroidx/test/uiautomator/UiObject2Condition;
    .locals 1
    .param p0, "isChecked"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroidx/test/uiautomator/UiObject2Condition<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 110
    new-instance v0, Landroidx/test/uiautomator/Until$6;

    invoke-direct {v0, p0}, Landroidx/test/uiautomator/Until$6;-><init>(Z)V

    return-object v0
.end method

.method public static clickable(Z)Landroidx/test/uiautomator/UiObject2Condition;
    .locals 1
    .param p0, "isClickable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroidx/test/uiautomator/UiObject2Condition<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 124
    new-instance v0, Landroidx/test/uiautomator/Until$7;

    invoke-direct {v0, p0}, Landroidx/test/uiautomator/Until$7;-><init>(Z)V

    return-object v0
.end method

.method public static descContains(Ljava/lang/String;)Landroidx/test/uiautomator/UiObject2Condition;
    .locals 3
    .param p0, "substring"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/test/uiautomator/UiObject2Condition<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 251
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "^.*%s.*$"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/uiautomator/Until;->descMatches(Ljava/util/regex/Pattern;)Landroidx/test/uiautomator/UiObject2Condition;

    move-result-object v0

    return-object v0
.end method

.method public static descEndsWith(Ljava/lang/String;)Landroidx/test/uiautomator/UiObject2Condition;
    .locals 3
    .param p0, "substring"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/test/uiautomator/UiObject2Condition<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 267
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "^.*%s$"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/uiautomator/Until;->descMatches(Ljava/util/regex/Pattern;)Landroidx/test/uiautomator/UiObject2Condition;

    move-result-object v0

    return-object v0
.end method

.method public static descEquals(Ljava/lang/String;)Landroidx/test/uiautomator/UiObject2Condition;
    .locals 1
    .param p0, "contentDescription"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/test/uiautomator/UiObject2Condition<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 243
    invoke-static {p0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/uiautomator/Until;->descMatches(Ljava/util/regex/Pattern;)Landroidx/test/uiautomator/UiObject2Condition;

    move-result-object v0

    return-object v0
.end method

.method public static descMatches(Ljava/lang/String;)Landroidx/test/uiautomator/UiObject2Condition;
    .locals 1
    .param p0, "regex"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/test/uiautomator/UiObject2Condition<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 235
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/uiautomator/Until;->descMatches(Ljava/util/regex/Pattern;)Landroidx/test/uiautomator/UiObject2Condition;

    move-result-object v0

    return-object v0
.end method

.method public static descMatches(Ljava/util/regex/Pattern;)Landroidx/test/uiautomator/UiObject2Condition;
    .locals 1
    .param p0, "regex"    # Ljava/util/regex/Pattern;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/regex/Pattern;",
            ")",
            "Landroidx/test/uiautomator/UiObject2Condition<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 221
    new-instance v0, Landroidx/test/uiautomator/Until$14;

    invoke-direct {v0, p0}, Landroidx/test/uiautomator/Until$14;-><init>(Ljava/util/regex/Pattern;)V

    return-object v0
.end method

.method public static descStartsWith(Ljava/lang/String;)Landroidx/test/uiautomator/UiObject2Condition;
    .locals 3
    .param p0, "substring"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/test/uiautomator/UiObject2Condition<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 259
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "^%s.*$"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/uiautomator/Until;->descMatches(Ljava/util/regex/Pattern;)Landroidx/test/uiautomator/UiObject2Condition;

    move-result-object v0

    return-object v0
.end method

.method public static enabled(Z)Landroidx/test/uiautomator/UiObject2Condition;
    .locals 1
    .param p0, "isEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroidx/test/uiautomator/UiObject2Condition<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 138
    new-instance v0, Landroidx/test/uiautomator/Until$8;

    invoke-direct {v0, p0}, Landroidx/test/uiautomator/Until$8;-><init>(Z)V

    return-object v0
.end method

.method public static findObject(Landroidx/test/uiautomator/BySelector;)Landroidx/test/uiautomator/SearchCondition;
    .locals 1
    .param p0, "selector"    # Landroidx/test/uiautomator/BySelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/uiautomator/BySelector;",
            ")",
            "Landroidx/test/uiautomator/SearchCondition<",
            "Landroidx/test/uiautomator/UiObject2;",
            ">;"
        }
    .end annotation

    .line 65
    new-instance v0, Landroidx/test/uiautomator/Until$3;

    invoke-direct {v0, p0}, Landroidx/test/uiautomator/Until$3;-><init>(Landroidx/test/uiautomator/BySelector;)V

    return-object v0
.end method

.method public static findObjects(Landroidx/test/uiautomator/BySelector;)Landroidx/test/uiautomator/SearchCondition;
    .locals 1
    .param p0, "selector"    # Landroidx/test/uiautomator/BySelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/uiautomator/BySelector;",
            ")",
            "Landroidx/test/uiautomator/SearchCondition<",
            "Ljava/util/List<",
            "Landroidx/test/uiautomator/UiObject2;",
            ">;>;"
        }
    .end annotation

    .line 78
    new-instance v0, Landroidx/test/uiautomator/Until$4;

    invoke-direct {v0, p0}, Landroidx/test/uiautomator/Until$4;-><init>(Landroidx/test/uiautomator/BySelector;)V

    return-object v0
.end method

.method public static focusable(Z)Landroidx/test/uiautomator/UiObject2Condition;
    .locals 1
    .param p0, "isFocusable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroidx/test/uiautomator/UiObject2Condition<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 152
    new-instance v0, Landroidx/test/uiautomator/Until$9;

    invoke-direct {v0, p0}, Landroidx/test/uiautomator/Until$9;-><init>(Z)V

    return-object v0
.end method

.method public static focused(Z)Landroidx/test/uiautomator/UiObject2Condition;
    .locals 1
    .param p0, "isFocused"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroidx/test/uiautomator/UiObject2Condition<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 166
    new-instance v0, Landroidx/test/uiautomator/Until$10;

    invoke-direct {v0, p0}, Landroidx/test/uiautomator/Until$10;-><init>(Z)V

    return-object v0
.end method

.method public static gone(Landroidx/test/uiautomator/BySelector;)Landroidx/test/uiautomator/SearchCondition;
    .locals 1
    .param p0, "selector"    # Landroidx/test/uiautomator/BySelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/uiautomator/BySelector;",
            ")",
            "Landroidx/test/uiautomator/SearchCondition<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance v0, Landroidx/test/uiautomator/Until$1;

    invoke-direct {v0, p0}, Landroidx/test/uiautomator/Until$1;-><init>(Landroidx/test/uiautomator/BySelector;)V

    return-object v0
.end method

.method public static hasObject(Landroidx/test/uiautomator/BySelector;)Landroidx/test/uiautomator/SearchCondition;
    .locals 1
    .param p0, "selector"    # Landroidx/test/uiautomator/BySelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/uiautomator/BySelector;",
            ")",
            "Landroidx/test/uiautomator/SearchCondition<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 52
    new-instance v0, Landroidx/test/uiautomator/Until$2;

    invoke-direct {v0, p0}, Landroidx/test/uiautomator/Until$2;-><init>(Landroidx/test/uiautomator/BySelector;)V

    return-object v0
.end method

.method public static longClickable(Z)Landroidx/test/uiautomator/UiObject2Condition;
    .locals 1
    .param p0, "isLongClickable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroidx/test/uiautomator/UiObject2Condition<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 180
    new-instance v0, Landroidx/test/uiautomator/Until$11;

    invoke-direct {v0, p0}, Landroidx/test/uiautomator/Until$11;-><init>(Z)V

    return-object v0
.end method

.method public static newWindow()Landroidx/test/uiautomator/EventCondition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/test/uiautomator/EventCondition<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 335
    new-instance v0, Landroidx/test/uiautomator/Until$17;

    invoke-direct {v0}, Landroidx/test/uiautomator/Until$17;-><init>()V

    return-object v0
.end method

.method public static scrollFinished(Landroidx/test/uiautomator/Direction;)Landroidx/test/uiautomator/EventCondition;
    .locals 1
    .param p0, "direction"    # Landroidx/test/uiautomator/Direction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/uiautomator/Direction;",
            ")",
            "Landroidx/test/uiautomator/EventCondition<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 359
    new-instance v0, Landroidx/test/uiautomator/Until$18;

    invoke-direct {v0, p0}, Landroidx/test/uiautomator/Until$18;-><init>(Landroidx/test/uiautomator/Direction;)V

    return-object v0
.end method

.method public static scrollable(Z)Landroidx/test/uiautomator/UiObject2Condition;
    .locals 1
    .param p0, "isScrollable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroidx/test/uiautomator/UiObject2Condition<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 194
    new-instance v0, Landroidx/test/uiautomator/Until$12;

    invoke-direct {v0, p0}, Landroidx/test/uiautomator/Until$12;-><init>(Z)V

    return-object v0
.end method

.method public static selected(Z)Landroidx/test/uiautomator/UiObject2Condition;
    .locals 1
    .param p0, "isSelected"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroidx/test/uiautomator/UiObject2Condition<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 208
    new-instance v0, Landroidx/test/uiautomator/Until$13;

    invoke-direct {v0, p0}, Landroidx/test/uiautomator/Until$13;-><init>(Z)V

    return-object v0
.end method

.method public static textContains(Ljava/lang/String;)Landroidx/test/uiautomator/UiObject2Condition;
    .locals 3
    .param p0, "substring"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/test/uiautomator/UiObject2Condition<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 311
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "^.*%s.*$"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/uiautomator/Until;->textMatches(Ljava/util/regex/Pattern;)Landroidx/test/uiautomator/UiObject2Condition;

    move-result-object v0

    return-object v0
.end method

.method public static textEndsWith(Ljava/lang/String;)Landroidx/test/uiautomator/UiObject2Condition;
    .locals 3
    .param p0, "substring"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/test/uiautomator/UiObject2Condition<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 327
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "^.*%s$"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/uiautomator/Until;->textMatches(Ljava/util/regex/Pattern;)Landroidx/test/uiautomator/UiObject2Condition;

    move-result-object v0

    return-object v0
.end method

.method public static textEquals(Ljava/lang/String;)Landroidx/test/uiautomator/UiObject2Condition;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/test/uiautomator/UiObject2Condition<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 304
    invoke-static {p0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/uiautomator/Until;->textMatches(Ljava/util/regex/Pattern;)Landroidx/test/uiautomator/UiObject2Condition;

    move-result-object v0

    return-object v0
.end method

.method public static textMatches(Ljava/lang/String;)Landroidx/test/uiautomator/UiObject2Condition;
    .locals 1
    .param p0, "regex"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/test/uiautomator/UiObject2Condition<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 287
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/uiautomator/Until;->textMatches(Ljava/util/regex/Pattern;)Landroidx/test/uiautomator/UiObject2Condition;

    move-result-object v0

    return-object v0
.end method

.method public static textMatches(Ljava/util/regex/Pattern;)Landroidx/test/uiautomator/UiObject2Condition;
    .locals 1
    .param p0, "regex"    # Ljava/util/regex/Pattern;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/regex/Pattern;",
            ")",
            "Landroidx/test/uiautomator/UiObject2Condition<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 274
    new-instance v0, Landroidx/test/uiautomator/Until$15;

    invoke-direct {v0, p0}, Landroidx/test/uiautomator/Until$15;-><init>(Ljava/util/regex/Pattern;)V

    return-object v0
.end method

.method public static textNotEquals(Ljava/lang/String;)Landroidx/test/uiautomator/UiObject2Condition;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/test/uiautomator/UiObject2Condition<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 291
    new-instance v0, Landroidx/test/uiautomator/Until$16;

    invoke-direct {v0, p0}, Landroidx/test/uiautomator/Until$16;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static textStartsWith(Ljava/lang/String;)Landroidx/test/uiautomator/UiObject2Condition;
    .locals 3
    .param p0, "substring"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/test/uiautomator/UiObject2Condition<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 319
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "^%s.*$"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/uiautomator/Until;->textMatches(Ljava/util/regex/Pattern;)Landroidx/test/uiautomator/UiObject2Condition;

    move-result-object v0

    return-object v0
.end method
