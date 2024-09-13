.class public Lcom/opencsv/bean/CsvToBeanBuilder;
.super Ljava/lang/Object;
.source "CsvToBeanBuilder.java"


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
.field private errorLocale:Ljava/util/Locale;

.field private escapeChar:Ljava/lang/Character;

.field private filter:Lcom/opencsv/bean/CsvToBeanFilter;

.field private ignoreLeadingWhiteSpace:Ljava/lang/Boolean;

.field private ignoreQuotations:Ljava/lang/Boolean;

.field private keepCR:Z

.field private mappingStrategy:Lcom/opencsv/bean/MappingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/opencsv/bean/MappingStrategy<",
            "TT;>;"
        }
    .end annotation
.end field

.field private multilineLimit:Ljava/lang/Integer;

.field private nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

.field private orderedResults:Z

.field private quoteChar:Ljava/lang/Character;

.field private final reader:Ljava/io/Reader;

.field private separator:Ljava/lang/Character;

.field private skipLines:Ljava/lang/Integer;

.field private strictQuotes:Ljava/lang/Boolean;

.field private throwExceptions:Z

.field private type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private verifyReader:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>()V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->mappingStrategy:Lcom/opencsv/bean/MappingStrategy;

    iput-object v0, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->filter:Lcom/opencsv/bean/CsvToBeanFilter;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->throwExceptions:Z

    iput-object v0, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    iput-object v0, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->skipLines:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->verifyReader:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->separator:Ljava/lang/Character;

    iput-object v0, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->quoteChar:Ljava/lang/Character;

    iput-object v0, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->escapeChar:Ljava/lang/Character;

    iput-object v0, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->strictQuotes:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->ignoreLeadingWhiteSpace:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->ignoreQuotations:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->type:Ljava/lang/Class;

    iput-object v0, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->multilineLimit:Ljava/lang/Integer;

    iput-boolean v1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->orderedResults:Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    iput-object v2, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->errorLocale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->reader:Ljava/io/Reader;

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "opencsv"

    invoke-static {v2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v2

    const-string v3, "nullary.constructor.not.allowed"

    invoke-virtual {v2, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->mappingStrategy:Lcom/opencsv/bean/MappingStrategy;

    iput-object v0, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->filter:Lcom/opencsv/bean/CsvToBeanFilter;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->throwExceptions:Z

    iput-object v0, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    iput-object v0, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->skipLines:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->verifyReader:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->separator:Ljava/lang/Character;

    iput-object v0, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->quoteChar:Ljava/lang/Character;

    iput-object v0, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->escapeChar:Ljava/lang/Character;

    iput-object v0, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->strictQuotes:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->ignoreLeadingWhiteSpace:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->ignoreQuotations:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->type:Ljava/lang/Class;

    iput-object v0, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->multilineLimit:Ljava/lang/Integer;

    iput-boolean v1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->orderedResults:Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->errorLocale:Ljava/util/Locale;

    if-eqz p1, :cond_2e

    iput-object p1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->reader:Ljava/io/Reader;

    return-void

    :cond_2e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "opencsv"

    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    const-string v1, "reader.null"

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private buildParser()Lcom/opencsv/CSVParser;
    .registers 3

    new-instance v0, Lcom/opencsv/CSVParserBuilder;

    invoke-direct {v0}, Lcom/opencsv/CSVParserBuilder;-><init>()V

    iget-object v1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    if-eqz v1, :cond_c

    invoke-virtual {v0, v1}, Lcom/opencsv/CSVParserBuilder;->withFieldAsNull(Lcom/opencsv/enums/CSVReaderNullFieldIndicator;)Lcom/opencsv/CSVParserBuilder;

    :cond_c
    iget-object v1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->separator:Ljava/lang/Character;

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-virtual {v0, v1}, Lcom/opencsv/CSVParserBuilder;->withSeparator(C)Lcom/opencsv/CSVParserBuilder;

    :cond_17
    iget-object v1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->quoteChar:Ljava/lang/Character;

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-virtual {v0, v1}, Lcom/opencsv/CSVParserBuilder;->withQuoteChar(C)Lcom/opencsv/CSVParserBuilder;

    :cond_22
    iget-object v1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->escapeChar:Ljava/lang/Character;

    if-eqz v1, :cond_2d

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-virtual {v0, v1}, Lcom/opencsv/CSVParserBuilder;->withEscapeChar(C)Lcom/opencsv/CSVParserBuilder;

    :cond_2d
    iget-object v1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->strictQuotes:Ljava/lang/Boolean;

    if-eqz v1, :cond_38

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/opencsv/CSVParserBuilder;->withStrictQuotes(Z)Lcom/opencsv/CSVParserBuilder;

    :cond_38
    iget-object v1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->ignoreLeadingWhiteSpace:Ljava/lang/Boolean;

    if-eqz v1, :cond_43

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/opencsv/CSVParserBuilder;->withIgnoreLeadingWhiteSpace(Z)Lcom/opencsv/CSVParserBuilder;

    :cond_43
    iget-object v1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->ignoreQuotations:Ljava/lang/Boolean;

    if-eqz v1, :cond_4e

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/opencsv/CSVParserBuilder;->withIgnoreQuotations(Z)Lcom/opencsv/CSVParserBuilder;

    :cond_4e
    iget-object v1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->errorLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Lcom/opencsv/CSVParserBuilder;->withErrorLocale(Ljava/util/Locale;)Lcom/opencsv/CSVParserBuilder;

    invoke-virtual {v0}, Lcom/opencsv/CSVParserBuilder;->build()Lcom/opencsv/CSVParser;

    move-result-object v0

    return-object v0
.end method

.method private buildReader(Lcom/opencsv/CSVParser;)Lcom/opencsv/CSVReader;
    .registers 4

    new-instance v0, Lcom/opencsv/CSVReaderBuilder;

    iget-object v1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->reader:Ljava/io/Reader;

    invoke-direct {v0, v1}, Lcom/opencsv/CSVReaderBuilder;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0, p1}, Lcom/opencsv/CSVReaderBuilder;->withCSVParser(Lcom/opencsv/ICSVParser;)Lcom/opencsv/CSVReaderBuilder;

    iget-boolean p1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->keepCR:Z

    invoke-virtual {v0, p1}, Lcom/opencsv/CSVReaderBuilder;->withKeepCarriageReturn(Z)Lcom/opencsv/CSVReaderBuilder;

    iget-object p1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->verifyReader:Ljava/lang/Boolean;

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/opencsv/CSVReaderBuilder;->withVerifyReader(Z)Lcom/opencsv/CSVReaderBuilder;

    :cond_1a
    iget-object p1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->skipLines:Ljava/lang/Integer;

    if-eqz p1, :cond_25

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/opencsv/CSVReaderBuilder;->withSkipLines(I)Lcom/opencsv/CSVReaderBuilder;

    :cond_25
    iget-object p1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->multilineLimit:Ljava/lang/Integer;

    if-eqz p1, :cond_30

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/opencsv/CSVReaderBuilder;->withMultilineLimit(I)Lcom/opencsv/CSVReaderBuilder;

    :cond_30
    iget-object p1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->errorLocale:Ljava/util/Locale;

    invoke-virtual {v0, p1}, Lcom/opencsv/CSVReaderBuilder;->withErrorLocale(Ljava/util/Locale;)Lcom/opencsv/CSVReaderBuilder;

    invoke-virtual {v0}, Lcom/opencsv/CSVReaderBuilder;->build()Lcom/opencsv/CSVReader;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public build()Lcom/opencsv/bean/CsvToBean;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/opencsv/bean/CsvToBean<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->mappingStrategy:Lcom/opencsv/bean/MappingStrategy;

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->type:Ljava/lang/Class;

    if-eqz v0, :cond_9

    goto :goto_1d

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->errorLocale:Ljava/util/Locale;

    const-string v2, "opencsv"

    invoke-static {v2, v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    const-string v2, "strategy.type.missing"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    :goto_1d
    new-instance v0, Lcom/opencsv/bean/CsvToBean;

    invoke-direct {v0}, Lcom/opencsv/bean/CsvToBean;-><init>()V

    invoke-direct {p0}, Lcom/opencsv/bean/CsvToBeanBuilder;->buildParser()Lcom/opencsv/CSVParser;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/opencsv/bean/CsvToBeanBuilder;->buildReader(Lcom/opencsv/CSVParser;)Lcom/opencsv/CSVReader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/opencsv/bean/CsvToBean;->setCsvReader(Lcom/opencsv/CSVReader;)V

    iget-boolean v1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->throwExceptions:Z

    invoke-virtual {v0, v1}, Lcom/opencsv/bean/CsvToBean;->setThrowExceptions(Z)V

    iget-boolean v1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->orderedResults:Z

    invoke-virtual {v0, v1}, Lcom/opencsv/bean/CsvToBean;->setOrderedResults(Z)V

    iget-object v1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->errorLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Lcom/opencsv/bean/CsvToBean;->setErrorLocale(Ljava/util/Locale;)V

    iget-object v1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->filter:Lcom/opencsv/bean/CsvToBeanFilter;

    if-eqz v1, :cond_43

    invoke-virtual {v0, v1}, Lcom/opencsv/bean/CsvToBean;->setFilter(Lcom/opencsv/bean/CsvToBeanFilter;)V

    :cond_43
    iget-object v1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->mappingStrategy:Lcom/opencsv/bean/MappingStrategy;

    if-nez v1, :cond_51

    iget-object v1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->type:Ljava/lang/Class;

    iget-object v2, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->errorLocale:Ljava/util/Locale;

    invoke-static {v1, v2}, Lcom/opencsv/bean/opencsvUtils;->determineMappingStrategy(Ljava/lang/Class;Ljava/util/Locale;)Lcom/opencsv/bean/MappingStrategy;

    move-result-object v1

    iput-object v1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->mappingStrategy:Lcom/opencsv/bean/MappingStrategy;

    :cond_51
    iget-object v1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->mappingStrategy:Lcom/opencsv/bean/MappingStrategy;

    invoke-virtual {v0, v1}, Lcom/opencsv/bean/CsvToBean;->setMappingStrategy(Lcom/opencsv/bean/MappingStrategy;)V

    return-object v0
.end method

.method public withErrorLocale(Ljava/util/Locale;)Lcom/opencsv/bean/CsvToBeanBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            ")",
            "Lcom/opencsv/bean/CsvToBeanBuilder<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    iput-object p1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->errorLocale:Ljava/util/Locale;

    return-object p0
.end method

.method public withEscapeChar(C)Lcom/opencsv/bean/CsvToBeanBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)",
            "Lcom/opencsv/bean/CsvToBeanBuilder<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    iput-object p1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->escapeChar:Ljava/lang/Character;

    return-object p0
.end method

.method public withFieldAsNull(Lcom/opencsv/enums/CSVReaderNullFieldIndicator;)Lcom/opencsv/bean/CsvToBeanBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opencsv/enums/CSVReaderNullFieldIndicator;",
            ")",
            "Lcom/opencsv/bean/CsvToBeanBuilder<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    return-object p0
.end method

.method public withFilter(Lcom/opencsv/bean/CsvToBeanFilter;)Lcom/opencsv/bean/CsvToBeanBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opencsv/bean/CsvToBeanFilter;",
            ")",
            "Lcom/opencsv/bean/CsvToBeanBuilder<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->filter:Lcom/opencsv/bean/CsvToBeanFilter;

    return-object p0
.end method

.method public withIgnoreLeadingWhiteSpace(Z)Lcom/opencsv/bean/CsvToBeanBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/opencsv/bean/CsvToBeanBuilder<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->ignoreLeadingWhiteSpace:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withIgnoreQuotations(Z)Lcom/opencsv/bean/CsvToBeanBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/opencsv/bean/CsvToBeanBuilder<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->ignoreQuotations:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withKeepCarriageReturn(Z)Lcom/opencsv/bean/CsvToBeanBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/opencsv/bean/CsvToBeanBuilder<",
            "TT;>;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->keepCR:Z

    return-object p0
.end method

.method public withMappingStrategy(Lcom/opencsv/bean/MappingStrategy;)Lcom/opencsv/bean/CsvToBeanBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opencsv/bean/MappingStrategy<",
            "TT;>;)",
            "Lcom/opencsv/bean/CsvToBeanBuilder<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->mappingStrategy:Lcom/opencsv/bean/MappingStrategy;

    return-object p0
.end method

.method public withMultilineLimit(I)Lcom/opencsv/bean/CsvToBeanBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/opencsv/bean/CsvToBeanBuilder<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->multilineLimit:Ljava/lang/Integer;

    return-object p0
.end method

.method public withOrderedResults(Z)Lcom/opencsv/bean/CsvToBeanBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/opencsv/bean/CsvToBeanBuilder<",
            "TT;>;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->orderedResults:Z

    return-object p0
.end method

.method public withQuoteChar(C)Lcom/opencsv/bean/CsvToBeanBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)",
            "Lcom/opencsv/bean/CsvToBeanBuilder<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    iput-object p1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->quoteChar:Ljava/lang/Character;

    return-object p0
