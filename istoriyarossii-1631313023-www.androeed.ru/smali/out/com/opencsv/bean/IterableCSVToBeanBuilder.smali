.class public Lcom/opencsv/bean/IterableCSVToBeanBuilder;
.super Ljava/lang/Object;
.source "IterableCSVToBeanBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private csvReader:Lcom/opencsv/CSVReader;

.field private errorLocale:Ljava/util/Locale;

.field private filter:Lcom/opencsv/bean/CsvToBeanFilter;

.field private mapper:Lcom/opencsv/bean/MappingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/opencsv/bean/MappingStrategy<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/opencsv/bean/IterableCSVToBeanBuilder;->errorLocale:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public build()Lcom/opencsv/bean/IterableCSVToBean;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/opencsv/bean/IterableCSVToBean<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/opencsv/bean/IterableCSVToBeanBuilder;->mapper:Lcom/opencsv/bean/MappingStrategy;

    const-string v1, "opencsv"

    if-eqz v0, :cond_29

    iget-object v2, p0, Lcom/opencsv/bean/IterableCSVToBeanBuilder;->csvReader:Lcom/opencsv/CSVReader;

    if-eqz v2, :cond_17

    new-instance v1, Lcom/opencsv/bean/IterableCSVToBean;

    iget-object v3, p0, Lcom/opencsv/bean/IterableCSVToBeanBuilder;->filter:Lcom/opencsv/bean/CsvToBeanFilter;

    invoke-direct {v1, v2, v0, v3}, Lcom/opencsv/bean/IterableCSVToBean;-><init>(Lcom/opencsv/CSVReader;Lcom/opencsv/bean/MappingStrategy;Lcom/opencsv/bean/CsvToBeanFilter;)V

    iget-object v0, p0, Lcom/opencsv/bean/IterableCSVToBeanBuilder;->errorLocale:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Lcom/opencsv/bean/IterableCSVToBean;->setErrorLocale(Ljava/util/Locale;)V

    return-object v1

    :cond_17
    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v2, p0, Lcom/opencsv/bean/IterableCSVToBeanBuilder;->errorLocale:Ljava/util/Locale;

    invoke-static {v1, v2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    const-string v2, "csvreader.null"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v2, p0, Lcom/opencsv/bean/IterableCSVToBeanBuilder;->errorLocale:Ljava/util/Locale;

    invoke-static {v1, v2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    const-string v2, "strategy.undefined"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getCsvReader()Lcom/opencsv/CSVReader;
    .registers 2

    iget-object v0, p0, Lcom/opencsv/bean/IterableCSVToBeanBuilder;->csvReader:Lcom/opencsv/CSVReader;

    return-object v0
.end method

.method protected getFilter()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/opencsv/bean/IterableCSVToBeanBuilder;->filter:Lcom/opencsv/bean/CsvToBeanFilter;

    return-object v0
.end method

.method protected getStrategy()Lcom/opencsv/bean/MappingStrategy;
    .registers 2

    iget-object v0, p0, Lcom/opencsv/bean/IterableCSVToBeanBuilder;->mapper:Lcom/opencsv/bean/MappingStrategy;

    return-object v0
.end method

.method public withErrorLocale(Ljava/util/Locale;)Lcom/opencsv/bean/IterableCSVToBeanBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            ")",
            "Lcom/opencsv/bean/IterableCSVToBeanBuilder<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    iput-object p1, p0, Lcom/opencsv/bean/IterableCSVToBeanBuilder;->errorLocale:Ljava/util/Locale;

    return-object p0
.end method

.method public withFilter(Lcom/opencsv/bean/CsvToBeanFilter;)Lcom/opencsv/bean/IterableCSVToBeanBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opencsv/bean/CsvToBeanFilter;",
            ")",
            "Lcom/opencsv/bean/IterableCSVToBeanBuilder<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/opencsv/bean/IterableCSVToBeanBuilder;->filter:Lcom/opencsv/bean/CsvToBeanFilter;

    return-object p0
.end method

.method public withMapper(Lcom/opencsv/bean/MappingStrategy;)Lcom/opencsv/bean/IterableCSVToBeanBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opencsv/bean/MappingStrategy<",
            "TT;>;)",
            "Lcom/opencsv/bean/IterableCSVToBeanBuilder<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/opencsv/bean/IterableCSVToBeanBuilder;->mapper:Lcom/opencsv/bean/MappingStrategy;

    return-object p0
.end method

.method public withReader(Lcom/opencsv/CSVReader;)Lcom/opencsv/bean/IterableCSVToBeanBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opencsv/CSVReader;",
            ")",
            "Lcom/opencsv/bean/IterableCSVToBeanBuilder<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/opencsv/bean/IterableCSVToBeanBuilder;->csvReader:Lcom/opencsv/CSVReader;

    return-object p0
.end method
