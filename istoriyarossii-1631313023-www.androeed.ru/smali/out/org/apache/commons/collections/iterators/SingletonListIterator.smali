.class public Lorg/apache/commons/collections/iterators/SingletonListIterator;
.super Ljava/lang/Object;
.source "SingletonListIterator.java"

# interfaces
.implements Ljava/util/ListIterator;
.implements Lorg/apache/commons/collections/ResettableListIterator;


# instance fields
.field private beforeFirst:Z

.field private nextCalled:Z

.field private object:Ljava/lang/Object;

.field private removed:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->beforeFirst:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->nextCalled:Z

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->removed:Z

    iput-object p1, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->object:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "add() is not supported by this iterator"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hasNext()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->beforeFirst:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->removed:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public hasPrevious()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->beforeFirst:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->removed:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2

    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->beforeFirst:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->removed:Z

    if-nez v0, :cond_11

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->beforeFirst:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->nextCalled:Z

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->object:Ljava/lang/Object;

    return-object v0

    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .registers 2

    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->beforeFirst:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .registers 2

    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->beforeFirst:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->removed:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->beforeFirst:Z

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->object:Ljava/lang/Object;

    return-object v0

    :cond_e
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .registers 2

    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->beforeFirst:Z

    if-eqz v0, :cond_6

    const/4 v0, -0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public remove()V
    .registers 2

    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->nextCalled:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->removed:Z

    if-nez v0, :cond_f

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->object:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->removed:Z

    return-void

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->beforeFirst:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->nextCalled:Z

    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .registers 3

    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->nextCalled:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->removed:Z

    if-nez v0, :cond_b

    iput-object p1, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->object:Ljava/lang/Object;

    return-void

    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
