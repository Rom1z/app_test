.class public Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "IntolerantThreadPoolExecutor.java"


# instance fields
.field private terminalException:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .registers 9

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v3

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-wide v4, 0x7fffffffffffffffL

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    return-void
.end method


# virtual methods
.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .registers 3

    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    if-eqz p2, :cond_17

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_12

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    iput-object p1, p0, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;->terminalException:Ljava/lang/Throwable;

    goto :goto_14

    :cond_12
    iput-object p2, p0, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;->terminalException:Ljava/lang/Throwable;

    :goto_14
    invoke-virtual {p0}, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    :cond_17
    return-void
.end method

.method public getTerminalException()Ljava/lang/Throwable;
    .registers 2

    iget-object v0, p0, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;->terminalException:Ljava/lang/Throwable;

    return-object v0
.end method
