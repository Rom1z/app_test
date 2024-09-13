.class public Lcom/opencsv/bean/concurrent/AccumulateCsvResults;
.super Ljava/lang/Thread;
.source "AccumulateCsvResults.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Thread;"
    }
.end annotation


# instance fields
.field private mustStop:Z

.field private final resultantBeanMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Long;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final resultantBeansQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/opencsv/bean/concurrent/OrderedObject<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final thrownExceptionsMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Long;",
            "Lcom/opencsv/exceptions/CsvException;",
            ">;"
        }
    .end annotation
.end field

.field private final thrownExceptionsQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/opencsv/bean/concurrent/OrderedObject<",
            "Lcom/opencsv/exceptions/CsvException;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ConcurrentMap;Ljava/util/concurrent/ConcurrentMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/opencsv/bean/concurrent/OrderedObject<",
            "TT;>;>;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/opencsv/bean/concurrent/OrderedObject<",
            "Lcom/opencsv/exceptions/CsvException;",
            ">;>;",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Long;",
            "TT;>;",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Long;",
            "Lcom/opencsv/exceptions/CsvException;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/opencsv/bean/concurrent/AccumulateCsvResults;->mustStop:Z

    iput-object p1, p0, Lcom/opencsv/bean/concurrent/AccumulateCsvResults;->resultantBeansQueue:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lcom/opencsv/bean/concurrent/AccumulateCsvResults;->thrownExceptionsQueue:Ljava/util/concurrent/BlockingQueue;

    iput-object p3, p0, Lcom/opencsv/bean/concurrent/AccumulateCsvResults;->resultantBeanMap:Ljava/util/concurrent/ConcurrentMap;

    iput-object p4, p0, Lcom/opencsv/bean/concurrent/AccumulateCsvResults;->thrownExceptionsMap:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method


# virtual methods
.method public declared-synchronized isMustStop()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/opencsv/bean/concurrent/AccumulateCsvResults;->mustStop:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .registers 5

    :goto_0
    invoke-virtual {p0}, Lcom/opencsv/bean/concurrent/AccumulateCsvResults;->isMustStop()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/opencsv/bean/concurrent/AccumulateCsvResults;->resultantBeansQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/opencsv/bean/concurrent/AccumulateCsvResults;->thrownExceptionsQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_18

    :cond_17
    return-void

    :cond_18
    :goto_18
    iget-object v0, p0, Lcom/opencsv/bean/concurrent/AccumulateCsvResults;->resultantBeansQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/opencsv/bean/concurrent/AccumulateCsvResults;->resultantBeansQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/opencsv/bean/concurrent/OrderedObject;

    if-eqz v0, :cond_18

    iget-object v1, p0, Lcom/opencsv/bean/concurrent/AccumulateCsvResults;->resultantBeanMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0}, Lcom/opencsv/bean/concurrent/OrderedObject;->getOrdinal()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0}, Lcom/opencsv/bean/concurrent/OrderedObject;->getElement()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    :cond_3c
    :goto_3c
    iget-object v0, p0, Lcom/opencsv/bean/concurrent/AccumulateCsvResults;->thrownExceptionsQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_60

    iget-object v0, p0, Lcom/opencsv/bean/concurrent/AccumulateCsvResults;->thrownExceptionsQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/opencsv/bean/concurrent/OrderedObject;

    if-eqz v0, :cond_3c

    iget-object v1, p0, Lcom/opencsv/bean/concurrent/AccumulateCsvResults;->thrownExceptionsMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0}, Lcom/opencsv/bean/concurrent/OrderedObject;->getOrdinal()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0}, Lcom/opencsv/bean/concurrent/OrderedObject;->getElement()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3c

    :cond_60
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0
.end method

.method public declared-synchronized setMustStop(Z)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/opencsv/bean/concurrent/AccumulateCsvResults;->mustStop:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method
