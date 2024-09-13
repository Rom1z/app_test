.class public abstract Lorg/apache/commons/collections/map/AbstractOrderedMapDecorator;
.super Lorg/apache/commons/collections/map/AbstractMapDecorator;
.source "AbstractOrderedMapDecorator.java"

# interfaces
.implements Lorg/apache/commons/collections/OrderedMap;


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/apache/commons/collections/map/AbstractMapDecorator;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/collections/OrderedMap;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/AbstractMapDecorator;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public firstKey()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractOrderedMapDecorator;->getOrderedMap()Lorg/apache/commons/collections/OrderedMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/OrderedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getOrderedMap()Lorg/apache/commons/collections/OrderedMap;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractOrderedMapDecorator;->map:Ljava/util/Map;

    check-cast v0, Lorg/apache/commons/collections/OrderedMap;

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractOrderedMapDecorator;->getOrderedMap()Lorg/apache/commons/collections/OrderedMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/OrderedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public mapIterator()Lorg/apache/commons/collections/MapIterator;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractOrderedMapDecorator;->getOrderedMap()Lorg/apache/commons/collections/OrderedMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/OrderedMap;->mapIterator()Lorg/apache/commons/collections/MapIterator;

    move-result-object v0

    return-object v0
.end method

.method public nextKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractOrderedMapDecorator;->getOrderedMap()Lorg/apache/commons/collections/OrderedMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/OrderedMap;->nextKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public orderedMapIterator()Lorg/apache/commons/collections/OrderedMapIterator;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractOrderedMapDecorator;->getOrderedMap()Lorg/apache/commons/collections/OrderedMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/OrderedMap;->orderedMapIterator()Lorg/apache/commons/collections/OrderedMapIterator;

    move-result-object v0

    return-object v0
.end method

.method public previousKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractOrderedMapDecorator;->getOrderedMap()Lorg/apache/commons/collections/OrderedMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/OrderedMap;->previousKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
