.class public Lorg/apache/commons/collections/map/CompositeMap;
.super Ljava/lang/Object;
.source "CompositeMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/map/CompositeMap$MapMutator;
    }
.end annotation


# instance fields
.field private composite:[Ljava/util/Map;

.field private mutator:Lorg/apache/commons/collections/map/CompositeMap$MapMutator;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/Map;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/map/CompositeMap;-><init>([Ljava/util/Map;Lorg/apache/commons/collections/map/CompositeMap$MapMutator;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;)V
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Map;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/collections/map/CompositeMap;-><init>([Ljava/util/Map;Lorg/apache/commons/collections/map/CompositeMap$MapMutator;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;Lorg/apache/commons/collections/map/CompositeMap$MapMutator;)V
    .registers 6

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Map;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    invoke-direct {p0, v0, p3}, Lorg/apache/commons/collections/map/CompositeMap;-><init>([Ljava/util/Map;Lorg/apache/commons/collections/map/CompositeMap$MapMutator;)V

    return-void
.end method

.method public constructor <init>([Ljava/util/Map;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/map/CompositeMap;-><init>([Ljava/util/Map;Lorg/apache/commons/collections/map/CompositeMap$MapMutator;)V

    return-void
.end method

.method public constructor <init>([Ljava/util/Map;Lorg/apache/commons/collections/map/CompositeMap$MapMutator;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/commons/collections/map/CompositeMap;->mutator:Lorg/apache/commons/collections/map/CompositeMap$MapMutator;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/util/Map;

    iput-object p2, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    :goto_d
    if-ltz p2, :cond_17

    aget-object v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/map/CompositeMap;->addComposited(Ljava/util/Map;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_d

    :cond_17
    return-void
.end method


# virtual methods
.method public declared-synchronized addComposited(Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_35

    iget-object v1, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v1, v1, v0

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/commons/collections/CollectionUtils;->intersection(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    if-eqz v2, :cond_32

    iget-object v2, p0, Lorg/apache/commons/collections/map/CompositeMap;->mutator:Lorg/apache/commons/collections/map/CompositeMap$MapMutator;

    if-eqz v2, :cond_2a

    iget-object v3, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v3, v3, v0

    invoke-interface {v2, p0, v3, p1, v1}, Lorg/apache/commons/collections/map/CompositeMap$MapMutator;->resolveCollision(Lorg/apache/commons/collections/map/CompositeMap;Ljava/util/Map;Ljava/util/Map;Ljava/util/Collection;)V

    goto :goto_32

    :cond_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Key collision adding Map to CompositeMap"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_32
    :goto_32
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_35
    iget-object v0, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v2, v1, [Ljava/util/Map;

    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v2, v1

    iput-object v2, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;
    :try_end_47
    .catchall {:try_start_1 .. :try_end_47} :catchall_49

    monitor-exit p0

    return-void

    :catchall_49
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public clear()V
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_5
    if-ltz v0, :cond_11

    iget-object v1, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v1, v1, v0

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_11
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 5

    iget-object v0, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_5
    if-ltz v0, :cond_15

    iget-object v2, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    return v1

    :cond_12
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_15
    const/4 p1, 0x0

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 5

    iget-object v0, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_5
    if-ltz v0, :cond_15

    iget-object v2, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    return v1

    :cond_12
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_15
    const/4 p1, 0x0

    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .registers 4

    new-instance v0, Lorg/apache/commons/collections/set/CompositeSet;

    invoke-direct {v0}, Lorg/apache/commons/collections/set/CompositeSet;-><init>()V

    iget-object v1, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_a
    if-ltz v1, :cond_1a

    iget-object v2, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v2, v2, v1

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections/set/CompositeSet;->addComposited(Ljava/util/Collection;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    :cond_1a
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_13

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/CompositeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_13
    const/4 p1, 0x0

    return p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_5
    if-ltz v0, :cond_1d

    iget-object v1, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v0, v1, v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1a
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_1d
    const/4 p1, 0x0

    return-object p1
.end method

.method public hashCode()I
    .registers 4

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/CompositeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_9

    :cond_19
    return v1
.end method

.method public isEmpty()Z
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_5
    if-ltz v0, :cond_16

    iget-object v2, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v2, v2, v0

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_13

    const/4 v0, 0x0

    return v0

    :cond_13
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_16
    return v1
.end method

.method public keySet()Ljava/util/Set;
    .registers 4

    new-instance v0, Lorg/apache/commons/collections/set/CompositeSet;

    invoke-direct {v0}, Lorg/apache/commons/collections/set/CompositeSet;-><init>()V

    iget-object v1, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_a
    if-ltz v1, :cond_1a

    iget-object v2, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v2, v2, v1

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections/set/CompositeSet;->addComposited(Ljava/util/Collection;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    :cond_1a
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lorg/apache/commons/collections/map/CompositeMap;->mutator:Lorg/apache/commons/collections/map/CompositeMap$MapMutator;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    invoke-interface {v0, p0, v1, p1, p2}, Lorg/apache/commons/collections/map/CompositeMap$MapMutator;->put(Lorg/apache/commons/collections/map/CompositeMap;[Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_b
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "No mutator specified"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/map/CompositeMap;->mutator:Lorg/apache/commons/collections/map/CompositeMap$MapMutator;

    if-eqz v0, :cond_a

    iget-object v1, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    invoke-interface {v0, p0, v1, p1}, Lorg/apache/commons/collections/map/CompositeMap$MapMutator;->putAll(Lorg/apache/commons/collections/map/CompositeMap;[Ljava/util/Map;Ljava/util/Map;)V

    return-void

    :cond_a
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "No mutator specified"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_5
    if-ltz v0, :cond_1d

    iget-object v1, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v0, v1, v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1a
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_1d
    const/4 p1, 0x0

    return-object p1
.end method

.method public declared-synchronized removeComposited(Ljava/util/Map;)Ljava/util/Map;
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_2c

    iget-object v3, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v3, v3, v2

    invoke-interface {v3, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    add-int/lit8 v3, v0, -0x1

    new-array v3, v3, [Ljava/util/Map;

    iget-object v4, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    add-int/lit8 v4, v2, 0x1

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v4, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_2f

    monitor-exit p0

    return-object p1

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_2c
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :catchall_2f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setMutator(Lorg/apache/commons/collections/map/CompositeMap$MapMutator;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/commons/collections/map/CompositeMap;->mutator:Lorg/apache/commons/collections/map/CompositeMap$MapMutator;

    return-void
.end method

.method public size()I
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_6
    if-ltz v0, :cond_14

    iget-object v2, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v2, v2, v0

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_14
    return v1
.end method

.method public values()Ljava/util/Collection;
    .registers 4

    new-instance v0, Lorg/apache/commons/collections/collection/CompositeCollection;

    invoke-direct {v0}, Lorg/apache/commons/collections/collection/CompositeCollection;-><init>()V

    iget-object v1, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_a
    if-ltz v1, :cond_1a

    iget-object v2, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v2, v2, v1

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections/collection/CompositeCollection;->addComposited(Ljava/util/Collection;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    :cond_1a
    return-object v0
.end method
