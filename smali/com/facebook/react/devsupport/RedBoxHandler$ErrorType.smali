.class public final enum Lcom/facebook/react/devsupport/RedBoxHandler$ErrorType;
.super Ljava/lang/Enum;
.source "RedBoxHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/devsupport/RedBoxHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/react/devsupport/RedBoxHandler$ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/react/devsupport/RedBoxHandler$ErrorType;

.field public static final enum JS:Lcom/facebook/react/devsupport/RedBoxHandler$ErrorType;

.field public static final enum NATIVE:Lcom/facebook/react/devsupport/RedBoxHandler$ErrorType;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 23
    new-instance v0, Lcom/facebook/react/devsupport/RedBoxHandler$ErrorType;

    const-string v1, "JS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/facebook/react/devsupport/RedBoxHandler$ErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/react/devsupport/RedBoxHandler$ErrorType;->JS:Lcom/facebook/react/devsupport/RedBoxHandler$ErrorType;

    .line 24
    new-instance v1, Lcom/facebook/react/devsupport/RedBoxHandler$ErrorType;

    const-string v3, "Native"

    const-string v4, "NATIVE"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v3}, Lcom/facebook/react/devsupport/RedBoxHandler$ErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/facebook/react/devsupport/RedBoxHandler$ErrorType;->NATIVE:Lcom/facebook/react/devsupport/RedBoxHandler$ErrorType;

    .line 22
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/facebook/react/devsupport/RedBoxHandler$ErrorType;

    aput-object v0, v3, v2

    aput-object v1, v3, v5

    sput-object v3, Lcom/facebook/react/devsupport/RedBoxHandler$ErrorType;->$VALUES:[Lcom/facebook/react/devsupport/RedBoxHandler$ErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput-object p3, p0, Lcom/facebook/react/devsupport/RedBoxHandler$ErrorType;->name:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/react/devsupport/RedBoxHandler$ErrorType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 22
    const-class v0, Lcom/facebook/react/devsupport/RedBoxHandler$ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/devsupport/RedBoxHandler$ErrorType;

    return-object v0
.end method

.method public static values()[Lcom/facebook/react/devsupport/RedBoxHandler$ErrorType;
    .locals 1

    .line 22
    sget-object v0, Lcom/facebook/react/devsupport/RedBoxHandler$ErrorType;->$VALUES:[Lcom/facebook/react/devsupport/RedBoxHandler$ErrorType;

    invoke-virtual {v0}, [Lcom/facebook/react/devsupport/RedBoxHandler$ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/react/devsupport/RedBoxHandler$ErrorType;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/facebook/react/devsupport/RedBoxHandler$ErrorType;->name:Ljava/lang/String;

    return-object v0
.end method
