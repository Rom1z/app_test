.class abstract Lorg/apache/commons/collections/FastTreeMap$CollectionView;
.super Ljava/lang/Object;
.source "FastTreeMap.java"

# interfaces
.implements Ljava/util/Collection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/FastTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CollectionView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/FastTreeMap$CollectionView$CollectionViewIterator;
    }
.end annotation


# instance fields
.field private final synthetic this$0:Lorg/apache/commons/collections/FastTreeMap;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/FastTreeMap;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    return-void
.end method

.method static synthetic access$300(Lorg/apache/commons/collections/FastTreeMap$CollectionView;)Lorg/apache/commons/collections/FastTreeMap;
    .registers 1

    iget-object p0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    return-object p0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public clear()V
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    monitor-enter v0

    :try_start_9
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    iput-object v2, v1, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-exit v0

    goto :goto_28

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v0

    :try_start_1c
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v1, v1, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    monitor-exit v0

    :goto_28
    return-void

    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_1c .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_13
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v0

    :try_start_18
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v1, v1, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_26
    move-exception p1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_18 .. :try_end_28} :catchall_26

    throw p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    :cond_13
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v0

    :try_start_18
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v1, v1, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_26
    move-exception p1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_18 .. :try_end_28} :catchall_26

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p1, p0, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_17
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v0

    :try_start_1c
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v1, v1, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_2a
    move-exception p1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_1c .. :try_end_2c} :catchall_2a

    throw p1
.end method

.method protected abstract get(Ljava/util/Map;)Ljava/util/Collection;
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->hashCode()I

    move-result v0

    return v0

    :cond_13
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v0

    :try_start_18
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v1, v1, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->hashCode()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_18 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public isEmpty()Z
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0

    :cond_13
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v0

    :try_start_18
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v1, v1, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_18 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    new-instance v0, Lorg/apache/commons/collections/FastTreeMap$CollectionView$CollectionViewIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/FastTreeMap$CollectionView$CollectionViewIterator;-><init>(Lorg/apache/commons/collections/FastTreeMap$CollectionView;)V

    return-object v0
.end method

.method protected abstract iteratorNext(Ljava/util/Map$Entry;)Ljava/lang/Object;
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 5

    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    monitor-enter v0

    :try_start_9
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v1, v1, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TreeMap;

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p1

    iget-object v2, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iput-object v1, v2, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-exit v0

    return p1

    :catchall_21
    move-exception p1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_21

    throw p1

    :cond_24
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v0

    :try_start_29
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v1, v1, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_37
    move-exception p1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_29 .. :try_end_39} :catchall_37

    throw p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 5

    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    monitor-enter v0

    :try_start_9
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v1, v1, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TreeMap;

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    iget-object v2, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iput-object v1, v2, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-exit v0

    return p1

    :catchall_21
    move-exception p1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_21

    throw p1

    :cond_24
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v0

    :try_start_29
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v1, v1, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_37
    move-exception p1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_29 .. :try_end_39} :catchall_37

    throw p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 5

    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    monitor-enter v0

    :try_start_9
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v1, v1, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TreeMap;

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    iget-object v2, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iput-object v1, v2, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-exit v0

    return p1

    :catchall_21
    move-exception p1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_21

    throw p1

    :cond_24
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v0

    :try_start_29
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v1, v1, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_37
    move-exception p1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_29 .. :try_end_39} :catchall_37

    throw p1
.end method

.method public size()I
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0

    :cond_13
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v0

    :try_start_18
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v1, v1, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_18 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_13
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v0

    :try_start_18
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v1, v1, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_18 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_13
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v0

    :try_start_18
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v1, v1, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_26
    move-exception p1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_18 .. :try_end_28} :catchall_26

    throw p1
.end method
