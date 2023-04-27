.class final Landroidx/test/uiautomator/Until$16;
.super Landroidx/test/uiautomator/UiObject2Condition;
.source "Until.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/uiautomator/Until;->textNotEquals(Ljava/lang/String;)Landroidx/test/uiautomator/UiObject2Condition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/test/uiautomator/UiObject2Condition<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 291
    iput-object p1, p0, Landroidx/test/uiautomator/Until$16;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Landroidx/test/uiautomator/UiObject2Condition;-><init>()V

    return-void
.end method


# virtual methods
.method apply(Landroidx/test/uiautomator/UiObject2;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "object"    # Landroidx/test/uiautomator/UiObject2;

    .line 294
    iget-object v0, p0, Landroidx/test/uiautomator/Until$16;->val$text:Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/test/uiautomator/UiObject2;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 291
    check-cast p1, Landroidx/test/uiautomator/UiObject2;

    invoke-virtual {p0, p1}, Landroidx/test/uiautomator/Until$16;->apply(Landroidx/test/uiautomator/UiObject2;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
