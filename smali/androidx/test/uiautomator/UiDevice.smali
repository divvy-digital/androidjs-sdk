.class public Landroidx/test/uiautomator/UiDevice;
.super Ljava/lang/Object;
.source "UiDevice.java"

# interfaces
.implements Landroidx/test/uiautomator/Searchable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/uiautomator/UiDevice$EventForwardingFilter;
    }
.end annotation


# static fields
.field static final API_LEVEL_ACTUAL:I

.field private static final KEY_PRESS_EVENT_TIMEOUT:J = 0x3e8L

.field private static final LOG_TAG:Ljava/lang/String;

.field private static sInstance:Landroidx/test/uiautomator/UiDevice;


# instance fields
.field private mInWatcherContext:Z

.field private mInstrumentation:Landroid/app/Instrumentation;

.field private mInteractionController:Landroidx/test/uiautomator/InteractionController;

.field private mQueryController:Landroidx/test/uiautomator/QueryController;

.field private mWaitMixin:Landroidx/test/uiautomator/WaitMixin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/uiautomator/WaitMixin<",
            "Landroidx/test/uiautomator/UiDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mWatchers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/test/uiautomator/UiWatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final mWatchersTriggers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 65
    const-class v0, Landroidx/test/uiautomator/UiDevice;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/test/uiautomator/UiDevice;->LOG_TAG:Ljava/lang/String;

    .line 97
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "REL"

    sget-object v2, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    sput v0, Landroidx/test/uiautomator/UiDevice;->API_LEVEL_ACTUAL:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/test/uiautomator/UiDevice;->mWatchers:Ljava/util/HashMap;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/test/uiautomator/UiDevice;->mWatchersTriggers:Ljava/util/List;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/test/uiautomator/UiDevice;->mInWatcherContext:Z

    .line 87
    new-instance v0, Landroidx/test/uiautomator/WaitMixin;

    invoke-direct {v0, p0}, Landroidx/test/uiautomator/WaitMixin;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/test/uiautomator/UiDevice;->mWaitMixin:Landroidx/test/uiautomator/WaitMixin;

    .line 104
    return-void
.end method

.method constructor <init>(Landroid/app/Instrumentation;)V
    .locals 2
    .param p1, "instrumentation"    # Landroid/app/Instrumentation;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/test/uiautomator/UiDevice;->mWatchers:Ljava/util/HashMap;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/test/uiautomator/UiDevice;->mWatchersTriggers:Ljava/util/List;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/test/uiautomator/UiDevice;->mInWatcherContext:Z

    .line 87
    new-instance v0, Landroidx/test/uiautomator/WaitMixin;

    invoke-direct {v0, p0}, Landroidx/test/uiautomator/WaitMixin;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/test/uiautomator/UiDevice;->mWaitMixin:Landroidx/test/uiautomator/WaitMixin;

    .line 108
    iput-object p1, p0, Landroidx/test/uiautomator/UiDevice;->mInstrumentation:Landroid/app/Instrumentation;

    .line 109
    new-instance v0, Landroidx/test/uiautomator/QueryController;

    invoke-direct {v0, p1}, Landroidx/test/uiautomator/QueryController;-><init>(Landroid/app/Instrumentation;)V

    iput-object v0, p0, Landroidx/test/uiautomator/UiDevice;->mQueryController:Landroidx/test/uiautomator/QueryController;

    .line 110
    new-instance v0, Landroidx/test/uiautomator/InteractionController;

    invoke-direct {v0, p1}, Landroidx/test/uiautomator/InteractionController;-><init>(Landroid/app/Instrumentation;)V

    iput-object v0, p0, Landroidx/test/uiautomator/UiDevice;->mInteractionController:Landroidx/test/uiautomator/InteractionController;

    .line 113
    sget v0, Landroidx/test/uiautomator/UiDevice;->API_LEVEL_ACTUAL:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 115
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiDevice;->getUiAutomation()Landroid/app/UiAutomation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/UiAutomation;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0

    .line 116
    .local v0, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    iget v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 117
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiDevice;->getUiAutomation()Landroid/app/UiAutomation;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/UiAutomation;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 119
    .end local v0    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_0
    return-void
.end method

