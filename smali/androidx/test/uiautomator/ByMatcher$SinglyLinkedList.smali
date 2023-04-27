.class Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList;
.super Ljava/lang/Object;
.source "ByMatcher.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/uiautomator/ByMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SinglyLinkedList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mHead:Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList$Node<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 342
    .local p0, "this":Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList;, "Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList;-><init>(Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList$Node;)V

    .line 343
    return-void
.end method

.method private constructor <init>(Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList$Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList$Node<",
            "TT;>;)V"
        }
    .end annotation

    .line 345
    .local p0, "this":Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList;, "Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList<TT;>;"
    .local p1, "head":Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList$Node;, "Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList$Node<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    iput-object p1, p0, Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList;->mHead:Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList$Node;

    .line 347
    return-void
.end method

.method static synthetic access$200(Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList;)Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList$Node;
    .locals 1
    .param p0, "x0"    # Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList;

    .line 336
    iget-object v0, p0, Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList;->mHead:Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList$Node;

    return-object v0
.end method

.method public static prepend(Ljava/lang/Object;Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList;)Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList<",
            "TT;>;)",
            "Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList<",
            "TT;>;"
        }
    .end annotation

    .line 351
    .local p0, "data":Ljava/lang/Object;, "TT;"
    .local p1, "rest":Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList;, "Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList<TT;>;"
    new-instance v0, Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList;

    new-instance v1, Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList$Node;

    iget-object v2, p1, Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList;->mHead:Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList$Node;

    invoke-direct {v1, p0, v2}, Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList$Node;-><init>(Ljava/lang/Object;Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList$Node;)V

    invoke-direct {v0, v1}, Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList;-><init>(Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList$Node;)V

    return-object v0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 355
    .local p0, "this":Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList;, "Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList<TT;>;"
    new-instance v0, Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList$1;

    invoke-direct {v0, p0}, Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList$1;-><init>(Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList;)V

    return-object v0
.end method
