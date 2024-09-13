.class public Lcom/opencsv/bean/CsvToBean;
.super Ljava/lang/Object;
.source "CsvToBean.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private accumulateThread:Lcom/opencsv/bean/concurrent/AccumulateCsvResults;

.field private capturedExceptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/opencsv/exceptions/CsvException;",
            ">;"
        }
    .end annotation
.end field

.field private csvReader:Lcom/opencsv/CSVReader;

.field private errorLocale:Ljava/util/Locale;

.field private executor:Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;

.field private filter:Lcom/opencsv/bean/CsvToBeanFilter;

.field private line:[Ljava/lang/String;

.field private lineProcessed:J

.field private mappingStrategy:Lcom/opencsv/bean/MappingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/opencsv/bean/MappingStrategy<",
            "TT;>;"
        }
    .end annotation
.end field

.field private orderedResults:Z

.field private resultantBeansMap:Ljava/util/concurrent/ConcurrentNavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentNavigableMap<",
            "Ljava/lang/Long;",
            "TT;>;"
        }
    .end annotation
.end field

.field private resultantBeansQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/opencsv/bean/concurrent/OrderedObject<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private throwExceptions:Z

.field private thrownExceptionsMap:Ljava/util/concurrent/ConcurrentNavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentNavigableMap<",
            "Ljava/lang/Long;",
            "Lcom/opencsv/exceptions/CsvException;",
            ">;"
        }
    .end annotation
.end field

.field private thrownExceptionsQueue:Ljava/util/concurrent/BlockingQueue;
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
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/opencsv/bean/CsvToBean;->capturedExceptions:Ljava/util/List;

    iput-object v0, p0, Lcom/opencsv/bean/CsvToBean;->filter:Lcom/opencsv/bean/CsvToBeanFilter;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/opencsv/bean/CsvToBean;->throwExceptions:Z

    iput-boolean v1, p0, Lcom/opencsv/bean/CsvToBean;->orderedResults:Z

    iput-object v0, p0, Lcom/opencsv/bean/CsvToBean;->accumulateThread:Lcom/opencsv/bean/concurrent/AccumulateCsvResults;

    iput-object v0, p0, Lcom/opencsv/bean/CsvToBean;->resultantBeansMap:Ljava/util/concurrent/ConcurrentNavigableMap;

    iput-object v0, p0, Lcom/opencsv/bean/CsvToBean;->thrownExceptionsMap:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/opencsv/bean/CsvToBean;->errorLocale:Ljava/util/Locale;

    return-void
.end method

.method static synthetic access$000(Lcom/opencsv/bean/CsvToBean;)Ljava/util/concurrent/BlockingQueue;
    .registers 1

    iget-object p0, p0, Lcom/opencsv/bean/CsvToBean;->resultantBeansQueue:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method static synthetic access$002(Lcom/opencsv/bean/CsvToBean;Ljava/util/concurrent/BlockingQueue;)Ljava/util/concurrent/BlockingQueue;
    .registers 2

    iput-object p1, p0, Lcom/opencsv/bean/CsvToBean;->resultantBeansQueue:Ljava/util/concurrent/BlockingQueue;

    return-object p1
.end method

.method static synthetic access$100(Lcom/opencsv/bean/CsvToBean;)Ljava/util/concurrent/BlockingQueue;
    .registers 1

    iget-object p0, p0, Lcom/opencsv/bean/CsvToBean;->thrownExceptionsQueue:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method static synthetic access$102(Lcom/opencsv/bean/CsvToBean;Ljava/util/concurrent/BlockingQueue;)Ljava/util/concurrent/BlockingQueue;
    .registers 2

    iput-object p1, p0, Lcom/opencsv/bean/CsvToBean;->thrownExceptionsQueue:Ljava/util/concurrent/BlockingQueue;

    return-object p1
.end method

