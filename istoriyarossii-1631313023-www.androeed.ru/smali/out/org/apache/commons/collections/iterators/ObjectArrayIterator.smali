.class public Lorg/apache/commons/collections/iterators/ObjectArrayIterator;
.super Ljava/lang/Object;
.source "ObjectArrayIterator.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Lorg/apache/commons/collections/ResettableIterator;


# instance fields
.field protected array:[Ljava/lang/Object;

.field protected endIndex:I

.field protected index:I

.field protected startIndex:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->array:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->startIndex:I

    iput v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->endIndex:I

    iput v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->index:I

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .registers 4

    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;-><init>([Ljava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;I)V
    .registers 4

    array-length v0, p1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;-><init>([Ljava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;II)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->array:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->startIndex:I

    iput v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->endIndex:I

    iput v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->index:I

    if-ltz p2, :cond_38

    array-length v0, p1

    if-gt p3, v0, :cond_30

    array-length v0, p1

    if-gt p2, v0, :cond_28

    if-lt p3, p2, :cond_20

    iput-object p1, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->array:[Ljava/lang/Object;

    iput p2, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->startIndex:I

    iput p3, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->endIndex:I

    iput p2, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->index:I

    return-void

    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "End index must not be less than start index"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_28
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Start index must not be greater than the array length"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_30
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "End index must not be greater than the array length"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_38
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Start index must not be less than zero"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getArray()[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->array:[Ljava/lang/Object;

    return-object v0
.end method

.method public getEndIndex()I
    .registers 2

    iget v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->endIndex:I

    return v0
.end method

.method public getStartIndex()I
    .registers 2

    iget v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->startIndex:I

    return v0
.end method

.method public hasNext()Z
    .registers 3

    iget v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->index:I

    iget v1, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->endIndex:I

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

    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->array:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->index:I

    aget-object v0, v0, v1

    return-object v0

    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove() method is not supported for an ObjectArrayIterator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .registers 2

    iget v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->startIndex:I

    iput v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->index:I

    return-void
.end method

.method public setArray([Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->array:[Ljava/lang/Object;

    if-nez v0, :cond_f

    iput-object p1, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->array:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->startIndex:I

    array-length p1, p1

    iput p1, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->endIndex:I

    iput v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->index:I

    return-void

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The array to iterate over has already been set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
