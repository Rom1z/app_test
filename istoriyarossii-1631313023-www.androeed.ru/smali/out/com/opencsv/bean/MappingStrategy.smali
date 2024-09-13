.class public interface abstract Lcom/opencsv/bean/MappingStrategy;
.super Ljava/lang/Object;
.source "MappingStrategy.java"


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
.method public abstract captureHeader(Lcom/opencsv/CSVReader;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;
        }
    .end annotation
.end method

.method public abstract createBean()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method public abstract findDescriptor(I)Ljava/beans/PropertyDescriptor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract findField(I)Lcom/opencsv/bean/BeanField;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvBadConverterException;
        }
    .end annotation
.end method

.method public abstract findMaxFieldIndex()I
.end method

.method public abstract generateHeader()[Ljava/lang/String;
.end method

.method public abstract getColumnIndex(Ljava/lang/String;)Ljava/lang/Integer;
.end method

.method public abstract isAnnotationDriven()Z
.end method

.method public abstract setErrorLocale(Ljava/util/Locale;)V
.end method

.method public abstract setType(Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvBadConverterException;
        }
    .end annotation
.end method

.method public abstract verifyLineLength(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;
        }
    .end annotation
.end method
