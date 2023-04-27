.class public Lcom/facebook/react/bridge/ObjectAlreadyConsumedException;
.super Ljava/lang/RuntimeException;
.source "ObjectAlreadyConsumedException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;

    .line 22
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 23
    return-void
.end method
