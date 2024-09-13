.class public Lorg/apache/commons/collections/iterators/LoopingIterator;
.super Ljava/lang/Object;
.source "LoopingIterator.java"

# interfaces
.implements Lorg/apache/commons/collections/ResettableIterator;


# instance fields
.field private collection:Ljava/util/Collection;

.field private iterator:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "The collection must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/commons/collections/iterators/LoopingIterator;->collection:Ljava/util/Collection;

    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/LoopingIterator;->reset()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/LoopingIterator;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/LoopingIterator;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/LoopingIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/LoopingIterator;->reset()V

    :cond_13
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/LoopingIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1a
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "There are no elements for this iterator to loop on"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/LoopingIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method

.method public reset()V
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/LoopingIterator;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/LoopingIterator;->iterator:Ljava/util/Iterator;

    return-void
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/LoopingIterator;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method
