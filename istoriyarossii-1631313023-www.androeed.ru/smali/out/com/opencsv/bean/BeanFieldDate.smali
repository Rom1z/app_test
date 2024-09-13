.class public Lcom/opencsv/bean/BeanFieldDate;
.super Lcom/opencsv/bean/AbstractBeanField;
.source "BeanFieldDate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/opencsv/bean/AbstractBeanField<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final formatString:Ljava/lang/String;

.field private final locale:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;ZLjava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V
    .registers 6

    invoke-direct {p0, p1, p2, p5}, Lcom/opencsv/bean/AbstractBeanField;-><init>(Ljava/lang/reflect/Field;ZLjava/util/Locale;)V

    iput-object p3, p0, Lcom/opencsv/bean/BeanFieldDate;->formatString:Ljava/lang/String;

    iput-object p4, p0, Lcom/opencsv/bean/BeanFieldDate;->locale:Ljava/lang/String;

    return-void
.end method

.method private convertCalendar(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TU;>;)TU;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvDataTypeMismatchException;
        }
    .end annotation

    instance-of v0, p1, Ljava/lang/String;

    const-string v1, "opencsv"

    if-eqz v0, :cond_4f

    :try_start_6
    invoke-direct {p0}, Lcom/opencsv/bean/BeanFieldDate;->getFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_11
    .catch Ljava/text/ParseException; {:try_start_6 .. :try_end_11} :catch_45

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    const-class p1, Ljavax/xml/datatype/XMLGregorianCalendar;

    if-ne p2, p1, :cond_40

    :try_start_1d
    invoke-static {}, Ljavax/xml/datatype/DatatypeFactory;->newInstance()Ljavax/xml/datatype/DatatypeFactory;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljavax/xml/datatype/DatatypeFactory;->newXMLGregorianCalendar(Ljava/util/GregorianCalendar;)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_29
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_1d .. :try_end_29} :catch_2a

    goto :goto_70

    :catch_2a
    move-exception p1

    new-instance p2, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;

    iget-object v0, p0, Lcom/opencsv/bean/BeanFieldDate;->errorLocale:Ljava/util/Locale;

    invoke-static {v1, v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    const-string v1, "xmlgregoriancalendar.impossible"

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2

    :cond_40
    invoke-virtual {p2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_70

    :catch_45
    move-exception v0

    new-instance v1, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;

    invoke-direct {v1, p1, p2}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;-><init>(Ljava/lang/Object;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1

    :cond_4f
    instance-of v0, p1, Ljavax/xml/datatype/XMLGregorianCalendar;

    if-eqz v0, :cond_5a

    check-cast p1, Ljavax/xml/datatype/XMLGregorianCalendar;

    invoke-virtual {p1}, Ljavax/xml/datatype/XMLGregorianCalendar;->toGregorianCalendar()Ljava/util/GregorianCalendar;

    move-result-object p1

    goto :goto_60

    :cond_5a
    instance-of v0, p1, Ljava/util/Calendar;

    if-eqz v0, :cond_71

    check-cast p1, Ljava/util/Calendar;

    :goto_60
    invoke-direct {p0}, Lcom/opencsv/bean/BeanFieldDate;->getFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_70
    return-object p1

    :cond_71
    new-instance v0, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;

    iget-object v2, p0, Lcom/opencsv/bean/BeanFieldDate;->errorLocale:Ljava/util/Locale;

    invoke-static {v1, v2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    const-string v2, "csvdate.not.date"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V

    throw v0
.end method

.method private convertCommon(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TU;>;)TU;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvDataTypeMismatchException;
        }
    .end annotation

    const-class v0, Ljava/lang/String;

    if-ne p2, v0, :cond_9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_a

    :cond_9
    move-object v0, p2

    :goto_a
    const-class v1, Ljava/util/Date;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-direct {p0, p1, p2}, Lcom/opencsv/bean/BeanFieldDate;->convertDate(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_40

    :cond_17
    const-class v1, Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_3c

    const-class v1, Ljavax/xml/datatype/XMLGregorianCalendar;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_28

    goto :goto_3c

    :cond_28
    new-instance v0, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;

    iget-object v1, p0, Lcom/opencsv/bean/BeanFieldDate;->errorLocale:Ljava/util/Locale;

    const-string v2, "opencsv"

    invoke-static {v2, v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    const-string v2, "csvdate.not.date"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V

    throw v0

    :cond_3c
    :goto_3c
    invoke-direct {p0, p1, p2}, Lcom/opencsv/bean/BeanFieldDate;->convertCalendar(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    :goto_40
    return-object p1
.end method

.method private convertDate(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TU;>;)TU;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvDataTypeMismatchException;
        }
    .end annotation

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_3e

    :try_start_4
    invoke-direct {p0}, Lcom/opencsv/bean/BeanFieldDate;->getFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p2, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2b
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_2b} :catch_34
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_2b} :catch_32
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_2b} :catch_30
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_2b} :catch_2e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_2b} :catch_2c

    goto :goto_58

    :catch_2c
    move-exception v0

    goto :goto_35

    :catch_2e
    move-exception v0

    goto :goto_35

    :catch_30
    move-exception v0

    goto :goto_35

    :catch_32
    move-exception v0

    goto :goto_35

    :catch_34
    move-exception v0

    :goto_35
    new-instance v1, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;

    invoke-direct {v1, p1, p2}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;-><init>(Ljava/lang/Object;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1

    :cond_3e
    const-class v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-direct {p0}, Lcom/opencsv/bean/BeanFieldDate;->getFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    check-cast p1, Ljava/util/Date;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_58
    return-object p1

    :cond_59
    new-instance v0, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;

    iget-object v1, p0, Lcom/opencsv/bean/BeanFieldDate;->errorLocale:Ljava/util/Locale;

    const-string v2, "opencsv"

    invoke-static {v2, v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    const-string v2, "csvdate.not.date"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V

    throw v0
.end method

.method private getFormat()Ljava/text/SimpleDateFormat;
    .registers 4

    iget-object v0, p0, Lcom/opencsv/bean/BeanFieldDate;->locale:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/opencsv/bean/BeanFieldDate;->locale:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/opencsv/bean/BeanFieldDate;->formatString:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto :goto_1d

    :cond_16
    new-instance v1, Ljava/text/SimpleDateFormat;

    iget-object v0, p0, Lcom/opencsv/bean/BeanFieldDate;->formatString:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :goto_1d
    return-object v1
.end method


# virtual methods
.method protected convert(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvDataTypeMismatchException;
        }
    .end annotation

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    goto :goto_12

    :cond_8
    iget-object v0, p0, Lcom/opencsv/bean/BeanFieldDate;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/opencsv/bean/BeanFieldDate;->convertCommon(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    :goto_12
    return-object p1
.end method

.method protected convertToWrite(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvDataTypeMismatchException;
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_c

    :cond_4
    const-class v0, Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/opencsv/bean/BeanFieldDate;->convertCommon(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :goto_c
    return-object p1
.end method
