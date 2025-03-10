.class public Landroidx/constraintlayout/solver/LinearSystem;
.super Ljava/lang/Object;
.source "LinearSystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/LinearSystem$Row;,
        Landroidx/constraintlayout/solver/LinearSystem$ValuesRow;
    }
.end annotation


# static fields
.field public static ARRAY_ROW_CREATION:J = 0x0L

.field public static final DEBUG:Z = false

.field private static final DEBUG_CONSTRAINTS:Z = false

.field public static final FULL_DEBUG:Z = false

.field public static final MEASURE:Z = false

.field public static OPTIMIZED_ARRAY_ROW_CREATION:J = 0x0L

.field public static OPTIMIZED_ENGINE:Z = false

.field private static POOL_SIZE:I = 0x3e8

.field public static SIMPLIFY_SYNONYMS:Z = true

.field public static SKIP_COLUMNS:Z = true

.field public static USE_BASIC_SYNONYMS:Z = true

.field public static USE_DEPENDENCY_ORDERING:Z = false

.field public static USE_SYNONYMS:Z = true

.field public static sMetrics:Landroidx/constraintlayout/solver/Metrics;


# instance fields
.field private TABLE_SIZE:I

.field public graphOptimizer:Z

.field public hasSimpleDefinition:Z

.field private mAlreadyTestedCandidates:[Z

.field final mCache:Landroidx/constraintlayout/solver/Cache;

.field private mGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

.field private mMaxColumns:I

.field private mMaxRows:I

.field mNumColumns:I

.field mNumRows:I

.field private mPoolVariables:[Landroidx/constraintlayout/solver/SolverVariable;

.field private mPoolVariablesCount:I

.field mRows:[Landroidx/constraintlayout/solver/ArrayRow;

.field private mTempGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

.field private mVariables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/solver/SolverVariable;",
            ">;"
        }
    .end annotation
.end field

.field mVariablesID:I

.field public newgraphOptimizer:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->hasSimpleDefinition:Z

    iput v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    const/16 v2, 0x20

    iput v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    iput v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mMaxColumns:I

    iput-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->graphOptimizer:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->newgraphOptimizer:Z

    new-array v1, v2, [Z

    iput-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mAlreadyTestedCandidates:[Z

    const/4 v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    iput v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    iput v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mMaxRows:I

    sget v1, Landroidx/constraintlayout/solver/LinearSystem;->POOL_SIZE:I

    new-array v1, v1, [Landroidx/constraintlayout/solver/SolverVariable;

    iput-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mPoolVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iput v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mPoolVariablesCount:I

    new-array v0, v2, [Landroidx/constraintlayout/solver/ArrayRow;

    iput-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    invoke-direct {p0}, Landroidx/constraintlayout/solver/LinearSystem;->releaseRows()V

    new-instance v0, Landroidx/constraintlayout/solver/Cache;

    invoke-direct {v0}, Landroidx/constraintlayout/solver/Cache;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    new-instance v1, Landroidx/constraintlayout/solver/PriorityGoalRow;

    invoke-direct {v1, v0}, Landroidx/constraintlayout/solver/PriorityGoalRow;-><init>(Landroidx/constraintlayout/solver/Cache;)V

    iput-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    sget-boolean v1, Landroidx/constraintlayout/solver/LinearSystem;->OPTIMIZED_ENGINE:Z

    if-eqz v1, :cond_4b

    new-instance v1, Landroidx/constraintlayout/solver/LinearSystem$ValuesRow;

    invoke-direct {v1, p0, v0}, Landroidx/constraintlayout/solver/LinearSystem$ValuesRow;-><init>(Landroidx/constraintlayout/solver/LinearSystem;Landroidx/constraintlayout/solver/Cache;)V

    iput-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mTempGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    goto :goto_52

    :cond_4b
    new-instance v1, Landroidx/constraintlayout/solver/ArrayRow;

    invoke-direct {v1, v0}, Landroidx/constraintlayout/solver/ArrayRow;-><init>(Landroidx/constraintlayout/solver/Cache;)V

    iput-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mTempGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    :goto_52
    return-void
.end method

.method private acquireSolverVariable(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable;
    .registers 5

    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v0, v0, Landroidx/constraintlayout/solver/Cache;->solverVariablePool:Landroidx/constraintlayout/solver/Pools$Pool;

    invoke-interface {v0}, Landroidx/constraintlayout/solver/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/SolverVariable;

    if-nez v0, :cond_15

    new-instance v0, Landroidx/constraintlayout/solver/SolverVariable;

    invoke-direct {v0, p1, p2}, Landroidx/constraintlayout/solver/SolverVariable;-><init>(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/solver/SolverVariable;->setType(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)V

    goto :goto_1b

    :cond_15
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/SolverVariable;->reset()V

    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/solver/SolverVariable;->setType(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)V

    :goto_1b
    iget p1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mPoolVariablesCount:I

    sget p2, Landroidx/constraintlayout/solver/LinearSystem;->POOL_SIZE:I

    if-lt p1, p2, :cond_2f

    mul-int/lit8 p2, p2, 0x2

    sput p2, Landroidx/constraintlayout/solver/LinearSystem;->POOL_SIZE:I

    iget-object p1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mPoolVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/constraintlayout/solver/SolverVariable;

    iput-object p1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mPoolVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    :cond_2f
    iget-object p1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mPoolVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget p2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mPoolVariablesCount:I

    add-int/lit8 v1, p2, 0x1

    iput v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mPoolVariablesCount:I

    aput-object v0, p1, p2

    return-object v0
.end method

.method private addError(Landroidx/constraintlayout/solver/ArrayRow;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroidx/constraintlayout/solver/ArrayRow;->addError(Landroidx/constraintlayout/solver/LinearSystem;I)Landroidx/constraintlayout/solver/ArrayRow;

    return-void
.end method

.method private final addRow(Landroidx/constraintlayout/solver/ArrayRow;)V
    .registers 9

    sget-boolean v0, Landroidx/constraintlayout/solver/LinearSystem;->SIMPLIFY_SYNONYMS:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p1, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    if-eqz v0, :cond_10

    iget-object v0, p1, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget p1, p1, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    invoke-virtual {v0, p0, p1}, Landroidx/constraintlayout/solver/SolverVariable;->setFinalValue(Landroidx/constraintlayout/solver/LinearSystem;F)V

    goto :goto_27

    :cond_10
    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    aput-object p1, v0, v1

    iget-object v0, p1, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    iput v1, v0, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    iget-object v0, p1, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v0, p0, p1}, Landroidx/constraintlayout/solver/SolverVariable;->updateReferencesWithNewDefinition(Landroidx/constraintlayout/solver/LinearSystem;Landroidx/constraintlayout/solver/ArrayRow;)V

    :goto_27
    sget-boolean p1, Landroidx/constraintlayout/solver/LinearSystem;->SIMPLIFY_SYNONYMS:Z

    if-eqz p1, :cond_a7

    iget-boolean p1, p0, Landroidx/constraintlayout/solver/LinearSystem;->hasSimpleDefinition:Z

    if-eqz p1, :cond_a7

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_31
    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    if-ge v0, v1, :cond_a5

    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v1, v1, v0

    if-nez v1, :cond_42

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "WTF"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_42
    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v2, v1, v0

    if-eqz v2, :cond_a2

    aget-object v1, v1, v0

    iget-boolean v1, v1, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    if-eqz v1, :cond_a2

    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v1, v1, v0

    iget-object v2, v1, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget v3, v1, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    invoke-virtual {v2, p0, v3}, Landroidx/constraintlayout/solver/SolverVariable;->setFinalValue(Landroidx/constraintlayout/solver/LinearSystem;F)V

    sget-boolean v2, Landroidx/constraintlayout/solver/LinearSystem;->OPTIMIZED_ENGINE:Z

    if-eqz v2, :cond_65

    iget-object v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v2, v2, Landroidx/constraintlayout/solver/Cache;->optimizedArrayRowPool:Landroidx/constraintlayout/solver/Pools$Pool;

    invoke-interface {v2, v1}, Landroidx/constraintlayout/solver/Pools$Pool;->release(Ljava/lang/Object;)Z

    goto :goto_6c

    :cond_65
    iget-object v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v2, v2, Landroidx/constraintlayout/solver/Cache;->arrayRowPool:Landroidx/constraintlayout/solver/Pools$Pool;

    invoke-interface {v2, v1}, Landroidx/constraintlayout/solver/Pools$Pool;->release(Ljava/lang/Object;)Z

    :goto_6c
    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v1, v0, 0x1

    move v3, v1

    :goto_74
    iget v4, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    if-ge v1, v4, :cond_96

    iget-object v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    add-int/lit8 v4, v1, -0x1

    aget-object v5, v3, v1

    aput-object v5, v3, v4

    aget-object v3, v3, v4

    iget-object v3, v3, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget v3, v3, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    if-ne v3, v1, :cond_90

    iget-object v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v3, v3, v4

    iget-object v3, v3, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iput v4, v3, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    :cond_90
    add-int/lit8 v3, v1, 0x1

    move v6, v3

    move v3, v1

    move v1, v6

    goto :goto_74

    :cond_96
    if-ge v3, v4, :cond_9c

    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aput-object v2, v1, v3

    :cond_9c
    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    add-int/lit8 v0, v0, -0x1

    :cond_a2
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    :cond_a5
    iput-boolean p1, p0, Landroidx/constraintlayout/solver/LinearSystem;->hasSimpleDefinition:Z

    :cond_a7
    return-void
.end method

.method private addSingleError(Landroidx/constraintlayout/solver/ArrayRow;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/constraintlayout/solver/LinearSystem;->addSingleError(Landroidx/constraintlayout/solver/ArrayRow;II)V

    return-void
.end method

.method private computeValues()V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    if-ge v0, v1, :cond_12

    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v1, v1, v0

    iget-object v2, v1, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget v1, v1, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    iput v1, v2, Landroidx/constraintlayout/solver/SolverVariable;->computedValue:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_12
    return-void
.end method

.method public static createRowDimensionPercent(Landroidx/constraintlayout/solver/LinearSystem;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;F)Landroidx/constraintlayout/solver/ArrayRow;
    .registers 4

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/constraintlayout/solver/ArrayRow;->createRowDimensionPercent(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;F)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object p0

    return-object p0
.end method

.method private createVariable(Ljava/lang/String;Landroidx/constraintlayout/solver/SolverVariable$Type;)Landroidx/constraintlayout/solver/SolverVariable;
    .registers 8

    sget-object v0, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v0, :cond_b

    iget-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->variables:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->variables:J

    :cond_b
    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mMaxColumns:I

    if-lt v0, v1, :cond_16

    invoke-direct {p0}, Landroidx/constraintlayout/solver/LinearSystem;->increaseTableSize()V

    :cond_16
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroidx/constraintlayout/solver/LinearSystem;->acquireSolverVariable(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/solver/SolverVariable;->setName(Ljava/lang/String;)V

    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    iput v0, p2, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    if-nez v0, :cond_37

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    :cond_37
    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object p1, p1, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    aput-object p2, p1, v0

    return-object p2
.end method

.method private displayRows()V
    .registers 5

    invoke-direct {p0}, Landroidx/constraintlayout/solver/LinearSystem;->displaySolverVariables()V

    const-string v0, ""

    const/4 v1, 0x0

    :goto_6
    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    const-string v3, "\n"

    if-ge v1, v2, :cond_31

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private displaySolverVariables()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display Rows ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private enforceBFS(Landroidx/constraintlayout/solver/LinearSystem$Row;)I
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v2, 0x0

    :goto_3
    iget v3, v0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    const/4 v4, 0x0

    if-ge v2, v3, :cond_24

    iget-object v3, v0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v3, v3, v2

    iget-object v3, v3, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v3, v3, Landroidx/constraintlayout/solver/SolverVariable;->mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

    sget-object v6, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    if-ne v3, v6, :cond_15

    goto :goto_21

    :cond_15
    iget-object v3, v0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v3, v3, v2

    iget v3, v3, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_21

    const/4 v2, 0x1

    goto :goto_25

    :cond_21
    :goto_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_24
    const/4 v2, 0x0

    :goto_25
    if-eqz v2, :cond_10d

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_29
    :goto_29
    if-nez v2, :cond_10b

    sget-object v6, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    const-wide/16 v7, 0x1

    if-eqz v6, :cond_36

    iget-wide v9, v6, Landroidx/constraintlayout/solver/Metrics;->bfs:J

    add-long/2addr v9, v7

    iput-wide v9, v6, Landroidx/constraintlayout/solver/Metrics;->bfs:J

    :cond_36
    add-int/lit8 v3, v3, 0x1

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, 0x0

    :goto_3f
    iget v14, v0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    if-ge v10, v14, :cond_d8

    iget-object v14, v0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v14, v14, v10

    iget-object v15, v14, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v15, v15, Landroidx/constraintlayout/solver/SolverVariable;->mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

    sget-object v1, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    if-ne v15, v1, :cond_51

    goto/16 :goto_d2

    :cond_51
    iget-boolean v1, v14, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    if-eqz v1, :cond_57

    goto/16 :goto_d2

    :cond_57
    iget v1, v14, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_d2

    sget-boolean v1, Landroidx/constraintlayout/solver/LinearSystem;->SKIP_COLUMNS:Z

    const/16 v15, 0x9

    if-eqz v1, :cond_9e

    iget-object v1, v14, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v1}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    move-result v1

    const/4 v5, 0x0

    :goto_6a
    if-ge v5, v1, :cond_d2

    iget-object v7, v14, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v7, v5}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->getVariable(I)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v7

    iget-object v8, v14, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v8, v7}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->get(Landroidx/constraintlayout/solver/SolverVariable;)F

    move-result v8

    cmpg-float v16, v8, v4

    if-gtz v16, :cond_7d

    goto :goto_97

    :cond_7d
    const/4 v9, 0x0

    :goto_7e
    if-ge v9, v15, :cond_97

    iget-object v15, v7, Landroidx/constraintlayout/solver/SolverVariable;->strengthVector:[F

    aget v15, v15, v9

    div-float/2addr v15, v8

    cmpg-float v18, v15, v6

    if-gez v18, :cond_8b

    if-eq v9, v13, :cond_8d

    :cond_8b
    if-le v9, v13, :cond_92

    :cond_8d
    iget v12, v7, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    move v13, v9

    move v11, v10

    move v6, v15

    :cond_92
    add-int/lit8 v9, v9, 0x1

    const/16 v15, 0x9

    goto :goto_7e

    :cond_97
    :goto_97
    add-int/lit8 v5, v5, 0x1

    const-wide/16 v7, 0x1

    const/16 v15, 0x9

    goto :goto_6a

    :cond_9e
    const/4 v1, 0x1

    :goto_9f
    iget v5, v0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    if-ge v1, v5, :cond_d2

    iget-object v5, v0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v5, v5, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v5, v5, v1

    iget-object v7, v14, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v7, v5}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->get(Landroidx/constraintlayout/solver/SolverVariable;)F

    move-result v7

    cmpg-float v8, v7, v4

    if-gtz v8, :cond_b6

    const/16 v9, 0x9

    goto :goto_cf

    :cond_b6
    const/4 v8, 0x0

    const/16 v9, 0x9

    :goto_b9
    if-ge v8, v9, :cond_cf

    iget-object v15, v5, Landroidx/constraintlayout/solver/SolverVariable;->strengthVector:[F

    aget v15, v15, v8

    div-float/2addr v15, v7

    cmpg-float v17, v15, v6

    if-gez v17, :cond_c6

    if-eq v8, v13, :cond_c8

    :cond_c6
    if-le v8, v13, :cond_cc

    :cond_c8
    move v12, v1

    move v13, v8

    move v11, v10

    move v6, v15

    :cond_cc
    add-int/lit8 v8, v8, 0x1

    goto :goto_b9

    :cond_cf
    :goto_cf
    add-int/lit8 v1, v1, 0x1

    goto :goto_9f

    :cond_d2
    :goto_d2
    add-int/lit8 v10, v10, 0x1

    const-wide/16 v7, 0x1

    goto/16 :goto_3f

    :cond_d8
    const/4 v1, -0x1

    if-eq v11, v1, :cond_101

    iget-object v5, v0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v5, v5, v11

    iget-object v6, v5, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iput v1, v6, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    sget-object v1, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v1, :cond_ee

    iget-wide v6, v1, Landroidx/constraintlayout/solver/Metrics;->pivots:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v1, Landroidx/constraintlayout/solver/Metrics;->pivots:J

    :cond_ee
    iget-object v1, v0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v1, v1, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v1, v1, v12

    invoke-virtual {v5, v1}, Landroidx/constraintlayout/solver/ArrayRow;->pivot(Landroidx/constraintlayout/solver/SolverVariable;)V

    iget-object v1, v5, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iput v11, v1, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    iget-object v1, v5, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v1, v0, v5}, Landroidx/constraintlayout/solver/SolverVariable;->updateReferencesWithNewDefinition(Landroidx/constraintlayout/solver/LinearSystem;Landroidx/constraintlayout/solver/ArrayRow;)V

    goto :goto_102

    :cond_101
    const/4 v2, 0x1

    :goto_102
    iget v1, v0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    div-int/lit8 v1, v1, 0x2

    if-le v3, v1, :cond_29

    const/4 v2, 0x1

    goto/16 :goto_29

    :cond_10b
    move v1, v3

    goto :goto_10e

    :cond_10d
    const/4 v1, 0x0

    :goto_10e
    return v1
.end method

.method private getDisplaySize(I)Ljava/lang/String;
    .registers 5

    mul-int/lit8 p1, p1, 0x4

    div-int/lit16 v0, p1, 0x400

    div-int/lit16 v1, v0, 0x400

    const-string v2, ""

    if-lez v1, :cond_1f

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " Mb"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1f
    if-lez v0, :cond_36

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " Kb"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getDisplayStrength(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    const-string p1, "LOW"

    return-object p1

    :cond_6
    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    const-string p1, "MEDIUM"

    return-object p1

    :cond_c
    const/4 v0, 0x3

    if-ne p1, v0, :cond_12

    const-string p1, "HIGH"

    return-object p1

    :cond_12
    const/4 v0, 0x4

    if-ne p1, v0, :cond_18

    const-string p1, "HIGHEST"

    return-object p1

    :cond_18
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1e

    const-string p1, "EQUALITY"

    return-object p1

    :cond_1e
    const/16 v0, 0x8

    if-ne p1, v0, :cond_25

    const-string p1, "FIXED"

    return-object p1

    :cond_25
    const/4 v0, 0x6

    if-ne p1, v0, :cond_2b

    const-string p1, "BARRIER"

    return-object p1

    :cond_2b
    const-string p1, "NONE"

    return-object p1
.end method

.method public static getMetrics()Landroidx/constraintlayout/solver/Metrics;
    .registers 1

    sget-object v0, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    return-object v0
.end method

.method private increaseTableSize()V
    .registers 6

    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/solver/ArrayRow;

    iput-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v1, v0, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/constraintlayout/solver/SolverVariable;

    iput-object v1, v0, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    new-array v1, v0, [Z

    iput-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mAlreadyTestedCandidates:[Z

    iput v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mMaxColumns:I

    iput v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mMaxRows:I

    sget-object v0, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v0, :cond_46

    iget-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->tableSizeIncrease:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->tableSizeIncrease:J

    sget-object v0, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->maxTableSize:J

    iget v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->maxTableSize:J

    sget-object v0, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->maxTableSize:J

    iput-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->lastTableSize:J

    :cond_46
    return-void
.end method

.method private final optimize(Landroidx/constraintlayout/solver/LinearSystem$Row;Z)I
    .registers 15

    sget-object p2, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    const-wide/16 v0, 0x1

    if-eqz p2, :cond_b

    iget-wide v2, p2, Landroidx/constraintlayout/solver/Metrics;->optimize:J

    add-long/2addr v2, v0

    iput-wide v2, p2, Landroidx/constraintlayout/solver/Metrics;->optimize:J

    :cond_b
    const/4 p2, 0x0

    const/4 v2, 0x0

    :goto_d
    iget v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    if-ge v2, v3, :cond_18

    iget-object v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->mAlreadyTestedCandidates:[Z

    aput-boolean p2, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_18
    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_1a
    :goto_1a
    if-nez v2, :cond_b6

    sget-object v4, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v4, :cond_25

    iget-wide v5, v4, Landroidx/constraintlayout/solver/Metrics;->iterations:J

    add-long/2addr v5, v0

    iput-wide v5, v4, Landroidx/constraintlayout/solver/Metrics;->iterations:J

    :cond_25
    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    mul-int/lit8 v4, v4, 0x2

    if-lt v3, v4, :cond_2e

    return v3

    :cond_2e
    invoke-interface {p1}, Landroidx/constraintlayout/solver/LinearSystem$Row;->getKey()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3f

    iget-object v4, p0, Landroidx/constraintlayout/solver/LinearSystem;->mAlreadyTestedCandidates:[Z

    invoke-interface {p1}, Landroidx/constraintlayout/solver/LinearSystem$Row;->getKey()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v6

    iget v6, v6, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    aput-boolean v5, v4, v6

    :cond_3f
    iget-object v4, p0, Landroidx/constraintlayout/solver/LinearSystem;->mAlreadyTestedCandidates:[Z

    invoke-interface {p1, p0, v4}, Landroidx/constraintlayout/solver/LinearSystem$Row;->getPivotCandidate(Landroidx/constraintlayout/solver/LinearSystem;[Z)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v4

    if-eqz v4, :cond_56

    iget-object v6, p0, Landroidx/constraintlayout/solver/LinearSystem;->mAlreadyTestedCandidates:[Z

    iget v7, v4, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    aget-boolean v6, v6, v7

    if-eqz v6, :cond_50

    return v3

    :cond_50
    iget-object v6, p0, Landroidx/constraintlayout/solver/LinearSystem;->mAlreadyTestedCandidates:[Z

    iget v7, v4, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    aput-boolean v5, v6, v7

    :cond_56
    if-eqz v4, :cond_b3

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    :goto_5e
    iget v9, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    if-ge v7, v9, :cond_92

    iget-object v9, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v9, v9, v7

    iget-object v10, v9, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v10, v10, Landroidx/constraintlayout/solver/SolverVariable;->mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

    sget-object v11, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    if-ne v10, v11, :cond_6f

    goto :goto_8f

    :cond_6f
    iget-boolean v10, v9, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    if-eqz v10, :cond_74

    goto :goto_8f

    :cond_74
    invoke-virtual {v9, v4}, Landroidx/constraintlayout/solver/ArrayRow;->hasVariable(Landroidx/constraintlayout/solver/SolverVariable;)Z

    move-result v10

    if-eqz v10, :cond_8f

    iget-object v10, v9, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v10, v4}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->get(Landroidx/constraintlayout/solver/SolverVariable;)F

    move-result v10

    const/4 v11, 0x0

    cmpg-float v11, v10, v11

    if-gez v11, :cond_8f

    iget v9, v9, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    neg-float v9, v9

    div-float/2addr v9, v10

    cmpg-float v10, v9, v5

    if-gez v10, :cond_8f

    move v8, v7

    move v5, v9

    :cond_8f
    :goto_8f
    add-int/lit8 v7, v7, 0x1

    goto :goto_5e

    :cond_92
    if-le v8, v6, :cond_1a

    iget-object v5, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v5, v5, v8

    iget-object v7, v5, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iput v6, v7, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    sget-object v6, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v6, :cond_a5

    iget-wide v9, v6, Landroidx/constraintlayout/solver/Metrics;->pivots:J

    add-long/2addr v9, v0

    iput-wide v9, v6, Landroidx/constraintlayout/solver/Metrics;->pivots:J

    :cond_a5
    invoke-virtual {v5, v4}, Landroidx/constraintlayout/solver/ArrayRow;->pivot(Landroidx/constraintlayout/solver/SolverVariable;)V

    iget-object v4, v5, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iput v8, v4, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    iget-object v4, v5, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v4, p0, v5}, Landroidx/constraintlayout/solver/SolverVariable;->updateReferencesWithNewDefinition(Landroidx/constraintlayout/solver/LinearSystem;Landroidx/constraintlayout/solver/ArrayRow;)V

    goto/16 :goto_1a

    :cond_b3
    const/4 v2, 0x1

    goto/16 :goto_1a

    :cond_b6
    return v3
.end method

.method private releaseRows()V
    .registers 5

    sget-boolean v0, Landroidx/constraintlayout/solver/LinearSystem;->OPTIMIZED_ENGINE:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1e

    :goto_6
    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    if-ge v2, v0, :cond_36

    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v0, v0, v2

    if-eqz v0, :cond_17

    iget-object v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v3, v3, Landroidx/constraintlayout/solver/Cache;->optimizedArrayRowPool:Landroidx/constraintlayout/solver/Pools$Pool;

    invoke-interface {v3, v0}, Landroidx/constraintlayout/solver/Pools$Pool;->release(Ljava/lang/Object;)Z

    :cond_17
    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1e
    :goto_1e
    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    if-ge v2, v0, :cond_36

    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v0, v0, v2

    if-eqz v0, :cond_2f

    iget-object v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v3, v3, Landroidx/constraintlayout/solver/Cache;->arrayRowPool:Landroidx/constraintlayout/solver/Pools$Pool;

    invoke-interface {v3, v0}, Landroidx/constraintlayout/solver/Pools$Pool;->release(Ljava/lang/Object;)Z

    :cond_2f
    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_36
    return-void
.end method


# virtual methods
.method public addCenterPoint(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;FI)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v5

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v7

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v8

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v9

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v12

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v2

    move/from16 v4, p3

    float-to-double v13, v4

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    move/from16 v4, p4

    move-object/from16 v17, v3

    int-to-double v3, v4

    move-object/from16 p1, v12

    mul-double v11, v15, v3

    double-to-float v11, v11

    move-object v6, v2

    invoke-virtual/range {v6 .. v11}, Landroidx/constraintlayout/solver/ArrayRow;->createRowWithAngle(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;F)Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v2

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v6, v6, v3

    double-to-float v9, v6

    move-object v4, v2

    move-object/from16 v6, v17

    move-object v7, v1

    move-object/from16 v8, p1

    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/solver/ArrayRow;->createRowWithAngle(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;F)Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    return-void
.end method

.method public addCentering(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    .registers 20

    move-object v0, p0

    move/from16 v1, p8

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v10

    move-object v2, v10

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Landroidx/constraintlayout/solver/ArrayRow;->createRowCentering(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1c

    invoke-virtual {v10, p0, v1}, Landroidx/constraintlayout/solver/ArrayRow;->addError(Landroidx/constraintlayout/solver/LinearSystem;I)Landroidx/constraintlayout/solver/ArrayRow;

    :cond_1c
    invoke-virtual {p0, v10}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    return-void
.end method

.method public addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V
    .registers 9

    if-nez p1, :cond_3

    return-void

    :cond_3
    sget-object v0, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_19

    iget-wide v3, v0, Landroidx/constraintlayout/solver/Metrics;->constraints:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Landroidx/constraintlayout/solver/Metrics;->constraints:J

    iget-boolean v0, p1, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    if-eqz v0, :cond_19

    sget-object v0, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v3, v0, Landroidx/constraintlayout/solver/Metrics;->simpleconstraints:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Landroidx/constraintlayout/solver/Metrics;->simpleconstraints:J

    :cond_19
    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    iget v4, p0, Landroidx/constraintlayout/solver/LinearSystem;->mMaxRows:I

    if-ge v0, v4, :cond_28

    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    add-int/2addr v0, v3

    iget v4, p0, Landroidx/constraintlayout/solver/LinearSystem;->mMaxColumns:I

    if-lt v0, v4, :cond_2b

    :cond_28
    invoke-direct {p0}, Landroidx/constraintlayout/solver/LinearSystem;->increaseTableSize()V

    :cond_2b
    const/4 v0, 0x0

    iget-boolean v4, p1, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    if-nez v4, :cond_a3

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/solver/ArrayRow;->updateFromSystem(Landroidx/constraintlayout/solver/LinearSystem;)V

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/ArrayRow;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3a

    return-void

    :cond_3a
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/ArrayRow;->ensurePositiveConstant()V

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/solver/ArrayRow;->chooseSubject(Landroidx/constraintlayout/solver/LinearSystem;)Z

    move-result v4

    if-eqz v4, :cond_9a

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createExtraVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v4

    iput-object v4, p1, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget v5, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    invoke-direct {p0, p1}, Landroidx/constraintlayout/solver/LinearSystem;->addRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    iget v6, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    add-int/2addr v5, v3

    if-ne v6, v5, :cond_9a

    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mTempGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    invoke-interface {v0, p1}, Landroidx/constraintlayout/solver/LinearSystem$Row;->initFromRow(Landroidx/constraintlayout/solver/LinearSystem$Row;)V

    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mTempGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    invoke-direct {p0, v0, v3}, Landroidx/constraintlayout/solver/LinearSystem;->optimize(Landroidx/constraintlayout/solver/LinearSystem$Row;Z)I

    iget v0, v4, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    const/4 v5, -0x1

    if-ne v0, v5, :cond_9b

    iget-object v0, p1, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    if-ne v0, v4, :cond_78

    invoke-virtual {p1, v4}, Landroidx/constraintlayout/solver/ArrayRow;->pickPivot(Landroidx/constraintlayout/solver/SolverVariable;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    if-eqz v0, :cond_78

    sget-object v4, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v4, :cond_75

    iget-wide v5, v4, Landroidx/constraintlayout/solver/Metrics;->pivots:J

    add-long/2addr v5, v1

    iput-wide v5, v4, Landroidx/constraintlayout/solver/Metrics;->pivots:J

    :cond_75
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/solver/ArrayRow;->pivot(Landroidx/constraintlayout/solver/SolverVariable;)V

    :cond_78
    iget-boolean v0, p1, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    if-nez v0, :cond_81

    iget-object v0, p1, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v0, p0, p1}, Landroidx/constraintlayout/solver/SolverVariable;->updateReferencesWithNewDefinition(Landroidx/constraintlayout/solver/LinearSystem;Landroidx/constraintlayout/solver/ArrayRow;)V

    :cond_81
    sget-boolean v0, Landroidx/constraintlayout/solver/LinearSystem;->OPTIMIZED_ENGINE:Z

    if-eqz v0, :cond_8d

    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v0, v0, Landroidx/constraintlayout/solver/Cache;->optimizedArrayRowPool:Landroidx/constraintlayout/solver/Pools$Pool;

    invoke-interface {v0, p1}, Landroidx/constraintlayout/solver/Pools$Pool;->release(Ljava/lang/Object;)Z

    goto :goto_94

    :cond_8d
    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v0, v0, Landroidx/constraintlayout/solver/Cache;->arrayRowPool:Landroidx/constraintlayout/solver/Pools$Pool;

    invoke-interface {v0, p1}, Landroidx/constraintlayout/solver/Pools$Pool;->release(Ljava/lang/Object;)Z

    :goto_94
    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    sub-int/2addr v0, v3

    iput v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    goto :goto_9b

    :cond_9a
    const/4 v3, 0x0

    :cond_9b
    :goto_9b
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/ArrayRow;->hasKeyVariable()Z

    move-result v0

    if-nez v0, :cond_a2

    return-void

    :cond_a2
    move v0, v3

    :cond_a3
    if-nez v0, :cond_a8

    invoke-direct {p0, p1}, Landroidx/constraintlayout/solver/LinearSystem;->addRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    :cond_a8
    return-void
.end method

.method public addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;
    .registers 8

    sget-boolean v0, Landroidx/constraintlayout/solver/LinearSystem;->USE_BASIC_SYNONYMS:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_1a

    if-ne p4, v1, :cond_1a

    iget-boolean v0, p2, Landroidx/constraintlayout/solver/SolverVariable;->isFinalValue:Z

    if-eqz v0, :cond_1a

    iget v0, p1, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1a

    iget p2, p2, Landroidx/constraintlayout/solver/SolverVariable;->computedValue:F

    int-to-float p3, p3

    add-float/2addr p2, p3

    invoke-virtual {p1, p0, p2}, Landroidx/constraintlayout/solver/SolverVariable;->setFinalValue(Landroidx/constraintlayout/solver/LinearSystem;F)V

    const/4 p1, 0x0

    return-object p1

    :cond_1a
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroidx/constraintlayout/solver/ArrayRow;->createRowEquals(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    if-eq p4, v1, :cond_26

    invoke-virtual {v0, p0, p4}, Landroidx/constraintlayout/solver/ArrayRow;->addError(Landroidx/constraintlayout/solver/LinearSystem;I)Landroidx/constraintlayout/solver/ArrayRow;

    :cond_26
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    return-object v0
.end method

.method public addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V
    .registers 8

    sget-boolean v0, Landroidx/constraintlayout/solver/LinearSystem;->USE_BASIC_SYNONYMS:Z

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_30

    iget v0, p1, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    if-ne v0, v1, :cond_30

    int-to-float p2, p2

    invoke-virtual {p1, p0, p2}, Landroidx/constraintlayout/solver/SolverVariable;->setFinalValue(Landroidx/constraintlayout/solver/LinearSystem;F)V

    const/4 v0, 0x0

    :goto_f
    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_2f

    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v1, v1, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2c

    iget-boolean v3, v1, Landroidx/constraintlayout/solver/SolverVariable;->isSynonym:Z

    if-eqz v3, :cond_2c

    iget v3, v1, Landroidx/constraintlayout/solver/SolverVariable;->synonym:I

    iget v4, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-ne v3, v4, :cond_2c

    iget v3, v1, Landroidx/constraintlayout/solver/SolverVariable;->synonymDelta:F

    add-float/2addr v3, p2

    invoke-virtual {v1, p0, v3}, Landroidx/constraintlayout/solver/SolverVariable;->setFinalValue(Landroidx/constraintlayout/solver/LinearSystem;F)V

    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_2f
    return-void

    :cond_30
    iget v0, p1, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    iget v3, p1, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    if-eq v3, v1, :cond_5b

    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v0, v1, v0

    iget-boolean v1, v0, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    if-eqz v1, :cond_42

    int-to-float p1, p2

    iput p1, v0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    goto :goto_65

    :cond_42
    iget-object v1, v0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v1}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    move-result v1

    if-nez v1, :cond_50

    iput-boolean v2, v0, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    int-to-float p1, p2

    iput p1, v0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    goto :goto_65

    :cond_50
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/solver/ArrayRow;->createRowEquals(Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    goto :goto_65

    :cond_5b
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/solver/ArrayRow;->createRowDefinition(Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    :goto_65
    return-void
.end method

.method public addGreaterBarrier(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IZ)V
    .registers 7

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object p4

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createSlackVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    invoke-virtual {p4, p1, p2, v0, p3}, Landroidx/constraintlayout/solver/ArrayRow;->createRowGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {p0, p4}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    return-void
.end method

.method public addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    .registers 8

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createSlackVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    invoke-virtual {v0, p1, p2, v1, p3}, Landroidx/constraintlayout/solver/ArrayRow;->createRowGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    const/16 p1, 0x8

    if-eq p4, p1, :cond_20

    iget-object p1, v0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {p1, v1}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->get(Landroidx/constraintlayout/solver/SolverVariable;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1, p4}, Landroidx/constraintlayout/solver/LinearSystem;->addSingleError(Landroidx/constraintlayout/solver/ArrayRow;II)V

    :cond_20
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    return-void
.end method

.method public addLowerBarrier(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IZ)V
    .registers 7

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object p4

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createSlackVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    invoke-virtual {p4, p1, p2, v0, p3}, Landroidx/constraintlayout/solver/ArrayRow;->createRowLowerThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {p0, p4}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    return-void
.end method

.method public addLowerThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    .registers 8

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createSlackVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    invoke-virtual {v0, p1, p2, v1, p3}, Landroidx/constraintlayout/solver/ArrayRow;->createRowLowerThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    const/16 p1, 0x8

    if-eq p4, p1, :cond_20

    iget-object p1, v0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {p1, v1}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->get(Landroidx/constraintlayout/solver/SolverVariable;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1, p4}, Landroidx/constraintlayout/solver/LinearSystem;->addSingleError(Landroidx/constraintlayout/solver/ArrayRow;II)V

    :cond_20
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    return-void
.end method

.method public addRatio(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;FI)V
    .registers 14

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v6

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/solver/ArrayRow;->createRowDimensionRatio(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;F)Landroidx/constraintlayout/solver/ArrayRow;

    const/16 p1, 0x8

    if-eq p6, p1, :cond_14

    invoke-virtual {v6, p0, p6}, Landroidx/constraintlayout/solver/ArrayRow;->addError(Landroidx/constraintlayout/solver/LinearSystem;I)Landroidx/constraintlayout/solver/ArrayRow;

    :cond_14
    invoke-virtual {p0, v6}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    return-void
.end method

.method addSingleError(Landroidx/constraintlayout/solver/ArrayRow;II)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p3, v0}, Landroidx/constraintlayout/solver/LinearSystem;->createErrorVariable(ILjava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Landroidx/constraintlayout/solver/ArrayRow;->addSingleError(Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    return-void
.end method

.method public addSynonym(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)V
    .registers 6

    iget v0, p1, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_29

    if-nez p3, :cond_29

    iget-boolean p3, p2, Landroidx/constraintlayout/solver/SolverVariable;->isSynonym:Z

    if-eqz p3, :cond_15

    iget p3, p2, Landroidx/constraintlayout/solver/SolverVariable;->synonymDelta:F

    iget-object p3, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object p3, p3, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget p2, p2, Landroidx/constraintlayout/solver/SolverVariable;->synonym:I

    aget-object p2, p3, p2

    :cond_15
    iget-boolean p3, p1, Landroidx/constraintlayout/solver/SolverVariable;->isSynonym:Z

    if-eqz p3, :cond_24

    iget p2, p1, Landroidx/constraintlayout/solver/SolverVariable;->synonymDelta:F

    iget-object p2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object p2, p2, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget p1, p1, Landroidx/constraintlayout/solver/SolverVariable;->synonym:I

    aget-object p1, p2, p1

    goto :goto_2e

    :cond_24
    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroidx/constraintlayout/solver/SolverVariable;->setSynonym(Landroidx/constraintlayout/solver/LinearSystem;Landroidx/constraintlayout/solver/SolverVariable;F)V

    goto :goto_2e

    :cond_29
    const/16 v0, 0x8

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    :goto_2e
    return-void
.end method

.method final cleanupRows()V
    .registers 8

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    if-ge v0, v1, :cond_56

    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v1, v1, v0

    iget-object v2, v1, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v2}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_14

    iput-boolean v3, v1, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    :cond_14
    iget-boolean v2, v1, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    if-eqz v2, :cond_54

    iget-object v2, v1, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget v4, v1, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    iput v4, v2, Landroidx/constraintlayout/solver/SolverVariable;->computedValue:F

    iget-object v2, v1, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/solver/SolverVariable;->removeFromRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    move v2, v0

    :goto_24
    iget v4, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    add-int/lit8 v5, v4, -0x1

    if-ge v2, v5, :cond_34

    iget-object v4, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    add-int/lit8 v5, v2, 0x1

    aget-object v6, v4, v5

    aput-object v6, v4, v2

    move v2, v5

    goto :goto_24

    :cond_34
    iget-object v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    add-int/lit8 v5, v4, -0x1

    const/4 v6, 0x0

    aput-object v6, v2, v5

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    add-int/lit8 v0, v0, -0x1

    sget-boolean v2, Landroidx/constraintlayout/solver/LinearSystem;->OPTIMIZED_ENGINE:Z

    if-eqz v2, :cond_4d

    iget-object v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v2, v2, Landroidx/constraintlayout/solver/Cache;->optimizedArrayRowPool:Landroidx/constraintlayout/solver/Pools$Pool;

    invoke-interface {v2, v1}, Landroidx/constraintlayout/solver/Pools$Pool;->release(Ljava/lang/Object;)Z

    goto :goto_54

    :cond_4d
    iget-object v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v2, v2, Landroidx/constraintlayout/solver/Cache;->arrayRowPool:Landroidx/constraintlayout/solver/Pools$Pool;

    invoke-interface {v2, v1}, Landroidx/constraintlayout/solver/Pools$Pool;->release(Ljava/lang/Object;)Z

    :cond_54
    :goto_54
    add-int/2addr v0, v3

    goto :goto_1

    :cond_56
    return-void
.end method

.method public createErrorVariable(ILjava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable;
    .registers 8

    sget-object v0, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v0, :cond_b

    iget-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->errors:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->errors:J

    :cond_b
    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mMaxColumns:I

    if-lt v0, v1, :cond_16

    invoke-direct {p0}, Landroidx/constraintlayout/solver/LinearSystem;->increaseTableSize()V

    :cond_16
    sget-object v0, Landroidx/constraintlayout/solver/SolverVariable$Type;->ERROR:Landroidx/constraintlayout/solver/SolverVariable$Type;

    invoke-direct {p0, v0, p2}, Landroidx/constraintlayout/solver/LinearSystem;->acquireSolverVariable(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object p2

    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    iput v0, p2, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    iput p1, p2, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    iget-object p1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object p1, p1, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    aput-object p2, p1, v0

    iget-object p1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    invoke-interface {p1, p2}, Landroidx/constraintlayout/solver/LinearSystem$Row;->addError(Landroidx/constraintlayout/solver/SolverVariable;)V

    return-object p2
.end method

.method public createExtraVariable()Landroidx/constraintlayout/solver/SolverVariable;
    .registers 6

    sget-object v0, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v0, :cond_b

    iget-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->extravariables:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->extravariables:J

    :cond_b
    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mMaxColumns:I

    if-lt v0, v1, :cond_16

    invoke-direct {p0}, Landroidx/constraintlayout/solver/LinearSystem;->increaseTableSize()V

    :cond_16
    sget-object v0, Landroidx/constraintlayout/solver/SolverVariable$Type;->SLACK:Landroidx/constraintlayout/solver/SolverVariable$Type;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/solver/LinearSystem;->acquireSolverVariable(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    iput v1, v0, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v1, v1, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    aput-object v0, v1, v2

    return-object v0
.end method

.method public createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mMaxColumns:I

    if-lt v1, v2, :cond_f

    invoke-direct {p0}, Landroidx/constraintlayout/solver/LinearSystem;->increaseTableSize()V

    :cond_f
    instance-of v1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_5b

    check-cast p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getSolverVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    if-nez v0, :cond_25

    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/solver/Cache;)V

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getSolverVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object p1

    move-object v0, p1

    :cond_25
    iget p1, v0, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_3a

    iget p1, v0, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    if-gt p1, v2, :cond_3a

    iget-object p1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object p1, p1, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget v2, v0, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    aget-object p1, p1, v2

    if-nez p1, :cond_5b

    :cond_3a
    iget p1, v0, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-eq p1, v1, :cond_41

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/SolverVariable;->reset()V

    :cond_41
    iget p1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    iput p1, v0, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    sget-object p1, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    iput-object p1, v0, Landroidx/constraintlayout/solver/SolverVariable;->mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

    iget-object p1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object p1, p1, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    aput-object v0, p1, v1

    :cond_5b
    return-object v0
.end method

.method public createRow()Landroidx/constraintlayout/solver/ArrayRow;
    .registers 6

    sget-boolean v0, Landroidx/constraintlayout/solver/LinearSystem;->OPTIMIZED_ENGINE:Z

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_23

    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v0, v0, Landroidx/constraintlayout/solver/Cache;->optimizedArrayRowPool:Landroidx/constraintlayout/solver/Pools$Pool;

    invoke-interface {v0}, Landroidx/constraintlayout/solver/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/ArrayRow;

    if-nez v0, :cond_1f

    new-instance v0, Landroidx/constraintlayout/solver/LinearSystem$ValuesRow;

    iget-object v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    invoke-direct {v0, p0, v3}, Landroidx/constraintlayout/solver/LinearSystem$ValuesRow;-><init>(Landroidx/constraintlayout/solver/LinearSystem;Landroidx/constraintlayout/solver/Cache;)V

    sget-wide v3, Landroidx/constraintlayout/solver/LinearSystem;->OPTIMIZED_ARRAY_ROW_CREATION:J

    add-long/2addr v3, v1

    sput-wide v3, Landroidx/constraintlayout/solver/LinearSystem;->OPTIMIZED_ARRAY_ROW_CREATION:J

    goto :goto_3f

    :cond_1f
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/ArrayRow;->reset()V

    goto :goto_3f

    :cond_23
    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v0, v0, Landroidx/constraintlayout/solver/Cache;->arrayRowPool:Landroidx/constraintlayout/solver/Pools$Pool;

    invoke-interface {v0}, Landroidx/constraintlayout/solver/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/ArrayRow;

    if-nez v0, :cond_3c

    new-instance v0, Landroidx/constraintlayout/solver/ArrayRow;

    iget-object v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    invoke-direct {v0, v3}, Landroidx/constraintlayout/solver/ArrayRow;-><init>(Landroidx/constraintlayout/solver/Cache;)V

    sget-wide v3, Landroidx/constraintlayout/solver/LinearSystem;->ARRAY_ROW_CREATION:J

    add-long/2addr v3, v1

    sput-wide v3, Landroidx/constraintlayout/solver/LinearSystem;->ARRAY_ROW_CREATION:J

    goto :goto_3f

    :cond_3c
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/ArrayRow;->reset()V

    :goto_3f
    invoke-static {}, Landroidx/constraintlayout/solver/SolverVariable;->increaseErrorId()V

    return-object v0
.end method

.method public createSlackVariable()Landroidx/constraintlayout/solver/SolverVariable;
    .registers 6

    sget-object v0, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v0, :cond_b

    iget-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->slackvariables:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->slackvariables:J

    :cond_b
    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mMaxColumns:I

    if-lt v0, v1, :cond_16

    invoke-direct {p0}, Landroidx/constraintlayout/solver/LinearSystem;->increaseTableSize()V

    :cond_16
    sget-object v0, Landroidx/constraintlayout/solver/SolverVariable$Type;->SLACK:Landroidx/constraintlayout/solver/SolverVariable$Type;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/solver/LinearSystem;->acquireSolverVariable(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    iput v1, v0, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v1, v1, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    aput-object v0, v1, v2

    return-object v0
.end method

.method public displayReadableRows()V
    .registers 10

    invoke-direct {p0}, Landroidx/constraintlayout/solver/LinearSystem;->displaySolverVariables()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " num vars "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1d
    iget v4, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    add-int/lit8 v4, v4, 0x1

    const-string v5, " = "

    const-string v6, "] => "

    if-ge v3, v4, :cond_5b

    iget-object v4, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v4, v4, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v4, v4, v3

    if-eqz v4, :cond_58

    iget-boolean v7, v4, Landroidx/constraintlayout/solver/SolverVariable;->isFinalValue:Z

    if-eqz v7, :cond_58

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " $["

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v4, Landroidx/constraintlayout/solver/SolverVariable;->computedValue:F

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_58
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_5b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    :goto_6b
    iget v4, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    add-int/lit8 v4, v4, 0x1

    if-ge v3, v4, :cond_b5

    iget-object v4, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v4, v4, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v4, v4, v3

    if-eqz v4, :cond_b2

    iget-boolean v7, v4, Landroidx/constraintlayout/solver/SolverVariable;->isSynonym:Z

    if-eqz v7, :cond_b2

    iget-object v7, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v7, v7, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget v8, v4, Landroidx/constraintlayout/solver/SolverVariable;->synonym:I

    aget-object v7, v7, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ~["

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " + "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v4, Landroidx/constraintlayout/solver/SolverVariable;->synonymDelta:F

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_b2
    add-int/lit8 v3, v3, 0x1

    goto :goto_6b

    :cond_b5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\n #  "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_c6
    iget v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    if-ge v2, v3, :cond_f5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/ArrayRow;->toReadableString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n #  "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_c6

    :cond_f5
    iget-object v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    if-eqz v2, :cond_112

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Goal: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_112
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method displaySystemInformations()V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    iget v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    if-ge v1, v3, :cond_17

    iget-object v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v4, v3, v1

    if-eqz v4, :cond_14

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/ArrayRow;->sizeInBytes()I

    move-result v3

    add-int/2addr v2, v3

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_17
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_19
    iget v4, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    if-ge v1, v4, :cond_2d

    iget-object v4, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v5, v4, v1

    if-eqz v5, :cond_2a

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/ArrayRow;->sizeInBytes()I

    move-result v4

    add-int/2addr v3, v4

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_2d
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Linear System -> Table size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    mul-int v5, v5, v5

    invoke-direct {p0, v5}, Landroidx/constraintlayout/solver/LinearSystem;->getDisplaySize(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") -- row sizes: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Landroidx/constraintlayout/solver/LinearSystem;->getDisplaySize(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", actual size: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Landroidx/constraintlayout/solver/LinearSystem;->getDisplaySize(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " rows: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->mMaxRows:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " cols: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mMaxColumns:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " occupied cells, "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/solver/LinearSystem;->getDisplaySize(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public displayVariablesReadableRows()V
    .registers 6

    invoke-direct {p0}, Landroidx/constraintlayout/solver/LinearSystem;->displaySolverVariables()V

    const-string v0, ""

    const/4 v1, 0x0

    :goto_6
    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    const-string v3, "\n"

    if-ge v1, v2, :cond_41

    iget-object v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v2, v2, v1

    iget-object v2, v2, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v2, v2, Landroidx/constraintlayout/solver/SolverVariable;->mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

    sget-object v4, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    if-ne v2, v4, :cond_3e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/ArrayRow;->toReadableString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public fillMetrics(Landroidx/constraintlayout/solver/Metrics;)V
    .registers 2

    sput-object p1, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    return-void
.end method

.method public getCache()Landroidx/constraintlayout/solver/Cache;
    .registers 2

    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    return-object v0
.end method

.method getGoal()Landroidx/constraintlayout/solver/LinearSystem$Row;
    .registers 2

    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    return-object v0
.end method

.method public getMemoryUsed()I
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    if-ge v0, v2, :cond_16

    iget-object v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v3, v2, v0

    if-eqz v3, :cond_13

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/ArrayRow;->sizeInBytes()I

    move-result v2

    add-int/2addr v1, v2

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_16
    return v1
.end method

.method public getNumEquations()I
    .registers 2

    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    return v0
.end method

.method public getNumVariables()I
    .registers 2

    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    return v0
.end method

.method public getObjectVariableValue(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getSolverVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object p1

    if-eqz p1, :cond_f

    iget p1, p1, Landroidx/constraintlayout/solver/SolverVariable;->computedValue:F

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method getRow(I)Landroidx/constraintlayout/solver/ArrayRow;
    .registers 3

    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object p1, v0, p1

    return-object p1
.end method

.method getValueFor(Ljava/lang/String;)F
    .registers 3

    sget-object v0, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/solver/LinearSystem;->getVariable(Ljava/lang/String;Landroidx/constraintlayout/solver/SolverVariable$Type;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object p1

    if-nez p1, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    iget p1, p1, Landroidx/constraintlayout/solver/SolverVariable;->computedValue:F

    return p1
.end method

.method getVariable(Ljava/lang/String;Landroidx/constraintlayout/solver/SolverVariable$Type;)Landroidx/constraintlayout/solver/SolverVariable;
    .registers 4

    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    :cond_b
    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/SolverVariable;

    if-nez v0, :cond_19

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/solver/LinearSystem;->createVariable(Ljava/lang/String;Landroidx/constraintlayout/solver/SolverVariable$Type;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    :cond_19
    return-object v0
.end method

.method public minimize()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_b

    iget-wide v3, v0, Landroidx/constraintlayout/solver/Metrics;->minimize:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Landroidx/constraintlayout/solver/Metrics;->minimize:J

    :cond_b
    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    invoke-interface {v0}, Landroidx/constraintlayout/solver/LinearSystem$Row;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-direct {p0}, Landroidx/constraintlayout/solver/LinearSystem;->computeValues()V

    return-void

    :cond_17
    iget-boolean v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->graphOptimizer:Z

    if-nez v0, :cond_26

    iget-boolean v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->newgraphOptimizer:Z

    if-eqz v0, :cond_20

    goto :goto_26

    :cond_20
    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/LinearSystem;->minimizeGoal(Landroidx/constraintlayout/solver/LinearSystem$Row;)V

    goto :goto_56

    :cond_26
    :goto_26
    sget-object v0, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v0, :cond_2f

    iget-wide v3, v0, Landroidx/constraintlayout/solver/Metrics;->graphOptimizer:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Landroidx/constraintlayout/solver/Metrics;->graphOptimizer:J

    :cond_2f
    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_31
    iget v4, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    if-ge v3, v4, :cond_41

    iget-object v4, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v4, v4, v3

    iget-boolean v4, v4, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    if-nez v4, :cond_3e

    goto :goto_42

    :cond_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    :cond_41
    const/4 v0, 0x1

    :goto_42
    if-nez v0, :cond_4a

    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/LinearSystem;->minimizeGoal(Landroidx/constraintlayout/solver/LinearSystem$Row;)V

    goto :goto_56

    :cond_4a
    sget-object v0, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v0, :cond_53

    iget-wide v3, v0, Landroidx/constraintlayout/solver/Metrics;->fullySolved:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Landroidx/constraintlayout/solver/Metrics;->fullySolved:J

    :cond_53
    invoke-direct {p0}, Landroidx/constraintlayout/solver/LinearSystem;->computeValues()V

    :goto_56
    return-void
.end method

.method minimizeGoal(Landroidx/constraintlayout/solver/LinearSystem$Row;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v0, :cond_25

    iget-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->minimizeGoal:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->minimizeGoal:J

    sget-object v0, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->maxVariables:J

    iget v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->maxVariables:J

    sget-object v0, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->maxRows:J

    iget v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->maxRows:J

    :cond_25
    invoke-direct {p0, p1}, Landroidx/constraintlayout/solver/LinearSystem;->enforceBFS(Landroidx/constraintlayout/solver/LinearSystem$Row;)I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/solver/LinearSystem;->optimize(Landroidx/constraintlayout/solver/LinearSystem$Row;Z)I

    invoke-direct {p0}, Landroidx/constraintlayout/solver/LinearSystem;->computeValues()V

    return-void
.end method

.method public removeRow(Landroidx/constraintlayout/solver/ArrayRow;)V
    .registers 6

    iget-boolean v0, p1, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    if-eqz v0, :cond_53

    iget-object v0, p1, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    if-eqz v0, :cond_53

    iget-object v0, p1, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget v0, v0, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_33

    iget-object v0, p1, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget v0, v0, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    :goto_13
    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    add-int/lit8 v2, v1, -0x1

    if-ge v0, v2, :cond_2f

    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget v3, v1, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    if-ne v3, v2, :cond_27

    iput v0, v1, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    :cond_27
    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v3, v1, v2

    aput-object v3, v1, v0

    move v0, v2

    goto :goto_13

    :cond_2f
    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    :cond_33
    iget-object v0, p1, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-boolean v0, v0, Landroidx/constraintlayout/solver/SolverVariable;->isFinalValue:Z

    if-nez v0, :cond_40

    iget-object v0, p1, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget v1, p1, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    invoke-virtual {v0, p0, v1}, Landroidx/constraintlayout/solver/SolverVariable;->setFinalValue(Landroidx/constraintlayout/solver/LinearSystem;F)V

    :cond_40
    sget-boolean v0, Landroidx/constraintlayout/solver/LinearSystem;->OPTIMIZED_ENGINE:Z

    if-eqz v0, :cond_4c

    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v0, v0, Landroidx/constraintlayout/solver/Cache;->optimizedArrayRowPool:Landroidx/constraintlayout/solver/Pools$Pool;

    invoke-interface {v0, p1}, Landroidx/constraintlayout/solver/Pools$Pool;->release(Ljava/lang/Object;)Z

    goto :goto_53

    :cond_4c
    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v0, v0, Landroidx/constraintlayout/solver/Cache;->arrayRowPool:Landroidx/constraintlayout/solver/Pools$Pool;

    invoke-interface {v0, p1}, Landroidx/constraintlayout/solver/Pools$Pool;->release(Ljava/lang/Object;)Z

    :cond_53
    :goto_53
    return-void
.end method

.method public reset()V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v2, v2, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    array-length v2, v2

    if-ge v1, v2, :cond_17

    iget-object v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v2, v2, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v2, v2, v1

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/SolverVariable;->reset()V

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_17
    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v1, v1, Landroidx/constraintlayout/solver/Cache;->solverVariablePool:Landroidx/constraintlayout/solver/Pools$Pool;

    iget-object v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mPoolVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->mPoolVariablesCount:I

    invoke-interface {v1, v2, v3}, Landroidx/constraintlayout/solver/Pools$Pool;->releaseAll([Ljava/lang/Object;I)V

    iput v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mPoolVariablesCount:I

    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v1, v1, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    if-eqz v1, :cond_33

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    :cond_33
    iput v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    invoke-interface {v1}, Landroidx/constraintlayout/solver/LinearSystem$Row;->clear()V

    const/4 v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    const/4 v1, 0x0

    :goto_3e
    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    if-ge v1, v2, :cond_4f

    iget-object v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v3, v2, v1

    if-eqz v3, :cond_4c

    aget-object v2, v2, v1

    iput-boolean v0, v2, Landroidx/constraintlayout/solver/ArrayRow;->used:Z

    :cond_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    :cond_4f
    invoke-direct {p0}, Landroidx/constraintlayout/solver/LinearSystem;->releaseRows()V

    iput v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    sget-boolean v0, Landroidx/constraintlayout/solver/LinearSystem;->OPTIMIZED_ENGINE:Z

    if-eqz v0, :cond_62

    new-instance v0, Landroidx/constraintlayout/solver/LinearSystem$ValuesRow;

    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    invoke-direct {v0, p0, v1}, Landroidx/constraintlayout/solver/LinearSystem$ValuesRow;-><init>(Landroidx/constraintlayout/solver/LinearSystem;Landroidx/constraintlayout/solver/Cache;)V

    iput-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mTempGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    goto :goto_6b

    :cond_62
    new-instance v0, Landroidx/constraintlayout/solver/ArrayRow;

    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/solver/ArrayRow;-><init>(Landroidx/constraintlayout/solver/Cache;)V

    iput-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mTempGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    :goto_6b
    return-void
.end method
