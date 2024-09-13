.class public Lorg/apache/commons/collections/bag/SynchronizedSortedBag;
.super Lorg/apache/commons/collections/bag/SynchronizedBag;
.source "SynchronizedSortedBag.java"

# interfaces
.implements Lorg/apache/commons/collections/SortedBag;


# static fields
.field private static final serialVersionUID:J = 0xa06636095a9f842L


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections/Bag;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/bag/SynchronizedBag;-><init>(Lorg/apache/commons/collections/Bag;Ljava/lang/Object;)V

    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/collections/SortedBag;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/bag/SynchronizedBag;-><init>(Lorg/apache/commons/collections/Bag;)V

    return-void
.end method

.method public static decorate(Lorg/apache/commons/collections/SortedBag;)Lorg/apache/commons/collections/SortedBag;
    .registers 2

    new-instance v0, Lorg/apache/commons/collections/bag/SynchronizedSortedBag;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/bag/SynchronizedSortedBag;-><init>(Lorg/apache/commons/collections/SortedBag;)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized comparator()Ljava/util/Comparator;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/collections/bag/SynchronizedSortedBag;->lock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_12

    :try_start_4
    invoke-virtual {p0}, Lorg/apache/commons/collections/bag/SynchronizedSortedBag;->getSortedBag()Lorg/apache/commons/collections/SortedBag;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/collections/SortedBag;->comparator()Ljava/util/Comparator;

    move-result-object v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v1

    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    :try_start_11
    throw v1
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_12

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized first()Ljava/lang/Object;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/collections/bag/SynchronizedSortedBag;->lock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_12

    :try_start_4
    invoke-virtual {p0}, Lorg/apache/commons/collections/bag/SynchronizedSortedBag;->getSortedBag()Lorg/apache/commons/collections/SortedBag;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/collections/SortedBag;->first()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v1

    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    :try_start_11
    throw v1
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_12

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getSortedBag()Lorg/apache/commons/collections/SortedBag;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/bag/SynchronizedSortedBag;->collection:Ljava/util/Collection;

    check-cast v0, Lorg/apache/commons/collections/SortedBag;

    return-object v0
.end method

.method public declared-synchronized last()Ljava/lang/Object;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/collections/bag/SynchronizedSortedBag;->lock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_12

    :try_start_4
    invoke-virtual {p0}, Lorg/apache/commons/collections/bag/SynchronizedSortedBag;->getSortedBag()Lorg/apache/commons/collections/SortedBag;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/collections/SortedBag;->last()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v1

    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    :try_start_11
    throw v1
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_12

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method
