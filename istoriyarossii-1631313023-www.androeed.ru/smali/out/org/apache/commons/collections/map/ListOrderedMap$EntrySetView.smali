.class Lorg/apache/commons/collections/map/ListOrderedMap$EntrySetView;
.super Ljava/util/AbstractSet;
.source "ListOrderedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/ListOrderedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EntrySetView"
.end annotation


# instance fields
.field private entrySet:Ljava/util/Set;

.field private final insertOrder:Ljava/util/List;

.field private final parent:Lorg/apache/commons/collections/map/ListOrderedMap;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/map/ListOrderedMap;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/map/ListOrderedMap$EntrySetView;->parent:Lorg/apache/commons/collections/map/ListOrderedMap;

    iput-object p2, p0, Lorg/apache/commons/collections/map/ListOrderedMap$EntrySetView;->insertOrder:Ljava/util/List;

    return-void
.end method

.method private getEntrySet()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$EntrySetView;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_10

    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$EntrySetView;->parent:Lorg/apache/commons/collections/map/ListOrderedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/ListOrderedMap;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$EntrySetView;->entrySet:Ljava/util/Set;

    :cond_10
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$EntrySetView;->entrySet:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$EntrySetView;->parent:Lorg/apache/commons/collections/map/ListOrderedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/ListOrderedMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    invoke-direct {p0}, Lorg/apache/commons/collections/map/ListOrderedMap$EntrySetView;->getEntrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3

    invoke-direct {p0}, Lorg/apache/commons/collections/map/ListOrderedMap$EntrySetView;->getEntrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p0, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    invoke-direct {p0}, Lorg/apache/commons/collections/map/ListOrderedMap$EntrySetView;->getEntrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 2

    invoke-direct {p0}, Lorg/apache/commons/collections/map/ListOrderedMap$EntrySetView;->getEntrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$EntrySetView;->parent:Lorg/apache/commons/collections/map/ListOrderedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/ListOrderedMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 4

    new-instance v0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedIterator;

    iget-object v1, p0, Lorg/apache/commons/collections/map/ListOrderedMap$EntrySetView;->parent:Lorg/apache/commons/collections/map/ListOrderedMap;

    iget-object v2, p0, Lorg/apache/commons/collections/map/ListOrderedMap$EntrySetView;->insertOrder:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedIterator;-><init>(Lorg/apache/commons/collections/map/ListOrderedMap;Ljava/util/List;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-direct {p0}, Lorg/apache/commons/collections/map/ListOrderedMap$EntrySetView;->getEntrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$EntrySetView;->parent:Lorg/apache/commons/collections/map/ListOrderedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/map/ListOrderedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_1d
    return v1
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$EntrySetView;->parent:Lorg/apache/commons/collections/map/ListOrderedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/ListOrderedMap;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lorg/apache/commons/collections/map/ListOrderedMap$EntrySetView;->getEntrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
