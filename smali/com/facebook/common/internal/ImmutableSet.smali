.class public Lcom/facebook/common/internal/ImmutableSet;
.super Ljava/util/HashSet;
.source "ImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/HashSet<",
        "TE;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "TE;>;)V"
        }
    .end annotation

    .line 22
    .local p0, "this":Lcom/facebook/common/internal/ImmutableSet;, "Lcom/facebook/common/internal/ImmutableSet<TE;>;"
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 23
    return-void
.end method

.method public static copyOf(Ljava/util/Set;)Lcom/facebook/common/internal/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TE;>;)",
            "Lcom/facebook/common/internal/ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .line 26
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    new-instance v0, Lcom/facebook/common/internal/ImmutableSet;

    invoke-direct {v0, p0}, Lcom/facebook/common/internal/ImmutableSet;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method public static varargs of([Ljava/lang/Object;)Lcom/facebook/common/internal/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lcom/facebook/common/internal/ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .line 30
    .local p0, "elements":[Ljava/lang/Object;, "[TE;"
    new-instance v0, Ljava/util/HashSet;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 31
    .local v0, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 32
    new-instance v1, Lcom/facebook/common/internal/ImmutableSet;

    invoke-direct {v1, v0}, Lcom/facebook/common/internal/ImmutableSet;-><init>(Ljava/util/Set;)V

    return-object v1
.end method
