.class public Lorg/apache/commons/collections/iterators/LoopingListIterator;
.super Ljava/lang/Object;
.source "LoopingListIterator.java"

# interfaces
.implements Lorg/apache/commons/collections/ResettableListIterator;


# instance fields
.field private iterator:Ljava/util/ListIterator;

.field private list:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "The list must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/commons/collections/iterators/LoopingListIterator;->list:Ljava/util/List;

    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/LoopingListIterator;->reset()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/LoopingListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/LoopingListIterator;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasPrevious()Z
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/LoopingListIterator;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/LoopingListIterator;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/LoopingListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/LoopingListIterator;->reset()V

    :cond_13
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/LoopingListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1a
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "There are no elements for this iterator to loop on"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextIndex()I
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/LoopingListIterator;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/LoopingListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x0

    return v0

    :cond_12
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/LoopingListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0

    :cond_19
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "There are no elements for this iterator to loop on"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public previous()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/LoopingListIterator;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/LoopingListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-nez v0, :cond_26

    const/4 v0, 0x0

    :goto_11
    iget-object v1, p0, Lorg/apache/commons/collections/iterators/LoopingListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/LoopingListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    goto :goto_11

    :cond_20
    iget-object v1, p0, Lorg/apache/commons/collections/iterators/LoopingListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    return-object v0

    :cond_26
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/LoopingListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_2d
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "There are no elements for this iterator to loop on"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public previousIndex()I
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/LoopingListIterator;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/LoopingListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/LoopingListIterator;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0

    :cond_19
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/LoopingListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0

    :cond_20
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "There are no elements for this iterator to loop on"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/LoopingListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    return-void
.end method

.method public reset()V
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/LoopingListIterator;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/LoopingListIterator;->iterator:Ljava/util/ListIterator;

    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/LoopingListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/LoopingListIterator;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
