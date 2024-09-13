.class public Lcom/opencsv/bean/customconverter/ConvertSplitOnWhitespace;
.super Lcom/opencsv/bean/AbstractBeanField;
.source "ConvertSplitOnWhitespace.java"


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


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/opencsv/bean/AbstractBeanField;-><init>()V

    return-void
.end method


# virtual methods
.method protected convert(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "\\s+"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return-object v0
.end method

.method protected convertToWrite(Ljava/lang/Object;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvDataTypeMismatchException;
        }
    .end annotation

    if-eqz p1, :cond_23

    :try_start_2
    check-cast p1, Ljava/util/List;

    const/16 v0, 0x20

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/StringUtils;->join(Ljava/lang/Iterable;C)Ljava/lang/String;

    move-result-object p1
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_a} :catch_b

    goto :goto_25

    :catch_b
    move-exception p1

    new-instance v0, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;

    iget-object v1, p0, Lcom/opencsv/bean/customconverter/ConvertSplitOnWhitespace;->errorLocale:Ljava/util/Locale;

    const-string v2, "convertSplitOnWhitespace"

    invoke-static {v2, v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    const-string v2, "wrong.type"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0

    :cond_23
    const-string p1, ""

    :goto_25
    return-object p1
.end method
