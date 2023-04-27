.class public final enum Lcom/facebook/react/views/text/TextTransform;
.super Ljava/lang/Enum;
.source "TextTransform.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/react/views/text/TextTransform;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/react/views/text/TextTransform;

.field public static final enum CAPITALIZE:Lcom/facebook/react/views/text/TextTransform;

.field public static final enum LOWERCASE:Lcom/facebook/react/views/text/TextTransform;

.field public static final enum NONE:Lcom/facebook/react/views/text/TextTransform;

.field public static final enum UNSET:Lcom/facebook/react/views/text/TextTransform;

.field public static final enum UPPERCASE:Lcom/facebook/react/views/text/TextTransform;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 16
    new-instance v0, Lcom/facebook/react/views/text/TextTransform;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/react/views/text/TextTransform;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/react/views/text/TextTransform;->NONE:Lcom/facebook/react/views/text/TextTransform;

    new-instance v1, Lcom/facebook/react/views/text/TextTransform;

    const-string v3, "UPPERCASE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/facebook/react/views/text/TextTransform;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/facebook/react/views/text/TextTransform;->UPPERCASE:Lcom/facebook/react/views/text/TextTransform;

    new-instance v3, Lcom/facebook/react/views/text/TextTransform;

    const-string v5, "LOWERCASE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/facebook/react/views/text/TextTransform;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/facebook/react/views/text/TextTransform;->LOWERCASE:Lcom/facebook/react/views/text/TextTransform;

    new-instance v5, Lcom/facebook/react/views/text/TextTransform;

    const-string v7, "CAPITALIZE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/facebook/react/views/text/TextTransform;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/facebook/react/views/text/TextTransform;->CAPITALIZE:Lcom/facebook/react/views/text/TextTransform;

    new-instance v7, Lcom/facebook/react/views/text/TextTransform;

    const-string v9, "UNSET"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/facebook/react/views/text/TextTransform;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/facebook/react/views/text/TextTransform;->UNSET:Lcom/facebook/react/views/text/TextTransform;

    .line 15
    const/4 v9, 0x5

    new-array v9, v9, [Lcom/facebook/react/views/text/TextTransform;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/facebook/react/views/text/TextTransform;->$VALUES:[Lcom/facebook/react/views/text/TextTransform;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static apply(Ljava/lang/String;Lcom/facebook/react/views/text/TextTransform;)Ljava/lang/String;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "textTransform"    # Lcom/facebook/react/views/text/TextTransform;

    .line 19
    if-nez p0, :cond_0

    .line 20
    const/4 v0, 0x0

    return-object v0

    .line 24
    :cond_0
    sget-object v0, Lcom/facebook/react/views/text/TextTransform$1;->$SwitchMap$com$facebook$react$views$text$TextTransform:[I

    invoke-virtual {p1}, Lcom/facebook/react/views/text/TextTransform;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 35
    move-object v0, p0

    .local v0, "transformed":Ljava/lang/String;
    goto :goto_0

    .line 32
    .end local v0    # "transformed":Ljava/lang/String;
    :pswitch_0
    invoke-static {p0}, Lcom/facebook/react/views/text/TextTransform;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    .restart local v0    # "transformed":Ljava/lang/String;
    goto :goto_0

    .line 29
    .end local v0    # "transformed":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 30
    .restart local v0    # "transformed":Ljava/lang/String;
    goto :goto_0

    .line 26
    .end local v0    # "transformed":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 27
    .restart local v0    # "transformed":Ljava/lang/String;
    nop

    .line 38
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "text"    # Ljava/lang/String;

    .line 42
    invoke-static {}, Ljava/text/BreakIterator;->getWordInstance()Ljava/text/BreakIterator;

    move-result-object v0

    .line 43
    .local v0, "wordIterator":Ljava/text/BreakIterator;
    invoke-virtual {v0, p0}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 46
    .local v1, "res":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/text/BreakIterator;->first()I

    move-result v2

    .line 47
    .local v2, "start":I
    invoke-virtual {v0}, Ljava/text/BreakIterator;->next()I

    move-result v3

    .local v3, "end":I
    :goto_0
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 48
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 49
    .local v4, "word":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 50
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 53
    :cond_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    :goto_1
    move v2, v3

    .line 47
    .end local v4    # "word":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/text/BreakIterator;->next()I

    move-result v3

    goto :goto_0

    .line 58
    .end local v3    # "end":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/react/views/text/TextTransform;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 15
    const-class v0, Lcom/facebook/react/views/text/TextTransform;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/views/text/TextTransform;

    return-object v0
.end method

.method public static values()[Lcom/facebook/react/views/text/TextTransform;
    .locals 1

    .line 15
    sget-object v0, Lcom/facebook/react/views/text/TextTransform;->$VALUES:[Lcom/facebook/react/views/text/TextTransform;

    invoke-virtual {v0}, [Lcom/facebook/react/views/text/TextTransform;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/react/views/text/TextTransform;

    return-object v0
.end method
