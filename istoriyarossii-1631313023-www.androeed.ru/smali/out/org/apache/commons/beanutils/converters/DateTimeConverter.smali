.class public abstract Lorg/apache/commons/beanutils/converters/DateTimeConverter;
.super Lorg/apache/commons/beanutils/converters/AbstractConverter;
.source "DateTimeConverter.java"


# instance fields
.field private displayPatterns:Ljava/lang/String;

.field private locale:Ljava/util/Locale;

.field private patterns:[Ljava/lang/String;

.field private timeZone:Ljava/util/TimeZone;

.field private useLocaleFormat:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/apache/commons/beanutils/converters/AbstractConverter;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/beanutils/converters/AbstractConverter;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method private getFormat(Ljava/lang/String;)Ljava/text/DateFormat;
    .registers 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->timeZone:Ljava/util/TimeZone;

    if-eqz p1, :cond_c

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_c
    return-object v0
.end method

.method private logFormat(Ljava/lang/String;Ljava/text/DateFormat;)V
    .registers 5

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_6d

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " with Format"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    instance-of p1, p2, Ljava/text/SimpleDateFormat;

    const-string v1, "]"

    if-eqz p1, :cond_35

    const-string p1, "["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p2, Ljava/text/SimpleDateFormat;

    invoke-virtual {p2}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_35
    const-string p1, " for "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->locale:Ljava/util/Locale;

    if-nez p1, :cond_44

    const-string p1, "default locale"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_51

    :cond_44
    const-string p1, "locale["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->locale:Ljava/util/Locale;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_51
    iget-object p1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->timeZone:Ljava/util/TimeZone;

    if-eqz p1, :cond_62

    const-string p1, ", TimeZone["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_62
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_6d
    return-void
.end method

.method private parse(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/Calendar;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Calendar;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->patterns:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_19

    aget-object v4, v0, v3

    :try_start_9
    invoke-direct {p0, v4}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->getFormat(Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v4

    invoke-direct {p0, p1, p2, p3, v4}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->parse(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Calendar;

    move-result-object p1
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_11} :catch_12

    return-object p1

    :catch_12
    move-exception v4

    if-nez v2, :cond_16

    move-object v2, v4

    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_19
    iget-object p3, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->patterns:[Ljava/lang/String;

    array-length p3, p3

    const/4 v0, 0x1

    if-le p3, v0, :cond_55

    new-instance p3, Lorg/apache/commons/beanutils/ConversionException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error converting \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->toString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' to \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->toString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' using  patterns \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->displayPatterns:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_55
    throw v2
.end method

.method private parse(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Calendar;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/text/DateFormat;",
            ")",
            "Ljava/util/Calendar;"
        }
    .end annotation

    const-string v0, "Parsing"

    invoke-direct {p0, v0, p4}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->logFormat(Ljava/lang/String;Ljava/text/DateFormat;)V

    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Ljava/text/DateFormat;->setLenient(Z)V

    new-instance v1, Ljava/text/ParsePosition;

    invoke-direct {v1, v0}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {p4, p3, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v2

    if-gez v2, :cond_2a

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-ne v1, p3, :cond_2a

    if-nez v0, :cond_25

    goto :goto_2a

    :cond_25
    invoke-virtual {p4}, Ljava/text/DateFormat;->getCalendar()Ljava/util/Calendar;

    move-result-object p1

    return-object p1

    :cond_2a
    :goto_2a
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error converting \'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->toString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' to \'"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->toString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    instance-of p3, p4, Ljava/text/SimpleDateFormat;

    if-eqz p3, :cond_71

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " using pattern \'"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p4, Ljava/text/SimpleDateFormat;

    invoke-virtual {p4}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_71
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_93

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "    "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_93
    new-instance p1, Lorg/apache/commons/beanutils/ConversionException;

    invoke-direct {p1, p2}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private toDate(Ljava/lang/Class;J)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;J)TT;"
        }
    .end annotation

    const-class v0, Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_12
    const-class v0, Ljava/sql/Date;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    new-instance v0, Ljava/sql/Date;

    invoke-direct {v0, p2, p3}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_24
    const-class v0, Ljava/sql/Time;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    new-instance v0, Ljava/sql/Time;

    invoke-direct {v0, p2, p3}, Ljava/sql/Time;-><init>(J)V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_36
    const-class v0, Ljava/sql/Timestamp;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    new-instance v0, Ljava/sql/Timestamp;

    invoke-direct {v0, p2, p3}, Ljava/sql/Timestamp;-><init>(J)V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_48
    const-class v0, Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    iget-object v0, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->locale:Ljava/util/Locale;

    if-nez v0, :cond_5d

    iget-object v1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->timeZone:Ljava/util/TimeZone;

    if-nez v1, :cond_5d

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    goto :goto_73

    :cond_5d
    if-nez v0, :cond_66

    iget-object v0, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->timeZone:Ljava/util/TimeZone;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    goto :goto_73

    :cond_66
    iget-object v1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->timeZone:Ljava/util/TimeZone;

    if-nez v1, :cond_6f

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    goto :goto_73

    :cond_6f
    invoke-static {v1, v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    :goto_73
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Ljava/util/Calendar;->setLenient(Z)V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_84
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p0, p3}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->toString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " cannot handle conversion to \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->toString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result p2

    if-eqz p2, :cond_cb

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    :cond_cb
    new-instance p2, Lorg/apache/commons/beanutils/ConversionException;

    invoke-direct {p2, p1}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private toDate(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-class v0, Ljava/sql/Date;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    :try_start_8
    invoke-static {p2}, Ljava/sql/Date;->valueOf(Ljava/lang/String;)Ljava/sql/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_10} :catch_11

    return-object p1

    :catch_11
    new-instance p1, Lorg/apache/commons/beanutils/ConversionException;

    const-string p2, "String must be in JDBC format [yyyy-MM-dd] to create a java.sql.Date"

    invoke-direct {p1, p2}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_19
    const-class v0, Ljava/sql/Time;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    :try_start_21
    invoke-static {p2}, Ljava/sql/Time;->valueOf(Ljava/lang/String;)Ljava/sql/Time;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_29
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_29} :catch_2a

    return-object p1

    :catch_2a
    new-instance p1, Lorg/apache/commons/beanutils/ConversionException;

    const-string p2, "String must be in JDBC format [HH:mm:ss] to create a java.sql.Time"

    invoke-direct {p1, p2}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_32
    const-class v0, Ljava/sql/Timestamp;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    :try_start_3a
    invoke-static {p2}, Ljava/sql/Timestamp;->valueOf(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_42
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3a .. :try_end_42} :catch_43

    return-object p1

    :catch_43
    new-instance p1, Lorg/apache/commons/beanutils/ConversionException;

    const-string p2, "String must be in JDBC format [yyyy-MM-dd HH:mm:ss.fffffffff] to create a java.sql.Timestamp"

    invoke-direct {p1, p2}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->toString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " does not support default String to \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->toString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' conversion."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result p2

    if-eqz p2, :cond_9b

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object p2

    const-string v0, "    (N.B. Re-configure Converter or use alternative implementation)"

    invoke-interface {p2, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    :cond_9b
    new-instance p2, Lorg/apache/commons/beanutils/ConversionException;

    invoke-direct {p2, p1}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method protected convertToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Ljava/util/Date;

    goto :goto_26

    :cond_8
    instance-of v0, p1, Ljava/util/Calendar;

    if-eqz v0, :cond_14

    move-object v0, p1

    check-cast v0, Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    goto :goto_26

    :cond_14
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_25

    new-instance v0, Ljava/util/Date;

    move-object v1, p1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    iget-boolean v1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->useLocaleFormat:Z

    const-string v2, "\'"

    if-eqz v1, :cond_74

    if-eqz v0, :cond_74

    iget-object p1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->patterns:[Ljava/lang/String;

    if-eqz p1, :cond_3d

    array-length v1, p1

    if-lez v1, :cond_3d

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-direct {p0, p1}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->getFormat(Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object p1

    goto :goto_45

    :cond_3d
    iget-object p1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->locale:Ljava/util/Locale;

    iget-object v1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->getFormat(Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/text/DateFormat;

    move-result-object p1

    :goto_45
    const-string v1, "Formatting"

    invoke-direct {p0, v1, p1}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->logFormat(Ljava/lang/String;Ljava/text/DateFormat;)V

    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_9d

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    Converted  to String using format \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_9d

    :cond_74
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_9d

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    Converted  to String using toString() \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_9d
    :goto_9d
    return-object p1
.end method

.method protected convertToType(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    instance-of v1, p2, Ljava/sql/Timestamp;

    if-eqz v1, :cond_22

    check-cast p2, Ljava/sql/Timestamp;

    invoke-virtual {p2}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    mul-long v0, v0, v2

    invoke-virtual {p2}, Ljava/sql/Timestamp;->getNanos()I

    move-result p2

    const v2, 0xf4240

    div-int/2addr p2, v2

    int-to-long v2, p2

    add-long/2addr v0, v2

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->toDate(Ljava/lang/Class;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_22
    instance-of v1, p2, Ljava/util/Date;

    if-eqz v1, :cond_31

    check-cast p2, Ljava/util/Date;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->toDate(Ljava/lang/Class;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_31
    instance-of v1, p2, Ljava/util/Calendar;

    if-eqz v1, :cond_44

    check-cast p2, Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->toDate(Ljava/lang/Class;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_44
    instance-of v1, p2, Ljava/lang/Long;

    if-eqz v1, :cond_53

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->toDate(Ljava/lang/Class;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_53
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_66

    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->handleMissing(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_66
    iget-boolean v1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->useLocaleFormat:Z

    if-eqz v1, :cond_9c

    iget-object v1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->patterns:[Ljava/lang/String;

    if-eqz v1, :cond_76

    array-length v1, v1

    if-lez v1, :cond_76

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->parse(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object p2

    goto :goto_82

    :cond_76
    iget-object v1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->locale:Ljava/util/Locale;

    iget-object v2, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->getFormat(Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-direct {p0, v0, p1, p2, v1}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->parse(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Calendar;

    move-result-object p2

    :goto_82
    const-class v0, Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_8f

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_8f
    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->toDate(Ljava/lang/Class;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_9c
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->toDate(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected getFormat(Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/text/DateFormat;
    .registers 4

    const/4 v0, 0x3

    if-nez p1, :cond_8

    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object p1

    goto :goto_c

    :cond_8
    invoke-static {v0, p1}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p1

    :goto_c
    if-eqz p2, :cond_11

    invoke-virtual {p1, p2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_11
    return-object p1
.end method

.method public getLocale()Ljava/util/Locale;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getPatterns()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->patterns:[Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->timeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public setLocale(Ljava/util/Locale;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->locale:Ljava/util/Locale;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->setUseLocaleFormat(Z)V

    return-void
.end method

.method public setPattern(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->setPatterns([Ljava/lang/String;)V

    return-void
.end method

.method public setPatterns([Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->patterns:[Ljava/lang/String;

    const/4 v0, 0x1

    if-eqz p1, :cond_26

    array-length v1, p1

    if-le v1, v0, :cond_26

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_e
    array-length v3, p1

    if-ge v2, v3, :cond_20

    if-lez v2, :cond_18

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18
    aget-object v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->displayPatterns:Ljava/lang/String;

    :cond_26
    invoke-virtual {p0, v0}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->setUseLocaleFormat(Z)V

    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->timeZone:Ljava/util/TimeZone;

    return-void
.end method

.method public setUseLocaleFormat(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->useLocaleFormat:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->toString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[UseDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->isUseDefault()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", UseLocaleFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->useLocaleFormat:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->displayPatterns:Ljava/lang/String;

    if-eqz v1, :cond_39

    const-string v1, ", Patterns={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->displayPatterns:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_39
    iget-object v1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->locale:Ljava/util/Locale;

    if-eqz v1, :cond_47

    const-string v1, ", Locale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_47
    iget-object v1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->timeZone:Ljava/util/TimeZone;

    if-eqz v1, :cond_55

    const-string v1, ", TimeZone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_55
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