.method static synthetic access$200(Lcom/opencsv/bean/CsvToBean;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/opencsv/bean/CsvToBean;->capturedExceptions:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$202(Lcom/opencsv/bean/CsvToBean;Ljava/util/List;)Ljava/util/List;
    .registers 2

    iput-object p1, p0, Lcom/opencsv/bean/CsvToBean;->capturedExceptions:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300(Lcom/opencsv/bean/CsvToBean;)[Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/opencsv/bean/CsvToBean;->line:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/opencsv/bean/CsvToBean;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/opencsv/bean/CsvToBean;->line:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/opencsv/bean/CsvToBean;)Lcom/opencsv/CSVReader;
    .registers 1

    iget-object p0, p0, Lcom/opencsv/bean/CsvToBean;->csvReader:Lcom/opencsv/CSVReader;

    return-object p0
.end method

.method static synthetic access$500(Lcom/opencsv/bean/CsvToBean;)J
    .registers 3

    iget-wide v0, p0, Lcom/opencsv/bean/CsvToBean;->lineProcessed:J

    return-wide v0
.end method

.method static synthetic access$508(Lcom/opencsv/bean/CsvToBean;)J
    .registers 5

    iget-wide v0, p0, Lcom/opencsv/bean/CsvToBean;->lineProcessed:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/opencsv/bean/CsvToBean;->lineProcessed:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/opencsv/bean/CsvToBean;)Lcom/opencsv/bean/MappingStrategy;
    .registers 1

    iget-object p0, p0, Lcom/opencsv/bean/CsvToBean;->mappingStrategy:Lcom/opencsv/bean/MappingStrategy;

    return-object p0
.end method

.method static synthetic access$700(Lcom/opencsv/bean/CsvToBean;)Lcom/opencsv/bean/CsvToBeanFilter;
    .registers 1

    iget-object p0, p0, Lcom/opencsv/bean/CsvToBean;->filter:Lcom/opencsv/bean/CsvToBeanFilter;

    return-object p0
.end method

.method static synthetic access$800(Lcom/opencsv/bean/CsvToBean;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/opencsv/bean/CsvToBean;->throwExceptions:Z

    return p0
.end method

.method static synthetic access$900(Lcom/opencsv/bean/CsvToBean;)Ljava/util/Locale;
    .registers 1

    iget-object p0, p0, Lcom/opencsv/bean/CsvToBean;->errorLocale:Ljava/util/Locale;

    return-object p0
.end method

.method private prepareForParallelProcessing()V
    .registers 6

    new-instance v0, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;

    invoke-direct {v0}, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;-><init>()V

    iput-object v0, p0, Lcom/opencsv/bean/CsvToBean;->executor:Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;

    invoke-virtual {v0}, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;->prestartAllCoreThreads()I

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/opencsv/bean/CsvToBean;->resultantBeansQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/opencsv/bean/CsvToBean;->thrownExceptionsQueue:Ljava/util/concurrent/BlockingQueue;

    iget-boolean v0, p0, Lcom/opencsv/bean/CsvToBean;->orderedResults:Z

    if-eqz v0, :cond_3c

    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object v0, p0, Lcom/opencsv/bean/CsvToBean;->resultantBeansMap:Ljava/util/concurrent/ConcurrentNavigableMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object v0, p0, Lcom/opencsv/bean/CsvToBean;->thrownExceptionsMap:Ljava/util/concurrent/ConcurrentNavigableMap;

    new-instance v0, Lcom/opencsv/bean/concurrent/AccumulateCsvResults;

    iget-object v1, p0, Lcom/opencsv/bean/CsvToBean;->resultantBeansQueue:Ljava/util/concurrent/BlockingQueue;

    iget-object v2, p0, Lcom/opencsv/bean/CsvToBean;->thrownExceptionsQueue:Ljava/util/concurrent/BlockingQueue;

    iget-object v3, p0, Lcom/opencsv/bean/CsvToBean;->resultantBeansMap:Ljava/util/concurrent/ConcurrentNavigableMap;

    iget-object v4, p0, Lcom/opencsv/bean/CsvToBean;->thrownExceptionsMap:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/opencsv/bean/concurrent/AccumulateCsvResults;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ConcurrentMap;Ljava/util/concurrent/ConcurrentMap;)V

    iput-object v0, p0, Lcom/opencsv/bean/CsvToBean;->accumulateThread:Lcom/opencsv/bean/concurrent/AccumulateCsvResults;

    invoke-virtual {v0}, Lcom/opencsv/bean/concurrent/AccumulateCsvResults;->start()V

    :cond_3c
    return-void
