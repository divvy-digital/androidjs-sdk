.class public Landroidx/test/uiautomator/Tracer;
.super Ljava/lang/Object;
.source "Tracer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/uiautomator/Tracer$LogcatSink;,
        Landroidx/test/uiautomator/Tracer$FileSink;,
        Landroidx/test/uiautomator/Tracer$TracerSink;,
        Landroidx/test/uiautomator/Tracer$Mode;
    }
.end annotation


# static fields
.field private static final CALLER_LOCATION:I = 0x6

.field private static final METHOD_TO_TRACE_LOCATION:I = 0x5

.field private static final MIN_STACK_TRACE_LENGTH:I = 0x7

.field private static final UIAUTOMATOR_PACKAGE:Ljava/lang/String; = "androidx.test.uiautomator"

.field private static final UNKNOWN_METHOD_STRING:Ljava/lang/String; = "(unknown method)"

.field private static mInstance:Landroidx/test/uiautomator/Tracer;


# instance fields
.field private mCurrentMode:Landroidx/test/uiautomator/Tracer$Mode;

.field private mOutputFile:Ljava/io/File;

.field private mSinks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/test/uiautomator/Tracer$TracerSink;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 98
    const/4 v0, 0x0

    sput-object v0, Landroidx/test/uiautomator/Tracer;->mInstance:Landroidx/test/uiautomator/Tracer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    sget-object v0, Landroidx/test/uiautomator/Tracer$Mode;->NONE:Landroidx/test/uiautomator/Tracer$Mode;

    iput-object v0, p0, Landroidx/test/uiautomator/Tracer;->mCurrentMode:Landroidx/test/uiautomator/Tracer$Mode;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/test/uiautomator/Tracer;->mSinks:Ljava/util/List;

    return-void
.end method

.method private closeSinks()V
    .locals 2

    .line 151
    iget-object v0, p0, Landroidx/test/uiautomator/Tracer;->mSinks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/test/uiautomator/Tracer$TracerSink;

    .line 152
    .local v1, "sink":Landroidx/test/uiautomator/Tracer$TracerSink;
    invoke-interface {v1}, Landroidx/test/uiautomator/Tracer$TracerSink;->close()V

    .line 153
    .end local v1    # "sink":Landroidx/test/uiautomator/Tracer$TracerSink;
    goto :goto_0

    .line 154
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v0, p0, Landroidx/test/uiautomator/Tracer;->mSinks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 155
    return-void
.end method

