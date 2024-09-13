.class public final Lorg/apache/commons/collections/map/UnmodifiableMap;
.super Lorg/apache/commons/collections/map/AbstractMapDecorator;
.source "UnmodifiableMap.java"

# interfaces
.implements Lorg/apache/commons/collections/IterableMap;
.implements Lorg/apache/commons/collections/Unmodifiable;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x25fbdc4e444af805L


# direct methods
.method private constructor <init>(Ljava/util/Map;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/AbstractMapDecorator;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public static decorate(Ljava/util/Map;)Ljava/util/Map;
    .registers 2

    instance-of v0, p0, Lorg/apache/commons/collections/Unmodifiable;

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    new-instance v0, Lorg/apache/commons/collections/map/UnmodifiableMap;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/UnmodifiableMap;-><init>(Ljava/util/Map;)V

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

    iput-object p1, p0, Lorg/apache/commons/collections/map/UnmodifiableMap;->map:Ljava/util/Map;

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

    iget-object v0, p0, Lorg/apache/commons/collections/map/UnmodifiableMap;->map:Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
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

    invoke-super {p0}, Lorg/apache/commons/collections/map/AbstractMapDecorator;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections/map/UnmodifiableEntrySet;->decorate(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2

    invoke-super {p0}, Lorg/apache/commons/collections/map/AbstractMapDecorator;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections/set/UnmodifiableSet;->decorate(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public mapIterator()Lorg/apache/commons/collections/MapIterator;
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/map/UnmodifiableMap;->map:Ljava/util/Map;

    instance-of v0, v0, Lorg/apache/commons/collections/IterableMap;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lorg/apache/commons/collections/map/UnmodifiableMap;->map:Ljava/util/Map;

    check-cast v0, Lorg/apache/commons/collections/IterableMap;

    invoke-interface {v0}, Lorg/apache/commons/collections/IterableMap;->mapIterator()Lorg/apache/commons/collections/MapIterator;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections/iterators/UnmodifiableMapIterator;->decorate(Lorg/apache/commons/collections/MapIterator;)Lorg/apache/commons/collections/MapIterator;

    move-result-object v0

    return-object v0

    :cond_13
    new-instance v0, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;

    iget-object v1, p0, Lorg/apache/commons/collections/map/UnmodifiableMap;->map:Ljava/util/Map;

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Lorg/apache/commons/collections/iterators/UnmodifiableMapIterator;->decorate(Lorg/apache/commons/collections/MapIterator;)Lorg/apache/commons/collections/MapIterator;

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

.method public values()Ljava/util/Collection;
    .registers 2

    invoke-super {p0}, Lorg/apache/commons/collections/map/AbstractMapDecorator;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections/collection/UnmodifiableCollection;->decorate(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
