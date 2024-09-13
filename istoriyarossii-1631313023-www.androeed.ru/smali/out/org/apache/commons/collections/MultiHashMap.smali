.class public Lorg/apache/commons/collections/MultiHashMap;
.super Ljava/util/HashMap;
.source "MultiHashMap.java"

# interfaces
.implements Lorg/apache/commons/collections/MultiMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/MultiHashMap$ValueIterator;,
        Lorg/apache/commons/collections/MultiHashMap$Values;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1af8ed01208a04d5L


# instance fields
.field private transient values:Ljava/util/Collection;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/MultiHashMap;->values:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/util/HashMap;-><init>(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/commons/collections/MultiHashMap;->values:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>(IF)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/util/HashMap;-><init>(IF)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/commons/collections/MultiHashMap;->values:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 4

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3fb33333    # 1.4f

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-direct {p0, v0}, Ljava/util/HashMap;-><init>(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/MultiHashMap;->values:Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/MultiHashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const-string v0, "1.2"

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    :try_start_5
    const-string p1, "java.version"

    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_b} :catch_c

    goto :goto_d

    :catch_c
    move-object p1, v0

    :goto_d
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "1.3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_45

    :cond_1b
    invoke-virtual {p0}, Lorg/apache/commons/collections/MultiHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_23
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_23

    :cond_45
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    invoke-super {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    goto :goto_8

    :cond_1e
    invoke-super {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 5

    invoke-super {p0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/MultiHashMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/MultiHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {p0, v3}, Lorg/apache/commons/collections/MultiHashMap;->createCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_28
    return-object v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 5

    invoke-super {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 p1, 0x1

    return p1

    :cond_26
    return v1
.end method

.method public containsValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/MultiHashMap;->getCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    invoke-interface {p1, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected createCollection(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 3

    if-nez p1, :cond_8

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getCollection(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 2

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/MultiHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method public iterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/MultiHashMap;->getCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    if-nez p1, :cond_9

    sget-object p1, Lorg/apache/commons/collections/iterators/EmptyIterator;->INSTANCE:Ljava/util/Iterator;

    return-object p1

    :cond_9
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/MultiHashMap;->getCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/MultiHashMap;->createCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-super {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    goto :goto_16

    :cond_15
    move-object p2, v1

    :goto_16
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

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/collections/MultiHashMap;->putAll(Ljava/lang/Object;Ljava/util/Collection;)Z

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

    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/collections/MultiHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e

    :cond_46
    return-void
.end method

.method public putAll(Ljava/lang/Object;Ljava/util/Collection;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p2, :cond_25

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_25

    :cond_a
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/MultiHashMap;->getCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    if-nez v1, :cond_20

    invoke-virtual {p0, p2}, Lorg/apache/commons/collections/MultiHashMap;->createCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_1b

    return v0

    :cond_1b
    invoke-super {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_20
    invoke-interface {v1, p2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    :cond_25
    :goto_25
    return v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/MultiHashMap;->getCollection(Ljava/lang/Object;)Ljava/util/Collection;

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

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/MultiHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    return-object p2
.end method

.method public size(Ljava/lang/Object;)I
    .registers 2

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/MultiHashMap;->getCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    return p1
.end method

.method superValuesIterator()Ljava/util/Iterator;
    .registers 2

    invoke-super {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public totalSize()I
    .registers 4

    invoke-super {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_9

    :cond_1b
    return v1
.end method

.method public values()Ljava/util/Collection;
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/MultiHashMap;->values:Ljava/util/Collection;

    if-eqz v0, :cond_5

    goto :goto_d

    :cond_5
    new-instance v0, Lorg/apache/commons/collections/MultiHashMap$Values;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/MultiHashMap$Values;-><init>(Lorg/apache/commons/collections/MultiHashMap;Lorg/apache/commons/collections/MultiHashMap$1;)V

    iput-object v0, p0, Lorg/apache/commons/collections/MultiHashMap;->values:Ljava/util/Collection;

    :goto_d
    return-object v0
.end method
