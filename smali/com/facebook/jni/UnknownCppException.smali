.class public Lcom/facebook/jni/UnknownCppException;
.super Lcom/facebook/jni/CppException;
.source "UnknownCppException.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    const-string v0, "Unknown"

    invoke-direct {p0, v0}, Lcom/facebook/jni/CppException;-><init>(Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 21
    invoke-direct {p0, p1}, Lcom/facebook/jni/CppException;-><init>(Ljava/lang/String;)V

    .line 22
    return-void
.end method
