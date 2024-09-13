.class public Lorg/apache/commons/beanutils/locale/converters/DateLocaleConverter;
.super Lorg/apache/commons/beanutils/locale/BaseLocaleConverter;
.source "DateLocaleConverter.java"


# static fields
.field private static final DEFAULT_PATTERN_CHARS:Ljava/lang/String;


# instance fields
.field isLenient:Z

.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lorg/apache/commons/beanutils/locale/converters/DateLocaleConverter;->initDefaultChars()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/beanutils/locale/converters/DateLocaleConverter;->DEFAULT_PATTERN_CHARS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/beanutils/locale/converters/DateLocaleConverter;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/beanutils/locale/converters/DateLocaleConverter;-><init>(Ljava/lang/Object;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/util/Locale;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/beanutils/locale/converters/DateLocaleConverter;-><init>(Ljava/lang/Object;Ljava/util/Locale;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/util/Locale;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/beanutils/locale/converters/DateLocaleConverter;-><init>(Ljava/lang/Object;Ljava/util/Locale;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/util/Locale;Ljava/lang/String;Z)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/beanutils/locale/BaseLocaleConverter;-><init>(Ljava/lang/Object;Ljava/util/Locale;Ljava/lang/String;Z)V

    const-class p1, Lorg/apache/commons/beanutils/locale/converters/DateLocaleConverter;

    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/beanutils/locale/converters/DateLocaleConverter;->log:Lorg/apache/commons/logging/Log;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/commons/beanutils/locale/converters/DateLocaleConverter;->isLenient:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/util/Locale;Z)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/apache/commons/beanutils/locale/converters/DateLocaleConverter;-><init>(Ljava/lang/Object;Ljava/util/Locale;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Z)V
    .registers 4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/beanutils/locale/converters/DateLocaleConverter;-><init>(Ljava/lang/Object;Ljava/util/Locale;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/beanutils/locale/converters/DateLocaleConverter;-><init>(Ljava/util/Locale;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/beanutils/locale/converters/DateLocaleConverter;-><init>(Ljava/util/Locale;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Ljava/lang/String;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/beanutils/locale/BaseLocaleConverter;-><init>(Ljava/util/Locale;Ljava/lang/String;Z)V

    const-class p1, Lorg/apache/commons/beanutils/locale/converters/DateLocaleConverter;

    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/beanutils/locale/converters/DateLocaleConverter;->log:Lorg/apache/commons/logging/Log;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/commons/beanutils/locale/converters/DateLocaleConverter;->isLenient:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Z)V
    .registers 4

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/beanutils/locale/converters/DateLocaleConverter;-><init>(Ljava/util/Locale;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/beanutils/locale/converters/DateLocaleConverter;-><init>(Ljava/util/Locale;Z)V

    return-void
.end method

.method private convertLocalizedPattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1, p2}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getLocalPatternChars()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/beanutils/locale/converters/DateLocaleConverter;->DEFAULT_PATTERN_CHARS:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    return-object p1

    :cond_16
    :try_start_16
    invoke-direct {p0, p1, v1, v2}, Lorg/apache/commons/beanutils/locale/converters/DateLocaleConverter;->convertPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1a} :catch_1b

    goto :goto_3a

    :catch_1b
    move-exception v1

    iget-object v2, p0, Lorg/apache/commons/beanutils/locale/converters/DateLocaleConverter;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Converting pattern \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' for "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_3a
    return-object v0
.end method

.method private convertPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_5c

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x27

    if-eqz v3, :cond_1a

    if-ne v4, v5, :cond_56

    const/4 v3, 0x0

    goto :goto_56

    :cond_1a
    if-ne v4, v5, :cond_1e

    const/4 v3, 0x1

    goto :goto_56

    :cond_1e
    const/16 v5, 0x61

    if-lt v4, v5, :cond_26

    const/16 v5, 0x7a

    if-le v4, v5, :cond_2e

    :cond_26
    const/16 v5, 0x41

    if-lt v4, v5, :cond_56

    const/16 v5, 0x5a

    if-gt v4, v5, :cond_56

    :cond_2e
    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3a

    invoke-virtual {p3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_56

    :cond_3a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Illegal pattern character \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p3, "\'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_56
    :goto_56
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_5c
    if-nez v3, :cond_63

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_63
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unfinished quote in pattern"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static initDefaultChars()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/text/DateFormatSymbols;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getLocalPatternChars()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public isLenient()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/commons/beanutils/locale/converters/DateLocaleConverter;->isLenient:Z

    return v0
.end method

.method protected parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_5

    return-object p1

    :cond_5
    instance-of v0, p1, Ljava/util/Calendar;

    if-eqz v0, :cond_10

    check-cast p1, Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    return-object p1

    :cond_10
    iget-boolean v0, p0, Lorg/apache/commons/beanutils/locale/converters/DateLocaleConverter;->locPattern:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lorg/apache/commons/beanutils/locale/converters/DateLocaleConverter;->locale:Ljava/util/Locale;

    invoke-direct {p0, p2, v0}, Lorg/apache/commons/beanutils/locale/converters/DateLocaleConverter;->convertLocalizedPattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    :cond_1a
    if-nez p2, :cond_24

    const/4 p2, 0x3

    iget-object v0, p0, Lorg/apache/commons/beanutils/locale/converters/DateLocaleConverter;->locale:Ljava/util/Locale;

    invoke-static {p2, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p2

    goto :goto_2c

    :cond_24
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lorg/apache/commons/beanutils/locale/converters/DateLocaleConverter;->locale:Ljava/util/Locale;

    invoke-direct {v0, p2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object p2, v0

    :goto_2c
    iget-boolean v0, p0, Lorg/apache/commons/beanutils/locale/converters/DateLocaleConverter;->isLenient:Z

    invoke-virtual {p2, v0}, Ljava/text/DateFormat;->setLenient(Z)V

    new-instance v0, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Ljava/text/DateFormat;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v2

    const/4 v3, -0x1

    if-gt v2, v3, :cond_74

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v2, v1, :cond_51

    return-object p2

    :cond_51
    new-instance p2, Lorg/apache/commons/beanutils/ConversionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Date \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' contains unparsed characters from position="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_74
    new-instance p2, Lorg/apache/commons/beanutils/ConversionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error parsing date \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' at position="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setLenient(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/apache/commons/beanutils/locale/converters/DateLocaleConverter;->isLenient:Z

    return-void
.end method
