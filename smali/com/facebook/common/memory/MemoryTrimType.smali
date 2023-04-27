.class public final enum Lcom/facebook/common/memory/MemoryTrimType;
.super Ljava/lang/Enum;
.source "MemoryTrimType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/common/memory/MemoryTrimType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/common/memory/MemoryTrimType;

.field public static final enum OnAppBackgrounded:Lcom/facebook/common/memory/MemoryTrimType;

.field public static final enum OnCloseToDalvikHeapLimit:Lcom/facebook/common/memory/MemoryTrimType;

.field public static final enum OnSystemLowMemoryWhileAppInBackground:Lcom/facebook/common/memory/MemoryTrimType;

.field public static final enum OnSystemLowMemoryWhileAppInForeground:Lcom/facebook/common/memory/MemoryTrimType;


# instance fields
.field private mSuggestedTrimRatio:D


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 20
    new-instance v0, Lcom/facebook/common/memory/MemoryTrimType;

    const-string v1, "OnCloseToDalvikHeapLimit"

    const/4 v2, 0x0

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/common/memory/MemoryTrimType;-><init>(Ljava/lang/String;ID)V

    sput-object v0, Lcom/facebook/common/memory/MemoryTrimType;->OnCloseToDalvikHeapLimit:Lcom/facebook/common/memory/MemoryTrimType;

    .line 23
    new-instance v1, Lcom/facebook/common/memory/MemoryTrimType;

    const-string v5, "OnSystemLowMemoryWhileAppInForeground"

    const/4 v6, 0x1

    invoke-direct {v1, v5, v6, v3, v4}, Lcom/facebook/common/memory/MemoryTrimType;-><init>(Ljava/lang/String;ID)V

    sput-object v1, Lcom/facebook/common/memory/MemoryTrimType;->OnSystemLowMemoryWhileAppInForeground:Lcom/facebook/common/memory/MemoryTrimType;

    .line 26
    new-instance v3, Lcom/facebook/common/memory/MemoryTrimType;

    const-string v4, "OnSystemLowMemoryWhileAppInBackground"

    const/4 v5, 0x2

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    invoke-direct {v3, v4, v5, v7, v8}, Lcom/facebook/common/memory/MemoryTrimType;-><init>(Ljava/lang/String;ID)V

    sput-object v3, Lcom/facebook/common/memory/MemoryTrimType;->OnSystemLowMemoryWhileAppInBackground:Lcom/facebook/common/memory/MemoryTrimType;

    .line 29
    new-instance v4, Lcom/facebook/common/memory/MemoryTrimType;

    const-string v9, "OnAppBackgrounded"

    const/4 v10, 0x3

    invoke-direct {v4, v9, v10, v7, v8}, Lcom/facebook/common/memory/MemoryTrimType;-><init>(Ljava/lang/String;ID)V

    sput-object v4, Lcom/facebook/common/memory/MemoryTrimType;->OnAppBackgrounded:Lcom/facebook/common/memory/MemoryTrimType;

    .line 17
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/facebook/common/memory/MemoryTrimType;

    aput-object v0, v7, v2

    aput-object v1, v7, v6

    aput-object v3, v7, v5

    aput-object v4, v7, v10

    sput-object v7, Lcom/facebook/common/memory/MemoryTrimType;->$VALUES:[Lcom/facebook/common/memory/MemoryTrimType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ID)V
    .locals 0
    .param p3, "suggestedTrimRatio"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput-wide p3, p0, Lcom/facebook/common/memory/MemoryTrimType;->mSuggestedTrimRatio:D

    .line 35
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/common/memory/MemoryTrimType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 17
    const-class v0, Lcom/facebook/common/memory/MemoryTrimType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/memory/MemoryTrimType;

    return-object v0
.end method

.method public static values()[Lcom/facebook/common/memory/MemoryTrimType;
    .locals 1

    .line 17
    sget-object v0, Lcom/facebook/common/memory/MemoryTrimType;->$VALUES:[Lcom/facebook/common/memory/MemoryTrimType;

    invoke-virtual {v0}, [Lcom/facebook/common/memory/MemoryTrimType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/common/memory/MemoryTrimType;

    return-object v0
.end method


# virtual methods
.method public getSuggestedTrimRatio()D
    .locals 2

    .line 39
    iget-wide v0, p0, Lcom/facebook/common/memory/MemoryTrimType;->mSuggestedTrimRatio:D

    return-wide v0
.end method