.end method

.method private prepareResults()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/opencsv/bean/CsvToBean;->thrownExceptionsMap:Ljava/util/concurrent/ConcurrentNavigableMap;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/opencsv/bean/CsvToBean;->resultantBeansMap:Ljava/util/concurrent/ConcurrentNavigableMap;

    if-eqz v0, :cond_21

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/opencsv/bean/CsvToBean;->thrownExceptionsMap:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentNavigableMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/opencsv/bean/CsvToBean;->capturedExceptions:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/opencsv/bean/CsvToBean;->resultantBeansMap:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentNavigableMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_6f

    :cond_21
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/opencsv/bean/CsvToBean;->thrownExceptionsQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/opencsv/bean/CsvToBean;->capturedExceptions:Ljava/util/List;

    :cond_2e
    :goto_2e
    iget-object v0, p0, Lcom/opencsv/bean/CsvToBean;->thrownExceptionsQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4a

    iget-object v0, p0, Lcom/opencsv/bean/CsvToBean;->thrownExceptionsQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/opencsv/bean/concurrent/OrderedObject;

    if-eqz v0, :cond_2e

    iget-object v1, p0, Lcom/opencsv/bean/CsvToBean;->capturedExceptions:Ljava/util/List;

    invoke-virtual {v0}, Lcom/opencsv/bean/concurrent/OrderedObject;->getElement()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    :cond_4a
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/opencsv/bean/CsvToBean;->resultantBeansQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :cond_55
    :goto_55
    iget-object v1, p0, Lcom/opencsv/bean/CsvToBean;->resultantBeansQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6f

    iget-object v1, p0, Lcom/opencsv/bean/CsvToBean;->resultantBeansQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/opencsv/bean/concurrent/OrderedObject;

    if-eqz v1, :cond_55

    invoke-virtual {v1}, Lcom/opencsv/bean/concurrent/OrderedObject;->getElement()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_55

    :cond_6f
    :goto_6f
    return-object v0
.end method

