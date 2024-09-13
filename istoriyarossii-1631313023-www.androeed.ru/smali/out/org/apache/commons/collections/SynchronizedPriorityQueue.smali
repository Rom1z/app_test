.class public final Lorg/apache/commons/collections/SynchronizedPriorityQueue;
.super Ljava/lang/Object;
.source "SynchronizedPriorityQueue.java"

# interfaces
.implements Lorg/apache/commons/collections/PriorityQueue;


# instance fields
.field protected final m_priorityQueue:Lorg/apache/commons/collections/PriorityQueue;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/PriorityQueue;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/SynchronizedPriorityQueue;->m_priorityQueue:Lorg/apache/commons/collections/PriorityQueue;

    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/collections/SynchronizedPriorityQueue;->m_priorityQueue:Lorg/apache/commons/collections/PriorityQueue;

    invoke-interface {v0}, Lorg/apache/commons/collections/PriorityQueue;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized insert(Ljava/lang/Object;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/collections/SynchronizedPriorityQueue;->m_priorityQueue:Lorg/apache/commons/collections/PriorityQueue;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/PriorityQueue;->insert(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isEmpty()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/collections/SynchronizedPriorityQueue;->m_priorityQueue:Lorg/apache/commons/collections/PriorityQueue;

    invoke-interface {v0}, Lorg/apache/commons/collections/PriorityQueue;->isEmpty()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized peek()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/collections/SynchronizedPriorityQueue;->m_priorityQueue:Lorg/apache/commons/collections/PriorityQueue;

    invoke-interface {v0}, Lorg/apache/commons/collections/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pop()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/collections/SynchronizedPriorityQueue;->m_priorityQueue:Lorg/apache/commons/collections/PriorityQueue;

    invoke-interface {v0}, Lorg/apache/commons/collections/PriorityQueue;->pop()Ljava/lang/Object;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/collections/SynchronizedPriorityQueue;->m_priorityQueue:Lorg/apache/commons/collections/PriorityQueue;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
