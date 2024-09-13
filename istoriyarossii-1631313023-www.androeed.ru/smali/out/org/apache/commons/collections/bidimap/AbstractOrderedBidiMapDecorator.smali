.class public abstract Lorg/apache/commons/collections/bidimap/AbstractOrderedBidiMapDecorator;
.super Lorg/apache/commons/collections/bidimap/AbstractBidiMapDecorator;
.source "AbstractOrderedBidiMapDecorator.java"

# interfaces
.implements Lorg/apache/commons/collections/OrderedBidiMap;


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections/OrderedBidiMap;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/bidimap/AbstractBidiMapDecorator;-><init>(Lorg/apache/commons/collections/BidiMap;)V

    return-void
.end method


# virtual methods
.method public firstKey()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/AbstractOrderedBidiMapDecorator;->getOrderedBidiMap()Lorg/apache/commons/collections/OrderedBidiMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/OrderedBidiMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getOrderedBidiMap()Lorg/apache/commons/collections/OrderedBidiMap;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractOrderedBidiMapDecorator;->map:Ljava/util/Map;

    check-cast v0, Lorg/apache/commons/collections/OrderedBidiMap;

    return-object v0
.end method

.method public inverseOrderedBidiMap()Lorg/apache/commons/collections/OrderedBidiMap;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/AbstractOrderedBidiMapDecorator;->getOrderedBidiMap()Lorg/apache/commons/collections/OrderedBidiMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/OrderedBidiMap;->inverseOrderedBidiMap()Lorg/apache/commons/collections/OrderedBidiMap;

    move-result-object v0

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/AbstractOrderedBidiMapDecorator;->getOrderedBidiMap()Lorg/apache/commons/collections/OrderedBidiMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/OrderedBidiMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/AbstractOrderedBidiMapDecorator;->getOrderedBidiMap()Lorg/apache/commons/collections/OrderedBidiMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/OrderedBidiMap;->nextKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public orderedMapIterator()Lorg/apache/commons/collections/OrderedMapIterator;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/AbstractOrderedBidiMapDecorator;->getOrderedBidiMap()Lorg/apache/commons/collections/OrderedBidiMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/OrderedBidiMap;->orderedMapIterator()Lorg/apache/commons/collections/OrderedMapIterator;

    move-result-object v0

    return-object v0
.end method

.method public previousKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/AbstractOrderedBidiMapDecorator;->getOrderedBidiMap()Lorg/apache/commons/collections/OrderedBidiMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/OrderedBidiMap;->previousKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
