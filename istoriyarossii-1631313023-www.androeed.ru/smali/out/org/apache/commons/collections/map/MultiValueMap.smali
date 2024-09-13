.class public Lorg/apache/commons/collections/map/MultiValueMap;
.super Lorg/apache/commons/collections/map/AbstractMapDecorator;
.source "MultiValueMap.java"

# interfaces
.implements Lorg/apache/commons/collections/MultiMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/map/MultiValueMap$ReflectionFactory;,
        Lorg/apache/commons/collections/map/MultiValueMap$ValuesIterator;,
        Lorg/apache/commons/collections/map/MultiValueMap$Values;
    }
.end annotation


# static fields
.field static synthetic class$java$util$ArrayList:Ljava/lang/Class;


# instance fields
.field private final collectionFactory:Lorg/apache/commons/collections/Factory;

.field private transient values:Ljava/util/Collection;


# direct methods
.method public constructor <init>()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lorg/apache/commons/collections/map/MultiValueMap$ReflectionFactory;

    sget-object v2, Lorg/apache/commons/collections/map/MultiValueMap;->class$java$util$ArrayList:Ljava/lang/Class;

    if-nez v2, :cond_13

    const-string v2, "java.util.ArrayList"

    invoke-static {v2}, Lorg/apache/commons/collections/map/MultiValueMap;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/collections/map/MultiValueMap;->class$java$util$ArrayList:Ljava/lang/Class;

    :cond_13
    invoke-direct {v1, v2}, Lorg/apache/commons/collections/map/MultiValueMap$ReflectionFactory;-><init>(Ljava/lang/Class;)V

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/map/MultiValueMap;-><init>(Ljava/util/Map;Lorg/apache/commons/collections/Factory;)V

    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;Lorg/apache/commons/collections/Factory;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/AbstractMapDecorator;-><init>(Ljava/util/Map;)V

    if-eqz p2, :cond_8

    iput-object p2, p0, Lorg/apache/commons/collections/map/MultiValueMap;->collectionFactory:Lorg/apache/commons/collections/Factory;

    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The factory must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static decorate(Ljava/util/Map;)Lorg/apache/commons/collections/map/MultiValueMap;
    .registers 4

    new-instance v0, Lorg/apache/commons/collections/map/MultiValueMap;

    new-instance v1, Lorg/apache/commons/collections/map/MultiValueMap$ReflectionFactory;

    sget-object v2, Lorg/apache/commons/collections/map/MultiValueMap;->class$java$util$ArrayList:Ljava/lang/Class;

    if-nez v2, :cond_10

    const-string v2, "java.util.ArrayList"

    invoke-static {v2}, Lorg/apache/commons/collections/map/MultiValueMap;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/collections/map/MultiValueMap;->class$java$util$ArrayList:Ljava/lang/Class;

    :cond_10
    invoke-direct {v1, v2}, Lorg/apache/commons/collections/map/MultiValueMap$ReflectionFactory;-><init>(Ljava/lang/Class;)V

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/map/MultiValueMap;-><init>(Ljava/util/Map;Lorg/apache/commons/collections/Factory;)V

    return-object v0
.end method

.method public static decorate(Ljava/util/Map;Ljava/lang/Class;)Lorg/apache/commons/collections/map/MultiValueMap;
    .registers 4

    new-instance v0, Lorg/apache/commons/collections/map/MultiValueMap;

    new-instance v1, Lorg/apache/commons/collections/map/MultiValueMap$ReflectionFactory;

    invoke-direct {v1, p1}, Lorg/apache/commons/collections/map/MultiValueMap$ReflectionFactory;-><init>(Ljava/lang/Class;)V

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/map/MultiValueMap;-><init>(Ljava/util/Map;Lorg/apache/commons/collections/Factory;)V

    return-object v0
.end method

.method public static decorate(Ljava/util/Map;Lorg/apache/commons/collections/Factory;)Lorg/apache/commons/collections/map/MultiValueMap;
    .registers 3

    new-instance v0, Lorg/apache/commons/collections/map/MultiValueMap;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/map/MultiValueMap;-><init>(Ljava/util/Map;Lorg/apache/commons/collections/Factory;)V

    return-object v0
.end method


# virtual methods
.method public clear()V
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/MultiValueMap;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 5

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/MultiValueMap;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    :cond_c
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_2a
    return v1
.end method

.method public containsValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/MultiValueMap;->getCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    invoke-interface {p1, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected createCollection(I)Ljava/util/Collection;
    .registers 2

    iget-object p1, p0, Lorg/apache/commons/collections/map/MultiValueMap;->collectionFactory:Lorg/apache/commons/collections/Factory;

    invoke-interface {p1}, Lorg/apache/commons/collections/Factory;->create()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method public getCollection(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/MultiValueMap;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method public iterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/MultiValueMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object p1, Lorg/apache/commons/collections/iterators/EmptyIterator;->INSTANCE:Ljava/util/Iterator;

    return-object p1

    :cond_9
    new-instance v0, Lorg/apache/commons/collections/map/MultiValueMap$ValuesIterator;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/map/MultiValueMap$ValuesIterator;-><init>(Lorg/apache/commons/collections/map/MultiValueMap;Ljava/lang/Object;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/MultiValueMap;->getCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_1f

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/map/MultiValueMap;->createCollection(I)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    if-lez v3, :cond_1d

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/MultiValueMap;->getMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_23

    :cond_1d
    move v1, v2

    goto :goto_23

    :cond_1f
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    :goto_23
    if-eqz v1, :cond_26

    goto :goto_27

    :cond_26
    const/4 p2, 0x0

    :goto_27
    return-object p2
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 4

    instance-of v0, p1, Lorg/apache/commons/collections/MultiMap;

    if-eqz v0, :cond_26

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/collections/map/MultiValueMap;->putAll(Ljava/lang/Object;Ljava/util/Collection;)Z

    goto :goto_c

    :cond_26
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/collections/map/MultiValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e

    :cond_46
    return-void
.end method

.method public putAll(Ljava/lang/Object;Ljava/util/Collection;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p2, :cond_2e

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_2e

    :cond_a
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/MultiValueMap;->getCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    if-nez v1, :cond_2a

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/map/MultiValueMap;->createCollection(I)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result p2

    if-lez p2, :cond_2e

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/MultiValueMap;->getMap()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_2e

    :cond_2a
    invoke-interface {v1, p2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v0

    :cond_2e
    :goto_2e
    return v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/MultiValueMap;->getCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    invoke-interface {v0, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    return-object v1

    :cond_f
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/MultiValueMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    return-object p2
.end method

.method public size(Ljava/lang/Object;)I
    .registers 2

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/MultiValueMap;->getCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    return p1
.end method

.method public totalSize()I
    .registers 4

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/MultiValueMap;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_d

    :cond_1f
    return v1
.end method

.method public values()Ljava/util/Collection;
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiValueMap;->values:Ljava/util/Collection;

    if-eqz v0, :cond_5

    goto :goto_d

    :cond_5
    new-instance v0, Lorg/apache/commons/collections/map/MultiValueMap$Values;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/map/MultiValueMap$Values;-><init>(Lorg/apache/commons/collections/map/MultiValueMap;Lorg/apache/commons/collections/map/MultiValueMap$1;)V

    iput-object v0, p0, Lorg/apache/commons/collections/map/MultiValueMap;->values:Ljava/util/Collection;

    :goto_d
    return-object v0
.end method