.method private getDefaultDisplay()Landroid/view/Display;
    .locals 2

    .line 1088
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiDevice;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1090
    .local v0, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance()Landroidx/test/uiautomator/UiDevice;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 248
    sget-object v0, Landroidx/test/uiautomator/UiDevice;->sInstance:Landroidx/test/uiautomator/UiDevice;

    if-eqz v0, :cond_0

    .line 251
    return-object v0

    .line 249
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UiDevice singleton not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Landroid/app/Instrumentation;)Landroidx/test/uiautomator/UiDevice;
    .locals 1
    .param p0, "instrumentation"    # Landroid/app/Instrumentation;

    .line 260
    sget-object v0, Landroidx/test/uiautomator/UiDevice;->sInstance:Landroidx/test/uiautomator/UiDevice;

    if-nez v0, :cond_0

    .line 261
    new-instance v0, Landroidx/test/uiautomator/UiDevice;

    invoke-direct {v0, p0}, Landroidx/test/uiautomator/UiDevice;-><init>(Landroid/app/Instrumentation;)V

    sput-object v0, Landroidx/test/uiautomator/UiDevice;->sInstance:Landroidx/test/uiautomator/UiDevice;

    .line 263
    :cond_0
    sget-object v0, Landroidx/test/uiautomator/UiDevice;->sInstance:Landroidx/test/uiautomator/UiDevice;

    return-object v0
.end method

.method static getUiAutomation(Landroid/app/Instrumentation;)Landroid/app/UiAutomation;
    .locals 3
    .param p0, "instrumentation"    # Landroid/app/Instrumentation;

    .line 1127
    invoke-static {}, Landroidx/test/uiautomator/Configurator;->getInstance()Landroidx/test/uiautomator/Configurator;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/test/uiautomator/Configurator;->getUiAutomationFlags()I

    move-result v0

    .line 1128
    .local v0, "flags":I
    sget v1, Landroidx/test/uiautomator/UiDevice;->API_LEVEL_ACTUAL:I

    const/16 v2, 0x17

    if-le v1, v2, :cond_0

    .line 1129
    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->getUiAutomation(I)Landroid/app/UiAutomation;

    move-result-object v1

    return-object v1

    .line 1132
    :cond_0
    if-eqz v0, :cond_1

    .line 1133
    sget-object v1, Landroidx/test/uiautomator/UiDevice;->LOG_TAG:Ljava/lang/String;

    const-string v2, "UiAutomation flags not supported prior to N - ignoring."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    :cond_1
    invoke-virtual {p0}, Landroid/app/Instrumentation;->getUiAutomation()Landroid/app/UiAutomation;

    move-result-object v1

    return-object v1
.end method

