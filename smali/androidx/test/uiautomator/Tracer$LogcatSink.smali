.class Landroidx/test/uiautomator/Tracer$LogcatSink;
.super Ljava/lang/Object;
.source "Tracer.java"

# interfaces
.implements Landroidx/test/uiautomator/Tracer$TracerSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/uiautomator/Tracer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LogcatSink"
.end annotation


# static fields
.field private static final LOGCAT_TAG:Ljava/lang/String; = "UiAutomatorTrace"


# instance fields
.field final synthetic this$0:Landroidx/test/uiautomator/Tracer;


# direct methods
.method private constructor <init>(Landroidx/test/uiautomator/Tracer;)V
    .locals 0

    .line 81
    iput-object p1, p0, Landroidx/test/uiautomator/Tracer$LogcatSink;->this$0:Landroidx/test/uiautomator/Tracer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/test/uiautomator/Tracer;Landroidx/test/uiautomator/Tracer$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/test/uiautomator/Tracer;
    .param p2, "x1"    # Landroidx/test/uiautomator/Tracer$1;

    .line 81
    invoke-direct {p0, p1}, Landroidx/test/uiautomator/Tracer$LogcatSink;-><init>(Landroidx/test/uiautomator/Tracer;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 91
    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 86
    const-string v0, "UiAutomatorTrace"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void
.end method
