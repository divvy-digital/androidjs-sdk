.class public Lcom/facebook/yoga/YogaNode;
.super Ljava/lang/Object;
.source "YogaNode.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
.end annotation


# static fields
.field private static final BORDER:I = 0x4

.field private static final MARGIN:I = 0x1

.field private static final PADDING:I = 0x2


# instance fields
.field private mBaselineFunction:Lcom/facebook/yoga/YogaBaselineFunction;

.field private mBorderBottom:F
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field private mBorderLeft:F
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field private mBorderRight:F
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field private mBorderTop:F
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field private mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/yoga/YogaNode;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mData:Ljava/lang/Object;

.field private mDoesLegacyStretchFlagAffectsLayout:Z
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field private mEdgeSetFlag:I
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field private mHasNewLayout:Z
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field private mHasSetPosition:Z

.field private mHeight:F
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field private mLayoutDirection:I
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field private mLeft:F
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field private mMarginBottom:F
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field private mMarginLeft:F
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field private mMarginRight:F
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field private mMarginTop:F
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field private mMeasureFunction:Lcom/facebook/yoga/YogaMeasureFunction;

.field private mNativePointer:J

.field private mOwner:Lcom/facebook/yoga/YogaNode;

.field private mPaddingBottom:F
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field private mPaddingLeft:F
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field private mPaddingRight:F
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field private mPaddingTop:F
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field private mTop:F
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field private mWidth:F
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "yoga"

    .line 19
    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/facebook/yoga/YogaNode;->mEdgeSetFlag:I

    .line 42
    iput-boolean v0, p0, Lcom/facebook/yoga/YogaNode;->mHasSetPosition:Z

    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 44
    iput v1, p0, Lcom/facebook/yoga/YogaNode;->mWidth:F

    .line 46
    iput v1, p0, Lcom/facebook/yoga/YogaNode;->mHeight:F

    .line 48
    iput v1, p0, Lcom/facebook/yoga/YogaNode;->mTop:F

    .line 50
    iput v1, p0, Lcom/facebook/yoga/YogaNode;->mLeft:F

    const/4 v1, 0x0

    .line 52
    iput v1, p0, Lcom/facebook/yoga/YogaNode;->mMarginLeft:F

    .line 54
    iput v1, p0, Lcom/facebook/yoga/YogaNode;->mMarginTop:F

    .line 56
    iput v1, p0, Lcom/facebook/yoga/YogaNode;->mMarginRight:F

    .line 58
    iput v1, p0, Lcom/facebook/yoga/YogaNode;->mMarginBottom:F

    .line 60
    iput v1, p0, Lcom/facebook/yoga/YogaNode;->mPaddingLeft:F

    .line 62
    iput v1, p0, Lcom/facebook/yoga/YogaNode;->mPaddingTop:F

    .line 64
    iput v1, p0, Lcom/facebook/yoga/YogaNode;->mPaddingRight:F

    .line 66
    iput v1, p0, Lcom/facebook/yoga/YogaNode;->mPaddingBottom:F

    .line 68
    iput v1, p0, Lcom/facebook/yoga/YogaNode;->mBorderLeft:F

    .line 70
    iput v1, p0, Lcom/facebook/yoga/YogaNode;->mBorderTop:F

    .line 72
    iput v1, p0, Lcom/facebook/yoga/YogaNode;->mBorderRight:F

    .line 74
    iput v1, p0, Lcom/facebook/yoga/YogaNode;->mBorderBottom:F

    .line 76
    iput v0, p0, Lcom/facebook/yoga/YogaNode;->mLayoutDirection:I

    const/4 v1, 0x1

    .line 78
    iput-boolean v1, p0, Lcom/facebook/yoga/YogaNode;->mHasNewLayout:Z

    .line 80
    iput-boolean v0, p0, Lcom/facebook/yoga/YogaNode;->mDoesLegacyStretchFlagAffectsLayout:Z

    .line 84
    invoke-direct {p0}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeNew()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    .line 85
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-void

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to allocate native memory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lcom/facebook/yoga/YogaConfig;)V
    .locals 4

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/facebook/yoga/YogaNode;->mEdgeSetFlag:I

    .line 42
    iput-boolean v0, p0, Lcom/facebook/yoga/YogaNode;->mHasSetPosition:Z

    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 44
    iput v1, p0, Lcom/facebook/yoga/YogaNode;->mWidth:F

    .line 46
    iput v1, p0, Lcom/facebook/yoga/YogaNode;->mHeight:F

    .line 48
    iput v1, p0, Lcom/facebook/yoga/YogaNode;->mTop:F

    .line 50
    iput v1, p0, Lcom/facebook/yoga/YogaNode;->mLeft:F

    const/4 v1, 0x0

    .line 52
    iput v1, p0, Lcom/facebook/yoga/YogaNode;->mMarginLeft:F

    .line 54
    iput v1, p0, Lcom/facebook/yoga/YogaNode;->mMarginTop:F

    .line 56
    iput v1, p0, Lcom/facebook/yoga/YogaNode;->mMarginRight:F

    .line 58
    iput v1, p0, Lcom/facebook/yoga/YogaNode;->mMarginBottom:F

    .line 60
    iput v1, p0, Lcom/facebook/yoga/YogaNode;->mPaddingLeft:F

    .line 62
    iput v1, p0, Lcom/facebook/yoga/YogaNode;->mPaddingTop:F

    .line 64
    iput v1, p0, Lcom/facebook/yoga/YogaNode;->mPaddingRight:F

    .line 66
    iput v1, p0, Lcom/facebook/yoga/YogaNode;->mPaddingBottom:F

    .line 68
    iput v1, p0, Lcom/facebook/yoga/YogaNode;->mBorderLeft:F

    .line 70
    iput v1, p0, Lcom/facebook/yoga/YogaNode;->mBorderTop:F

    .line 72
    iput v1, p0, Lcom/facebook/yoga/YogaNode;->mBorderRight:F

    .line 74
    iput v1, p0, Lcom/facebook/yoga/YogaNode;->mBorderBottom:F

    .line 76
    iput v0, p0, Lcom/facebook/yoga/YogaNode;->mLayoutDirection:I

    const/4 v1, 0x1

    .line 78
    iput-boolean v1, p0, Lcom/facebook/yoga/YogaNode;->mHasNewLayout:Z

    .line 80
    iput-boolean v0, p0, Lcom/facebook/yoga/YogaNode;->mDoesLegacyStretchFlagAffectsLayout:Z

    .line 92
    iget-wide v0, p1, Lcom/facebook/yoga/YogaConfig;->mNativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeNewWithConfig(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    .line 93
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    return-void

    .line 94
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Failed to allocate native memory"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private clearChildren()V
    .locals 2

    const/4 v0, 0x0

    .line 238
    iput-object v0, p0, Lcom/facebook/yoga/YogaNode;->mChildren:Ljava/util/List;

    .line 239
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeClearChildren(J)V

    return-void
.end method

.method private static native jni_YGNodeCalculateLayout(JFF)V
.end method

.method private static native jni_YGNodeClearChildren(J)V
.end method

.method private native jni_YGNodeClone(JLjava/lang/Object;)J
.end method

.method private static native jni_YGNodeCopyStyle(JJ)V
.end method

.method private static native jni_YGNodeFree(J)V
.end method

.method static native jni_YGNodeGetInstanceCount()I
.end method

.method private static native jni_YGNodeInsertChild(JJI)V
.end method

.method private static native jni_YGNodeIsDirty(J)Z
.end method

.method private static native jni_YGNodeIsReferenceBaseline(J)Z
.end method

.method private static native jni_YGNodeMarkDirty(J)V
.end method

.method private static native jni_YGNodeMarkDirtyAndPropogateToDescendants(J)V
.end method

.method private native jni_YGNodeNew()J
.end method

.method private native jni_YGNodeNewWithConfig(J)J
.end method

.method private static native jni_YGNodePrint(J)V
.end method

.method private static native jni_YGNodeRemoveChild(JJ)V
.end method

.method private static native jni_YGNodeReset(J)V
.end method

.method private static native jni_YGNodeSetHasBaselineFunc(JZ)V
.end method

.method private static native jni_YGNodeSetHasMeasureFunc(JZ)V
.end method

.method private static native jni_YGNodeSetIsReferenceBaseline(JZ)V
.end method

.method private static native jni_YGNodeSetOwner(JJ)V
.end method

.method private static native jni_YGNodeStyleGetAlignContent(J)I
.end method

.method private static native jni_YGNodeStyleGetAlignItems(J)I
.end method

.method private static native jni_YGNodeStyleGetAlignSelf(J)I
.end method

.method private static native jni_YGNodeStyleGetAspectRatio(J)F
.end method

.method private static native jni_YGNodeStyleGetBorder(JI)F
.end method

.method private static native jni_YGNodeStyleGetDirection(J)I
.end method

.method private static native jni_YGNodeStyleGetDisplay(J)I
.end method

.method private static native jni_YGNodeStyleGetFlexBasis(J)Ljava/lang/Object;
.end method

.method private static native jni_YGNodeStyleGetFlexDirection(J)I
.end method

.method private static native jni_YGNodeStyleGetFlexGrow(J)F
.end method

.method private static native jni_YGNodeStyleGetFlexShrink(J)F
.end method

.method private static native jni_YGNodeStyleGetHeight(J)Ljava/lang/Object;
.end method

.method private static native jni_YGNodeStyleGetJustifyContent(J)I
.end method

.method private static native jni_YGNodeStyleGetMargin(JI)Ljava/lang/Object;
.end method

.method private static native jni_YGNodeStyleGetMaxHeight(J)Ljava/lang/Object;
.end method

.method private static native jni_YGNodeStyleGetMaxWidth(J)Ljava/lang/Object;
.end method

.method private static native jni_YGNodeStyleGetMinHeight(J)Ljava/lang/Object;
.end method

.method private static native jni_YGNodeStyleGetMinWidth(J)Ljava/lang/Object;
.end method

.method private static native jni_YGNodeStyleGetOverflow(J)I
.end method

.method private static native jni_YGNodeStyleGetPadding(JI)Ljava/lang/Object;
.end method

.method private static native jni_YGNodeStyleGetPosition(JI)Ljava/lang/Object;
.end method

.method private static native jni_YGNodeStyleGetPositionType(J)I
.end method

.method private static native jni_YGNodeStyleGetWidth(J)Ljava/lang/Object;
.end method

.method private static native jni_YGNodeStyleSetAlignContent(JI)V
.end method

.method private static native jni_YGNodeStyleSetAlignItems(JI)V
.end method

.method private static native jni_YGNodeStyleSetAlignSelf(JI)V
.end method

.method private static native jni_YGNodeStyleSetAspectRatio(JF)V
.end method

.method private static native jni_YGNodeStyleSetBorder(JIF)V
.end method

.method private static native jni_YGNodeStyleSetDirection(JI)V
.end method

.method private static native jni_YGNodeStyleSetDisplay(JI)V
.end method

.method private static native jni_YGNodeStyleSetFlex(JF)V
.end method

.method private static native jni_YGNodeStyleSetFlexBasis(JF)V
.end method

.method private static native jni_YGNodeStyleSetFlexBasisAuto(J)V
.end method

.method private static native jni_YGNodeStyleSetFlexBasisPercent(JF)V
.end method

.method private static native jni_YGNodeStyleSetFlexDirection(JI)V
.end method

.method private static native jni_YGNodeStyleSetFlexGrow(JF)V
.end method

.method private static native jni_YGNodeStyleSetFlexShrink(JF)V
.end method

.method private static native jni_YGNodeStyleSetFlexWrap(JI)V
.end method

.method private static native jni_YGNodeStyleSetHeight(JF)V
.end method

.method private static native jni_YGNodeStyleSetHeightAuto(J)V
.end method

.method private static native jni_YGNodeStyleSetHeightPercent(JF)V
.end method

.method private static native jni_YGNodeStyleSetJustifyContent(JI)V
.end method

.method private static native jni_YGNodeStyleSetMargin(JIF)V
.end method

.method private static native jni_YGNodeStyleSetMarginAuto(JI)V
.end method

.method private static native jni_YGNodeStyleSetMarginPercent(JIF)V
.end method

.method private static native jni_YGNodeStyleSetMaxHeight(JF)V
.end method

.method private static native jni_YGNodeStyleSetMaxHeightPercent(JF)V
.end method

.method private static native jni_YGNodeStyleSetMaxWidth(JF)V
.end method

.method private static native jni_YGNodeStyleSetMaxWidthPercent(JF)V
.end method

.method private static native jni_YGNodeStyleSetMinHeight(JF)V
.end method

.method private static native jni_YGNodeStyleSetMinHeightPercent(JF)V
.end method

.method private static native jni_YGNodeStyleSetMinWidth(JF)V
.end method

.method private static native jni_YGNodeStyleSetMinWidthPercent(JF)V
.end method

.method private static native jni_YGNodeStyleSetOverflow(JI)V
.end method

.method private static native jni_YGNodeStyleSetPadding(JIF)V
.end method

.method private static native jni_YGNodeStyleSetPaddingPercent(JIF)V
.end method

.method private static native jni_YGNodeStyleSetPosition(JIF)V
.end method

.method private static native jni_YGNodeStyleSetPositionPercent(JIF)V
.end method

.method private static native jni_YGNodeStyleSetPositionType(JI)V
.end method

.method private static native jni_YGNodeStyleSetWidth(JF)V
.end method

.method private static native jni_YGNodeStyleSetWidthAuto(J)V
.end method

.method private static native jni_YGNodeStyleSetWidthPercent(JF)V
.end method

.method private final replaceChild(Lcom/facebook/yoga/YogaNode;I)J
    .locals 1
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .line 790
    iget-object v0, p0, Lcom/facebook/yoga/YogaNode;->mChildren:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 793
    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 794
    iget-object v0, p0, Lcom/facebook/yoga/YogaNode;->mChildren:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 795
    iput-object p0, p1, Lcom/facebook/yoga/YogaNode;->mOwner:Lcom/facebook/yoga/YogaNode;

    .line 796
    iget-wide p1, p1, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    return-wide p1

    .line 791
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot replace child. YogaNode does not have children"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addChildAt(Lcom/facebook/yoga/YogaNode;I)V
    .locals 4

    .line 164
    iget-object v0, p1, Lcom/facebook/yoga/YogaNode;->mOwner:Lcom/facebook/yoga/YogaNode;

    if-nez v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/facebook/yoga/YogaNode;->mChildren:Ljava/util/List;

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/yoga/YogaNode;->mChildren:Ljava/util/List;

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/facebook/yoga/YogaNode;->mChildren:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 172
    iput-object p0, p1, Lcom/facebook/yoga/YogaNode;->mOwner:Lcom/facebook/yoga/YogaNode;

    .line 173
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    iget-wide v2, p1, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-static {v0, v1, v2, v3, p2}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeInsertChild(JJI)V

    return-void

    .line 165
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Child already has a parent, it must be removed first."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final baseline(FF)F
    .locals 1
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .line 756
    iget-object v0, p0, Lcom/facebook/yoga/YogaNode;->mBaselineFunction:Lcom/facebook/yoga/YogaBaselineFunction;

    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/yoga/YogaBaselineFunction;->baseline(Lcom/facebook/yoga/YogaNode;FF)F

    move-result p1

    return p1
.end method

.method public calculateLayout(FF)V
    .locals 2

    .line 280
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-static {v0, v1, p1, p2}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeCalculateLayout(JFF)V

    return-void
.end method

.method public clone()Lcom/facebook/yoga/YogaNode;
    .locals 10

    .line 195
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/yoga/YogaNode;

    .line 196
    iget-wide v1, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-direct {p0, v1, v2, v0}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeClone(JLjava/lang/Object;)J

    move-result-wide v1

    .line 198
    iget-object v3, p0, Lcom/facebook/yoga/YogaNode;->mChildren:Ljava/util/List;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 199
    iget-object v3, p0, Lcom/facebook/yoga/YogaNode;->mChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/yoga/YogaNode;

    .line 200
    iget-wide v6, v5, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    const-wide/16 v8, 0x0

    invoke-static {v6, v7, v8, v9}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeSetOwner(JJ)V

    .line 201
    iput-object v4, v5, Lcom/facebook/yoga/YogaNode;->mOwner:Lcom/facebook/yoga/YogaNode;

    goto :goto_0

    .line 205
    :cond_0
    iput-wide v1, v0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    .line 206
    iput-object v4, v0, Lcom/facebook/yoga/YogaNode;->mOwner:Lcom/facebook/yoga/YogaNode;

    .line 207
    iget-object v1, p0, Lcom/facebook/yoga/YogaNode;->mChildren:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/facebook/yoga/YogaNode;->mChildren:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    .line 208
    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    goto :goto_1

    :cond_1
    move-object v1, v4

    :goto_1
    iput-object v1, v0, Lcom/facebook/yoga/YogaNode;->mChildren:Ljava/util/List;

    .line 209
    iget-object v1, v0, Lcom/facebook/yoga/YogaNode;->mChildren:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 210
    iget-object v1, v0, Lcom/facebook/yoga/YogaNode;->mChildren:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/yoga/YogaNode;

    .line 211
    iput-object v4, v2, Lcom/facebook/yoga/YogaNode;->mOwner:Lcom/facebook/yoga/YogaNode;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_2
    return-object v0

    :catch_0
    move-exception v0

    .line 217
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 15
    invoke-virtual {p0}, Lcom/facebook/yoga/YogaNode;->clone()Lcom/facebook/yoga/YogaNode;

    move-result-object v0

    return-object v0
.end method

.method public cloneWithNewChildren()Lcom/facebook/yoga/YogaNode;
    .locals 4

    .line 223
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/yoga/YogaNode;

    .line 224
    iget-wide v1, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-direct {p0, v1, v2, v0}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeClone(JLjava/lang/Object;)J

    move-result-wide v1

    const/4 v3, 0x0

    .line 225
    iput-object v3, v0, Lcom/facebook/yoga/YogaNode;->mOwner:Lcom/facebook/yoga/YogaNode;

    .line 226
    iput-wide v1, v0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    .line 227
    invoke-direct {v0}, Lcom/facebook/yoga/YogaNode;->clearChildren()V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 231
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public copyStyle(Lcom/facebook/yoga/YogaNode;)V
    .locals 4

    .line 305
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    iget-wide v2, p1, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeCopyStyle(JJ)V

    return-void
.end method

.method public dirty()V
    .locals 2

    .line 289
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeMarkDirty(J)V

    return-void
.end method

.method public dirtyAllDescendants()V
    .locals 2

    .line 295
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeMarkDirtyAndPropogateToDescendants(J)V

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 101
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/yoga/YogaNode;->freeNatives()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 104
    throw v0
.end method

.method public freeNatives()V
    .locals 5

    .line 111
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 113
    iput-wide v2, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    .line 114
    invoke-static {v0, v1}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeFree(J)V

    :cond_0
    return-void
.end method

.method public getAlignContent()Lcom/facebook/yoga/YogaAlign;
    .locals 2

    .line 364
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeStyleGetAlignContent(J)I

    move-result v0

    invoke-static {v0}, Lcom/facebook/yoga/YogaAlign;->fromInt(I)Lcom/facebook/yoga/YogaAlign;

    move-result-object v0

    return-object v0
.end method

.method public getAlignItems()Lcom/facebook/yoga/YogaAlign;
    .locals 2

    .line 344
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeStyleGetAlignItems(J)I

    move-result v0

    invoke-static {v0}, Lcom/facebook/yoga/YogaAlign;->fromInt(I)Lcom/facebook/yoga/YogaAlign;

    move-result-object v0

    return-object v0
.end method

.method public getAlignSelf()Lcom/facebook/yoga/YogaAlign;
    .locals 2

    .line 354
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeStyleGetAlignSelf(J)I

    move-result v0

    invoke-static {v0}, Lcom/facebook/yoga/YogaAlign;->fromInt(I)Lcom/facebook/yoga/YogaAlign;

    move-result-object v0

    return-object v0
.end method

.method public getAspectRatio()F
    .locals 2

    .line 634
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeStyleGetAspectRatio(J)F

    move-result v0

    return v0
.end method

.method public getBorder(Lcom/facebook/yoga/YogaEdge;)F
    .locals 2

    .line 500
    iget v0, p0, Lcom/facebook/yoga/YogaNode;->mEdgeSetFlag:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    const/high16 p1, 0x7fc00000    # Float.NaN

    return p1

    .line 503
    :cond_0
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-virtual {p1}, Lcom/facebook/yoga/YogaEdge;->intValue()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeStyleGetBorder(JI)F

    move-result p1

    return p1
.end method

.method public getChildAt(I)Lcom/facebook/yoga/YogaNode;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/facebook/yoga/YogaNode;->mChildren:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 158
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/yoga/YogaNode;

    return-object p1

    .line 156
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "YogaNode does not have children"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getChildCount()I
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/facebook/yoga/YogaNode;->mChildren:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1

    .line 768
    iget-object v0, p0, Lcom/facebook/yoga/YogaNode;->mData:Ljava/lang/Object;

    return-object v0
.end method

.method public getDisplay()Lcom/facebook/yoga/YogaDisplay;
    .locals 2

    .line 399
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeStyleGetDisplay(J)I

    move-result v0

    invoke-static {v0}, Lcom/facebook/yoga/YogaDisplay;->fromInt(I)Lcom/facebook/yoga/YogaDisplay;

    move-result-object v0

    return-object v0
.end method

.method public getDoesLegacyStretchFlagAffectsLayout()Z
    .locals 1

    .line 659
    iget-boolean v0, p0, Lcom/facebook/yoga/YogaNode;->mDoesLegacyStretchFlagAffectsLayout:Z

    return v0
.end method

.method public getFlexBasis()Lcom/facebook/yoga/YogaValue;
    .locals 2

    .line 434
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeStyleGetFlexBasis(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/yoga/YogaValue;

    return-object v0
.end method

.method public getFlexDirection()Lcom/facebook/yoga/YogaFlexDirection;
    .locals 2

    .line 324
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeStyleGetFlexDirection(J)I

    move-result v0

    invoke-static {v0}, Lcom/facebook/yoga/YogaFlexDirection;->fromInt(I)Lcom/facebook/yoga/YogaFlexDirection;

    move-result-object v0

    return-object v0
.end method

.method public getFlexGrow()F
    .locals 2

    .line 414
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeStyleGetFlexGrow(J)F

    move-result v0

    return v0
.end method

.method public getFlexShrink()F
    .locals 2

    .line 424
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeStyleGetFlexShrink(J)F

    move-result v0

    return v0
.end method

.method public getHeight()Lcom/facebook/yoga/YogaValue;
    .locals 2

    .line 554
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeStyleGetHeight(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/yoga/YogaValue;

    return-object v0
.end method

.method public getJustifyContent()Lcom/facebook/yoga/YogaJustify;
    .locals 2

    .line 334
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeStyleGetJustifyContent(J)I

    move-result v0

    invoke-static {v0}, Lcom/facebook/yoga/YogaJustify;->fromInt(I)Lcom/facebook/yoga/YogaJustify;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutBorder(Lcom/facebook/yoga/YogaEdge;)F
    .locals 1

    .line 701
    sget-object v0, Lcom/facebook/yoga/YogaNode$1;->$SwitchMap$com$facebook$yoga$YogaEdge:[I

    invoke-virtual {p1}, Lcom/facebook/yoga/YogaEdge;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 715
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot get layout border of multi-edge shorthands"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 713
    :pswitch_0
    invoke-virtual {p0}, Lcom/facebook/yoga/YogaNode;->getLayoutDirection()Lcom/facebook/yoga/YogaDirection;

    move-result-object p1

    sget-object v0, Lcom/facebook/yoga/YogaDirection;->RTL:Lcom/facebook/yoga/YogaDirection;

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/facebook/yoga/YogaNode;->mBorderLeft:F

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/facebook/yoga/YogaNode;->mBorderRight:F

    :goto_0
    return p1

    .line 711
    :pswitch_1
    invoke-virtual {p0}, Lcom/facebook/yoga/YogaNode;->getLayoutDirection()Lcom/facebook/yoga/YogaDirection;

    move-result-object p1

    sget-object v0, Lcom/facebook/yoga/YogaDirection;->RTL:Lcom/facebook/yoga/YogaDirection;

    if-ne p1, v0, :cond_1

    iget p1, p0, Lcom/facebook/yoga/YogaNode;->mBorderRight:F

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/facebook/yoga/YogaNode;->mBorderLeft:F

    :goto_1
    return p1

    .line 709
    :pswitch_2
    iget p1, p0, Lcom/facebook/yoga/YogaNode;->mBorderBottom:F

    return p1

    .line 707
    :pswitch_3
    iget p1, p0, Lcom/facebook/yoga/YogaNode;->mBorderRight:F

    return p1

    .line 705
    :pswitch_4
    iget p1, p0, Lcom/facebook/yoga/YogaNode;->mBorderTop:F

    return p1

    .line 703
    :pswitch_5
    iget p1, p0, Lcom/facebook/yoga/YogaNode;->mBorderLeft:F

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getLayoutDirection()Lcom/facebook/yoga/YogaDirection;
    .locals 1

    .line 720
    iget v0, p0, Lcom/facebook/yoga/YogaNode;->mLayoutDirection:I

    invoke-static {v0}, Lcom/facebook/yoga/YogaDirection;->fromInt(I)Lcom/facebook/yoga/YogaDirection;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutHeight()F
    .locals 1

    .line 655
    iget v0, p0, Lcom/facebook/yoga/YogaNode;->mHeight:F

    return v0
.end method

.method public getLayoutMargin(Lcom/facebook/yoga/YogaEdge;)F
    .locals 1

    .line 663
    sget-object v0, Lcom/facebook/yoga/YogaNode$1;->$SwitchMap$com$facebook$yoga$YogaEdge:[I

    invoke-virtual {p1}, Lcom/facebook/yoga/YogaEdge;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 677
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot get layout margins of multi-edge shorthands"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 675
    :pswitch_0
    invoke-virtual {p0}, Lcom/facebook/yoga/YogaNode;->getLayoutDirection()Lcom/facebook/yoga/YogaDirection;

    move-result-object p1

    sget-object v0, Lcom/facebook/yoga/YogaDirection;->RTL:Lcom/facebook/yoga/YogaDirection;

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/facebook/yoga/YogaNode;->mMarginLeft:F

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/facebook/yoga/YogaNode;->mMarginRight:F

    :goto_0
    return p1

    .line 673
    :pswitch_1
    invoke-virtual {p0}, Lcom/facebook/yoga/YogaNode;->getLayoutDirection()Lcom/facebook/yoga/YogaDirection;

    move-result-object p1

    sget-object v0, Lcom/facebook/yoga/YogaDirection;->RTL:Lcom/facebook/yoga/YogaDirection;

    if-ne p1, v0, :cond_1

    iget p1, p0, Lcom/facebook/yoga/YogaNode;->mMarginRight:F

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/facebook/yoga/YogaNode;->mMarginLeft:F

    :goto_1
    return p1

    .line 671
    :pswitch_2
    iget p1, p0, Lcom/facebook/yoga/YogaNode;->mMarginBottom:F

    return p1

    .line 669
    :pswitch_3
    iget p1, p0, Lcom/facebook/yoga/YogaNode;->mMarginRight:F

    return p1

    .line 667
    :pswitch_4
    iget p1, p0, Lcom/facebook/yoga/YogaNode;->mMarginTop:F

    return p1

    .line 665
    :pswitch_5
    iget p1, p0, Lcom/facebook/yoga/YogaNode;->mMarginLeft:F

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getLayoutPadding(Lcom/facebook/yoga/YogaEdge;)F
    .locals 1

    .line 682
    sget-object v0, Lcom/facebook/yoga/YogaNode$1;->$SwitchMap$com$facebook$yoga$YogaEdge:[I

    invoke-virtual {p1}, Lcom/facebook/yoga/YogaEdge;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 696
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot get layout paddings of multi-edge shorthands"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 694
    :pswitch_0
    invoke-virtual {p0}, Lcom/facebook/yoga/YogaNode;->getLayoutDirection()Lcom/facebook/yoga/YogaDirection;

    move-result-object p1

    sget-object v0, Lcom/facebook/yoga/YogaDirection;->RTL:Lcom/facebook/yoga/YogaDirection;

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/facebook/yoga/YogaNode;->mPaddingLeft:F

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/facebook/yoga/YogaNode;->mPaddingRight:F

    :goto_0
    return p1

    .line 692
    :pswitch_1
    invoke-virtual {p0}, Lcom/facebook/yoga/YogaNode;->getLayoutDirection()Lcom/facebook/yoga/YogaDirection;

    move-result-object p1

    sget-object v0, Lcom/facebook/yoga/YogaDirection;->RTL:Lcom/facebook/yoga/YogaDirection;

    if-ne p1, v0, :cond_1

    iget p1, p0, Lcom/facebook/yoga/YogaNode;->mPaddingRight:F

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/facebook/yoga/YogaNode;->mPaddingLeft:F

    :goto_1
    return p1

    .line 690
    :pswitch_2
    iget p1, p0, Lcom/facebook/yoga/YogaNode;->mPaddingBottom:F

    return p1

    .line 688
    :pswitch_3
    iget p1, p0, Lcom/facebook/yoga/YogaNode;->mPaddingRight:F

    return p1

    .line 686
    :pswitch_4
    iget p1, p0, Lcom/facebook/yoga/YogaNode;->mPaddingTop:F

    return p1

    .line 684
    :pswitch_5
    iget p1, p0, Lcom/facebook/yoga/YogaNode;->mPaddingLeft:F

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getLayoutWidth()F
    .locals 1

    .line 651
    iget v0, p0, Lcom/facebook/yoga/YogaNode;->mWidth:F

    return v0
.end method

.method public getLayoutX()F
    .locals 1

    .line 643
    iget v0, p0, Lcom/facebook/yoga/YogaNode;->mLeft:F

    return v0
.end method

.method public getLayoutY()F
    .locals 1

    .line 647
    iget v0, p0, Lcom/facebook/yoga/YogaNode;->mTop:F

    return v0
.end method

.method public getMargin(Lcom/facebook/yoga/YogaEdge;)Lcom/facebook/yoga/YogaValue;
    .locals 2

    .line 454
    iget v0, p0, Lcom/facebook/yoga/YogaNode;->mEdgeSetFlag:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 455
    sget-object p1, Lcom/facebook/yoga/YogaValue;->UNDEFINED:Lcom/facebook/yoga/YogaValue;

    return-object p1

    .line 457
    :cond_0
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-virtual {p1}, Lcom/facebook/yoga/YogaEdge;->intValue()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeStyleGetMargin(JI)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/yoga/YogaValue;

    return-object p1
.end method

.method public getMaxHeight()Lcom/facebook/yoga/YogaValue;
    .locals 2

    .line 619
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeStyleGetMaxHeight(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/yoga/YogaValue;

    return-object v0
.end method

.method public getMaxWidth()Lcom/facebook/yoga/YogaValue;
    .locals 2

    .line 604
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeStyleGetMaxWidth(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/yoga/YogaValue;

    return-object v0
.end method

.method public getMinHeight()Lcom/facebook/yoga/YogaValue;
    .locals 2

    .line 589
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeStyleGetMinHeight(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/yoga/YogaValue;

    return-object v0
.end method

.method public getMinWidth()Lcom/facebook/yoga/YogaValue;
    .locals 2

    .line 574
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeStyleGetMinWidth(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/yoga/YogaValue;

    return-object v0
.end method

.method public getOverflow()Lcom/facebook/yoga/YogaOverflow;
    .locals 2

    .line 389
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeStyleGetOverflow(J)I

    move-result v0

    invoke-static {v0}, Lcom/facebook/yoga/YogaOverflow;->fromInt(I)Lcom/facebook/yoga/YogaOverflow;

    move-result-object v0

    return-object v0
.end method

.method public getOwner()Lcom/facebook/yoga/YogaNode;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 264
    iget-object v0, p0, Lcom/facebook/yoga/YogaNode;->mOwner:Lcom/facebook/yoga/YogaNode;

    return-object v0
.end method

.method public getPadding(Lcom/facebook/yoga/YogaEdge;)Lcom/facebook/yoga/YogaValue;
    .locals 2

    .line 480
    iget v0, p0, Lcom/facebook/yoga/YogaNode;->mEdgeSetFlag:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 481
    sget-object p1, Lcom/facebook/yoga/YogaValue;->UNDEFINED:Lcom/facebook/yoga/YogaValue;

    return-object p1

    .line 483
    :cond_0
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-virtual {p1}, Lcom/facebook/yoga/YogaEdge;->intValue()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeStyleGetPadding(JI)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/yoga/YogaValue;

    return-object p1
.end method

.method public getParent()Lcom/facebook/yoga/YogaNode;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 271
    invoke-virtual {p0}, Lcom/facebook/yoga/YogaNode;->getOwner()Lcom/facebook/yoga/YogaNode;

    move-result-object v0

    return-object v0
.end method

.method public getPosition(Lcom/facebook/yoga/YogaEdge;)Lcom/facebook/yoga/YogaValue;
    .locals 2

    .line 514
    iget-boolean v0, p0, Lcom/facebook/yoga/YogaNode;->mHasSetPosition:Z

    if-nez v0, :cond_0

    .line 515
    sget-object p1, Lcom/facebook/yoga/YogaValue;->UNDEFINED:Lcom/facebook/yoga/YogaValue;

    return-object p1

    .line 517
    :cond_0
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-virtual {p1}, Lcom/facebook/yoga/YogaEdge;->intValue()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeStyleGetPosition(JI)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/yoga/YogaValue;

    return-object p1
.end method

.method public getPositionType()Lcom/facebook/yoga/YogaPositionType;
    .locals 2

    .line 374
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeStyleGetPositionType(J)I

    move-result v0

    invoke-static {v0}, Lcom/facebook/yoga/YogaPositionType;->fromInt(I)Lcom/facebook/yoga/YogaPositionType;

    move-result-object v0

    return-object v0
.end method

.method public getStyleDirection()Lcom/facebook/yoga/YogaDirection;
    .locals 2

    .line 314
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeStyleGetDirection(J)I

    move-result v0

    invoke-static {v0}, Lcom/facebook/yoga/YogaDirection;->fromInt(I)Lcom/facebook/yoga/YogaDirection;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()Lcom/facebook/yoga/YogaValue;
    .locals 2

    .line 534
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeStyleGetWidth(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/yoga/YogaValue;

    return-object v0
.end method

.method public hasNewLayout()Z
    .locals 1

    .line 284
    iget-boolean v0, p0, Lcom/facebook/yoga/YogaNode;->mHasNewLayout:Z

    return v0
.end method

.method public indexOf(Lcom/facebook/yoga/YogaNode;)I
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/facebook/yoga/YogaNode;->mChildren:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public isDirty()Z
    .locals 2

    .line 300
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeIsDirty(J)Z

    move-result v0

    return v0
.end method

.method public isMeasureDefined()Z
    .locals 1

    .line 760
    iget-object v0, p0, Lcom/facebook/yoga/YogaNode;->mMeasureFunction:Lcom/facebook/yoga/YogaMeasureFunction;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReferenceBaseline()Z
    .locals 2

    .line 185
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeIsReferenceBaseline(J)Z

    move-result v0

    return v0
.end method

.method public markLayoutSeen()V
    .locals 1

    const/4 v0, 0x0

    .line 309
    iput-boolean v0, p0, Lcom/facebook/yoga/YogaNode;->mHasNewLayout:Z

    return-void
.end method

.method public final measure(FIFI)J
    .locals 7
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .line 736
    invoke-virtual {p0}, Lcom/facebook/yoga/YogaNode;->isMeasureDefined()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 740
    iget-object v1, p0, Lcom/facebook/yoga/YogaNode;->mMeasureFunction:Lcom/facebook/yoga/YogaMeasureFunction;

    .line 743
    invoke-static {p2}, Lcom/facebook/yoga/YogaMeasureMode;->fromInt(I)Lcom/facebook/yoga/YogaMeasureMode;

    move-result-object v4

    .line 745
    invoke-static {p4}, Lcom/facebook/yoga/YogaMeasureMode;->fromInt(I)Lcom/facebook/yoga/YogaMeasureMode;

    move-result-object v6

    move-object v2, p0

    move v3, p1

    move v5, p3

    .line 740
    invoke-interface/range {v1 .. v6}, Lcom/facebook/yoga/YogaMeasureFunction;->measure(Lcom/facebook/yoga/YogaNode;FLcom/facebook/yoga/YogaMeasureMode;FLcom/facebook/yoga/YogaMeasureMode;)J

    move-result-wide p1

    return-wide p1

    .line 737
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Measure function isn\'t defined!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public print()V
    .locals 2

    .line 778
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/facebook/yoga/YogaNode;->jni_YGNodePrint(J)V

    return-void
.end method

.method public removeChildAt(I)Lcom/facebook/yoga/YogaNode;
    .locals 4

    .line 244
    iget-object v0, p0, Lcom/facebook/yoga/YogaNode;->mChildren:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 248
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/yoga/YogaNode;

    const/4 v0, 0x0

    .line 249
    iput-object v0, p1, Lcom/facebook/yoga/YogaNode;->mOwner:Lcom/facebook/yoga/YogaNode;

    .line 250
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    iget-wide v2, p1, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeRemoveChild(JJ)V

    return-object p1

    .line 245
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Trying to remove a child of a YogaNode that does not have children"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    .line 120
    iput v0, p0, Lcom/facebook/yoga/YogaNode;->mEdgeSetFlag:I

    .line 121
    iput-boolean v0, p0, Lcom/facebook/yoga/YogaNode;->mHasSetPosition:Z

    const/4 v1, 0x1

    .line 122
    iput-boolean v1, p0, Lcom/facebook/yoga/YogaNode;->mHasNewLayout:Z

    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 124
    iput v1, p0, Lcom/facebook/yoga/YogaNode;->mWidth:F

    .line 125
    iput v1, p0, Lcom/facebook/yoga/YogaNode;->mHeight:F

    .line 126
    iput v1, p0, Lcom/facebook/yoga/YogaNode;->mTop:F

    .line 127
    iput v1, p0, Lcom/facebook/yoga/YogaNode;->mLeft:F

    const/4 v1, 0x0

    .line 128
    iput v1, p0, Lcom/facebook/yoga/YogaNode;->mMarginLeft:F

    .line 129
    iput v1, p0, Lcom/facebook/yoga/YogaNode;->mMarginTop:F

    .line 130
    iput v1, p0, Lcom/facebook/yoga/YogaNode;->mMarginRight:F

    .line 131
    iput v1, p0, Lcom/facebook/yoga/YogaNode;->mMarginBottom:F

    .line 132
    iput v1, p0, Lcom/facebook/yoga/YogaNode;->mPaddingLeft:F

    .line 133
    iput v1, p0, Lcom/facebook/yoga/YogaNode;->mPaddingTop:F

    .line 134
    iput v1, p0, Lcom/facebook/yoga/YogaNode;->mPaddingRight:F

    .line 135
    iput v1, p0, Lcom/facebook/yoga/YogaNode;->mPaddingBottom:F

    .line 136
    iput v1, p0, Lcom/facebook/yoga/YogaNode;->mBorderLeft:F

    .line 137
    iput v1, p0, Lcom/facebook/yoga/YogaNode;->mBorderTop:F

    .line 138
    iput v1, p0, Lcom/facebook/yoga/YogaNode;->mBorderRight:F

    .line 139
    iput v1, p0, Lcom/facebook/yoga/YogaNode;->mBorderBottom:F

    .line 140
    iput v0, p0, Lcom/facebook/yoga/YogaNode;->mLayoutDirection:I

    const/4 v1, 0x0

    .line 142
    iput-object v1, p0, Lcom/facebook/yoga/YogaNode;->mMeasureFunction:Lcom/facebook/yoga/YogaMeasureFunction;

    .line 143
    iput-object v1, p0, Lcom/facebook/yoga/YogaNode;->mBaselineFunction:Lcom/facebook/yoga/YogaBaselineFunction;

    .line 144
    iput-object v1, p0, Lcom/facebook/yoga/YogaNode;->mData:Ljava/lang/Object;

    .line 145
    iput-boolean v0, p0, Lcom/facebook/yoga/YogaNode;->mDoesLegacyStretchFlagAffectsLayout:Z

    .line 147
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeReset(J)V

    return-void
.end method

.method public setAlignContent(Lcom/facebook/yoga/YogaAlign;)V
    .locals 2

    .line 369
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-virtual {p1}, Lcom/facebook/yoga/YogaAlign;->intValue()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeStyleSetAlignContent(JI)V

    return-void
.end method

.method public setAlignItems(Lcom/facebook/yoga/YogaAlign;)V
    .locals 2

    .line 349
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-virtual {p1}, Lcom/facebook/yoga/YogaAlign;->intValue()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeStyleSetAlignItems(JI)V

    return-void
.end method

.method public setAlignSelf(Lcom/facebook/yoga/YogaAlign;)V
    .locals 2

    .line 359
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-virtual {p1}, Lcom/facebook/yoga/YogaAlign;->intValue()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeStyleSetAlignSelf(JI)V

    return-void
.end method

.method public setAspectRatio(F)V
    .locals 2

    .line 639
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-static {v0, v1, p1}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeStyleSetAspectRatio(JF)V

    return-void
.end method

.method public setBaselineFunction(Lcom/facebook/yoga/YogaBaselineFunction;)V
    .locals 2

    .line 750
    iput-object p1, p0, Lcom/facebook/yoga/YogaNode;->mBaselineFunction:Lcom/facebook/yoga/YogaBaselineFunction;

    .line 751
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, v1, p1}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeSetHasBaselineFunc(JZ)V

    return-void
.end method

.method public setBorder(Lcom/facebook/yoga/YogaEdge;F)V
    .locals 2

    .line 508
    iget v0, p0, Lcom/facebook/yoga/YogaNode;->mEdgeSetFlag:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/facebook/yoga/YogaNode;->mEdgeSetFlag:I

    .line 509
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-virtual {p1}, Lcom/facebook/yoga/YogaEdge;->intValue()I

    move-result p1

    invoke-static {v0, v1, p1, p2}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeStyleSetBorder(JIF)V

    return-void
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0

    .line 764
    iput-object p1, p0, Lcom/facebook/yoga/YogaNode;->mData:Ljava/lang/Object;

    return-void
.end method

.method public setDirection(Lcom/facebook/yoga/YogaDirection;)V
    .locals 2

    .line 319
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-virtual {p1}, Lcom/facebook/yoga/YogaDirection;->intValue()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeStyleSetDirection(JI)V

    return-void
.end method

.method public setDisplay(Lcom/facebook/yoga/YogaDisplay;)V
    .locals 2

    .line 404
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-virtual {p1}, Lcom/facebook/yoga/YogaDisplay;->intValue()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeStyleSetDisplay(JI)V

    return-void
.end method

.method public setFlex(F)V
    .locals 2

    .line 409
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-static {v0, v1, p1}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeStyleSetFlex(JF)V

    return-void
.end method

.method public setFlexBasis(F)V
    .locals 2

    .line 439
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-static {v0, v1, p1}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeStyleSetFlexBasis(JF)V

    return-void
.end method

.method public setFlexBasisAuto()V
    .locals 2

    .line 449
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeStyleSetFlexBasisAuto(J)V

    return-void
.end method

.method public setFlexBasisPercent(F)V
    .locals 2

    .line 444
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-static {v0, v1, p1}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeStyleSetFlexBasisPercent(JF)V

    return-void
.end method

.method public setFlexDirection(Lcom/facebook/yoga/YogaFlexDirection;)V
    .locals 2

    .line 329
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-virtual {p1}, Lcom/facebook/yoga/YogaFlexDirection;->intValue()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeStyleSetFlexDirection(JI)V

    return-void
.end method

.method public setFlexGrow(F)V
    .locals 2

    .line 419
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-static {v0, v1, p1}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeStyleSetFlexGrow(JF)V

    return-void
.end method

.method public setFlexShrink(F)V
    .locals 2

    .line 429
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-static {v0, v1, p1}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeStyleSetFlexShrink(JF)V

    return-void
.end method

.method public setHeight(F)V
    .locals 2

    .line 559
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-static {v0, v1, p1}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeStyleSetHeight(JF)V

    return-void
.end method

.method public setHeightAuto()V
    .locals 2

    .line 569
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeStyleSetHeightAuto(J)V

    return-void
.end method

.method public setHeightPercent(F)V
    .locals 2

    .line 564
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-static {v0, v1, p1}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeStyleSetHeightPercent(JF)V

    return-void
.end method

.method public setIsReferenceBaseline(Z)V
    .locals 2

    .line 179
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-static {v0, v1, p1}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeSetIsReferenceBaseline(JZ)V

    return-void
.end method

.method public setJustifyContent(Lcom/facebook/yoga/YogaJustify;)V
    .locals 2

    .line 339
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-virtual {p1}, Lcom/facebook/yoga/YogaJustify;->intValue()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeStyleSetJustifyContent(JI)V

    return-void
.end method

.method public setMargin(Lcom/facebook/yoga/YogaEdge;F)V
    .locals 2

    .line 462
    iget v0, p0, Lcom/facebook/yoga/YogaNode;->mEdgeSetFlag:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/yoga/YogaNode;->mEdgeSetFlag:I

    .line 463
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-virtual {p1}, Lcom/facebook/yoga/YogaEdge;->intValue()I

    move-result p1

    invoke-static {v0, v1, p1, p2}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeStyleSetMargin(JIF)V

    return-void
.end method

.method public setMarginAuto(Lcom/facebook/yoga/YogaEdge;)V
    .locals 2

    .line 474
    iget v0, p0, Lcom/facebook/yoga/YogaNode;->mEdgeSetFlag:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/yoga/YogaNode;->mEdgeSetFlag:I

    .line 475
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-virtual {p1}, Lcom/facebook/yoga/YogaEdge;->intValue()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeStyleSetMarginAuto(JI)V

    return-void
.end method

.method public setMarginPercent(Lcom/facebook/yoga/YogaEdge;F)V
    .locals 2

    .line 468
    iget v0, p0, Lcom/facebook/yoga/YogaNode;->mEdgeSetFlag:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/yoga/YogaNode;->mEdgeSetFlag:I

    .line 469
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-virtual {p1}, Lcom/facebook/yoga/YogaEdge;->intValue()I

    move-result p1

    invoke-static {v0, v1, p1, p2}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeStyleSetMarginPercent(JIF)V

    return-void
.end method

.method public setMaxHeight(F)V
    .locals 2

    .line 624
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-static {v0, v1, p1}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeStyleSetMaxHeight(JF)V

    return-void
.end method

.method public setMaxHeightPercent(F)V
    .locals 2

    .line 629
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-static {v0, v1, p1}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeStyleSetMaxHeightPercent(JF)V

    return-void
.end method

.method public setMaxWidth(F)V
    .locals 2

    .line 609
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-static {v0, v1, p1}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeStyleSetMaxWidth(JF)V

    return-void
.end method

.method public setMaxWidthPercent(F)V
    .locals 2

    .line 614
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-static {v0, v1, p1}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeStyleSetMaxWidthPercent(JF)V

    return-void
.end method

.method public setMeasureFunction(Lcom/facebook/yoga/YogaMeasureFunction;)V
    .locals 2

    .line 725
    iput-object p1, p0, Lcom/facebook/yoga/YogaNode;->mMeasureFunction:Lcom/facebook/yoga/YogaMeasureFunction;

    .line 726
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, v1, p1}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeSetHasMeasureFunc(JZ)V

    return-void
.end method

.method public setMinHeight(F)V
    .locals 2

    .line 594
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-static {v0, v1, p1}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeStyleSetMinHeight(JF)V

    return-void
.end method

.method public setMinHeightPercent(F)V
    .locals 2

    .line 599
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-static {v0, v1, p1}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeStyleSetMinHeightPercent(JF)V

    return-void
.end method

.method public setMinWidth(F)V
    .locals 2

    .line 579
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-static {v0, v1, p1}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeStyleSetMinWidth(JF)V

    return-void
.end method

.method public setMinWidthPercent(F)V
    .locals 2

    .line 584
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-static {v0, v1, p1}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeStyleSetMinWidthPercent(JF)V

    return-void
.end method

.method public setOverflow(Lcom/facebook/yoga/YogaOverflow;)V
    .locals 2

    .line 394
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-virtual {p1}, Lcom/facebook/yoga/YogaOverflow;->intValue()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeStyleSetOverflow(JI)V

    return-void
.end method

.method public setPadding(Lcom/facebook/yoga/YogaEdge;F)V
    .locals 2

    .line 488
    iget v0, p0, Lcom/facebook/yoga/YogaNode;->mEdgeSetFlag:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/facebook/yoga/YogaNode;->mEdgeSetFlag:I

    .line 489
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-virtual {p1}, Lcom/facebook/yoga/YogaEdge;->intValue()I

    move-result p1

    invoke-static {v0, v1, p1, p2}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeStyleSetPadding(JIF)V

    return-void
.end method

.method public setPaddingPercent(Lcom/facebook/yoga/YogaEdge;F)V
    .locals 2

    .line 494
    iget v0, p0, Lcom/facebook/yoga/YogaNode;->mEdgeSetFlag:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/facebook/yoga/YogaNode;->mEdgeSetFlag:I

    .line 495
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-virtual {p1}, Lcom/facebook/yoga/YogaEdge;->intValue()I

    move-result p1

    invoke-static {v0, v1, p1, p2}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeStyleSetPaddingPercent(JIF)V

    return-void
.end method

.method public setPosition(Lcom/facebook/yoga/YogaEdge;F)V
    .locals 2

    const/4 v0, 0x1

    .line 522
    iput-boolean v0, p0, Lcom/facebook/yoga/YogaNode;->mHasSetPosition:Z

    .line 523
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-virtual {p1}, Lcom/facebook/yoga/YogaEdge;->intValue()I

    move-result p1

    invoke-static {v0, v1, p1, p2}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeStyleSetPosition(JIF)V

    return-void
.end method

.method public setPositionPercent(Lcom/facebook/yoga/YogaEdge;F)V
    .locals 2

    const/4 v0, 0x1

    .line 528
    iput-boolean v0, p0, Lcom/facebook/yoga/YogaNode;->mHasSetPosition:Z

    .line 529
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-virtual {p1}, Lcom/facebook/yoga/YogaEdge;->intValue()I

    move-result p1

    invoke-static {v0, v1, p1, p2}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeStyleSetPositionPercent(JIF)V

    return-void
.end method

.method public setPositionType(Lcom/facebook/yoga/YogaPositionType;)V
    .locals 2

    .line 379
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-virtual {p1}, Lcom/facebook/yoga/YogaPositionType;->intValue()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeStyleSetPositionType(JI)V

    return-void
.end method

.method public setWidth(F)V
    .locals 2

    .line 539
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-static {v0, v1, p1}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeStyleSetWidth(JF)V

    return-void
.end method

.method public setWidthAuto()V
    .locals 2

    .line 549
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeStyleSetWidthAuto(J)V

    return-void
.end method

.method public setWidthPercent(F)V
    .locals 2

    .line 544
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-static {v0, v1, p1}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeStyleSetWidthPercent(JF)V

    return-void
.end method

.method public setWrap(Lcom/facebook/yoga/YogaWrap;)V
    .locals 2

    .line 384
    iget-wide v0, p0, Lcom/facebook/yoga/YogaNode;->mNativePointer:J

    invoke-virtual {p1}, Lcom/facebook/yoga/YogaWrap;->intValue()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/facebook/yoga/YogaNode;->jni_YGNodeStyleSetFlexWrap(JI)V

    return-void
.end method
