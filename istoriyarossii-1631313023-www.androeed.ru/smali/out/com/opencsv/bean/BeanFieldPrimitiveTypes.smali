.class public Lcom/opencsv/bean/BeanFieldPrimitiveTypes;
.super Lcom/opencsv/bean/AbstractBeanField;
.source "BeanFieldPrimitiveTypes.java"


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
.field private final locale:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;ZLjava/lang/String;Ljava/util/Locale;)V
    .registers 5

    invoke-direct {p0, p1, p2, p4}, Lcom/opencsv/bean/AbstractBeanField;-><init>(Ljava/lang/reflect/Field;ZLjava/util/Locale;)V

    iput-object p3, p0, Lcom/opencsv/bean/BeanFieldPrimitiveTypes;->locale:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected convert(Ljava/lang/String;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvDataTypeMismatchException;
        }
    .end annotation

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    if-eqz p1, :cond_17

    iget-object v0, p0, Lcom/opencsv/bean/BeanFieldPrimitiveTypes;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 p1, 0x0

    goto :goto_4f

    :cond_19
    :goto_19
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_1b
    iget-object v2, p0, Lcom/opencsv/bean/BeanFieldPrimitiveTypes;->locale:Ljava/lang/String;

    invoke-static {v2}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_36

    new-instance v2, Lorg/apache/commons/beanutils/ConvertUtilsBean;

    invoke-direct {v2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;-><init>()V

    invoke-virtual {v2, v0, v1, v1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(ZZI)V

    iget-object v3, p0, Lcom/opencsv/bean/BeanFieldPrimitiveTypes;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->convert(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_4f

    :cond_36
    new-instance v2, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    invoke-direct {v2}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;-><init>()V

    new-instance v3, Ljava/util/Locale;

    iget-object v4, p0, Lcom/opencsv/bean/BeanFieldPrimitiveTypes;->locale:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->setDefaultLocale(Ljava/util/Locale;)V

    iget-object v3, p0, Lcom/opencsv/bean/BeanFieldPrimitiveTypes;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->convert(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_4f
    .catch Lorg/apache/commons/beanutils/ConversionException; {:try_start_1b .. :try_end_4f} :catch_50

    :goto_4f
    return-object p1

    :catch_50
    move-exception v2

    new-instance v3, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;

    iget-object v4, p0, Lcom/opencsv/bean/BeanFieldPrimitiveTypes;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    iget-object v5, p0, Lcom/opencsv/bean/BeanFieldPrimitiveTypes;->errorLocale:Ljava/util/Locale;

    const-string v6, "opencsv"

    invoke-static {v6, v5}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v5

    const-string v6, "conversion.impossible"

    invoke-virtual {v5, v6}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v1

    iget-object v1, p0, Lcom/opencsv/bean/BeanFieldPrimitiveTypes;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, p1, v4, v0}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v3
.end method

.method protected convertToWrite(Ljava/lang/Object;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvDataTypeMismatchException;
        }
    .end annotation

    if-eqz p1, :cond_40

    :try_start_2
    iget-object v0, p0, Lcom/opencsv/bean/BeanFieldPrimitiveTypes;->locale:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Lorg/apache/commons/beanutils/ConvertUtilsBean;

    invoke-direct {v0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;-><init>()V

    invoke-virtual {v0, p1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->convert(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_41

    :cond_14
    new-instance v0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    invoke-direct {v0}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;-><init>()V

    new-instance v1, Ljava/util/Locale;

    iget-object v2, p0, Lcom/opencsv/bean/BeanFieldPrimitiveTypes;->locale:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->setDefaultLocale(Ljava/util/Locale;)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->convert(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_27
    .catch Lorg/apache/commons/beanutils/ConversionException; {:try_start_2 .. :try_end_27} :catch_28

    goto :goto_41

    :catch_28
    move-exception p1

    new-instance v0, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;

    iget-object v1, p0, Lcom/opencsv/bean/BeanFieldPrimitiveTypes;->errorLocale:Ljava/util/Locale;

    const-string v2, "opencsv"

    invoke-static {v2, v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    const-string v2, "field.not.primitive"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0

    :cond_40
    const/4 p1, 0x0

    :goto_41
    return-object p1
.end method
