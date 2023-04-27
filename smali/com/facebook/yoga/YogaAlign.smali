.class public final enum Lcom/facebook/yoga/YogaAlign;
.super Ljava/lang/Enum;
.source "YogaAlign.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/yoga/YogaAlign;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/yoga/YogaAlign;

.field public static final enum AUTO:Lcom/facebook/yoga/YogaAlign;

.field public static final enum BASELINE:Lcom/facebook/yoga/YogaAlign;

.field public static final enum CENTER:Lcom/facebook/yoga/YogaAlign;

.field public static final enum FLEX_END:Lcom/facebook/yoga/YogaAlign;

.field public static final enum FLEX_START:Lcom/facebook/yoga/YogaAlign;

.field public static final enum SPACE_AROUND:Lcom/facebook/yoga/YogaAlign;

.field public static final enum SPACE_BETWEEN:Lcom/facebook/yoga/YogaAlign;

.field public static final enum STRETCH:Lcom/facebook/yoga/YogaAlign;


# instance fields
.field private final mIntValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 14
    new-instance v0, Lcom/facebook/yoga/YogaAlign;

    const-string v1, "AUTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/facebook/yoga/YogaAlign;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/yoga/YogaAlign;->AUTO:Lcom/facebook/yoga/YogaAlign;

    .line 15
    new-instance v1, Lcom/facebook/yoga/YogaAlign;

    const-string v3, "FLEX_START"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/facebook/yoga/YogaAlign;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/facebook/yoga/YogaAlign;->FLEX_START:Lcom/facebook/yoga/YogaAlign;

    .line 16
    new-instance v3, Lcom/facebook/yoga/YogaAlign;

    const-string v5, "CENTER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/facebook/yoga/YogaAlign;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/facebook/yoga/YogaAlign;->CENTER:Lcom/facebook/yoga/YogaAlign;

    .line 17
    new-instance v5, Lcom/facebook/yoga/YogaAlign;

    const-string v7, "FLEX_END"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/facebook/yoga/YogaAlign;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/facebook/yoga/YogaAlign;->FLEX_END:Lcom/facebook/yoga/YogaAlign;

    .line 18
    new-instance v7, Lcom/facebook/yoga/YogaAlign;

    const-string v9, "STRETCH"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/facebook/yoga/YogaAlign;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/facebook/yoga/YogaAlign;->STRETCH:Lcom/facebook/yoga/YogaAlign;

    .line 19
    new-instance v9, Lcom/facebook/yoga/YogaAlign;

    const-string v11, "BASELINE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/facebook/yoga/YogaAlign;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/facebook/yoga/YogaAlign;->BASELINE:Lcom/facebook/yoga/YogaAlign;

    .line 20
    new-instance v11, Lcom/facebook/yoga/YogaAlign;

    const-string v13, "SPACE_BETWEEN"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/facebook/yoga/YogaAlign;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/facebook/yoga/YogaAlign;->SPACE_BETWEEN:Lcom/facebook/yoga/YogaAlign;

    .line 21
    new-instance v13, Lcom/facebook/yoga/YogaAlign;

    const-string v15, "SPACE_AROUND"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/facebook/yoga/YogaAlign;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/facebook/yoga/YogaAlign;->SPACE_AROUND:Lcom/facebook/yoga/YogaAlign;

    .line 12
    const/16 v15, 0x8

    new-array v15, v15, [Lcom/facebook/yoga/YogaAlign;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lcom/facebook/yoga/YogaAlign;->$VALUES:[Lcom/facebook/yoga/YogaAlign;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "intValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput p3, p0, Lcom/facebook/yoga/YogaAlign;->mIntValue:I

    .line 27
    return-void
.end method

.method public static fromInt(I)Lcom/facebook/yoga/YogaAlign;
    .locals 3
    .param p0, "value"    # I

    .line 34
    packed-switch p0, :pswitch_data_0

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown enum value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :pswitch_0
    sget-object v0, Lcom/facebook/yoga/YogaAlign;->SPACE_AROUND:Lcom/facebook/yoga/YogaAlign;

    return-object v0

    .line 41
    :pswitch_1
    sget-object v0, Lcom/facebook/yoga/YogaAlign;->SPACE_BETWEEN:Lcom/facebook/yoga/YogaAlign;

    return-object v0

    .line 40
    :pswitch_2
    sget-object v0, Lcom/facebook/yoga/YogaAlign;->BASELINE:Lcom/facebook/yoga/YogaAlign;

    return-object v0

    .line 39
    :pswitch_3
    sget-object v0, Lcom/facebook/yoga/YogaAlign;->STRETCH:Lcom/facebook/yoga/YogaAlign;

    return-object v0

    .line 38
    :pswitch_4
    sget-object v0, Lcom/facebook/yoga/YogaAlign;->FLEX_END:Lcom/facebook/yoga/YogaAlign;

    return-object v0

    .line 37
    :pswitch_5
    sget-object v0, Lcom/facebook/yoga/YogaAlign;->CENTER:Lcom/facebook/yoga/YogaAlign;

    return-object v0

    .line 36
    :pswitch_6
    sget-object v0, Lcom/facebook/yoga/YogaAlign;->FLEX_START:Lcom/facebook/yoga/YogaAlign;

    return-object v0

    .line 35
    :pswitch_7
    sget-object v0, Lcom/facebook/yoga/YogaAlign;->AUTO:Lcom/facebook/yoga/YogaAlign;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/yoga/YogaAlign;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 12
    const-class v0, Lcom/facebook/yoga/YogaAlign;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/yoga/YogaAlign;

    return-object v0
.end method

.method public static values()[Lcom/facebook/yoga/YogaAlign;
    .locals 1

    .line 12
    sget-object v0, Lcom/facebook/yoga/YogaAlign;->$VALUES:[Lcom/facebook/yoga/YogaAlign;

    invoke-virtual {v0}, [Lcom/facebook/yoga/YogaAlign;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/yoga/YogaAlign;

    return-object v0
.end method


# virtual methods
.method public intValue()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/facebook/yoga/YogaAlign;->mIntValue:I

    return v0
.end method
