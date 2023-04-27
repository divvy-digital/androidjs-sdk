.class public final enum Landroidx/test/uiautomator/Direction;
.super Ljava/lang/Enum;
.source "Direction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/test/uiautomator/Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/test/uiautomator/Direction;

.field public static final enum DOWN:Landroidx/test/uiautomator/Direction;

.field public static final enum LEFT:Landroidx/test/uiautomator/Direction;

.field public static final enum RIGHT:Landroidx/test/uiautomator/Direction;

.field public static final enum UP:Landroidx/test/uiautomator/Direction;


# instance fields
.field private mOpposite:Landroidx/test/uiautomator/Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 21
    new-instance v0, Landroidx/test/uiautomator/Direction;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/test/uiautomator/Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/uiautomator/Direction;->LEFT:Landroidx/test/uiautomator/Direction;

    new-instance v1, Landroidx/test/uiautomator/Direction;

    const-string v3, "RIGHT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroidx/test/uiautomator/Direction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/test/uiautomator/Direction;->RIGHT:Landroidx/test/uiautomator/Direction;

    new-instance v3, Landroidx/test/uiautomator/Direction;

    const-string v5, "UP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroidx/test/uiautomator/Direction;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/test/uiautomator/Direction;->UP:Landroidx/test/uiautomator/Direction;

    new-instance v5, Landroidx/test/uiautomator/Direction;

    const-string v7, "DOWN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroidx/test/uiautomator/Direction;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroidx/test/uiautomator/Direction;->DOWN:Landroidx/test/uiautomator/Direction;

    .line 20
    const/4 v7, 0x4

    new-array v7, v7, [Landroidx/test/uiautomator/Direction;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Landroidx/test/uiautomator/Direction;->$VALUES:[Landroidx/test/uiautomator/Direction;

    .line 25
    iput-object v1, v0, Landroidx/test/uiautomator/Direction;->mOpposite:Landroidx/test/uiautomator/Direction;

    .line 26
    iput-object v0, v1, Landroidx/test/uiautomator/Direction;->mOpposite:Landroidx/test/uiautomator/Direction;

    .line 27
    iput-object v5, v3, Landroidx/test/uiautomator/Direction;->mOpposite:Landroidx/test/uiautomator/Direction;

    .line 28
    iput-object v3, v5, Landroidx/test/uiautomator/Direction;->mOpposite:Landroidx/test/uiautomator/Direction;

    .line 29
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static reverse(Landroidx/test/uiautomator/Direction;)Landroidx/test/uiautomator/Direction;
    .locals 1
    .param p0, "direction"    # Landroidx/test/uiautomator/Direction;

    .line 33
    iget-object v0, p0, Landroidx/test/uiautomator/Direction;->mOpposite:Landroidx/test/uiautomator/Direction;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/test/uiautomator/Direction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 20
    const-class v0, Landroidx/test/uiautomator/Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/test/uiautomator/Direction;

    return-object v0
.end method

.method public static values()[Landroidx/test/uiautomator/Direction;
    .locals 1

    .line 20
    sget-object v0, Landroidx/test/uiautomator/Direction;->$VALUES:[Landroidx/test/uiautomator/Direction;

    invoke-virtual {v0}, [Landroidx/test/uiautomator/Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/test/uiautomator/Direction;

    return-object v0
.end method
