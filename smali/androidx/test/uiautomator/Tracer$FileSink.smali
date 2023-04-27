.class Landroidx/test/uiautomator/Tracer$FileSink;
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
    name = "FileSink"
.end annotation


# instance fields
.field private mDateFormat:Ljava/text/SimpleDateFormat;

.field private mOut:Ljava/io/PrintWriter;

.field final synthetic this$0:Landroidx/test/uiautomator/Tracer;


# direct methods
.method public constructor <init>(Landroidx/test/uiautomator/Tracer;Ljava/io/File;)V
    .locals 2
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 67
    iput-object p1, p0, Landroidx/test/uiautomator/Tracer$FileSink;->this$0:Landroidx/test/uiautomator/Tracer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance p1, Ljava/io/PrintWriter;

    invoke-direct {p1, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V

    iput-object p1, p0, Landroidx/test/uiautomator/Tracer$FileSink;->mOut:Ljava/io/PrintWriter;

    .line 69
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p1, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p1, p0, Landroidx/test/uiautomator/Tracer$FileSink;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 70
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 77
    iget-object v0, p0, Landroidx/test/uiautomator/Tracer$FileSink;->mOut:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 78
    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .line 73
    iget-object v0, p0, Landroidx/test/uiautomator/Tracer$FileSink;->mOut:Ljava/io/PrintWriter;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Landroidx/test/uiautomator/Tracer$FileSink;->mDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string v2, "%s %s\n"

    invoke-virtual {v0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 74
    return-void
.end method
