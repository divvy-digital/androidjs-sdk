.class final enum Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderStyle;
.super Ljava/lang/Enum;
.source "ReactViewBackgroundDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "BorderStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderStyle;

.field public static final enum DASHED:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderStyle;

.field public static final enum DOTTED:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderStyle;

.field public static final enum SOLID:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 57
    new-instance v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderStyle;

    const-string v1, "SOLID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderStyle;->SOLID:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderStyle;

    .line 58
    new-instance v1, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderStyle;

    const-string v3, "DASHED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderStyle;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderStyle;->DASHED:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderStyle;

    .line 59
    new-instance v3, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderStyle;

    const-string v5, "DOTTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderStyle;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderStyle;->DOTTED:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderStyle;

    .line 56
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderStyle;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderStyle;->$VALUES:[Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getPathEffect(Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderStyle;F)Landroid/graphics/PathEffect;
    .locals 9
    .param p0, "style"    # Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderStyle;
    .param p1, "borderWidth"    # F
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 62
    sget-object v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$1;->$SwitchMap$com$facebook$react$views$view$ReactViewBackgroundDrawable$BorderStyle:[I

    invoke-virtual {p0}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderStyle;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    packed-switch v0, :pswitch_data_0

    .line 75
    return-object v7

    .line 71
    :pswitch_0
    new-instance v0, Landroid/graphics/DashPathEffect;

    new-array v6, v6, [F

    aput p1, v6, v5

    aput p1, v6, v4

    aput p1, v6, v3

    aput p1, v6, v2

    invoke-direct {v0, v6, v1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    return-object v0

    .line 67
    :pswitch_1
    new-instance v0, Landroid/graphics/DashPathEffect;

    new-array v6, v6, [F

    const/high16 v7, 0x40400000    # 3.0f

    mul-float v8, p1, v7

    aput v8, v6, v5

    mul-float v5, p1, v7

    aput v5, v6, v4

    mul-float v4, p1, v7

    aput v4, v6, v3

    mul-float v7, v7, p1

    aput v7, v6, v2

    invoke-direct {v0, v6, v1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    return-object v0

    .line 64
    :pswitch_2
    return-object v7

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderStyle;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 56
    const-class v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderStyle;

    return-object v0
.end method

.method public static values()[Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderStyle;
    .locals 1

    .line 56
    sget-object v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderStyle;->$VALUES:[Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderStyle;

    invoke-virtual {v0}, [Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/react/views/view/ReactViewBackgroundDrawable$BorderStyle;

    return-object v0
.end method
