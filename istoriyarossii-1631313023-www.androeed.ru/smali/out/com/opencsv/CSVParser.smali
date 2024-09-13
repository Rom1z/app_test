.class public Lcom/opencsv/CSVParser;
.super Ljava/lang/Object;
.source "CSVParser.java"

# interfaces
.implements Lcom/opencsv/ICSVParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opencsv/CSVParser$StringFragmentCopier;
    }
.end annotation


# static fields
.field private static final BEGINING_OF_LINE:I = 0x3


# instance fields
.field private final errorLocale:Ljava/util/Locale;

.field private final escape:C

.field private final ignoreLeadingWhiteSpace:Z

.field private final ignoreQuotations:Z

.field private inField:Z

.field private final nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

.field private pending:Ljava/lang/String;

.field private final quotechar:C

.field private final separator:C

.field private final strictQuotes:Z

.field private tokensOnLastCompleteLine:I


# direct methods
.method public constructor <init>()V
    .registers 4

    const/16 v0, 0x2c

    const/16 v1, 0x22

    const/16 v2, 0x5c

    invoke-direct {p0, v0, v1, v2}, Lcom/opencsv/CSVParser;-><init>(CCC)V

    return-void
.end method

.method public constructor <init>(C)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x22

    const/16 v1, 0x5c

    invoke-direct {p0, p1, v0, v1}, Lcom/opencsv/CSVParser;-><init>(CCC)V

    return-void
.end method

.method public constructor <init>(CC)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x5c

    invoke-direct {p0, p1, p2, v0}, Lcom/opencsv/CSVParser;-><init>(CCC)V

    return-void
.end method

.method public constructor <init>(CCC)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/opencsv/CSVParser;-><init>(CCCZ)V

    return-void
.end method

.method public constructor <init>(CCCZ)V
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/opencsv/CSVParser;-><init>(CCCZZ)V

    return-void
.end method

.method public constructor <init>(CCCZZ)V
    .registers 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/opencsv/CSVParser;-><init>(CCCZZZ)V

    return-void
.end method

.method public constructor <init>(CCCZZZ)V
    .registers 15
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v7, Lcom/opencsv/CSVParser;->DEFAULT_NULL_FIELD_INDICATOR:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/opencsv/CSVParser;-><init>(CCCZZZLcom/opencsv/enums/CSVReaderNullFieldIndicator;)V

    return-void
.end method

.method constructor <init>(CCCZZZLcom/opencsv/enums/CSVReaderNullFieldIndicator;)V
    .registers 17
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/opencsv/CSVParser;-><init>(CCCZZZLcom/opencsv/enums/CSVReaderNullFieldIndicator;Ljava/util/Locale;)V

    return-void
.end method

