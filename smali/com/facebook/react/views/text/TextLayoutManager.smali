.class public Lcom/facebook/react/views/text/TextLayoutManager;
.super Ljava/lang/Object;
.source "TextLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;
    }
.end annotation


# static fields
.field private static sSpannableCache:Landroid/util/LruCache; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/text/Spannable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSpannableCacheLock:Ljava/lang/Object;

.field private static final sTextPaintInstance:Landroid/text/TextPaint;

.field private static final spannableCacheSize:I = 0x64


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v0, Lcom/facebook/react/views/text/TextLayoutManager;->sTextPaintInstance:Landroid/text/TextPaint;

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/react/views/text/TextLayoutManager;->sSpannableCacheLock:Ljava/lang/Object;

    .line 48
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/facebook/react/views/text/TextLayoutManager;->sSpannableCache:Landroid/util/LruCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildSpannableFromFragment(Landroid/content/Context;Lcom/facebook/react/bridge/ReadableArray;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/react/bridge/ReadableArray;",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/util/List<",
            "Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;",
            ">;)V"
        }
    .end annotation

    .line 56
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_b

    .line 57
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v2

    .line 58
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 61
    new-instance v4, Lcom/facebook/react/views/text/TextAttributeProps;

    new-instance v5, Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    const-string v6, "textAttributes"

    invoke-interface {v2, v6}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;-><init>(Lcom/facebook/react/bridge/ReadableMap;)V

    invoke-direct {v4, v5}, Lcom/facebook/react/views/text/TextAttributeProps;-><init>(Lcom/facebook/react/uimanager/ReactStylesDiffMap;)V

    const-string v5, "string"

    .line 64
    invoke-interface {v2, v5}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Lcom/facebook/react/views/text/TextAttributeProps;->mTextTransform:Lcom/facebook/react/views/text/TextTransform;

    .line 63
    invoke-static {v5, v6}, Lcom/facebook/react/views/text/TextTransform;->apply(Ljava/lang/String;Lcom/facebook/react/views/text/TextTransform;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 86
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    if-lt v5, v3, :cond_a

    .line 88
    iget-boolean v6, v4, Lcom/facebook/react/views/text/TextAttributeProps;->mIsColorSet:Z

    if-eqz v6, :cond_0

    .line 89
    new-instance v6, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;

    new-instance v7, Lcom/facebook/react/views/text/ReactForegroundColorSpan;

    iget v8, v4, Lcom/facebook/react/views/text/TextAttributeProps;->mColor:I

    invoke-direct {v7, v8}, Lcom/facebook/react/views/text/ReactForegroundColorSpan;-><init>(I)V

    invoke-direct {v6, v3, v5, v7}, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;-><init>(IILcom/facebook/react/views/text/ReactSpan;)V

    invoke-interface {p3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_0
    iget-boolean v6, v4, Lcom/facebook/react/views/text/TextAttributeProps;->mIsBackgroundColorSet:Z

    if-eqz v6, :cond_1

    .line 92
    new-instance v6, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;

    new-instance v7, Lcom/facebook/react/views/text/ReactBackgroundColorSpan;

    iget v8, v4, Lcom/facebook/react/views/text/TextAttributeProps;->mBackgroundColor:I

    invoke-direct {v7, v8}, Lcom/facebook/react/views/text/ReactBackgroundColorSpan;-><init>(I)V

    invoke-direct {v6, v3, v5, v7}, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;-><init>(IILcom/facebook/react/views/text/ReactSpan;)V

    invoke-interface {p3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_1
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_2

    .line 97
    iget v6, v4, Lcom/facebook/react/views/text/TextAttributeProps;->mLetterSpacing:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_2

    .line 98
    new-instance v6, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;

    new-instance v7, Lcom/facebook/react/views/text/CustomLetterSpacingSpan;

    iget v8, v4, Lcom/facebook/react/views/text/TextAttributeProps;->mLetterSpacing:F

    invoke-direct {v7, v8}, Lcom/facebook/react/views/text/CustomLetterSpacingSpan;-><init>(F)V

    invoke-direct {v6, v3, v5, v7}, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;-><init>(IILcom/facebook/react/views/text/ReactSpan;)V

    invoke-interface {p3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_2
    new-instance v6, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;

    new-instance v7, Lcom/facebook/react/views/text/ReactAbsoluteSizeSpan;

    iget v8, v4, Lcom/facebook/react/views/text/TextAttributeProps;->mFontSize:I

    invoke-direct {v7, v8}, Lcom/facebook/react/views/text/ReactAbsoluteSizeSpan;-><init>(I)V

    invoke-direct {v6, v3, v5, v7}, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;-><init>(IILcom/facebook/react/views/text/ReactSpan;)V

    invoke-interface {p3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget v6, v4, Lcom/facebook/react/views/text/TextAttributeProps;->mFontStyle:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_3

    iget v6, v4, Lcom/facebook/react/views/text/TextAttributeProps;->mFontWeight:I

    if-ne v6, v7, :cond_3

    iget-object v6, v4, Lcom/facebook/react/views/text/TextAttributeProps;->mFontFamily:Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 110
    :cond_3
    new-instance v6, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;

    new-instance v7, Lcom/facebook/react/views/text/CustomStyleSpan;

    iget v8, v4, Lcom/facebook/react/views/text/TextAttributeProps;->mFontStyle:I

    iget v9, v4, Lcom/facebook/react/views/text/TextAttributeProps;->mFontWeight:I

    iget-object v10, v4, Lcom/facebook/react/views/text/TextAttributeProps;->mFontFamily:Ljava/lang/String;

    .line 118
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v11

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/facebook/react/views/text/CustomStyleSpan;-><init>(IILjava/lang/String;Landroid/content/res/AssetManager;)V

    invoke-direct {v6, v3, v5, v7}, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;-><init>(IILcom/facebook/react/views/text/ReactSpan;)V

    .line 110
    invoke-interface {p3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_4
    iget-boolean v6, v4, Lcom/facebook/react/views/text/TextAttributeProps;->mIsUnderlineTextDecorationSet:Z

    if-eqz v6, :cond_5

    .line 121
    new-instance v6, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;

    new-instance v7, Lcom/facebook/react/views/text/ReactUnderlineSpan;

    invoke-direct {v7}, Lcom/facebook/react/views/text/ReactUnderlineSpan;-><init>()V

    invoke-direct {v6, v3, v5, v7}, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;-><init>(IILcom/facebook/react/views/text/ReactSpan;)V

    invoke-interface {p3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_5
    iget-boolean v6, v4, Lcom/facebook/react/views/text/TextAttributeProps;->mIsLineThroughTextDecorationSet:Z

    if-eqz v6, :cond_6

    .line 124
    new-instance v6, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;

    new-instance v7, Lcom/facebook/react/views/text/ReactStrikethroughSpan;

    invoke-direct {v7}, Lcom/facebook/react/views/text/ReactStrikethroughSpan;-><init>()V

    invoke-direct {v6, v3, v5, v7}, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;-><init>(IILcom/facebook/react/views/text/ReactSpan;)V

    invoke-interface {p3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_6
    iget v6, v4, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowOffsetDx:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_7

    iget v6, v4, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowOffsetDy:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_8

    .line 127
    :cond_7
    new-instance v6, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;

    new-instance v7, Lcom/facebook/react/views/text/ShadowStyleSpan;

    iget v8, v4, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowOffsetDx:F

    iget v9, v4, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowOffsetDy:F

    iget v10, v4, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowRadius:F

    iget v11, v4, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowColor:I

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/facebook/react/views/text/ShadowStyleSpan;-><init>(FFFI)V

    invoke-direct {v6, v3, v5, v7}, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;-><init>(IILcom/facebook/react/views/text/ReactSpan;)V

    invoke-interface {p3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_8
    invoke-virtual {v4}, Lcom/facebook/react/views/text/TextAttributeProps;->getEffectiveLineHeight()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_9

    .line 138
    new-instance v6, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;

    new-instance v7, Lcom/facebook/react/views/text/CustomLineHeightSpan;

    .line 140
    invoke-virtual {v4}, Lcom/facebook/react/views/text/TextAttributeProps;->getEffectiveLineHeight()F

    move-result v4

    invoke-direct {v7, v4}, Lcom/facebook/react/views/text/CustomLineHeightSpan;-><init>(F)V

    invoke-direct {v6, v3, v5, v7}, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;-><init>(IILcom/facebook/react/views/text/ReactSpan;)V

    .line 138
    invoke-interface {p3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    const-string v4, "reactTag"

    .line 143
    invoke-interface {v2, v4}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 144
    new-instance v4, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;

    new-instance v6, Lcom/facebook/react/views/text/ReactTagSpan;

    invoke-direct {v6, v2}, Lcom/facebook/react/views/text/ReactTagSpan;-><init>(I)V

    invoke-direct {v4, v3, v5, v6}, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;-><init>(IILcom/facebook/react/views/text/ReactSpan;)V

    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method private static createSpannableFromAttributedString(Landroid/content/Context;Lcom/facebook/react/bridge/ReadableMap;)Landroid/text/Spannable;
    .locals 3

    .line 174
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 179
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "fragments"

    .line 181
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p1

    invoke-static {p0, p1, v0, v1}, Lcom/facebook/react/views/text/TextLayoutManager;->buildSpannableFromFragment(Landroid/content/Context;Lcom/facebook/react/bridge/ReadableArray;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V

    .line 189
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;

    .line 202
    invoke-virtual {v1, v0, p1}, Lcom/facebook/react/views/text/TextLayoutManager$SetSpanOperation;->execute(Landroid/text/SpannableStringBuilder;I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected static getOrCreateSpannableForText(Landroid/content/Context;Lcom/facebook/react/bridge/ReadableMap;)Landroid/text/Spannable;
    .locals 3

    .line 154
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    sget-object v1, Lcom/facebook/react/views/text/TextLayoutManager;->sSpannableCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 156
    :try_start_0
    sget-object v2, Lcom/facebook/react/views/text/TextLayoutManager;->sSpannableCache:Landroid/util/LruCache;

    invoke-virtual {v2, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    if-eqz v2, :cond_0

    .line 159
    monitor-exit v1

    return-object v2

    .line 161
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 163
    invoke-static {p0, p1}, Lcom/facebook/react/views/text/TextLayoutManager;->createSpannableFromAttributedString(Landroid/content/Context;Lcom/facebook/react/bridge/ReadableMap;)Landroid/text/Spannable;

    move-result-object p0

    .line 164
    sget-object p1, Lcom/facebook/react/views/text/TextLayoutManager;->sSpannableCacheLock:Ljava/lang/Object;

    monitor-enter p1

    .line 165
    :try_start_1
    sget-object v1, Lcom/facebook/react/views/text/TextLayoutManager;->sSpannableCache:Landroid/util/LruCache;

    invoke-virtual {v1, v0, p0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    monitor-exit p1

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 161
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public static measureText(Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/bridge/ReadableNativeMap;Lcom/facebook/react/bridge/ReadableNativeMap;FLcom/facebook/yoga/YogaMeasureMode;FLcom/facebook/yoga/YogaMeasureMode;)J
    .locals 9

    .line 219
    sget-object v2, Lcom/facebook/react/views/text/TextLayoutManager;->sTextPaintInstance:Landroid/text/TextPaint;

    .line 220
    invoke-static {p0, p1}, Lcom/facebook/react/views/text/TextLayoutManager;->getOrCreateSpannableForText(Landroid/content/Context;Lcom/facebook/react/bridge/ReadableMap;)Landroid/text/Spannable;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 230
    invoke-static {v1, v2}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;)Landroid/text/BoringLayout$Metrics;

    move-result-object v6

    if-nez v6, :cond_0

    .line 232
    invoke-static {v1, v2}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result p0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x7fc00000    # Float.NaN

    .line 235
    :goto_0
    sget-object p1, Lcom/facebook/yoga/YogaMeasureMode;->UNDEFINED:Lcom/facebook/yoga/YogaMeasureMode;

    const/4 p5, 0x0

    const/4 p6, 0x0

    const/4 v8, 0x1

    if-eq p4, p1, :cond_2

    cmpg-float p1, p3, p6

    if-gez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x1

    :goto_2
    const/high16 p4, 0x3f800000    # 1.0f

    const/16 v0, 0x17

    if-nez v6, :cond_5

    if-nez p1, :cond_3

    .line 240
    invoke-static {p0}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v3

    if-nez v3, :cond_5

    cmpg-float v3, p0, p3

    if-gtz v3, :cond_5

    :cond_3
    float-to-double p0, p0

    .line 244
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int v3, p0

    .line 245
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p0, v0, :cond_4

    .line 246
    new-instance p0, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    goto/16 :goto_3

    .line 255
    :cond_4
    invoke-interface {v1}, Landroid/text/Spanned;->length()I

    move-result p0

    invoke-static {v1, p5, p0, v2, v3}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    sget-object p1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 256
    invoke-virtual {p0, p1}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    .line 257
    invoke-virtual {p0, p6, p4}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    .line 258
    invoke-virtual {p0, v8}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    .line 259
    invoke-virtual {p0, v8}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    .line 260
    invoke-virtual {p0, v8}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    .line 261
    invoke-virtual {p0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object p0

    goto :goto_3

    :cond_5
    if-eqz v6, :cond_7

    if-nez p1, :cond_6

    .line 264
    iget p0, v6, Landroid/text/BoringLayout$Metrics;->width:I

    int-to-float p0, p0

    cmpg-float p0, p0, p3

    if-gtz p0, :cond_7

    .line 267
    :cond_6
    iget p0, v6, Landroid/text/BoringLayout$Metrics;->width:I

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object v0, v1

    move-object v1, v2

    move v2, p0

    invoke-static/range {v0 .. v7}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object p0

    goto :goto_3

    .line 279
    :cond_7
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p0, v0, :cond_8

    .line 280
    new-instance p0, Landroid/text/StaticLayout;

    float-to-int v3, p3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    goto :goto_3

    .line 289
    :cond_8
    invoke-interface {v1}, Landroid/text/Spanned;->length()I

    move-result p0

    float-to-int p1, p3

    invoke-static {v1, p5, p0, v2, p1}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    sget-object p1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 290
    invoke-virtual {p0, p1}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    .line 291
    invoke-virtual {p0, p6, p4}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    .line 292
    invoke-virtual {p0, v8}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    .line 293
    invoke-virtual {p0, v8}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    .line 294
    invoke-virtual {p0, v8}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    .line 295
    invoke-virtual {p0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object p0

    :goto_3
    const-string p1, "maximumNumberOfLines"

    .line 300
    invoke-virtual {p2, p1}, Lcom/facebook/react/bridge/ReadableNativeMap;->hasKey(Ljava/lang/String;)Z

    move-result p3

    const/4 p4, -0x1

    if-eqz p3, :cond_9

    .line 301
    invoke-virtual {p2, p1}, Lcom/facebook/react/bridge/ReadableNativeMap;->getInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_4

    :cond_9
    const/4 p1, -0x1

    .line 304
    :goto_4
    invoke-virtual {p0}, Landroid/text/Layout;->getWidth()I

    move-result p2

    int-to-float p2, p2

    if-eq p1, p4, :cond_a

    if-eqz p1, :cond_a

    .line 307
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result p3

    if-ge p1, p3, :cond_a

    sub-int/2addr p1, v8

    .line 308
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result p0

    goto :goto_5

    .line 310
    :cond_a
    invoke-virtual {p0}, Landroid/text/Layout;->getHeight()I

    move-result p0

    :goto_5
    int-to-float p0, p0

    .line 313
    invoke-static {p2}, Lcom/facebook/react/uimanager/PixelUtil;->toSPFromPixel(F)F

    move-result p1

    invoke-static {p0}, Lcom/facebook/react/uimanager/PixelUtil;->toSPFromPixel(F)F

    move-result p0

    invoke-static {p1, p0}, Lcom/facebook/yoga/YogaMeasureOutput;->make(FF)J

    move-result-wide p0

    return-wide p0

    .line 227
    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Spannable element has not been prepared in onBeforeLayout"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
