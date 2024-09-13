.class public Lorg/apache/commons/collections/iterators/CollatingIterator;
.super Ljava/lang/Object;
.source "CollatingIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private comparator:Ljava/util/Comparator;

.field private iterators:Ljava/util/ArrayList;

.field private lastReturned:I

.field private valueSet:Ljava/util/BitSet;

.field private values:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/iterators/CollatingIterator;-><init>(Ljava/util/Comparator;I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .registers 3

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/iterators/CollatingIterator;-><init>(Ljava/util/Comparator;I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->comparator:Ljava/util/Comparator;

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->iterators:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->values:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->valueSet:Ljava/util/BitSet;

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->lastReturned:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->iterators:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/iterators/CollatingIterator;->setComparator(Ljava/util/Comparator;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;Ljava/util/Collection;)V
    .registers 4

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/iterators/CollatingIterator;-><init>(Ljava/util/Comparator;I)V

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Iterator;

    invoke-virtual {p0, p2}, Lorg/apache/commons/collections/iterators/CollatingIterator;->addIterator(Ljava/util/Iterator;)V

    goto :goto_b

    :cond_1b
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;Ljava/util/Iterator;Ljava/util/Iterator;)V
    .registers 5

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/iterators/CollatingIterator;-><init>(Ljava/util/Comparator;I)V

    invoke-virtual {p0, p2}, Lorg/apache/commons/collections/iterators/CollatingIterator;->addIterator(Ljava/util/Iterator;)V

    invoke-virtual {p0, p3}, Lorg/apache/commons/collections/iterators/CollatingIterator;->addIterator(Ljava/util/Iterator;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;[Ljava/util/Iterator;)V
    .registers 4

    array-length v0, p2

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/iterators/CollatingIterator;-><init>(Ljava/util/Comparator;I)V

    const/4 p1, 0x0

    :goto_5
    array-length v0, p2

    if-ge p1, v0, :cond_10

    aget-object v0, p2, p1

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/iterators/CollatingIterator;->addIterator(Ljava/util/Iterator;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_10
    return-void
.end method

.method private anyHasNext(Ljava/util/ArrayList;)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_19

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 p1, 0x1

    return p1

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_19
    return v0
.end method

.method private anyValueSet(Ljava/util/BitSet;)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p1}, Ljava/util/BitSet;->size()I

    move-result v2

    if-ge v1, v2, :cond_13

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_13
    return v0
.end method

.method private checkNotStarted()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->values:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t do that after next or hasNext has been called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private clear(I)V
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->values:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->valueSet:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->clear(I)V

    return-void
.end method

.method private least()I
    .registers 7

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    :goto_4
    iget-object v4, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->values:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_3c

    iget-object v4, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->valueSet:Ljava/util/BitSet;

    invoke-virtual {v4, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_17

    invoke-direct {p0, v2}, Lorg/apache/commons/collections/iterators/CollatingIterator;->set(I)Z

    :cond_17
    iget-object v4, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->valueSet:Ljava/util/BitSet;

    invoke-virtual {v4, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_39

    if-ne v3, v0, :cond_29

    iget-object v1, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->values:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move v3, v2

    goto :goto_39

    :cond_29
    iget-object v4, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->values:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->comparator:Ljava/util/Comparator;

    invoke-interface {v5, v4, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_39

    move v3, v2

    move-object v1, v4

    :cond_39
    :goto_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_3c
    return v3
.end method

.method private set(I)Z
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->iterators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->values:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->valueSet:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    const/4 p1, 0x1

    return p1

    :cond_20
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->values:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->valueSet:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->clear(I)V

    const/4 p1, 0x0

    return p1
.end method

.method private start()V
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->values:Ljava/util/ArrayList;

    if-nez v0, :cond_35

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->iterators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->values:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/BitSet;

    iget-object v1, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->iterators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->valueSet:Ljava/util/BitSet;

    const/4 v0, 0x0

    :goto_1f
    iget-object v1, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->iterators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_35

    iget-object v1, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->values:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->valueSet:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->clear(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_35
    return-void
.end method


# virtual methods
.method public addIterator(Ljava/util/Iterator;)V
    .registers 3

    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/CollatingIterator;->checkNotStarted()V

    const-string v0, "Iterator must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->iterators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getComparator()Ljava/util/Comparator;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public getIterators()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->iterators:Ljava/util/ArrayList;

    invoke-static {v0}, Lorg/apache/commons/collections/list/UnmodifiableList;->decorate(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .registers 2

    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/CollatingIterator;->start()V

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->valueSet:Ljava/util/BitSet;

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/iterators/CollatingIterator;->anyValueSet(Ljava/util/BitSet;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->iterators:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/iterators/CollatingIterator;->anyHasNext(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_16

    :cond_14
    const/4 v0, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 v0, 0x1

    :goto_17
    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/CollatingIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/CollatingIterator;->least()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_19

    iget-object v1, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->values:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/iterators/CollatingIterator;->clear(I)V

    iput v0, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->lastReturned:I

    return-object v1

    :cond_19
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_1f
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 3

    iget v0, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->lastReturned:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_13

    iget-object v1, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->iterators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No value can be removed at present"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setComparator(Ljava/util/Comparator;)V
    .registers 2

    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/CollatingIterator;->checkNotStarted()V

    iput-object p1, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->comparator:Ljava/util/Comparator;

    return-void
.end method

.method public setIterator(ILjava/util/Iterator;)V
    .registers 4

    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/CollatingIterator;->checkNotStarted()V

    const-string v0, "Iterator must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->iterators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
