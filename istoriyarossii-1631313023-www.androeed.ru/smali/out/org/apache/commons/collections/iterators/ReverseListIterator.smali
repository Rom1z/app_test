.class public Lorg/apache/commons/collections/iterators/ReverseListIterator;
.super Ljava/lang/Object;
.source "ReverseListIterator.java"

# interfaces
.implements Lorg/apache/commons/collections/ResettableListIterator;


# instance fields
.field private iterator:Ljava/util/ListIterator;

.field private final list:Ljava/util/List;

.field private validForUpdate:Z


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/ReverseListIterator;->validForUpdate:Z

    iput-object p1, p0, Lorg/apache/commons/collections/iterators/ReverseListIterator;->list:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections/iterators/ReverseListIterator;->iterator:Ljava/util/ListIterator;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 3

    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/ReverseListIterator;->validForUpdate:Z

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/ReverseListIterator;->validForUpdate:Z

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ReverseListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/apache/commons/collections/iterators/ReverseListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    return-void

    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot add to list until next() or previous() called"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ReverseListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ReverseListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ReverseListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/collections/iterators/ReverseListIterator;->validForUpdate:Z

    return-object v0
.end method

.method public nextIndex()I
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ReverseListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ReverseListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/collections/iterators/ReverseListIterator;->validForUpdate:Z

    return-object v0
.end method

.method public previousIndex()I
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ReverseListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public remove()V
    .registers 3

    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/ReverseListIterator;->validForUpdate:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ReverseListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    return-void

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot remove from list until next() or previous() called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ReverseListIterator;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/ReverseListIterator;->iterator:Ljava/util/ListIterator;

    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .registers 3

    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/ReverseListIterator;->validForUpdate:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ReverseListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void

    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot set to list until next() or previous() called"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
