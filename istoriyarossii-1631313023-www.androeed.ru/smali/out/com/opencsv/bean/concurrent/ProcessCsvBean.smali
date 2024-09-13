.class public Lcom/opencsv/bean/concurrent/ProcessCsvBean;
.super Ljava/lang/Object;
.source "ProcessCsvBean.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final bean:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final contents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final errorLocale:Ljava/util/Locale;

.field private final lineNumber:J

.field private final mappingStrategy:Lcom/opencsv/bean/MappingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/opencsv/bean/MappingStrategy<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final resultantLineQueue:Ljava/util/concurrent/BlockingQueue;
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
.method public constructor <init>(JLcom/opencsv/bean/MappingStrategy;Ljava/lang/Object;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;ZLjava/util/Locale;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/opencsv/bean/MappingStrategy<",
            "TT;>;TT;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/opencsv/bean/concurrent/OrderedObject<",
            "[",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/opencsv/bean/concurrent/OrderedObject<",
            "Lcom/opencsv/exceptions/CsvException;",
            ">;>;Z",
            "Ljava/util/Locale;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/opencsv/bean/concurrent/ProcessCsvBean;->contents:Ljava/util/List;

    iput-wide p1, p0, Lcom/opencsv/bean/concurrent/ProcessCsvBean;->lineNumber:J

    iput-object p3, p0, Lcom/opencsv/bean/concurrent/ProcessCsvBean;->mappingStrategy:Lcom/opencsv/bean/MappingStrategy;

    iput-object p4, p0, Lcom/opencsv/bean/concurrent/ProcessCsvBean;->bean:Ljava/lang/Object;

    iput-object p5, p0, Lcom/opencsv/bean/concurrent/ProcessCsvBean;->resultantLineQueue:Ljava/util/concurrent/BlockingQueue;

    iput-object p6, p0, Lcom/opencsv/bean/concurrent/ProcessCsvBean;->thrownExceptionsQueue:Ljava/util/concurrent/BlockingQueue;

    iput-boolean p7, p0, Lcom/opencsv/bean/concurrent/ProcessCsvBean;->throwExceptions:Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p8, p1}, Lorg/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    iput-object p1, p0, Lcom/opencsv/bean/concurrent/ProcessCsvBean;->errorLocale:Ljava/util/Locale;

    return-void
.end method

