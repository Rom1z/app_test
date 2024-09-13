.class public abstract Lcom/opencsv/bean/AbstractBeanField;
.super Ljava/lang/Object;
.source "AbstractBeanField.java"

# interfaces
.implements Lcom/opencsv/bean/BeanField;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/opencsv/bean/BeanField<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected errorLocale:Ljava/util/Locale;

.field protected field:Ljava/lang/reflect/Field;

.field private propUtils:Lorg/apache/commons/beanutils/PropertyUtilsBean;

.field protected required:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/opencsv/bean/AbstractBeanField;->required:Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/opencsv/bean/AbstractBeanField;->errorLocale:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Field;)V
    .registers 4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/opencsv/bean/AbstractBeanField;-><init>(Ljava/lang/reflect/Field;ZLjava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Field;Z)V
    .registers 4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/opencsv/bean/AbstractBeanField;-><init>(Ljava/lang/reflect/Field;ZLjava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Field;ZLjava/util/Locale;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/opencsv/bean/AbstractBeanField;->field:Ljava/lang/reflect/Field;

    iput-boolean p2, p0, Lcom/opencsv/bean/AbstractBeanField;->required:Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p3, p1}, Lorg/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    iput-object p1, p0, Lcom/opencsv/bean/AbstractBeanField;->errorLocale:Ljava/util/Locale;

    return-void
.end method

.method private assignValueToField(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvDataTypeMismatchException;
        }
    .end annotation

    if-eqz p2, :cond_5b

    iget-object v0, p0, Lcom/opencsv/bean/AbstractBeanField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/opencsv/bean/AbstractBeanField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/opencsv/bean/AbstractBeanField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_36
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Class;

    aput-object v0, v5, v3

    invoke-virtual {v2, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_42
    .catch Ljava/lang/NoSuchMethodException; {:try_start_36 .. :try_end_42} :catch_58
    .catch Ljava/lang/SecurityException; {:try_start_36 .. :try_end_42} :catch_58

    :try_start_42
    new-array v2, v4, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_49
    .catch Ljava/lang/IllegalAccessException; {:try_start_42 .. :try_end_49} :catch_5b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_42 .. :try_end_49} :catch_4a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_42 .. :try_end_49} :catch_58
    .catch Ljava/lang/SecurityException; {:try_start_42 .. :try_end_49} :catch_58

    goto :goto_5b

    :catch_4a
    move-exception v1

    :try_start_4b
    new-instance v2, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p2, v0, v3}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2
    :try_end_58
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4b .. :try_end_58} :catch_58
    .catch Ljava/lang/SecurityException; {:try_start_4b .. :try_end_58} :catch_58

    :catch_58
    invoke-direct {p0, p1, p2}, Lcom/opencsv/bean/AbstractBeanField;->writeWithoutSetter(Ljava/lang/Object;Ljava/lang/Object;)V

    :catch_5b
    :cond_5b
    :goto_5b
    return-void
.end method

.method private writeWithoutSetter(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvDataTypeMismatchException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/opencsv/bean/AbstractBeanField;->field:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Lorg/apache/commons/lang3/reflect/FieldUtils;->writeField(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;Z)V
    :try_end_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_6} :catch_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_17

    :catch_7
    move-exception p1

    new-instance v0, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;

    iget-object v1, p0, Lcom/opencsv/bean/AbstractBeanField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;-><init>(Ljava/lang/Object;Ljava/lang/Class;)V

    invoke-virtual {v0, p1}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0

    :catch_17
    :goto_17
    return-void
.end method


# virtual methods
.method protected abstract convert(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvDataTypeMismatchException;,
            Lcom/opencsv/exceptions/CsvConstraintViolationException;
        }
    .end annotation
.end method

.method protected convertToWrite(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvDataTypeMismatchException;
        }
    .end annotation

    if-nez p1, :cond_5

    const-string p1, ""

    goto :goto_9

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_9
    return-object p1
.end method

.method public getField()Ljava/lang/reflect/Field;
    .registers 2

    iget-object v0, p0, Lcom/opencsv/bean/AbstractBeanField;->field:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public isRequired()Z
    .registers 2

    iget-boolean v0, p0, Lcom/opencsv/bean/AbstractBeanField;->required:Z

    return v0
.end method

.method public setErrorLocale(Ljava/util/Locale;)V
    .registers 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    iput-object p1, p0, Lcom/opencsv/bean/AbstractBeanField;->errorLocale:Ljava/util/Locale;

    return-void
