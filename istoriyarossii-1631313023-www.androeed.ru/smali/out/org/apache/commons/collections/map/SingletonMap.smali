.class public Lorg/apache/commons/collections/map/SingletonMap;
.super Ljava/lang/Object;
.source "SingletonMap.java"

# interfaces
.implements Lorg/apache/commons/collections/OrderedMap;
.implements Lorg/apache/commons/collections/BoundedMap;
.implements Lorg/apache/commons/collections/KeyValue;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/map/SingletonMap$SingletonValues;,
        Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7bf23fc3356fbebdL


# instance fields
.field private final key:Ljava/lang/Object;

.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/map/SingletonMap;->key:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/map/SingletonMap;->key:Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/commons/collections/map/SingletonMap;->value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map$Entry;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/map/SingletonMap;->key:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections/map/SingletonMap;->value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_25

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/map/SingletonMap;->key:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections/map/SingletonMap;->value:Ljava/lang/Object;

    return-void

    :cond_25
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The map size must be 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/apache/commons/collections/KeyValue;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/apache/commons/collections/KeyValue;->getKey()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/map/SingletonMap;->key:Ljava/lang/Object;

    invoke-interface {p1}, Lorg/apache/commons/collections/KeyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections/map/SingletonMap;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clone()Ljava/lang/Object;
    .registers 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/map/SingletonMap;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/SingletonMap;->isEqualKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/SingletonMap;->isEqualValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .registers 3

    new-instance v0, Lorg/apache/commons/collections/keyvalue/TiedMapEntry;

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/SingletonMap;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/keyvalue/TiedMapEntry;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Ljava/util/Map;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-eq v1, v0, :cond_13

    return v2

    :cond_13
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/map/SingletonMap;->isEqualKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/SingletonMap;->isEqualValue(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_36

    goto :goto_37

    :cond_36
    const/4 v0, 0x0

    :goto_37
    return v0
.end method

.method public firstKey()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/SingletonMap;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/SingletonMap;->isEqualKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lorg/apache/commons/collections/map/SingletonMap;->value:Ljava/lang/Object;

    return-object p1

    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method

.method public getKey()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/map/SingletonMap;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/map/SingletonMap;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/SingletonMap;->getKey()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_11

    :cond_9
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/SingletonMap;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_11
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/SingletonMap;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_18

    goto :goto_20

    :cond_18
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/SingletonMap;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_20
    xor-int/2addr v0, v1

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected isEqualKey(Ljava/lang/Object;)Z
    .registers 3

    if-nez p1, :cond_c

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/SingletonMap;->getKey()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_a

    const/4 p1, 0x1

    goto :goto_14

    :cond_a
    const/4 p1, 0x0

    goto :goto_14

    :cond_c
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/SingletonMap;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    :goto_14
    return p1
.end method

.method protected isEqualValue(Ljava/lang/Object;)Z
    .registers 3

    if-nez p1, :cond_c

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/SingletonMap;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_a

    const/4 p1, 0x1

    goto :goto_14

    :cond_a
    const/4 p1, 0x0

    goto :goto_14

    :cond_c
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/SingletonMap;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    :goto_14
    return p1
.end method

.method public isFull()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/map/SingletonMap;->key:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/SingletonMap;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public mapIterator()Lorg/apache/commons/collections/MapIterator;
    .registers 2

    new-instance v0, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;-><init>(Lorg/apache/commons/collections/map/SingletonMap;)V

    return-object v0
.end method

.method public maxSize()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public nextKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public orderedMapIterator()Lorg/apache/commons/collections/OrderedMapIterator;
    .registers 2

    new-instance v0, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;-><init>(Lorg/apache/commons/collections/map/SingletonMap;)V

    return-object v0
.end method

.method public previousKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/SingletonMap;->isEqualKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p0, p2}, Lorg/apache/commons/collections/map/SingletonMap;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot put new key/value pair - Map is fixed size singleton"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 4

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v1, 0x1

    if-ne v0, v1, :cond_23

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/collections/map/SingletonMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_23
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The map size must be 0 or 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2b
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/map/SingletonMap;->value:Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/commons/collections/map/SingletonMap;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public size()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/SingletonMap;->getKey()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "(this Map)"

    if-ne v1, p0, :cond_16

    move-object v1, v2

    goto :goto_1a

    :cond_16
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/SingletonMap;->getKey()Ljava/lang/Object;

    move-result-object v1

    :goto_1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/SingletonMap;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p0, :cond_29

    goto :goto_2d

    :cond_29
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/SingletonMap;->getValue()Ljava/lang/Object;

    move-result-object v2

    :goto_2d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .registers 2

    new-instance v0, Lorg/apache/commons/collections/map/SingletonMap$SingletonValues;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/SingletonMap$SingletonValues;-><init>(Lorg/apache/commons/collections/map/SingletonMap;)V

    return-object v0
.end method
