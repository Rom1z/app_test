.class public Lcom/opencsv/bean/StatefulBeanToCsv;
.super Ljava/lang/Object;
.source "StatefulBeanToCsv.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
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

.field private csvwriter:Lcom/opencsv/CSVWriter;

.field private errorLocale:Ljava/util/Locale;

.field private final escapechar:C

.field private executor:Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;

.field private headerWritten:Z

.field private final lineEnd:Ljava/lang/String;

.field private lineNumber:I

.field private mappingStrategy:Lcom/opencsv/bean/MappingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/opencsv/bean/MappingStrategy<",
            "TT;>;"
        }
    .end annotation
.end field

.field private orderedResults:Z

.field private final quotechar:C

.field private resultantBeansMap:Ljava/util/concurrent/ConcurrentNavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentNavigableMap<",
            "Ljava/lang/Long;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private resultantLineQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/opencsv/bean/concurrent/OrderedObject<",
            "[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final separator:C

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

.field private final writer:Ljava/io/Writer;


# direct methods
.method private constructor <init>()V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->lineNumber:I

    iput-boolean v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->headerWritten:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->capturedExceptions:Ljava/util/List;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->orderedResults:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->executor:Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;

    iput-object v2, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->accumulateThread:Lcom/opencsv/bean/concurrent/AccumulateCsvResults;

    iput-object v2, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->resultantBeansMap:Ljava/util/concurrent/ConcurrentNavigableMap;

    iput-object v2, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->thrownExceptionsMap:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    iput-object v2, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->errorLocale:Ljava/util/Locale;

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "opencsv"

    invoke-static {v3}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v3

    const-string v4, "nullary.constructor.not.allowed"

    invoke-virtual {v3, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public constructor <init>(CLjava/lang/String;Lcom/opencsv/bean/MappingStrategy;CCZLjava/io/Writer;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Ljava/lang/String;",
            "Lcom/opencsv/bean/MappingStrategy<",
            "TT;>;CCZ",
            "Ljava/io/Writer;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->lineNumber:I

    iput-boolean v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->headerWritten:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->capturedExceptions:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->orderedResults:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->executor:Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;

    iput-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->accumulateThread:Lcom/opencsv/bean/concurrent/AccumulateCsvResults;

    iput-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->resultantBeansMap:Ljava/util/concurrent/ConcurrentNavigableMap;

    iput-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->thrownExceptionsMap:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->errorLocale:Ljava/util/Locale;

    iput-char p1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->escapechar:C

    iput-object p2, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->lineEnd:Ljava/lang/String;

    iput-object p3, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->mappingStrategy:Lcom/opencsv/bean/MappingStrategy;

    iput-char p4, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->quotechar:C

    iput-char p5, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->separator:C

    iput-boolean p6, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->throwExceptions:Z

    iput-object p7, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->writer:Ljava/io/Writer;

    return-void
.end method

.method private beforeFirstWrite(Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->mappingStrategy:Lcom/opencsv/bean/MappingStrategy;

    if-nez v0, :cond_10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    iget-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->errorLocale:Ljava/util/Locale;

    invoke-static {p1, v0}, Lcom/opencsv/bean/opencsvUtils;->determineMappingStrategy(Ljava/lang/Class;Ljava/util/Locale;)Lcom/opencsv/bean/MappingStrategy;

    move-result-object p1

    iput-object p1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->mappingStrategy:Lcom/opencsv/bean/MappingStrategy;

    :cond_10
    new-instance p1, Lcom/opencsv/CSVWriter;

    iget-object v1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->writer:Ljava/io/Writer;

    iget-char v2, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->separator:C

    iget-char v3, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->quotechar:C

    iget-char v4, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->escapechar:C

    iget-object v5, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->lineEnd:Ljava/lang/String;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/opencsv/CSVWriter;-><init>(Ljava/io/Writer;CCCLjava/lang/String;)V

    iput-object p1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->csvwriter:Lcom/opencsv/CSVWriter;

    iget-object p1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->mappingStrategy:Lcom/opencsv/bean/MappingStrategy;

    invoke-interface {p1}, Lcom/opencsv/bean/MappingStrategy;->generateHeader()[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    if-lez v0, :cond_30

    iget-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->csvwriter:Lcom/opencsv/CSVWriter;

    invoke-virtual {v0, p1}, Lcom/opencsv/CSVWriter;->writeNext([Ljava/lang/String;)V

    :cond_30
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->headerWritten:Z

    return-void
.end method

.method private prepareForParallelProcessing()V
    .registers 6

    new-instance v0, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;

    invoke-direct {v0}, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;-><init>()V

    iput-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->executor:Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;

    invoke-virtual {v0}, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;->prestartAllCoreThreads()I

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->resultantLineQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->thrownExceptionsQueue:Ljava/util/concurrent/BlockingQueue;

    iget-boolean v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->orderedResults:Z

    if-eqz v0, :cond_3c

    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->resultantBeansMap:Ljava/util/concurrent/ConcurrentNavigableMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->thrownExceptionsMap:Ljava/util/concurrent/ConcurrentNavigableMap;

    new-instance v0, Lcom/opencsv/bean/concurrent/AccumulateCsvResults;

    iget-object v1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->resultantLineQueue:Ljava/util/concurrent/BlockingQueue;

    iget-object v2, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->thrownExceptionsQueue:Ljava/util/concurrent/BlockingQueue;

    iget-object v3, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->resultantBeansMap:Ljava/util/concurrent/ConcurrentNavigableMap;

    iget-object v4, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->thrownExceptionsMap:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/opencsv/bean/concurrent/AccumulateCsvResults;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ConcurrentMap;Ljava/util/concurrent/ConcurrentMap;)V

    iput-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->accumulateThread:Lcom/opencsv/bean/concurrent/AccumulateCsvResults;

    invoke-virtual {v0}, Lcom/opencsv/bean/concurrent/AccumulateCsvResults;->start()V

    :cond_3c
    return-void
.end method

.method private submitAllLines(Ljava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->executor:Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;

    new-instance v11, Lcom/opencsv/bean/concurrent/ProcessCsvBean;

    iget v2, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->lineNumber:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->lineNumber:I

    int-to-long v3, v2

    iget-object v5, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->mappingStrategy:Lcom/opencsv/bean/MappingStrategy;

    iget-object v7, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->resultantLineQueue:Ljava/util/concurrent/BlockingQueue;

    iget-object v8, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->thrownExceptionsQueue:Ljava/util/concurrent/BlockingQueue;

    iget-boolean v9, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->throwExceptions:Z

    iget-object v10, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->errorLocale:Ljava/util/Locale;

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/opencsv/bean/concurrent/ProcessCsvBean;-><init>(JLcom/opencsv/bean/MappingStrategy;Ljava/lang/Object;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;ZLjava/util/Locale;)V

    invoke-virtual {v0, v11}, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_4

    :cond_2d
    iget-object p1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->executor:Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;

    invoke-virtual {p1}, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;->shutdown()V

    iget-object p1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->executor:Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;

    const-wide v2, 0x7fffffffffffffffL

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v2, v3, v0}, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    iget-object p1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->accumulateThread:Lcom/opencsv/bean/concurrent/AccumulateCsvResults;

    if-eqz p1, :cond_4a

    invoke-virtual {p1, v1}, Lcom/opencsv/bean/concurrent/AccumulateCsvResults;->setMustStop(Z)V

    iget-object p1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->accumulateThread:Lcom/opencsv/bean/concurrent/AccumulateCsvResults;

    invoke-virtual {p1}, Lcom/opencsv/bean/concurrent/AccumulateCsvResults;->join()V

    :cond_4a
    iget-object p1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->executor:Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;

    invoke-virtual {p1}, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;->getTerminalException()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_53

    return-void

    :cond_53
    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    invoke-direct {p1}, Ljava/util/concurrent/RejectedExecutionException;-><init>()V

    throw p1
.end method

.method private writeResultsOfParallelProcessingToFile()V
    .registers 4

    iget-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->thrownExceptionsMap:Ljava/util/concurrent/ConcurrentNavigableMap;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->resultantBeansMap:Ljava/util/concurrent/ConcurrentNavigableMap;

    if-eqz v0, :cond_31

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->thrownExceptionsMap:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentNavigableMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->capturedExceptions:Ljava/util/List;

    iget-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->resultantBeansMap:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->csvwriter:Lcom/opencsv/CSVWriter;

    invoke-virtual {v2, v1}, Lcom/opencsv/CSVWriter;->writeNext([Ljava/lang/String;)V

    goto :goto_1f

    :cond_31
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->thrownExceptionsQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->capturedExceptions:Ljava/util/List;

    :cond_3e
    :goto_3e
    iget-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->thrownExceptionsQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_60

    iget-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->thrownExceptionsQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/opencsv/bean/concurrent/OrderedObject;

    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Lcom/opencsv/bean/concurrent/OrderedObject;->getElement()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->capturedExceptions:Ljava/util/List;

    invoke-virtual {v0}, Lcom/opencsv/bean/concurrent/OrderedObject;->getElement()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    :cond_60
    :goto_60
    iget-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->resultantLineQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7e

    :try_start_68
    iget-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->resultantLineQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/opencsv/bean/concurrent/OrderedObject;

    iget-object v1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->csvwriter:Lcom/opencsv/CSVWriter;

    invoke-virtual {v0}, Lcom/opencsv/bean/concurrent/OrderedObject;->getElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/opencsv/CSVWriter;->writeNext([Ljava/lang/String;)V
    :try_end_7b
    .catch Ljava/lang/InterruptedException; {:try_start_68 .. :try_end_7b} :catch_7c

    goto :goto_60

    :catch_7c
    nop

    goto :goto_60

    :cond_7e
    return-void
.end method


# virtual methods
.method public getCapturedExceptions()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/opencsv/exceptions/CsvException;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->capturedExceptions:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->capturedExceptions:Ljava/util/List;

    return-object v0
.end method

.method public isThrowExceptions()Z
    .registers 2

    iget-boolean v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->throwExceptions:Z

    return v0
.end method

.method public setErrorLocale(Ljava/util/Locale;)V
    .registers 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    iput-object p1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->errorLocale:Ljava/util/Locale;

    return-void
.end method

.method public setOrderedResults(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->orderedResults:Z

    return-void
.end method

.method public write(Ljava/lang/Object;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvDataTypeMismatchException;,
            Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;
        }
    .end annotation

    if-eqz p1, :cond_a3

    iget-boolean v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->headerWritten:Z

    if-nez v0, :cond_9

    invoke-direct {p0, p1}, Lcom/opencsv/bean/StatefulBeanToCsv;->beforeFirstWrite(Ljava/lang/Object;)V

    :cond_9
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->resultantLineQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v8, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v8, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v8, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->thrownExceptionsQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Lcom/opencsv/bean/concurrent/ProcessCsvBean;

    iget v2, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->lineNumber:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->lineNumber:I

    int-to-long v3, v2

    iget-object v5, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->mappingStrategy:Lcom/opencsv/bean/MappingStrategy;

    iget-object v7, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->resultantLineQueue:Ljava/util/concurrent/BlockingQueue;

    iget-boolean v9, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->throwExceptions:Z

    iget-object v10, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->errorLocale:Ljava/util/Locale;

    move-object v2, v0

    move-object v6, p1

    invoke-direct/range {v2 .. v10}, Lcom/opencsv/bean/concurrent/ProcessCsvBean;-><init>(JLcom/opencsv/bean/MappingStrategy;Ljava/lang/Object;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;ZLjava/util/Locale;)V

    :try_start_2d
    invoke-virtual {v0}, Lcom/opencsv/bean/concurrent/ProcessCsvBean;->run()V
    :try_end_30
    .catch Ljava/lang/RuntimeException; {:try_start_2d .. :try_end_30} :catch_6e

    iget-object p1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->thrownExceptionsQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_52

    iget-object p1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->thrownExceptionsQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/opencsv/bean/concurrent/OrderedObject;

    if-eqz p1, :cond_a3

    invoke-virtual {p1}, Lcom/opencsv/bean/concurrent/OrderedObject;->getElement()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a3

    iget-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->capturedExceptions:Ljava/util/List;

    invoke-virtual {p1}, Lcom/opencsv/bean/concurrent/OrderedObject;->getElement()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a3

    :cond_52
    iget-object p1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->resultantLineQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/opencsv/bean/concurrent/OrderedObject;

    if-eqz p1, :cond_a3

    invoke-virtual {p1}, Lcom/opencsv/bean/concurrent/OrderedObject;->getElement()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a3

    iget-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->csvwriter:Lcom/opencsv/CSVWriter;

    invoke-virtual {p1}, Lcom/opencsv/bean/concurrent/OrderedObject;->getElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/opencsv/CSVWriter;->writeNext([Ljava/lang/String;)V

    goto :goto_a3

    :catch_6e
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_a2

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/opencsv/exceptions/CsvRuntimeException;

    if-nez v0, :cond_9b

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;

    if-nez v0, :cond_94

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;

    if-eqz v0, :cond_a2

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;

    throw p1

    :cond_94
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;

    throw p1

    :cond_9b
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Lcom/opencsv/exceptions/CsvRuntimeException;

    throw p1

    :cond_a2
    throw p1

    :cond_a3
    :goto_a3
    return-void
.end method

.method public write(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvDataTypeMismatchException;,
            Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;
        }
    .end annotation

    const-string v0, "error.writing.beans"

    const-string v1, "opencsv"

    invoke-static {p1}, Lorg/apache/commons/collections/CollectionUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_ac

    iget-boolean v2, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->headerWritten:Z

    if-nez v2, :cond_16

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/opencsv/bean/StatefulBeanToCsv;->beforeFirstWrite(Ljava/lang/Object;)V

    :cond_16
    invoke-direct {p0}, Lcom/opencsv/bean/StatefulBeanToCsv;->prepareForParallelProcessing()V

    const/4 v2, 0x1

    :try_start_1a
    invoke-direct {p0, p1}, Lcom/opencsv/bean/StatefulBeanToCsv;->submitAllLines(Ljava/util/List;)V
    :try_end_1d
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1a .. :try_end_1d} :catch_54
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1d} :catch_22

    invoke-direct {p0}, Lcom/opencsv/bean/StatefulBeanToCsv;->writeResultsOfParallelProcessingToFile()V

    goto/16 :goto_ac

    :catch_22
    move-exception p1

    iget-object v3, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->executor:Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;

    invoke-virtual {v3}, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    iget-object v3, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->accumulateThread:Lcom/opencsv/bean/concurrent/AccumulateCsvResults;

    if-eqz v3, :cond_31

    iget-object v3, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->accumulateThread:Lcom/opencsv/bean/concurrent/AccumulateCsvResults;

    invoke-virtual {v3, v2}, Lcom/opencsv/bean/concurrent/AccumulateCsvResults;->setMustStop(Z)V

    :cond_31
    iget-object v2, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->executor:Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;

    invoke-virtual {v2}, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;->getTerminalException()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_44

    iget-object p1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->executor:Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;

    invoke-virtual {p1}, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;->getTerminalException()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    :cond_44
    new-instance v2, Ljava/lang/RuntimeException;

    iget-object v3, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->errorLocale:Ljava/util/Locale;

    invoke-static {v1, v3}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_54
    iget-object p1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->accumulateThread:Lcom/opencsv/bean/concurrent/AccumulateCsvResults;

    if-eqz p1, :cond_5d

    iget-object p1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->accumulateThread:Lcom/opencsv/bean/concurrent/AccumulateCsvResults;

    invoke-virtual {p1, v2}, Lcom/opencsv/bean/concurrent/AccumulateCsvResults;->setMustStop(Z)V

    :cond_5d
    iget-object p1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->executor:Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;

    invoke-virtual {p1}, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;->getTerminalException()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/RuntimeException;

    if-nez p1, :cond_a3

    iget-object p1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->executor:Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;

    invoke-virtual {p1}, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;->getTerminalException()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;

    if-nez p1, :cond_9a

    iget-object p1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->executor:Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;

    invoke-virtual {p1}, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;->getTerminalException()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;

    if-eqz p1, :cond_84

    iget-object p1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->executor:Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;

    invoke-virtual {p1}, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;->getTerminalException()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;

    throw p1

    :cond_84
    new-instance p1, Ljava/lang/RuntimeException;

    iget-object v2, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->errorLocale:Ljava/util/Locale;

    invoke-static {v1, v2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->executor:Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;

    invoke-virtual {v1}, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;->getTerminalException()Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_9a
    iget-object p1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->executor:Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;

    invoke-virtual {p1}, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;->getTerminalException()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;

    throw p1

    :cond_a3
    iget-object p1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->executor:Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;

    invoke-virtual {p1}, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;->getTerminalException()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    :cond_ac
    :goto_ac
    return-void
.end method
