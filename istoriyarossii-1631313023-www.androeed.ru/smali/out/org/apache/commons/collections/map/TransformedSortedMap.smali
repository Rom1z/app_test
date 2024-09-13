.class public Lorg/apache/commons/collections/map/TransformedSortedMap;
.super Lorg/apache/commons/collections/map/TransformedMap;
.source "TransformedSortedMap.java"

# interfaces
.implements Ljava/util/SortedMap;


# static fields
.field private static final serialVersionUID:J = -0x797489f887c41572L


# direct methods
.method protected constructor <init>(Ljava/util/SortedMap;Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/collections/map/TransformedMap;-><init>(Ljava/util/Map;Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)V

    return-void
.end method

.method public static decorate(Ljava/util/SortedMap;Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)Ljava/util/SortedMap;
    .registers 4

    new-instance v0, Lorg/apache/commons/collections/map/TransformedSortedMap;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections/map/TransformedSortedMap;-><init>(Ljava/util/SortedMap;Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)V

    return-object v0
.end method

.method public static decorateTransform(Ljava/util/SortedMap;Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)Ljava/util/SortedMap;
    .registers 4

    new-instance v0, Lorg/apache/commons/collections/map/TransformedSortedMap;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections/map/TransformedSortedMap;-><init>(Ljava/util/SortedMap;Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)V

    invoke-interface {p0}, Ljava/util/SortedMap;->size()I

    move-result p1

    if-lez p1, :cond_19

    invoke-virtual {v0, p0}, Lorg/apache/commons/collections/map/TransformedSortedMap;->transformMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/TransformedSortedMap;->clear()V

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/TransformedSortedMap;->getMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_19
    return-object v0
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/TransformedSortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/TransformedSortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getSortedMap()Ljava/util/SortedMap;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/map/TransformedSortedMap;->map:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 5

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/TransformedSortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    new-instance v0, Lorg/apache/commons/collections/map/TransformedSortedMap;

    iget-object v1, p0, Lorg/apache/commons/collections/map/TransformedSortedMap;->keyTransformer:Lorg/apache/commons/collections/Transformer;

    iget-object v2, p0, Lorg/apache/commons/collections/map/TransformedSortedMap;->valueTransformer:Lorg/apache/commons/collections/Transformer;

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/commons/collections/map/TransformedSortedMap;-><init>(Ljava/util/SortedMap;Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)V

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/TransformedSortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 5

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/TransformedSortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    new-instance p2, Lorg/apache/commons/collections/map/TransformedSortedMap;

    iget-object v0, p0, Lorg/apache/commons/collections/map/TransformedSortedMap;->keyTransformer:Lorg/apache/commons/collections/Transformer;

    iget-object v1, p0, Lorg/apache/commons/collections/map/TransformedSortedMap;->valueTransformer:Lorg/apache/commons/collections/Transformer;

    invoke-direct {p2, p1, v0, v1}, Lorg/apache/commons/collections/map/TransformedSortedMap;-><init>(Ljava/util/SortedMap;Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)V

    return-object p2
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 5

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/TransformedSortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    new-instance v0, Lorg/apache/commons/collections/map/TransformedSortedMap;

    iget-object v1, p0, Lorg/apache/commons/collections/map/TransformedSortedMap;->keyTransformer:Lorg/apache/commons/collections/Transformer;

    iget-object v2, p0, Lorg/apache/commons/collections/map/TransformedSortedMap;->valueTransformer:Lorg/apache/commons/collections/Transformer;

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/commons/collections/map/TransformedSortedMap;-><init>(Ljava/util/SortedMap;Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)V

    return-object v0
.end method
