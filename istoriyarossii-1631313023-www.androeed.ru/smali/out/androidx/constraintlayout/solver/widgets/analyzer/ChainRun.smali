.class public Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;
.super Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;
.source "ChainRun.java"


# instance fields
.field private chainStyle:I

.field widgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)V
    .registers 3

    invoke-direct {p0, p1}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->orientation:I

    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->build()V

    return-void
.end method

.method private build()V
    .registers 6

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->orientation:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getPreviousChainMember(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v1

    :goto_8
    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    if-eqz v0, :cond_14

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->orientation:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getPreviousChainMember(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v1

    goto :goto_8

    :cond_14
    iput-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    iget v2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->orientation:I

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getRun(I)Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->orientation:I

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getNextChainMember(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    :goto_27
    if-eqz v0, :cond_3b

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    iget v2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->orientation:I

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getRun(I)Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->orientation:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getNextChainMember(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    goto :goto_27

    :cond_3b
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_41
    :goto_41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    iget v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->orientation:I

    if-nez v3, :cond_57

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iput-object p0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalChainRun:Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;

    goto :goto_41

    :cond_57
    iget v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->orientation:I

    if-ne v3, v2, :cond_41

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iput-object p0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalChainRun:Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;

    goto :goto_41

    :cond_60
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->orientation:I

    if-nez v0, :cond_74

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_74

    const/4 v0, 0x1

    goto :goto_75

    :cond_74
    const/4 v0, 0x0

    :goto_75
    if-eqz v0, :cond_90

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_90

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    :cond_90
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->orientation:I

    if-nez v0, :cond_9b

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalChainStyle()I

    move-result v0

    goto :goto_a1

    :cond_9b
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalChainStyle()I

    move-result v0

    :goto_a1
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->chainStyle:I

    return-void
.end method

.method private getFirstVisibleWidget()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1e

    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    return-object v0

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_21
    const/4 v0, 0x0

    return-object v0
.end method

.method private getLastVisibleWidget()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .registers 5

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_22

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1f

    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    return-object v0

    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_22
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method apply()V
    .registers 6

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->apply()V

    goto :goto_6

    :cond_16
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_20

    return-void

    :cond_20
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    sub-int/2addr v0, v1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget v4, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->orientation:I

    if-nez v4, :cond_76

    iget-object v1, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p0, v1, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->getTarget(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    move-result-object v2

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->getFirstVisibleWidget()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v4

    if-eqz v4, :cond_52

    iget-object v1, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    :cond_52
    if-eqz v2, :cond_59

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {p0, v4, v2, v1}, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->addTarget(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;I)V

    :cond_59
    invoke-virtual {p0, v0, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->getTarget(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->getLastVisibleWidget()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v2

    if-eqz v2, :cond_6d

    iget-object v0, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    :cond_6d
    if-eqz v1, :cond_b1

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    neg-int v0, v0

    invoke-virtual {p0, v2, v1, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->addTarget(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;I)V

    goto :goto_b1

    :cond_76
    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p0, v2, v1}, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->getTarget(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    move-result-object v3

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->getFirstVisibleWidget()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v4

    if-eqz v4, :cond_8e

    iget-object v2, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    :cond_8e
    if-eqz v3, :cond_95

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {p0, v4, v3, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->addTarget(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;I)V

    :cond_95
    invoke-virtual {p0, v0, v1}, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->getTarget(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->getLastVisibleWidget()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v2

    if-eqz v2, :cond_a9

    iget-object v0, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    :cond_a9
    if-eqz v1, :cond_b1

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    neg-int v0, v0

    invoke-virtual {p0, v2, v1, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->addTarget(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;I)V

    :cond_b1
    :goto_b1
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iput-object p0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->updateDelegate:Landroidx/constraintlayout/solver/widgets/analyzer/Dependency;

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iput-object p0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->updateDelegate:Landroidx/constraintlayout/solver/widgets/analyzer/Dependency;

    return-void
.end method

.method public applyToWidget()V
    .registers 3

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->applyToWidget()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method clear()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->runGroup:Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->clear()V

    goto :goto_9

    :cond_19
    return-void
.end method

.method public getWrapDimension()J
    .registers 8

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v0, :cond_27

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    iget-object v5, v4, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    int-to-long v5, v5

    add-long/2addr v1, v5

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->getWrapDimension()J

    move-result-wide v5

    add-long/2addr v1, v5

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    int-to-long v4, v4

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_27
    return-wide v1
.end method

.method reset()V
    .registers 3

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iput-boolean v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    return-void
.end method

.method supportsWrapComputation()Z
    .registers 5

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_1c

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->supportsWrapComputation()Z

    move-result v3

    if-nez v3, :cond_19

    return v1

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1c
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChainRun "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->orientation:I

    if-nez v1, :cond_11

    const-string v1, "horizontal : "

    goto :goto_13

    :cond_11
    const-string v1, "vertical : "

    :goto_13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "> "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    :cond_5e
    return-object v0
.end method

.method public update(Landroidx/constraintlayout/solver/widgets/analyzer/Dependency;)V
    .registers 24

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-boolean v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v1, :cond_437

    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-boolean v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-nez v1, :cond_10

    goto/16 :goto_437

    :cond_10
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v1

    if-eqz v1, :cond_23

    instance-of v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    if-eqz v3, :cond_23

    check-cast v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->isRtl()Z

    move-result v1

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    iget-object v4, v0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    sub-int/2addr v3, v4

    iget-object v4, v0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_34
    const/4 v6, -0x1

    const/16 v7, 0x8

    if-ge v5, v4, :cond_4c

    iget-object v8, v0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v8

    if-ne v8, v7, :cond_4d

    add-int/lit8 v5, v5, 0x1

    goto :goto_34

    :cond_4c
    const/4 v5, -0x1

    :cond_4d
    add-int/lit8 v8, v4, -0x1

    move v9, v8

    :goto_50
    if-ltz v9, :cond_66

    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v10

    if-ne v10, v7, :cond_65

    add-int/lit8 v9, v9, -0x1

    goto :goto_50

    :cond_65
    move v6, v9

    :cond_66
    const/4 v9, 0x0

    :goto_67
    const/4 v11, 0x2

    const/4 v12, 0x1

    if-ge v9, v11, :cond_106

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_72
    if-ge v13, v4, :cond_f8

    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    iget-object v11, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v11

    if-ne v11, v7, :cond_86

    goto/16 :goto_f1

    :cond_86
    add-int/lit8 v16, v16, 0x1

    if-lez v13, :cond_91

    if-lt v13, v5, :cond_91

    iget-object v11, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v11, v11, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    add-int/2addr v14, v11

    :cond_91
    iget-object v11, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget v11, v11, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->value:I

    iget-object v7, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimensionBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v7, v10, :cond_9d

    const/4 v7, 0x1

    goto :goto_9e

    :cond_9d
    const/4 v7, 0x0

    :goto_9e
    if-eqz v7, :cond_be

    iget v10, v0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->orientation:I

    if-nez v10, :cond_af

    iget-object v10, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v10, v10, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-nez v10, :cond_af

    return-void

    :cond_af
    iget v10, v0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->orientation:I

    if-ne v10, v12, :cond_d2

    iget-object v10, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v10, v10, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-nez v10, :cond_d2

    return-void

    :cond_be
    iget v10, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->matchConstraintsType:I

    if-ne v10, v12, :cond_cb

    if-nez v9, :cond_cb

    iget-object v7, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget v11, v7, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->wrapValue:I

    add-int/lit8 v15, v15, 0x1

    goto :goto_d1

    :cond_cb
    iget-object v10, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v10, v10, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-eqz v10, :cond_d2

    :goto_d1
    const/4 v7, 0x1

    :cond_d2
    if-nez v7, :cond_e6

    add-int/lit8 v15, v15, 0x1

    iget-object v7, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWeight:[F

    iget v10, v0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->orientation:I

    aget v7, v7, v10

    const/4 v10, 0x0

    cmpl-float v11, v7, v10

    if-ltz v11, :cond_e7

    add-float v17, v17, v7

    goto :goto_e7

    :cond_e6
    add-int/2addr v14, v11

    :cond_e7
    :goto_e7
    if-ge v13, v8, :cond_f1

    if-ge v13, v6, :cond_f1

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    neg-int v2, v2

    add-int/2addr v14, v2

    :cond_f1
    :goto_f1
    add-int/lit8 v13, v13, 0x1

    const/16 v7, 0x8

    const/4 v11, 0x2

    goto/16 :goto_72

    :cond_f8
    if-lt v14, v3, :cond_103

    if-nez v15, :cond_fd

    goto :goto_103

    :cond_fd
    add-int/lit8 v9, v9, 0x1

    const/16 v7, 0x8

    goto/16 :goto_67

    :cond_103
    :goto_103
    move/from16 v2, v16

    goto :goto_10b

    :cond_106
    const/4 v2, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    :goto_10b
    iget-object v7, v0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    if-eqz v1, :cond_115

    iget-object v7, v0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    :cond_115
    const/high16 v9, 0x3f000000    # 0.5f

    if-le v14, v3, :cond_12c

    const/high16 v10, 0x40000000    # 2.0f

    if-eqz v1, :cond_125

    sub-int v11, v14, v3

    int-to-float v11, v11

    div-float/2addr v11, v10

    add-float/2addr v11, v9

    float-to-int v10, v11

    add-int/2addr v7, v10

    goto :goto_12c

    :cond_125
    sub-int v11, v14, v3

    int-to-float v11, v11

    div-float/2addr v11, v10

    add-float/2addr v11, v9

    float-to-int v10, v11

    sub-int/2addr v7, v10

    :cond_12c
    :goto_12c
    if-lez v15, :cond_238

    sub-int v10, v3, v14

    int-to-float v10, v10

    int-to-float v11, v15

    div-float v11, v10, v11

    add-float/2addr v11, v9

    float-to-int v11, v11

    const/4 v13, 0x0

    const/16 v16, 0x0

    :goto_139
    if-ge v13, v4, :cond_1ed

    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    iget-object v9, v12, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v9

    move/from16 v18, v11

    const/16 v11, 0x8

    if-ne v9, v11, :cond_151

    goto/16 :goto_1d8

    :cond_151
    iget-object v9, v12, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimensionBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v9, v11, :cond_1d8

    iget-object v9, v12, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-nez v9, :cond_1d8

    const/4 v9, 0x0

    cmpl-float v11, v17, v9

    if-lez v11, :cond_173

    iget-object v11, v12, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWeight:[F

    iget v9, v0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->orientation:I

    aget v9, v11, v9

    mul-float v9, v9, v10

    div-float v9, v9, v17

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v9, v11

    float-to-int v9, v9

    goto :goto_175

    :cond_173
    move/from16 v9, v18

    :goto_175
    iget v11, v0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->orientation:I

    if-nez v11, :cond_1a6

    iget-object v11, v12, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget v11, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    move/from16 v19, v10

    iget-object v10, v12, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    move/from16 v20, v14

    iget v14, v12, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->matchConstraintsType:I

    move/from16 v21, v7

    const/4 v7, 0x1

    if-ne v14, v7, :cond_195

    iget-object v7, v12, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->wrapValue:I

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto :goto_196

    :cond_195
    move v7, v9

    :goto_196
    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    if-lez v11, :cond_1a0

    invoke-static {v11, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    :cond_1a0
    if-eq v7, v9, :cond_1d2

    add-int/lit8 v16, v16, 0x1

    move v9, v7

    goto :goto_1d2

    :cond_1a6
    move/from16 v21, v7

    move/from16 v19, v10

    move/from16 v20, v14

    iget-object v7, v12, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    iget-object v10, v12, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    iget v11, v12, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->matchConstraintsType:I

    const/4 v14, 0x1

    if-ne v11, v14, :cond_1c2

    iget-object v11, v12, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget v11, v11, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->wrapValue:I

    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    goto :goto_1c3

    :cond_1c2
    move v11, v9

    :goto_1c3
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    if-lez v7, :cond_1cd

    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    :cond_1cd
    if-eq v10, v9, :cond_1d2

    add-int/lit8 v16, v16, 0x1

    move v9, v10

    :cond_1d2
    :goto_1d2
    iget-object v7, v12, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v7, v9}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    goto :goto_1de

    :cond_1d8
    :goto_1d8
    move/from16 v21, v7

    move/from16 v19, v10

    move/from16 v20, v14

    :goto_1de
    add-int/lit8 v13, v13, 0x1

    move/from16 v11, v18

    move/from16 v10, v19

    move/from16 v14, v20

    move/from16 v7, v21

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v12, 0x1

    goto/16 :goto_139

    :cond_1ed
    move/from16 v21, v7

    move/from16 v20, v14

    if-lez v16, :cond_229

    sub-int v15, v15, v16

    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_1f7
    if-ge v7, v4, :cond_227

    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_20c

    goto :goto_224

    :cond_20c
    if-lez v7, :cond_215

    if-lt v7, v5, :cond_215

    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v11, v11, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    add-int/2addr v9, v11

    :cond_215
    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget v11, v11, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->value:I

    add-int/2addr v9, v11

    if-ge v7, v8, :cond_224

    if-ge v7, v6, :cond_224

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v10, v10, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    neg-int v10, v10

    add-int/2addr v9, v10

    :cond_224
    :goto_224
    add-int/lit8 v7, v7, 0x1

    goto :goto_1f7

    :cond_227
    move v14, v9

    goto :goto_22b

    :cond_229
    move/from16 v14, v20

    :goto_22b
    iget v7, v0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->chainStyle:I

    const/4 v9, 0x2

    if-ne v7, v9, :cond_236

    if-nez v16, :cond_236

    const/4 v7, 0x0

    iput v7, v0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->chainStyle:I

    goto :goto_23e

    :cond_236
    const/4 v7, 0x0

    goto :goto_23e

    :cond_238
    move/from16 v21, v7

    move/from16 v20, v14

    const/4 v7, 0x0

    const/4 v9, 0x2

    :goto_23e
    if-le v14, v3, :cond_242

    iput v9, v0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->chainStyle:I

    :cond_242
    if-lez v2, :cond_24a

    if-nez v15, :cond_24a

    if-ne v5, v6, :cond_24a

    iput v9, v0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->chainStyle:I

    :cond_24a
    iget v9, v0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->chainStyle:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2ed

    if-le v2, v10, :cond_255

    sub-int/2addr v3, v14

    sub-int/2addr v2, v10

    div-int/2addr v3, v2

    goto :goto_25c

    :cond_255
    if-ne v2, v10, :cond_25b

    sub-int/2addr v3, v14

    const/4 v2, 0x2

    div-int/2addr v3, v2

    goto :goto_25c

    :cond_25b
    const/4 v3, 0x0

    :goto_25c
    if-lez v15, :cond_25f

    const/4 v3, 0x0

    :cond_25f
    move/from16 v7, v21

    const/4 v2, 0x0

    :goto_262
    if-ge v2, v4, :cond_437

    if-eqz v1, :cond_26b

    add-int/lit8 v9, v2, 0x1

    sub-int v9, v4, v9

    goto :goto_26c

    :cond_26b
    move v9, v2

    :goto_26c
    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    iget-object v10, v9, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_289

    iget-object v10, v9, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v10, v7}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v9, v7}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    goto :goto_2e9

    :cond_289
    if-lez v2, :cond_290

    if-eqz v1, :cond_28f

    sub-int/2addr v7, v3

    goto :goto_290

    :cond_28f
    add-int/2addr v7, v3

    :cond_290
    :goto_290
    if-lez v2, :cond_2a1

    if-lt v2, v5, :cond_2a1

    if-eqz v1, :cond_29c

    iget-object v10, v9, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v10, v10, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    sub-int/2addr v7, v10

    goto :goto_2a1

    :cond_29c
    iget-object v10, v9, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v10, v10, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    add-int/2addr v7, v10

    :cond_2a1
    :goto_2a1
    if-eqz v1, :cond_2a9

    iget-object v10, v9, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v10, v7}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    goto :goto_2ae

    :cond_2a9
    iget-object v10, v9, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v10, v7}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    :goto_2ae
    iget-object v10, v9, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget v10, v10, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->value:I

    iget-object v11, v9, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimensionBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v11, v12, :cond_2c1

    iget v11, v9, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->matchConstraintsType:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2c1

    iget-object v10, v9, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget v10, v10, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->wrapValue:I

    :cond_2c1
    if-eqz v1, :cond_2c5

    sub-int/2addr v7, v10

    goto :goto_2c6

    :cond_2c5
    add-int/2addr v7, v10

    :goto_2c6
    if-eqz v1, :cond_2ce

    iget-object v10, v9, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v10, v7}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    goto :goto_2d3

    :cond_2ce
    iget-object v10, v9, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v10, v7}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    :goto_2d3
    const/4 v10, 0x1

    iput-boolean v10, v9, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->resolved:Z

    if-ge v2, v8, :cond_2e9

    if-ge v2, v6, :cond_2e9

    if-eqz v1, :cond_2e3

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    neg-int v9, v9

    sub-int/2addr v7, v9

    goto :goto_2e9

    :cond_2e3
    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    neg-int v9, v9

    add-int/2addr v7, v9

    :cond_2e9
    :goto_2e9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_262

    :cond_2ed
    if-nez v9, :cond_383

    sub-int/2addr v3, v14

    const/4 v9, 0x1

    add-int/2addr v2, v9

    div-int/2addr v3, v2

    if-lez v15, :cond_2f6

    const/4 v3, 0x0

    :cond_2f6
    move/from16 v7, v21

    const/4 v2, 0x0

    :goto_2f9
    if-ge v2, v4, :cond_437

    if-eqz v1, :cond_302

    add-int/lit8 v9, v2, 0x1

    sub-int v9, v4, v9

    goto :goto_303

    :cond_302
    move v9, v2

    :goto_303
    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    iget-object v10, v9, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_320

    iget-object v10, v9, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v10, v7}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v9, v7}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    goto :goto_37f

    :cond_320
    if-eqz v1, :cond_324

    sub-int/2addr v7, v3

    goto :goto_325

    :cond_324
    add-int/2addr v7, v3

    :goto_325
    if-lez v2, :cond_336

    if-lt v2, v5, :cond_336

    if-eqz v1, :cond_331

    iget-object v10, v9, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v10, v10, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    sub-int/2addr v7, v10

    goto :goto_336

    :cond_331
    iget-object v10, v9, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v10, v10, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    add-int/2addr v7, v10

    :cond_336
    :goto_336
    if-eqz v1, :cond_33e

    iget-object v10, v9, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v10, v7}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    goto :goto_343

    :cond_33e
    iget-object v10, v9, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v10, v7}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    :goto_343
    iget-object v10, v9, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget v10, v10, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->value:I

    iget-object v11, v9, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimensionBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v11, v12, :cond_35a

    iget v11, v9, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->matchConstraintsType:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_35a

    iget-object v11, v9, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget v11, v11, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->wrapValue:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    :cond_35a
    if-eqz v1, :cond_35e

    sub-int/2addr v7, v10

    goto :goto_35f

    :cond_35e
    add-int/2addr v7, v10

    :goto_35f
    if-eqz v1, :cond_367

    iget-object v10, v9, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v10, v7}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    goto :goto_36c

    :cond_367
    iget-object v10, v9, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v10, v7}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    :goto_36c
    if-ge v2, v8, :cond_37f

    if-ge v2, v6, :cond_37f

    if-eqz v1, :cond_379

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    neg-int v9, v9

    sub-int/2addr v7, v9

    goto :goto_37f

    :cond_379
    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    neg-int v9, v9

    add-int/2addr v7, v9

    :cond_37f
    :goto_37f
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2f9

    :cond_383
    const/4 v2, 0x2

    if-ne v9, v2, :cond_437

    iget v2, v0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->orientation:I

    if-nez v2, :cond_391

    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalBiasPercent()F

    move-result v2

    goto :goto_397

    :cond_391
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalBiasPercent()F

    move-result v2

    :goto_397
    if-eqz v1, :cond_39d

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v2, v9, v2

    :cond_39d
    sub-int/2addr v3, v14

    int-to-float v3, v3

    mul-float v3, v3, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v3, v2

    float-to-int v2, v3

    if-ltz v2, :cond_3a9

    if-lez v15, :cond_3aa

    :cond_3a9
    const/4 v2, 0x0

    :cond_3aa
    if-eqz v1, :cond_3af

    sub-int v2, v21, v2

    goto :goto_3b1

    :cond_3af
    add-int v2, v21, v2

    :goto_3b1
    move v3, v2

    const/4 v2, 0x0

    :goto_3b3
    if-ge v2, v4, :cond_437

    if-eqz v1, :cond_3bc

    add-int/lit8 v7, v2, 0x1

    sub-int v7, v4, v7

    goto :goto_3bd

    :cond_3bc
    move v7, v2

    :goto_3bd
    iget-object v9, v0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    iget-object v9, v7, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_3db

    iget-object v9, v7, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v9, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v7, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    const/4 v12, 0x1

    goto :goto_433

    :cond_3db
    if-lez v2, :cond_3ec

    if-lt v2, v5, :cond_3ec

    if-eqz v1, :cond_3e7

    iget-object v9, v7, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    sub-int/2addr v3, v9

    goto :goto_3ec

    :cond_3e7
    iget-object v9, v7, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    add-int/2addr v3, v9

    :cond_3ec
    :goto_3ec
    if-eqz v1, :cond_3f4

    iget-object v9, v7, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v9, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    goto :goto_3f9

    :cond_3f4
    iget-object v9, v7, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v9, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    :goto_3f9
    iget-object v9, v7, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->value:I

    iget-object v11, v7, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimensionBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v11, v12, :cond_40d

    iget v11, v7, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->matchConstraintsType:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_40e

    iget-object v9, v7, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->wrapValue:I

    goto :goto_40e

    :cond_40d
    const/4 v12, 0x1

    :cond_40e
    :goto_40e
    if-eqz v1, :cond_412

    sub-int/2addr v3, v9

    goto :goto_413

    :cond_412
    add-int/2addr v3, v9

    :goto_413
    if-eqz v1, :cond_41b

    iget-object v9, v7, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v9, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    goto :goto_420

    :cond_41b
    iget-object v9, v7, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v9, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    :goto_420
    if-ge v2, v8, :cond_433

    if-ge v2, v6, :cond_433

    if-eqz v1, :cond_42d

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    neg-int v7, v7

    sub-int/2addr v3, v7

    goto :goto_433

    :cond_42d
    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    neg-int v7, v7

    add-int/2addr v3, v7

    :cond_433
    :goto_433
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3b3

    :cond_437
    :goto_437
    return-void
.end method
