.class public Lcom/opencsv/CSVIterator;
.super Ljava/lang/Object;
.source "CSVIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private errorLocale:Ljava/util/Locale;

.field private nextLine:[Ljava/lang/String;

.field private final reader:Lcom/opencsv/CSVReader;


# direct methods
.method public constructor <init>(Lcom/opencsv/CSVReader;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/opencsv/CSVIterator;->errorLocale:Ljava/util/Locale;

    iput-object p1, p0, Lcom/opencsv/CSVIterator;->reader:Lcom/opencsv/CSVReader;

    invoke-virtual {p1}, Lcom/opencsv/CSVReader;->readNext()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/opencsv/CSVIterator;->nextLine:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Lcom/opencsv/CSVIterator;->nextLine:[Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/opencsv/CSVIterator;->next()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()[Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/opencsv/CSVIterator;->nextLine:[Ljava/lang/String;

    :try_start_2
    iget-object v1, p0, Lcom/opencsv/CSVIterator;->reader:Lcom/opencsv/CSVReader;

    invoke-virtual {v1}, Lcom/opencsv/CSVReader;->readNext()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/opencsv/CSVIterator;->nextLine:[Ljava/lang/String;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    iget-object v1, p0, Lcom/opencsv/CSVIterator;->errorLocale:Ljava/util/Locale;

    const-string v2, "opencsv"

    invoke-static {v2, v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    const-string v2, "read.only.iterator"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setErrorLocale(Ljava/util/Locale;)V
    .registers 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    iput-object p1, p0, Lcom/opencsv/CSVIterator;->errorLocale:Ljava/util/Locale;

    return-void
.end method
