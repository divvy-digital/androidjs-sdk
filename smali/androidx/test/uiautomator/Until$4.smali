.class final Landroidx/test/uiautomator/Until$4;
.super Landroidx/test/uiautomator/SearchCondition;
.source "Until.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/uiautomator/Until;->findObjects(Landroidx/test/uiautomator/BySelector;)Landroidx/test/uiautomator/SearchCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/test/uiautomator/SearchCondition<",
        "Ljava/util/List<",
        "Landroidx/test/uiautomator/UiObject2;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$selector:Landroidx/test/uiautomator/BySelector;


# direct methods
.method constructor <init>(Landroidx/test/uiautomator/BySelector;)V
    .locals 0

    .line 78
    iput-object p1, p0, Landroidx/test/uiautomator/Until$4;->val$selector:Landroidx/test/uiautomator/BySelector;

    invoke-direct {p0}, Landroidx/test/uiautomator/SearchCondition;-><init>()V

    return-void
.end method


# virtual methods
.method bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 78
    check-cast p1, Landroidx/test/uiautomator/Searchable;

    invoke-virtual {p0, p1}, Landroidx/test/uiautomator/Until$4;->apply(Landroidx/test/uiautomator/Searchable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method apply(Landroidx/test/uiautomator/Searchable;)Ljava/util/List;
    .locals 2
    .param p1, "container"    # Landroidx/test/uiautomator/Searchable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/uiautomator/Searchable;",
            ")",
            "Ljava/util/List<",
            "Landroidx/test/uiautomator/UiObject2;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Landroidx/test/uiautomator/Until$4;->val$selector:Landroidx/test/uiautomator/BySelector;

    invoke-interface {p1, v0}, Landroidx/test/uiautomator/Searchable;->findObjects(Landroidx/test/uiautomator/BySelector;)Ljava/util/List;

    move-result-object v0

    .line 82
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Landroidx/test/uiautomator/UiObject2;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method
