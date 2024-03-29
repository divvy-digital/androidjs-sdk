.class public final Lcom/facebook/common/internal/Objects;
.super Ljava/lang/Object;
.source "Objects.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/common/internal/Objects$ToStringHelper;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "b"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .line 53
    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .line 186
    .local p0, "first":Ljava/lang/Object;, "TT;"
    .local p1, "second":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static varargs hashCode([Ljava/lang/Object;)I
    .locals 1
    .param p0, "objects"    # [Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 74
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private static simpleName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 151
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "name":Ljava/lang/String;
    const-string v1, "\\$[0-9]+"

    const-string v2, "\\$"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 162
    .local v1, "start":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 163
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 165
    :cond_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static toStringHelper(Ljava/lang/Class;)Lcom/facebook/common/internal/Objects$ToStringHelper;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/facebook/common/internal/Objects$ToStringHelper;"
        }
    .end annotation

    .line 131
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/facebook/common/internal/Objects$ToStringHelper;

    invoke-static {p0}, Lcom/facebook/common/internal/Objects;->simpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;-><init>(Ljava/lang/String;Lcom/facebook/common/internal/Objects$1;)V

    return-object v0
.end method

.method public static toStringHelper(Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;
    .locals 3
    .param p0, "self"    # Ljava/lang/Object;

    .line 117
    new-instance v0, Lcom/facebook/common/internal/Objects$ToStringHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/common/internal/Objects;->simpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;-><init>(Ljava/lang/String;Lcom/facebook/common/internal/Objects$1;)V

    return-object v0
.end method

.method public static toStringHelper(Ljava/lang/String;)Lcom/facebook/common/internal/Objects$ToStringHelper;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;

    .line 143
    new-instance v0, Lcom/facebook/common/internal/Objects$ToStringHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/common/internal/Objects$ToStringHelper;-><init>(Ljava/lang/String;Lcom/facebook/common/internal/Objects$1;)V

    return-object v0
.end method
