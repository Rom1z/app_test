.class public Lcom/opencsv/CSVReaderBuilder;
.super Ljava/lang/Object;
.source "CSVReaderBuilder.java"


# instance fields
.field private errorLocale:Ljava/util/Locale;

.field private icsvParser:Lcom/opencsv/ICSVParser;

.field private keepCR:Z

.field private multilineLimit:I

.field private nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

.field private final parserBuilder:Lcom/opencsv/CSVParserBuilder;

.field private final reader:Ljava/io/Reader;

.field private skipLines:I

.field private verifyReader:Z


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/opencsv/CSVParserBuilder;

    invoke-direct {v0}, Lcom/opencsv/CSVParserBuilder;-><init>()V

    iput-object v0, p0, Lcom/opencsv/CSVReaderBuilder;->parserBuilder:Lcom/opencsv/CSVParserBuilder;

    const/4 v0, 0x0

    iput v0, p0, Lcom/opencsv/CSVReaderBuilder;->skipLines:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/opencsv/CSVReaderBuilder;->icsvParser:Lcom/opencsv/ICSVParser;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/opencsv/CSVReaderBuilder;->verifyReader:Z

    sget-object v1, Lcom/opencsv/enums/CSVReaderNullFieldIndicator;->NEITHER:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    iput-object v1, p0, Lcom/opencsv/CSVReaderBuilder;->nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    iput v0, p0, Lcom/opencsv/CSVReaderBuilder;->multilineLimit:I

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/opencsv/CSVReaderBuilder;->errorLocale:Ljava/util/Locale;

    if-eqz p1, :cond_24

    iput-object p1, p0, Lcom/opencsv/CSVReaderBuilder;->reader:Ljava/io/Reader;

    return-void

    :cond_24
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


# virtual methods
.method public build()Lcom/opencsv/CSVReader;
    .registers 10

    iget-object v0, p0, Lcom/opencsv/CSVReaderBuilder;->icsvParser:Lcom/opencsv/ICSVParser;

    iget-object v1, p0, Lcom/opencsv/CSVReaderBuilder;->parserBuilder:Lcom/opencsv/CSVParserBuilder;

    iget-object v2, p0, Lcom/opencsv/CSVReaderBuilder;->nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    invoke-virtual {v1, v2}, Lcom/opencsv/CSVParserBuilder;->withFieldAsNull(Lcom/opencsv/enums/CSVReaderNullFieldIndicator;)Lcom/opencsv/CSVParserBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/opencsv/CSVReaderBuilder;->errorLocale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Lcom/opencsv/CSVParserBuilder;->withErrorLocale(Ljava/util/Locale;)Lcom/opencsv/CSVParserBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/opencsv/CSVParserBuilder;->build()Lcom/opencsv/CSVParser;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/opencsv/ICSVParser;

    new-instance v0, Lcom/opencsv/CSVReader;

    iget-object v2, p0, Lcom/opencsv/CSVReaderBuilder;->reader:Ljava/io/Reader;

    iget v3, p0, Lcom/opencsv/CSVReaderBuilder;->skipLines:I

    iget-boolean v5, p0, Lcom/opencsv/CSVReaderBuilder;->keepCR:Z

    iget-boolean v6, p0, Lcom/opencsv/CSVReaderBuilder;->verifyReader:Z

    iget v7, p0, Lcom/opencsv/CSVReaderBuilder;->multilineLimit:I

    iget-object v8, p0, Lcom/opencsv/CSVReaderBuilder;->errorLocale:Ljava/util/Locale;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/opencsv/CSVReader;-><init>(Ljava/io/Reader;ILcom/opencsv/ICSVParser;ZZILjava/util/Locale;)V

    return-object v0
.end method

.method protected getCsvParser()Lcom/opencsv/ICSVParser;
    .registers 2

    iget-object v0, p0, Lcom/opencsv/CSVReaderBuilder;->icsvParser:Lcom/opencsv/ICSVParser;

    return-object v0
.end method

.method protected getMultilineLimit()I
    .registers 2

    iget v0, p0, Lcom/opencsv/CSVReaderBuilder;->multilineLimit:I

    return v0
.end method

.method protected getReader()Ljava/io/Reader;
    .registers 2

    iget-object v0, p0, Lcom/opencsv/CSVReaderBuilder;->reader:Ljava/io/Reader;

    return-object v0
.end method

.method protected getSkipLines()I
    .registers 2

    iget v0, p0, Lcom/opencsv/CSVReaderBuilder;->skipLines:I

    return v0
.end method

.method protected keepCarriageReturn()Z
    .registers 2

    iget-boolean v0, p0, Lcom/opencsv/CSVReaderBuilder;->keepCR:Z

    return v0
.end method

.method public withCSVParser(Lcom/opencsv/ICSVParser;)Lcom/opencsv/CSVReaderBuilder;
    .registers 2

    iput-object p1, p0, Lcom/opencsv/CSVReaderBuilder;->icsvParser:Lcom/opencsv/ICSVParser;

    return-object p0
.end method

.method public withErrorLocale(Ljava/util/Locale;)Lcom/opencsv/CSVReaderBuilder;
    .registers 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    iput-object p1, p0, Lcom/opencsv/CSVReaderBuilder;->errorLocale:Ljava/util/Locale;

    return-object p0
.end method

.method public withFieldAsNull(Lcom/opencsv/enums/CSVReaderNullFieldIndicator;)Lcom/opencsv/CSVReaderBuilder;
    .registers 2

    iput-object p1, p0, Lcom/opencsv/CSVReaderBuilder;->nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    return-object p0
.end method

.method public withKeepCarriageReturn(Z)Lcom/opencsv/CSVReaderBuilder;
    .registers 2

    iput-boolean p1, p0, Lcom/opencsv/CSVReaderBuilder;->keepCR:Z

    return-object p0
.end method

.method public withMultilineLimit(I)Lcom/opencsv/CSVReaderBuilder;
    .registers 2

    iput p1, p0, Lcom/opencsv/CSVReaderBuilder;->multilineLimit:I

    return-object p0
.end method

.method public withSkipLines(I)Lcom/opencsv/CSVReaderBuilder;
    .registers 2

    if-gtz p1, :cond_3

    const/4 p1, 0x0

    :cond_3
    iput p1, p0, Lcom/opencsv/CSVReaderBuilder;->skipLines:I

    return-object p0
.end method

.method public withVerifyReader(Z)Lcom/opencsv/CSVReaderBuilder;
    .registers 2

    iput-boolean p1, p0, Lcom/opencsv/CSVReaderBuilder;->verifyReader:Z

    return-object p0
.end method
