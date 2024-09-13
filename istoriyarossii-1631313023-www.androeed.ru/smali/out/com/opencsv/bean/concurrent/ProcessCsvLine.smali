.class public Lcom/opencsv/bean/concurrent/ProcessCsvLine;
.super Lcom/opencsv/bean/AbstractCSVToBean;
.source "ProcessCsvLine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/opencsv/bean/AbstractCSVToBean;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field bean:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final filter:Lcom/opencsv/bean/CsvToBeanFilter;

.field private final line:[Ljava/lang/String;

.field private final lineNumber:J

.field private final mapper:Lcom/opencsv/bean/MappingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/opencsv/bean/MappingStrategy<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final resultantBeanQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/opencsv/bean/concurrent/OrderedObject<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final throwExceptions:Z

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
.method public constructor <init>(JLcom/opencsv/bean/MappingStrategy;Lcom/opencsv/bean/CsvToBeanFilter;[Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/opencsv/bean/MappingStrategy<",
            "TT;>;",
            "Lcom/opencsv/bean/CsvToBeanFilter;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/opencsv/bean/concurrent/OrderedObject<",
            "TT;>;>;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/opencsv/bean/concurrent/OrderedObject<",
            "Lcom/opencsv/exceptions/CsvException;",
            ">;>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/opencsv/bean/AbstractCSVToBean;-><init>()V

    iput-wide p1, p0, Lcom/opencsv/bean/concurrent/ProcessCsvLine;->lineNumber:J

    iput-object p3, p0, Lcom/opencsv/bean/concurrent/ProcessCsvLine;->mapper:Lcom/opencsv/bean/MappingStrategy;

    iput-object p4, p0, Lcom/opencsv/bean/concurrent/ProcessCsvLine;->filter:Lcom/opencsv/bean/CsvToBeanFilter;

    iput-object p5, p0, Lcom/opencsv/bean/concurrent/ProcessCsvLine;->line:[Ljava/lang/String;

    iput-object p6, p0, Lcom/opencsv/bean/concurrent/ProcessCsvLine;->resultantBeanQueue:Ljava/util/concurrent/BlockingQueue;

    iput-object p7, p0, Lcom/opencsv/bean/concurrent/ProcessCsvLine;->thrownExceptionsQueue:Ljava/util/concurrent/BlockingQueue;

    iput-boolean p8, p0, Lcom/opencsv/bean/concurrent/ProcessCsvLine;->throwExceptions:Z

    return-void
.end method

.method private processField(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvBadConverterException;,
            Lcom/opencsv/exceptions/CsvDataTypeMismatchException;,
            Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;,
            Lcom/opencsv/exceptions/CsvConstraintViolationException;
        }
    .end annotation

    iget-object v0, p0, Lcom/opencsv/bean/concurrent/ProcessCsvLine;->mapper:Lcom/opencsv/bean/MappingStrategy;

    invoke-interface {v0, p1}, Lcom/opencsv/bean/MappingStrategy;->findField(I)Lcom/opencsv/bean/BeanField;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v1, p0, Lcom/opencsv/bean/concurrent/ProcessCsvLine;->line:[Ljava/lang/String;

    aget-object p1, v1, p1

    iget-object v1, p0, Lcom/opencsv/bean/concurrent/ProcessCsvLine;->bean:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/opencsv/bean/BeanField;->setFieldValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method private processLine()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/InstantiationException;,
            Ljava/beans/IntrospectionException;,
            Lcom/opencsv/exceptions/CsvBadConverterException;,
            Lcom/opencsv/exceptions/CsvDataTypeMismatchException;,
            Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;,
            Lcom/opencsv/exceptions/CsvConstraintViolationException;
        }
    .end annotation

    iget-object v0, p0, Lcom/opencsv/bean/concurrent/ProcessCsvLine;->mapper:Lcom/opencsv/bean/MappingStrategy;

    iget-object v1, p0, Lcom/opencsv/bean/concurrent/ProcessCsvLine;->line:[Ljava/lang/String;

    array-length v1, v1

    invoke-interface {v0, v1}, Lcom/opencsv/bean/MappingStrategy;->verifyLineLength(I)V

    iget-object v0, p0, Lcom/opencsv/bean/concurrent/ProcessCsvLine;->mapper:Lcom/opencsv/bean/MappingStrategy;

    invoke-interface {v0}, Lcom/opencsv/bean/MappingStrategy;->createBean()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/opencsv/bean/concurrent/ProcessCsvLine;->bean:Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_11
    iget-object v1, p0, Lcom/opencsv/bean/concurrent/ProcessCsvLine;->line:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_28

    iget-object v1, p0, Lcom/opencsv/bean/concurrent/ProcessCsvLine;->mapper:Lcom/opencsv/bean/MappingStrategy;

    invoke-interface {v1}, Lcom/opencsv/bean/MappingStrategy;->isAnnotationDriven()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-direct {p0, v0}, Lcom/opencsv/bean/concurrent/ProcessCsvLine;->processField(I)V

    goto :goto_25

    :cond_22
    invoke-direct {p0, v0}, Lcom/opencsv/bean/concurrent/ProcessCsvLine;->processProperty(I)V

    :goto_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_28
    iget-object v0, p0, Lcom/opencsv/bean/concurrent/ProcessCsvLine;->bean:Ljava/lang/Object;

    return-object v0
.end method

.method private processProperty(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/IntrospectionException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Lcom/opencsv/exceptions/CsvBadConverterException;
        }
    .end annotation

    iget-object v0, p0, Lcom/opencsv/bean/concurrent/ProcessCsvLine;->mapper:Lcom/opencsv/bean/MappingStrategy;

    invoke-interface {v0, p1}, Lcom/opencsv/bean/MappingStrategy;->findDescriptor(I)Ljava/beans/PropertyDescriptor;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v1, p0, Lcom/opencsv/bean/concurrent/ProcessCsvLine;->line:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-virtual {p0, p1, v0}, Lcom/opencsv/bean/concurrent/ProcessCsvLine;->checkForTrim(Ljava/lang/String;Ljava/beans/PropertyDescriptor;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/opencsv/bean/concurrent/ProcessCsvLine;->convertValue(Ljava/lang/String;Ljava/beans/PropertyDescriptor;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/opencsv/bean/concurrent/ProcessCsvLine;->bean:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    return-void
.end method


# virtual methods
.method protected getPropertyEditor(Ljava/beans/PropertyDescriptor;)Ljava/beans/PropertyEditor;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/beans/PropertyDescriptor;->getPropertyEditorClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/beans/PropertyEditor;

    return-object p1

    :cond_d
    invoke-virtual {p1}, Ljava/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/opencsv/bean/concurrent/ProcessCsvLine;->getPropertyEditorValue(Ljava/lang/Class;)Ljava/beans/PropertyEditor;

    move-result-object p1

    return-object p1
.end method

.method public run()V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/opencsv/bean/concurrent/ProcessCsvLine;->filter:Lcom/opencsv/bean/CsvToBeanFilter;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/opencsv/bean/concurrent/ProcessCsvLine;->line:[Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/opencsv/bean/CsvToBeanFilter;->allowLine([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    :cond_c
    invoke-direct {p0}, Lcom/opencsv/bean/concurrent/ProcessCsvLine;->processLine()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/opencsv/bean/concurrent/ProcessCsvLine;->resultantBeanQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v2, Lcom/opencsv/bean/concurrent/OrderedObject;

    iget-wide v3, p0, Lcom/opencsv/bean/concurrent/ProcessCsvLine;->lineNumber:J

    invoke-direct {v2, v3, v4, v0}, Lcom/opencsv/bean/concurrent/OrderedObject;-><init>(JLjava/lang/Object;)V

    invoke-static {v1, v2}, Lcom/opencsv/bean/opencsvUtils;->queueRefuseToAcceptDefeat(Ljava/util/concurrent/BlockingQueue;Ljava/lang/Object;)V
    :try_end_1c
    .catch Lcom/opencsv/exceptions/CsvException; {:try_start_0 .. :try_end_1c} :catch_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    goto :goto_3a

    :catch_1d
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_24
    move-exception v0

    iget-wide v1, p0, Lcom/opencsv/bean/concurrent/ProcessCsvLine;->lineNumber:J

    invoke-virtual {v0, v1, v2}, Lcom/opencsv/exceptions/CsvException;->setLineNumber(J)V

    iget-boolean v1, p0, Lcom/opencsv/bean/concurrent/ProcessCsvLine;->throwExceptions:Z

    if-nez v1, :cond_3b

    iget-object v1, p0, Lcom/opencsv/bean/concurrent/ProcessCsvLine;->thrownExceptionsQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v2, Lcom/opencsv/bean/concurrent/OrderedObject;

    iget-wide v3, p0, Lcom/opencsv/bean/concurrent/ProcessCsvLine;->lineNumber:J

    invoke-direct {v2, v3, v4, v0}, Lcom/opencsv/bean/concurrent/OrderedObject;-><init>(JLjava/lang/Object;)V

    invoke-static {v1, v2}, Lcom/opencsv/bean/opencsvUtils;->queueRefuseToAcceptDefeat(Ljava/util/concurrent/BlockingQueue;Ljava/lang/Object;)V

    :cond_3a
    :goto_3a
    return-void

    :cond_3b
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
