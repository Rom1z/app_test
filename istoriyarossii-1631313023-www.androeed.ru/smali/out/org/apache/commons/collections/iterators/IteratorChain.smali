.class public Lorg/apache/commons/collections/iterators/IteratorChain;
.super Ljava/lang/Object;
.source "IteratorChain.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field protected currentIterator:Ljava/util/Iterator;

.field protected currentIteratorIndex:I

.field protected isLocked:Z

.field protected final iteratorChain:Ljava/util/List;

.field protected lastUsedIterator:Ljava/util/Iterator;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->iteratorChain:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->currentIteratorIndex:I

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    iput-object v1, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->lastUsedIterator:Ljava/util/Iterator;

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->isLocked:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->iteratorChain:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->currentIteratorIndex:I

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    iput-object v1, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->lastUsedIterator:Ljava/util/Iterator;

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->isLocked:Z

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/iterators/IteratorChain;->addIterator(Ljava/util/Iterator;)V

    goto :goto_18

    :cond_28
    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->iteratorChain:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->currentIteratorIndex:I

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    iput-object v1, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->lastUsedIterator:Ljava/util/Iterator;

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->isLocked:Z

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/iterators/IteratorChain;->addIterator(Ljava/util/Iterator;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;Ljava/util/Iterator;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->iteratorChain:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->currentIteratorIndex:I

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    iput-object v1, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->lastUsedIterator:Ljava/util/Iterator;

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->isLocked:Z

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/iterators/IteratorChain;->addIterator(Ljava/util/Iterator;)V

    invoke-virtual {p0, p2}, Lorg/apache/commons/collections/iterators/IteratorChain;->addIterator(Ljava/util/Iterator;)V

    return-void
.end method

.method public constructor <init>([Ljava/util/Iterator;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->iteratorChain:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->currentIteratorIndex:I

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    iput-object v1, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->lastUsedIterator:Ljava/util/Iterator;

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->isLocked:Z

    :goto_14
    array-length v1, p1

    if-ge v0, v1, :cond_1f

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/iterators/IteratorChain;->addIterator(Ljava/util/Iterator;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_1f
    return-void
.end method

.method private checkLocked()V
    .registers 3

    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->isLocked:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    return-void

    :cond_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "IteratorChain cannot be changed after the first use of a method from the Iterator interface"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private lockChain()V
    .registers 2

    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->isLocked:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->isLocked:Z

    :cond_7
    return-void
.end method


# virtual methods
.method public addIterator(Ljava/util/Iterator;)V
    .registers 3

    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/IteratorChain;->checkLocked()V

    const-string v0, "Iterator must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->iteratorChain:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getIterators()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->iteratorChain:Ljava/util/List;

    invoke-static {v0}, Lorg/apache/commons/collections/list/UnmodifiableList;->decorate(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .registers 2

    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/IteratorChain;->lockChain()V

    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/IteratorChain;->updateCurrentIterator()V

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->lastUsedIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public isLocked()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->isLocked:Z

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2

    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/IteratorChain;->lockChain()V

    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/IteratorChain;->updateCurrentIterator()V

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->lastUsedIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/IteratorChain;->lockChain()V

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/IteratorChain;->updateCurrentIterator()V

    :cond_a
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->lastUsedIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method

.method public setIterator(ILjava/util/Iterator;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/IteratorChain;->checkLocked()V

    const-string v0, "Iterator must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->iteratorChain:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->iteratorChain:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected updateCurrentIterator()V
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    if-nez v0, :cond_20

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->iteratorChain:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lorg/apache/commons/collections/iterators/EmptyIterator;->INSTANCE:Ljava/util/Iterator;

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    goto :goto_1c

    :cond_11
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->iteratorChain:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    :goto_1c
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->lastUsedIterator:Ljava/util/Iterator;

    :cond_20
    :goto_20
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_45

    iget v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->currentIteratorIndex:I

    iget-object v1, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->iteratorChain:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_45

    iget v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->currentIteratorIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->currentIteratorIndex:I

    iget-object v1, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->iteratorChain:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    goto :goto_20

    :cond_45
    return-void
.end method
