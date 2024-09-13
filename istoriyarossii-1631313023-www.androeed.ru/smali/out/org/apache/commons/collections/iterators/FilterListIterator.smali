.class public Lorg/apache/commons/collections/iterators/FilterListIterator;
.super Ljava/lang/Object;
.source "FilterListIterator.java"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field private iterator:Ljava/util/ListIterator;

.field private nextIndex:I

.field private nextObject:Ljava/lang/Object;

.field private nextObjectSet:Z

.field private predicate:Lorg/apache/commons/collections/Predicate;

.field private previousObject:Ljava/lang/Object;

.field private previousObjectSet:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->nextObjectSet:Z

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->previousObjectSet:Z

    iput v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->nextIndex:I

    return-void
.end method

.method public constructor <init>(Ljava/util/ListIterator;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->nextObjectSet:Z

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->previousObjectSet:Z

    iput v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->nextIndex:I

    iput-object p1, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->iterator:Ljava/util/ListIterator;

    return-void
.end method

.method public constructor <init>(Ljava/util/ListIterator;Lorg/apache/commons/collections/Predicate;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->nextObjectSet:Z

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->previousObjectSet:Z

    iput v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->nextIndex:I

    iput-object p1, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->iterator:Ljava/util/ListIterator;

    iput-object p2, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->predicate:Lorg/apache/commons/collections/Predicate;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/collections/Predicate;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->nextObjectSet:Z

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->previousObjectSet:Z

    iput v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->nextIndex:I

    iput-object p1, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->predicate:Lorg/apache/commons/collections/Predicate;

    return-void
.end method

.method private clearNextObject()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->nextObject:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->nextObjectSet:Z

    return-void
.end method

.method private clearPreviousObject()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->previousObject:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->previousObjectSet:Z

    return-void
.end method

.method private setNextObject()Z
    .registers 4

    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->previousObjectSet:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/FilterListIterator;->clearPreviousObject()V

    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/FilterListIterator;->setNextObject()Z

    move-result v0

    if-nez v0, :cond_f

    return v1

    :cond_f
    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/FilterListIterator;->clearNextObject()V

    :cond_12
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->predicate:Lorg/apache/commons/collections/Predicate;

    invoke-interface {v2, v0}, Lorg/apache/commons/collections/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->nextObject:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->nextObjectSet:Z

    return v0

    :cond_2e
    return v1
.end method

.method private setPreviousObject()Z
    .registers 4

    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->nextObjectSet:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/FilterListIterator;->clearNextObject()V

    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/FilterListIterator;->setPreviousObject()Z

    move-result v0

    if-nez v0, :cond_f

    return v1

    :cond_f
    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/FilterListIterator;->clearPreviousObject()V

    :cond_12
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->predicate:Lorg/apache/commons/collections/Predicate;

    invoke-interface {v2, v0}, Lorg/apache/commons/collections/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->previousObject:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->previousObjectSet:Z

    return v0

    :cond_2e
    return v1
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "FilterListIterator.add(Object) is not supported."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getListIterator()Ljava/util/ListIterator;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->iterator:Ljava/util/ListIterator;

    return-object v0
.end method

.method public getPredicate()Lorg/apache/commons/collections/Predicate;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->predicate:Lorg/apache/commons/collections/Predicate;

    return-object v0
.end method

.method public hasNext()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->nextObjectSet:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/FilterListIterator;->setNextObject()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->previousObjectSet:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/FilterListIterator;->setPreviousObject()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2

    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->nextObjectSet:Z

    if-nez v0, :cond_11

    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/FilterListIterator;->setNextObject()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_11

    :cond_b
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_11
    :goto_11
    iget v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->nextIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->nextIndex:I

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->nextObject:Ljava/lang/Object;

    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/FilterListIterator;->clearNextObject()V

    return-object v0
.end method

.method public nextIndex()I
    .registers 2

    iget v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->nextIndex:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .registers 2

    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->previousObjectSet:Z

    if-nez v0, :cond_11

    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/FilterListIterator;->setPreviousObject()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_11

    :cond_b
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_11
    :goto_11
    iget v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->nextIndex:I

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->previousObject:Ljava/lang/Object;

    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/FilterListIterator;->clearPreviousObject()V

    return-object v0
.end method

.method public previousIndex()I
    .registers 2

    iget v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "FilterListIterator.remove() is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "FilterListIterator.set(Object) is not supported."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setListIterator(Ljava/util/ListIterator;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->iterator:Ljava/util/ListIterator;

    return-void
.end method

.method public setPredicate(Lorg/apache/commons/collections/Predicate;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->predicate:Lorg/apache/commons/collections/Predicate;

    return-void
.end method
