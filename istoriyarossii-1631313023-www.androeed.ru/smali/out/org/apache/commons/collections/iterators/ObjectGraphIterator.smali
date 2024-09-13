.class public Lorg/apache/commons/collections/iterators/ObjectGraphIterator;
.super Ljava/lang/Object;
.source "ObjectGraphIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field protected currentIterator:Ljava/util/Iterator;

.field protected currentValue:Ljava/lang/Object;

.field protected hasNext:Z

.field protected lastUsedIterator:Ljava/util/Iterator;

.field protected root:Ljava/lang/Object;

.field protected final stack:Lorg/apache/commons/collections/ArrayStack;

.field protected transformer:Lorg/apache/commons/collections/Transformer;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lorg/apache/commons/collections/Transformer;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/commons/collections/ArrayStack;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/ArrayStack;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->stack:Lorg/apache/commons/collections/ArrayStack;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->hasNext:Z

    instance-of v0, p1, Ljava/util/Iterator;

    if-eqz v0, :cond_18

    check-cast p1, Ljava/util/Iterator;

    iput-object p1, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->currentIterator:Ljava/util/Iterator;

    goto :goto_1a

    :cond_18
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->root:Ljava/lang/Object;

    :goto_1a
    iput-object p2, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->transformer:Lorg/apache/commons/collections/Transformer;

    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/commons/collections/ArrayStack;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/ArrayStack;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->stack:Lorg/apache/commons/collections/ArrayStack;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->hasNext:Z

    iput-object p1, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->currentIterator:Ljava/util/Iterator;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->transformer:Lorg/apache/commons/collections/Transformer;

    return-void
.end method


# virtual methods
.method protected findNext(Ljava/lang/Object;)V
    .registers 3

    instance-of v0, p1, Ljava/util/Iterator;

    if-eqz v0, :cond_a

    check-cast p1, Ljava/util/Iterator;

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->findNextByIterator(Ljava/util/Iterator;)V

    goto :goto_f

    :cond_a
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->currentValue:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->hasNext:Z

    :goto_f
    return-void
.end method

.method protected findNextByIterator(Ljava/util/Iterator;)V
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->currentIterator:Ljava/util/Iterator;

    if-eq p1, v0, :cond_d

    if-eqz v0, :cond_b

    iget-object v1, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->stack:Lorg/apache/commons/collections/ArrayStack;

    invoke-virtual {v1, v0}, Lorg/apache/commons/collections/ArrayStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->currentIterator:Ljava/util/Iterator;

    :cond_d
    :goto_d
    iget-object p1, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->currentIterator:Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2b

    iget-boolean p1, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->hasNext:Z

    if-nez p1, :cond_2b

    iget-object p1, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->currentIterator:Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->transformer:Lorg/apache/commons/collections/Transformer;

    if-eqz v0, :cond_27

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_27
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->findNext(Ljava/lang/Object;)V

    goto :goto_d

    :cond_2b
    iget-boolean p1, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->hasNext:Z

    if-eqz p1, :cond_30

    goto :goto_46

    :cond_30
    iget-object p1, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->stack:Lorg/apache/commons/collections/ArrayStack;

    invoke-virtual {p1}, Lorg/apache/commons/collections/ArrayStack;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_39

    goto :goto_46

    :cond_39
    iget-object p1, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->stack:Lorg/apache/commons/collections/ArrayStack;

    invoke-virtual {p1}, Lorg/apache/commons/collections/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Iterator;

    iput-object p1, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->currentIterator:Ljava/util/Iterator;

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->findNextByIterator(Ljava/util/Iterator;)V

    :goto_46
    return-void
.end method

.method public hasNext()Z
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->updateCurrentIterator()V

    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->hasNext:Z

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->updateCurrentIterator()V

    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->hasNext:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->currentIterator:Ljava/util/Iterator;

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->lastUsedIterator:Ljava/util/Iterator;

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->currentValue:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->currentValue:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->hasNext:Z

    return-object v0

    :cond_14
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No more elements in the iteration"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->lastUsedIterator:Ljava/util/Iterator;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->lastUsedIterator:Ljava/util/Iterator;

    return-void

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterator remove() cannot be called at this time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected updateCurrentIterator()V
    .registers 3

    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->hasNext:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->currentIterator:Ljava/util/Iterator;

    if-nez v0, :cond_21

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->root:Ljava/lang/Object;

    if-nez v0, :cond_e

    goto :goto_24

    :cond_e
    iget-object v1, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->transformer:Lorg/apache/commons/collections/Transformer;

    if-nez v1, :cond_16

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->findNext(Ljava/lang/Object;)V

    goto :goto_1d

    :cond_16
    invoke-interface {v1, v0}, Lorg/apache/commons/collections/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->findNext(Ljava/lang/Object;)V

    :goto_1d
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->root:Ljava/lang/Object;

    goto :goto_24

    :cond_21
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->findNextByIterator(Ljava/util/Iterator;)V

    :goto_24
    return-void
.end method