.end method

.method public setField(Ljava/lang/reflect/Field;)V
    .registers 2

    iput-object p1, p0, Lcom/opencsv/bean/AbstractBeanField;->field:Ljava/lang/reflect/Field;

    return-void
.end method

.method public final setFieldValue(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvDataTypeMismatchException;,
            Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;,
            Lcom/opencsv/exceptions/CsvConstraintViolationException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/opencsv/bean/AbstractBeanField;->required:Z

    if-eqz v0, :cond_35

    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_35

    :cond_b
    new-instance p2, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    iget-object v0, p0, Lcom/opencsv/bean/AbstractBeanField;->field:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/opencsv/bean/AbstractBeanField;->errorLocale:Ljava/util/Locale;

    const-string v2, "opencsv"

    invoke-static {v2, v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    const-string v2, "required.field.empty"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/opencsv/bean/AbstractBeanField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, p1, v0, v1}, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/String;)V

    throw p2

    :cond_35
    :goto_35
    invoke-virtual {p0, p2}, Lcom/opencsv/bean/AbstractBeanField;->convert(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/opencsv/bean/AbstractBeanField;->assignValueToField(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public setRequired(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/opencsv/bean/AbstractBeanField;->required:Z

    return-void
.end method

.method public final write(Ljava/lang/Object;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvDataTypeMismatchException;,
            Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;
        }
    .end annotation

    if-eqz p1, :cond_7b

    iget-object v0, p0, Lcom/opencsv/bean/AbstractBeanField;->field:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_7b

    iget-object v0, p0, Lcom/opencsv/bean/AbstractBeanField;->propUtils:Lorg/apache/commons/beanutils/PropertyUtilsBean;

    if-nez v0, :cond_11

    new-instance v0, Lorg/apache/commons/beanutils/PropertyUtilsBean;

    invoke-direct {v0}, Lorg/apache/commons/beanutils/PropertyUtilsBean;-><init>()V

    iput-object v0, p0, Lcom/opencsv/bean/AbstractBeanField;->propUtils:Lorg/apache/commons/beanutils/PropertyUtilsBean;

    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/opencsv/bean/AbstractBeanField;->propUtils:Lorg/apache/commons/beanutils/PropertyUtilsBean;

    iget-object v1, p0, Lcom/opencsv/bean/AbstractBeanField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getSimpleProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1d
    .catch Ljava/lang/IllegalAccessException; {:try_start_11 .. :try_end_1d} :catch_6f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_11 .. :try_end_1d} :catch_6d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_11 .. :try_end_1d} :catch_6b

    if-nez v0, :cond_4e

    iget-boolean v1, p0, Lcom/opencsv/bean/AbstractBeanField;->required:Z

    if-nez v1, :cond_24

    goto :goto_4e

    :cond_24
    new-instance v0, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    iget-object v1, p0, Lcom/opencsv/bean/AbstractBeanField;->field:Ljava/lang/reflect/Field;

    iget-object v2, p0, Lcom/opencsv/bean/AbstractBeanField;->errorLocale:Ljava/util/Locale;

    const-string v3, "opencsv"

    invoke-static {v3, v2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v2

    const-string v3, "required.field.empty"

    invoke-virtual {v2, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/opencsv/bean/AbstractBeanField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/String;)V

    throw v0

    :cond_4e
    :goto_4e
    :try_start_4e
    invoke-virtual {p0, v0}, Lcom/opencsv/bean/AbstractBeanField;->convertToWrite(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_52
    .catch Lcom/opencsv/exceptions/CsvDataTypeMismatchException; {:try_start_4e .. :try_end_52} :catch_53

    goto :goto_7c

    :catch_53
    move-exception v0

    new-instance v1, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;

    iget-object v2, p0, Lcom/opencsv/bean/AbstractBeanField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1

    :catch_6b
    move-exception v0

    goto :goto_70

    :catch_6d
    move-exception v0

    goto :goto_70

    :catch_6f
    move-exception v0

    :goto_70
    new-instance v1, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;

    iget-object v2, p0, Lcom/opencsv/bean/AbstractBeanField;->field:Ljava/lang/reflect/Field;

    invoke-direct {v1, p1, v2}, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Field;)V

    invoke-virtual {v1, v0}, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1

    :cond_7b
    const/4 p1, 0x0

    :goto_7c
    return-object p1
.end method
