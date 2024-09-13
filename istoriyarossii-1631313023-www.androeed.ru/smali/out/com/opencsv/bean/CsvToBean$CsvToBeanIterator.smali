.class Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;
.super Ljava/lang/Object;
.source "CsvToBean.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opencsv/bean/CsvToBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CsvToBeanIterator"
.end annotation


# instance fields
.field private bean:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/opencsv/bean/CsvToBean;


# direct methods
.method public constructor <init>(Lcom/opencsv/bean/CsvToBean;)V
    .registers 4

    iput-object p1, p0, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;->this$0:Lcom/opencsv/bean/CsvToBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    invoke-static {p1, v0}, Lcom/opencsv/bean/CsvToBean;->access$002(Lcom/opencsv/bean/CsvToBean;Ljava/util/concurrent/BlockingQueue;)Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    invoke-static {p1, v0}, Lcom/opencsv/bean/CsvToBean;->access$102(Lcom/opencsv/bean/CsvToBean;Ljava/util/concurrent/BlockingQueue;)Ljava/util/concurrent/BlockingQueue;

    invoke-direct {p0}, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;->readSingleLine()V

    return-void
.end method

.method private processException()V
    .registers 4

    iget-object v0, p0, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;->this$0:Lcom/opencsv/bean/CsvToBean;

    invoke-static {v0}, Lcom/opencsv/bean/CsvToBean;->access$100(Lcom/opencsv/bean/CsvToBean;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/opencsv/bean/concurrent/OrderedObject;

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Lcom/opencsv/bean/concurrent/OrderedObject;->getElement()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;->this$0:Lcom/opencsv/bean/CsvToBean;

    invoke-static {v1}, Lcom/opencsv/bean/CsvToBean;->access$200(Lcom/opencsv/bean/CsvToBean;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_26

    iget-object v1, p0, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;->this$0:Lcom/opencsv/bean/CsvToBean;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Lcom/opencsv/bean/CsvToBean;->access$202(Lcom/opencsv/bean/CsvToBean;Ljava/util/List;)Ljava/util/List;

    :cond_26
    iget-object v1, p0, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;->this$0:Lcom/opencsv/bean/CsvToBean;

    invoke-static {v1}, Lcom/opencsv/bean/CsvToBean;->access$200(Lcom/opencsv/bean/CsvToBean;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/opencsv/bean/concurrent/OrderedObject;->getElement()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_33
    return-void
.end method

.method private readLineWithPossibleError()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;->bean:Ljava/lang/Object;

    :goto_3
    iget-object v1, p0, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;->bean:Ljava/lang/Object;

    if-nez v1, :cond_76

    iget-object v1, p0, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;->this$0:Lcom/opencsv/bean/CsvToBean;

    invoke-static {v1}, Lcom/opencsv/bean/CsvToBean;->access$400(Lcom/opencsv/bean/CsvToBean;)Lcom/opencsv/CSVReader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/opencsv/CSVReader;->readNext()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/opencsv/bean/CsvToBean;->access$302(Lcom/opencsv/bean/CsvToBean;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_76

    iget-object v1, p0, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;->this$0:Lcom/opencsv/bean/CsvToBean;

    invoke-static {v1}, Lcom/opencsv/bean/CsvToBean;->access$508(Lcom/opencsv/bean/CsvToBean;)J

    new-instance v1, Lcom/opencsv/bean/concurrent/ProcessCsvLine;

    iget-object v2, p0, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;->this$0:Lcom/opencsv/bean/CsvToBean;

    invoke-static {v2}, Lcom/opencsv/bean/CsvToBean;->access$500(Lcom/opencsv/bean/CsvToBean;)J

    move-result-wide v3

    iget-object v2, p0, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;->this$0:Lcom/opencsv/bean/CsvToBean;

    invoke-static {v2}, Lcom/opencsv/bean/CsvToBean;->access$600(Lcom/opencsv/bean/CsvToBean;)Lcom/opencsv/bean/MappingStrategy;

    move-result-object v5

    iget-object v2, p0, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;->this$0:Lcom/opencsv/bean/CsvToBean;

    invoke-static {v2}, Lcom/opencsv/bean/CsvToBean;->access$700(Lcom/opencsv/bean/CsvToBean;)Lcom/opencsv/bean/CsvToBeanFilter;

    move-result-object v6

    iget-object v2, p0, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;->this$0:Lcom/opencsv/bean/CsvToBean;

    invoke-static {v2}, Lcom/opencsv/bean/CsvToBean;->access$300(Lcom/opencsv/bean/CsvToBean;)[Ljava/lang/String;

    move-result-object v7

    iget-object v2, p0, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;->this$0:Lcom/opencsv/bean/CsvToBean;

    invoke-static {v2}, Lcom/opencsv/bean/CsvToBean;->access$000(Lcom/opencsv/bean/CsvToBean;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v8

    iget-object v2, p0, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;->this$0:Lcom/opencsv/bean/CsvToBean;

    invoke-static {v2}, Lcom/opencsv/bean/CsvToBean;->access$100(Lcom/opencsv/bean/CsvToBean;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v9

    iget-object v2, p0, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;->this$0:Lcom/opencsv/bean/CsvToBean;

    invoke-static {v2}, Lcom/opencsv/bean/CsvToBean;->access$800(Lcom/opencsv/bean/CsvToBean;)Z

    move-result v10

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Lcom/opencsv/bean/concurrent/ProcessCsvLine;-><init>(JLcom/opencsv/bean/MappingStrategy;Lcom/opencsv/bean/CsvToBeanFilter;[Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Z)V

    invoke-virtual {v1}, Lcom/opencsv/bean/concurrent/ProcessCsvLine;->run()V

    iget-object v1, p0, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;->this$0:Lcom/opencsv/bean/CsvToBean;

    invoke-static {v1}, Lcom/opencsv/bean/CsvToBean;->access$100(Lcom/opencsv/bean/CsvToBean;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5f

    invoke-direct {p0}, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;->processException()V

    goto :goto_3

    :cond_5f
    iget-object v1, p0, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;->this$0:Lcom/opencsv/bean/CsvToBean;

    invoke-static {v1}, Lcom/opencsv/bean/CsvToBean;->access$000(Lcom/opencsv/bean/CsvToBean;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/opencsv/bean/concurrent/OrderedObject;

    if-nez v1, :cond_6f

    move-object v1, v0

    goto :goto_73

    :cond_6f
    invoke-virtual {v1}, Lcom/opencsv/bean/concurrent/OrderedObject;->getElement()Ljava/lang/Object;

    move-result-object v1

    :goto_73
    iput-object v1, p0, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;->bean:Ljava/lang/Object;

    goto :goto_3

    :cond_76
    iget-object v1, p0, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;->this$0:Lcom/opencsv/bean/CsvToBean;

    invoke-static {v1}, Lcom/opencsv/bean/CsvToBean;->access$300(Lcom/opencsv/bean/CsvToBean;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_80

    iput-object v0, p0, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;->bean:Ljava/lang/Object;

    :cond_80
    return-void
.end method

.method private readSingleLine()V
    .registers 8

    :try_start_0
    invoke-direct {p0}, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;->readLineWithPossibleError()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception v0

    iget-object v1, p0, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;->this$0:Lcom/opencsv/bean/CsvToBean;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/opencsv/bean/CsvToBean;->access$302(Lcom/opencsv/bean/CsvToBean;[Ljava/lang/String;)[Ljava/lang/String;

    new-instance v1, Ljava/lang/RuntimeException;

    iget-object v2, p0, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;->this$0:Lcom/opencsv/bean/CsvToBean;

    invoke-static {v2}, Lcom/opencsv/bean/CsvToBean;->access$900(Lcom/opencsv/bean/CsvToBean;)Ljava/util/Locale;

    move-result-object v2

    const-string v3, "opencsv"

    invoke-static {v3, v2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v2

    const-string v3, "parsing.error"

    invoke-virtual {v2, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;->this$0:Lcom/opencsv/bean/CsvToBean;

    invoke-static {v5}, Lcom/opencsv/bean/CsvToBean;->access$500(Lcom/opencsv/bean/CsvToBean;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;->this$0:Lcom/opencsv/bean/CsvToBean;

    invoke-static {v5}, Lcom/opencsv/bean/CsvToBean;->access$300(Lcom/opencsv/bean/CsvToBean;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;->bean:Ljava/lang/Object;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;->bean:Ljava/lang/Object;

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;->readSingleLine()V

    return-object v0

    :cond_8
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    iget-object v1, p0, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;->this$0:Lcom/opencsv/bean/CsvToBean;

    invoke-static {v1}, Lcom/opencsv/bean/CsvToBean;->access$900(Lcom/opencsv/bean/CsvToBean;)Ljava/util/Locale;

    move-result-object v1

    const-string v2, "opencsv"

    invoke-static {v2, v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    const-string v2, "read.only.iterator"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
