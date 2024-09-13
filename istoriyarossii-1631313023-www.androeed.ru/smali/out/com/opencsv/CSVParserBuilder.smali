.class public Lcom/opencsv/CSVParserBuilder;
.super Ljava/lang/Object;
.source "CSVParserBuilder.java"


# instance fields
.field private errorLocale:Ljava/util/Locale;

.field private escapeChar:C

.field private ignoreLeadingWhiteSpace:Z

.field private ignoreQuotations:Z

.field private nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

.field private quoteChar:C

.field private separator:C

.field private strictQuotes:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2c

    iput-char v0, p0, Lcom/opencsv/CSVParserBuilder;->separator:C

    const/16 v0, 0x22

    iput-char v0, p0, Lcom/opencsv/CSVParserBuilder;->quoteChar:C

    const/16 v0, 0x5c

    iput-char v0, p0, Lcom/opencsv/CSVParserBuilder;->escapeChar:C

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/opencsv/CSVParserBuilder;->strictQuotes:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/opencsv/CSVParserBuilder;->ignoreLeadingWhiteSpace:Z

    iput-boolean v0, p0, Lcom/opencsv/CSVParserBuilder;->ignoreQuotations:Z

    sget-object v0, Lcom/opencsv/enums/CSVReaderNullFieldIndicator;->NEITHER:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    iput-object v0, p0, Lcom/opencsv/CSVParserBuilder;->nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/opencsv/CSVParserBuilder;->errorLocale:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public build()Lcom/opencsv/CSVParser;
    .registers 11

    new-instance v9, Lcom/opencsv/CSVParser;

    iget-char v1, p0, Lcom/opencsv/CSVParserBuilder;->separator:C

    iget-char v2, p0, Lcom/opencsv/CSVParserBuilder;->quoteChar:C

    iget-char v3, p0, Lcom/opencsv/CSVParserBuilder;->escapeChar:C

    iget-boolean v4, p0, Lcom/opencsv/CSVParserBuilder;->strictQuotes:Z

    iget-boolean v5, p0, Lcom/opencsv/CSVParserBuilder;->ignoreLeadingWhiteSpace:Z

    iget-boolean v6, p0, Lcom/opencsv/CSVParserBuilder;->ignoreQuotations:Z

    iget-object v7, p0, Lcom/opencsv/CSVParserBuilder;->nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    iget-object v8, p0, Lcom/opencsv/CSVParserBuilder;->errorLocale:Ljava/util/Locale;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/opencsv/CSVParser;-><init>(CCCZZZLcom/opencsv/enums/CSVReaderNullFieldIndicator;Ljava/util/Locale;)V

    return-object v9
.end method

.method public getEscapeChar()C
    .registers 2

    iget-char v0, p0, Lcom/opencsv/CSVParserBuilder;->escapeChar:C

    return v0
.end method

.method public getQuoteChar()C
    .registers 2

    iget-char v0, p0, Lcom/opencsv/CSVParserBuilder;->quoteChar:C

    return v0
.end method

.method public getSeparator()C
    .registers 2

    iget-char v0, p0, Lcom/opencsv/CSVParserBuilder;->separator:C

    return v0
.end method

.method public isIgnoreLeadingWhiteSpace()Z
    .registers 2

    iget-boolean v0, p0, Lcom/opencsv/CSVParserBuilder;->ignoreLeadingWhiteSpace:Z

    return v0
.end method

.method public isIgnoreQuotations()Z
    .registers 2

    iget-boolean v0, p0, Lcom/opencsv/CSVParserBuilder;->ignoreQuotations:Z

    return v0
.end method

.method public isStrictQuotes()Z
    .registers 2

    iget-boolean v0, p0, Lcom/opencsv/CSVParserBuilder;->strictQuotes:Z

    return v0
.end method

.method public nullFieldIndicator()Lcom/opencsv/enums/CSVReaderNullFieldIndicator;
    .registers 2

    iget-object v0, p0, Lcom/opencsv/CSVParserBuilder;->nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    return-object v0
.end method

.method public withErrorLocale(Ljava/util/Locale;)Lcom/opencsv/CSVParserBuilder;
    .registers 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    iput-object p1, p0, Lcom/opencsv/CSVParserBuilder;->errorLocale:Ljava/util/Locale;

    return-object p0
.end method

.method public withEscapeChar(C)Lcom/opencsv/CSVParserBuilder;
    .registers 2

    iput-char p1, p0, Lcom/opencsv/CSVParserBuilder;->escapeChar:C

    return-object p0
.end method

.method public withFieldAsNull(Lcom/opencsv/enums/CSVReaderNullFieldIndicator;)Lcom/opencsv/CSVParserBuilder;
    .registers 2

    iput-object p1, p0, Lcom/opencsv/CSVParserBuilder;->nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    return-object p0
.end method

.method public withIgnoreLeadingWhiteSpace(Z)Lcom/opencsv/CSVParserBuilder;
    .registers 2

    iput-boolean p1, p0, Lcom/opencsv/CSVParserBuilder;->ignoreLeadingWhiteSpace:Z

    return-object p0
.end method

.method public withIgnoreQuotations(Z)Lcom/opencsv/CSVParserBuilder;
    .registers 2

    iput-boolean p1, p0, Lcom/opencsv/CSVParserBuilder;->ignoreQuotations:Z

    return-object p0
.end method

.method public withQuoteChar(C)Lcom/opencsv/CSVParserBuilder;
    .registers 2

    iput-char p1, p0, Lcom/opencsv/CSVParserBuilder;->quoteChar:C

    return-object p0
.end method

.method public withSeparator(C)Lcom/opencsv/CSVParserBuilder;
    .registers 2

    iput-char p1, p0, Lcom/opencsv/CSVParserBuilder;->separator:C

    return-object p0
.end method

.method public withStrictQuotes(Z)Lcom/opencsv/CSVParserBuilder;
    .registers 2

    iput-boolean p1, p0, Lcom/opencsv/CSVParserBuilder;->strictQuotes:Z

    return-object p0
.end method
