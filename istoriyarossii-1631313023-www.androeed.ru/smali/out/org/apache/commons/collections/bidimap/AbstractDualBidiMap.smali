.class public abstract Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;
.super Ljava/lang/Object;
.source "AbstractDualBidiMap.java"

# interfaces
.implements Lorg/apache/commons/collections/BidiMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;,
        Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$MapEntry;,
        Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$EntrySetIterator;,
        Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$EntrySet;,
        Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$ValuesIterator;,
        Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$Values;,
        Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$KeySetIterator;,
        Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$KeySet;,
        Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$View;
    }
.end annotation


# instance fields
.field protected transient entrySet:Ljava/util/Set;

.field protected transient inverseBidiMap:Lorg/apache/commons/collections/BidiMap;

.field protected transient keySet:Ljava/util/Set;

.field protected final transient maps:[Ljava/util/Map;

.field protected transient values:Ljava/util/Collection;


# direct methods
.method protected constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Map;

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->inverseBidiMap:Lorg/apache/commons/collections/BidiMap;

    iput-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->keySet:Ljava/util/Set;

    iput-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->values:Ljava/util/Collection;

    iput-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->entrySet:Ljava/util/Set;

    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->createMap()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->createMap()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;Ljava/util/Map;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Map;

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->inverseBidiMap:Lorg/apache/commons/collections/BidiMap;

    iput-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->keySet:Ljava/util/Set;

    iput-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->values:Ljava/util/Collection;

    iput-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->entrySet:Ljava/util/Set;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;Ljava/util/Map;Lorg/apache/commons/collections/BidiMap;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Map;

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->inverseBidiMap:Lorg/apache/commons/collections/BidiMap;

    iput-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->keySet:Ljava/util/Set;

    iput-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->values:Ljava/util/Collection;

    iput-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->entrySet:Ljava/util/Set;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    iput-object p3, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->inverseBidiMap:Lorg/apache/commons/collections/BidiMap;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected abstract createBidiMap(Ljava/util/Map;Ljava/util/Map;Lorg/apache/commons/collections/BidiMap;)Lorg/apache/commons/collections/BidiMap;
.end method

.method protected createEntrySetIterator(Ljava/util/Iterator;)Ljava/util/Iterator;
    .registers 3

    new-instance v0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$EntrySetIterator;

    invoke-direct {v0, p1, p0}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$EntrySetIterator;-><init>(Ljava/util/Iterator;Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;)V

    return-object v0
.end method

.method protected createKeySetIterator(Ljava/util/Iterator;)Ljava/util/Iterator;
    .registers 3

    new-instance v0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$KeySetIterator;

    invoke-direct {v0, p1, p0}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$KeySetIterator;-><init>(Ljava/util/Iterator;Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;)V

    return-object v0
.end method

.method protected createMap()Ljava/util/Map;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected createValuesIterator(Ljava/util/Iterator;)Ljava/util/Iterator;
    .registers 3

    new-instance v0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$ValuesIterator;

    invoke-direct {v0, p1, p0}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$ValuesIterator;-><init>(Ljava/util/Iterator;Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;)V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_b

    new-instance v0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$EntrySet;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$EntrySet;-><init>(Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->entrySet:Ljava/util/Set;

    :cond_b
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->entrySet:Ljava/util/Set;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public inverseBidiMap()Lorg/apache/commons/collections/BidiMap;
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->inverseBidiMap:Lorg/apache/commons/collections/BidiMap;

    if-nez v0, :cond_12

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {p0, v1, v0, p0}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->createBidiMap(Ljava/util/Map;Ljava/util/Map;Lorg/apache/commons/collections/BidiMap;)Lorg/apache/commons/collections/BidiMap;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->inverseBidiMap:Lorg/apache/commons/collections/BidiMap;

    :cond_12
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->inverseBidiMap:Lorg/apache/commons/collections/BidiMap;

    return-object v0
.end method

.method public isEmpty()Z
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->keySet:Ljava/util/Set;

    if-nez v0, :cond_b

    new-instance v0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$KeySet;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$KeySet;-><init>(Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->keySet:Ljava/util/Set;

    :cond_b
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->keySet:Ljava/util/Set;

    return-object v0
.end method

.method public mapIterator()Lorg/apache/commons/collections/MapIterator;
    .registers 2

    new-instance v0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;-><init>(Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_19

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    aget-object v3, v0, v2

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    aget-object v0, v0, v2

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    aget-object v3, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_30
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    aget-object v0, v0, v1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    aget-object v1, v1, v2

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
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

    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_20
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    :goto_1d
    return-object p1
.end method

.method public removeValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    :goto_1d
    return-object p1
.end method

.method public size()I
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->values:Ljava/util/Collection;

    if-nez v0, :cond_b

    new-instance v0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$Values;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$Values;-><init>(Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->values:Ljava/util/Collection;

    :cond_b
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->values:Ljava/util/Collection;

    return-object v0
.end method
