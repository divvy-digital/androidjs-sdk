.class public Landroidx/constraintlayout/solver/widgets/Optimizer;
.super Ljava/lang/Object;
.source "Optimizer.java"


# static fields
.field static final FLAG_CHAIN_DANGLING:I = 0x1

.field static final FLAG_RECOMPUTE_BOUNDS:I = 0x2

.field static final FLAG_USE_OPTIMIZE:I = 0x0

.field public static final OPTIMIZATION_BARRIER:I = 0x2

.field public static final OPTIMIZATION_CHAIN:I = 0x4

.field public static final OPTIMIZATION_DIMENSIONS:I = 0x8

.field public static final OPTIMIZATION_DIRECT:I = 0x1

.field public static final OPTIMIZATION_GROUPS:I = 0x20

.field public static final OPTIMIZATION_NONE:I = 0x0

.field public static final OPTIMIZATION_RATIO:I = 0x10

.field public static final OPTIMIZATION_STANDARD:I = 0x7

.field static flags:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const/4 v0, 0x3

    new-array v0, v0, [Z

    sput-object v0, Landroidx/constraintlayout/solver/widgets/Optimizer;->flags:[Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static analyze(ILandroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 16
    .param p0, "optimisationLevel"    # I
    .param p1, "widget"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 152
    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->updateResolutionNodes()V

    .line 154
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v1

    .line 155
    .local v1, "leftNode":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v2

    .line 156
    .local v2, "topNode":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v3

    .line 157
    .local v3, "rightNode":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    iget-object v4, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v4

    .line 159
    .local v4, "bottomNode":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    and-int/lit8 v5, p0, 0x8

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v8, 0x8

    if-ne v5, v8, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 163
    .local v5, "optimiseDimensions":Z
    :goto_0
    iget-object v9, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v9, v9, v6

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v9, v10, :cond_1

    .line 164
    invoke-static {v0, v6}, Landroidx/constraintlayout/solver/widgets/Optimizer;->optimizableMatchConstraint(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    .line 166
    .local v9, "isOptimizableHorizontalMatch":Z
    :goto_1
    iget v10, v1, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    const/4 v11, 0x3

    const/4 v12, 0x4

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x2

    if-eq v10, v12, :cond_13

    iget v10, v3, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    if-eq v10, v12, :cond_13

    .line 168
    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v10, v10, v6

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v10, v6, :cond_b

    if-eqz v9, :cond_2

    .line 169
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v6

    if-ne v6, v8, :cond_2

    goto/16 :goto_2

    .line 208
    :cond_2
    if-eqz v9, :cond_13

    .line 209
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v6

    .line 215
    .local v6, "width":I
    invoke-virtual {v1, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 216
    invoke-virtual {v3, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 217
    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v10, :cond_4

    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v10, :cond_4

    .line 218
    if-eqz v5, :cond_3

    .line 219
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v3, v1, v7, v10}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_3

    .line 221
    :cond_3
    invoke-virtual {v3, v1, v6}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_3

    .line 223
    :cond_4
    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_6

    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v10, :cond_6

    .line 224
    if-eqz v5, :cond_5

    .line 225
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v3, v1, v7, v10}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_3

    .line 227
    :cond_5
    invoke-virtual {v3, v1, v6}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_3

    .line 229
    :cond_6
    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v10, :cond_8

    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_8

    .line 230
    if-eqz v5, :cond_7

    .line 231
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v1, v3, v14, v10}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_3

    .line 233
    :cond_7
    neg-int v10, v6

    invoke-virtual {v1, v3, v10}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_3

    .line 235
    :cond_8
    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_13

    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_13

    .line 236
    if-eqz v5, :cond_9

    .line 237
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->addDependent(Landroidx/constraintlayout/solver/widgets/ResolutionNode;)V

    .line 238
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->addDependent(Landroidx/constraintlayout/solver/widgets/ResolutionNode;)V

    .line 240
    :cond_9
    iget v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v10, v10, v13

    if-nez v10, :cond_a

    .line 241
    invoke-virtual {v1, v11}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 242
    invoke-virtual {v3, v11}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 243
    invoke-virtual {v1, v3, v13}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 244
    invoke-virtual {v3, v1, v13}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    goto/16 :goto_3

    .line 247
    :cond_a
    invoke-virtual {v1, v15}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 248
    invoke-virtual {v3, v15}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 249
    neg-int v10, v6

    int-to-float v10, v10

    invoke-virtual {v1, v3, v10}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 250
    int-to-float v10, v6

    invoke-virtual {v3, v1, v10}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 251
    invoke-virtual {v0, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    goto/16 :goto_3

    .line 170
    .end local v6    # "width":I
    :cond_b
    :goto_2
    iget-object v6, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v6, :cond_d

    iget-object v6, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v6, :cond_d

    .line 171
    invoke-virtual {v1, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 172
    invoke-virtual {v3, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 173
    if-eqz v5, :cond_c

    .line 174
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v6

    invoke-virtual {v3, v1, v7, v6}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_3

    .line 176
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v6

    invoke-virtual {v3, v1, v6}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_3

    .line 178
    :cond_d
    iget-object v6, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_f

    iget-object v6, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v6, :cond_f

    .line 179
    invoke-virtual {v1, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 180
    invoke-virtual {v3, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 181
    if-eqz v5, :cond_e

    .line 182
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v6

    invoke-virtual {v3, v1, v7, v6}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_3

    .line 184
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v6

    invoke-virtual {v3, v1, v6}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto :goto_3

    .line 186
    :cond_f
    iget-object v6, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v6, :cond_11

    iget-object v6, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_11

    .line 187
    invoke-virtual {v1, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 188
    invoke-virtual {v3, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 189
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v6

    neg-int v6, v6

    invoke-virtual {v1, v3, v6}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    .line 190
    if-eqz v5, :cond_10

    .line 191
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v6

    invoke-virtual {v1, v3, v14, v6}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    goto :goto_3

    .line 193
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v6

    neg-int v6, v6

    invoke-virtual {v1, v3, v6}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto :goto_3

    .line 195
    :cond_11
    iget-object v6, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_13

    iget-object v6, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_13

    .line 196
    invoke-virtual {v1, v15}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 197
    invoke-virtual {v3, v15}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 198
    if-eqz v5, :cond_12

    .line 199
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->addDependent(Landroidx/constraintlayout/solver/widgets/ResolutionNode;)V

    .line 200
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->addDependent(Landroidx/constraintlayout/solver/widgets/ResolutionNode;)V

    .line 201
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v6

    invoke-virtual {v1, v3, v14, v6}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    .line 202
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v6

    invoke-virtual {v3, v1, v7, v6}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    goto :goto_3

    .line 204
    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v1, v3, v6}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 205
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v3, v1, v6}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 259
    :cond_13
    :goto_3
    iget-object v6, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v6, v6, v7

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v10, :cond_14

    .line 260
    invoke-static {v0, v7}, Landroidx/constraintlayout/solver/widgets/Optimizer;->optimizableMatchConstraint(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)Z

    move-result v6

    if-eqz v6, :cond_14

    const/4 v6, 0x1

    goto :goto_4

    :cond_14
    const/4 v6, 0x0

    .line 262
    .local v6, "isOptimizableVerticalMatch":Z
    :goto_4
    iget v10, v2, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    if-eq v10, v12, :cond_26

    iget v10, v4, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    if-eq v10, v12, :cond_26

    .line 265
    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v10, v10, v7

    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v10, v12, :cond_1e

    if-eqz v6, :cond_15

    .line 266
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v10

    if-ne v10, v8, :cond_15

    goto/16 :goto_5

    .line 318
    :cond_15
    if-eqz v6, :cond_26

    .line 319
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v8

    .line 324
    .local v8, "height":I
    invoke-virtual {v2, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 325
    invoke-virtual {v4, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 326
    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v10, :cond_17

    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v10, :cond_17

    .line 327
    if-eqz v5, :cond_16

    .line 328
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v4, v2, v7, v10}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_a

    .line 330
    :cond_16
    invoke-virtual {v4, v2, v8}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_a

    .line 332
    :cond_17
    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_19

    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v10, :cond_19

    .line 333
    if-eqz v5, :cond_18

    .line 334
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v4, v2, v7, v10}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_a

    .line 336
    :cond_18
    invoke-virtual {v4, v2, v8}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_a

    .line 338
    :cond_19
    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v10, :cond_1b

    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_1b

    .line 339
    if-eqz v5, :cond_1a

    .line 340
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v7

    invoke-virtual {v2, v4, v14, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_a

    .line 342
    :cond_1a
    neg-int v7, v8

    invoke-virtual {v2, v4, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_a

    .line 344
    :cond_1b
    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_26

    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_26

    .line 345
    if-eqz v5, :cond_1c

    .line 346
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->addDependent(Landroidx/constraintlayout/solver/widgets/ResolutionNode;)V

    .line 347
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->addDependent(Landroidx/constraintlayout/solver/widgets/ResolutionNode;)V

    .line 349
    :cond_1c
    iget v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v10, v10, v13

    if-nez v10, :cond_1d

    .line 350
    invoke-virtual {v2, v11}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 351
    invoke-virtual {v4, v11}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 352
    invoke-virtual {v2, v4, v13}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 353
    invoke-virtual {v4, v2, v13}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    goto/16 :goto_a

    .line 355
    :cond_1d
    invoke-virtual {v2, v15}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 356
    invoke-virtual {v4, v15}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 357
    neg-int v10, v8

    int-to-float v10, v10

    invoke-virtual {v2, v4, v10}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 358
    int-to-float v10, v8

    invoke-virtual {v4, v2, v10}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 359
    invoke-virtual {v0, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 360
    iget v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v10, :cond_26

    .line 361
    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v10

    iget v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    invoke-virtual {v10, v7, v2, v11}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(ILandroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_a

    .line 267
    .end local v8    # "height":I
    :cond_1e
    :goto_5
    iget-object v8, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v8, :cond_20

    iget-object v8, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v8, :cond_20

    .line 268
    invoke-virtual {v2, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 269
    invoke-virtual {v4, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 270
    if-eqz v5, :cond_1f

    .line 271
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v8

    invoke-virtual {v4, v2, v7, v8}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    goto :goto_6

    .line 273
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v8

    invoke-virtual {v4, v2, v8}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    .line 275
    :goto_6
    iget-object v8, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_26

    .line 276
    iget-object v8, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 277
    iget-object v8, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 278
    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v8

    iget v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    neg-int v10, v10

    .line 277
    invoke-virtual {v2, v7, v8, v10}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(ILandroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_a

    .line 280
    :cond_20
    iget-object v8, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_22

    iget-object v8, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v8, :cond_22

    .line 281
    invoke-virtual {v2, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 282
    invoke-virtual {v4, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 283
    if-eqz v5, :cond_21

    .line 284
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v8

    invoke-virtual {v4, v2, v7, v8}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    goto :goto_7

    .line 286
    :cond_21
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v8

    invoke-virtual {v4, v2, v8}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    .line 288
    :goto_7
    iget v8, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v8, :cond_26

    .line 289
    iget-object v8, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v8

    iget v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    invoke-virtual {v8, v7, v2, v10}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(ILandroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_a

    .line 291
    :cond_22
    iget-object v8, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v8, :cond_24

    iget-object v8, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_24

    .line 292
    invoke-virtual {v2, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 293
    invoke-virtual {v4, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 294
    if-eqz v5, :cond_23

    .line 295
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v8

    invoke-virtual {v2, v4, v14, v8}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    goto :goto_8

    .line 297
    :cond_23
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v8

    neg-int v8, v8

    invoke-virtual {v2, v4, v8}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    .line 299
    :goto_8
    iget v8, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v8, :cond_26

    .line 300
    iget-object v8, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v8

    iget v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    invoke-virtual {v8, v7, v2, v10}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(ILandroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto :goto_a

    .line 302
    :cond_24
    iget-object v8, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_26

    iget-object v8, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_26

    .line 303
    invoke-virtual {v2, v15}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 304
    invoke-virtual {v4, v15}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 305
    if-eqz v5, :cond_25

    .line 306
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v8

    invoke-virtual {v2, v4, v14, v8}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    .line 307
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v8

    invoke-virtual {v4, v2, v7, v8}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    .line 308
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->addDependent(Landroidx/constraintlayout/solver/widgets/ResolutionNode;)V

    .line 309
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->addDependent(Landroidx/constraintlayout/solver/widgets/ResolutionNode;)V

    goto :goto_9

    .line 311
    :cond_25
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    invoke-virtual {v2, v4, v8}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 312
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v4, v2, v8}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 314
    :goto_9
    iget v8, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v8, :cond_26

    .line 315
    iget-object v8, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v8

    iget v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    invoke-virtual {v8, v7, v2, v10}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(ILandroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    .line 367
    :cond_26
    :goto_a
    return-void
.end method

.method static applyChainOptimized(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/LinearSystem;IILandroidx/constraintlayout/solver/widgets/ChainHead;)Z
    .locals 40
    .param p0, "container"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    .param p1, "system"    # Landroidx/constraintlayout/solver/LinearSystem;
    .param p2, "orientation"    # I
    .param p3, "offset"    # I
    .param p4, "chainHead"    # Landroidx/constraintlayout/solver/widgets/ChainHead;

    .line 383
    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p4

    iget-object v3, v2, Landroidx/constraintlayout/solver/widgets/ChainHead;->mFirst:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 384
    .local v3, "first":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget-object v4, v2, Landroidx/constraintlayout/solver/widgets/ChainHead;->mLast:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 385
    .local v4, "last":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget-object v5, v2, Landroidx/constraintlayout/solver/widgets/ChainHead;->mFirstVisibleWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 386
    .local v5, "firstVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget-object v6, v2, Landroidx/constraintlayout/solver/widgets/ChainHead;->mLastVisibleWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 387
    .local v6, "lastVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget-object v7, v2, Landroidx/constraintlayout/solver/widgets/ChainHead;->mHead:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 389
    .local v7, "head":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v8, v3

    .line 390
    .local v8, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    const/4 v9, 0x0

    .line 391
    .local v9, "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    const/4 v10, 0x0

    .line 393
    .local v10, "done":Z
    const/4 v11, 0x0

    .line 394
    .local v11, "numMatchConstraints":I
    iget v12, v2, Landroidx/constraintlayout/solver/widgets/ChainHead;->mTotalWeight:F

    .line 395
    .local v12, "totalWeights":F
    iget-object v13, v2, Landroidx/constraintlayout/solver/widgets/ChainHead;->mFirstMatchConstraintWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 396
    .local v13, "firstMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget-object v14, v2, Landroidx/constraintlayout/solver/widgets/ChainHead;->mLastMatchConstraintWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 398
    .local v14, "previousMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v15, p0

    iget-object v2, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v2, v2, v1

    move-object/from16 v16, v8

    .end local v8    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v16, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/16 v17, 0x0

    move-object/from16 v18, v9

    .end local v9    # "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v18, "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-ne v2, v8, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 399
    .local v2, "isWrapContent":Z
    :goto_0
    const/4 v8, 0x0

    .line 400
    .local v8, "isChainSpread":Z
    const/16 v19, 0x0

    .line 401
    .local v19, "isChainSpreadInside":Z
    const/16 v20, 0x0

    .line 403
    .local v20, "isChainPacked":Z
    if-nez v1, :cond_4

    .line 404
    iget v9, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    if-nez v9, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    move v8, v9

    .line 405
    iget v9, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    move/from16 v22, v2

    const/4 v2, 0x1

    .end local v2    # "isWrapContent":Z
    .local v22, "isWrapContent":Z
    if-ne v9, v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 406
    .end local v19    # "isChainSpreadInside":Z
    .local v2, "isChainSpreadInside":Z
    :goto_2
    iget v9, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    move/from16 v19, v2

    const/4 v2, 0x2

    .end local v2    # "isChainSpreadInside":Z
    .restart local v19    # "isChainSpreadInside":Z
    if-ne v9, v2, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    move v9, v8

    move v8, v2

    move/from16 v2, v19

    .end local v20    # "isChainPacked":Z
    .local v2, "isChainPacked":Z
    goto :goto_7

    .line 408
    .end local v22    # "isWrapContent":Z
    .local v2, "isWrapContent":Z
    .restart local v20    # "isChainPacked":Z
    :cond_4
    move/from16 v22, v2

    .end local v2    # "isWrapContent":Z
    .restart local v22    # "isWrapContent":Z
    iget v2, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    if-nez v2, :cond_5

    const/4 v2, 0x1

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    move v8, v2

    .line 409
    iget v2, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    const/4 v9, 0x1

    if-ne v2, v9, :cond_6

    const/4 v2, 0x1

    goto :goto_5

    :cond_6
    const/4 v2, 0x0

    .line 410
    .end local v19    # "isChainSpreadInside":Z
    .local v2, "isChainSpreadInside":Z
    :goto_5
    iget v9, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    move/from16 v19, v2

    const/4 v2, 0x2

    .end local v2    # "isChainSpreadInside":Z
    .restart local v19    # "isChainSpreadInside":Z
    if-ne v9, v2, :cond_7

    const/4 v2, 0x1

    goto :goto_6

    :cond_7
    const/4 v2, 0x0

    :goto_6
    move v9, v8

    move v8, v2

    move/from16 v2, v19

    .line 417
    .end local v19    # "isChainSpreadInside":Z
    .end local v20    # "isChainPacked":Z
    .restart local v2    # "isChainSpreadInside":Z
    .local v8, "isChainPacked":Z
    .local v9, "isChainSpread":Z
    :goto_7
    const/16 v19, 0x0

    .line 418
    .local v19, "totalSize":F
    const/16 v20, 0x0

    .line 419
    .local v20, "totalMargins":F
    const/16 v21, 0x0

    move-object/from16 v38, v16

    move-object/from16 v16, v7

    move v7, v11

    move v11, v10

    move-object/from16 v10, v38

    move/from16 v39, v21

    move-object/from16 v21, v13

    move/from16 v13, v39

    .line 421
    .local v7, "numMatchConstraints":I
    .local v10, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v11, "done":Z
    .local v13, "numVisibleWidgets":I
    .local v16, "head":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v21, "firstMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_8
    const/16 v23, 0x0

    move-object/from16 v24, v14

    .end local v14    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v24, "previousMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    const/16 v14, 0x8

    if-nez v11, :cond_17

    .line 423
    move/from16 v25, v11

    .end local v11    # "done":Z
    .local v25, "done":Z
    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v11

    if-eq v11, v14, :cond_b

    .line 424
    add-int/lit8 v13, v13, 0x1

    .line 425
    if-nez v1, :cond_8

    .line 426
    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v11

    int-to-float v11, v11

    add-float v19, v19, v11

    goto :goto_9

    .line 428
    :cond_8
    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v11

    int-to-float v11, v11

    add-float v19, v19, v11

    .line 430
    :goto_9
    if-eq v10, v5, :cond_9

    .line 431
    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v11, v11, p3

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v11

    int-to-float v11, v11

    add-float v19, v19, v11

    .line 433
    :cond_9
    if-eq v10, v6, :cond_a

    .line 434
    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v26, p3, 0x1

    aget-object v11, v11, v26

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v11

    int-to-float v11, v11

    add-float v19, v19, v11

    .line 436
    :cond_a
    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v11, v11, p3

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v11

    int-to-float v11, v11

    add-float v20, v20, v11

    .line 437
    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v26, p3, 0x1

    aget-object v11, v11, v26

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v11

    int-to-float v11, v11

    add-float v20, v20, v11

    .line 440
    :cond_b
    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v11, v11, p3

    .line 442
    .local v11, "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object/from16 v26, v11

    .end local v11    # "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .local v26, "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v11

    if-eq v11, v14, :cond_12

    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v11, v11, v1

    sget-object v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v11, v14, :cond_12

    .line 444
    add-int/lit8 v7, v7, 0x1

    .line 446
    if-nez v1, :cond_e

    .line 447
    iget v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-eqz v11, :cond_c

    .line 448
    return v17

    .line 449
    :cond_c
    iget v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-nez v11, :cond_d

    iget v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-eqz v11, :cond_10

    .line 450
    :cond_d
    return v17

    .line 453
    :cond_e
    iget v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-eqz v11, :cond_f

    .line 454
    return v17

    .line 455
    :cond_f
    iget v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-nez v11, :cond_11

    iget v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-eqz v11, :cond_10

    goto :goto_a

    .line 459
    :cond_10
    iget v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v11, v11, v23

    if-eqz v11, :cond_12

    .line 460
    return v17

    .line 456
    :cond_11
    :goto_a
    return v17

    .line 465
    :cond_12
    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v14, p3, 0x1

    aget-object v11, v11, v14

    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 466
    .local v11, "nextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    if-eqz v11, :cond_15

    .line 467
    iget-object v14, v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 468
    .end local v18    # "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v14, "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move/from16 v23, v7

    .end local v7    # "numMatchConstraints":I
    .local v23, "numMatchConstraints":I
    iget-object v7, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, p3

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_14

    iget-object v7, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, p3

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eq v7, v10, :cond_13

    goto :goto_b

    :cond_13
    move-object/from16 v18, v14

    goto :goto_c

    .line 469
    :cond_14
    :goto_b
    const/4 v7, 0x0

    move-object/from16 v18, v7

    .end local v14    # "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v7, "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    goto :goto_c

    .line 472
    .end local v23    # "numMatchConstraints":I
    .local v7, "numMatchConstraints":I
    .restart local v18    # "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_15
    move/from16 v23, v7

    .end local v7    # "numMatchConstraints":I
    .restart local v23    # "numMatchConstraints":I
    const/4 v7, 0x0

    move-object/from16 v18, v7

    .line 474
    :goto_c
    if-eqz v18, :cond_16

    .line 475
    move-object/from16 v7, v18

    move-object v10, v7

    move/from16 v11, v25

    .end local v10    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v7, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    goto :goto_d

    .line 477
    .end local v7    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v10    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_16
    const/4 v7, 0x1

    move v11, v7

    .line 479
    .end local v25    # "done":Z
    .end local v26    # "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .local v11, "done":Z
    :goto_d
    move/from16 v7, v23

    move-object/from16 v14, v24

    goto/16 :goto_8

    .line 481
    .end local v23    # "numMatchConstraints":I
    .local v7, "numMatchConstraints":I
    :cond_17
    move/from16 v25, v11

    .end local v11    # "done":Z
    .restart local v25    # "done":Z
    iget-object v11, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v11, v11, p3

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v11

    .line 482
    .local v11, "firstNode":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    iget-object v14, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v27, p3, 0x1

    aget-object v14, v14, v27

    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v14

    .line 484
    .local v14, "lastNode":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    iget-object v15, v11, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    if-eqz v15, :cond_42

    iget-object v15, v14, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    if-nez v15, :cond_18

    move/from16 v27, v2

    move-object/from16 v32, v6

    move/from16 v35, v7

    move/from16 v33, v8

    move/from16 v34, v9

    move/from16 v23, v12

    move-object/from16 v36, v14

    move-object v9, v0

    move-object v8, v3

    move v3, v13

    goto/16 :goto_25

    .line 490
    :cond_18
    iget-object v15, v11, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget v15, v15, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    const/4 v0, 0x1

    if-ne v15, v0, :cond_41

    iget-object v15, v14, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget v15, v15, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    if-eq v15, v0, :cond_19

    move/from16 v27, v2

    move-object/from16 v32, v6

    move/from16 v35, v7

    move/from16 v33, v8

    move/from16 v34, v9

    move/from16 v23, v12

    move-object/from16 v36, v14

    move-object/from16 v9, p1

    move-object v8, v3

    move v3, v13

    goto/16 :goto_24

    .line 496
    :cond_19
    if-lez v7, :cond_1a

    if-eq v7, v13, :cond_1a

    .line 498
    return v17

    .line 501
    :cond_1a
    const/4 v0, 0x0

    .line 502
    .local v0, "extraMargin":F
    if-nez v8, :cond_1b

    if-nez v9, :cond_1b

    if-eqz v2, :cond_1d

    .line 503
    :cond_1b
    if-eqz v5, :cond_1c

    .line 504
    iget-object v15, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v15, v15, p3

    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v15

    int-to-float v0, v15

    .line 506
    :cond_1c
    if-eqz v6, :cond_1d

    .line 507
    iget-object v15, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v27, p3, 0x1

    aget-object v15, v15, v27

    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v15

    int-to-float v15, v15

    add-float/2addr v0, v15

    .line 511
    :cond_1d
    iget-object v15, v11, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget v15, v15, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 512
    .local v15, "firstOffset":F
    move/from16 v27, v2

    .end local v2    # "isChainSpreadInside":Z
    .local v27, "isChainSpreadInside":Z
    iget-object v2, v14, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 513
    .local v2, "lastOffset":F
    const/16 v28, 0x0

    .line 514
    .local v28, "distance":F
    cmpg-float v29, v15, v2

    if-gez v29, :cond_1e

    .line 515
    sub-float v29, v2, v15

    sub-float v29, v29, v19

    .end local v28    # "distance":F
    .local v29, "distance":F
    goto :goto_e

    .line 517
    .end local v29    # "distance":F
    .restart local v28    # "distance":F
    :cond_1e
    sub-float v29, v15, v2

    sub-float v29, v29, v19

    .line 520
    .end local v28    # "distance":F
    .restart local v29    # "distance":F
    :goto_e
    const-wide/16 v30, 0x1

    if-lez v7, :cond_28

    if-ne v7, v13, :cond_28

    .line 521
    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v28

    if-eqz v28, :cond_1f

    move/from16 v28, v2

    .end local v2    # "lastOffset":F
    .local v28, "lastOffset":F
    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v2

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v2, v2, v1

    move-object/from16 v32, v6

    .end local v6    # "lastVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v32, "lastVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v6, :cond_20

    .line 522
    return v17

    .line 521
    .end local v28    # "lastOffset":F
    .end local v32    # "lastVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v2    # "lastOffset":F
    .restart local v6    # "lastVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_1f
    move/from16 v28, v2

    move-object/from16 v32, v6

    .line 524
    .end local v2    # "lastOffset":F
    .end local v6    # "lastVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v28    # "lastOffset":F
    .restart local v32    # "lastVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_20
    add-float v29, v29, v19

    .line 525
    sub-float v29, v29, v20

    .line 526
    move-object v2, v3

    .line 527
    .end local v10    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v2, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move v6, v15

    .line 528
    .local v6, "position":F
    :goto_f
    if-eqz v2, :cond_27

    .line 529
    sget-object v10, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v10, :cond_21

    .line 530
    sget-object v10, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    move/from16 v33, v8

    move/from16 v34, v9

    .end local v8    # "isChainPacked":Z
    .end local v9    # "isChainSpread":Z
    .local v33, "isChainPacked":Z
    .local v34, "isChainSpread":Z
    iget-wide v8, v10, Landroidx/constraintlayout/solver/Metrics;->nonresolvedWidgets:J

    sub-long v8, v8, v30

    iput-wide v8, v10, Landroidx/constraintlayout/solver/Metrics;->nonresolvedWidgets:J

    .line 531
    sget-object v8, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v9, v8, Landroidx/constraintlayout/solver/Metrics;->resolvedWidgets:J

    add-long v9, v9, v30

    iput-wide v9, v8, Landroidx/constraintlayout/solver/Metrics;->resolvedWidgets:J

    .line 532
    sget-object v8, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v9, v8, Landroidx/constraintlayout/solver/Metrics;->chainConnectionResolved:J

    add-long v9, v9, v30

    iput-wide v9, v8, Landroidx/constraintlayout/solver/Metrics;->chainConnectionResolved:J

    goto :goto_10

    .line 529
    .end local v33    # "isChainPacked":Z
    .end local v34    # "isChainSpread":Z
    .restart local v8    # "isChainPacked":Z
    .restart local v9    # "isChainSpread":Z
    :cond_21
    move/from16 v33, v8

    move/from16 v34, v9

    .line 534
    .end local v8    # "isChainPacked":Z
    .end local v9    # "isChainSpread":Z
    .restart local v33    # "isChainPacked":Z
    .restart local v34    # "isChainSpread":Z
    :goto_10
    iget-object v8, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v18, v8, v1

    .line 535
    if-nez v18, :cond_23

    if-ne v2, v4, :cond_22

    goto :goto_11

    :cond_22
    move-object/from16 v9, p1

    move/from16 v35, v7

    goto :goto_13

    .line 536
    :cond_23
    :goto_11
    int-to-float v8, v7

    div-float v8, v29, v8

    .line 537
    .local v8, "dimension":F
    cmpl-float v9, v12, v23

    if-lez v9, :cond_25

    .line 538
    iget-object v9, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWeight:[F

    aget v9, v9, v1

    const/high16 v10, -0x40800000    # -1.0f

    cmpl-float v9, v9, v10

    if-nez v9, :cond_24

    .line 539
    const/4 v8, 0x0

    goto :goto_12

    .line 541
    :cond_24
    iget-object v9, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWeight:[F

    aget v9, v9, v1

    mul-float v9, v9, v29

    div-float v8, v9, v12

    .line 544
    :cond_25
    :goto_12
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_26

    .line 545
    const/4 v8, 0x0

    .line 547
    :cond_26
    iget-object v9, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v9, v9, p3

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v6, v9

    .line 548
    iget-object v9, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v9, v9, p3

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v9

    iget-object v10, v11, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    invoke-virtual {v9, v10, v6}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolve(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 550
    iget-object v9, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v10, p3, 0x1

    aget-object v9, v9, v10

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v9

    iget-object v10, v11, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move/from16 v35, v7

    .end local v7    # "numMatchConstraints":I
    .local v35, "numMatchConstraints":I
    add-float v7, v6, v8

    invoke-virtual {v9, v10, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolve(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 552
    iget-object v7, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, p3

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v7

    move-object/from16 v9, p1

    invoke-virtual {v7, v9}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 553
    iget-object v7, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v10, p3, 0x1

    aget-object v7, v7, v10

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 554
    add-float/2addr v6, v8

    .line 555
    iget-object v7, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v10, p3, 0x1

    aget-object v7, v7, v10

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    .line 557
    .end local v8    # "dimension":F
    :goto_13
    move-object/from16 v2, v18

    move/from16 v8, v33

    move/from16 v9, v34

    move/from16 v7, v35

    goto/16 :goto_f

    .line 559
    .end local v33    # "isChainPacked":Z
    .end local v34    # "isChainSpread":Z
    .end local v35    # "numMatchConstraints":I
    .restart local v7    # "numMatchConstraints":I
    .local v8, "isChainPacked":Z
    .restart local v9    # "isChainSpread":Z
    :cond_27
    move/from16 v35, v7

    .end local v7    # "numMatchConstraints":I
    .restart local v35    # "numMatchConstraints":I
    const/4 v7, 0x1

    return v7

    .line 520
    .end local v28    # "lastOffset":F
    .end local v32    # "lastVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v35    # "numMatchConstraints":I
    .local v2, "lastOffset":F
    .local v6, "lastVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v7    # "numMatchConstraints":I
    .restart local v10    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_28
    move/from16 v28, v2

    move-object/from16 v32, v6

    move/from16 v35, v7

    move/from16 v33, v8

    move/from16 v34, v9

    move-object/from16 v9, p1

    .line 563
    .end local v2    # "lastOffset":F
    .end local v6    # "lastVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v7    # "numMatchConstraints":I
    .end local v8    # "isChainPacked":Z
    .end local v9    # "isChainSpread":Z
    .restart local v28    # "lastOffset":F
    .restart local v32    # "lastVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v33    # "isChainPacked":Z
    .restart local v34    # "isChainSpread":Z
    .restart local v35    # "numMatchConstraints":I
    cmpg-float v2, v29, v23

    if-gez v2, :cond_29

    .line 564
    const/4 v2, 0x0

    .line 565
    .end local v34    # "isChainSpread":Z
    .local v2, "isChainSpread":Z
    const/4 v6, 0x0

    .line 566
    .end local v27    # "isChainSpreadInside":Z
    .local v6, "isChainSpreadInside":Z
    const/4 v8, 0x1

    move/from16 v34, v2

    move v2, v6

    .end local v33    # "isChainPacked":Z
    .restart local v8    # "isChainPacked":Z
    goto :goto_14

    .line 563
    .end local v2    # "isChainSpread":Z
    .end local v6    # "isChainSpreadInside":Z
    .end local v8    # "isChainPacked":Z
    .restart local v27    # "isChainSpreadInside":Z
    .restart local v33    # "isChainPacked":Z
    .restart local v34    # "isChainSpread":Z
    :cond_29
    move/from16 v2, v27

    move/from16 v8, v33

    .line 569
    .end local v27    # "isChainSpreadInside":Z
    .end local v33    # "isChainPacked":Z
    .local v2, "isChainSpreadInside":Z
    .restart local v8    # "isChainPacked":Z
    :goto_14
    if-eqz v8, :cond_2f

    .line 570
    sub-float v29, v29, v0

    .line 572
    move-object v6, v3

    .line 573
    .end local v10    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v6, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual {v3, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBiasPercent(I)F

    move-result v7

    mul-float v7, v7, v29

    add-float/2addr v7, v15

    move-object v10, v6

    move/from16 v29, v7

    .line 574
    .end local v6    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v10    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_15
    if-eqz v10, :cond_2e

    .line 575
    sget-object v6, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v6, :cond_2a

    .line 576
    sget-object v6, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    move/from16 v17, v8

    .end local v8    # "isChainPacked":Z
    .local v17, "isChainPacked":Z
    iget-wide v7, v6, Landroidx/constraintlayout/solver/Metrics;->nonresolvedWidgets:J

    sub-long v7, v7, v30

    iput-wide v7, v6, Landroidx/constraintlayout/solver/Metrics;->nonresolvedWidgets:J

    .line 577
    sget-object v6, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v7, v6, Landroidx/constraintlayout/solver/Metrics;->resolvedWidgets:J

    add-long v7, v7, v30

    iput-wide v7, v6, Landroidx/constraintlayout/solver/Metrics;->resolvedWidgets:J

    .line 578
    sget-object v6, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v7, v6, Landroidx/constraintlayout/solver/Metrics;->chainConnectionResolved:J

    add-long v7, v7, v30

    iput-wide v7, v6, Landroidx/constraintlayout/solver/Metrics;->chainConnectionResolved:J

    goto :goto_16

    .line 575
    .end local v17    # "isChainPacked":Z
    .restart local v8    # "isChainPacked":Z
    :cond_2a
    move/from16 v17, v8

    .line 580
    .end local v8    # "isChainPacked":Z
    .restart local v17    # "isChainPacked":Z
    :goto_16
    iget-object v6, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v18, v6, v1

    .line 581
    if-nez v18, :cond_2c

    if-ne v10, v4, :cond_2b

    goto :goto_17

    :cond_2b
    move/from16 v23, v12

    move-object/from16 v36, v14

    goto :goto_19

    .line 582
    :cond_2c
    :goto_17
    const/4 v6, 0x0

    .line 583
    .local v6, "dimension":F
    if-nez v1, :cond_2d

    .line 584
    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v7

    int-to-float v6, v7

    goto :goto_18

    .line 586
    :cond_2d
    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v7

    int-to-float v6, v7

    .line 588
    :goto_18
    iget-object v7, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, p3

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    int-to-float v7, v7

    add-float v7, v29, v7

    .line 589
    .end local v29    # "distance":F
    .local v7, "distance":F
    iget-object v8, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v8, v8, p3

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v8

    move/from16 v23, v12

    .end local v12    # "totalWeights":F
    .local v23, "totalWeights":F
    iget-object v12, v11, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    invoke-virtual {v8, v12, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolve(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 591
    iget-object v8, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v8, v8, v12

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v8

    iget-object v12, v11, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-object/from16 v36, v14

    .end local v14    # "lastNode":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    .local v36, "lastNode":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    add-float v14, v7, v6

    invoke-virtual {v8, v12, v14}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolve(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 593
    iget-object v8, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v8, v8, p3

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 594
    iget-object v8, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v8, v8, v12

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 595
    add-float/2addr v7, v6

    .line 596
    iget-object v8, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v8, v8, v12

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v8

    int-to-float v8, v8

    add-float v29, v7, v8

    .line 598
    .end local v6    # "dimension":F
    .end local v7    # "distance":F
    .restart local v29    # "distance":F
    :goto_19
    move-object/from16 v10, v18

    move/from16 v8, v17

    move/from16 v12, v23

    move-object/from16 v14, v36

    goto/16 :goto_15

    .line 574
    .end local v17    # "isChainPacked":Z
    .end local v23    # "totalWeights":F
    .end local v36    # "lastNode":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    .restart local v8    # "isChainPacked":Z
    .restart local v12    # "totalWeights":F
    .restart local v14    # "lastNode":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    :cond_2e
    move/from16 v17, v8

    move/from16 v23, v12

    move-object/from16 v36, v14

    .end local v8    # "isChainPacked":Z
    .end local v12    # "totalWeights":F
    .end local v14    # "lastNode":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    .restart local v17    # "isChainPacked":Z
    .restart local v23    # "totalWeights":F
    .restart local v36    # "lastNode":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    move/from16 v37, v0

    move v6, v2

    move-object v8, v3

    move v3, v13

    goto/16 :goto_23

    .line 600
    .end local v17    # "isChainPacked":Z
    .end local v23    # "totalWeights":F
    .end local v36    # "lastNode":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    .restart local v8    # "isChainPacked":Z
    .restart local v12    # "totalWeights":F
    .restart local v14    # "lastNode":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    :cond_2f
    move/from16 v17, v8

    move/from16 v23, v12

    move-object/from16 v36, v14

    .end local v8    # "isChainPacked":Z
    .end local v12    # "totalWeights":F
    .end local v14    # "lastNode":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    .restart local v17    # "isChainPacked":Z
    .restart local v23    # "totalWeights":F
    .restart local v36    # "lastNode":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    if-nez v34, :cond_31

    if-eqz v2, :cond_30

    goto :goto_1a

    :cond_30
    move/from16 v37, v0

    move v6, v2

    move-object v8, v3

    move v3, v13

    goto/16 :goto_23

    .line 601
    :cond_31
    :goto_1a
    if-eqz v34, :cond_32

    .line 602
    sub-float v29, v29, v0

    goto :goto_1b

    .line 603
    :cond_32
    if-eqz v2, :cond_33

    .line 604
    sub-float v29, v29, v0

    .line 606
    :cond_33
    :goto_1b
    move-object v6, v3

    .line 607
    .end local v10    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v6, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    add-int/lit8 v7, v13, 0x1

    int-to-float v7, v7

    div-float v7, v29, v7

    .line 608
    .local v7, "gap":F
    if-eqz v2, :cond_35

    .line 609
    const/4 v8, 0x1

    if-le v13, v8, :cond_34

    .line 610
    add-int/lit8 v8, v13, -0x1

    int-to-float v8, v8

    div-float v7, v29, v8

    goto :goto_1c

    .line 612
    :cond_34
    const/high16 v8, 0x40000000    # 2.0f

    div-float v7, v29, v8

    .line 615
    :cond_35
    :goto_1c
    move v8, v15

    .line 616
    .end local v29    # "distance":F
    .local v8, "distance":F
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v10

    const/16 v12, 0x8

    if-eq v10, v12, :cond_36

    .line 617
    add-float/2addr v8, v7

    .line 619
    :cond_36
    if-eqz v2, :cond_37

    const/4 v10, 0x1

    if-le v13, v10, :cond_37

    .line 620
    iget-object v10, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v10, v10, p3

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v10

    int-to-float v10, v10

    add-float v8, v15, v10

    .line 622
    :cond_37
    if-eqz v34, :cond_38

    .line 623
    if-eqz v5, :cond_38

    .line 624
    iget-object v10, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v10, v10, p3

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v8, v10

    move-object v10, v6

    move/from16 v29, v8

    goto :goto_1d

    .line 627
    :cond_38
    move-object v10, v6

    move/from16 v29, v8

    .end local v6    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v8    # "distance":F
    .restart local v10    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v29    # "distance":F
    :goto_1d
    if-eqz v10, :cond_40

    .line 628
    sget-object v6, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v6, :cond_39

    .line 629
    sget-object v6, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    move v12, v2

    move-object v8, v3

    .end local v2    # "isChainSpreadInside":Z
    .end local v3    # "first":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v8, "first":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v12, "isChainSpreadInside":Z
    iget-wide v2, v6, Landroidx/constraintlayout/solver/Metrics;->nonresolvedWidgets:J

    sub-long v2, v2, v30

    iput-wide v2, v6, Landroidx/constraintlayout/solver/Metrics;->nonresolvedWidgets:J

    .line 630
    sget-object v2, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    move v6, v12

    move v3, v13

    .end local v12    # "isChainSpreadInside":Z
    .end local v13    # "numVisibleWidgets":I
    .local v3, "numVisibleWidgets":I
    .local v6, "isChainSpreadInside":Z
    iget-wide v12, v2, Landroidx/constraintlayout/solver/Metrics;->resolvedWidgets:J

    add-long v12, v12, v30

    iput-wide v12, v2, Landroidx/constraintlayout/solver/Metrics;->resolvedWidgets:J

    .line 631
    sget-object v2, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v12, v2, Landroidx/constraintlayout/solver/Metrics;->chainConnectionResolved:J

    add-long v12, v12, v30

    iput-wide v12, v2, Landroidx/constraintlayout/solver/Metrics;->chainConnectionResolved:J

    goto :goto_1e

    .line 628
    .end local v6    # "isChainSpreadInside":Z
    .end local v8    # "first":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v2    # "isChainSpreadInside":Z
    .local v3, "first":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v13    # "numVisibleWidgets":I
    :cond_39
    move v6, v2

    move-object v8, v3

    move v3, v13

    .line 633
    .end local v2    # "isChainSpreadInside":Z
    .end local v13    # "numVisibleWidgets":I
    .local v3, "numVisibleWidgets":I
    .restart local v6    # "isChainSpreadInside":Z
    .restart local v8    # "first":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_1e
    iget-object v2, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v18, v2, v1

    .line 634
    if-nez v18, :cond_3b

    if-ne v10, v4, :cond_3a

    goto :goto_1f

    :cond_3a
    move/from16 v37, v0

    const/16 v12, 0x8

    goto/16 :goto_22

    .line 635
    :cond_3b
    :goto_1f
    const/4 v2, 0x0

    .line 636
    .local v2, "dimension":F
    if-nez v1, :cond_3c

    .line 637
    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v12

    int-to-float v2, v12

    goto :goto_20

    .line 639
    :cond_3c
    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v12

    int-to-float v2, v12

    .line 641
    :goto_20
    if-eq v10, v5, :cond_3d

    .line 642
    iget-object v12, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v12, v12, p3

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v12

    int-to-float v12, v12

    add-float v29, v29, v12

    move/from16 v12, v29

    goto :goto_21

    .line 641
    :cond_3d
    move/from16 v12, v29

    .line 644
    .end local v29    # "distance":F
    .local v12, "distance":F
    :goto_21
    iget-object v13, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v13, v13, p3

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v13

    iget-object v14, v11, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    invoke-virtual {v13, v14, v12}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolve(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 646
    iget-object v13, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v14, p3, 0x1

    aget-object v13, v13, v14

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v13

    iget-object v14, v11, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move/from16 v37, v0

    .end local v0    # "extraMargin":F
    .local v37, "extraMargin":F
    add-float v0, v12, v2

    invoke-virtual {v13, v14, v0}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolve(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 648
    iget-object v0, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 649
    iget-object v0, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v13, p3, 0x1

    aget-object v0, v0, v13

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 650
    iget-object v0, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v13, p3, 0x1

    aget-object v0, v0, v13

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v2

    add-float v29, v12, v0

    .line 651
    .end local v12    # "distance":F
    .restart local v29    # "distance":F
    if-eqz v18, :cond_3e

    invoke-virtual/range {v18 .. v18}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v0

    const/16 v12, 0x8

    if-eq v0, v12, :cond_3f

    .line 652
    add-float v29, v29, v7

    goto :goto_22

    .line 651
    :cond_3e
    const/16 v12, 0x8

    .line 655
    .end local v2    # "dimension":F
    :cond_3f
    :goto_22
    move-object/from16 v10, v18

    move v13, v3

    move v2, v6

    move-object v3, v8

    move/from16 v0, v37

    goto/16 :goto_1d

    .line 627
    .end local v6    # "isChainSpreadInside":Z
    .end local v8    # "first":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v37    # "extraMargin":F
    .restart local v0    # "extraMargin":F
    .local v2, "isChainSpreadInside":Z
    .local v3, "first":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v13    # "numVisibleWidgets":I
    :cond_40
    move/from16 v37, v0

    move v6, v2

    move-object v8, v3

    move v3, v13

    .line 659
    .end local v0    # "extraMargin":F
    .end local v2    # "isChainSpreadInside":Z
    .end local v7    # "gap":F
    .end local v13    # "numVisibleWidgets":I
    .local v3, "numVisibleWidgets":I
    .restart local v6    # "isChainSpreadInside":Z
    .restart local v8    # "first":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v37    # "extraMargin":F
    :goto_23
    const/4 v0, 0x1

    return v0

    .line 490
    .end local v15    # "firstOffset":F
    .end local v17    # "isChainPacked":Z
    .end local v23    # "totalWeights":F
    .end local v28    # "lastOffset":F
    .end local v29    # "distance":F
    .end local v32    # "lastVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v34    # "isChainSpread":Z
    .end local v35    # "numMatchConstraints":I
    .end local v36    # "lastNode":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    .end local v37    # "extraMargin":F
    .restart local v2    # "isChainSpreadInside":Z
    .local v3, "first":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v6, "lastVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v7, "numMatchConstraints":I
    .local v8, "isChainPacked":Z
    .restart local v9    # "isChainSpread":Z
    .local v12, "totalWeights":F
    .restart local v13    # "numVisibleWidgets":I
    .restart local v14    # "lastNode":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    :cond_41
    move/from16 v27, v2

    move-object/from16 v32, v6

    move/from16 v35, v7

    move/from16 v33, v8

    move/from16 v34, v9

    move/from16 v23, v12

    move-object/from16 v36, v14

    move-object/from16 v9, p1

    move-object v8, v3

    move v3, v13

    .line 493
    .end local v2    # "isChainSpreadInside":Z
    .end local v6    # "lastVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v7    # "numMatchConstraints":I
    .end local v9    # "isChainSpread":Z
    .end local v12    # "totalWeights":F
    .end local v13    # "numVisibleWidgets":I
    .end local v14    # "lastNode":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    .local v3, "numVisibleWidgets":I
    .local v8, "first":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v23    # "totalWeights":F
    .restart local v27    # "isChainSpreadInside":Z
    .restart local v32    # "lastVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v33    # "isChainPacked":Z
    .restart local v34    # "isChainSpread":Z
    .restart local v35    # "numMatchConstraints":I
    .restart local v36    # "lastNode":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    :goto_24
    return v17

    .line 484
    .end local v23    # "totalWeights":F
    .end local v27    # "isChainSpreadInside":Z
    .end local v32    # "lastVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v33    # "isChainPacked":Z
    .end local v34    # "isChainSpread":Z
    .end local v35    # "numMatchConstraints":I
    .end local v36    # "lastNode":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    .restart local v2    # "isChainSpreadInside":Z
    .local v3, "first":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v6    # "lastVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v7    # "numMatchConstraints":I
    .local v8, "isChainPacked":Z
    .restart local v9    # "isChainSpread":Z
    .restart local v12    # "totalWeights":F
    .restart local v13    # "numVisibleWidgets":I
    .restart local v14    # "lastNode":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    :cond_42
    move/from16 v27, v2

    move-object/from16 v32, v6

    move/from16 v35, v7

    move/from16 v33, v8

    move/from16 v34, v9

    move/from16 v23, v12

    move-object/from16 v36, v14

    move-object v9, v0

    move-object v8, v3

    move v3, v13

    .line 486
    .end local v2    # "isChainSpreadInside":Z
    .end local v6    # "lastVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v7    # "numMatchConstraints":I
    .end local v9    # "isChainSpread":Z
    .end local v12    # "totalWeights":F
    .end local v13    # "numVisibleWidgets":I
    .end local v14    # "lastNode":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    .local v3, "numVisibleWidgets":I
    .local v8, "first":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v23    # "totalWeights":F
    .restart local v27    # "isChainSpreadInside":Z
    .restart local v32    # "lastVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v33    # "isChainPacked":Z
    .restart local v34    # "isChainSpread":Z
    .restart local v35    # "numMatchConstraints":I
    .restart local v36    # "lastNode":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    :goto_25
    return v17
.end method

.method static checkMatchParent(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/LinearSystem;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 5
    .param p0, "container"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    .param p1, "system"    # Landroidx/constraintlayout/solver/LinearSystem;
    .param p2, "widget"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 57
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x2

    if-eq v0, v2, :cond_0

    iget-object v0, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v1

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_0

    .line 60
    iget-object v0, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 61
    .local v0, "left":I
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v1

    iget-object v2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    sub-int/2addr v1, v2

    .line 68
    .local v1, "right":I
    iget-object v2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v4}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v4

    iput-object v4, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 69
    iget-object v2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v4}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v4

    iput-object v4, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 70
    iget-object v2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, v2, v0}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 71
    iget-object v2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, v2, v1}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 72
    iput v3, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 74
    invoke-virtual {p2, v0, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalDimension(II)V

    .line 76
    .end local v0    # "left":I
    .end local v1    # "right":I
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v0, v2, :cond_3

    iget-object v0, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v1

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_3

    .line 79
    iget-object v0, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 80
    .local v0, "top":I
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v1

    iget-object v2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    sub-int/2addr v1, v2

    .line 87
    .local v1, "bottom":I
    iget-object v2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v4}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v4

    iput-object v4, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 88
    iget-object v2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v4}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v4

    iput-object v4, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 89
    iget-object v2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, v2, v0}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 90
    iget-object v2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, v2, v1}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 91
    iget v2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-gtz v2, :cond_1

    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_2

    .line 92
    :cond_1
    iget-object v2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v4}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v4

    iput-object v4, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 93
    iget-object v2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget v4, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    add-int/2addr v4, v0

    invoke-virtual {p1, v2, v4}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 95
    :cond_2
    iput v3, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    .line 97
    invoke-virtual {p2, v0, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalDimension(II)V

    .line 99
    .end local v0    # "top":I
    .end local v1    # "bottom":I
    :cond_3
    return-void
.end method

.method private static optimizableMatchConstraint(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)Z
    .locals 4
    .param p0, "constraintWidget"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p1, "orientation"    # I

    .line 111
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, p1

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 112
    return v2

    .line 114
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v1, 0x0

    const/4 v3, 0x1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 115
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    aget-object v0, v0, v3

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 117
    return v2

    .line 122
    :cond_2
    if-nez p1, :cond_5

    .line 123
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-eqz v0, :cond_3

    .line 124
    return v2

    .line 126
    :cond_3
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-nez v0, :cond_4

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-eqz v0, :cond_7

    .line 127
    :cond_4
    return v2

    .line 130
    :cond_5
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-eqz v0, :cond_6

    .line 131
    return v2

    .line 133
    :cond_6
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-nez v0, :cond_8

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-eqz v0, :cond_7

    goto :goto_1

    .line 137
    :cond_7
    return v3

    .line 134
    :cond_8
    :goto_1
    return v2
.end method

.method static setOptimizedWidget(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;II)V
    .locals 5
    .param p0, "widget"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p1, "orientation"    # I
    .param p2, "resolvedOffset"    # I

    .line 671
    mul-int/lit8 v0, p1, 0x2

    .line 672
    .local v0, "startOffset":I
    add-int/lit8 v1, v0, 0x1

    .line 674
    .local v1, "endOffset":I
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v2

    .line 675
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v3

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v3

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 676
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v2

    int-to-float v3, p2

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 678
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v2

    const/4 v3, 0x1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    .line 680
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v2

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v4, v4, v0

    .line 681
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v4

    iput-object v4, v2, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 682
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v2

    .line 683
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getLength(I)I

    move-result v4

    int-to-float v4, v4

    iput v4, v2, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 684
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v2

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    .line 685
    return-void
.end method
