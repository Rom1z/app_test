.class Lorg/apache/commons/collections/list/TreeList$AVLNode;
.super Ljava/lang/Object;
.source "TreeList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/list/TreeList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AVLNode"
.end annotation


# instance fields
.field private height:I

.field private left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

.field private leftIsPrevious:Z

.field private relativePosition:I

.field private right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

.field private rightIsNext:Z

.field private value:Ljava/lang/Object;


# direct methods
.method private constructor <init>(ILjava/lang/Object;Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    iput-object p2, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->rightIsNext:Z

    iput-boolean p1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->leftIsPrevious:Z

    iput-object p3, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    iput-object p4, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/Object;Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$1;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/collections/list/TreeList$AVLNode;-><init>(ILjava/lang/Object;Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;)V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/collections/list/TreeList$AVLNode;)I
    .registers 1

    iget p0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    return p0
.end method

.method static synthetic access$200(Lorg/apache/commons/collections/list/TreeList$AVLNode;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    return-object p0
.end method

.method private balance()Lorg/apache/commons/collections/list/TreeList$AVLNode;
    .registers 4

    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->heightRightMinusLeft()I

    move-result v0

    const/4 v1, -0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_32

    const/4 v1, -0x1

    if-eq v0, v1, :cond_31

    if-eqz v0, :cond_31

    const/4 v1, 0x1

    if-eq v0, v1, :cond_31

    const/4 v1, 0x2

    if-ne v0, v1, :cond_29

    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->heightRightMinusLeft()I

    move-result v0

    if-gez v0, :cond_24

    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->rotateRight()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setRight(Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;)V

    :cond_24
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->rotateLeft()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    return-object v0

    :cond_29
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "tree inconsistent!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    return-object p0

    :cond_32
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->heightRightMinusLeft()I

    move-result v0

    if-lez v0, :cond_43

    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->rotateLeft()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setLeft(Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;)V

    :cond_43
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->rotateRight()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    return-object v0
.end method

.method private getHeight(Lorg/apache/commons/collections/list/TreeList$AVLNode;)I
    .registers 2

    if-nez p1, :cond_4

    const/4 p1, -0x1

    goto :goto_6

    :cond_4
    iget p1, p1, Lorg/apache/commons/collections/list/TreeList$AVLNode;->height:I

    :goto_6
    return p1
.end method

.method private getLeftSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;
    .registers 2

    iget-boolean v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->leftIsPrevious:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    goto :goto_8

    :cond_6
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    :goto_8
    return-object v0
.end method

.method private getOffset(Lorg/apache/commons/collections/list/TreeList$AVLNode;)I
    .registers 2

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    iget p1, p1, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    return p1
.end method

.method private getRightSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;
    .registers 2

    iget-boolean v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->rightIsNext:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    goto :goto_8

    :cond_6
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    :goto_8
    return-object v0
.end method

.method private heightRightMinusLeft()I
    .registers 3

    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getHeight(Lorg/apache/commons/collections/list/TreeList$AVLNode;)I

    move-result v0

    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getHeight(Lorg/apache/commons/collections/list/TreeList$AVLNode;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private insertOnLeft(ILjava/lang/Object;)Lorg/apache/commons/collections/list/TreeList$AVLNode;
    .registers 6

    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_13

    new-instance p1, Lorg/apache/commons/collections/list/TreeList$AVLNode;

    const/4 v0, -0x1

    iget-object v2, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {p1, v0, p2, p0, v2}, Lorg/apache/commons/collections/list/TreeList$AVLNode;-><init>(ILjava/lang/Object;Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;)V

    invoke-direct {p0, p1, v1}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setLeft(Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;)V

    goto :goto_1c

    :cond_13
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->insert(ILjava/lang/Object;)Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setLeft(Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;)V

    :goto_1c
    iget p1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    if-ltz p1, :cond_24

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    :cond_24
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->balance()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object p1

    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->recalcHeight()V

    return-object p1
.end method

.method private insertOnRight(ILjava/lang/Object;)Lorg/apache/commons/collections/list/TreeList$AVLNode;
    .registers 6

    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_13

    new-instance p1, Lorg/apache/commons/collections/list/TreeList$AVLNode;

    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {p1, v1, p2, v0, p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;-><init>(ILjava/lang/Object;Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;)V

    invoke-direct {p0, p1, v2}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setRight(Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;)V

    goto :goto_1c

    :cond_13
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->insert(ILjava/lang/Object;)Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setRight(Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;)V

    :goto_1c
    iget p1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    if-gez p1, :cond_23

    sub-int/2addr p1, v1

    iput p1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    :cond_23
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->balance()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object p1

    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->recalcHeight()V

    return-object p1
.end method

.method private max()Lorg/apache/commons/collections/list/TreeList$AVLNode;
    .registers 2

    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    if-nez v0, :cond_8

    move-object v0, p0

    goto :goto_e

    :cond_8
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->max()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    :goto_e
    return-object v0
.end method

.method private min()Lorg/apache/commons/collections/list/TreeList$AVLNode;
    .registers 2

    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    if-nez v0, :cond_8

    move-object v0, p0

    goto :goto_e

    :cond_8
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->min()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    :goto_e
    return-object v0
.end method

.method private recalcHeight()V
    .registers 4

    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_9

    const/4 v0, -0x1

    goto :goto_f

    :cond_9
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    iget v0, v0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->height:I

    :goto_f
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v2

    if-nez v2, :cond_16

    goto :goto_1c

    :cond_16
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v1

    iget v1, v1, Lorg/apache/commons/collections/list/TreeList$AVLNode;->height:I

    :goto_1c
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->height:I

    return-void
.end method

.method private removeMax()Lorg/apache/commons/collections/list/TreeList$AVLNode;
    .registers 3

    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->removeSelf()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    return-object v0

    :cond_b
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->removeMax()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    iget-object v1, v1, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setRight(Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;)V

    iget v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    if-gez v0, :cond_20

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    :cond_20
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->recalcHeight()V

    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->balance()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    return-object v0
.end method

.method private removeMin()Lorg/apache/commons/collections/list/TreeList$AVLNode;
    .registers 3

    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->removeSelf()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    return-object v0

    :cond_b
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->removeMin()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    iget-object v1, v1, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setLeft(Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;)V

    iget v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    if-lez v0, :cond_20

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    :cond_20
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->recalcHeight()V

    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->balance()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    return-object v0
.end method

.method private removeSelf()Lorg/apache/commons/collections/list/TreeList$AVLNode;
    .registers 7

    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    if-nez v0, :cond_e

    return-object v1

    :cond_e
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_34

    iget v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    if-lez v0, :cond_26

    iget-object v4, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    iget v5, v4, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    if-lez v0, :cond_21

    goto :goto_22

    :cond_21
    const/4 v2, 0x1

    :goto_22
    add-int/2addr v0, v2

    add-int/2addr v5, v0

    iput v5, v4, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    :cond_26
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->max()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setRight(Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;)V

    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    return-object v0

    :cond_34
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    if-nez v0, :cond_54

    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    iget v4, v0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    iget v5, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    if-gez v5, :cond_43

    goto :goto_44

    :cond_43
    const/4 v2, 0x1

    :goto_44
    sub-int/2addr v5, v2

    add-int/2addr v4, v5

    iput v4, v0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    invoke-direct {v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->min()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setLeft(Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;)V

    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    return-object v0

    :cond_54
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->heightRightMinusLeft()I

    move-result v0

    if-lez v0, :cond_7c

    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->min()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    iget-object v1, v0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->leftIsPrevious:Z

    if-eqz v1, :cond_6c

    iget-object v0, v0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    iput-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    :cond_6c
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->removeMin()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    iget v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    if-gez v0, :cond_a5

    add-int/2addr v0, v3

    iput v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    goto :goto_a5

    :cond_7c
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->max()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    iget-object v1, v0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->rightIsNext:Z

    if-eqz v1, :cond_8e

    iget-object v0, v0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    iput-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    :cond_8e
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    iget-object v1, v0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->removeMax()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    if-nez v0, :cond_9e

    iput-object v1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    iput-boolean v3, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->leftIsPrevious:Z

    :cond_9e
    iget v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    if-lez v0, :cond_a5

    sub-int/2addr v0, v3

    iput v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    :cond_a5
    :goto_a5
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->recalcHeight()V

    return-object p0
.end method

.method private rotateLeft()Lorg/apache/commons/collections/list/TreeList$AVLNode;
    .registers 7

    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v1

    invoke-direct {v1}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getOffset(Lorg/apache/commons/collections/list/TreeList$AVLNode;)I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    neg-int v3, v3

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getOffset(Lorg/apache/commons/collections/list/TreeList$AVLNode;)I

    move-result v4

    invoke-direct {p0, v1}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getOffset(Lorg/apache/commons/collections/list/TreeList$AVLNode;)I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {p0, v1, v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setRight(Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;)V

    const/4 v5, 0x0

    invoke-direct {v0, p0, v5}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setLeft(Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;)V

    invoke-direct {p0, v0, v2}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setOffset(Lorg/apache/commons/collections/list/TreeList$AVLNode;I)I

    invoke-direct {p0, p0, v3}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setOffset(Lorg/apache/commons/collections/list/TreeList$AVLNode;I)I

    invoke-direct {p0, v1, v4}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setOffset(Lorg/apache/commons/collections/list/TreeList$AVLNode;I)I

    return-object v0
.end method

.method private rotateRight()Lorg/apache/commons/collections/list/TreeList$AVLNode;
    .registers 7

    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v1

    invoke-direct {v1}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getOffset(Lorg/apache/commons/collections/list/TreeList$AVLNode;)I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    neg-int v3, v3

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getOffset(Lorg/apache/commons/collections/list/TreeList$AVLNode;)I

    move-result v4

    invoke-direct {p0, v1}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getOffset(Lorg/apache/commons/collections/list/TreeList$AVLNode;)I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {p0, v1, v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setLeft(Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;)V

    const/4 v5, 0x0

    invoke-direct {v0, p0, v5}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setRight(Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;)V

    invoke-direct {p0, v0, v2}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setOffset(Lorg/apache/commons/collections/list/TreeList$AVLNode;I)I

    invoke-direct {p0, p0, v3}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setOffset(Lorg/apache/commons/collections/list/TreeList$AVLNode;I)I

    invoke-direct {p0, v1, v4}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setOffset(Lorg/apache/commons/collections/list/TreeList$AVLNode;I)I

    return-object v0
.end method

.method private setLeft(Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;)V
    .registers 4

    if-nez p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    iput-boolean v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->leftIsPrevious:Z

    if-eqz v0, :cond_a

    move-object p1, p2

    :cond_a
    iput-object p1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->recalcHeight()V

    return-void
.end method

.method private setOffset(Lorg/apache/commons/collections/list/TreeList$AVLNode;I)I
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getOffset(Lorg/apache/commons/collections/list/TreeList$AVLNode;)I

    move-result v0

    iput p2, p1, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    return v0
.end method

.method private setRight(Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;)V
    .registers 4

    if-nez p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    iput-boolean v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->rightIsNext:Z

    if-eqz v0, :cond_a

    move-object p1, p2

    :cond_a
    iput-object p1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->recalcHeight()V

    return-void
.end method


# virtual methods
.method get(I)Lorg/apache/commons/collections/list/TreeList$AVLNode;
    .registers 3

    iget v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    sub-int/2addr p1, v0

    if-nez p1, :cond_6

    return-object p0

    :cond_6
    if-gez p1, :cond_d

    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    goto :goto_11

    :cond_d
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    :goto_11
    if-nez v0, :cond_15

    const/4 p1, 0x0

    return-object p1

    :cond_15
    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->get(I)Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object p1

    return-object p1
.end method

.method getValue()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    return-object v0
.end method

.method indexOf(Ljava/lang/Object;I)I
    .registers 6

    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_13

    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    iget v2, v0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    add-int/2addr v2, p2

    invoke-virtual {v0, p1, v2}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    if-eq v0, v1, :cond_13

    return v0

    :cond_13
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    if-nez v0, :cond_1a

    if-ne v0, p1, :cond_21

    goto :goto_20

    :cond_1a
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    :goto_20
    return p2

    :cond_21
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    iget v1, v0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->indexOf(Ljava/lang/Object;I)I

    move-result p1

    return p1

    :cond_31
    return v1
.end method

.method insert(ILjava/lang/Object;)Lorg/apache/commons/collections/list/TreeList$AVLNode;
    .registers 4

    iget v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    sub-int/2addr p1, v0

    if-gtz p1, :cond_a

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->insertOnLeft(ILjava/lang/Object;)Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object p1

    return-object p1

    :cond_a
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->insertOnRight(ILjava/lang/Object;)Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object p1

    return-object p1
.end method

.method next()Lorg/apache/commons/collections/list/TreeList$AVLNode;
    .registers 2

    iget-boolean v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->rightIsNext:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    if-nez v0, :cond_9

    goto :goto_e

    :cond_9
    invoke-direct {v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->min()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    return-object v0

    :cond_e
    :goto_e
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    return-object v0
.end method

.method previous()Lorg/apache/commons/collections/list/TreeList$AVLNode;
    .registers 2

    iget-boolean v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->leftIsPrevious:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    if-nez v0, :cond_9

    goto :goto_e

    :cond_9
    invoke-direct {v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->max()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    return-object v0

    :cond_e
    :goto_e
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    return-object v0
.end method

.method remove(I)Lorg/apache/commons/collections/list/TreeList$AVLNode;
    .registers 3

    iget v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    sub-int/2addr p1, v0

    if-nez p1, :cond_a

    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->removeSelf()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object p1

    return-object p1

    :cond_a
    if-lez p1, :cond_22

    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->remove(I)Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    iget-object v0, v0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setRight(Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;)V

    iget p1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    if-gez p1, :cond_37

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    goto :goto_37

    :cond_22
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->remove(I)Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    iget-object v0, v0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setLeft(Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;)V

    iget p1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    if-lez p1, :cond_37

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    :cond_37
    :goto_37
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->recalcHeight()V

    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->balance()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object p1

    return-object p1
.end method

.method setValue(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    return-void
.end method

.method toArray([Ljava/lang/Object;I)V
    .registers 5

    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    aput-object v0, p1, p2

    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    iget v1, v0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    add-int/2addr v1, p2

    invoke-virtual {v0, p1, v1}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->toArray([Ljava/lang/Object;I)V

    :cond_12
    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    iget v1, v0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->toArray([Ljava/lang/Object;I)V

    :cond_20
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "AVLNode("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->relativePosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1c

    const/4 v2, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v2, 0x0

    :goto_1d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v1

    if-eqz v1, :cond_32

    goto :goto_33

    :cond_32
    const/4 v3, 0x0

    :goto_33
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, ", faedelung "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Lorg/apache/commons/collections/list/TreeList$AVLNode;->rightIsNext:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
