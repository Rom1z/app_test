.class public Lorg/apache/commons/collections/map/LazySortedMap;
.super Lorg/apache/commons/collections/map/LazyMap;
.source "LazySortedMap.java"

# interfaces
.implements Ljava/util/SortedMap;


# static fields
.field private static final serialVersionUID:J = 0x25aec323bd44c035L


# direct methods
.method protected constructor <init>(Ljava/util/SortedMap;Lorg/apache/commons/collections/Factory;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/map/LazyMap;-><init>(Ljava/util/Map;Lorg/apache/commons/collections/Factory;)V

    return-void
.end method

.method protected constructor <init>(Ljava/util/SortedMap;Lorg/apache/commons/collections/Transformer;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/map/LazyMap;-><init>(Ljava/util/Map;Lorg/apache/commons/collections/Transformer;)V

    return-void
.end method

.method public static decorate(Ljava/util/SortedMap;Lorg/apache/commons/collections/Factory;)Ljava/util/SortedMap;
    .registers 3

    new-instance v0, Lorg/apache/commons/collections/map/LazySortedMap;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/map/LazySortedMap;-><init>(Ljava/util/SortedMap;Lorg/apache/commons/collections/Factory;)V

    return-object v0
.end method

.method public static decorate(Ljava/util/SortedMap;Lorg/apache/commons/collections/Transformer;)Ljava/util/SortedMap;
    .registers 3

    new-instance v0, Lorg/apache/commons/collections/map/LazySortedMap;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/map/LazySortedMap;-><init>(Ljava/util/SortedMap;Lorg/apache/commons/collections/Transformer;)V

    return-object v0
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/LazySortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/LazySortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getSortedMap()Ljava/util/SortedMap;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/map/LazySortedMap;->map:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 4

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/LazySortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    new-instance v0, Lorg/apache/commons/collections/map/LazySortedMap;

    iget-object v1, p0, Lorg/apache/commons/collections/map/LazySortedMap;->factory:Lorg/apache/commons/collections/Transformer;

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/collections/map/LazySortedMap;-><init>(Ljava/util/SortedMap;Lorg/apache/commons/collections/Transformer;)V

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/LazySortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 4

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/LazySortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    new-instance p2, Lorg/apache/commons/collections/map/LazySortedMap;

    iget-object v0, p0, Lorg/apache/commons/collections/map/LazySortedMap;->factory:Lorg/apache/commons/collections/Transformer;

    invoke-direct {p2, p1, v0}, Lorg/apache/commons/collections/map/LazySortedMap;-><init>(Ljava/util/SortedMap;Lorg/apache/commons/collections/Transformer;)V

    return-object p2
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 4

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/LazySortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    new-instance v0, Lorg/apache/commons/collections/map/LazySortedMap;

    iget-object v1, p0, Lorg/apache/commons/collections/map/LazySortedMap;->factory:Lorg/apache/commons/collections/Transformer;

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/collections/map/LazySortedMap;-><init>(Ljava/util/SortedMap;Lorg/apache/commons/collections/Transformer;)V

    return-object v0
.end method