.method private writeWithIntrospection(I)V
    .registers 7

    const/4 v0, 0x0

    :goto_1
    if-gt v0, p1, :cond_45

    const/4 v1, 0x0

    :try_start_4
    iget-object v2, p0, Lcom/opencsv/bean/concurrent/ProcessCsvBean;->mappingStrategy:Lcom/opencsv/bean/MappingStrategy;

    invoke-interface {v2, v0}, Lcom/opencsv/bean/MappingStrategy;->findDescriptor(I)Ljava/beans/PropertyDescriptor;

    move-result-object v2

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v3, p0, Lcom/opencsv/bean/concurrent/ProcessCsvBean;->bean:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1b

    :cond_1a
    move-object v2, v1

    :goto_1b
    iget-object v3, p0, Lcom/opencsv/bean/concurrent/ProcessCsvBean;->contents:Ljava/util/List;

    const-string v4, ""

    invoke-static {v2, v4}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_26
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_26} :catch_2b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_26} :catch_29

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_29
    move-exception p1

    goto :goto_2c

    :catch_2b
    move-exception p1

    :goto_2c
    new-instance v0, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;

    iget-object v2, p0, Lcom/opencsv/bean/concurrent/ProcessCsvBean;->bean:Ljava/lang/Object;

    iget-object v3, p0, Lcom/opencsv/bean/concurrent/ProcessCsvBean;->errorLocale:Ljava/util/Locale;

    const-string v4, "opencsv"

    invoke-static {v4, v3}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v3

    const-string v4, "error.introspecting.beans"

    invoke-virtual {v3, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0

    :cond_45
    return-void
.end method

.method private writeWithReflection(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvDataTypeMismatchException;,
            Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    if-gt v0, p1, :cond_20

    iget-object v1, p0, Lcom/opencsv/bean/concurrent/ProcessCsvBean;->mappingStrategy:Lcom/opencsv/bean/MappingStrategy;

    invoke-interface {v1, v0}, Lcom/opencsv/bean/MappingStrategy;->findField(I)Lcom/opencsv/bean/BeanField;

    move-result-object v1

    if-eqz v1, :cond_12

    iget-object v2, p0, Lcom/opencsv/bean/concurrent/ProcessCsvBean;->bean:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lcom/opencsv/bean/BeanField;->write(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_14

    :cond_12
    const-string v1, ""

    :goto_14
    iget-object v2, p0, Lcom/opencsv/bean/concurrent/ProcessCsvBean;->contents:Ljava/util/List;

    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_20
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    :try_start_0
    iget-object v0, p0, Lcom/opencsv/bean/concurrent/ProcessCsvBean;->mappingStrategy:Lcom/opencsv/bean/MappingStrategy;

    invoke-interface {v0}, Lcom/opencsv/bean/MappingStrategy;->findMaxFieldIndex()I

    move-result v0

    iget-object v1, p0, Lcom/opencsv/bean/concurrent/ProcessCsvBean;->mappingStrategy:Lcom/opencsv/bean/MappingStrategy;

    invoke-interface {v1}, Lcom/opencsv/bean/MappingStrategy;->isAnnotationDriven()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-direct {p0, v0}, Lcom/opencsv/bean/concurrent/ProcessCsvBean;->writeWithReflection(I)V

    goto :goto_15

    :cond_12
    invoke-direct {p0, v0}, Lcom/opencsv/bean/concurrent/ProcessCsvBean;->writeWithIntrospection(I)V

    :goto_15
    iget-object v0, p0, Lcom/opencsv/bean/concurrent/ProcessCsvBean;->resultantLineQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Lcom/opencsv/bean/concurrent/OrderedObject;

    iget-wide v2, p0, Lcom/opencsv/bean/concurrent/ProcessCsvBean;->lineNumber:J

    iget-object v4, p0, Lcom/opencsv/bean/concurrent/ProcessCsvBean;->contents:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/opencsv/bean/concurrent/OrderedObject;-><init>(JLjava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/opencsv/bean/opencsvUtils;->queueRefuseToAcceptDefeat(Ljava/util/concurrent/BlockingQueue;Ljava/lang/Object;)V
    :try_end_2d
    .catch Lcom/opencsv/exceptions/CsvException; {:try_start_0 .. :try_end_2d} :catch_37
    .catch Lcom/opencsv/exceptions/CsvRuntimeException; {:try_start_0 .. :try_end_2d} :catch_35
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_2e

    goto :goto_4d

    :catch_2e
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_35
    move-exception v0

    throw v0

    :catch_37
    move-exception v0

    iget-wide v1, p0, Lcom/opencsv/bean/concurrent/ProcessCsvBean;->lineNumber:J

    invoke-virtual {v0, v1, v2}, Lcom/opencsv/exceptions/CsvException;->setLineNumber(J)V

    iget-boolean v1, p0, Lcom/opencsv/bean/concurrent/ProcessCsvBean;->throwExceptions:Z

    if-nez v1, :cond_4e

    iget-object v1, p0, Lcom/opencsv/bean/concurrent/ProcessCsvBean;->thrownExceptionsQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v2, Lcom/opencsv/bean/concurrent/OrderedObject;

    iget-wide v3, p0, Lcom/opencsv/bean/concurrent/ProcessCsvBean;->lineNumber:J

    invoke-direct {v2, v3, v4, v0}, Lcom/opencsv/bean/concurrent/OrderedObject;-><init>(JLjava/lang/Object;)V

    invoke-static {v1, v2}, Lcom/opencsv/bean/opencsvUtils;->queueRefuseToAcceptDefeat(Ljava/util/concurrent/BlockingQueue;Ljava/lang/Object;)V

    :goto_4d
    return-void

    :cond_4e
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
