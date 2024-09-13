.class public Lorg/apache/commons/collections/list/SynchronizedList;
.super Lorg/apache/commons/collections/collection/SynchronizedCollection;
.source "SynchronizedList.java"

# interfaces
.implements Ljava/util/List;


# static fields
.field private static final serialVersionUID:J = -0x137b6ce6c91fbbadL


# direct methods
.method protected constructor <init>(Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/collection/SynchronizedCollection;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method protected constructor <init>(Ljava/util/List;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/collection/SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;)V

    return-void
.end method

.method public static decorate(Ljava/util/List;)Ljava/util/List;
    .registers 2

    new-instance v0, Lorg/apache/commons/collections/list/SynchronizedList;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/list/SynchronizedList;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lorg/apache/commons/collections/list/SynchronizedList;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/SynchronizedList;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 5

    iget-object v0, p0, Lorg/apache/commons/collections/list/SynchronizedList;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/SynchronizedList;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public get(I)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/list/SynchronizedList;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/SynchronizedList;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method protected getList()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/list/SynchronizedList;->collection:Ljava/util/Collection;

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/list/SynchronizedList;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/SynchronizedList;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/list/SynchronizedList;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/SynchronizedList;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/SynchronizedList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/SynchronizedList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    return-object p1
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/list/SynchronizedList;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/SynchronizedList;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lorg/apache/commons/collections/list/SynchronizedList;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/SynchronizedList;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public subList(II)Ljava/util/List;
    .registers 5

    iget-object v0, p0, Lorg/apache/commons/collections/list/SynchronizedList;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/SynchronizedList;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    new-instance p2, Lorg/apache/commons/collections/list/SynchronizedList;

    iget-object v1, p0, Lorg/apache/commons/collections/list/SynchronizedList;->lock:Ljava/lang/Object;

    invoke-direct {p2, p1, v1}, Lorg/apache/commons/collections/list/SynchronizedList;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    monitor-exit v0

    return-object p2

    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p1
.end method
