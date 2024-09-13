.class public Lcom/opencsv/RFC4180Parser;
.super Ljava/lang/Object;
.source "RFC4180Parser.java"

# interfaces
.implements Lcom/opencsv/ICSVParser;


# static fields
.field private static final SPECIAL_REGEX_CHARS:Ljava/util/regex/Pattern;


# instance fields
.field private final nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

.field private pending:Ljava/lang/String;

.field private final quotechar:C

.field private final separator:C

.field private final separatorAsString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "[{}()\\[\\].+*?^$\\\\|]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/opencsv/RFC4180Parser;->SPECIAL_REGEX_CHARS:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    sget-object v0, Lcom/opencsv/enums/CSVReaderNullFieldIndicator;->NEITHER:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    const/16 v1, 0x22

    const/16 v2, 0x2c

    invoke-direct {p0, v1, v2, v0}, Lcom/opencsv/RFC4180Parser;-><init>(CCLcom/opencsv/enums/CSVReaderNullFieldIndicator;)V

    return-void
.end method

.method constructor <init>(CCLcom/opencsv/enums/CSVReaderNullFieldIndicator;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-char p1, p0, Lcom/opencsv/RFC4180Parser;->quotechar:C

    iput-char p2, p0, Lcom/opencsv/RFC4180Parser;->separator:C

    sget-object p1, Lcom/opencsv/RFC4180Parser;->SPECIAL_REGEX_CHARS:Ljava/util/regex/Pattern;

    invoke-static {p2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const-string p2, "\\\\$0"

    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/opencsv/RFC4180Parser;->separatorAsString:Ljava/lang/String;

    iput-object p3, p0, Lcom/opencsv/RFC4180Parser;->nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    return-void
.end method

.method private convertToCsvValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    if-nez p1, :cond_f

    iget-object v0, p0, Lcom/opencsv/RFC4180Parser;->nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

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

    if-eqz v0, :cond_32

    invoke-virtual {p0}, Lcom/opencsv/RFC4180Parser;->getQuotechar()C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_32

    const/4 v2, 0x1

    goto :goto_33

    :cond_32
    const/4 v2, 0x0

    :goto_33
    invoke-direct {p0, p1, v2}, Lcom/opencsv/RFC4180Parser;->isSurroundWithQuotes(Ljava/lang/String;Z)Z

    move-result p1

    if-nez v2, :cond_3a

    goto :goto_65

    :cond_3a
    invoke-virtual {p0}, Lcom/opencsv/RFC4180Parser;->getQuotechar()C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/opencsv/RFC4180Parser;->getQuotechar()C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/opencsv/RFC4180Parser;->getQuotechar()C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_65
    if-eqz p1, :cond_6e

    invoke-virtual {p0}, Lcom/opencsv/RFC4180Parser;->getQuotechar()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_7a

    invoke-virtual {p0}, Lcom/opencsv/RFC4180Parser;->getQuotechar()C

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private findEndOfFieldFromPosition(Ljava/lang/String;I)I
    .registers 7

    iget-char v0, p0, Lcom/opencsv/RFC4180Parser;->quotechar:C

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p2

    const/4 v0, 0x0

    :cond_9
    :goto_9
    invoke-direct {p0, p1, p2}, Lcom/opencsv/RFC4180Parser;->haveNotFoundLastQuote(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_37

    if-nez v0, :cond_1c

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-char v3, p0, Lcom/opencsv/RFC4180Parser;->separator:C

    if-ne v2, v3, :cond_1c

    return v1

    :cond_1c
    iget-char v1, p0, Lcom/opencsv/RFC4180Parser;->quotechar:C

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p2

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, p2}, Lcom/opencsv/RFC4180Parser;->haveNotFoundLastQuote(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_9

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget-char v2, p0, Lcom/opencsv/RFC4180Parser;->quotechar:C

    if-eq v1, v2, :cond_1c

    goto :goto_9

    :cond_37
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    return p1
.end method

.method private handleEmptySeparators([Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/opencsv/RFC4180Parser;->nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    sget-object v1, Lcom/opencsv/enums/CSVReaderNullFieldIndicator;->EMPTY_SEPARATORS:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/opencsv/RFC4180Parser;->nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    sget-object v1, Lcom/opencsv/enums/CSVReaderNullFieldIndicator;->BOTH:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    if-ne v0, v1, :cond_1e

    :cond_c
    const/4 v0, 0x0

    :goto_d
    array-length v1, p1

    if-ge v0, v1, :cond_1e

    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x0

    aput-object v1, p1, v0

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1e
    return-object p1
.end method

.method private handleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/opencsv/RFC4180Parser;->getQuotechar()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/StringUtils;->removeStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/StringUtils;->removeEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lorg/apache/commons/lang3/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/opencsv/RFC4180Parser;->nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    sget-object v1, Lcom/opencsv/enums/CSVReaderNullFieldIndicator;->BOTH:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    if-eq v0, v1, :cond_41

    iget-object v0, p0, Lcom/opencsv/RFC4180Parser;->nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    sget-object v1, Lcom/opencsv/enums/CSVReaderNullFieldIndicator;->EMPTY_QUOTES:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    if-ne v0, v1, :cond_42

    :cond_41
    const/4 p1, 0x0

    :cond_42
    return-object p1
.end method

.method private haveNotFoundLastQuote(Ljava/lang/String;I)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p2, v1, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v0

    if-ge p2, p1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private isSurroundWithQuotes(Ljava/lang/String;Z)Z
    .registers 3

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/opencsv/RFC4180Parser;->nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    sget-object p2, Lcom/opencsv/enums/CSVReaderNullFieldIndicator;->EMPTY_QUOTES:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    invoke-virtual {p1, p2}, Lcom/opencsv/enums/CSVReaderNullFieldIndicator;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_b
    if-nez p2, :cond_26

    invoke-virtual {p0}, Lcom/opencsv/RFC4180Parser;->getSeparator()C

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

.method private lastElementStartedWithQuoteButDidNotEndInOne(Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-char v0, p0, Lcom/opencsv/RFC4180Parser;->quotechar:C

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-char v0, p0, Lcom/opencsv/RFC4180Parser;->quotechar:C

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_25

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :goto_26
    return v1
.end method

.method private splitWhileNotInQuotes(Ljava/lang/String;Z)[Ljava/lang/String;
    .registers 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4f

    iget-char v2, p0, Lcom/opencsv/RFC4180Parser;->separator:C

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    iget-char v3, p0, Lcom/opencsv/RFC4180Parser;->quotechar:C

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    const/4 v4, -0x1

    if-ne v2, v4, :cond_27

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_6

    :cond_27
    if-eq v3, v4, :cond_45

    if-gt v3, v2, :cond_45

    if-eq v3, v1, :cond_2e

    goto :goto_45

    :cond_2e
    invoke-direct {p0, p1, v1}, Lcom/opencsv/RFC4180Parser;->findEndOfFieldFromPosition(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_3d

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_41

    :cond_3d
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_41
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    :cond_45
    :goto_45
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4c
    add-int/lit8 v1, v2, 0x1

    goto :goto_6

    :cond_4f
    if-eqz p2, :cond_80

    invoke-direct {p0, v0}, Lcom/opencsv/RFC4180Parser;->lastElementStartedWithQuoteButDidNotEndInOne(Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_80

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/opencsv/RFC4180Parser;->pending:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_93

    :cond_80
    iget-char p2, p0, Lcom/opencsv/RFC4180Parser;->separator:C

    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ne p2, p1, :cond_93

    const-string p1, ""

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_93
    :goto_93
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method private tokenizeStringIntoArray(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/opencsv/RFC4180Parser;->separatorAsString:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getPendingText()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/opencsv/RFC4180Parser;->pending:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQuotechar()C
    .registers 2

    iget-char v0, p0, Lcom/opencsv/RFC4180Parser;->quotechar:C

    return v0
.end method

.method public getSeparator()C
    .registers 2

    iget-char v0, p0, Lcom/opencsv/RFC4180Parser;->separator:C

    return v0
.end method

.method public isPending()Z
    .registers 2

    iget-object v0, p0, Lcom/opencsv/RFC4180Parser;->pending:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public nullFieldIndicator()Lcom/opencsv/enums/CSVReaderNullFieldIndicator;
    .registers 2

    iget-object v0, p0, Lcom/opencsv/RFC4180Parser;->nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

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

    invoke-virtual {p0, p1, v0}, Lcom/opencsv/RFC4180Parser;->parseLine(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected parseLine(Ljava/lang/String;Z)[Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_9

    iget-object v1, p0, Lcom/opencsv/RFC4180Parser;->pending:Ljava/lang/String;

    if-eqz v1, :cond_9

    iput-object v0, p0, Lcom/opencsv/RFC4180Parser;->pending:Ljava/lang/String;

    :cond_9
    const/4 v1, 0x0

    if-nez p1, :cond_19

    iget-object p1, p0, Lcom/opencsv/RFC4180Parser;->pending:Ljava/lang/String;

    if-eqz p1, :cond_18

    iput-object v0, p0, Lcom/opencsv/RFC4180Parser;->pending:Ljava/lang/String;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    aput-object p1, p2, v1

    return-object p2

    :cond_18
    return-object v0

    :cond_19
    if-eqz p2, :cond_30

    iget-object v2, p0, Lcom/opencsv/RFC4180Parser;->pending:Ljava/lang/String;

    if-eqz v2, :cond_30

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/opencsv/RFC4180Parser;->pending:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_30
    iput-object v0, p0, Lcom/opencsv/RFC4180Parser;->pending:Ljava/lang/String;

    iget-char v0, p0, Lcom/opencsv/RFC4180Parser;->quotechar:C

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/StringUtils;->contains(Ljava/lang/CharSequence;I)Z

    move-result v0

    if-nez v0, :cond_43

    invoke-direct {p0, p1}, Lcom/opencsv/RFC4180Parser;->tokenizeStringIntoArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/opencsv/RFC4180Parser;->handleEmptySeparators([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    goto :goto_63

    :cond_43
    invoke-direct {p0, p1, p2}, Lcom/opencsv/RFC4180Parser;->splitWhileNotInQuotes(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/opencsv/RFC4180Parser;->handleEmptySeparators([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    :goto_4b
    array-length p2, p1

    if-ge v1, p2, :cond_63

    aget-object p2, p1, v1

    iget-char v0, p0, Lcom/opencsv/RFC4180Parser;->quotechar:C

    invoke-static {p2, v0}, Lorg/apache/commons/lang3/StringUtils;->contains(Ljava/lang/CharSequence;I)Z

    move-result p2

    if-eqz p2, :cond_60

    aget-object p2, p1, v1

    invoke-direct {p0, p2}, Lcom/opencsv/RFC4180Parser;->handleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    :cond_60
    add-int/lit8 v1, v1, 0x1

    goto :goto_4b

    :cond_63
    :goto_63
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

    invoke-virtual {p0, p1, v0}, Lcom/opencsv/RFC4180Parser;->parseLine(Ljava/lang/String;Z)[Ljava/lang/String;

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

    invoke-direct {p0, v2}, Lcom/opencsv/RFC4180Parser;->convertToCsvValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_20

    invoke-virtual {p0}, Lcom/opencsv/RFC4180Parser;->getSeparator()C

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
