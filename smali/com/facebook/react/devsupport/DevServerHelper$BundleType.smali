.class final enum Lcom/facebook/react/devsupport/DevServerHelper$BundleType;
.super Ljava/lang/Enum;
.source "DevServerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/devsupport/DevServerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "BundleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/react/devsupport/DevServerHelper$BundleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/react/devsupport/DevServerHelper$BundleType;

.field public static final enum BUNDLE:Lcom/facebook/react/devsupport/DevServerHelper$BundleType;

.field public static final enum DELTA:Lcom/facebook/react/devsupport/DevServerHelper$BundleType;

.field public static final enum MAP:Lcom/facebook/react/devsupport/DevServerHelper$BundleType;


# instance fields
.field private final mTypeID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 99
    new-instance v0, Lcom/facebook/react/devsupport/DevServerHelper$BundleType;

    const-string v1, "bundle"

    const-string v2, "BUNDLE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/facebook/react/devsupport/DevServerHelper$BundleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/react/devsupport/DevServerHelper$BundleType;->BUNDLE:Lcom/facebook/react/devsupport/DevServerHelper$BundleType;

    .line 100
    new-instance v1, Lcom/facebook/react/devsupport/DevServerHelper$BundleType;

    const-string v2, "delta"

    const-string v4, "DELTA"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/facebook/react/devsupport/DevServerHelper$BundleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/facebook/react/devsupport/DevServerHelper$BundleType;->DELTA:Lcom/facebook/react/devsupport/DevServerHelper$BundleType;

    .line 101
    new-instance v2, Lcom/facebook/react/devsupport/DevServerHelper$BundleType;

    const-string v4, "map"

    const-string v6, "MAP"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/facebook/react/devsupport/DevServerHelper$BundleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/facebook/react/devsupport/DevServerHelper$BundleType;->MAP:Lcom/facebook/react/devsupport/DevServerHelper$BundleType;

    .line 98
    const/4 v4, 0x3

    new-array v4, v4, [Lcom/facebook/react/devsupport/DevServerHelper$BundleType;

    aput-object v0, v4, v3

    aput-object v1, v4, v5

    aput-object v2, v4, v7

    sput-object v4, Lcom/facebook/react/devsupport/DevServerHelper$BundleType;->$VALUES:[Lcom/facebook/react/devsupport/DevServerHelper$BundleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "typeID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 106
    iput-object p3, p0, Lcom/facebook/react/devsupport/DevServerHelper$BundleType;->mTypeID:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/react/devsupport/DevServerHelper$BundleType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 98
    const-class v0, Lcom/facebook/react/devsupport/DevServerHelper$BundleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/devsupport/DevServerHelper$BundleType;

    return-object v0
.end method

.method public static values()[Lcom/facebook/react/devsupport/DevServerHelper$BundleType;
    .locals 1

    .line 98
    sget-object v0, Lcom/facebook/react/devsupport/DevServerHelper$BundleType;->$VALUES:[Lcom/facebook/react/devsupport/DevServerHelper$BundleType;

    invoke-virtual {v0}, [Lcom/facebook/react/devsupport/DevServerHelper$BundleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/react/devsupport/DevServerHelper$BundleType;

    return-object v0
.end method


# virtual methods
.method public typeID()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevServerHelper$BundleType;->mTypeID:Ljava/lang/String;

    return-object v0
.end method
