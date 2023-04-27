.class Lcom/facebook/react/animated/InterpolationAnimatedNode;
.super Lcom/facebook/react/animated/ValueAnimatedNode;
.source "InterpolationAnimatedNode.java"


# static fields
.field public static final EXTRAPOLATE_TYPE_CLAMP:Ljava/lang/String; = "clamp"

.field public static final EXTRAPOLATE_TYPE_EXTEND:Ljava/lang/String; = "extend"

.field public static final EXTRAPOLATE_TYPE_IDENTITY:Ljava/lang/String; = "identity"


# instance fields
.field private final mExtrapolateLeft:Ljava/lang/String;

.field private final mExtrapolateRight:Ljava/lang/String;

.field private final mInputRange:[D

.field private final mOutputRange:[D

.field private mParent:Lcom/facebook/react/animated/ValueAnimatedNode;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 1
    .param p1, "config"    # Lcom/facebook/react/bridge/ReadableMap;

    .line 112
    invoke-direct {p0}, Lcom/facebook/react/animated/ValueAnimatedNode;-><init>()V

    .line 113
    const-string v0, "inputRange"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/react/animated/InterpolationAnimatedNode;->fromDoubleArray(Lcom/facebook/react/bridge/ReadableArray;)[D

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mInputRange:[D

    .line 114
    const-string v0, "outputRange"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/react/animated/InterpolationAnimatedNode;->fromDoubleArray(Lcom/facebook/react/bridge/ReadableArray;)[D

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mOutputRange:[D

    .line 115
    const-string v0, "extrapolateLeft"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mExtrapolateLeft:Ljava/lang/String;

    .line 116
    const-string v0, "extrapolateRight"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mExtrapolateRight:Ljava/lang/String;

    .line 117
    return-void
.end method

.method private static findRangeIndex(D[D)I
    .locals 4
    .param p0, "value"    # D
    .param p2, "ranges"    # [D

    .line 98
    const/4 v0, 0x1

    .local v0, "index":I
    :goto_0
    array-length v1, p2

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 99
    aget-wide v1, p2, v0

    cmpl-double v3, v1, p0

    if-ltz v3, :cond_0

    .line 100
    goto :goto_1

    .line 98
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_1
    :goto_1
    add-int/lit8 v1, v0, -0x1

    return v1
.end method

.method private static fromDoubleArray(Lcom/facebook/react/bridge/ReadableArray;)[D
    .locals 4
    .param p0, "ary"    # Lcom/facebook/react/bridge/ReadableArray;

    .line 26
    invoke-interface {p0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v0

    new-array v0, v0, [D

    .line 27
    .local v0, "res":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 28
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 27
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 30
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static interpolate(DDDDDLjava/lang/String;Ljava/lang/String;)D
    .locals 13
    .param p0, "value"    # D
    .param p2, "inputMin"    # D
    .param p4, "inputMax"    # D
    .param p6, "outputMin"    # D
    .param p8, "outputMax"    # D
    .param p10, "extrapolateLeft"    # Ljava/lang/String;
    .param p11, "extrapolateRight"    # Ljava/lang/String;

    .line 41
    move-object/from16 v0, p10

    move-object/from16 v1, p11

    move-wide v2, p0

    .line 44
    .local v2, "result":D
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    const-string v7, "Invalid extrapolation type "

    const-string v8, "clamp"

    const-string v9, "identity"

    const-string v10, "extend"

    const/4 v11, -0x1

    cmpg-double v12, v2, p2

    if-gez v12, :cond_1

    .line 45
    invoke-virtual/range {p10 .. p10}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v12, 0x1

    goto :goto_1

    :sswitch_1
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v12, 0x0

    goto :goto_1

    :sswitch_2
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v12, 0x2

    goto :goto_1

    :goto_0
    const/4 v12, -0x1

    :goto_1
    packed-switch v12, :pswitch_data_0

    .line 54
    new-instance v4, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "for left extrapolation"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 52
    :pswitch_0
    goto :goto_2

    .line 49
    :pswitch_1
    move-wide v2, p2

    .line 50
    goto :goto_2

    .line 47
    :pswitch_2
    return-wide v2

    .line 59
    :cond_1
    :goto_2
    cmpl-double v12, v2, p4

    if-lez v12, :cond_3

    .line 60
    invoke-virtual/range {p11 .. p11}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_1

    :cond_2
    goto :goto_3

    :sswitch_3
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_4

    :sswitch_4
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    goto :goto_4

    :sswitch_5
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x2

    goto :goto_4

    :goto_3
    const/4 v4, -0x1

    :goto_4
    packed-switch v4, :pswitch_data_1

    .line 69
    new-instance v4, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "for right extrapolation"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 67
    :pswitch_3
    goto :goto_5

    .line 64
    :pswitch_4
    move-wide/from16 v2, p4

    .line 65
    goto :goto_5

    .line 62
    :pswitch_5
    return-wide v2

    .line 74
    :cond_3
    :goto_5
    sub-double v4, p8, p6

    sub-double v6, v2, p2

    mul-double v4, v4, v6

    sub-double v6, p4, p2

    div-double/2addr v4, v6

    add-double v4, p6, v4

    return-wide v4

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4cd540e6 -> :sswitch_2
        -0x8178f42 -> :sswitch_1
        0x5a5a8bb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x4cd540e6 -> :sswitch_5
        -0x8178f42 -> :sswitch_4
        0x5a5a8bb -> :sswitch_3
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method static interpolate(D[D[DLjava/lang/String;Ljava/lang/String;)D
    .locals 13
    .param p0, "value"    # D
    .param p2, "inputRange"    # [D
    .param p3, "outputRange"    # [D
    .param p4, "extrapolateLeft"    # Ljava/lang/String;
    .param p5, "extrapolateRight"    # Ljava/lang/String;

    .line 85
    invoke-static {p0, p1, p2}, Lcom/facebook/react/animated/InterpolationAnimatedNode;->findRangeIndex(D[D)I

    move-result v0

    .line 86
    .local v0, "rangeIndex":I
    aget-wide v3, p2, v0

    add-int/lit8 v1, v0, 0x1

    aget-wide v5, p2, v1

    aget-wide v7, p3, v0

    add-int/lit8 v1, v0, 0x1

    aget-wide v9, p3, v1

    move-wide v1, p0

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    invoke-static/range {v1 .. v12}, Lcom/facebook/react/animated/InterpolationAnimatedNode;->interpolate(DDDDDLjava/lang/String;Ljava/lang/String;)D

    move-result-wide v1

    return-wide v1
.end method


# virtual methods
.method public onAttachedToNode(Lcom/facebook/react/animated/AnimatedNode;)V
    .locals 2
    .param p1, "parent"    # Lcom/facebook/react/animated/AnimatedNode;

    .line 121
    iget-object v0, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mParent:Lcom/facebook/react/animated/ValueAnimatedNode;

    if-nez v0, :cond_1

    .line 124
    instance-of v0, p1, Lcom/facebook/react/animated/ValueAnimatedNode;

    if-eqz v0, :cond_0

    .line 127
    move-object v0, p1

    check-cast v0, Lcom/facebook/react/animated/ValueAnimatedNode;

    iput-object v0, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mParent:Lcom/facebook/react/animated/ValueAnimatedNode;

    .line 128
    return-void

    .line 125
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parent is of an invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Parent already attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onDetachedFromNode(Lcom/facebook/react/animated/AnimatedNode;)V
    .locals 2
    .param p1, "parent"    # Lcom/facebook/react/animated/AnimatedNode;

    .line 132
    iget-object v0, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mParent:Lcom/facebook/react/animated/ValueAnimatedNode;

    if-ne p1, v0, :cond_0

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mParent:Lcom/facebook/react/animated/ValueAnimatedNode;

    .line 136
    return-void

    .line 133
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid parent node provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public update()V
    .locals 7

    .line 140
    iget-object v0, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mParent:Lcom/facebook/react/animated/ValueAnimatedNode;

    if-nez v0, :cond_0

    .line 143
    return-void

    .line 145
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/react/animated/ValueAnimatedNode;->getValue()D

    move-result-wide v1

    iget-object v3, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mInputRange:[D

    iget-object v4, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mOutputRange:[D

    iget-object v5, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mExtrapolateLeft:Ljava/lang/String;

    iget-object v6, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mExtrapolateRight:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/facebook/react/animated/InterpolationAnimatedNode;->interpolate(D[D[DLjava/lang/String;Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mValue:D

    .line 146
    return-void
.end method
