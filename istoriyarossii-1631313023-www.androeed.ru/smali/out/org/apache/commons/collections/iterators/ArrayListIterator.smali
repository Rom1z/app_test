.class public Lorg/apache/commons/collections/iterators/ArrayListIterator;
.super Lorg/apache/commons/collections/iterators/ArrayIterator;
.source "ArrayListIterator.java"

# interfaces
.implements Ljava/util/ListIterator;
.implements Lorg/apache/commons/collections/ResettableListIterator;


# instance fields
.field protected lastItemIndex:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/ArrayIterator;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/iterators/ArrayListIterator;->lastItemIndex:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/iterators/ArrayIterator;-><init>(Ljava/lang/Object;)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/apache/commons/collections/iterators/ArrayListIterator;->lastItemIndex:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/iterators/ArrayIterator;-><init>(Ljava/lang/Object;I)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/apache/commons/collections/iterators/ArrayListIterator;->lastItemIndex:I

    iput p2, p0, Lorg/apache/commons/collections/iterators/ArrayListIterator;->startIndex:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/collections/iterators/ArrayIterator;-><init>(Ljava/lang/Object;II)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/apache/commons/collections/iterators/ArrayListIterator;->lastItemIndex:I

    iput p2, p0, Lorg/apache/commons/collections/iterators/ArrayListIterator;->startIndex:I

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "add() method is not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hasPrevious()Z
    .registers 3

    iget v0, p0, Lorg/apache/commons/collections/iterators/ArrayListIterator;->index:I

    iget v1, p0, Lorg/apache/commons/collections/iterators/ArrayListIterator;->startIndex:I

    if-le v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/ArrayListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    iget v0, p0, Lorg/apache/commons/collections/iterators/ArrayListIterator;->index:I

    iput v0, p0, Lorg/apache/commons/collections/iterators/ArrayListIterator;->lastItemIndex:I

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ArrayListIterator;->array:Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections/iterators/ArrayListIterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/collections/iterators/ArrayListIterator;->index:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_17
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .registers 3

    iget v0, p0, Lorg/apache/commons/collections/iterators/ArrayListIterator;->index:I

    iget v1, p0, Lorg/apache/commons/collections/iterators/ArrayListIterator;->startIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/ArrayListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_17

    iget v0, p0, Lorg/apache/commons/collections/iterators/ArrayListIterator;->index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/iterators/ArrayListIterator;->index:I

    iput v0, p0, Lorg/apache/commons/collections/iterators/ArrayListIterator;->lastItemIndex:I

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ArrayListIterator;->array:Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections/iterators/ArrayListIterator;->index:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_17
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .registers 3

    iget v0, p0, Lorg/apache/commons/collections/iterators/ArrayListIterator;->index:I

    iget v1, p0, Lorg/apache/commons/collections/iterators/ArrayListIterator;->startIndex:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public reset()V
    .registers 2

    invoke-super {p0}, Lorg/apache/commons/collections/iterators/ArrayIterator;->reset()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/iterators/ArrayListIterator;->lastItemIndex:I

    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .registers 4

    iget v0, p0, Lorg/apache/commons/collections/iterators/ArrayListIterator;->lastItemIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ArrayListIterator;->array:Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections/iterators/ArrayListIterator;->lastItemIndex:I

    invoke-static {v0, v1, p1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    return-void

    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "must call next() or previous() before a call to set()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
