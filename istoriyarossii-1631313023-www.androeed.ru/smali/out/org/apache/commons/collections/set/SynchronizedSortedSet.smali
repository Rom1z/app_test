.class public Lorg/apache/commons/collections/set/SynchronizedSortedSet;
.super Lorg/apache/commons/collections/collection/SynchronizedCollection;
.source "SynchronizedSortedSet.java"

# interfaces
.implements Ljava/util/SortedSet;


# static fields
.field private static final serialVersionUID:J = 0x2684d9e84375c60fL


# direct methods
.method protected constructor <init>(Ljava/util/SortedSet;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/collection/SynchronizedCollection;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method protected constructor <init>(Ljava/util/SortedSet;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/collection/SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;)V

    return-void
.end method

.method public static decorate(Ljava/util/SortedSet;)Ljava/util/SortedSet;
    .registers 2

    new-instance v0, Lorg/apache/commons/collections/set/SynchronizedSortedSet;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/set/SynchronizedSortedSet;-><init>(Ljava/util/SortedSet;)V

    return-object v0
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/set/SynchronizedSortedSet;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lorg/apache/commons/collections/set/SynchronizedSortedSet;->getSortedSet()Ljava/util/SortedSet;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public first()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/set/SynchronizedSortedSet;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lorg/apache/commons/collections/set/SynchronizedSortedSet;->getSortedSet()Ljava/util/SortedSet;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method protected getSortedSet()Ljava/util/SortedSet;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/set/SynchronizedSortedSet;->collection:Ljava/util/Collection;

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 5

    iget-object v0, p0, Lorg/apache/commons/collections/set/SynchronizedSortedSet;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lorg/apache/commons/collections/set/SynchronizedSortedSet;->getSortedSet()Ljava/util/SortedSet;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    new-instance v1, Lorg/apache/commons/collections/set/SynchronizedSortedSet;

    iget-object v2, p0, Lorg/apache/commons/collections/set/SynchronizedSortedSet;->lock:Ljava/lang/Object;

    invoke-direct {v1, p1, v2}, Lorg/apache/commons/collections/set/SynchronizedSortedSet;-><init>(Ljava/util/SortedSet;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public last()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/set/SynchronizedSortedSet;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lorg/apache/commons/collections/set/SynchronizedSortedSet;->getSortedSet()Ljava/util/SortedSet;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 5

    iget-object v0, p0, Lorg/apache/commons/collections/set/SynchronizedSortedSet;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lorg/apache/commons/collections/set/SynchronizedSortedSet;->getSortedSet()Ljava/util/SortedSet;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    new-instance p2, Lorg/apache/commons/collections/set/SynchronizedSortedSet;

    iget-object v1, p0, Lorg/apache/commons/collections/set/SynchronizedSortedSet;->lock:Ljava/lang/Object;

    invoke-direct {p2, p1, v1}, Lorg/apache/commons/collections/set/SynchronizedSortedSet;-><init>(Ljava/util/SortedSet;Ljava/lang/Object;)V

    monitor-exit v0

    return-object p2

    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 5

    iget-object v0, p0, Lorg/apache/commons/collections/set/SynchronizedSortedSet;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lorg/apache/commons/collections/set/SynchronizedSortedSet;->getSortedSet()Ljava/util/SortedSet;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    new-instance v1, Lorg/apache/commons/collections/set/SynchronizedSortedSet;

    iget-object v2, p0, Lorg/apache/commons/collections/set/SynchronizedSortedSet;->lock:Ljava/lang/Object;

    invoke-direct {v1, p1, v2}, Lorg/apache/commons/collections/set/SynchronizedSortedSet;-><init>(Ljava/util/SortedSet;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p1
.end method