.method private prepareToReadInput()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/opencsv/bean/CsvToBean;->mappingStrategy:Lcom/opencsv/bean/MappingStrategy;

    const-string v1, "opencsv"

    if-eqz v0, :cond_28

    iget-object v2, p0, Lcom/opencsv/bean/CsvToBean;->csvReader:Lcom/opencsv/CSVReader;

    if-eqz v2, :cond_28

    :try_start_a
    invoke-interface {v0, v2}, Lcom/opencsv/bean/MappingStrategy;->captureHeader(Lcom/opencsv/CSVReader;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_15

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/opencsv/bean/CsvToBean;->lineProcessed:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/opencsv/bean/CsvToBean;->line:[Ljava/lang/String;

    return-void

    :catch_15
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    iget-object v3, p0, Lcom/opencsv/bean/CsvToBean;->errorLocale:Ljava/util/Locale;

    invoke-static {v1, v3}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    const-string v3, "header.error"

    invoke-virtual {v1, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v2, p0, Lcom/opencsv/bean/CsvToBean;->errorLocale:Ljava/util/Locale;

    invoke-static {v1, v2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    const-string v2, "specify.strategy.reader"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private submitAllBeans()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lcom/opencsv/bean/CsvToBean;->csvReader:Lcom/opencsv/CSVReader;

    invoke-virtual {v0}, Lcom/opencsv/CSVReader;->readNext()[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/opencsv/bean/CsvToBean;->line:[Ljava/lang/String;

    if-eqz v6, :cond_27

    iget-wide v0, p0, Lcom/opencsv/bean/CsvToBean;->lineProcessed:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/opencsv/bean/CsvToBean;->lineProcessed:J

    iget-object v0, p0, Lcom/opencsv/bean/CsvToBean;->executor:Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;

    new-instance v10, Lcom/opencsv/bean/concurrent/ProcessCsvLine;

    iget-object v4, p0, Lcom/opencsv/bean/CsvToBean;->mappingStrategy:Lcom/opencsv/bean/MappingStrategy;

    iget-object v5, p0, Lcom/opencsv/bean/CsvToBean;->filter:Lcom/opencsv/bean/CsvToBeanFilter;

    iget-object v7, p0, Lcom/opencsv/bean/CsvToBean;->resultantBeansQueue:Ljava/util/concurrent/BlockingQueue;

    iget-object v8, p0, Lcom/opencsv/bean/CsvToBean;->thrownExceptionsQueue:Ljava/util/concurrent/BlockingQueue;

    iget-boolean v9, p0, Lcom/opencsv/bean/CsvToBean;->throwExceptions:Z

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lcom/opencsv/bean/concurrent/ProcessCsvLine;-><init>(JLcom/opencsv/bean/MappingStrategy;Lcom/opencsv/bean/CsvToBeanFilter;[Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Z)V

    invoke-virtual {v0, v10}, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_27
    iget-object v0, p0, Lcom/opencsv/bean/CsvToBean;->executor:Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;

    invoke-virtual {v0}, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;->shutdown()V

    iget-object v0, p0, Lcom/opencsv/bean/CsvToBean;->executor:Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;

    const-wide v1, 0x7fffffffffffffffL

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    iget-object v0, p0, Lcom/opencsv/bean/CsvToBean;->accumulateThread:Lcom/opencsv/bean/concurrent/AccumulateCsvResults;

    if-eqz v0, :cond_45

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/opencsv/bean/concurrent/AccumulateCsvResults;->setMustStop(Z)V

    iget-object v0, p0, Lcom/opencsv/bean/CsvToBean;->accumulateThread:Lcom/opencsv/bean/concurrent/AccumulateCsvResults;

    invoke-virtual {v0}, Lcom/opencsv/bean/concurrent/AccumulateCsvResults;->join()V

    :cond_45
    iget-object v0, p0, Lcom/opencsv/bean/CsvToBean;->executor:Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;

    invoke-virtual {v0}, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;->getTerminalException()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_4e

    return-void

    :cond_4e
    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    invoke-direct {v0}, Ljava/util/concurrent/RejectedExecutionException;-><init>()V

    throw v0
.end method


# virtual methods
.method public getCapturedExceptions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/opencsv/exceptions/CsvException;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/opencsv/bean/CsvToBean;->capturedExceptions:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/opencsv/bean/CsvToBean;->capturedExceptions:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Lcom/opencsv/bean/CsvToBean;->capturedExceptions:Ljava/util/List;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/opencsv/bean/CsvToBean;->prepareToReadInput()V

    new-instance v0, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;

    invoke-direct {v0, p0}, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;-><init>(Lcom/opencsv/bean/CsvToBean;)V

    return-object v0
.end method

.method public parse()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "parsing.error"

    const-string v1, "opencsv"

    invoke-direct {p0}, Lcom/opencsv/bean/CsvToBean;->prepareToReadInput()V

    invoke-direct {p0}, Lcom/opencsv/bean/CsvToBean;->prepareForParallelProcessing()V

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    :try_start_d
    invoke-direct {p0}, Lcom/opencsv/bean/CsvToBean;->submitAllBeans()V
    :try_end_10
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_d .. :try_end_10} :catch_4a
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_15

    invoke-direct {p0}, Lcom/opencsv/bean/CsvToBean;->prepareResults()Ljava/util/List;

    move-result-object v0

    return-object v0

    :catch_15
    move-exception v5

    iget-object v6, p0, Lcom/opencsv/bean/CsvToBean;->executor:Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;

    invoke-virtual {v6}, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    iget-object v6, p0, Lcom/opencsv/bean/CsvToBean;->accumulateThread:Lcom/opencsv/bean/concurrent/AccumulateCsvResults;

    if-eqz v6, :cond_24

    iget-object v6, p0, Lcom/opencsv/bean/CsvToBean;->accumulateThread:Lcom/opencsv/bean/concurrent/AccumulateCsvResults;

    invoke-virtual {v6, v4}, Lcom/opencsv/bean/concurrent/AccumulateCsvResults;->setMustStop(Z)V

    :cond_24
    new-instance v6, Ljava/lang/RuntimeException;

    iget-object v7, p0, Lcom/opencsv/bean/CsvToBean;->errorLocale:Ljava/util/Locale;

    invoke-static {v1, v7}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    iget-wide v7, p0, Lcom/opencsv/bean/CsvToBean;->lineProcessed:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/opencsv/bean/CsvToBean;->line:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :catch_4a
    iget-object v5, p0, Lcom/opencsv/bean/CsvToBean;->accumulateThread:Lcom/opencsv/bean/concurrent/AccumulateCsvResults;

    if-eqz v5, :cond_53

    iget-object v5, p0, Lcom/opencsv/bean/CsvToBean;->accumulateThread:Lcom/opencsv/bean/concurrent/AccumulateCsvResults;

    invoke-virtual {v5, v4}, Lcom/opencsv/bean/concurrent/AccumulateCsvResults;->setMustStop(Z)V

    :cond_53
    new-instance v5, Ljava/lang/RuntimeException;

    iget-object v6, p0, Lcom/opencsv/bean/CsvToBean;->errorLocale:Ljava/util/Locale;

    invoke-static {v1, v6}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    iget-wide v6, p0, Lcom/opencsv/bean/CsvToBean;->lineProcessed:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/opencsv/bean/CsvToBean;->line:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/opencsv/bean/CsvToBean;->executor:Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;

    invoke-virtual {v1}, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;->getTerminalException()Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {v5, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public parse(Lcom/opencsv/bean/MappingStrategy;Lcom/opencsv/CSVReader;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opencsv/bean/MappingStrategy<",
            "TT;>;",
            "Lcom/opencsv/CSVReader;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/opencsv/bean/CsvToBean;->setMappingStrategy(Lcom/opencsv/bean/MappingStrategy;)V

    invoke-virtual {p0, p2}, Lcom/opencsv/bean/CsvToBean;->setCsvReader(Lcom/opencsv/CSVReader;)V

    invoke-virtual {p0}, Lcom/opencsv/bean/CsvToBean;->parse()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lcom/opencsv/bean/MappingStrategy;Lcom/opencsv/CSVReader;Lcom/opencsv/bean/CsvToBeanFilter;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opencsv/bean/MappingStrategy<",
            "TT;>;",
            "Lcom/opencsv/CSVReader;",
            "Lcom/opencsv/bean/CsvToBeanFilter;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/opencsv/bean/CsvToBean;->setMappingStrategy(Lcom/opencsv/bean/MappingStrategy;)V

    invoke-virtual {p0, p2}, Lcom/opencsv/bean/CsvToBean;->setCsvReader(Lcom/opencsv/CSVReader;)V

    invoke-virtual {p0, p3}, Lcom/opencsv/bean/CsvToBean;->setFilter(Lcom/opencsv/bean/CsvToBeanFilter;)V

    invoke-virtual {p0}, Lcom/opencsv/bean/CsvToBean;->parse()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lcom/opencsv/bean/MappingStrategy;Lcom/opencsv/CSVReader;Lcom/opencsv/bean/CsvToBeanFilter;Z)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opencsv/bean/MappingStrategy<",
            "TT;>;",
            "Lcom/opencsv/CSVReader;",
            "Lcom/opencsv/bean/CsvToBeanFilter;",
            "Z)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/opencsv/bean/CsvToBean;->setMappingStrategy(Lcom/opencsv/bean/MappingStrategy;)V

    invoke-virtual {p0, p2}, Lcom/opencsv/bean/CsvToBean;->setCsvReader(Lcom/opencsv/CSVReader;)V

    invoke-virtual {p0, p3}, Lcom/opencsv/bean/CsvToBean;->setFilter(Lcom/opencsv/bean/CsvToBeanFilter;)V

    invoke-virtual {p0, p4}, Lcom/opencsv/bean/CsvToBean;->setThrowExceptions(Z)V

    invoke-virtual {p0}, Lcom/opencsv/bean/CsvToBean;->parse()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lcom/opencsv/bean/MappingStrategy;Lcom/opencsv/CSVReader;Z)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opencsv/bean/MappingStrategy<",
            "TT;>;",
            "Lcom/opencsv/CSVReader;",
            "Z)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/opencsv/bean/CsvToBean;->setMappingStrategy(Lcom/opencsv/bean/MappingStrategy;)V

    invoke-virtual {p0, p2}, Lcom/opencsv/bean/CsvToBean;->setCsvReader(Lcom/opencsv/CSVReader;)V

    invoke-virtual {p0, p3}, Lcom/opencsv/bean/CsvToBean;->setThrowExceptions(Z)V

    invoke-virtual {p0}, Lcom/opencsv/bean/CsvToBean;->parse()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lcom/opencsv/bean/MappingStrategy;Ljava/io/Reader;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opencsv/bean/MappingStrategy<",
            "TT;>;",
            "Ljava/io/Reader;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/opencsv/bean/CsvToBean;->setMappingStrategy(Lcom/opencsv/bean/MappingStrategy;)V

    new-instance p1, Lcom/opencsv/CSVReaderBuilder;

    invoke-direct {p1, p2}, Lcom/opencsv/CSVReaderBuilder;-><init>(Ljava/io/Reader;)V

    iget-object p2, p0, Lcom/opencsv/bean/CsvToBean;->errorLocale:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Lcom/opencsv/CSVReaderBuilder;->withErrorLocale(Ljava/util/Locale;)Lcom/opencsv/CSVReaderBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/opencsv/CSVReaderBuilder;->build()Lcom/opencsv/CSVReader;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/opencsv/bean/CsvToBean;->setCsvReader(Lcom/opencsv/CSVReader;)V

    invoke-virtual {p0}, Lcom/opencsv/bean/CsvToBean;->parse()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lcom/opencsv/bean/MappingStrategy;Ljava/io/Reader;Lcom/opencsv/bean/CsvToBeanFilter;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opencsv/bean/MappingStrategy<",
            "TT;>;",
            "Ljava/io/Reader;",
            "Lcom/opencsv/bean/CsvToBeanFilter;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/opencsv/bean/CsvToBean;->setMappingStrategy(Lcom/opencsv/bean/MappingStrategy;)V

    new-instance p1, Lcom/opencsv/CSVReaderBuilder;

    invoke-direct {p1, p2}, Lcom/opencsv/CSVReaderBuilder;-><init>(Ljava/io/Reader;)V

    iget-object p2, p0, Lcom/opencsv/bean/CsvToBean;->errorLocale:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Lcom/opencsv/CSVReaderBuilder;->withErrorLocale(Ljava/util/Locale;)Lcom/opencsv/CSVReaderBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/opencsv/CSVReaderBuilder;->build()Lcom/opencsv/CSVReader;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/opencsv/bean/CsvToBean;->setCsvReader(Lcom/opencsv/CSVReader;)V

    invoke-virtual {p0, p3}, Lcom/opencsv/bean/CsvToBean;->setFilter(Lcom/opencsv/bean/CsvToBeanFilter;)V

    invoke-virtual {p0}, Lcom/opencsv/bean/CsvToBean;->parse()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lcom/opencsv/bean/MappingStrategy;Ljava/io/Reader;Lcom/opencsv/bean/CsvToBeanFilter;Z)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opencsv/bean/MappingStrategy<",
            "TT;>;",
            "Ljava/io/Reader;",
            "Lcom/opencsv/bean/CsvToBeanFilter;",
            "Z)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/opencsv/bean/CsvToBean;->setMappingStrategy(Lcom/opencsv/bean/MappingStrategy;)V

    new-instance p1, Lcom/opencsv/CSVReaderBuilder;

    invoke-direct {p1, p2}, Lcom/opencsv/CSVReaderBuilder;-><init>(Ljava/io/Reader;)V

    iget-object p2, p0, Lcom/opencsv/bean/CsvToBean;->errorLocale:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Lcom/opencsv/CSVReaderBuilder;->withErrorLocale(Ljava/util/Locale;)Lcom/opencsv/CSVReaderBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/opencsv/CSVReaderBuilder;->build()Lcom/opencsv/CSVReader;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/opencsv/bean/CsvToBean;->setCsvReader(Lcom/opencsv/CSVReader;)V

    invoke-virtual {p0, p3}, Lcom/opencsv/bean/CsvToBean;->setFilter(Lcom/opencsv/bean/CsvToBeanFilter;)V

    invoke-virtual {p0, p4}, Lcom/opencsv/bean/CsvToBean;->setThrowExceptions(Z)V

    invoke-virtual {p0}, Lcom/opencsv/bean/CsvToBean;->parse()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lcom/opencsv/bean/MappingStrategy;Ljava/io/Reader;Z)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opencsv/bean/MappingStrategy<",
            "TT;>;",
            "Ljava/io/Reader;",
            "Z)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/opencsv/bean/CsvToBean;->setMappingStrategy(Lcom/opencsv/bean/MappingStrategy;)V

    new-instance p1, Lcom/opencsv/CSVReaderBuilder;

    invoke-direct {p1, p2}, Lcom/opencsv/CSVReaderBuilder;-><init>(Ljava/io/Reader;)V

    iget-object p2, p0, Lcom/opencsv/bean/CsvToBean;->errorLocale:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Lcom/opencsv/CSVReaderBuilder;->withErrorLocale(Ljava/util/Locale;)Lcom/opencsv/CSVReaderBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/opencsv/CSVReaderBuilder;->build()Lcom/opencsv/CSVReader;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/opencsv/bean/CsvToBean;->setCsvReader(Lcom/opencsv/CSVReader;)V

    invoke-virtual {p0, p3}, Lcom/opencsv/bean/CsvToBean;->setThrowExceptions(Z)V

    invoke-virtual {p0}, Lcom/opencsv/bean/CsvToBean;->parse()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public setCsvReader(Lcom/opencsv/CSVReader;)V
    .registers 2

    iput-object p1, p0, Lcom/opencsv/bean/CsvToBean;->csvReader:Lcom/opencsv/CSVReader;

    return-void
.end method

.method public setErrorLocale(Ljava/util/Locale;)V
    .registers 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    iput-object p1, p0, Lcom/opencsv/bean/CsvToBean;->errorLocale:Ljava/util/Locale;

    return-void
.end method

.method public setFilter(Lcom/opencsv/bean/CsvToBeanFilter;)V
    .registers 2

    iput-object p1, p0, Lcom/opencsv/bean/CsvToBean;->filter:Lcom/opencsv/bean/CsvToBeanFilter;

    return-void
.end method

.method public setMappingStrategy(Lcom/opencsv/bean/MappingStrategy;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opencsv/bean/MappingStrategy<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/opencsv/bean/CsvToBean;->mappingStrategy:Lcom/opencsv/bean/MappingStrategy;

    return-void
.end method

.method public setOrderedResults(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/opencsv/bean/CsvToBean;->orderedResults:Z

    return-void
.end method

.method public setThrowExceptions(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/opencsv/bean/CsvToBean;->throwExceptions:Z

    return-void
.end method
