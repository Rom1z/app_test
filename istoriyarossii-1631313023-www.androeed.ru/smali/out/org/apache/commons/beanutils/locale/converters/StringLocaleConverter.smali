.class public Lorg/apache/commons/beanutils/locale/converters/StringLocaleConverter;
.super Lorg/apache/commons/beanutils/locale/BaseLocaleConverter;
.source "StringLocaleConverter.java"


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/beanutils/locale/converters/StringLocaleConverter;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/beanutils/locale/converters/StringLocaleConverter;-><init>(Ljava/lang/Object;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/util/Locale;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/beanutils/locale/converters/StringLocaleConverter;-><init>(Ljava/lang/Object;Ljava/util/Locale;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/util/Locale;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/beanutils/locale/converters/StringLocaleConverter;-><init>(Ljava/lang/Object;Ljava/util/Locale;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/util/Locale;Ljava/lang/String;Z)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/beanutils/locale/BaseLocaleConverter;-><init>(Ljava/lang/Object;Ljava/util/Locale;Ljava/lang/String;Z)V

    const-class p1, Lorg/apache/commons/beanutils/locale/converters/StringLocaleConverter;

    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/beanutils/locale/converters/StringLocaleConverter;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/util/Locale;Z)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/apache/commons/beanutils/locale/converters/StringLocaleConverter;-><init>(Ljava/lang/Object;Ljava/util/Locale;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Z)V
    .registers 4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/beanutils/locale/converters/StringLocaleConverter;-><init>(Ljava/lang/Object;Ljava/util/Locale;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/beanutils/locale/converters/StringLocaleConverter;-><init>(Ljava/util/Locale;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/beanutils/locale/converters/StringLocaleConverter;-><init>(Ljava/util/Locale;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Ljava/lang/String;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/beanutils/locale/BaseLocaleConverter;-><init>(Ljava/util/Locale;Ljava/lang/String;Z)V

    const-class p1, Lorg/apache/commons/beanutils/locale/converters/StringLocaleConverter;

    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/beanutils/locale/converters/StringLocaleConverter;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Z)V
    .registers 4

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/beanutils/locale/converters/StringLocaleConverter;-><init>(Ljava/util/Locale;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/beanutils/locale/converters/StringLocaleConverter;-><init>(Ljava/util/Locale;Z)V

    return-void
.end method

.method private getDecimalFormat(Ljava/util/Locale;Ljava/lang/String;)Ljava/text/DecimalFormat;
    .registers 4

    invoke-static {p1}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object p1

    check-cast p1, Ljava/text/DecimalFormat;

    if-eqz p2, :cond_14

    iget-boolean v0, p0, Lorg/apache/commons/beanutils/locale/converters/StringLocaleConverter;->locPattern:Z

    if-eqz v0, :cond_10

    invoke-virtual {p1, p2}, Ljava/text/DecimalFormat;->applyLocalizedPattern(Ljava/lang/String;)V

    goto :goto_1b

    :cond_10
    invoke-virtual {p1, p2}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    goto :goto_1b

    :cond_14
    iget-object p2, p0, Lorg/apache/commons/beanutils/locale/converters/StringLocaleConverter;->log:Lorg/apache/commons/logging/Log;

    const-string v0, "No pattern provided, using default."

    invoke-interface {p2, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :goto_1b
    return-object p1
.end method


# virtual methods
.method protected parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_48

    instance-of v0, p1, Ljava/lang/Long;

    if-nez v0, :cond_48

    instance-of v0, p1, Ljava/math/BigInteger;

    if-nez v0, :cond_48

    instance-of v0, p1, Ljava/lang/Byte;

    if-nez v0, :cond_48

    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_15

    goto :goto_48

    :cond_15
    instance-of v0, p1, Ljava/lang/Double;

    if-nez v0, :cond_37

    instance-of v0, p1, Ljava/math/BigDecimal;

    if-nez v0, :cond_37

    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_22

    goto :goto_37

    :cond_22
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_32

    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lorg/apache/commons/beanutils/locale/converters/StringLocaleConverter;->locale:Ljava/util/Locale;

    invoke-direct {v0, p2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_58

    :cond_32
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_58

    :cond_37
    :goto_37
    iget-object v0, p0, Lorg/apache/commons/beanutils/locale/converters/StringLocaleConverter;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/beanutils/locale/converters/StringLocaleConverter;->getDecimalFormat(Ljava/util/Locale;Ljava/lang/String;)Ljava/text/DecimalFormat;

    move-result-object p2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    goto :goto_58

    :cond_48
    :goto_48
    iget-object v0, p0, Lorg/apache/commons/beanutils/locale/converters/StringLocaleConverter;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/beanutils/locale/converters/StringLocaleConverter;->getDecimalFormat(Ljava/util/Locale;Ljava/lang/String;)Ljava/text/DecimalFormat;

    move-result-object p2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    :goto_58
    return-object p1
.end method
