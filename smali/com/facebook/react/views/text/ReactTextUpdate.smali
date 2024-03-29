.class public Lcom/facebook/react/views/text/ReactTextUpdate;
.super Ljava/lang/Object;
.source "ReactTextUpdate.java"


# instance fields
.field private final mContainsImages:Z

.field private final mJsEventCounter:I

.field private final mJustificationMode:I

.field private final mPaddingBottom:F

.field private final mPaddingLeft:F

.field private final mPaddingRight:F

.field private final mPaddingTop:F

.field private final mText:Landroid/text/Spannable;

.field private final mTextAlign:I

.field private final mTextBreakStrategy:I


# direct methods
.method public constructor <init>(Landroid/text/Spannable;IZFFFFI)V
    .locals 11
    .param p1, "text"    # Landroid/text/Spannable;
    .param p2, "jsEventCounter"    # I
    .param p3, "containsImages"    # Z
    .param p4, "paddingStart"    # F
    .param p5, "paddingTop"    # F
    .param p6, "paddingEnd"    # F
    .param p7, "paddingBottom"    # F
    .param p8, "textAlign"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 45
    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v10}, Lcom/facebook/react/views/text/ReactTextUpdate;-><init>(Landroid/text/Spannable;IZFFFFIII)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/text/Spannable;IZFFFFIII)V
    .locals 0
    .param p1, "text"    # Landroid/text/Spannable;
    .param p2, "jsEventCounter"    # I
    .param p3, "containsImages"    # Z
    .param p4, "paddingStart"    # F
    .param p5, "paddingTop"    # F
    .param p6, "paddingEnd"    # F
    .param p7, "paddingBottom"    # F
    .param p8, "textAlign"    # I
    .param p9, "textBreakStrategy"    # I
    .param p10, "justificationMode"    # I

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/facebook/react/views/text/ReactTextUpdate;->mText:Landroid/text/Spannable;

    .line 69
    iput p2, p0, Lcom/facebook/react/views/text/ReactTextUpdate;->mJsEventCounter:I

    .line 70
    iput-boolean p3, p0, Lcom/facebook/react/views/text/ReactTextUpdate;->mContainsImages:Z

    .line 71
    iput p4, p0, Lcom/facebook/react/views/text/ReactTextUpdate;->mPaddingLeft:F

    .line 72
    iput p5, p0, Lcom/facebook/react/views/text/ReactTextUpdate;->mPaddingTop:F

    .line 73
    iput p6, p0, Lcom/facebook/react/views/text/ReactTextUpdate;->mPaddingRight:F

    .line 74
    iput p7, p0, Lcom/facebook/react/views/text/ReactTextUpdate;->mPaddingBottom:F

    .line 75
    iput p8, p0, Lcom/facebook/react/views/text/ReactTextUpdate;->mTextAlign:I

    .line 76
    iput p9, p0, Lcom/facebook/react/views/text/ReactTextUpdate;->mTextBreakStrategy:I

    .line 77
    iput p10, p0, Lcom/facebook/react/views/text/ReactTextUpdate;->mJustificationMode:I

    .line 78
    return-void
.end method


# virtual methods
.method public containsImages()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/facebook/react/views/text/ReactTextUpdate;->mContainsImages:Z

    return v0
.end method

.method public getJsEventCounter()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/facebook/react/views/text/ReactTextUpdate;->mJsEventCounter:I

    return v0
.end method

.method public getJustificationMode()I
    .locals 1

    .line 117
    iget v0, p0, Lcom/facebook/react/views/text/ReactTextUpdate;->mJustificationMode:I

    return v0
.end method

.method public getPaddingBottom()F
    .locals 1

    .line 105
    iget v0, p0, Lcom/facebook/react/views/text/ReactTextUpdate;->mPaddingBottom:F

    return v0
.end method

.method public getPaddingLeft()F
    .locals 1

    .line 93
    iget v0, p0, Lcom/facebook/react/views/text/ReactTextUpdate;->mPaddingLeft:F

    return v0
.end method

.method public getPaddingRight()F
    .locals 1

    .line 101
    iget v0, p0, Lcom/facebook/react/views/text/ReactTextUpdate;->mPaddingRight:F

    return v0
.end method

.method public getPaddingTop()F
    .locals 1

    .line 97
    iget v0, p0, Lcom/facebook/react/views/text/ReactTextUpdate;->mPaddingTop:F

    return v0
.end method

.method public getText()Landroid/text/Spannable;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/facebook/react/views/text/ReactTextUpdate;->mText:Landroid/text/Spannable;

    return-object v0
.end method

.method public getTextAlign()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/facebook/react/views/text/ReactTextUpdate;->mTextAlign:I

    return v0
.end method

.method public getTextBreakStrategy()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/facebook/react/views/text/ReactTextUpdate;->mTextBreakStrategy:I

    return v0
.end method
