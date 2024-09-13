.class public Lorg/apache/commons/collections/iterators/AbstractOrderedMapIteratorDecorator;
.super Ljava/lang/Object;
.source "AbstractOrderedMapIteratorDecorator.java"

# interfaces
.implements Lorg/apache/commons/collections/OrderedMapIterator;


# instance fields
.field protected final iterator:Lorg/apache/commons/collections/OrderedMapIterator;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/OrderedMapIterator;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8

    iput-object p1, p0, Lorg/apache/commons/collections/iterators/AbstractOrderedMapIteratorDecorator;->iterator:Lorg/apache/commons/collections/OrderedMapIterator;

    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "OrderedMapIterator must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/AbstractOrderedMapIteratorDecorator;->iterator:Lorg/apache/commons/collections/OrderedMapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections/OrderedMapIterator;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getOrderedMapIterator()Lorg/apache/commons/collections/OrderedMapIterator;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/AbstractOrderedMapIteratorDecorator;->iterator:Lorg/apache/commons/collections/OrderedMapIterator;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/AbstractOrderedMapIteratorDecorator;->iterator:Lorg/apache/commons/collections/OrderedMapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections/OrderedMapIterator;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/AbstractOrderedMapIteratorDecorator;->iterator:Lorg/apache/commons/collections/OrderedMapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections/OrderedMapIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/AbstractOrderedMapIteratorDecorator;->iterator:Lorg/apache/commons/collections/OrderedMapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections/OrderedMapIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/AbstractOrderedMapIteratorDecorator;->iterator:Lorg/apache/commons/collections/OrderedMapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections/OrderedMapIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previous()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/AbstractOrderedMapIteratorDecorator;->iterator:Lorg/apache/commons/collections/OrderedMapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections/OrderedMapIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/AbstractOrderedMapIteratorDecorator;->iterator:Lorg/apache/commons/collections/OrderedMapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections/OrderedMapIterator;->remove()V

    return-void
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/AbstractOrderedMapIteratorDecorator;->iterator:Lorg/apache/commons/collections/OrderedMapIterator;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/OrderedMapIterator;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
