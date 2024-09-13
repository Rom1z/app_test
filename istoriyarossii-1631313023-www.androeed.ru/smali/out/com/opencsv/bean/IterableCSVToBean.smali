.class public Lcom/opencsv/bean/IterableCSVToBean;
.super Lcom/opencsv/bean/AbstractCSVToBean;
.source "IterableCSVToBean.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/opencsv/bean/AbstractCSVToBean;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final csvReader:Lcom/opencsv/CSVReader;

.field private errorLocale:Ljava/util/Locale;

.field private final filter:Lcom/opencsv/bean/CsvToBeanFilter;

.field private hasHeader:Z

.field private final strategy:Lcom/opencsv/bean/MappingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/opencsv/bean/MappingStrategy<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/opencsv/CSVReader;Lcom/opencsv/bean/MappingStrategy;Lcom/opencsv/bean/CsvToBeanFilter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opencsv/CSVReader;",
            "Lcom/opencsv/bean/MappingStrategy<",
            "TT;>;",
            "Lcom/opencsv/bean/CsvToBeanFilter;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/opencsv/bean/AbstractCSVToBean;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/opencsv/bean/IterableCSVToBean;->errorLocale:Ljava/util/Locale;

    iput-object p1, p0, Lcom/opencsv/bean/IterableCSVToBean;->csvReader:Lcom/opencsv/CSVReader;

    iput-object p2, p0, Lcom/opencsv/bean/IterableCSVToBean;->strategy:Lcom/opencsv/bean/MappingStrategy;

    iput-object p3, p0, Lcom/opencsv/bean/IterableCSVToBean;->filter:Lcom/opencsv/bean/CsvToBeanFilter;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/opencsv/bean/IterableCSVToBean;->hasHeader:Z

    return-void
.end method

.method static synthetic access$000(Lcom/opencsv/bean/IterableCSVToBean;)Ljava/util/Locale;
    .registers 1

    iget-object p0, p0, Lcom/opencsv/bean/IterableCSVToBean;->errorLocale:Ljava/util/Locale;

    return-object p0
.end method

.method private iterator(Lcom/opencsv/bean/IterableCSVToBean;)Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opencsv/bean/IterableCSVToBean<",
            "TT;>;)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/opencsv/bean/IterableCSVToBean$1;

    invoke-direct {v0, p0, p1}, Lcom/opencsv/bean/IterableCSVToBean$1;-><init>(Lcom/opencsv/bean/IterableCSVToBean;Lcom/opencsv/bean/IterableCSVToBean;)V

    return-object v0
.end method


# virtual methods
.method protected getCSVReader()Lcom/opencsv/CSVReader;
    .registers 2

    iget-object v0, p0, Lcom/opencsv/bean/IterableCSVToBean;->csvReader:Lcom/opencsv/CSVReader;

    return-object v0
.end method

.method protected getFilter()Lcom/opencsv/bean/CsvToBeanFilter;
    .registers 2

    iget-object v0, p0, Lcom/opencsv/bean/IterableCSVToBean;->filter:Lcom/opencsv/bean/CsvToBeanFilter;

    return-object v0
.end method

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

    invoke-virtual {p0, p1}, Lcom/opencsv/bean/IterableCSVToBean;->getPropertyEditorValue(Ljava/lang/Class;)Ljava/beans/PropertyEditor;

    move-result-object p1

    return-object p1
.end method

.method protected getStrategy()Lcom/opencsv/bean/MappingStrategy;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/opencsv/bean/MappingStrategy<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/opencsv/bean/IterableCSVToBean;->strategy:Lcom/opencsv/bean/MappingStrategy;

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

    invoke-direct {p0, p0}, Lcom/opencsv/bean/IterableCSVToBean;->iterator(Lcom/opencsv/bean/IterableCSVToBean;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public nextLine()Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;,
            Ljava/io/IOException;,
            Ljava/beans/IntrospectionException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/opencsv/bean/IterableCSVToBean;->hasHeader:Z

    const/4 v1, 0x1

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/opencsv/bean/IterableCSVToBean;->strategy:Lcom/opencsv/bean/MappingStrategy;

    iget-object v2, p0, Lcom/opencsv/bean/IterableCSVToBean;->csvReader:Lcom/opencsv/CSVReader;

    invoke-interface {v0, v2}, Lcom/opencsv/bean/MappingStrategy;->captureHeader(Lcom/opencsv/CSVReader;)V

    iput-boolean v1, p0, Lcom/opencsv/bean/IterableCSVToBean;->hasHeader:Z

    :cond_e
    const/4 v0, 0x0

    :cond_f
    iget-object v2, p0, Lcom/opencsv/bean/IterableCSVToBean;->csvReader:Lcom/opencsv/CSVReader;

    invoke-virtual {v2}, Lcom/opencsv/CSVReader;->readNext()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_21

    iget-object v3, p0, Lcom/opencsv/bean/IterableCSVToBean;->filter:Lcom/opencsv/bean/CsvToBeanFilter;

    if-eqz v3, :cond_21

    invoke-interface {v3, v2}, Lcom/opencsv/bean/CsvToBeanFilter;->allowLine([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    :cond_21
    if-eqz v2, :cond_54

    iget-object v0, p0, Lcom/opencsv/bean/IterableCSVToBean;->strategy:Lcom/opencsv/bean/MappingStrategy;

    array-length v3, v2

    invoke-interface {v0, v3}, Lcom/opencsv/bean/MappingStrategy;->verifyLineLength(I)V

    iget-object v0, p0, Lcom/opencsv/bean/IterableCSVToBean;->strategy:Lcom/opencsv/bean/MappingStrategy;

    invoke-interface {v0}, Lcom/opencsv/bean/MappingStrategy;->createBean()Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_31
    array-length v5, v2

    if-ge v4, v5, :cond_54

    iget-object v5, p0, Lcom/opencsv/bean/IterableCSVToBean;->strategy:Lcom/opencsv/bean/MappingStrategy;

    invoke-interface {v5, v4}, Lcom/opencsv/bean/MappingStrategy;->findDescriptor(I)Ljava/beans/PropertyDescriptor;

    move-result-object v5

    if-eqz v5, :cond_51

    aget-object v6, v2, v4

    invoke-virtual {p0, v6, v5}, Lcom/opencsv/bean/IterableCSVToBean;->checkForTrim(Ljava/lang/String;Ljava/beans/PropertyDescriptor;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v5}, Lcom/opencsv/bean/IterableCSVToBean;->convertValue(Ljava/lang/String;Ljava/beans/PropertyDescriptor;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v6, v7, v3

    invoke-virtual {v5, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_51
    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    :cond_54
    return-object v0
.end method

.method public setErrorLocale(Ljava/util/Locale;)V
    .registers 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    iput-object p1, p0, Lcom/opencsv/bean/IterableCSVToBean;->errorLocale:Ljava/util/Locale;

    return-void
.end method
