.class public final enum Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;
.super Ljava/lang/Enum;
.source "AccessibilityDelegateUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/uimanager/AccessibilityDelegateUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AccessibilityRole"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

.field public static final enum ADJUSTABLE:Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

.field public static final enum BUTTON:Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

.field public static final enum HEADER:Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

.field public static final enum IMAGE:Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

.field public static final enum IMAGEBUTTON:Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

.field public static final enum KEYBOARDKEY:Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

.field public static final enum LINK:Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

.field public static final enum NONE:Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

.field public static final enum SEARCH:Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

.field public static final enum SUMMARY:Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

.field public static final enum TEXT:Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 35
    new-instance v0, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;->NONE:Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    .line 36
    new-instance v1, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    const-string v3, "BUTTON"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;->BUTTON:Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    .line 37
    new-instance v3, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    const-string v5, "LINK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;->LINK:Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    .line 38
    new-instance v5, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    const-string v7, "SEARCH"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;->SEARCH:Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    .line 39
    new-instance v7, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    const-string v9, "IMAGE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;->IMAGE:Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    .line 40
    new-instance v9, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    const-string v11, "IMAGEBUTTON"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;->IMAGEBUTTON:Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    .line 41
    new-instance v11, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    const-string v13, "KEYBOARDKEY"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;->KEYBOARDKEY:Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    .line 42
    new-instance v13, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    const-string v15, "TEXT"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;->TEXT:Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    .line 43
    new-instance v15, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    const-string v14, "ADJUSTABLE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;->ADJUSTABLE:Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    .line 44
    new-instance v14, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    const-string v12, "SUMMARY"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;->SUMMARY:Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    .line 45
    new-instance v12, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    const-string v10, "HEADER"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;->HEADER:Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    .line 34
    const/16 v10, 0xb

    new-array v10, v10, [Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    const/4 v0, 0x3

    aput-object v5, v10, v0

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    const/16 v0, 0x8

    aput-object v15, v10, v0

    const/16 v0, 0x9

    aput-object v14, v10, v0

    aput-object v12, v10, v8

    sput-object v10, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;->$VALUES:[Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;
    .locals 5
    .param p0, "value"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 77
    invoke-static {}, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;->values()[Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 78
    .local v3, "role":Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;
    invoke-virtual {v3}, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 79
    return-object v3

    .line 77
    .end local v3    # "role":Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid accessibility role value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getValue(Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;)Ljava/lang/String;
    .locals 3
    .param p0, "role"    # Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    .line 48
    sget-object v0, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$2;->$SwitchMap$com$facebook$react$uimanager$AccessibilityDelegateUtil$AccessibilityRole:[I

    invoke-virtual {p0}, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "android.widget.ImageView"

    const-string v2, "android.widget.ViewGroup"

    packed-switch v0, :pswitch_data_0

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid accessibility role value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :pswitch_0
    return-object v2

    .line 68
    :pswitch_1
    return-object v2

    .line 66
    :pswitch_2
    const-string v0, "android.widget.SeekBar"

    return-object v0

    .line 64
    :pswitch_3
    return-object v2

    .line 62
    :pswitch_4
    const-string v0, "android.inputmethodservice.Keyboard$Key"

    return-object v0

    .line 60
    :pswitch_5
    return-object v1

    .line 58
    :pswitch_6
    return-object v1

    .line 56
    :pswitch_7
    const-string v0, "android.widget.EditText"

    return-object v0

    .line 54
    :pswitch_8
    return-object v2

    .line 52
    :pswitch_9
    const-string v0, "android.widget.Button"

    return-object v0

    .line 50
    :pswitch_a
    const/4 v0, 0x0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 34
    const-class v0, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    return-object v0
.end method

.method public static values()[Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;
    .locals 1

    .line 34
    sget-object v0, Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;->$VALUES:[Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    invoke-virtual {v0}, [Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/react/uimanager/AccessibilityDelegateUtil$AccessibilityRole;

    return-object v0
.end method
