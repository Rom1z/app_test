.class public Lcom/opencsv/bean/customconverter/ConvertGermanToBoolean;
.super Lcom/opencsv/bean/AbstractBeanField;
.source "ConvertGermanToBoolean.java"


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


# static fields
.field protected static final FALSCH:Ljava/lang/String; = "falsch"

.field protected static final WAHR:Ljava/lang/String; = "wahr"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/opencsv/bean/AbstractBeanField;-><init>()V

    return-void
.end method


# virtual methods
.method protected convert(Ljava/lang/String;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvDataTypeMismatchException;
        }
    .end annotation

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    :cond_8
    const-string v0, "wahr"

    const-string v1, "ja"

    const-string v2, "j"

    const-string v3, "1"

    const-string v4, "w"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "falsch"

    const-string v2, "nein"

    const-string v3, "n"

    const-string v4, "0"

    const-string v5, "f"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/apache/commons/beanutils/converters/BooleanConverter;

    invoke-direct {v2, v0, v1}, Lorg/apache/commons/beanutils/converters/BooleanConverter;-><init>([Ljava/lang/String;[Ljava/lang/String;)V

    :try_start_29
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lorg/apache/commons/beanutils/Converter;->convert(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_33
    .catch Lorg/apache/commons/beanutils/ConversionException; {:try_start_29 .. :try_end_33} :catch_34

    return-object p1

    :catch_34
    move-exception v0

    new-instance v1, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;

    iget-object v2, p0, Lcom/opencsv/bean/customconverter/ConvertGermanToBoolean;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Lcom/opencsv/bean/customconverter/ConvertGermanToBoolean;->errorLocale:Ljava/util/Locale;

    const-string v4, "convertGermanToBoolean"

    invoke-static {v4, v3}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v3

    const-string v4, "input.not.boolean"

    invoke-virtual {v3, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method

.method protected convertToWrite(Ljava/lang/Object;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvDataTypeMismatchException;
        }
    .end annotation

    if-eqz p1, :cond_28

    :try_start_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_d

    const-string p1, "wahr"

    goto :goto_2a

    :cond_d
    const-string p1, "falsch"
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_f} :catch_10

    goto :goto_2a

    :catch_10
    move-exception p1

    new-instance v0, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;

    iget-object v1, p0, Lcom/opencsv/bean/customconverter/ConvertGermanToBoolean;->errorLocale:Ljava/util/Locale;

    const-string v2, "convertGermanToBoolean"

    invoke-static {v2, v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    const-string v2, "field.not.boolean"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0

    :cond_28
    const-string p1, ""

    :goto_2a
    return-object p1
.end method
