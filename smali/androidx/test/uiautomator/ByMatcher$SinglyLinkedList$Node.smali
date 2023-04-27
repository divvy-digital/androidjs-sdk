.class Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList$Node;
.super Ljava/lang/Object;
.source "ByMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final next:Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList$Node<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList$Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList$Node<",
            "TT;>;)V"
        }
    .end annotation

    .line 381
    .local p0, "this":Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList$Node;, "Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList$Node<TT;>;"
    .local p1, "d":Ljava/lang/Object;, "TT;"
    .local p2, "n":Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList$Node;, "Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList$Node<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    iput-object p1, p0, Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList$Node;->data:Ljava/lang/Object;

    .line 383
    iput-object p2, p0, Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList$Node;->next:Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList$Node;

    .line 384
    return-void
.end method
