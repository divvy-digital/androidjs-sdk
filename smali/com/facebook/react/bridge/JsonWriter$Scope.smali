.class final enum Lcom/facebook/react/bridge/JsonWriter$Scope;
.super Ljava/lang/Enum;
.source "JsonWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/bridge/JsonWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Scope"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/react/bridge/JsonWriter$Scope;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/react/bridge/JsonWriter$Scope;

.field public static final enum ARRAY:Lcom/facebook/react/bridge/JsonWriter$Scope;

.field public static final enum EMPTY_ARRAY:Lcom/facebook/react/bridge/JsonWriter$Scope;

.field public static final enum EMPTY_OBJECT:Lcom/facebook/react/bridge/JsonWriter$Scope;

.field public static final enum OBJECT:Lcom/facebook/react/bridge/JsonWriter$Scope;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 211
    new-instance v0, Lcom/facebook/react/bridge/JsonWriter$Scope;

    const-string v1, "EMPTY_OBJECT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/react/bridge/JsonWriter$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/react/bridge/JsonWriter$Scope;->EMPTY_OBJECT:Lcom/facebook/react/bridge/JsonWriter$Scope;

    .line 212
    new-instance v1, Lcom/facebook/react/bridge/JsonWriter$Scope;

    const-string v3, "OBJECT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/facebook/react/bridge/JsonWriter$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/facebook/react/bridge/JsonWriter$Scope;->OBJECT:Lcom/facebook/react/bridge/JsonWriter$Scope;

    .line 213
    new-instance v3, Lcom/facebook/react/bridge/JsonWriter$Scope;

    const-string v5, "EMPTY_ARRAY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/facebook/react/bridge/JsonWriter$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/facebook/react/bridge/JsonWriter$Scope;->EMPTY_ARRAY:Lcom/facebook/react/bridge/JsonWriter$Scope;

    .line 214
    new-instance v5, Lcom/facebook/react/bridge/JsonWriter$Scope;

    const-string v7, "ARRAY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/facebook/react/bridge/JsonWriter$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/facebook/react/bridge/JsonWriter$Scope;->ARRAY:Lcom/facebook/react/bridge/JsonWriter$Scope;

    .line 210
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/facebook/react/bridge/JsonWriter$Scope;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/facebook/react/bridge/JsonWriter$Scope;->$VALUES:[Lcom/facebook/react/bridge/JsonWriter$Scope;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 210
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/react/bridge/JsonWriter$Scope;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 210
    const-class v0, Lcom/facebook/react/bridge/JsonWriter$Scope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/JsonWriter$Scope;

    return-object v0
.end method

.method public static values()[Lcom/facebook/react/bridge/JsonWriter$Scope;
    .locals 1

    .line 210
    sget-object v0, Lcom/facebook/react/bridge/JsonWriter$Scope;->$VALUES:[Lcom/facebook/react/bridge/JsonWriter$Scope;

    invoke-virtual {v0}, [Lcom/facebook/react/bridge/JsonWriter$Scope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/react/bridge/JsonWriter$Scope;

    return-object v0
.end method
