.class public Lorg/apache/commons/text/diff/StringsComparator;
.super Ljava/lang/Object;
.source "StringsComparator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/text/diff/StringsComparator$Snake;
    }
.end annotation


# instance fields
.field private final left:Ljava/lang/String;

.field private final right:Ljava/lang/String;

.field private final vDown:[I

.field private final vUp:[I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/text/diff/StringsComparator;->left:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/commons/text/diff/StringsComparator;->right:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, 0x2

    new-array p2, p1, [I

    iput-object p2, p0, Lorg/apache/commons/text/diff/StringsComparator;->vDown:[I

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/apache/commons/text/diff/StringsComparator;->vUp:[I

    return-void
.end method

.method private buildScript(IIIILorg/apache/commons/text/diff/EditScript;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Lorg/apache/commons/text/diff/EditScript<",
            "Ljava/lang/Character;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/text/diff/StringsComparator;->getMiddleSnake(IIII)Lorg/apache/commons/text/diff/StringsComparator$Snake;

    move-result-object v0

    if-eqz v0, :cond_6d

    invoke-virtual {v0}, Lorg/apache/commons/text/diff/StringsComparator$Snake;->getStart()I

    move-result v1

    if-ne v1, p2, :cond_14

    invoke-virtual {v0}, Lorg/apache/commons/text/diff/StringsComparator$Snake;->getDiag()I

    move-result v1

    sub-int v2, p2, p4

    if-eq v1, v2, :cond_6d

    :cond_14
    invoke-virtual {v0}, Lorg/apache/commons/text/diff/StringsComparator$Snake;->getEnd()I

    move-result v1

    if-ne v1, p1, :cond_23

    invoke-virtual {v0}, Lorg/apache/commons/text/diff/StringsComparator$Snake;->getDiag()I

    move-result v1

    sub-int v2, p1, p3

    if-ne v1, v2, :cond_23

    goto :goto_6d

    :cond_23
    invoke-virtual {v0}, Lorg/apache/commons/text/diff/StringsComparator$Snake;->getStart()I

    move-result v5

    invoke-virtual {v0}, Lorg/apache/commons/text/diff/StringsComparator$Snake;->getStart()I

    move-result v1

    invoke-virtual {v0}, Lorg/apache/commons/text/diff/StringsComparator$Snake;->getDiag()I

    move-result v2

    sub-int v7, v1, v2

    move-object v3, p0

    move v4, p1

    move v6, p3

    move-object v8, p5

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/text/diff/StringsComparator;->buildScript(IIIILorg/apache/commons/text/diff/EditScript;)V

    invoke-virtual {v0}, Lorg/apache/commons/text/diff/StringsComparator$Snake;->getStart()I

    move-result p1

    :goto_3c
    invoke-virtual {v0}, Lorg/apache/commons/text/diff/StringsComparator$Snake;->getEnd()I

    move-result p3

    if-ge p1, p3, :cond_57

    new-instance p3, Lorg/apache/commons/text/diff/KeepCommand;

    iget-object v1, p0, Lorg/apache/commons/text/diff/StringsComparator;->left:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-direct {p3, v1}, Lorg/apache/commons/text/diff/KeepCommand;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p5, p3}, Lorg/apache/commons/text/diff/EditScript;->append(Lorg/apache/commons/text/diff/KeepCommand;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3c

    :cond_57
    invoke-virtual {v0}, Lorg/apache/commons/text/diff/StringsComparator$Snake;->getEnd()I

    move-result v2

    invoke-virtual {v0}, Lorg/apache/commons/text/diff/StringsComparator$Snake;->getEnd()I

    move-result p1

    invoke-virtual {v0}, Lorg/apache/commons/text/diff/StringsComparator$Snake;->getDiag()I

    move-result p3

    sub-int v4, p1, p3

    move-object v1, p0

    move v3, p2

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/text/diff/StringsComparator;->buildScript(IIIILorg/apache/commons/text/diff/EditScript;)V

    goto :goto_74

    :cond_6d
    :goto_6d
    move v0, p1

    move v1, p3

    :goto_6f
    if-lt v0, p2, :cond_75

    if-ge v1, p4, :cond_74

    goto :goto_75

    :cond_74
    :goto_74
    return-void

    :cond_75
    :goto_75
    if-ge v0, p2, :cond_9c

    if-ge v1, p4, :cond_9c

    iget-object v2, p0, Lorg/apache/commons/text/diff/StringsComparator;->left:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-object v3, p0, Lorg/apache/commons/text/diff/StringsComparator;->right:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_9c

    new-instance v2, Lorg/apache/commons/text/diff/KeepCommand;

    iget-object v3, p0, Lorg/apache/commons/text/diff/StringsComparator;->left:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/text/diff/KeepCommand;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p5, v2}, Lorg/apache/commons/text/diff/EditScript;->append(Lorg/apache/commons/text/diff/KeepCommand;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_c9

    :cond_9c
    sub-int v2, p2, p1

    sub-int v3, p4, p3

    if-le v2, v3, :cond_b7

    new-instance v2, Lorg/apache/commons/text/diff/DeleteCommand;

    iget-object v3, p0, Lorg/apache/commons/text/diff/StringsComparator;->left:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/text/diff/DeleteCommand;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p5, v2}, Lorg/apache/commons/text/diff/EditScript;->append(Lorg/apache/commons/text/diff/DeleteCommand;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6f

    :cond_b7
    new-instance v2, Lorg/apache/commons/text/diff/InsertCommand;

    iget-object v3, p0, Lorg/apache/commons/text/diff/StringsComparator;->right:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/text/diff/InsertCommand;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p5, v2}, Lorg/apache/commons/text/diff/EditScript;->append(Lorg/apache/commons/text/diff/InsertCommand;)V

    :goto_c9
    add-int/lit8 v1, v1, 0x1

    goto :goto_6f
.end method

.method private buildSnake(IIII)Lorg/apache/commons/text/diff/StringsComparator$Snake;
    .registers 9

    move v0, p1

    :goto_1
    sub-int v1, v0, p2

    if-ge v1, p4, :cond_18

    if-ge v0, p3, :cond_18

    iget-object v2, p0, Lorg/apache/commons/text/diff/StringsComparator;->left:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-object v3, p0, Lorg/apache/commons/text/diff/StringsComparator;->right:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v2, v1, :cond_18

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_18
    new-instance p3, Lorg/apache/commons/text/diff/StringsComparator$Snake;

    invoke-direct {p3, p1, v0, p2}, Lorg/apache/commons/text/diff/StringsComparator$Snake;-><init>(III)V

    return-object p3
.end method

.method private getMiddleSnake(IIII)Lorg/apache/commons/text/diff/StringsComparator$Snake;
    .registers 16

    sub-int v0, p2, p1

    sub-int v1, p4, p3

    if-eqz v0, :cond_116

    if-nez v1, :cond_a

    goto/16 :goto_116

    :cond_a
    sub-int v2, v0, v1

    add-int/2addr v1, v0

    rem-int/lit8 v0, v1, 0x2

    if-nez v0, :cond_12

    goto :goto_14

    :cond_12
    add-int/lit8 v1, v1, 0x1

    :goto_14
    div-int/lit8 v1, v1, 0x2

    iget-object v0, p0, Lorg/apache/commons/text/diff/StringsComparator;->vDown:[I

    add-int/lit8 v3, v1, 0x1

    aput p1, v0, v3

    iget-object v0, p0, Lorg/apache/commons/text/diff/StringsComparator;->vUp:[I

    add-int/lit8 v4, p2, 0x1

    aput v4, v0, v3

    const/4 v0, 0x0

    :goto_23
    if-gt v0, v1, :cond_10e

    neg-int v3, v0

    move v4, v3

    :goto_27
    if-gt v4, v0, :cond_96

    add-int v5, v4, v1

    if-eq v4, v3, :cond_47

    if-eq v4, v0, :cond_3c

    iget-object v6, p0, Lorg/apache/commons/text/diff/StringsComparator;->vDown:[I

    add-int/lit8 v7, v5, -0x1

    aget v7, v6, v7

    add-int/lit8 v8, v5, 0x1

    aget v6, v6, v8

    if-ge v7, v6, :cond_3c

    goto :goto_47

    :cond_3c
    iget-object v6, p0, Lorg/apache/commons/text/diff/StringsComparator;->vDown:[I

    add-int/lit8 v7, v5, -0x1

    aget v7, v6, v7

    add-int/lit8 v7, v7, 0x1

    aput v7, v6, v5

    goto :goto_4f

    :cond_47
    :goto_47
    iget-object v6, p0, Lorg/apache/commons/text/diff/StringsComparator;->vDown:[I

    add-int/lit8 v7, v5, 0x1

    aget v7, v6, v7

    aput v7, v6, v5

    :goto_4f
    iget-object v6, p0, Lorg/apache/commons/text/diff/StringsComparator;->vDown:[I

    aget v6, v6, v5

    sub-int v7, v6, p1

    add-int/2addr v7, p3

    sub-int/2addr v7, v4

    :goto_57
    if-ge v6, p2, :cond_72

    if-ge v7, p4, :cond_72

    iget-object v8, p0, Lorg/apache/commons/text/diff/StringsComparator;->left:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    iget-object v9, p0, Lorg/apache/commons/text/diff/StringsComparator;->right:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v8, v9, :cond_72

    iget-object v8, p0, Lorg/apache/commons/text/diff/StringsComparator;->vDown:[I

    add-int/lit8 v6, v6, 0x1

    aput v6, v8, v5

    add-int/lit8 v7, v7, 0x1

    goto :goto_57

    :cond_72
    rem-int/lit8 v6, v2, 0x2

    if-eqz v6, :cond_93

    sub-int v6, v2, v0

    if-gt v6, v4, :cond_93

    add-int v6, v2, v0

    if-gt v4, v6, :cond_93

    iget-object v6, p0, Lorg/apache/commons/text/diff/StringsComparator;->vUp:[I

    sub-int v7, v5, v2

    aget v8, v6, v7

    iget-object v9, p0, Lorg/apache/commons/text/diff/StringsComparator;->vDown:[I

    aget v5, v9, v5

    if-gt v8, v5, :cond_93

    aget v0, v6, v7

    add-int/2addr v4, p1

    sub-int/2addr v4, p3

    invoke-direct {p0, v0, v4, p2, p4}, Lorg/apache/commons/text/diff/StringsComparator;->buildSnake(IIII)Lorg/apache/commons/text/diff/StringsComparator$Snake;

    move-result-object p1

    return-object p1

    :cond_93
    add-int/lit8 v4, v4, 0x2

    goto :goto_27

    :cond_96
    sub-int v4, v2, v0

    move v5, v4

    :goto_99
    add-int v6, v2, v0

    if-gt v5, v6, :cond_10a

    add-int v7, v5, v1

    sub-int/2addr v7, v2

    if-eq v5, v4, :cond_ba

    if-eq v5, v6, :cond_b1

    iget-object v6, p0, Lorg/apache/commons/text/diff/StringsComparator;->vUp:[I

    add-int/lit8 v8, v7, 0x1

    aget v8, v6, v8

    add-int/lit8 v9, v7, -0x1

    aget v6, v6, v9

    if-gt v8, v6, :cond_b1

    goto :goto_ba

    :cond_b1
    iget-object v6, p0, Lorg/apache/commons/text/diff/StringsComparator;->vUp:[I

    add-int/lit8 v8, v7, -0x1

    aget v8, v6, v8

    aput v8, v6, v7

    goto :goto_c4

    :cond_ba
    :goto_ba
    iget-object v6, p0, Lorg/apache/commons/text/diff/StringsComparator;->vUp:[I

    add-int/lit8 v8, v7, 0x1

    aget v8, v6, v8

    add-int/lit8 v8, v8, -0x1

    aput v8, v6, v7

    :goto_c4
    iget-object v6, p0, Lorg/apache/commons/text/diff/StringsComparator;->vUp:[I

    aget v6, v6, v7

    add-int/lit8 v6, v6, -0x1

    sub-int v8, v6, p1

    add-int/2addr v8, p3

    sub-int/2addr v8, v5

    :goto_ce
    if-lt v6, p1, :cond_ea

    if-lt v8, p3, :cond_ea

    iget-object v9, p0, Lorg/apache/commons/text/diff/StringsComparator;->left:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    iget-object v10, p0, Lorg/apache/commons/text/diff/StringsComparator;->right:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v9, v10, :cond_ea

    iget-object v9, p0, Lorg/apache/commons/text/diff/StringsComparator;->vUp:[I

    add-int/lit8 v10, v6, -0x1

    aput v6, v9, v7

    add-int/lit8 v8, v8, -0x1

    move v6, v10

    goto :goto_ce

    :cond_ea
    rem-int/lit8 v6, v2, 0x2

    if-nez v6, :cond_107

    if-gt v3, v5, :cond_107

    if-gt v5, v0, :cond_107

    iget-object v6, p0, Lorg/apache/commons/text/diff/StringsComparator;->vUp:[I

    aget v8, v6, v7

    iget-object v9, p0, Lorg/apache/commons/text/diff/StringsComparator;->vDown:[I

    add-int v10, v7, v2

    aget v9, v9, v10

    if-gt v8, v9, :cond_107

    aget v0, v6, v7

    add-int/2addr v5, p1

    sub-int/2addr v5, p3

    invoke-direct {p0, v0, v5, p2, p4}, Lorg/apache/commons/text/diff/StringsComparator;->buildSnake(IIII)Lorg/apache/commons/text/diff/StringsComparator$Snake;

    move-result-object p1

    return-object p1

    :cond_107
    add-int/lit8 v5, v5, 0x2

    goto :goto_99

    :cond_10a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_23

    :cond_10e
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Internal Error"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_116
    :goto_116
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getScript()Lorg/apache/commons/text/diff/EditScript;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/text/diff/EditScript<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    new-instance v6, Lorg/apache/commons/text/diff/EditScript;

    invoke-direct {v6}, Lorg/apache/commons/text/diff/EditScript;-><init>()V

    iget-object v0, p0, Lorg/apache/commons/text/diff/StringsComparator;->left:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v0, p0, Lorg/apache/commons/text/diff/StringsComparator;->right:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/text/diff/StringsComparator;->buildScript(IIIILorg/apache/commons/text/diff/EditScript;)V

    return-object v6
.end method
