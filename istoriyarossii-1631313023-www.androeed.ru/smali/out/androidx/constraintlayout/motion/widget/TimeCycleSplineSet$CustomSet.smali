.class Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;
.super Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
.source "TimeCycleSplineSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CustomSet"
.end annotation


# instance fields
.field mAttributeName:Ljava/lang/String;

.field mCache:[F

.field mConstraintAttributeList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;"
        }
    .end annotation
.end field

.field mTempValues:[F

.field mWaveProperties:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[F>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/util/SparseArray;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mWaveProperties:Landroid/util/SparseArray;

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mAttributeName:Ljava/lang/String;

    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public setPoint(IFFIF)V
    .registers 6

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "don\'t call for custom attribute call setPoint(pos, ConstraintAttribute,...)"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPoint(ILandroidx/constraintlayout/widget/ConstraintAttribute;FIF)V
    .registers 8

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mWaveProperties:Landroid/util/SparseArray;

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p3, v0, v1

    const/4 p3, 0x1

    aput p5, v0, p3

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget p1, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mWaveShape:I

    invoke-static {p1, p4}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mWaveShape:I

    return-void
.end method

.method public setProperty(Landroid/view/View;FJLandroidx/constraintlayout/motion/widget/KeyCache;)Z
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    move/from16 v5, p2

    float-to-double v5, v5

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mTempValues:[F

    invoke-virtual {v4, v5, v6, v7}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[F)V

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mTempValues:[F

    array-length v5, v4

    add-int/lit8 v5, v5, -0x2

    aget v5, v4, v5

    array-length v6, v4

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    aget v4, v4, v6

    iget-wide v8, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->last_time:J

    sub-long v8, v2, v8

    iget v6, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->last_cycle:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eqz v6, :cond_3e

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mAttributeName:Ljava/lang/String;

    move-object/from16 v12, p5

    invoke-virtual {v12, v1, v6, v11}, Landroidx/constraintlayout/motion/widget/KeyCache;->getFloatValue(Ljava/lang/Object;Ljava/lang/String;I)F

    move-result v6

    iput v6, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->last_cycle:F

    iget v6, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->last_cycle:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_3e

    iput v10, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->last_cycle:F

    :cond_3e
    iget v6, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->last_cycle:F

    float-to-double v12, v6

    long-to-double v8, v8

    const-wide v14, 0x3e112e0be826d695L    # 1.0E-9

    mul-double v8, v8, v14

    float-to-double v14, v5

    mul-double v8, v8, v14

    add-double/2addr v12, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    rem-double/2addr v12, v8

    double-to-float v6, v12

    iput v6, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->last_cycle:F

    iput-wide v2, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->last_time:J

    iget v2, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->last_cycle:F

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->calcWave(F)F

    move-result v2

    iput-boolean v11, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mContinue:Z

    const/4 v3, 0x0

    :goto_5e
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mCache:[F

    array-length v6, v6

    if-ge v3, v6, :cond_84

    iget-boolean v6, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mContinue:Z

    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mTempValues:[F

    aget v8, v8, v3

    float-to-double v8, v8

    const-wide/16 v12, 0x0

    cmpl-double v14, v8, v12

    if-eqz v14, :cond_72

    const/4 v8, 0x1

    goto :goto_73

    :cond_72
    const/4 v8, 0x0

    :goto_73
    or-int/2addr v6, v8

    iput-boolean v6, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mContinue:Z

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mCache:[F

    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mTempValues:[F

    aget v8, v8, v3

    mul-float v8, v8, v2

    add-float/2addr v8, v4

    aput v8, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5e

    :cond_84
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintAttribute;

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mCache:[F

    invoke-virtual {v2, v1, v3}, Landroidx/constraintlayout/widget/ConstraintAttribute;->setInterpolatedValue(Landroid/view/View;[F)V

    cmpl-float v1, v5, v10

    if-eqz v1, :cond_97

    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mContinue:Z

    :cond_97
    iget-boolean v1, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mContinue:Z

    return v1
.end method

.method public setup(I)V
    .registers 16

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintAttribute;

    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintAttribute;->noOfInterpValues()I

    move-result v1

    new-array v3, v0, [D

    add-int/lit8 v4, v1, 0x2

    new-array v5, v4, [F

    iput-object v5, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mTempValues:[F

    new-array v5, v1, [F

    iput-object v5, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mCache:[F

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x1

    aput v4, v5, v6

    aput v0, v5, v2

    const-class v4, D

    invoke-static {v4, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[D

    const/4 v5, 0x0

    :goto_30
    if-ge v5, v0, :cond_7a

    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/widget/ConstraintAttribute;

    iget-object v9, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mWaveProperties:Landroid/util/SparseArray;

    invoke-virtual {v9, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [F

    int-to-double v10, v7

    const-wide v12, 0x3f847ae147ae147bL    # 0.01

    mul-double v10, v10, v12

    aput-wide v10, v3, v5

    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mTempValues:[F

    invoke-virtual {v8, v7}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getValuesToInterpolate([F)V

    const/4 v7, 0x0

    :goto_58
    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mTempValues:[F

    array-length v10, v8

    if-ge v7, v10, :cond_67

    aget-object v10, v4, v5

    aget v8, v8, v7

    float-to-double v11, v8

    aput-wide v11, v10, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_58

    :cond_67
    aget-object v7, v4, v5

    aget v8, v9, v2

    float-to-double v10, v8

    aput-wide v10, v7, v1

    aget-object v7, v4, v5

    add-int/lit8 v8, v1, 0x1

    aget v9, v9, v6

    float-to-double v9, v9

    aput-wide v9, v7, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    :cond_7a
    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/motion/utils/CurveFit;

    move-result-object p1

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    return-void
.end method
