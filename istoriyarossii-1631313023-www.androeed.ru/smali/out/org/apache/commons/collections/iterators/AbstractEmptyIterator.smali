.class abstract Lorg/apache/commons/collections/iterators/AbstractEmptyIterator;
.super Ljava/lang/Object;
.source "AbstractEmptyIterator.java"


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "add() not supported for empty Iterator"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getKey()Ljava/lang/Object;
    .registers 3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterator contains no elements"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterator contains no elements"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasNext()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public hasPrevious()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 3

    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Iterator contains no elements"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextIndex()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .registers 3

    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Iterator contains no elements"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public previousIndex()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public remove()V
    .registers 3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterator contains no elements"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .registers 1

    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .registers 3

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Iterator contains no elements"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Iterator contains no elements"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
