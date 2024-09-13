.class public Lorg/apache/commons/collections/map/ListOrderedMap;
.super Lorg/apache/commons/collections/map/AbstractMapDecorator;
.source "ListOrderedMap.java"

# interfaces
.implements Lorg/apache/commons/collections/OrderedMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;,
        Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapEntry;,
        Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedIterator;,
        Lorg/apache/commons/collections/map/ListOrderedMap$EntrySetView;,
        Lorg/apache/commons/collections/map/ListOrderedMap$KeySetView;,
        Lorg/apache/commons/collections/map/ListOrderedMap$ValuesView;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x25dc6f35f733ef66L


# instance fields
.field protected final insertOrder:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/map/ListOrderedMap;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/AbstractMapDecorator;-><init>(Ljava/util/Map;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/ListOrderedMap;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static decorate(Ljava/util/Map;)Lorg/apache/commons/collections/OrderedMap;
    .registers 2

    new-instance v0, Lorg/apache/commons/collections/map/ListOrderedMap;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/ListOrderedMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lorg/apache/commons/collections/map/ListOrderedMap;->map:Ljava/util/Map;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap;->map:Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public asList()Ljava/util/List;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/ListOrderedMap;->keyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/ListOrderedMap;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public entrySet()Ljava/util/Set;
    .registers 3

    new-instance v0, Lorg/apache/commons/collections/map/ListOrderedMap$EntrySetView;

    iget-object v1, p0, Lorg/apache/commons/collections/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/map/ListOrderedMap$EntrySetView;-><init>(Lorg/apache/commons/collections/map/ListOrderedMap;Ljava/util/List;)V

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/ListOrderedMap;->size()I

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_e
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Map is empty"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getValue(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/ListOrderedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public keyList()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-static {v0}, Lorg/apache/commons/collections/list/UnmodifiableList;->decorate(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2

    new-instance v0, Lorg/apache/commons/collections/map/ListOrderedMap$KeySetView;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/ListOrderedMap$KeySetView;-><init>(Lorg/apache/commons/collections/map/ListOrderedMap;)V

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/ListOrderedMap;->size()I

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/ListOrderedMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_13
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Map is empty"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public mapIterator()Lorg/apache/commons/collections/MapIterator;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/ListOrderedMap;->orderedMapIterator()Lorg/apache/commons/collections/OrderedMapIterator;

    move-result-object v0

    return-object v0
.end method

.method public nextKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_19

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/ListOrderedMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_19

    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    add-int/lit8 p1, p1, 0x1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_19
    const/4 p1, 0x0

    return-object p1
.end method

.method public orderedMapIterator()Lorg/apache/commons/collections/OrderedMapIterator;
    .registers 2

    new-instance v0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;-><init>(Lorg/apache/commons/collections/map/ListOrderedMap;)V

    return-object v0
.end method

.method public previousKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-lez p1, :cond_11

    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_11
    const/4 p1, 0x0

    return-object p1
.end method

.method public put(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/ListOrderedMap;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/collections/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, p0, Lorg/apache/commons/collections/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    if-ge v2, p1, :cond_1d

    add-int/lit8 p1, p1, -0x1

    :cond_1d
    iget-object v2, p0, Lorg/apache/commons/collections/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-interface {v2, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_26
    iget-object v1, p0, Lorg/apache/commons/collections/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/ListOrderedMap;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/ListOrderedMap;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_13
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/ListOrderedMap;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p2
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 4

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/collections/map/ListOrderedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_20
    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/ListOrderedMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/ListOrderedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/ListOrderedMap;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public setValue(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections/map/ListOrderedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/ListOrderedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "{}"

    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/ListOrderedMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v1, :cond_34

    const/4 v1, 0x0

    goto :goto_39

    :cond_34
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_39
    const-string v5, "(this Map)"

    if-ne v4, p0, :cond_3e

    move-object v4, v5

    :cond_3e
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-ne v3, p0, :cond_49

    move-object v3, v5

    :cond_49
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_1c

    :cond_4d
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public valueList()Ljava/util/List;
    .registers 2

    new-instance v0, Lorg/apache/commons/collections/map/ListOrderedMap$ValuesView;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/ListOrderedMap$ValuesView;-><init>(Lorg/apache/commons/collections/map/ListOrderedMap;)V

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .registers 2

    new-instance v0, Lorg/apache/commons/collections/map/ListOrderedMap$ValuesView;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/ListOrderedMap$ValuesView;-><init>(Lorg/apache/commons/collections/map/ListOrderedMap;)V

    return-object v0
.end method
