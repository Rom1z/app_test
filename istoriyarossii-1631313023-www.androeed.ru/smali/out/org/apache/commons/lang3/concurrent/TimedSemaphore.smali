.class public Lorg/apache/commons/lang3/concurrent/TimedSemaphore;
.super Ljava/lang/Object;
.source "TimedSemaphore.java"


# static fields
.field public static final NO_LIMIT:I = 0x0

.field private static final THREAD_POOL_SIZE:I = 0x1


# instance fields
.field private acquireCount:I

.field private final executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private lastCallsPerPeriod:I

.field private limit:I

.field private final ownExecutor:Z

.field private final period:J

.field private periodCount:J

.field private shutdown:Z

.field private task:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private totalAcquireCount:J

.field private final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;I)V
    .registers 11

    const/4 v1, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/lang3/concurrent/TimedSemaphore;-><init>(Ljava/util/concurrent/ScheduledExecutorService;JLjava/util/concurrent/TimeUnit;I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;JLjava/util/concurrent/TimeUnit;I)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1

    const-wide v2, 0x7fffffffffffffffL

    const-string v6, "Time period must be greater than 0!"

    move-wide v4, p2

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang3/Validate;->inclusiveBetween(JJJLjava/lang/String;)V

    iput-wide p2, p0, Lorg/apache/commons/lang3/concurrent/TimedSemaphore;->period:J

    iput-object p4, p0, Lorg/apache/commons/lang3/concurrent/TimedSemaphore;->unit:Ljava/util/concurrent/TimeUnit;

    const/4 p2, 0x0

    if-eqz p1, :cond_1c

    iput-object p1, p0, Lorg/apache/commons/lang3/concurrent/TimedSemaphore;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    iput-boolean p2, p0, Lorg/apache/commons/lang3/concurrent/TimedSemaphore;->ownExecutor:Z

    goto :goto_2c

    :cond_1c
    new-instance p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 p3, 0x1

    invoke-direct {p1, p3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setContinueExistingPeriodicTasksAfterShutdownPolicy(Z)V

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setExecuteExistingDelayedTasksAfterShutdownPolicy(Z)V

    iput-object p1, p0, Lorg/apache/commons/lang3/concurrent/TimedSemaphore;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    iput-boolean p3, p0, Lorg/apache/commons/lang3/concurrent/TimedSemaphore;->ownExecutor:Z

    :goto_2c
    invoke-virtual {p0, p5}, Lorg/apache/commons/lang3/concurrent/TimedSemaphore;->setLimit(I)V

    return-void
.end method

.method private acquirePermit()Z
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/TimedSemaphore;->getLimit()I

    move-result v0

    if-lez v0, :cond_11

    iget v0, p0, Lorg/apache/commons/lang3/concurrent/TimedSemaphore;->acquireCount:I

    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/TimedSemaphore;->getLimit()I

    move-result v1

    if-ge v0, v1, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    return v0

    :cond_11
    :goto_11
    iget v0, p0, Lorg/apache/commons/lang3/concurrent/TimedSemaphore;->acquireCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/concurrent/TimedSemaphore;->acquireCount:I

    return v1
.end method

.method private prepareAcquire()V
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/TimedSemaphore;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/TimedSemaphore;->task:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/TimedSemaphore;->startTimer()Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/concurrent/TimedSemaphore;->task:Ljava/util/concurrent/ScheduledFuture;

    :cond_10
    return-void

    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TimedSemaphore is shut down!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized acquire()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lorg/apache/commons/lang3/concurrent/TimedSemaphore;->prepareAcquire()V

    :cond_4
    invoke-direct {p0}, Lorg/apache/commons/lang3/concurrent/TimedSemaphore;->acquirePermit()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_11

    :cond_d
    if-eqz v0, :cond_4

    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized endOfPeriod()V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lorg/apache/commons/lang3/concurrent/TimedSemaphore;->acquireCount:I

    iput v0, p0, Lorg/apache/commons/lang3/concurrent/TimedSemaphore;->lastCallsPerPeriod:I

    iget-wide v1, p0, Lorg/apache/commons/lang3/concurrent/TimedSemaphore;->totalAcquireCount:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/lang3/concurrent/TimedSemaphore;->totalAcquireCount:J

    iget-wide v0, p0, Lorg/apache/commons/lang3/concurrent/TimedSemaphore;->periodCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang3/concurrent/TimedSemaphore;->periodCount:J

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/lang3/concurrent/TimedSemaphore;->acquireCount:I

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    monitor-exit p0

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAcquireCount()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lorg/apache/commons/lang3/concurrent/TimedSemaphore;->acquireCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAvailablePermits()I
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/TimedSemaphore;->getLimit()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/TimedSemaphore;->getAcquireCount()I

    move-result v1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAverageCallsPerPeriod()D
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lorg/apache/commons/lang3/concurrent/TimedSemaphore;->periodCount:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_c

    const-wide/16 v0, 0x0

    goto :goto_12

    :cond_c
    iget-wide v2, p0, Lorg/apache/commons/lang3/concurrent/TimedSemaphore;->totalAcquireCount:J
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_14

    long-to-double v2, v2

    long-to-double v0, v0

    div-double v0, v2, v0

    :goto_12
    monitor-exit p0

    return-wide v0

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getExecutorService()Ljava/util/concurrent/ScheduledExecutorService;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/TimedSemaphore;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public declared-synchronized getLastAcquiresPerPeriod()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lorg/apache/commons/lang3/concurrent/TimedSemaphore;->lastCallsPerPeriod:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getLimit()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lorg/apache/commons/lang3/concurrent/TimedSemaphore;->limit:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPeriod()J
    .registers 3

    iget-wide v0, p0, Lorg/apache/commons/lang3/concurrent/TimedSemaphore;->period:J

    return-wide v0
.end method

.method public getUnit()Ljava/util/concurrent/TimeUnit;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/TimedSemaphore;->unit:Ljava/util/concurrent/TimeUnit;

    return-object v0
.end method

.method public declared-synchronized isShutdown()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lorg/apache/commons/lang3/concurrent/TimedSemaphore;->shutdown:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setLimit(I)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput p1, p0, Lorg/apache/commons/lang3/concurrent/TimedSemaphore;->limit:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized shutdown()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lorg/apache/commons/lang3/concurrent/TimedSemaphore;->shutdown:Z

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lorg/apache/commons/lang3/concurrent/TimedSemaphore;->ownExecutor:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/TimedSemaphore;->getExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    :cond_10
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/TimedSemaphore;->task:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_18

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/lang3/concurrent/TimedSemaphore;->shutdown:Z
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    :cond_1b
    monitor-exit p0

    return-void

    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected startTimer()Ljava/util/concurrent/ScheduledFuture;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/TimedSemaphore;->getExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/lang3/concurrent/TimedSemaphore$1;

    invoke-direct {v1, p0}, Lorg/apache/commons/lang3/concurrent/TimedSemaphore$1;-><init>(Lorg/apache/commons/lang3/concurrent/TimedSemaphore;)V

    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/TimedSemaphore;->getPeriod()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/TimedSemaphore;->getPeriod()J

    move-result-wide v4

    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/TimedSemaphore;->getUnit()Ljava/util/concurrent/TimeUnit;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized tryAcquire()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lorg/apache/commons/lang3/concurrent/TimedSemaphore;->prepareAcquire()V

    invoke-direct {p0}, Lorg/apache/commons/lang3/concurrent/TimedSemaphore;->acquirePermit()Z

    move-result v0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
