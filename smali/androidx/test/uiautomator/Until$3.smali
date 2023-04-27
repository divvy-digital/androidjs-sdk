.class final Landroidx/test/uiautomator/Until$3;
.super Landroidx/test/uiautomator/SearchCondition;
.source "Until.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/uiautomator/Until;->findObject(Landroidx/test/uiautomator/BySelector;)Landroidx/test/uiautomator/SearchCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/test/uiautomator/SearchCondition<",
        "Landroidx/test/uiautomator/UiObject2;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$selector:Landroidx/test/uiautomator/BySelector;


# direct methods
.method constructor <init>(Landroidx/test/uiautomator/BySelector;)V
    .locals 0

    .line 65
    iput-object p1, p0, Landroidx/test/uiautomator/Until$3;->val$selector:Landroidx/test/uiautomator/BySelector;

    invoke-direct {p0}, Landroidx/test/uiautomator/SearchCondition;-><init>()V

    return-void
.end method


# virtual methods
.method apply(Landroidx/test/uiautomator/Searchable;)Landroidx/test/uiautomator/UiObject2;
    .locals 1
    .param p1, "container"    # Landroidx/test/uiautomator/Searchable;

    .line 68
    iget-object v0, p0, Landroidx/test/uiautomator/Until$3;->val$selector:Landroidx/test/uiautomator/BySelector;

    invoke-interface {p1, v0}, Landroidx/test/uiautomator/Searchable;->findObject(Landroidx/test/uiautomator/BySelector;)Landroidx/test/uiautomator/UiObject2;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 65
    check-cast p1, Landroidx/test/uiautomator/Searchable;

    invoke-virtual {p0, p1}, Landroidx/test/uiautomator/Until$3;->apply(Landroidx/test/uiautomator/Searchable;)Landroidx/test/uiautomator/UiObject2;

    move-result-object p1

    return-object p1
.end method
