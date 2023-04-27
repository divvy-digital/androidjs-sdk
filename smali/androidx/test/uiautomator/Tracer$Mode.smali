.class public final enum Landroidx/test/uiautomator/Tracer$Mode;
.super Ljava/lang/Enum;
.source "Tracer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/uiautomator/Tracer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/test/uiautomator/Tracer$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/test/uiautomator/Tracer$Mode;

.field public static final enum ALL:Landroidx/test/uiautomator/Tracer$Mode;

.field public static final enum FILE:Landroidx/test/uiautomator/Tracer$Mode;

.field public static final enum LOGCAT:Landroidx/test/uiautomator/Tracer$Mode;

.field public static final enum NONE:Landroidx/test/uiautomator/Tracer$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 51
    new-instance v0, Landroidx/test/uiautomator/Tracer$Mode;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/test/uiautomator/Tracer$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/uiautomator/Tracer$Mode;->NONE:Landroidx/test/uiautomator/Tracer$Mode;

    .line 52
    new-instance v1, Landroidx/test/uiautomator/Tracer$Mode;

    const-string v3, "FILE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroidx/test/uiautomator/Tracer$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/test/uiautomator/Tracer$Mode;->FILE:Landroidx/test/uiautomator/Tracer$Mode;

    .line 53
    new-instance v3, Landroidx/test/uiautomator/Tracer$Mode;

    const-string v5, "LOGCAT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroidx/test/uiautomator/Tracer$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/test/uiautomator/Tracer$Mode;->LOGCAT:Landroidx/test/uiautomator/Tracer$Mode;

    .line 54
    new-instance v5, Landroidx/test/uiautomator/Tracer$Mode;

    const-string v7, "ALL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroidx/test/uiautomator/Tracer$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroidx/test/uiautomator/Tracer$Mode;->ALL:Landroidx/test/uiautomator/Tracer$Mode;

    .line 50
    const/4 v7, 0x4

    new-array v7, v7, [Landroidx/test/uiautomator/Tracer$Mode;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Landroidx/test/uiautomator/Tracer$Mode;->$VALUES:[Landroidx/test/uiautomator/Tracer$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/test/uiautomator/Tracer$Mode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 50
    const-class v0, Landroidx/test/uiautomator/Tracer$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/test/uiautomator/Tracer$Mode;

    return-object v0
.end method

.method public static values()[Landroidx/test/uiautomator/Tracer$Mode;
    .locals 1

    .line 50
    sget-object v0, Landroidx/test/uiautomator/Tracer$Mode;->$VALUES:[Landroidx/test/uiautomator/Tracer$Mode;

    invoke-virtual {v0}, [Landroidx/test/uiautomator/Tracer$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/test/uiautomator/Tracer$Mode;

    return-object v0
.end method