.method constructor <init>(CCCZZZLcom/opencsv/enums/CSVReaderNullFieldIndicator;Ljava/util/Locale;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/opencsv/CSVParser;->tokensOnLastCompleteLine:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/opencsv/CSVParser;->inField:Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p8, v0}, Lorg/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p8

    check-cast p8, Ljava/util/Locale;

    iput-object p8, p0, Lcom/opencsv/CSVParser;->errorLocale:Ljava/util/Locale;

    invoke-direct {p0, p1, p2, p3}, Lcom/opencsv/CSVParser;->anyCharactersAreTheSame(CCC)Z

    move-result v0

    const-string v1, "opencsv"

    if-nez v0, :cond_3e

    if-eqz p1, :cond_2e

    iput-char p1, p0, Lcom/opencsv/CSVParser;->separator:C

    iput-char p2, p0, Lcom/opencsv/CSVParser;->quotechar:C

    iput-char p3, p0, Lcom/opencsv/CSVParser;->escape:C

    iput-boolean p4, p0, Lcom/opencsv/CSVParser;->strictQuotes:Z

    iput-boolean p5, p0, Lcom/opencsv/CSVParser;->ignoreLeadingWhiteSpace:Z

    iput-boolean p6, p0, Lcom/opencsv/CSVParser;->ignoreQuotations:Z

    iput-object p7, p0, Lcom/opencsv/CSVParser;->nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    return-void

    :cond_2e
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-static {v1, p8}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object p2

    const-string p3, "define.separator"

    invoke-virtual {p2, p3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3e
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-static {v1, p8}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object p2

    const-string p3, "special.characters.must.differ"

    invoke-virtual {p2, p3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private anyCharactersAreTheSame(CCC)Z
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/opencsv/CSVParser;->isSameCharacter(CC)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-direct {p0, p1, p3}, Lcom/opencsv/CSVParser;->isSameCharacter(CC)Z

    move-result p1

    if-nez p1, :cond_15

    invoke-direct {p0, p2, p3}, Lcom/opencsv/CSVParser;->isSameCharacter(CC)Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_15

    :cond_13
    const/4 p1, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p1, 0x1

    :goto_16
    return p1
.end method

.method private convertEmptyToNullIfNeeded(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0, p2}, Lcom/opencsv/CSVParser;->shouldConvertEmptyToNull(Z)Z

    move-result p2

    if-eqz p2, :cond_d

    const/4 p1, 0x0

    :cond_d
    return-object p1
.end method

.method private convertToCsvValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    if-nez p1, :cond_f

    iget-object v0, p0, Lcom/opencsv/CSVParser;->nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    sget-object v1, Lcom/opencsv/enums/CSVReaderNullFieldIndicator;->NEITHER:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    invoke-virtual {v0, v1}, Lcom/opencsv/enums/CSVReaderNullFieldIndicator;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, ""

    goto :goto_10

    :cond_f
    move-object v0, p1

    :goto_10
    new-instance v1, Ljava/lang/StringBuilder;

    if-nez v0, :cond_17

    const/16 v2, 0x10

    goto :goto_1d

    :cond_17
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    :goto_1d
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_34

    invoke-virtual {p0}, Lcom/opencsv/CSVParser;->getQuotechar()C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_34

    const/4 v4, 0x1

    goto :goto_35

    :cond_34
    const/4 v4, 0x0

    :goto_35
    if-eqz v0, :cond_47

    invoke-virtual {p0}, Lcom/opencsv/CSVParser;->getEscape()C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_47

    const/4 v5, 0x1

    goto :goto_48

    :cond_47
    const/4 v5, 0x0

    :goto_48
    if-eqz v0, :cond_59

    invoke-virtual {p0}, Lcom/opencsv/CSVParser;->getSeparator()C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_59

    goto :goto_5a

    :cond_59
    const/4 v2, 0x0

    :goto_5a
    invoke-direct {p0, p1, v2}, Lcom/opencsv/CSVParser;->isSurroundWithQuotes(Ljava/lang/String;Z)Z

    move-result p1

    if-nez v4, :cond_61

    goto :goto_8c

    :cond_61
    invoke-virtual {p0}, Lcom/opencsv/CSVParser;->getQuotechar()C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/opencsv/CSVParser;->getQuotechar()C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/opencsv/CSVParser;->getQuotechar()C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_8c
    if-nez v5, :cond_8f

    goto :goto_ba

    :cond_8f
    invoke-virtual {p0}, Lcom/opencsv/CSVParser;->getEscape()C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/opencsv/CSVParser;->getEscape()C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/opencsv/CSVParser;->getEscape()C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_ba
    if-eqz p1, :cond_c3

    invoke-virtual {p0}, Lcom/opencsv/CSVParser;->getQuotechar()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_c3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_cf

    invoke-virtual {p0}, Lcom/opencsv/CSVParser;->getQuotechar()C

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_cf
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private inQuotes(Z)Z
    .registers 2

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/opencsv/CSVParser;->ignoreQuotations:Z

    if-eqz p1, :cond_a

    :cond_6
    iget-boolean p1, p0, Lcom/opencsv/CSVParser;->inField:Z

    if-eqz p1, :cond_c

    :cond_a
    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method private isCharacterEscapable(C)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/opencsv/CSVParser;->isCharacterQuoteCharacter(C)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0, p1}, Lcom/opencsv/CSVParser;->isCharacterEscapeCharacter(C)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method

.method private isCharacterEscapeCharacter(C)Z
    .registers 3

    iget-char v0, p0, Lcom/opencsv/CSVParser;->escape:C

    if-ne p1, v0, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method private isCharacterQuoteCharacter(C)Z
    .registers 3

    iget-char v0, p0, Lcom/opencsv/CSVParser;->quotechar:C

    if-ne p1, v0, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method private isNextCharacterEscapedQuote(Ljava/lang/String;ZI)Z
    .registers 5

    const/4 v0, 0x1

    if-eqz p2, :cond_15

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p3, v0

    if-le p2, p3, :cond_15

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-direct {p0, p1}, Lcom/opencsv/CSVParser;->isCharacterQuoteCharacter(C)Z

    move-result p1

    if-eqz p1, :cond_15

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
.end method

.method private isSameCharacter(CC)Z
    .registers 3

    if-eqz p1, :cond_6

    if-ne p1, p2, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method private isSurroundWithQuotes(Ljava/lang/String;Z)Z
    .registers 3

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/opencsv/CSVParser;->nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    sget-object p2, Lcom/opencsv/enums/CSVReaderNullFieldIndicator;->EMPTY_QUOTES:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    invoke-virtual {p1, p2}, Lcom/opencsv/enums/CSVReaderNullFieldIndicator;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_b
    if-nez p2, :cond_26

    invoke-virtual {p0}, Lcom/opencsv/CSVParser;->getSeparator()C

    move-result p2

    invoke-static {p2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_26

    const-string p2, "\n"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_24

    goto :goto_26

    :cond_24
    const/4 p1, 0x0

    goto :goto_27

    :cond_26
    :goto_26
    const/4 p1, 0x1

    :goto_27
    return p1
.end method

.method private shouldConvertEmptyToNull(Z)Z
    .registers 5

    sget-object v0, Lcom/opencsv/CSVParser$1;->$SwitchMap$com$opencsv$enums$CSVReaderNullFieldIndicator:[I

    iget-object v1, p0, Lcom/opencsv/CSVParser;->nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    invoke-virtual {v1}, Lcom/opencsv/enums/CSVReaderNullFieldIndicator;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_17

    const/4 v2, 0x2

    if-eq v0, v2, :cond_15

    const/4 v1, 0x3

    if-eq v0, v1, :cond_14

    const/4 p1, 0x0

    :cond_14
    return p1

    :cond_15
    xor-int/2addr p1, v1

    return p1

    :cond_17
    return v1
.end method


# virtual methods
.method public getEscape()C
    .registers 2

    iget-char v0, p0, Lcom/opencsv/CSVParser;->escape:C

    return v0
.end method

.method public getPendingText()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/opencsv/CSVParser;->pending:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQuotechar()C
    .registers 2

    iget-char v0, p0, Lcom/opencsv/CSVParser;->quotechar:C

    return v0
.end method

.method public getSeparator()C
    .registers 2

    iget-char v0, p0, Lcom/opencsv/CSVParser;->separator:C

    return v0
.end method

.method public isIgnoreLeadingWhiteSpace()Z
    .registers 2

    iget-boolean v0, p0, Lcom/opencsv/CSVParser;->ignoreLeadingWhiteSpace:Z

    return v0
.end method

.method public isIgnoreQuotations()Z
    .registers 2

    iget-boolean v0, p0, Lcom/opencsv/CSVParser;->ignoreQuotations:Z

    return v0
.end method

.method protected isNextCharacterEscapable(Ljava/lang/String;ZI)Z
    .registers 5

    const/4 v0, 0x1

    if-eqz p2, :cond_15

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p3, v0

    if-le p2, p3, :cond_15

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-direct {p0, p1}, Lcom/opencsv/CSVParser;->isCharacterEscapable(C)Z

    move-result p1

    if-eqz p1, :cond_15

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
.end method

.method public isPending()Z
    .registers 2

    iget-object v0, p0, Lcom/opencsv/CSVParser;->pending:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isStrictQuotes()Z
    .registers 2

    iget-boolean v0, p0, Lcom/opencsv/CSVParser;->strictQuotes:Z

    return v0
.end method

.method public nullFieldIndicator()Lcom/opencsv/enums/CSVReaderNullFieldIndicator;
    .registers 2

    iget-object v0, p0, Lcom/opencsv/CSVParser;->nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    return-object v0
.end method

.method public parseLine(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/opencsv/CSVParser;->parseLine(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected parseLine(Ljava/lang/String;Z)[Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_9

    iget-object v1, p0, Lcom/opencsv/CSVParser;->pending:Ljava/lang/String;

    if-eqz v1, :cond_9

    iput-object v0, p0, Lcom/opencsv/CSVParser;->pending:Ljava/lang/String;

    :cond_9
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_19

    iget-object p1, p0, Lcom/opencsv/CSVParser;->pending:Ljava/lang/String;

    if-eqz p1, :cond_18

    iput-object v0, p0, Lcom/opencsv/CSVParser;->pending:Ljava/lang/String;

    new-array p2, v2, [Ljava/lang/String;

    aput-object p1, p2, v1

    return-object p2

    :cond_18
    return-object v0

    :cond_19
    iget v3, p0, Lcom/opencsv/CSVParser;->tokensOnLastCompleteLine:I

    if-gtz v3, :cond_23

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2a

    :cond_23
    new-instance v3, Ljava/util/ArrayList;

    iget v4, p0, Lcom/opencsv/CSVParser;->tokensOnLastCompleteLine:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    :goto_2a
    new-instance v4, Lcom/opencsv/CSVParser$StringFragmentCopier;

    invoke-direct {v4, p1}, Lcom/opencsv/CSVParser$StringFragmentCopier;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/opencsv/CSVParser;->pending:Ljava/lang/String;

    if-eqz v5, :cond_3c

    invoke-virtual {v4, v5}, Lcom/opencsv/CSVParser$StringFragmentCopier;->append(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/opencsv/CSVParser;->pending:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/opencsv/CSVParser;->ignoreQuotations:Z

    xor-int/2addr v0, v2

    goto :goto_3d

    :cond_3c
    const/4 v0, 0x0

    :goto_3d
    const/4 v5, 0x0

    :cond_3e
    :goto_3e
    invoke-virtual {v4}, Lcom/opencsv/CSVParser$StringFragmentCopier;->isEmptyInput()Z

    move-result v6

    if-nez v6, :cond_f5

    invoke-virtual {v4}, Lcom/opencsv/CSVParser$StringFragmentCopier;->takeInput()C

    move-result v6

    iget-char v7, p0, Lcom/opencsv/CSVParser;->escape:C

    if-ne v6, v7, :cond_62

    invoke-direct {p0, v0}, Lcom/opencsv/CSVParser;->inQuotes(Z)Z

    move-result v6

    invoke-static {v4}, Lcom/opencsv/CSVParser$StringFragmentCopier;->access$000(Lcom/opencsv/CSVParser$StringFragmentCopier;)I

    move-result v7

    sub-int/2addr v7, v2

    invoke-virtual {p0, p1, v6, v7}, Lcom/opencsv/CSVParser;->isNextCharacterEscapable(Ljava/lang/String;ZI)Z

    move-result v6

    if-eqz v6, :cond_3e

    invoke-virtual {v4}, Lcom/opencsv/CSVParser$StringFragmentCopier;->takeInput()C

    invoke-virtual {v4}, Lcom/opencsv/CSVParser$StringFragmentCopier;->appendPrev()V

    goto :goto_3e

    :cond_62
    iget-char v7, p0, Lcom/opencsv/CSVParser;->quotechar:C

    if-ne v6, v7, :cond_ca

    invoke-direct {p0, v0}, Lcom/opencsv/CSVParser;->inQuotes(Z)Z

    move-result v6

    invoke-static {v4}, Lcom/opencsv/CSVParser$StringFragmentCopier;->access$000(Lcom/opencsv/CSVParser$StringFragmentCopier;)I

    move-result v7

    sub-int/2addr v7, v2

    invoke-direct {p0, p1, v6, v7}, Lcom/opencsv/CSVParser;->isNextCharacterEscapedQuote(Ljava/lang/String;ZI)Z

    move-result v6

    if-eqz v6, :cond_7c

    invoke-virtual {v4}, Lcom/opencsv/CSVParser$StringFragmentCopier;->takeInput()C

    invoke-virtual {v4}, Lcom/opencsv/CSVParser$StringFragmentCopier;->appendPrev()V

    goto :goto_c3

    :cond_7c
    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v4}, Lcom/opencsv/CSVParser$StringFragmentCopier;->isEmptyOutput()Z

    move-result v6

    if-eqz v6, :cond_85

    const/4 v5, 0x1

    :cond_85
    iget-boolean v6, p0, Lcom/opencsv/CSVParser;->strictQuotes:Z

    if-nez v6, :cond_c3

    invoke-static {v4}, Lcom/opencsv/CSVParser$StringFragmentCopier;->access$000(Lcom/opencsv/CSVParser$StringFragmentCopier;)I

    move-result v6

    const/4 v7, 0x3

    if-le v6, v7, :cond_c3

    add-int/lit8 v7, v6, -0x2

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    iget-char v8, p0, Lcom/opencsv/CSVParser;->separator:C

    if-eq v7, v8, :cond_c3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v6, :cond_c3

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    iget-char v7, p0, Lcom/opencsv/CSVParser;->separator:C

    if-eq v6, v7, :cond_c3

    iget-boolean v6, p0, Lcom/opencsv/CSVParser;->ignoreLeadingWhiteSpace:Z

    if-eqz v6, :cond_c0

    invoke-virtual {v4}, Lcom/opencsv/CSVParser$StringFragmentCopier;->isEmptyOutput()Z

    move-result v6

    if-nez v6, :cond_c0

    invoke-virtual {v4}, Lcom/opencsv/CSVParser$StringFragmentCopier;->peekOutput()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/commons/lang3/StringUtils;->isWhitespace(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c0

    invoke-virtual {v4}, Lcom/opencsv/CSVParser$StringFragmentCopier;->clearOutput()V

    goto :goto_c3

    :cond_c0
    invoke-virtual {v4}, Lcom/opencsv/CSVParser$StringFragmentCopier;->appendPrev()V

    :cond_c3
    :goto_c3
    iget-boolean v6, p0, Lcom/opencsv/CSVParser;->inField:Z

    xor-int/2addr v6, v2

    iput-boolean v6, p0, Lcom/opencsv/CSVParser;->inField:Z

    goto/16 :goto_3e

    :cond_ca
    iget-char v7, p0, Lcom/opencsv/CSVParser;->separator:C

    if-ne v6, v7, :cond_e3

    if-eqz v0, :cond_d4

    iget-boolean v6, p0, Lcom/opencsv/CSVParser;->ignoreQuotations:Z

    if-eqz v6, :cond_e3

    :cond_d4
    invoke-virtual {v4}, Lcom/opencsv/CSVParser$StringFragmentCopier;->takeOutput()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v5}, Lcom/opencsv/CSVParser;->convertEmptyToNullIfNeeded(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-boolean v1, p0, Lcom/opencsv/CSVParser;->inField:Z

    goto/16 :goto_3d

    :cond_e3
    iget-boolean v6, p0, Lcom/opencsv/CSVParser;->strictQuotes:Z

    if-eqz v6, :cond_ed

    if-eqz v0, :cond_3e

    iget-boolean v6, p0, Lcom/opencsv/CSVParser;->ignoreQuotations:Z

    if-nez v6, :cond_3e

    :cond_ed
    invoke-virtual {v4}, Lcom/opencsv/CSVParser$StringFragmentCopier;->appendPrev()V

    iput-boolean v2, p0, Lcom/opencsv/CSVParser;->inField:Z

    const/4 v5, 0x1

    goto/16 :goto_3e

    :cond_f5
    if-eqz v0, :cond_129

    iget-boolean p1, p0, Lcom/opencsv/CSVParser;->ignoreQuotations:Z

    if-nez p1, :cond_129

    if-eqz p2, :cond_109

    const/16 p1, 0xa

    invoke-virtual {v4, p1}, Lcom/opencsv/CSVParser$StringFragmentCopier;->append(C)V

    invoke-virtual {v4}, Lcom/opencsv/CSVParser$StringFragmentCopier;->peekOutput()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/opencsv/CSVParser;->pending:Ljava/lang/String;

    goto :goto_136

    :cond_109
    new-instance p1, Ljava/io/IOException;

    iget-object p2, p0, Lcom/opencsv/CSVParser;->errorLocale:Ljava/util/Locale;

    const-string v0, "opencsv"

    invoke-static {v0, p2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object p2

    const-string v0, "unterminated.quote"

    invoke-virtual {p2, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/opencsv/CSVParser$StringFragmentCopier;->peekOutput()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_129
    iput-boolean v1, p0, Lcom/opencsv/CSVParser;->inField:Z

    invoke-virtual {v4}, Lcom/opencsv/CSVParser$StringFragmentCopier;->takeOutput()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v5}, Lcom/opencsv/CSVParser;->convertEmptyToNullIfNeeded(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_136
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/opencsv/CSVParser;->tokensOnLastCompleteLine:I

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v3, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method public parseLineMulti(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/opencsv/CSVParser;->parseLine(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public parseToLine([Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_8
    array-length v2, p1

    if-ge v1, v2, :cond_23

    aget-object v2, p1, v1

    invoke-direct {p0, v2}, Lcom/opencsv/CSVParser;->convertToCsvValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_20

    invoke-virtual {p0}, Lcom/opencsv/CSVParser;->getSeparator()C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
