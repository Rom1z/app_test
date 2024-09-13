.class public Lorg/apache/commons/collections/iterators/FilterIterator;
.super Ljava/lang/Object;
.source "FilterIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private iterator:Ljava/util/Iterator;

.field private nextObject:Ljava/lang/Object;

.field private nextObjectSet:Z

.field private predicate:Lorg/apache/commons/collections/Predicate;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->nextObjectSet:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->nextObjectSet:Z

    iput-object p1, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->iterator:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;Lorg/apache/commons/collections/Predicate;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->nextObjectSet:Z

    iput-object p1, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->iterator:Ljava/util/Iterator;

    iput-object p2, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->predicate:Lorg/apache/commons/collections/Predicate;

    return-void
.end method

.method private setNextObject()Z
    .registers 3

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->predicate:Lorg/apache/commons/collections/Predicate;

    invoke-interface {v1, v0}, Lorg/apache/commons/collections/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->nextObject:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->nextObjectSet:Z

    return v0

    :cond_1c
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getIterator()Ljava/util/Iterator;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->iterator:Ljava/util/Iterator;

    return-object v0
.end method

.method public getPredicate()Lorg/apache/commons/collections/Predicate;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->predicate:Lorg/apache/commons/collections/Predicate;

    return-object v0
.end method

.method public hasNext()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->nextObjectSet:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/FilterIterator;->setNextObject()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2

    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->nextObjectSet:Z

    if-nez v0, :cond_11

    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/FilterIterator;->setNextObject()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_11

    :cond_b
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_11
    :goto_11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->nextObjectSet:Z

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->nextObject:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .registers 3

    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->nextObjectSet:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() cannot be called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIterator(Ljava/util/Iterator;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->iterator:Ljava/util/Iterator;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->nextObject:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->nextObjectSet:Z

    return-void
.end method

.method public setPredicate(Lorg/apache/commons/collections/Predicate;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->predicate:Lorg/apache/commons/collections/Predicate;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->nextObject:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->nextObjectSet:Z

    return-void
.end method