.method private doTrace([Ljava/lang/Object;)V
    .locals 4
    .param p1, "arguments"    # [Ljava/lang/Object;

    .line 168
    iget-object v0, p0, Landroidx/test/uiautomator/Tracer;->mCurrentMode:Landroidx/test/uiautomator/Tracer$Mode;

    sget-object v1, Landroidx/test/uiautomator/Tracer$Mode;->NONE:Landroidx/test/uiautomator/Tracer$Mode;

    if-ne v0, v1, :cond_0

    .line 169
    return-void

    .line 172
    :cond_0
    invoke-static {}, Landroidx/test/uiautomator/Tracer;->getCaller()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "caller":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 174
    return-void

    .line 177
    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v2, ", "

    invoke-static {v2, p1}, Landroidx/test/uiautomator/Tracer;->join(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "%s (%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroidx/test/uiautomator/Tracer;->log(Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method private static getCaller()Ljava/lang/String;
    .locals 8

    .line 260
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 261
    .local v0, "stackTrace":[Ljava/lang/StackTraceElement;
    array-length v1, v0

    const/4 v2, 0x7

    const-string v3, "(unknown method)"

    if-ge v1, v2, :cond_0

    .line 262
    return-object v3

    .line 265
    :cond_0
    const/4 v1, 0x5

    aget-object v2, v0, v1

    .line 266
    .local v2, "caller":Ljava/lang/StackTraceElement;
    const/4 v4, 0x6

    aget-object v4, v0, v4

    .line 268
    .local v4, "previousCaller":Ljava/lang/StackTraceElement;
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "androidx.test.uiautomator"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 269
    const/4 v1, 0x0

    return-object v1

    .line 272
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 273
    .local v5, "indexOfDot":I
    if-gez v5, :cond_2

    .line 274
    const/4 v5, 0x0

    .line 277
    :cond_2
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v6, v7, :cond_3

    .line 278
    return-object v3

    .line 281
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 282
    .local v3, "shortClassName":Ljava/lang/String;
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v1, v6

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v1, v7

    const/4 v6, 0x2

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v6

    const/4 v6, 0x3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v6

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x4

    aput-object v6, v1, v7

    const-string v6, "%s.%s from %s() at %s:%d"

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance()Landroidx/test/uiautomator/Tracer;
    .locals 1

    .line 107
    sget-object v0, Landroidx/test/uiautomator/Tracer;->mInstance:Landroidx/test/uiautomator/Tracer;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Landroidx/test/uiautomator/Tracer;

    invoke-direct {v0}, Landroidx/test/uiautomator/Tracer;-><init>()V

    sput-object v0, Landroidx/test/uiautomator/Tracer;->mInstance:Landroidx/test/uiautomator/Tracer;

    .line 110
    :cond_0
    sget-object v0, Landroidx/test/uiautomator/Tracer;->mInstance:Landroidx/test/uiautomator/Tracer;

    return-object v0
.end method

.method private static join(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "separator"    # Ljava/lang/String;
    .param p1, "strings"    # [Ljava/lang/Object;

    .line 215
    array-length v0, p1

    if-nez v0, :cond_0

    .line 216
    const-string v0, ""

    return-object v0

    .line 218
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v1}, Landroidx/test/uiautomator/Tracer;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 219
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 220
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    aget-object v2, p1, v1

    invoke-static {v2}, Landroidx/test/uiautomator/Tracer;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 223
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private log(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 181
    iget-object v0, p0, Landroidx/test/uiautomator/Tracer;->mSinks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/test/uiautomator/Tracer$TracerSink;

    .line 182
    .local v1, "sink":Landroidx/test/uiautomator/Tracer$TracerSink;
    invoke-interface {v1, p1}, Landroidx/test/uiautomator/Tracer$TracerSink;->log(Ljava/lang/String;)V

    .line 183
    .end local v1    # "sink":Landroidx/test/uiautomator/Tracer$TracerSink;
    goto :goto_0

    .line 184
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private static objectToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .line 239
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 241
    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 243
    :cond_0
    const-string v0, "[...]"

    return-object v0

    .line 246
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs trace([Ljava/lang/Object;)V
    .locals 1
    .param p0, "arguments"    # [Ljava/lang/Object;

    .line 211
    invoke-static {}, Landroidx/test/uiautomator/Tracer;->getInstance()Landroidx/test/uiautomator/Tracer;

    move-result-object v0

    invoke-direct {v0, p0}, Landroidx/test/uiautomator/Tracer;->doTrace([Ljava/lang/Object;)V

    .line 212
    return-void
.end method


# virtual methods
.method public isTracingEnabled()Z
    .locals 2

    .line 191
    iget-object v0, p0, Landroidx/test/uiautomator/Tracer;->mCurrentMode:Landroidx/test/uiautomator/Tracer$Mode;

    sget-object v1, Landroidx/test/uiautomator/Tracer$Mode;->NONE:Landroidx/test/uiautomator/Tracer$Mode;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setOutputFilename(Ljava/lang/String;)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;

    .line 164
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/test/uiautomator/Tracer;->mOutputFile:Ljava/io/File;

    .line 165
    return-void
.end method

.method public setOutputMode(Landroidx/test/uiautomator/Tracer$Mode;)V
    .locals 4
    .param p1, "mode"    # Landroidx/test/uiautomator/Tracer$Mode;

    .line 120
    invoke-direct {p0}, Landroidx/test/uiautomator/Tracer;->closeSinks()V

    .line 121
    iput-object p1, p0, Landroidx/test/uiautomator/Tracer;->mCurrentMode:Landroidx/test/uiautomator/Tracer$Mode;

    .line 123
    :try_start_0
    sget-object v0, Landroidx/test/uiautomator/Tracer$1;->$SwitchMap$android$support$test$uiautomator$Tracer$Mode:[I

    invoke-virtual {p1}, Landroidx/test/uiautomator/Tracer$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "Please provide a filename before attempting write trace to a file"

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 135
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Landroidx/test/uiautomator/Tracer;->mSinks:Ljava/util/List;

    new-instance v3, Landroidx/test/uiautomator/Tracer$LogcatSink;

    invoke-direct {v3, p0, v2}, Landroidx/test/uiautomator/Tracer$LogcatSink;-><init>(Landroidx/test/uiautomator/Tracer;Landroidx/test/uiautomator/Tracer$1;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v0, p0, Landroidx/test/uiautomator/Tracer;->mOutputFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 140
    iget-object v1, p0, Landroidx/test/uiautomator/Tracer;->mSinks:Ljava/util/List;

    new-instance v2, Landroidx/test/uiautomator/Tracer$FileSink;

    invoke-direct {v2, p0, v0}, Landroidx/test/uiautomator/Tracer$FileSink;-><init>(Landroidx/test/uiautomator/Tracer;Ljava/io/File;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    goto :goto_0

    .line 137
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "mode":Landroidx/test/uiautomator/Tracer$Mode;
    throw v0

    .line 132
    .restart local p1    # "mode":Landroidx/test/uiautomator/Tracer$Mode;
    :pswitch_1
    iget-object v0, p0, Landroidx/test/uiautomator/Tracer;->mSinks:Ljava/util/List;

    new-instance v1, Landroidx/test/uiautomator/Tracer$LogcatSink;

    invoke-direct {v1, p0, v2}, Landroidx/test/uiautomator/Tracer$LogcatSink;-><init>(Landroidx/test/uiautomator/Tracer;Landroidx/test/uiautomator/Tracer$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    goto :goto_0

    .line 125
    :pswitch_2
    iget-object v0, p0, Landroidx/test/uiautomator/Tracer;->mOutputFile:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 129
    iget-object v1, p0, Landroidx/test/uiautomator/Tracer;->mSinks:Ljava/util/List;

    new-instance v2, Landroidx/test/uiautomator/Tracer$FileSink;

    invoke-direct {v2, p0, v0}, Landroidx/test/uiautomator/Tracer$FileSink;-><init>(Landroidx/test/uiautomator/Tracer;Ljava/io/File;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    goto :goto_0

    .line 126
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "mode":Landroidx/test/uiautomator/Tracer$Mode;
    throw v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 147
    .restart local p1    # "mode":Landroidx/test/uiautomator/Tracer$Mode;
    :goto_0
    goto :goto_1

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not open log file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Tracer"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
