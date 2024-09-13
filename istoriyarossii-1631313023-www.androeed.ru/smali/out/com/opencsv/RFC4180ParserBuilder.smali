.class public Lcom/opencsv/RFC4180ParserBuilder;
.super Ljava/lang/Object;
.source "RFC4180ParserBuilder.java"


# instance fields
.field private nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

.field private quoteChar:C

.field private separator:C


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2c

    iput-char v0, p0, Lcom/opencsv/RFC4180ParserBuilder;->separator:C

    const/16 v0, 0x22

    iput-char v0, p0, Lcom/opencsv/RFC4180ParserBuilder;->quoteChar:C

    sget-object v0, Lcom/opencsv/enums/CSVReaderNullFieldIndicator;->NEITHER:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    iput-object v0, p0, Lcom/opencsv/RFC4180ParserBuilder;->nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    return-void
.end method


# virtual methods
.method public build()Lcom/opencsv/RFC4180Parser;
    .registers 5

    new-instance v0, Lcom/opencsv/RFC4180Parser;

    iget-char v1, p0, Lcom/opencsv/RFC4180ParserBuilder;->quoteChar:C

    iget-char v2, p0, Lcom/opencsv/RFC4180ParserBuilder;->separator:C

    iget-object v3, p0, Lcom/opencsv/RFC4180ParserBuilder;->nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    invoke-direct {v0, v1, v2, v3}, Lcom/opencsv/RFC4180Parser;-><init>(CCLcom/opencsv/enums/CSVReaderNullFieldIndicator;)V

    return-object v0
.end method

.method public getQuoteChar()C
    .registers 2

    iget-char v0, p0, Lcom/opencsv/RFC4180ParserBuilder;->quoteChar:C

    return v0
.end method

.method public getSeparator()C
    .registers 2

    iget-char v0, p0, Lcom/opencsv/RFC4180ParserBuilder;->separator:C

    return v0
.end method

.method public nullFieldIndicator()Lcom/opencsv/enums/CSVReaderNullFieldIndicator;
    .registers 2

    iget-object v0, p0, Lcom/opencsv/RFC4180ParserBuilder;->nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    return-object v0
.end method

.method public withFieldAsNull(Lcom/opencsv/enums/CSVReaderNullFieldIndicator;)Lcom/opencsv/RFC4180ParserBuilder;
    .registers 2

    iput-object p1, p0, Lcom/opencsv/RFC4180ParserBuilder;->nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    return-object p0
.end method

.method public withQuoteChar(C)Lcom/opencsv/RFC4180ParserBuilder;
    .registers 2

    iput-char p1, p0, Lcom/opencsv/RFC4180ParserBuilder;->quoteChar:C

    return-object p0
.end method

.method public withSeparator(C)Lcom/opencsv/RFC4180ParserBuilder;
    .registers 2

    iput-char p1, p0, Lcom/opencsv/RFC4180ParserBuilder;->separator:C

    return-object p0
.end method
