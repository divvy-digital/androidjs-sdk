.class final Landroidx/test/uiautomator/Until$14;
.super Landroidx/test/uiautomator/UiObject2Condition;
.source "Until.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/uiautomator/Until;->descMatches(Ljava/util/regex/Pattern;)Landroidx/test/uiautomator/UiObject2Condition;
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
.field final synthetic val$regex:Ljava/util/regex/Pattern;


# direct methods
.method constructor <init>(Ljava/util/regex/Pattern;)V
    .locals 0

    .line 221
    iput-object p1, p0, Landroidx/test/uiautomator/Until$14;->val$regex:Ljava/util/regex/Pattern;

    invoke-direct {p0}, Landroidx/test/uiautomator/UiObject2Condition;-><init>()V

    return-void
.end method


# virtual methods
.method apply(Landroidx/test/uiautomator/UiObject2;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "object"    # Landroidx/test/uiautomator/UiObject2;

    .line 224
    invoke-virtual {p1}, Landroidx/test/uiautomator/UiObject2;->getContentDescription()Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "desc":Ljava/lang/String;
    iget-object v1, p0, Landroidx/test/uiautomator/Until$14;->val$regex:Ljava/util/regex/Pattern;

    if-eqz v0, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 221
    check-cast p1, Landroidx/test/uiautomator/UiObject2;

    invoke-virtual {p0, p1}, Landroidx/test/uiautomator/Until$14;->apply(Landroidx/test/uiautomator/UiObject2;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
