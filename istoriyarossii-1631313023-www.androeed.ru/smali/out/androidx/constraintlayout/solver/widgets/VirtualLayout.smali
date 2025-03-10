.class public Landroidx/constraintlayout/solver/widgets/VirtualLayout;
.super Landroidx/constraintlayout/solver/widgets/HelperWidget;
.source "VirtualLayout.java"


# instance fields
.field protected mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

.field private mMeasuredHeight:I

.field private mMeasuredWidth:I

.field mMeasurer:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

.field private mNeedsCallFromSolver:Z

.field private mPaddingBottom:I

.field private mPaddingEnd:I

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mPaddingStart:I

.field private mPaddingTop:I

.field private mResolvedPaddingLeft:I

.field private mResolvedPaddingRight:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/HelperWidget;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mPaddingTop:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mPaddingBottom:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mPaddingLeft:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mPaddingRight:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mPaddingStart:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mPaddingEnd:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mResolvedPaddingLeft:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mResolvedPaddingRight:I

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mNeedsCallFromSolver:Z

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mMeasuredWidth:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mMeasuredHeight:I

    new-instance v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {v0}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mMeasurer:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

    return-void
.end method


# virtual methods
.method public applyRtl(Z)V
    .registers 4

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mPaddingStart:I

    if-gtz v0, :cond_8

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mPaddingEnd:I

    if-lez v1, :cond_17

    :cond_8
    if-eqz p1, :cond_11

    iget p1, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mPaddingEnd:I

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mResolvedPaddingLeft:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mResolvedPaddingRight:I

    goto :goto_17

    :cond_11
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mResolvedPaddingLeft:I

    iget p1, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mPaddingEnd:I

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mResolvedPaddingRight:I

    :cond_17
    :goto_17
    return-void
.end method

.method public captureWidgets()V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mWidgetsCount:I

    if-ge v0, v1, :cond_12

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v1, v1, v0

    if-eqz v1, :cond_f

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setInVirtualLayout(Z)V

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_12
    return-void
.end method

.method public getMeasuredHeight()I
    .registers 2

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mMeasuredHeight:I

    return v0
.end method

.method public getMeasuredWidth()I
    .registers 2

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mMeasuredWidth:I

    return v0
.end method

.method public getPaddingBottom()I
    .registers 2

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mPaddingBottom:I

    return v0
.end method

.method public getPaddingLeft()I
    .registers 2

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mResolvedPaddingLeft:I

    return v0
.end method

.method public getPaddingRight()I
    .registers 2

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mResolvedPaddingRight:I

    return v0
.end method

.method public getPaddingTop()I
    .registers 2

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mPaddingTop:I

    return v0
.end method

.method public measure(IIII)V
    .registers 5

    return-void
.end method

.method protected measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V
    .registers 7

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mMeasurer:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

    if-nez v0, :cond_17

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mMeasurer:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

    goto :goto_0

    :cond_17
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iput-object p2, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iput-object p4, p2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iput p3, p2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iput p5, p2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mMeasurer:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

    iget-object p3, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-interface {p2, p1, p3}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;->measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;)V

    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget p2, p2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget p2, p2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget-boolean p2, p2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHasBaseline:Z

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHasBaseline(Z)V

    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget p2, p2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setBaselineDistance(I)V

    return-void
.end method

.method protected measureChildren()Z
    .registers 9

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    check-cast v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    const/4 v1, 0x0

    if-nez v0, :cond_12

    return v1

    :cond_12
    const/4 v2, 0x0

    :goto_13
    iget v3, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mWidgetsCount:I

    const/4 v4, 0x1

    if-ge v2, v3, :cond_82

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v3, v3, v2

    if-nez v3, :cond_1f

    goto :goto_7f

    :cond_1f
    instance-of v5, v3, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-eqz v5, :cond_24

    goto :goto_7f

    :cond_24
    invoke-virtual {v3, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v5

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v6

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v7, :cond_3d

    iget v7, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-eq v7, v4, :cond_3d

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_3d

    iget v7, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-eq v7, v4, :cond_3d

    goto :goto_3e

    :cond_3d
    const/4 v4, 0x0

    :goto_3e
    if-eqz v4, :cond_41

    goto :goto_7f

    :cond_41
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v4, :cond_47

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    :cond_47
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v4, :cond_4d

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    :cond_4d
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iput-object v5, v4, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iput-object v6, v4, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    iput v5, v4, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    iput v5, v4, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-interface {v0, v3, v4}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;->measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;)V

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setBaselineDistance(I)V

    :goto_7f
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_82
    return v4
.end method

.method public needSolverPass()Z
    .registers 2

    iget-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mNeedsCallFromSolver:Z

    return v0
.end method

.method protected needsCallbackFromSolver(Z)V
    .registers 2

    iput-boolean p1, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mNeedsCallFromSolver:Z

    return-void
.end method

.method public setMeasure(II)V
    .registers 3

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mMeasuredWidth:I

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mMeasuredHeight:I

    return-void
.end method

.method public setPadding(I)V
    .registers 2

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mPaddingLeft:I

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mPaddingTop:I

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mPaddingRight:I

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mPaddingBottom:I

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mPaddingStart:I

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mPaddingEnd:I

    return-void
.end method

.method public setPaddingBottom(I)V
    .registers 2

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mPaddingBottom:I

    return-void
.end method

.method public setPaddingEnd(I)V
    .registers 2

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mPaddingEnd:I

    return-void
.end method

.method public setPaddingLeft(I)V
    .registers 2

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mPaddingLeft:I

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mResolvedPaddingLeft:I

    return-void
.end method

.method public setPaddingRight(I)V
    .registers 2

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mPaddingRight:I

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mResolvedPaddingRight:I

    return-void
.end method

.method public setPaddingStart(I)V
    .registers 2

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mPaddingStart:I

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mResolvedPaddingLeft:I

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mResolvedPaddingRight:I

    return-void
.end method

.method public setPaddingTop(I)V
    .registers 2

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mPaddingTop:I

    return-void
.end method

.method public updateConstraints(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V
    .registers 2

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->captureWidgets()V

    return-void
.end method
