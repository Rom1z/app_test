.class public interface abstract Lcom/opencsv/bean/BeanField;
.super Ljava/lang/Object;
.source "BeanField.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getField()Ljava/lang/reflect/Field;
.end method

.method public abstract isRequired()Z
.end method

.method public abstract setErrorLocale(Ljava/util/Locale;)V
.end method

.method public abstract setField(Ljava/lang/reflect/Field;)V
.end method

.method public abstract setFieldValue(Ljava/lang/Object;Ljava/lang/String;)V
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
.end method

.method public abstract setRequired(Z)V
.end method

.method public abstract write(Ljava/lang/Object;)Ljava/lang/String;
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
.end method