.method private setWatcherTriggered(Ljava/lang/String;)V
    .locals 2
    .param p1, "watcherName"    # Ljava/lang/String;

    .line 760
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 761
    invoke-virtual {p0, p1}, Landroidx/test/uiautomator/UiDevice;->hasWatcherTriggered(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 762
    iget-object v0, p0, Landroidx/test/uiautomator/UiDevice;->mWatchersTriggers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 764
    :cond_0
    return-void
.end method


# virtual methods
.method public clearLastTraversedText()V
    .locals 1

    .line 328
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 329
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiDevice;->getQueryController()Landroidx/test/uiautomator/QueryController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/test/uiautomator/QueryController;->clearLastTraversedText()V

    .line 330
    return-void
.end method

.method public click(II)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 553
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 554
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiDevice;->getDisplayWidth()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-virtual {p0}, Landroidx/test/uiautomator/UiDevice;->getDisplayHeight()I

    move-result v0

    if-lt p2, v0, :cond_0

    goto :goto_0

    .line 557
    :cond_0
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiDevice;->getInteractionController()Landroidx/test/uiautomator/InteractionController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/test/uiautomator/InteractionController;->clickNoSync(II)Z

    move-result v0

    return v0

    .line 555
    :cond_1
    :goto_0
    return v2
.end method

.method public drag(IIIII)Z
    .locals 10
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "endX"    # I
    .param p4, "endY"    # I
    .param p5, "steps"    # I

    .line 595
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 596
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiDevice;->getInteractionController()Landroidx/test/uiautomator/InteractionController;

    move-result-object v3

    const/4 v9, 0x1

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-virtual/range {v3 .. v9}, Landroidx/test/uiautomator/InteractionController;->swipe(IIIIIZ)Z

    move-result v0

    return v0
.end method

.method public dumpWindowHierarchy(Ljava/io/File;)V
    .locals 3
    .param p1, "dest"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 930
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 932
    .local v0, "stream":Ljava/io/OutputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v1}, Landroidx/test/uiautomator/UiDevice;->dumpWindowHierarchy(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 934
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 935
    nop

    .line 936
    return-void

    .line 934
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    throw v1
.end method

.method public dumpWindowHierarchy(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 945
    invoke-static {p0, p1}, Landroidx/test/uiautomator/AccessibilityNodeInfoDumper;->dumpWindowHierarchy(Landroidx/test/uiautomator/UiDevice;Ljava/io/OutputStream;)V

    .line 946
    return-void
.end method

.method public dumpWindowHierarchy(Ljava/lang/String;)V
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 910
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 912
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 913
    .local v0, "dumpFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isAbsolute()Z

    move-result v1

    if-nez v1, :cond_0

    .line 914
    iget-object v1, p0, Landroidx/test/uiautomator/UiDevice;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v1}, Landroid/app/Instrumentation;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 917
    :cond_0
    :try_start_0
    invoke-virtual {p0, v0}, Landroidx/test/uiautomator/UiDevice;->dumpWindowHierarchy(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 920
    goto :goto_0

    .line 918
    :catch_0
    move-exception v1

    .line 921
    :goto_0
    return-void
.end method

.method public executeShellCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1075
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiDevice;->getUiAutomation()Landroid/app/UiAutomation;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/UiAutomation;->executeShellCommand(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 1076
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    const/16 v1, 0x200

    new-array v1, v1, [B

    .line 1078
    .local v1, "buf":[B
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 1079
    .local v2, "fis":Ljava/io/FileInputStream;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 1080
    .local v3, "stdout":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    move v5, v4

    .local v5, "bytesRead":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    .line 1081
    new-instance v4, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v4, v1, v6, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1083
    :cond_0
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 1084
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public findObject(Landroidx/test/uiautomator/BySelector;)Landroidx/test/uiautomator/UiObject2;
    .locals 2
    .param p1, "selector"    # Landroidx/test/uiautomator/BySelector;

    .line 150
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiDevice;->getWindowRoots()[Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroidx/test/uiautomator/ByMatcher;->findMatch(Landroidx/test/uiautomator/UiDevice;Landroidx/test/uiautomator/BySelector;[Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 151
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_0

    new-instance v1, Landroidx/test/uiautomator/UiObject2;

    invoke-direct {v1, p0, p1, v0}, Landroidx/test/uiautomator/UiObject2;-><init>(Landroidx/test/uiautomator/UiDevice;Landroidx/test/uiautomator/BySelector;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public findObject(Landroidx/test/uiautomator/UiSelector;)Landroidx/test/uiautomator/UiObject;
    .locals 1
    .param p1, "selector"    # Landroidx/test/uiautomator/UiSelector;

    .line 132
    new-instance v0, Landroidx/test/uiautomator/UiObject;

    invoke-direct {v0, p0, p1}, Landroidx/test/uiautomator/UiObject;-><init>(Landroidx/test/uiautomator/UiDevice;Landroidx/test/uiautomator/UiSelector;)V

    return-object v0
.end method

.method public findObjects(Landroidx/test/uiautomator/BySelector;)Ljava/util/List;
    .locals 4
    .param p1, "selector"    # Landroidx/test/uiautomator/BySelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/uiautomator/BySelector;",
            ")",
            "Ljava/util/List<",
            "Landroidx/test/uiautomator/UiObject2;",
            ">;"
        }
    .end annotation

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Landroidx/test/uiautomator/UiObject2;>;"
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiDevice;->getWindowRoots()[Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-static {p0, p1, v1}, Landroidx/test/uiautomator/ByMatcher;->findMatches(Landroidx/test/uiautomator/UiDevice;Landroidx/test/uiautomator/BySelector;[Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 158
    .local v2, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    new-instance v3, Landroidx/test/uiautomator/UiObject2;

    invoke-direct {v3, p0, p1, v2}, Landroidx/test/uiautomator/UiObject2;-><init>(Landroidx/test/uiautomator/UiDevice;Landroidx/test/uiautomator/BySelector;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    .end local v2    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    goto :goto_0

    .line 161
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-object v0
.end method

.method public freezeRotation()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 797
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 798
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiDevice;->getInteractionController()Landroidx/test/uiautomator/InteractionController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/test/uiautomator/InteractionController;->freezeRotation()V

    .line 799
    return-void
.end method

.method public getCurrentActivityName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 642
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 643
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiDevice;->getQueryController()Landroidx/test/uiautomator/QueryController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/test/uiautomator/QueryController;->getCurrentActivityName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPackageName()Ljava/lang/String;
    .locals 1

    .line 652
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 653
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiDevice;->getQueryController()Landroidx/test/uiautomator/QueryController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/test/uiautomator/QueryController;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayHeight()I
    .locals 3

    .line 537
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 538
    invoke-direct {p0}, Landroidx/test/uiautomator/UiDevice;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 539
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 540
    .local v1, "p":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 541
    iget v2, v1, Landroid/graphics/Point;->y:I

    return v2
.end method

.method public getDisplayRotation()I
    .locals 1

    .line 785
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 786
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiDevice;->waitForIdle()V

    .line 787
    invoke-direct {p0}, Landroidx/test/uiautomator/UiDevice;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    return v0
.end method

.method public getDisplaySizeDp()Landroid/graphics/Point;
    .locals 6

    .line 275
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 276
    invoke-direct {p0}, Landroidx/test/uiautomator/UiDevice;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 277
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 278
    .local v1, "p":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 279
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 280
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 281
    iget v3, v1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v3, v4

    .line 282
    .local v3, "dpx":F
    iget v4, v1, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    iget v5, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v4, v5

    .line 283
    .local v4, "dpy":F
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v1, Landroid/graphics/Point;->x:I

    .line 284
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v1, Landroid/graphics/Point;->y:I

    .line 285
    return-object v1
.end method

.method public getDisplayWidth()I
    .locals 3

    .line 523
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 524
    invoke-direct {p0}, Landroidx/test/uiautomator/UiDevice;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 525
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 526
    .local v1, "p":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 527
    iget v2, v1, Landroid/graphics/Point;->x:I

    return v2
.end method

.method getInstrumentation()Landroid/app/Instrumentation;
    .locals 1

    .line 1123
    iget-object v0, p0, Landroidx/test/uiautomator/UiDevice;->mInstrumentation:Landroid/app/Instrumentation;

    return-object v0
.end method

.method getInteractionController()Landroidx/test/uiautomator/InteractionController;
    .locals 1

    .line 1148
    iget-object v0, p0, Landroidx/test/uiautomator/UiDevice;->mInteractionController:Landroidx/test/uiautomator/InteractionController;

    return-object v0
.end method

.method public getLastTraversedText()Ljava/lang/String;
    .locals 1

    .line 318
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 319
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiDevice;->getQueryController()Landroidx/test/uiautomator/QueryController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/test/uiautomator/QueryController;->getLastTraversedText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLauncherPackageName()Ljava/lang/String;
    .locals 4

    .line 1055
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1056
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1057
    iget-object v1, p0, Landroidx/test/uiautomator/UiDevice;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v1}, Landroid/app/Instrumentation;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1058
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 1059
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object v3
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .line 298
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 299
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    return-object v0
.end method

.method getQueryController()Landroidx/test/uiautomator/QueryController;
    .locals 1

    .line 1144
    iget-object v0, p0, Landroidx/test/uiautomator/UiDevice;->mQueryController:Landroidx/test/uiautomator/QueryController;

    return-object v0
.end method

.method getUiAutomation()Landroid/app/UiAutomation;
    .locals 1

    .line 1140
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiDevice;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/uiautomator/UiDevice;->getUiAutomation(Landroid/app/Instrumentation;)Landroid/app/UiAutomation;

    move-result-object v0

    return-object v0
.end method

.method getWindowRoots()[Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 9

    .line 1096
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiDevice;->waitForIdle()V

    .line 1098
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1102
    .local v0, "roots":Ljava/util/Set;, "Ljava/util/Set<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiDevice;->getUiAutomation()Landroid/app/UiAutomation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/UiAutomation;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 1103
    .local v1, "activeRoot":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v1, :cond_0

    .line 1104
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1108
    :cond_0
    sget v2, Landroidx/test/uiautomator/UiDevice;->API_LEVEL_ACTUAL:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_2

    .line 1109
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiDevice;->getUiAutomation()Landroid/app/UiAutomation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/UiAutomation;->getWindows()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 1110
    .local v3, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->getRoot()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    .line 1111
    .local v4, "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v4, :cond_1

    .line 1112
    sget-object v5, Landroidx/test/uiautomator/UiDevice;->LOG_TAG:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const-string v7, "Skipping null root node for window: %s"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    goto :goto_0

    .line 1116
    :cond_1
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1117
    .end local v3    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v4    # "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    goto :goto_0

    .line 1119
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object v2
.end method

.method public hasAnyWatcherTriggered()Z
    .locals 2

    .line 751
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v1}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 752
    iget-object v1, p0, Landroidx/test/uiautomator/UiDevice;->mWatchersTriggers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasObject(Landroidx/test/uiautomator/BySelector;)Z
    .locals 2
    .param p1, "selector"    # Landroidx/test/uiautomator/BySelector;

    .line 137
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiDevice;->getWindowRoots()[Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroidx/test/uiautomator/ByMatcher;->findMatch(Landroidx/test/uiautomator/UiDevice;Landroidx/test/uiautomator/BySelector;[Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 138
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 140
    const/4 v1, 0x1

    return v1

    .line 142
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public hasWatcherTriggered(Ljava/lang/String;)Z
    .locals 2
    .param p1, "watcherName"    # Ljava/lang/String;

    .line 739
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 740
    iget-object v0, p0, Landroidx/test/uiautomator/UiDevice;->mWatchersTriggers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isInWatcherContext()Z
    .locals 1

    .line 122
    iget-boolean v0, p0, Landroidx/test/uiautomator/UiDevice;->mInWatcherContext:Z

    return v0
.end method

.method public isNaturalOrientation()Z
    .locals 3

    .line 773
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v1}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 774
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiDevice;->waitForIdle()V

    .line 775
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiDevice;->getDisplayRotation()I

    move-result v1

    .line 776
    .local v1, "ret":I
    if-eqz v1, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isScreenOn()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 883
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 884
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiDevice;->getInteractionController()Landroidx/test/uiautomator/InteractionController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/test/uiautomator/InteractionController;->isScreenOn()Z

    move-result v0

    return v0
.end method

.method public openNotification()Z
    .locals 1

    .line 499
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 500
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiDevice;->waitForIdle()V

    .line 501
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiDevice;->getInteractionController()Landroidx/test/uiautomator/InteractionController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/test/uiautomator/InteractionController;->openNotification()Z

    move-result v0

    return v0
.end method

.method public openQuickSettings()Z
    .locals 1

    .line 511
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 512
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiDevice;->waitForIdle()V

    .line 513
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiDevice;->getInteractionController()Landroidx/test/uiautomator/InteractionController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/test/uiautomator/InteractionController;->openQuickSettings()Z

    move-result v0

    return v0
.end method

.method public performActionAndWait(Ljava/lang/Runnable;Landroidx/test/uiautomator/EventCondition;J)Ljava/lang/Object;
    .locals 3
    .param p1, "action"    # Ljava/lang/Runnable;
    .param p3, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "Landroidx/test/uiautomator/EventCondition<",
            "TR;>;J)TR;"
        }
    .end annotation

    .line 187
    .local p2, "condition":Landroidx/test/uiautomator/EventCondition;, "Landroidx/test/uiautomator/EventCondition<TR;>;"
    const/4 v0, 0x0

    .line 189
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    :try_start_0
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiDevice;->getUiAutomation()Landroid/app/UiAutomation;

    move-result-object v1

    new-instance v2, Landroidx/test/uiautomator/UiDevice$EventForwardingFilter;

    invoke-direct {v2, p2}, Landroidx/test/uiautomator/UiDevice$EventForwardingFilter;-><init>(Landroidx/test/uiautomator/EventCondition;)V

    invoke-virtual {v1, p1, v2, p3, p4}, Landroid/app/UiAutomation;->executeAndWaitForEvent(Ljava/lang/Runnable;Landroid/app/UiAutomation$AccessibilityEventFilter;J)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 193
    goto :goto_0

    .line 191
    :catch_0
    move-exception v1

    .line 195
    :goto_0
    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 199
    :cond_0
    invoke-virtual {p2}, Landroidx/test/uiautomator/EventCondition;->getResult()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public pressBack()Z
    .locals 7

    .line 351
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 352
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiDevice;->waitForIdle()V

    .line 353
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiDevice;->getInteractionController()Landroidx/test/uiautomator/InteractionController;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/16 v4, 0x800

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Landroidx/test/uiautomator/InteractionController;->sendKeyAndWaitForEvent(IIIJ)Z

    move-result v0

    return v0
.end method

.method public pressDPadCenter()Z
    .locals 1

    .line 387
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 388
    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Landroidx/test/uiautomator/UiDevice;->pressKeyCode(I)Z

    move-result v0

    return v0
.end method

.method public pressDPadDown()Z
    .locals 1

    .line 397
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 398
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Landroidx/test/uiautomator/UiDevice;->pressKeyCode(I)Z

    move-result v0

    return v0
.end method

.method public pressDPadLeft()Z
    .locals 1

    .line 417
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 418
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Landroidx/test/uiautomator/UiDevice;->pressKeyCode(I)Z

    move-result v0

    return v0
.end method

.method public pressDPadRight()Z
    .locals 1

    .line 427
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 428
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Landroidx/test/uiautomator/UiDevice;->pressKeyCode(I)Z

    move-result v0

    return v0
.end method

.method public pressDPadUp()Z
    .locals 1

    .line 407
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 408
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Landroidx/test/uiautomator/UiDevice;->pressKeyCode(I)Z

    move-result v0

    return v0
.end method

.method public pressDelete()Z
    .locals 1

    .line 437
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 438
    const/16 v0, 0x43

    invoke-virtual {p0, v0}, Landroidx/test/uiautomator/UiDevice;->pressKeyCode(I)Z

    move-result v0

    return v0
.end method

.method public pressEnter()Z
    .locals 1

    .line 447
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 448
    const/16 v0, 0x42

    invoke-virtual {p0, v0}, Landroidx/test/uiautomator/UiDevice;->pressKeyCode(I)Z

    move-result v0

    return v0
.end method

.method public pressHome()Z
    .locals 7

    .line 364
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 365
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiDevice;->waitForIdle()V

    .line 366
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiDevice;->getInteractionController()Landroidx/test/uiautomator/InteractionController;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/16 v4, 0x800

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Landroidx/test/uiautomator/InteractionController;->sendKeyAndWaitForEvent(IIIJ)Z

    move-result v0

    return v0
.end method

.method public pressKeyCode(I)Z
    .locals 3
    .param p1, "keyCode"    # I

    .line 459
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 460
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiDevice;->waitForIdle()V

    .line 461
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiDevice;->getInteractionController()Landroidx/test/uiautomator/InteractionController;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Landroidx/test/uiautomator/InteractionController;->sendKey(II)Z

    move-result v0

    return v0
.end method

.method public pressKeyCode(II)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "metaState"    # I

    .line 474
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 475
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiDevice;->waitForIdle()V

    .line 476
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiDevice;->getInteractionController()Landroidx/test/uiautomator/InteractionController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/test/uiautomator/InteractionController;->sendKey(II)Z

    move-result v0

    return v0
.end method

.method public pressMenu()Z
    .locals 7

    .line 338
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 339
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiDevice;->waitForIdle()V

    .line 340
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiDevice;->getInteractionController()Landroidx/test/uiautomator/InteractionController;

    move-result-object v1

    const/16 v2, 0x52

    const/4 v3, 0x0

    const/16 v4, 0x800

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Landroidx/test/uiautomator/InteractionController;->sendKeyAndWaitForEvent(IIIJ)Z

    move-result v0

    return v0
.end method

.method public pressRecentApps()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 487
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 488
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiDevice;->waitForIdle()V

    .line 489
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiDevice;->getInteractionController()Landroidx/test/uiautomator/InteractionController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/test/uiautomator/InteractionController;->toggleRecentApps()Z

    move-result v0

    return v0
.end method

.method public pressSearch()Z
    .locals 1

    .line 377
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 378
    const/16 v0, 0x54

    invoke-virtual {p0, v0}, Landroidx/test/uiautomator/UiDevice;->pressKeyCode(I)Z

    move-result v0

    return v0
.end method

.method public registerWatcher(Ljava/lang/String;Landroidx/test/uiautomator/UiWatcher;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "watcher"    # Landroidx/test/uiautomator/UiWatcher;

    .line 665
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 666
    iget-boolean v0, p0, Landroidx/test/uiautomator/UiDevice;->mInWatcherContext:Z

    if-nez v0, :cond_0

    .line 669
    iget-object v0, p0, Landroidx/test/uiautomator/UiDevice;->mWatchers:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    return-void

    .line 667
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot register new watcher from within another"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeWatcher(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 680
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 681
    iget-boolean v0, p0, Landroidx/test/uiautomator/UiDevice;->mInWatcherContext:Z

    if-nez v0, :cond_0

    .line 684
    iget-object v0, p0, Landroidx/test/uiautomator/UiDevice;->mWatchers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    return-void

    .line 682
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot remove a watcher from within another"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resetWatcherTriggers()V
    .locals 1

    .line 723
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 724
    iget-object v0, p0, Landroidx/test/uiautomator/UiDevice;->mWatchersTriggers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 725
    return-void
.end method

.method public runWatchers()V
    .locals 8

    .line 693
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v1}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 694
    iget-boolean v1, p0, Landroidx/test/uiautomator/UiDevice;->mInWatcherContext:Z

    if-eqz v1, :cond_0

    .line 695
    return-void

    .line 698
    :cond_0
    iget-object v1, p0, Landroidx/test/uiautomator/UiDevice;->mWatchers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 699
    .local v2, "watcherName":Ljava/lang/String;
    iget-object v3, p0, Landroidx/test/uiautomator/UiDevice;->mWatchers:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/test/uiautomator/UiWatcher;

    .line 700
    .local v3, "watcher":Landroidx/test/uiautomator/UiWatcher;
    if-eqz v3, :cond_2

    .line 702
    const/4 v4, 0x1

    :try_start_0
    iput-boolean v4, p0, Landroidx/test/uiautomator/UiDevice;->mInWatcherContext:Z

    .line 703
    invoke-interface {v3}, Landroidx/test/uiautomator/UiWatcher;->checkForCondition()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 704
    invoke-direct {p0, v2}, Landroidx/test/uiautomator/UiDevice;->setWatcherTriggered(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 709
    :cond_1
    nop

    :goto_1
    iput-boolean v0, p0, Landroidx/test/uiautomator/UiDevice;->mInWatcherContext:Z

    .line 710
    goto :goto_3

    .line 709
    :catchall_0
    move-exception v4

    goto :goto_2

    .line 706
    :catch_0
    move-exception v4

    .line 707
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v5, Landroidx/test/uiautomator/UiDevice;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exceuting watcher: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 709
    nop

    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_1

    :goto_2
    iput-boolean v0, p0, Landroidx/test/uiautomator/UiDevice;->mInWatcherContext:Z

    throw v4

    .line 712
    .end local v2    # "watcherName":Ljava/lang/String;
    .end local v3    # "watcher":Landroidx/test/uiautomator/UiWatcher;
    :cond_2
    :goto_3
    goto :goto_0

    .line 713
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method public setCompressedLayoutHeirarchy(Z)V
    .locals 2
    .param p1, "compressed"    # Z

    .line 230
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiDevice;->getUiAutomation()Landroid/app/UiAutomation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/UiAutomation;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0

    .line 231
    .local v0, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    if-eqz p1, :cond_0

    .line 232
    iget v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v1, v1, -0x3

    iput v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    goto :goto_0

    .line 234
    :cond_0
    iget v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 235
    :goto_0
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiDevice;->getUiAutomation()Landroid/app/UiAutomation;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/UiAutomation;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 236
    return-void
.end method

.method public setOrientationLeft()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 822
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 823
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiDevice;->getInteractionController()Landroidx/test/uiautomator/InteractionController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/test/uiautomator/InteractionController;->setRotationLeft()V

    .line 824
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiDevice;->waitForIdle()V

    .line 825
    return-void
.end method

.method public setOrientationNatural()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 852
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 853
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiDevice;->getInteractionController()Landroidx/test/uiautomator/InteractionController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/test/uiautomator/InteractionController;->setRotationNatural()V

    .line 854
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiDevice;->waitForIdle()V

    .line 855
    return-void
.end method

.method public setOrientationRight()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 837
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 838
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiDevice;->getInteractionController()Landroidx/test/uiautomator/InteractionController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/test/uiautomator/InteractionController;->setRotationRight()V

    .line 839
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiDevice;->waitForIdle()V

    .line 840
    return-void
.end method

.method public sleep()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 895
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 896
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiDevice;->getInteractionController()Landroidx/test/uiautomator/InteractionController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/test/uiautomator/InteractionController;->sleepDevice()Z

    .line 897
    return-void
.end method

.method public swipe(IIIII)Z
    .locals 9
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "endX"    # I
    .param p4, "endY"    # I
    .param p5, "steps"    # I

    .line 574
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 575
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiDevice;->getInteractionController()Landroidx/test/uiautomator/InteractionController;

    move-result-object v3

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-virtual/range {v3 .. v8}, Landroidx/test/uiautomator/InteractionController;->swipe(IIIII)Z

    move-result v0

    return v0
.end method

.method public swipe([Landroid/graphics/Point;I)Z
    .locals 3
    .param p1, "segments"    # [Landroid/graphics/Point;
    .param p2, "segmentSteps"    # I

    .line 610
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 611
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiDevice;->getInteractionController()Landroidx/test/uiautomator/InteractionController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/test/uiautomator/InteractionController;->swipe([Landroid/graphics/Point;I)Z

    move-result v0

    return v0
.end method

.method public takeScreenshot(Ljava/io/File;)Z
    .locals 2
    .param p1, "storePath"    # Ljava/io/File;

    .line 1005
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 1006
    const/high16 v0, 0x3f800000    # 1.0f

    const/16 v1, 0x5a

    invoke-virtual {p0, p1, v0, v1}, Landroidx/test/uiautomator/UiDevice;->takeScreenshot(Ljava/io/File;FI)Z

    move-result v0

    return v0
.end method

.method public takeScreenshot(Ljava/io/File;FI)Z
    .locals 6
    .param p1, "storePath"    # Ljava/io/File;
    .param p2, "scale"    # F
    .param p3, "quality"    # I

    .line 1021
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v2

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 1022
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiDevice;->getUiAutomation()Landroid/app/UiAutomation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/UiAutomation;->takeScreenshot()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1023
    .local v0, "screenshot":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 1024
    return v1

    .line 1026
    :cond_0
    const/4 v2, 0x0

    .line 1028
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v2, v4

    .line 1029
    nop

    .line 1030
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v4, p3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1031
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1037
    nop

    .line 1039
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1042
    goto :goto_0

    .line 1040
    :catch_0
    move-exception v1

    .line 1044
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1045
    nop

    .line 1046
    return v3

    .line 1037
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 1033
    :catch_1
    move-exception v3

    .line 1034
    .local v3, "ioe":Ljava/io/IOException;
    :try_start_2
    sget-object v4, Landroidx/test/uiautomator/UiDevice;->LOG_TAG:Ljava/lang/String;

    const-string v5, "failed to save screen shot to file"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1035
    nop

    .line 1037
    if-eqz v2, :cond_1

    .line 1039
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1042
    goto :goto_1

    .line 1040
    :catch_2
    move-exception v4

    .line 1044
    :cond_1
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return v1

    .line 1037
    .end local v3    # "ioe":Ljava/io/IOException;
    :goto_2
    if-eqz v2, :cond_2

    .line 1039
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1042
    goto :goto_3

    .line 1040
    :catch_3
    move-exception v3

    .line 1044
    :cond_2
    :goto_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    throw v1
.end method

.method public unfreezeRotation()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 808
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 809
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiDevice;->getInteractionController()Landroidx/test/uiautomator/InteractionController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/test/uiautomator/InteractionController;->unfreezeRotation()V

    .line 810
    return-void
.end method

.method public wait(Landroidx/test/uiautomator/SearchCondition;J)Ljava/lang/Object;
    .locals 1
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/test/uiautomator/SearchCondition<",
            "TR;>;J)TR;"
        }
    .end annotation

    .line 174
    .local p1, "condition":Landroidx/test/uiautomator/SearchCondition;, "Landroidx/test/uiautomator/SearchCondition<TR;>;"
    iget-object v0, p0, Landroidx/test/uiautomator/UiDevice;->mWaitMixin:Landroidx/test/uiautomator/WaitMixin;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/test/uiautomator/WaitMixin;->wait(Landroidx/test/uiautomator/Condition;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public waitForIdle()V
    .locals 1

    .line 620
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 621
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiDevice;->getQueryController()Landroidx/test/uiautomator/QueryController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/test/uiautomator/QueryController;->waitForIdle()V

    .line 622
    return-void
.end method

.method public waitForIdle(J)V
    .locals 3
    .param p1, "timeout"    # J

    .line 630
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 631
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiDevice;->getQueryController()Landroidx/test/uiautomator/QueryController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/test/uiautomator/QueryController;->waitForIdle(J)V

    .line 632
    return-void
.end method

.method public waitForWindowUpdate(Ljava/lang/String;J)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "timeout"    # J

    .line 963
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 964
    if-eqz p1, :cond_0

    .line 965
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiDevice;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 966
    return v1

    .line 969
    :cond_0
    new-instance v0, Landroidx/test/uiautomator/UiDevice$1;

    invoke-direct {v0, p0}, Landroidx/test/uiautomator/UiDevice$1;-><init>(Landroidx/test/uiautomator/UiDevice;)V

    .line 974
    .local v0, "emptyRunnable":Ljava/lang/Runnable;
    new-instance v2, Landroidx/test/uiautomator/UiDevice$2;

    invoke-direct {v2, p0, p1}, Landroidx/test/uiautomator/UiDevice$2;-><init>(Landroidx/test/uiautomator/UiDevice;Ljava/lang/String;)V

    .line 984
    .local v2, "checkWindowUpdate":Landroid/app/UiAutomation$AccessibilityEventFilter;
    :try_start_0
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiDevice;->getUiAutomation()Landroid/app/UiAutomation;

    move-result-object v4

    invoke-virtual {v4, v0, v2, p2, p3}, Landroid/app/UiAutomation;->executeAndWaitForEvent(Ljava/lang/Runnable;Landroid/app/UiAutomation$AccessibilityEventFilter;J)Landroid/view/accessibility/AccessibilityEvent;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 990
    nop

    .line 991
    return v3

    .line 987
    :catch_0
    move-exception v3

    .line 988
    .local v3, "e":Ljava/lang/Exception;
    sget-object v4, Landroidx/test/uiautomator/UiDevice;->LOG_TAG:Ljava/lang/String;

    const-string v5, "waitForWindowUpdate: general exception from bridge"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 989
    return v1

    .line 985
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 986
    .local v3, "e":Ljava/util/concurrent/TimeoutException;
    return v1
.end method

.method public wakeUp()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 867
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Landroidx/test/uiautomator/Tracer;->trace([Ljava/lang/Object;)V

    .line 868
    invoke-virtual {p0}, Landroidx/test/uiautomator/UiDevice;->getInteractionController()Landroidx/test/uiautomator/InteractionController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/test/uiautomator/InteractionController;->wakeDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 871
    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 873
    :cond_0
    return-void
.end method