.end method

.method public withSeparator(C)Lcom/opencsv/bean/CsvToBeanBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)",
            "Lcom/opencsv/bean/CsvToBeanBuilder<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    iput-object p1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->separator:Ljava/lang/Character;

    return-object p0
.end method

.method public withSkipLines(I)Lcom/opencsv/bean/CsvToBeanBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/opencsv/bean/CsvToBeanBuilder<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->skipLines:Ljava/lang/Integer;

    return-object p0
.end method

.method public withStrictQuotes(Z)Lcom/opencsv/bean/CsvToBeanBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/opencsv/bean/CsvToBeanBuilder<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->strictQuotes:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withThrowExceptions(Z)Lcom/opencsv/bean/CsvToBeanBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/opencsv/bean/CsvToBeanBuilder<",
            "TT;>;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->throwExceptions:Z

    return-object p0
.end method

.method public withType(Ljava/lang/Class;)Lcom/opencsv/bean/CsvToBeanBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TT;>;)",
            "Lcom/opencsv/bean/CsvToBeanBuilder<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->type:Ljava/lang/Class;

    return-object p0
.end method

.method public withVerifyReader(Z)Lcom/opencsv/bean/CsvToBeanBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/opencsv/bean/CsvToBeanBuilder<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/opencsv/bean/CsvToBeanBuilder;->verifyReader:Ljava/lang/Boolean;

    return-object p0
.end method
