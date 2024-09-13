.class public final Lorg/apache/commons/collections/bidimap/UnmodifiableOrderedBidiMap;
.super Lorg/apache/commons/collections/bidimap/AbstractOrderedBidiMapDecorator;
.source "UnmodifiableOrderedBidiMap.java"

# interfaces
.implements Lorg/apache/commons/collections/Unmodifiable;


# instance fields
.field private inverse:Lorg/apache/commons/collections/bidimap/UnmodifiableOrderedBidiMap;


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections/OrderedBidiMap;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/bidimap/AbstractOrderedBidiMapDecorator;-><init>(Lorg/apache/commons/collections/OrderedBidiMap;)V

    return-void
.end method

.method public static decorate(Lorg/apache/commons/collections/OrderedBidiMap;)Lorg/apache/commons/collections/OrderedBidiMap;
    .registers 2

    instance-of v0, p0, Lorg/apache/commons/collections/Unmodifiable;

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    new-instance v0, Lorg/apache/commons/collections/bidimap/UnmodifiableOrderedBidiMap;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/bidimap/UnmodifiableOrderedBidiMap;-><init>(Lorg/apache/commons/collections/OrderedBidiMap;)V

    return-object v0
.end method


# virtual methods
.method public clear()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2

    invoke-super {p0}, Lorg/apache/commons/collections/bidimap/AbstractOrderedBidiMapDecorator;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections/map/UnmodifiableEntrySet;->decorate(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public inverseBidiMap()Lorg/apache/commons/collections/BidiMap;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/UnmodifiableOrderedBidiMap;->inverseOrderedBidiMap()Lorg/apache/commons/collections/OrderedBidiMap;

    move-result-object v0

    return-object v0
.end method

.method public inverseOrderedBidiMap()Lorg/apache/commons/collections/OrderedBidiMap;
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/UnmodifiableOrderedBidiMap;->inverse:Lorg/apache/commons/collections/bidimap/UnmodifiableOrderedBidiMap;

    if-nez v0, :cond_15

    new-instance v0, Lorg/apache/commons/collections/bidimap/UnmodifiableOrderedBidiMap;

    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/UnmodifiableOrderedBidiMap;->getOrderedBidiMap()Lorg/apache/commons/collections/OrderedBidiMap;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/collections/OrderedBidiMap;->inverseOrderedBidiMap()Lorg/apache/commons/collections/OrderedBidiMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/bidimap/UnmodifiableOrderedBidiMap;-><init>(Lorg/apache/commons/collections/OrderedBidiMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/UnmodifiableOrderedBidiMap;->inverse:Lorg/apache/commons/collections/bidimap/UnmodifiableOrderedBidiMap;

    iput-object p0, v0, Lorg/apache/commons/collections/bidimap/UnmodifiableOrderedBidiMap;->inverse:Lorg/apache/commons/collections/bidimap/UnmodifiableOrderedBidiMap;

    :cond_15
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/UnmodifiableOrderedBidiMap;->inverse:Lorg/apache/commons/collections/bidimap/UnmodifiableOrderedBidiMap;

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2

    invoke-super {p0}, Lorg/apache/commons/collections/bidimap/AbstractOrderedBidiMapDecorator;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections/set/UnmodifiableSet;->decorate(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public mapIterator()Lorg/apache/commons/collections/MapIterator;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/UnmodifiableOrderedBidiMap;->orderedMapIterator()Lorg/apache/commons/collections/OrderedMapIterator;

    move-result-object v0

    return-object v0
.end method

.method public orderedMapIterator()Lorg/apache/commons/collections/OrderedMapIterator;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/UnmodifiableOrderedBidiMap;->getOrderedBidiMap()Lorg/apache/commons/collections/OrderedBidiMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/OrderedBidiMap;->orderedMapIterator()Lorg/apache/commons/collections/OrderedMapIterator;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections/iterators/UnmodifiableOrderedMapIterator;->decorate(Lorg/apache/commons/collections/OrderedMapIterator;)Lorg/apache/commons/collections/OrderedMapIterator;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public removeValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public values()Ljava/util/Collection;
    .registers 2

    invoke-super {p0}, Lorg/apache/commons/collections/bidimap/AbstractOrderedBidiMapDecorator;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections/collection/UnmodifiableCollection;->decorate(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
