.class public Lorg/apache/commons/collections/map/PredicatedSortedMap;
.super Lorg/apache/commons/collections/map/PredicatedMap;
.source "PredicatedSortedMap.java"

# interfaces
.implements Ljava/util/SortedMap;


# static fields
.field private static final serialVersionUID:J = 0x2ea0924bb894128cL


# direct methods
.method protected constructor <init>(Ljava/util/SortedMap;Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Predicate;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/collections/map/PredicatedMap;-><init>(Ljava/util/Map;Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Predicate;)V

    return-void
.end method

.method public static decorate(Ljava/util/SortedMap;Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Predicate;)Ljava/util/SortedMap;
    .registers 4

    new-instance v0, Lorg/apache/commons/collections/map/PredicatedSortedMap;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections/map/PredicatedSortedMap;-><init>(Ljava/util/SortedMap;Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Predicate;)V

    return-object v0
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/PredicatedSortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/PredicatedSortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getSortedMap()Ljava/util/SortedMap;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/map/PredicatedSortedMap;->map:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 5

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/PredicatedSortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    new-instance v0, Lorg/apache/commons/collections/map/PredicatedSortedMap;

    iget-object v1, p0, Lorg/apache/commons/collections/map/PredicatedSortedMap;->keyPredicate:Lorg/apache/commons/collections/Predicate;

    iget-object v2, p0, Lorg/apache/commons/collections/map/PredicatedSortedMap;->valuePredicate:Lorg/apache/commons/collections/Predicate;

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/commons/collections/map/PredicatedSortedMap;-><init>(Ljava/util/SortedMap;Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Predicate;)V

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/PredicatedSortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 5

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/PredicatedSortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    new-instance p2, Lorg/apache/commons/collections/map/PredicatedSortedMap;

    iget-object v0, p0, Lorg/apache/commons/collections/map/PredicatedSortedMap;->keyPredicate:Lorg/apache/commons/collections/Predicate;

    iget-object v1, p0, Lorg/apache/commons/collections/map/PredicatedSortedMap;->valuePredicate:Lorg/apache/commons/collections/Predicate;

    invoke-direct {p2, p1, v0, v1}, Lorg/apache/commons/collections/map/PredicatedSortedMap;-><init>(Ljava/util/SortedMap;Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Predicate;)V

    return-object p2
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 5

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/PredicatedSortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    new-instance v0, Lorg/apache/commons/collections/map/PredicatedSortedMap;

    iget-object v1, p0, Lorg/apache/commons/collections/map/PredicatedSortedMap;->keyPredicate:Lorg/apache/commons/collections/Predicate;

    iget-object v2, p0, Lorg/apache/commons/collections/map/PredicatedSortedMap;->valuePredicate:Lorg/apache/commons/collections/Predicate;

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/commons/collections/map/PredicatedSortedMap;-><init>(Ljava/util/SortedMap;Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Predicate;)V

    return-object v0
.end method
