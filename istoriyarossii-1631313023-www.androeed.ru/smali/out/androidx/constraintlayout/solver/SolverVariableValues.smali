.class public Landroidx/constraintlayout/solver/SolverVariableValues;
.super Ljava/lang/Object;
.source "SolverVariableValues.java"

# interfaces
.implements Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;


# static fields
.field private static final DEBUG:Z = false

.field private static final HASH:Z = true

.field private static epsilon:F = 0.001f


# instance fields
.field private HASH_SIZE:I

.field private final NONE:I

.field private SIZE:I

.field head:I

.field keys:[I

.field protected final mCache:Landroidx/constraintlayout/solver/Cache;

.field mCount:I

.field private final mRow:Landroidx/constraintlayout/solver/ArrayRow;

.field next:[I

.field nextKeys:[I

.field previous:[I

.field values:[F

.field variables:[I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Landroidx/constraintlayout/solver/ArrayRow;Landroidx/constraintlayout/solver/Cache;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->NONE:I

    const/16 v1, 0x10

    iput v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->SIZE:I

    iput v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->HASH_SIZE:I

    new-array v2, v1, [I

    iput-object v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->keys:[I

    new-array v2, v1, [I

    iput-object v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->nextKeys:[I

    new-array v2, v1, [I

    iput-object v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->variables:[I

    new-array v2, v1, [F

    iput-object v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->values:[F

    new-array v2, v1, [I

    iput-object v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->previous:[I

    new-array v1, v1, [I

    iput-object v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->next:[I

    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->mCount:I

    iput v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->head:I

    iput-object p1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    iput-object p2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->mCache:Landroidx/constraintlayout/solver/Cache;

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/SolverVariableValues;->clear()V

    return-void
.end method

.method private addToHashMap(Landroidx/constraintlayout/solver/SolverVariable;I)V
    .registers 6

    iget p1, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    iget v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->HASH_SIZE:I

    rem-int/2addr p1, v0

    iget-object v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->keys:[I

    aget v1, v0, p1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_f

    aput p2, v0, p1

    goto :goto_1a

    :cond_f
    :goto_f
    iget-object p1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->nextKeys:[I

    aget v0, p1, v1

    if-eq v0, v2, :cond_18

    aget v1, p1, v1

    goto :goto_f

    :cond_18
    aput p2, p1, v1

    :goto_1a
    iget-object p1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->nextKeys:[I

    aput v2, p1, p2

    return-void
.end method

.method private addVariable(ILandroidx/constraintlayout/solver/SolverVariable;F)V
    .registers 6

    iget-object v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->variables:[I

    iget v1, p2, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    aput v1, v0, p1

    iget-object v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->values:[F

    aput p3, v0, p1

    iget-object p3, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->previous:[I

    const/4 v0, -0x1

    aput v0, p3, p1

    iget-object p3, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->next:[I

    aput v0, p3, p1

    iget-object p1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/solver/SolverVariable;->addToRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    iget p1, p2, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p2, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    iget p1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->mCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->mCount:I

    return-void
.end method

.method private displayHash()V
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->HASH_SIZE:I

    if-ge v1, v2, :cond_5c

    iget-object v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->keys:[I

    aget v2, v2, v1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_59

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " hash ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] => "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->keys:[I

    aget v4, v4, v1

    const/4 v5, 0x0

    :goto_2f
    if-nez v5, :cond_54

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->variables:[I

    aget v2, v2, v4

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->nextKeys:[I

    aget v7, v6, v4

    if-eq v7, v3, :cond_52

    aget v4, v6, v4

    goto :goto_2f

    :cond_52
    const/4 v5, 0x1

    goto :goto_2f

    :cond_54
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_59
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5c
    return-void
.end method

.method private findEmptySlot()I
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->SIZE:I

    const/4 v2, -0x1

    if-ge v0, v1, :cond_10

    iget-object v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->variables:[I

    aget v1, v1, v0

    if-ne v1, v2, :cond_d

    return v0

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_10
    return v2
.end method

.method private increaseSize()V
    .registers 5

    iget v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->SIZE:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->variables:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->variables:[I

    iget-object v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->values:[F

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    iput-object v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->values:[F

    iget-object v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->previous:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->previous:[I

    iget-object v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->next:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->next:[I

    iget-object v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->nextKeys:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->nextKeys:[I

    iget v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->SIZE:I

    :goto_2e
    if-ge v1, v0, :cond_3c

    iget-object v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->variables:[I

    const/4 v3, -0x1

    aput v3, v2, v1

    iget-object v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->nextKeys:[I

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :cond_3c
    iput v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->SIZE:I

    return-void
.end method

.method private insertVariable(ILandroidx/constraintlayout/solver/SolverVariable;F)V
    .registers 7

    invoke-direct {p0}, Landroidx/constraintlayout/solver/SolverVariableValues;->findEmptySlot()I

    move-result v0

    invoke-direct {p0, v0, p2, p3}, Landroidx/constraintlayout/solver/SolverVariableValues;->addVariable(ILandroidx/constraintlayout/solver/SolverVariable;F)V

    const/4 p3, -0x1

    if-eq p1, p3, :cond_17

    iget-object v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->previous:[I

    aput p1, v1, v0

    iget-object v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->next:[I

    aget v2, v1, p1

    aput v2, v1, v0

    aput v0, v1, p1

    goto :goto_2c

    :cond_17
    iget-object p1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->previous:[I

    aput p3, p1, v0

    iget p1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->mCount:I

    if-lez p1, :cond_28

    iget-object p1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->next:[I

    iget v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->head:I

    aput v1, p1, v0

    iput v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->head:I

    goto :goto_2c

    :cond_28
    iget-object p1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->next:[I

    aput p3, p1, v0

    :goto_2c
    iget-object p1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->next:[I

    aget v1, p1, v0

    if-eq v1, p3, :cond_38

    iget-object p3, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->previous:[I

    aget p1, p1, v0

    aput v0, p3, p1

    :cond_38
    invoke-direct {p0, p2, v0}, Landroidx/constraintlayout/solver/SolverVariableValues;->addToHashMap(Landroidx/constraintlayout/solver/SolverVariable;I)V

    return-void
.end method

.method private removeFromHashMap(Landroidx/constraintlayout/solver/SolverVariable;)V
    .registers 7

    iget v0, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    iget v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->HASH_SIZE:I

    rem-int/2addr v0, v1

    iget-object v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->keys:[I

    aget v1, v1, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_d

    return-void

    :cond_d
    iget p1, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    iget-object v3, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->variables:[I

    aget v3, v3, v1

    if-ne v3, p1, :cond_20

    iget-object p1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->keys:[I

    iget-object v3, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->nextKeys:[I

    aget v4, v3, v1

    aput v4, p1, v0

    aput v2, v3, v1

    goto :goto_41

    :cond_20
    :goto_20
    iget-object v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->nextKeys:[I

    aget v3, v0, v1

    if-eq v3, v2, :cond_31

    iget-object v3, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->variables:[I

    aget v4, v0, v1

    aget v3, v3, v4

    if-eq v3, p1, :cond_31

    aget v1, v0, v1

    goto :goto_20

    :cond_31
    aget v3, v0, v1

    if-eq v3, v2, :cond_41

    iget-object v4, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->variables:[I

    aget v4, v4, v3

    if-ne v4, p1, :cond_41

    aget p1, v0, v3

    aput p1, v0, v1

    aput v2, v0, v3

    :cond_41
    :goto_41
    return-void
.end method


# virtual methods
.method public add(Landroidx/constraintlayout/solver/SolverVariable;FZ)V
    .registers 8

    sget v0, Landroidx/constraintlayout/solver/SolverVariableValues;->epsilon:F

    neg-float v1, v0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_c

    cmpg-float v0, p2, v0

    if-gez v0, :cond_c

    return-void

    :cond_c
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/SolverVariableValues;->indexOf(Landroidx/constraintlayout/solver/SolverVariable;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/solver/SolverVariableValues;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    goto :goto_33

    :cond_17
    iget-object v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->values:[F

    aget v2, v1, v0

    add-float/2addr v2, p2

    aput v2, v1, v0

    aget p2, v1, v0

    sget v2, Landroidx/constraintlayout/solver/SolverVariableValues;->epsilon:F

    neg-float v3, v2

    cmpl-float p2, p2, v3

    if-lez p2, :cond_33

    aget p2, v1, v0

    cmpg-float p2, p2, v2

    if-gez p2, :cond_33

    const/4 p2, 0x0

    aput p2, v1, v0

    invoke-virtual {p0, p1, p3}, Landroidx/constraintlayout/solver/SolverVariableValues;->remove(Landroidx/constraintlayout/solver/SolverVariable;Z)F

    :cond_33
    :goto_33
    return-void
.end method

.method public clear()V
    .registers 6

    iget v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->mCount:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_14

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/solver/SolverVariableValues;->getVariable(I)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v3

    if-eqz v3, :cond_11

    iget-object v4, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/SolverVariable;->removeFromRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_14
    const/4 v0, 0x0

    :goto_15
    iget v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->SIZE:I

    const/4 v3, -0x1

    if-ge v0, v2, :cond_25

    iget-object v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->variables:[I

    aput v3, v2, v0

    iget-object v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->nextKeys:[I

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_25
    const/4 v0, 0x0

    :goto_26
    iget v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->HASH_SIZE:I

    if-ge v0, v2, :cond_31

    iget-object v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->keys:[I

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_31
    iput v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->mCount:I

    iput v3, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->head:I

    return-void
.end method

.method public contains(Landroidx/constraintlayout/solver/SolverVariable;)Z
    .registers 3

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/SolverVariableValues;->indexOf(Landroidx/constraintlayout/solver/SolverVariable;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method public display()V
    .registers 6

    iget v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->mCount:I

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "{ "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_38

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/solver/SolverVariableValues;->getVariable(I)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v2

    if-nez v2, :cond_13

    goto :goto_35

    :cond_13
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/solver/SolverVariableValues;->getVariableValue(I)F

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_38
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public divideByAmount(F)V
    .registers 7

    iget v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->mCount:I

    iget v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->head:I

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_19

    iget-object v3, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->values:[F

    aget v4, v3, v1

    div-float/2addr v4, p1

    aput v4, v3, v1

    iget-object v3, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->next:[I

    aget v1, v3, v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_16

    goto :goto_19

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_19
    :goto_19
    return-void
.end method

.method public get(Landroidx/constraintlayout/solver/SolverVariable;)F
    .registers 3

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/SolverVariableValues;->indexOf(Landroidx/constraintlayout/solver/SolverVariable;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_c

    iget-object v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->values:[F

    aget p1, v0, p1

    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method public getCurrentSize()I
    .registers 2

    iget v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->mCount:I

    return v0
.end method

.method public getVariable(I)Landroidx/constraintlayout/solver/SolverVariable;
    .registers 8

    iget v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->mCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    iget v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->head:I

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v0, :cond_25

    const/4 v4, -0x1

    if-ne v3, p1, :cond_1b

    if-eq v2, v4, :cond_1b

    iget-object p1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object p1, p1, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->variables:[I

    aget v0, v0, v2

    aget-object p1, p1, v0

    return-object p1

    :cond_1b
    iget-object v5, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->next:[I

    aget v2, v5, v2

    if-ne v2, v4, :cond_22

    goto :goto_25

    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_25
    :goto_25
    return-object v1
.end method

.method public getVariableValue(I)F
    .registers 6

    iget v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->mCount:I

    iget v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->head:I

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_19

    if-ne v2, p1, :cond_e

    iget-object p1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->values:[F

    aget p1, p1, v1

    return p1

    :cond_e
    iget-object v3, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->next:[I

    aget v1, v3, v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_16

    goto :goto_19

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_19
    :goto_19
    const/4 p1, 0x0

    return p1
.end method

.method public indexOf(Landroidx/constraintlayout/solver/SolverVariable;)I
    .registers 7

    iget v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->mCount:I

    const/4 v1, -0x1

    if-eqz v0, :cond_3d

    if-nez p1, :cond_8

    goto :goto_3d

    :cond_8
    iget p1, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    iget v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->HASH_SIZE:I

    rem-int v0, p1, v0

    iget-object v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->keys:[I

    aget v0, v2, v0

    if-ne v0, v1, :cond_15

    return v1

    :cond_15
    iget-object v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->variables:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_1c

    return v0

    :cond_1c
    :goto_1c
    iget-object v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->nextKeys:[I

    aget v3, v2, v0

    if-eq v3, v1, :cond_2d

    iget-object v3, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->variables:[I

    aget v4, v2, v0

    aget v3, v3, v4

    if-eq v3, p1, :cond_2d

    aget v0, v2, v0

    goto :goto_1c

    :cond_2d
    aget v3, v2, v0

    if-ne v3, v1, :cond_32

    return v1

    :cond_32
    iget-object v3, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->variables:[I

    aget v4, v2, v0

    aget v3, v3, v4

    if-ne v3, p1, :cond_3d

    aget p1, v2, v0

    return p1

    :cond_3d
    :goto_3d
    return v1
.end method

.method public invert()V
    .registers 7

    iget v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->mCount:I

    iget v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->head:I

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_1c

    iget-object v3, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->values:[F

    aget v4, v3, v1

    const/high16 v5, -0x40800000    # -1.0f

    mul-float v4, v4, v5

    aput v4, v3, v1

    iget-object v3, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->next:[I

    aget v1, v3, v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_19

    goto :goto_1c

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_1c
    :goto_1c
    return-void
.end method

.method public put(Landroidx/constraintlayout/solver/SolverVariable;F)V
    .registers 10

    sget v0, Landroidx/constraintlayout/solver/SolverVariableValues;->epsilon:F

    neg-float v1, v0

    const/4 v2, 0x1

    cmpl-float v1, p2, v1

    if-lez v1, :cond_10

    cmpg-float v0, p2, v0

    if-gez v0, :cond_10

    invoke-virtual {p0, p1, v2}, Landroidx/constraintlayout/solver/SolverVariableValues;->remove(Landroidx/constraintlayout/solver/SolverVariable;Z)F

    return-void

    :cond_10
    iget v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->mCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_1e

    invoke-direct {p0, v1, p1, p2}, Landroidx/constraintlayout/solver/SolverVariableValues;->addVariable(ILandroidx/constraintlayout/solver/SolverVariable;F)V

    invoke-direct {p0, p1, v1}, Landroidx/constraintlayout/solver/SolverVariableValues;->addToHashMap(Landroidx/constraintlayout/solver/SolverVariable;I)V

    iput v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->head:I

    goto :goto_5e

    :cond_1e
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/SolverVariableValues;->indexOf(Landroidx/constraintlayout/solver/SolverVariable;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2a

    iget-object p1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->values:[F

    aput p2, p1, v0

    goto :goto_5e

    :cond_2a
    iget v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->mCount:I

    add-int/2addr v0, v2

    iget v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->SIZE:I

    if-lt v0, v2, :cond_34

    invoke-direct {p0}, Landroidx/constraintlayout/solver/SolverVariableValues;->increaseSize()V

    :cond_34
    iget v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->mCount:I

    iget v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->head:I

    const/4 v4, -0x1

    :goto_39
    if-ge v1, v0, :cond_5b

    iget-object v5, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->variables:[I

    aget v5, v5, v2

    iget v6, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-ne v5, v6, :cond_48

    iget-object p1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->values:[F

    aput p2, p1, v2

    return-void

    :cond_48
    iget-object v5, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->variables:[I

    aget v5, v5, v2

    iget v6, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-ge v5, v6, :cond_51

    move v4, v2

    :cond_51
    iget-object v5, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->next:[I

    aget v2, v5, v2

    if-ne v2, v3, :cond_58

    goto :goto_5b

    :cond_58
    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    :cond_5b
    :goto_5b
    invoke-direct {p0, v4, p1, p2}, Landroidx/constraintlayout/solver/SolverVariableValues;->insertVariable(ILandroidx/constraintlayout/solver/SolverVariable;F)V

    :goto_5e
    return-void
.end method

.method public remove(Landroidx/constraintlayout/solver/SolverVariable;Z)F
    .registers 10

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/SolverVariableValues;->indexOf(Landroidx/constraintlayout/solver/SolverVariable;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 p1, 0x0

    return p1

    :cond_9
    invoke-direct {p0, p1}, Landroidx/constraintlayout/solver/SolverVariableValues;->removeFromHashMap(Landroidx/constraintlayout/solver/SolverVariable;)V

    iget-object v2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->values:[F

    aget v2, v2, v0

    iget v3, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->head:I

    if-ne v3, v0, :cond_1a

    iget-object v3, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->next:[I

    aget v3, v3, v0

    iput v3, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->head:I

    :cond_1a
    iget-object v3, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->variables:[I

    aput v1, v3, v0

    iget-object v3, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->previous:[I

    aget v4, v3, v0

    if-eq v4, v1, :cond_2c

    iget-object v4, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->next:[I

    aget v5, v3, v0

    aget v6, v4, v0

    aput v6, v4, v5

    :cond_2c
    iget-object v4, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->next:[I

    aget v5, v4, v0

    if-eq v5, v1, :cond_38

    aget v1, v4, v0

    aget v0, v3, v0

    aput v0, v3, v1

    :cond_38
    iget v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->mCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->mCount:I

    iget v0, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    if-eqz p2, :cond_4b

    iget-object p2, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/SolverVariable;->removeFromRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    :cond_4b
    return v2
.end method

.method public sizeInBytes()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->mCount:I

    const/4 v2, 0x0

    :goto_18
    if-ge v2, v1, :cond_e6

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/solver/SolverVariableValues;->getVariable(I)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v3

    if-nez v3, :cond_22

    goto/16 :goto_e2

    :cond_22
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/solver/SolverVariableValues;->getVariableValue(I)F

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/solver/SolverVariableValues;->indexOf(Landroidx/constraintlayout/solver/SolverVariable;)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "[p: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->previous:[I

    aget v4, v4, v3

    const-string v5, "none"

    const/4 v6, -0x1

    if-eq v4, v6, :cond_7e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v0, v0, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v7, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->variables:[I

    iget-object v8, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->previous:[I

    aget v8, v8, v3

    aget v7, v7, v8

    aget-object v0, v0, v7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8d

    :cond_7e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_8d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", n: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->next:[I

    aget v4, v4, v3

    if-eq v4, v6, :cond_c2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v0, v0, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v5, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->variables:[I

    iget-object v6, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->next:[I

    aget v3, v6, v3

    aget v3, v5, v3

    aget-object v0, v0, v3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d1

    :cond_c2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_d1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_e2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_18

    :cond_e6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " }"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public use(Landroidx/constraintlayout/solver/ArrayRow;Z)F
    .registers 10

    iget-object v0, p1, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/SolverVariableValues;->get(Landroidx/constraintlayout/solver/SolverVariable;)F

    move-result v0

    iget-object v1, p1, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p0, v1, p2}, Landroidx/constraintlayout/solver/SolverVariableValues;->remove(Landroidx/constraintlayout/solver/SolverVariable;Z)F

    iget-object p1, p1, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    check-cast p1, Landroidx/constraintlayout/solver/SolverVariableValues;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/SolverVariableValues;->getCurrentSize()I

    move-result v1

    iget v2, p1, Landroidx/constraintlayout/solver/SolverVariableValues;->head:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_17
    if-ge v2, v1, :cond_38

    iget-object v4, p1, Landroidx/constraintlayout/solver/SolverVariableValues;->variables:[I

    aget v4, v4, v3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_35

    iget-object v4, p1, Landroidx/constraintlayout/solver/SolverVariableValues;->values:[F

    aget v4, v4, v3

    iget-object v5, p0, Landroidx/constraintlayout/solver/SolverVariableValues;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v5, v5, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v6, p1, Landroidx/constraintlayout/solver/SolverVariableValues;->variables:[I

    aget v6, v6, v3

    aget-object v5, v5, v6

    mul-float v4, v4, v0

    invoke-virtual {p0, v5, v4, p2}, Landroidx/constraintlayout/solver/SolverVariableValues;->add(Landroidx/constraintlayout/solver/SolverVariable;FZ)V

    add-int/lit8 v2, v2, 0x1

    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_38
    return v0
.end method
