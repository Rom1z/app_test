.class public abstract Lorg/apache/commons/collections/bidimap/AbstractSortedBidiMapDecorator;
.super Lorg/apache/commons/collections/bidimap/AbstractOrderedBidiMapDecorator;
.source "AbstractSortedBidiMapDecorator.java"

# interfaces
.implements Lorg/apache/commons/collections/SortedBidiMap;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/SortedBidiMap;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/bidimap/AbstractOrderedBidiMapDecorator;-><init>(Lorg/apache/commons/collections/OrderedBidiMap;)V

    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/AbstractSortedBidiMapDecorator;->getSortedBidiMap()Lorg/apache/commons/collections/SortedBidiMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/SortedBidiMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method protected getSortedBidiMap()Lorg/apache/commons/collections/SortedBidiMap;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractSortedBidiMapDecorator;->map:Ljava/util/Map;

    check-cast v0, Lorg/apache/commons/collections/SortedBidiMap;

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/AbstractSortedBidiMapDecorator;->getSortedBidiMap()Lorg/apache/commons/collections/SortedBidiMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/SortedBidiMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public inverseSortedBidiMap()Lorg/apache/commons/collections/SortedBidiMap;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/AbstractSortedBidiMapDecorator;->getSortedBidiMap()Lorg/apache/commons/collections/SortedBidiMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/SortedBidiMap;->inverseSortedBidiMap()Lorg/apache/commons/collections/SortedBidiMap;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 4

    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/AbstractSortedBidiMapDecorator;->getSortedBidiMap()Lorg/apache/commons/collections/SortedBidiMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections/SortedBidiMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/AbstractSortedBidiMapDecorator;->getSortedBidiMap()Lorg/apache/commons/collections/SortedBidiMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/SortedBidiMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    return-object p1
.end method
