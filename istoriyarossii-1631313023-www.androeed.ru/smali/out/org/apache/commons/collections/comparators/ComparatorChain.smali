.class public Lorg/apache/commons/collections/comparators/ComparatorChain;
.super Ljava/lang/Object;
.source "ComparatorChain.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0xa03cc408256595eL


# instance fields
.field protected comparatorChain:Ljava/util/List;

.field protected isLocked:Z

.field protected orderingBits:Ljava/util/BitSet;


# direct methods
.method public constructor <init>()V
    .registers 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/comparators/ComparatorChain;-><init>(Ljava/util/List;Ljava/util/BitSet;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/comparators/ComparatorChain;-><init>(Ljava/util/Comparator;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->comparatorChain:Ljava/util/List;

    iput-object v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->isLocked:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->comparatorChain:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object p1, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    if-ne p2, v1, :cond_22

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    :cond_22
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 4

    new-instance v0, Ljava/util/BitSet;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/comparators/ComparatorChain;-><init>(Ljava/util/List;Ljava/util/BitSet;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/BitSet;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->comparatorChain:Ljava/util/List;

    iput-object v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->isLocked:Z

    iput-object p1, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->comparatorChain:Ljava/util/List;

    iput-object p2, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    return-void
.end method

.method private checkChainIntegrity()V
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->comparatorChain:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ComparatorChains must contain at least one Comparator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkLocked()V
    .registers 3

    iget-boolean v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->isLocked:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    return-void

    :cond_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Comparator ordering cannot be changed after the first comparison is performed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addComparator(Ljava/util/Comparator;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/comparators/ComparatorChain;->addComparator(Ljava/util/Comparator;Z)V

    return-void
.end method

.method public addComparator(Ljava/util/Comparator;Z)V
    .registers 4

    invoke-direct {p0}, Lorg/apache/commons/collections/comparators/ComparatorChain;->checkLocked()V

    iget-object v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->comparatorChain:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    if-ne p2, p1, :cond_17

    iget-object p2, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    iget-object v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->comparatorChain:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p2, v0}, Ljava/util/BitSet;->set(I)V

    :cond_17
    return-void
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->isLocked:Z

    const/4 v1, 0x1

    if-nez v0, :cond_a

    invoke-direct {p0}, Lorg/apache/commons/collections/comparators/ComparatorChain;->checkChainIntegrity()V

    iput-boolean v1, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->isLocked:Z

    :cond_a
    iget-object v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->comparatorChain:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Comparator;

    invoke-interface {v4, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-eqz v4, :cond_37

    iget-object p1, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    invoke-virtual {p1, v3}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    if-ne p1, v1, :cond_36

    const/high16 p1, -0x80000000

    if-ne p1, v4, :cond_34

    const v4, 0x7fffffff

    goto :goto_36

    :cond_34
    mul-int/lit8 v4, v4, -0x1

    :cond_36
    :goto_36
    return v4

    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_3a
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    check-cast p1, Lorg/apache/commons/collections/comparators/ComparatorChain;

    iget-object v2, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    if-nez v2, :cond_21

    iget-object v2, p1, Lorg/apache/commons/collections/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    if-nez v2, :cond_39

    goto :goto_29

    :cond_21
    iget-object v3, p1, Lorg/apache/commons/collections/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    :goto_29
    iget-object v2, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->comparatorChain:Ljava/util/List;

    iget-object p1, p1, Lorg/apache/commons/collections/comparators/ComparatorChain;->comparatorChain:Ljava/util/List;

    if-nez v2, :cond_32

    if-nez p1, :cond_39

    goto :goto_3a

    :cond_32
    invoke-interface {v2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_39

    goto :goto_3a

    :cond_39
    const/4 v0, 0x0

    :goto_3a
    return v0

    :cond_3b
    return v1
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->comparatorChain:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    xor-int/2addr v1, v0

    :cond_a
    iget-object v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/util/BitSet;->hashCode()I

    move-result v0

    xor-int/2addr v1, v0

    :cond_13
    return v1
.end method

.method public isLocked()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->isLocked:Z

    return v0
.end method

.method public setComparator(ILjava/util/Comparator;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/collections/comparators/ComparatorChain;->setComparator(ILjava/util/Comparator;Z)V

    return-void
.end method

.method public setComparator(ILjava/util/Comparator;Z)V
    .registers 5

    invoke-direct {p0}, Lorg/apache/commons/collections/comparators/ComparatorChain;->checkLocked()V

    iget-object v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->comparatorChain:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x1

    if-ne p3, p2, :cond_11

    iget-object p2, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    invoke-virtual {p2, p1}, Ljava/util/BitSet;->set(I)V

    goto :goto_16

    :cond_11
    iget-object p2, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    invoke-virtual {p2, p1}, Ljava/util/BitSet;->clear(I)V

    :goto_16
    return-void
.end method

.method public setForwardSort(I)V
    .registers 3

    invoke-direct {p0}, Lorg/apache/commons/collections/comparators/ComparatorChain;->checkLocked()V

    iget-object v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->clear(I)V

    return-void
.end method

.method public setReverseSort(I)V
    .registers 3

    invoke-direct {p0}, Lorg/apache/commons/collections/comparators/ComparatorChain;->checkLocked()V

    iget-object v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    return-void
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->comparatorChain:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
