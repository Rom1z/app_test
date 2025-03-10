.class public Landroidx/constraintlayout/solver/state/helpers/AlignVerticallyReference;
.super Landroidx/constraintlayout/solver/state/HelperReference;
.source "AlignVerticallyReference.java"


# instance fields
.field private mBias:F

.field private mBottomToBottom:Ljava/lang/Object;

.field private mBottomToTop:Ljava/lang/Object;

.field private mTopToBottom:Ljava/lang/Object;

.field private mTopToTop:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/state/State;)V
    .registers 3

    sget-object v0, Landroidx/constraintlayout/solver/state/State$Helper;->ALIGN_VERTICALLY:Landroidx/constraintlayout/solver/state/State$Helper;

    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/solver/state/HelperReference;-><init>(Landroidx/constraintlayout/solver/state/State;Landroidx/constraintlayout/solver/state/State$Helper;)V

    const/high16 p1, 0x3f000000    # 0.5f

    iput p1, p0, Landroidx/constraintlayout/solver/state/helpers/AlignVerticallyReference;->mBias:F

    return-void
.end method


# virtual methods
.method public apply()V
    .registers 5

    iget-object v0, p0, Landroidx/constraintlayout/solver/state/helpers/AlignVerticallyReference;->mReferences:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Landroidx/constraintlayout/solver/state/helpers/AlignVerticallyReference;->mState:Landroidx/constraintlayout/solver/state/State;

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/solver/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/state/ConstraintReference;->clearVertical()Landroidx/constraintlayout/solver/state/ConstraintReference;

    iget-object v2, p0, Landroidx/constraintlayout/solver/state/helpers/AlignVerticallyReference;->mTopToTop:Ljava/lang/Object;

    if-eqz v2, :cond_21

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/state/ConstraintReference;->topToTop(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    goto :goto_2e

    :cond_21
    iget-object v2, p0, Landroidx/constraintlayout/solver/state/helpers/AlignVerticallyReference;->mTopToBottom:Ljava/lang/Object;

    if-eqz v2, :cond_29

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/state/ConstraintReference;->topToBottom(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    goto :goto_2e

    :cond_29
    sget-object v2, Landroidx/constraintlayout/solver/state/State;->PARENT:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/state/ConstraintReference;->topToTop(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    :goto_2e
    iget-object v2, p0, Landroidx/constraintlayout/solver/state/helpers/AlignVerticallyReference;->mBottomToTop:Ljava/lang/Object;

    if-eqz v2, :cond_36

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/state/ConstraintReference;->bottomToTop(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    goto :goto_43

    :cond_36
    iget-object v2, p0, Landroidx/constraintlayout/solver/state/helpers/AlignVerticallyReference;->mBottomToBottom:Ljava/lang/Object;

    if-eqz v2, :cond_3e

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/state/ConstraintReference;->bottomToBottom(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    goto :goto_43

    :cond_3e
    sget-object v2, Landroidx/constraintlayout/solver/state/State;->PARENT:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/state/ConstraintReference;->bottomToBottom(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    :goto_43
    iget v2, p0, Landroidx/constraintlayout/solver/state/helpers/AlignVerticallyReference;->mBias:F

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_6

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/state/ConstraintReference;->verticalBias(F)Landroidx/constraintlayout/solver/state/ConstraintReference;

    goto :goto_6

    :cond_4f
    return-void
.end method

.method public bias(F)V
    .registers 2

    iput p1, p0, Landroidx/constraintlayout/solver/state/helpers/AlignVerticallyReference;->mBias:F

    return-void
.end method

.method public bottomToBottom(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Landroidx/constraintlayout/solver/state/helpers/AlignVerticallyReference;->mBottomToBottom:Ljava/lang/Object;

    return-void
.end method

.method public bottomToTop(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Landroidx/constraintlayout/solver/state/helpers/AlignVerticallyReference;->mBottomToTop:Ljava/lang/Object;

    return-void
.end method

.method public topToBottom(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Landroidx/constraintlayout/solver/state/helpers/AlignVerticallyReference;->mTopToBottom:Ljava/lang/Object;

    return-void
.end method

.method public topToTop(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Landroidx/constraintlayout/solver/state/helpers/AlignVerticallyReference;->mTopToTop:Ljava/lang/Object;

    return-void
.end method
