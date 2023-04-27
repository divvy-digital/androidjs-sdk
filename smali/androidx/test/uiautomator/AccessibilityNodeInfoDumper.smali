.class Landroidx/test/uiautomator/AccessibilityNodeInfoDumper;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoDumper.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;

.field private static final NAF_EXCLUDED_CLASSES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 34
    const-class v0, Landroidx/test/uiautomator/AccessibilityNodeInfoDumper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/test/uiautomator/AccessibilityNodeInfoDumper;->LOGTAG:Ljava/lang/String;

    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-class v1, Landroid/widget/GridView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Landroid/widget/GridLayout;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-class v1, Landroid/widget/ListView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-class v1, Landroid/widget/TableLayout;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Landroidx/test/uiautomator/AccessibilityNodeInfoDumper;->NAF_EXCLUDED_CLASSES:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static childNafCheck(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 5
    .param p0, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 153
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v0

    .line 154
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 155
    invoke-virtual {p0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 157
    .local v2, "childNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroidx/test/uiautomator/AccessibilityNodeInfoDumper;->safeCharSeqToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroidx/test/uiautomator/AccessibilityNodeInfoDumper;->safeCharSeqToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 161
    :cond_0
    invoke-static {v2}, Landroidx/test/uiautomator/AccessibilityNodeInfoDumper;->childNafCheck(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 162
    return v4

    .line 154
    .end local v2    # "childNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 159
    .restart local v2    # "childNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_2
    :goto_1
    return v4

    .line 164
    .end local v1    # "x":I
    .end local v2    # "childNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method private static dumpNodeRec(Landroid/view/accessibility/AccessibilityNodeInfo;Lorg/xmlpull/v1/XmlSerializer;III)V
    .locals 10
    .param p0, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "index"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    const-string v0, ""

    const-string v1, "node"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 60
    invoke-static {p0}, Landroidx/test/uiautomator/AccessibilityNodeInfoDumper;->nafExcludedClass(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    invoke-static {p0}, Landroidx/test/uiautomator/AccessibilityNodeInfoDumper;->nafCheck(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 61
    const-string v2, "NAF"

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v0, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 62
    :cond_0
    const-string v2, "index"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v0, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 63
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroidx/test/uiautomator/AccessibilityNodeInfoDumper;->safeCharSeqToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "text"

    invoke-interface {p1, v0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 64
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getViewIdResourceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/test/uiautomator/AccessibilityNodeInfoDumper;->safeCharSeqToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "resource-id"

    invoke-interface {p1, v0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 65
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroidx/test/uiautomator/AccessibilityNodeInfoDumper;->safeCharSeqToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "class"

    invoke-interface {p1, v0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 66
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroidx/test/uiautomator/AccessibilityNodeInfoDumper;->safeCharSeqToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "package"

    invoke-interface {p1, v0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 67
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroidx/test/uiautomator/AccessibilityNodeInfoDumper;->safeCharSeqToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "content-desc"

    invoke-interface {p1, v0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 68
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v4, "checkable"

    invoke-interface {p1, v0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 69
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v4, "checked"

    invoke-interface {p1, v0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 70
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v4, "clickable"

    invoke-interface {p1, v0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 71
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v4, "enabled"

    invoke-interface {p1, v0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 72
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v4, "focusable"

    invoke-interface {p1, v0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 73
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v4, "focused"

    invoke-interface {p1, v0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 74
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v4, "scrollable"

    invoke-interface {p1, v0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 75
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v4, "long-clickable"

    invoke-interface {p1, v0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 76
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isPassword()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v4, "password"

    invoke-interface {p1, v0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 77
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v4, "selected"

    invoke-interface {p1, v0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 78
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v4, "visible-to-user"

    invoke-interface {p1, v0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 79
    invoke-static {p0, p3, p4}, Landroidx/test/uiautomator/AccessibilityNodeInfoHelper;->getVisibleBoundsInScreen(Landroid/view/accessibility/AccessibilityNodeInfo;II)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "bounds"

    invoke-interface {p1, v0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 81
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v2

    .line 82
    .local v2, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_3

    .line 83
    invoke-virtual {p0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    .line 84
    .local v5, "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 85
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 86
    invoke-static {v5, p1, v4, p3, p4}, Landroidx/test/uiautomator/AccessibilityNodeInfoDumper;->dumpNodeRec(Landroid/view/accessibility/AccessibilityNodeInfo;Lorg/xmlpull/v1/XmlSerializer;III)V

    .line 87
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    goto :goto_1

    .line 89
    :cond_1
    sget-object v7, Landroidx/test/uiautomator/AccessibilityNodeInfoDumper;->LOGTAG:Ljava/lang/String;

    new-array v8, v3, [Ljava/lang/Object;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    const-string v6, "Skipping invisible child: %s"

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 92
    :cond_2
    sget-object v7, Landroidx/test/uiautomator/AccessibilityNodeInfoDumper;->LOGTAG:Ljava/lang/String;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v3

    const/4 v6, 0x2

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    const-string v6, "Null child %d/%d, parent: %s"

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .end local v5    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 96
    .end local v4    # "i":I
    :cond_3
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 97
    return-void
.end method

.method public static dumpWindowHierarchy(Landroidx/test/uiautomator/UiDevice;Ljava/io/OutputStream;)V
    .locals 10
    .param p0, "device"    # Landroidx/test/uiautomator/UiDevice;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    .line 42
    .local v0, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string v1, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 43
    const-string v1, "UTF-8"

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 45
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 46
    const-string v1, ""

    const-string v2, "hierarchy"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 47
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiDevice;->getDisplayRotation()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "rotation"

    invoke-interface {v0, v1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 49
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiDevice;->getWindowRoots()[Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    .local v3, "arr$":[Landroid/view/accessibility/AccessibilityNodeInfo;
    array-length v4, v3

    .local v4, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    .line 50
    .local v6, "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiDevice;->getDisplayWidth()I

    move-result v7

    invoke-virtual {p0}, Landroidx/test/uiautomator/UiDevice;->getDisplayHeight()I

    move-result v8

    const/4 v9, 0x0

    invoke-static {v6, v0, v9, v7, v8}, Landroidx/test/uiautomator/AccessibilityNodeInfoDumper;->dumpNodeRec(Landroid/view/accessibility/AccessibilityNodeInfo;Lorg/xmlpull/v1/XmlSerializer;III)V

    .line 49
    .end local v6    # "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 53
    .end local v3    # "arr$":[Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_0
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 54
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 55
    return-void
.end method

.method private static nafCheck(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 2
    .param p0, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 127
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/uiautomator/AccessibilityNodeInfoDumper;->safeCharSeqToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/uiautomator/AccessibilityNodeInfoDumper;->safeCharSeqToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 131
    .local v0, "isNaf":Z
    :goto_0
    if-nez v0, :cond_1

    .line 132
    return v1

    .line 137
    :cond_1
    invoke-static {p0}, Landroidx/test/uiautomator/AccessibilityNodeInfoDumper;->childNafCheck(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v1

    return v1
.end method

.method private static nafExcludedClass(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 6
    .param p0, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 108
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/uiautomator/AccessibilityNodeInfoDumper;->safeCharSeqToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "className":Ljava/lang/String;
    sget-object v1, Landroidx/test/uiautomator/AccessibilityNodeInfoDumper;->NAF_EXCLUDED_CLASSES:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 110
    .local v4, "excludedClassName":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 111
    const/4 v5, 0x1

    return v5

    .line 109
    .end local v4    # "excludedClassName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 113
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private static safeCharSeqToString(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 168
    if-nez p0, :cond_0

    .line 169
    const-string v0, ""

    return-object v0

    .line 171
    :cond_0
    invoke-static {p0}, Landroidx/test/uiautomator/AccessibilityNodeInfoDumper;->stripInvalidXMLChars(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static stripInvalidXMLChars(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 176
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 187
    .local v0, "ret":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_17

    .line 188
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 190
    .local v2, "ch":C
    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    const/16 v3, 0x8

    if-le v2, v3, :cond_15

    :cond_0
    const/16 v3, 0xb

    if-lt v2, v3, :cond_1

    const/16 v3, 0xc

    if-le v2, v3, :cond_15

    :cond_1
    const/16 v3, 0xe

    if-lt v2, v3, :cond_2

    const/16 v3, 0x1f

    if-le v2, v3, :cond_15

    :cond_2
    const/16 v3, 0x7f

    if-lt v2, v3, :cond_3

    const/16 v3, 0x84

    if-le v2, v3, :cond_15

    :cond_3
    const/16 v3, 0x86

    if-lt v2, v3, :cond_4

    const/16 v3, 0x9f

    if-le v2, v3, :cond_15

    :cond_4
    const v3, 0xfdd0

    if-lt v2, v3, :cond_5

    const v3, 0xfddf

    if-le v2, v3, :cond_15

    :cond_5
    const v3, 0x1fffe

    if-lt v2, v3, :cond_6

    const v3, 0x1ffff

    if-le v2, v3, :cond_15

    :cond_6
    const v3, 0x2fffe

    if-lt v2, v3, :cond_7

    const v3, 0x2ffff

    if-le v2, v3, :cond_15

    :cond_7
    const v3, 0x3fffe

    if-lt v2, v3, :cond_8

    const v3, 0x3ffff

    if-le v2, v3, :cond_15

    :cond_8
    const v3, 0x4fffe

    if-lt v2, v3, :cond_9

    const v3, 0x4ffff

    if-le v2, v3, :cond_15

    :cond_9
    const v3, 0x5fffe

    if-lt v2, v3, :cond_a

    const v3, 0x5ffff

    if-le v2, v3, :cond_15

    :cond_a
    const v3, 0x6fffe

    if-lt v2, v3, :cond_b

    const v3, 0x6ffff

    if-le v2, v3, :cond_15

    :cond_b
    const v3, 0x7fffe

    if-lt v2, v3, :cond_c

    const v3, 0x7ffff

    if-le v2, v3, :cond_15

    :cond_c
    const v3, 0x8fffe

    if-lt v2, v3, :cond_d

    const v3, 0x8ffff

    if-le v2, v3, :cond_15

    :cond_d
    const v3, 0x9fffe

    if-lt v2, v3, :cond_e

    const v3, 0x9ffff

    if-le v2, v3, :cond_15

    :cond_e
    const v3, 0xafffe

    if-lt v2, v3, :cond_f

    const v3, 0xaffff

    if-le v2, v3, :cond_15

    :cond_f
    const v3, 0xbfffe

    if-lt v2, v3, :cond_10

    const v3, 0xbffff

    if-le v2, v3, :cond_15

    :cond_10
    const v3, 0xcfffe

    if-lt v2, v3, :cond_11

    const v3, 0xcffff

    if-le v2, v3, :cond_15

    :cond_11
    const v3, 0xdfffe

    if-lt v2, v3, :cond_12

    const v3, 0xdffff

    if-le v2, v3, :cond_15

    :cond_12
    const v3, 0xefffe

    if-lt v2, v3, :cond_13

    const v3, 0xeffff

    if-le v2, v3, :cond_15

    :cond_13
    const v3, 0xffffe

    if-lt v2, v3, :cond_14

    const v3, 0xfffff

    if-le v2, v3, :cond_15

    :cond_14
    const v3, 0x10fffe

    if-lt v2, v3, :cond_16

    const v3, 0x10ffff

    if-gt v2, v3, :cond_16

    .line 201
    :cond_15
    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 203
    :cond_16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 187
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 205
    .end local v1    # "i":I
    .end local v2    # "ch":C
    :cond_17
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
