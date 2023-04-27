.class Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList$1;
.super Ljava/lang/Object;
.source "ByMatcher.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mNext:Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList$Node<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList;


# direct methods
.method constructor <init>(Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList;)V
    .locals 0

    .line 355
    .local p0, "this":Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList$1;, "Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList.1;"
    iput-object p1, p0, Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList$1;->this$0:Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    invoke-static {p1}, Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList;->access$200(Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList;)Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList$Node;

    move-result-object p1

    iput-object p1, p0, Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList$1;->mNext:Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList$Node;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 360
    .local p0, "this":Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList$1;, "Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList.1;"
    iget-object v0, p0, Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList$1;->mNext:Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 365
    .local p0, "this":Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList$1;, "Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList.1;"
    iget-object v0, p0, Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList$1;->mNext:Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList$Node;

    iget-object v0, v0, Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList$Node;->data:Ljava/lang/Object;

    .line 366
    .local v0, "ret":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList$1;->mNext:Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList$Node;

    iget-object v1, v1, Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList$Node;->next:Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList$Node;

    iput-object v1, p0, Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList$1;->mNext:Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList$Node;

    .line 367
    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 372
    .local p0, "this":Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList$1;, "Landroidx/test/uiautomator/ByMatcher$SinglyLinkedList.1;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
