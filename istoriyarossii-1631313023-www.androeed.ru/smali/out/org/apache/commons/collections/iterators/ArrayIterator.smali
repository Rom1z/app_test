.class public Lorg/apache/commons/collections/iterators/ArrayIterator;
.super Ljava/lang/Object;
.source "ArrayIterator.java"

# interfaces
.implements Lorg/apache/commons/collections/ResettableIterator;


# instance fields
.field protected array:Ljava/lang/Object;

.field protected endIndex:I

.field protected index:I

.field protected startIndex:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->startIndex:I

    iput v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->endIndex:I

    iput v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->index:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->startIndex:I

    iput v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->endIndex:I

    iput v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->index:I

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/iterators/ArrayIterator;->setArray(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->startIndex:I

    iput v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->endIndex:I

    iput v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->index:I

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/iterators/ArrayIterator;->setArray(Ljava/lang/Object;)V

    const-string p1, "start"

    invoke-virtual {p0, p2, p1}, Lorg/apache/commons/collections/iterators/ArrayIterator;->checkBound(ILjava/lang/String;)V

    iput p2, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->startIndex:I

    iput p2, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->index:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;II)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->startIndex:I

    iput v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->endIndex:I

    iput v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->index:I

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/iterators/ArrayIterator;->setArray(Ljava/lang/Object;)V

    const-string p1, "start"

    invoke-virtual {p0, p2, p1}, Lorg/apache/commons/collections/iterators/ArrayIterator;->checkBound(ILjava/lang/String;)V

    const-string p1, "end"

    invoke-virtual {p0, p3, p1}, Lorg/apache/commons/collections/iterators/ArrayIterator;->checkBound(ILjava/lang/String;)V

    if-lt p3, p2, :cond_20

    iput p2, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->startIndex:I

    iput p3, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->endIndex:I

    iput p2, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->index:I

    return-void

    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "End index must not be less than start index."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected checkBound(ILjava/lang/String;)V
    .registers 5

    iget v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->endIndex:I

    const-string v1, "Attempt to make an ArrayIterator that "

    if-gt p1, v0, :cond_23

    if-ltz p1, :cond_9

    return-void

    :cond_9
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "s before the start of the array. "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_23
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "s beyond the end of the array. "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getArray()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->array:Ljava/lang/Object;

    return-object v0
.end method

.method public hasNext()Z
    .registers 3

    iget v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->index:I

    iget v1, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->endIndex:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/ArrayIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->array:Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->index:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_13
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove() method is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .registers 2

    iget v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->startIndex:I

    iput v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->index:I

    return-void
.end method

.method public setArray(Ljava/lang/Object;)V
    .registers 3

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->endIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->startIndex:I

    iput-object p1, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->array:Ljava/lang/Object;

    iput v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->index:I

    return-void
.end method
