.class public Lcom/facebook/react/views/text/CustomStyleSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "CustomStyleSpan.java"

# interfaces
.implements Lcom/facebook/react/views/text/ReactSpan;


# instance fields
.field private final mAssetManager:Landroid/content/res/AssetManager;

.field private final mFontFamily:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mStyle:I

.field private final mWeight:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Landroid/content/res/AssetManager;)V
    .locals 0
    .param p1, "fontStyle"    # I
    .param p2, "fontWeight"    # I
    .param p3, "fontFamily"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "assetManager"    # Landroid/content/res/AssetManager;

    .line 42
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 43
    iput p1, p0, Lcom/facebook/react/views/text/CustomStyleSpan;->mStyle:I

    .line 44
    iput p2, p0, Lcom/facebook/react/views/text/CustomStyleSpan;->mWeight:I

    .line 45
    iput-object p3, p0, Lcom/facebook/react/views/text/CustomStyleSpan;->mFontFamily:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcom/facebook/react/views/text/CustomStyleSpan;->mAssetManager:Landroid/content/res/AssetManager;

    .line 47
    return-void
.end method

.method private static apply(Landroid/graphics/Paint;IILjava/lang/String;Landroid/content/res/AssetManager;)V
    .locals 6
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "style"    # I
    .param p2, "weight"    # I
    .param p3, "family"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "assetManager"    # Landroid/content/res/AssetManager;

    .line 87
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    .line 88
    .local v0, "typeface":Landroid/graphics/Typeface;
    if-nez v0, :cond_0

    .line 89
    const/4 v1, 0x0

    .local v1, "oldStyle":I
    goto :goto_0

    .line 91
    .end local v1    # "oldStyle":I
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    .line 94
    .restart local v1    # "oldStyle":I
    :goto_0
    const/4 v2, 0x0

    .line 95
    .local v2, "want":I
    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq p2, v4, :cond_1

    and-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_2

    if-ne p2, v3, :cond_2

    .line 97
    :cond_1
    or-int/lit8 v2, v2, 0x1

    .line 100
    :cond_2
    const/4 v5, 0x2

    if-eq p1, v5, :cond_3

    and-int/lit8 v5, v1, 0x2

    if-eqz v5, :cond_4

    if-ne p1, v3, :cond_4

    .line 102
    :cond_3
    or-int/lit8 v2, v2, 0x2

    .line 105
    :cond_4
    if-eqz p3, :cond_5

    .line 106
    invoke-static {}, Lcom/facebook/react/views/text/ReactFontManager;->getInstance()Lcom/facebook/react/views/text/ReactFontManager;

    move-result-object v3

    invoke-virtual {v3, p3, v2, p4}, Lcom/facebook/react/views/text/ReactFontManager;->getTypeface(Ljava/lang/String;ILandroid/content/res/AssetManager;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_1

    .line 107
    :cond_5
    if-eqz v0, :cond_6

    .line 109
    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 112
    :cond_6
    :goto_1
    if-eqz v0, :cond_7

    .line 113
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_2

    .line 115
    :cond_7
    invoke-static {v2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 117
    :goto_2
    invoke-virtual {p0, v4}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    .line 118
    return-void
.end method


# virtual methods
.method public getFontFamily()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/facebook/react/views/text/CustomStyleSpan;->mFontFamily:Ljava/lang/String;

    return-object v0
.end method

.method public getStyle()I
    .locals 2

    .line 63
    iget v0, p0, Lcom/facebook/react/views/text/CustomStyleSpan;->mStyle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public getWeight()I
    .locals 2

    .line 70
    iget v0, p0, Lcom/facebook/react/views/text/CustomStyleSpan;->mWeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 4
    .param p1, "ds"    # Landroid/text/TextPaint;

    .line 51
    iget v0, p0, Lcom/facebook/react/views/text/CustomStyleSpan;->mStyle:I

    iget v1, p0, Lcom/facebook/react/views/text/CustomStyleSpan;->mWeight:I

    iget-object v2, p0, Lcom/facebook/react/views/text/CustomStyleSpan;->mFontFamily:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/react/views/text/CustomStyleSpan;->mAssetManager:Landroid/content/res/AssetManager;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/facebook/react/views/text/CustomStyleSpan;->apply(Landroid/graphics/Paint;IILjava/lang/String;Landroid/content/res/AssetManager;)V

    .line 52
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 4
    .param p1, "paint"    # Landroid/text/TextPaint;

    .line 56
    iget v0, p0, Lcom/facebook/react/views/text/CustomStyleSpan;->mStyle:I

    iget v1, p0, Lcom/facebook/react/views/text/CustomStyleSpan;->mWeight:I

    iget-object v2, p0, Lcom/facebook/react/views/text/CustomStyleSpan;->mFontFamily:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/react/views/text/CustomStyleSpan;->mAssetManager:Landroid/content/res/AssetManager;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/facebook/react/views/text/CustomStyleSpan;->apply(Landroid/graphics/Paint;IILjava/lang/String;Landroid/content/res/AssetManager;)V

    .line 57
    return-void
.end method
