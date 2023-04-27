.class public final Landroidx/core/os/TraceCompat;
.super Ljava/lang/Object;
.source "TraceCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginSection(Ljava/lang/String;)V
    .locals 0
    .param p0, "sectionName"    # Ljava/lang/String;

    .line 44
    nop

    .line 45
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static endSection()V
    .locals 0

    .line 57
    nop

    .line 58
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 60
    return-void
.end method
