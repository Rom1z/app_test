.class public Lcom/opencsv/CSVReader;
.super Ljava/lang/Object;
.source "CSVReader.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Closeable;",
        "Ljava/lang/Iterable<",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_KEEP_CR:Z = false

.field public static final DEFAULT_MULTILINE_LIMIT:I = 0x0

.field public static final DEFAULT_SKIP_LINES:I = 0x0

.field public static final DEFAULT_VERIFY_READER:Z = true

.field private static final MAX_WIDTH:I = 0x64

.field public static final READ_AHEAD_LIMIT:I = 0x2


# instance fields
.field protected br:Ljava/io/BufferedReader;

.field protected final errorLocale:Ljava/util/Locale;

.field protected hasNext:Z

.field protected keepCR:Z

.field protected lineReader:Lcom/opencsv/stream/reader/LineReader;

.field protected linesRead:J

.field protected linesSkiped:Z

.field protected multilineLimit:I

.field protected parser:Lcom/opencsv/ICSVParser;

.field protected recordsRead:J

.field protected skipLines:I

.field protected verifyReader:Z


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .registers 5

    const/16 v0, 0x2c

    const/16 v1, 0x22

    const/16 v2, 0x5c

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/opencsv/CSVReader;-><init>(Ljava/io/Reader;CCC)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;C)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x22

    const/16 v1, 0x5c

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/opencsv/CSVReader;-><init>(Ljava/io/Reader;CCC)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;CC)V
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v4, 0x5c

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/opencsv/CSVReader;-><init>(Ljava/io/Reader;CCCIZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;CCC)V
    .registers 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/opencsv/CSVReader;-><init>(Ljava/io/Reader;CCCIZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;CCCI)V
    .registers 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/opencsv/CSVReader;-><init>(Ljava/io/Reader;CCCIZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;CCCIZ)V
    .registers 15
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/opencsv/CSVReader;-><init>(Ljava/io/Reader;CCCIZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;CCCIZZ)V
    .registers 18
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v9, Lcom/opencsv/CSVParser;

    sget-object v7, Lcom/opencsv/ICSVParser;->DEFAULT_NULL_FIELD_INDICATOR:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    const/4 v6, 0x0

    move-object v0, v9

    move v1, p2

    move v2, p3

    move v3, p4

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-direct/range {v0 .. v8}, Lcom/opencsv/CSVParser;-><init>(CCCZZZLcom/opencsv/enums/CSVReaderNullFieldIndicator;Ljava/util/Locale;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p5

    invoke-direct {p0, p1, p5, v9}, Lcom/opencsv/CSVReader;-><init>(Ljava/io/Reader;ILcom/opencsv/ICSVParser;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;CCCIZZZ)V
    .registers 19
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v9, Lcom/opencsv/CSVParser;

    sget-object v7, Lcom/opencsv/ICSVParser;->DEFAULT_NULL_FIELD_INDICATOR:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    const/4 v6, 0x0

    move-object v0, v9

    move v1, p2

    move v2, p3

    move v3, p4

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-direct/range {v0 .. v8}, Lcom/opencsv/CSVParser;-><init>(CCCZZZLcom/opencsv/enums/CSVReaderNullFieldIndicator;Ljava/util/Locale;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p5

    move-object v3, v9

    move/from16 v4, p8

    invoke-direct/range {v0 .. v7}, Lcom/opencsv/CSVReader;-><init>(Ljava/io/Reader;ILcom/opencsv/ICSVParser;ZZILjava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;CCI)V
    .registers 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v4, 0x5c

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/opencsv/CSVReader;-><init>(Ljava/io/Reader;CCCIZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;CCZ)V
    .registers 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v4, 0x5c

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/opencsv/CSVReader;-><init>(Ljava/io/Reader;CCCIZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;ILcom/opencsv/ICSVParser;)V
    .registers 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/opencsv/CSVReader;-><init>(Ljava/io/Reader;ILcom/opencsv/ICSVParser;ZZILjava/util/Locale;)V

    return-void
.end method

.method constructor <init>(Ljava/io/Reader;ILcom/opencsv/ICSVParser;ZZILjava/util/Locale;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/opencsv/CSVReader;->hasNext:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/opencsv/CSVReader;->multilineLimit:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/opencsv/CSVReader;->linesRead:J

    iput-wide v0, p0, Lcom/opencsv/CSVReader;->recordsRead:J

    instance-of v0, p1, Ljava/io/BufferedReader;

    if-eqz v0, :cond_16

    check-cast p1, Ljava/io/BufferedReader;

    goto :goto_1c

    :cond_16
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object p1, v0

    :goto_1c
    iput-object p1, p0, Lcom/opencsv/CSVReader;->br:Ljava/io/BufferedReader;

    new-instance v0, Lcom/opencsv/stream/reader/LineReader;

    invoke-direct {v0, p1, p4}, Lcom/opencsv/stream/reader/LineReader;-><init>(Ljava/io/BufferedReader;Z)V

    iput-object v0, p0, Lcom/opencsv/CSVReader;->lineReader:Lcom/opencsv/stream/reader/LineReader;

    iput p2, p0, Lcom/opencsv/CSVReader;->skipLines:I

    iput-object p3, p0, Lcom/opencsv/CSVReader;->parser:Lcom/opencsv/ICSVParser;

    iput-boolean p4, p0, Lcom/opencsv/CSVReader;->keepCR:Z

    iput-boolean p5, p0, Lcom/opencsv/CSVReader;->verifyReader:Z

    iput p6, p0, Lcom/opencsv/CSVReader;->multilineLimit:I

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p7, p1}, Lorg/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    iput-object p1, p0, Lcom/opencsv/CSVReader;->errorLocale:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/opencsv/CSVReader;->br:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-void
.end method

.method protected combineResultsFromMultipleReads([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p1

    array-length v1, p2

    invoke-static {p2, v2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public getLinesRead()J
    .registers 3

    iget-wide v0, p0, Lcom/opencsv/CSVReader;->linesRead:J

    return-wide v0
.end method

.method public getMultilineLimit()I
    .registers 2

    iget v0, p0, Lcom/opencsv/CSVReader;->multilineLimit:I

    return v0
.end method

.method protected getNextLine()Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/opencsv/CSVReader;->isClosed()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    iput-boolean v2, p0, Lcom/opencsv/CSVReader;->hasNext:Z

    return-object v1

    :cond_b
    iget-boolean v0, p0, Lcom/opencsv/CSVReader;->linesSkiped:Z

    const-wide/16 v3, 0x1

    if-nez v0, :cond_26

    const/4 v0, 0x0

    :goto_12
    iget v5, p0, Lcom/opencsv/CSVReader;->skipLines:I

    if-ge v0, v5, :cond_23

    iget-object v5, p0, Lcom/opencsv/CSVReader;->lineReader:Lcom/opencsv/stream/reader/LineReader;

    invoke-virtual {v5}, Lcom/opencsv/stream/reader/LineReader;->readLine()Ljava/lang/String;

    iget-wide v5, p0, Lcom/opencsv/CSVReader;->linesRead:J

    add-long/2addr v5, v3

    iput-wide v5, p0, Lcom/opencsv/CSVReader;->linesRead:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/opencsv/CSVReader;->linesSkiped:Z

    :cond_26
    iget-object v0, p0, Lcom/opencsv/CSVReader;->lineReader:Lcom/opencsv/stream/reader/LineReader;

    invoke-virtual {v0}, Lcom/opencsv/stream/reader/LineReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_31

    iput-boolean v2, p0, Lcom/opencsv/CSVReader;->hasNext:Z

    goto :goto_36

    :cond_31
    iget-wide v5, p0, Lcom/opencsv/CSVReader;->linesRead:J

    add-long/2addr v5, v3

    iput-wide v5, p0, Lcom/opencsv/CSVReader;->linesRead:J

    :goto_36
    iget-boolean v2, p0, Lcom/opencsv/CSVReader;->hasNext:Z

    if-eqz v2, :cond_3b

    move-object v1, v0

    :cond_3b
    return-object v1
.end method

.method public getParser()Lcom/opencsv/ICSVParser;
    .registers 2

    iget-object v0, p0, Lcom/opencsv/CSVReader;->parser:Lcom/opencsv/ICSVParser;

    return-object v0
.end method

.method public getRecordsRead()J
    .registers 3

    iget-wide v0, p0, Lcom/opencsv/CSVReader;->recordsRead:J

    return-wide v0
.end method

.method public getSkipLines()I
    .registers 2

    iget v0, p0, Lcom/opencsv/CSVReader;->skipLines:I

    return v0
.end method

.method protected isClosed()Z
    .registers 5

    iget-boolean v0, p0, Lcom/opencsv/CSVReader;->verifyReader:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    :try_start_7
    iget-object v2, p0, Lcom/opencsv/CSVReader;->br:Ljava/io/BufferedReader;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/io/BufferedReader;->mark(I)V

    iget-object v2, p0, Lcom/opencsv/CSVReader;->br:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->read()I

    move-result v2

    iget-object v3, p0, Lcom/opencsv/CSVReader;->br:Ljava/io/BufferedReader;

    invoke-virtual {v3}, Ljava/io/BufferedReader;->reset()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_18} :catch_1d

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    return v1

    :catch_1d
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/opencsv/CSVIterator;

    invoke-direct {v0, p0}, Lcom/opencsv/CSVIterator;-><init>(Lcom/opencsv/CSVReader;)V

    iget-object v1, p0, Lcom/opencsv/CSVReader;->errorLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Lcom/opencsv/CSVIterator;->setErrorLocale(Ljava/util/Locale;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public keepCarriageReturns()Z
    .registers 2

    iget-boolean v0, p0, Lcom/opencsv/CSVReader;->keepCR:Z

    return v0
.end method

.method public readAll()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_5
    :goto_5
    iget-boolean v1, p0, Lcom/opencsv/CSVReader;->hasNext:Z

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Lcom/opencsv/CSVReader;->readNext()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_13
    return-object v0
.end method

.method public readNext()[Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_3
    invoke-virtual {p0}, Lcom/opencsv/CSVReader;->getNextLine()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    add-int/2addr v2, v4

    iget-boolean v5, p0, Lcom/opencsv/CSVReader;->hasNext:Z

    const-string v6, "opencsv"

    if-nez v5, :cond_42

    iget-object v2, p0, Lcom/opencsv/CSVReader;->parser:Lcom/opencsv/ICSVParser;

    invoke-interface {v2}, Lcom/opencsv/ICSVParser;->isPending()Z

    move-result v2

    if-nez v2, :cond_1c

    invoke-virtual {p0, v1}, Lcom/opencsv/CSVReader;->validateResult([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1c
    new-instance v1, Ljava/io/IOException;

    iget-object v2, p0, Lcom/opencsv/CSVReader;->errorLocale:Ljava/util/Locale;

    invoke-static {v6, v2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v2

    const-string v3, "unterminated.quote"

    invoke-virtual {v2, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/opencsv/CSVReader;->parser:Lcom/opencsv/ICSVParser;

    invoke-interface {v4}, Lcom/opencsv/ICSVParser;->getPendingText()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x64

    invoke-static {v4, v5}, Lorg/apache/commons/lang3/StringUtils;->abbreviate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_42
    iget v5, p0, Lcom/opencsv/CSVReader;->multilineLimit:I

    if-lez v5, :cond_69

    if-gt v2, v5, :cond_49

    goto :goto_69

    :cond_49
    new-instance v1, Ljava/io/IOException;

    iget-object v2, p0, Lcom/opencsv/CSVReader;->errorLocale:Ljava/util/Locale;

    invoke-static {v6, v2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v3

    const-string v5, "multiline.limit.broken"

    invoke-virtual {v3, v5}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/opencsv/CSVReader;->multilineLimit:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_69
    :goto_69
    iget-object v4, p0, Lcom/opencsv/CSVReader;->parser:Lcom/opencsv/ICSVParser;

    invoke-interface {v4, v3}, Lcom/opencsv/ICSVParser;->parseLineMulti(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    if-lez v4, :cond_7a

    if-nez v1, :cond_76

    move-object v1, v3

    goto :goto_7a

    :cond_76
    invoke-virtual {p0, v1, v3}, Lcom/opencsv/CSVReader;->combineResultsFromMultipleReads([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :cond_7a
    :goto_7a
    iget-object v3, p0, Lcom/opencsv/CSVReader;->parser:Lcom/opencsv/ICSVParser;

    invoke-interface {v3}, Lcom/opencsv/ICSVParser;->isPending()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0, v1}, Lcom/opencsv/CSVReader;->validateResult([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setMultilineLimit(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Lcom/opencsv/CSVReader;->multilineLimit:I

    return-void
.end method

.method protected validateResult([Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    if-eqz p1, :cond_9

    iget-wide v0, p0, Lcom/opencsv/CSVReader;->recordsRead:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/opencsv/CSVReader;->recordsRead:J

    :cond_9
    return-object p1
.end method

.method public verifyReader()Z
    .registers 2

    iget-boolean v0, p0, Lcom/opencsv/CSVReader;->verifyReader:Z

    return v0
.end method
