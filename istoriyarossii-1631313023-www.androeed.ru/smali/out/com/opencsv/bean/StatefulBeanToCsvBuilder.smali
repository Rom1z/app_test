.class public Lcom/opencsv/bean/StatefulBeanToCsvBuilder;
.super Ljava/lang/Object;
.source "StatefulBeanToCsvBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private errorLocale:Ljava/util/Locale;

.field private escapechar:C

.field private lineEnd:Ljava/lang/String;

.field private mappingStrategy:Lcom/opencsv/bean/MappingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/opencsv/bean/MappingStrategy<",
            "TT;>;"
        }
    .end annotation
.end field

.field private orderedResults:Z

.field private quotechar:C

.field private separator:C

.field private throwExceptions:Z

.field private final writer:Ljava/io/Writer;


# direct methods
.method private constructor <init>()V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2c

    iput-char v0, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->separator:C

    const/16 v0, 0x22

    iput-char v0, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->quotechar:C

    iput-char v0, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->escapechar:C

    const-string v0, "\n"

    iput-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->lineEnd:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->mappingStrategy:Lcom/opencsv/bean/MappingStrategy;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->throwExceptions:Z

    iput-boolean v0, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->orderedResults:Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iput-object v1, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->errorLocale:Ljava/util/Locale;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "opencsv"

    invoke-static {v2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v2

    const-string v3, "nullary.constructor.not.allowed"

    invoke-virtual {v2, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v0, v4

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2c

    iput-char v0, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->separator:C

    const/16 v0, 0x22

    iput-char v0, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->quotechar:C

    iput-char v0, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->escapechar:C

    const-string v0, "\n"

    iput-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->lineEnd:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->mappingStrategy:Lcom/opencsv/bean/MappingStrategy;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->throwExceptions:Z

    iput-boolean v0, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->orderedResults:Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->errorLocale:Ljava/util/Locale;

    iput-object p1, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->writer:Ljava/io/Writer;

    return-void
.end method


# virtual methods
.method public build()Lcom/opencsv/bean/StatefulBeanToCsv;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/opencsv/bean/StatefulBeanToCsv<",
            "TT;>;"
        }
    .end annotation

    new-instance v8, Lcom/opencsv/bean/StatefulBeanToCsv;

    iget-char v1, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->escapechar:C

    iget-object v2, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->lineEnd:Ljava/lang/String;

    iget-object v3, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->mappingStrategy:Lcom/opencsv/bean/MappingStrategy;

    iget-char v4, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->quotechar:C

    iget-char v5, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->separator:C

    iget-boolean v6, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->throwExceptions:Z

    iget-object v7, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->writer:Ljava/io/Writer;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/opencsv/bean/StatefulBeanToCsv;-><init>(CLjava/lang/String;Lcom/opencsv/bean/MappingStrategy;CCZLjava/io/Writer;)V

    iget-boolean v0, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->orderedResults:Z

    invoke-virtual {v8, v0}, Lcom/opencsv/bean/StatefulBeanToCsv;->setOrderedResults(Z)V

    iget-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->errorLocale:Ljava/util/Locale;

    invoke-virtual {v8, v0}, Lcom/opencsv/bean/StatefulBeanToCsv;->setErrorLocale(Ljava/util/Locale;)V

    return-object v8
.end method

.method public withErrorLocale(Ljava/util/Locale;)Lcom/opencsv/bean/StatefulBeanToCsvBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            ")",
            "Lcom/opencsv/bean/StatefulBeanToCsvBuilder<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    iput-object p1, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->errorLocale:Ljava/util/Locale;

    return-object p0
.end method

.method public withEscapechar(C)Lcom/opencsv/bean/StatefulBeanToCsvBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)",
            "Lcom/opencsv/bean/StatefulBeanToCsvBuilder<",
            "TT;>;"
        }
    .end annotation

    iput-char p1, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->escapechar:C

    return-object p0
.end method

.method public withLineEnd(Ljava/lang/String;)Lcom/opencsv/bean/StatefulBeanToCsvBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/opencsv/bean/StatefulBeanToCsvBuilder<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->lineEnd:Ljava/lang/String;

    return-object p0
.end method

.method public withMappingStrategy(Lcom/opencsv/bean/MappingStrategy;)Lcom/opencsv/bean/StatefulBeanToCsvBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opencsv/bean/MappingStrategy<",
            "TT;>;)",
            "Lcom/opencsv/bean/StatefulBeanToCsvBuilder<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->mappingStrategy:Lcom/opencsv/bean/MappingStrategy;

    return-object p0
.end method

.method public withOrderedResults(Z)Lcom/opencsv/bean/StatefulBeanToCsvBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/opencsv/bean/StatefulBeanToCsvBuilder<",
            "TT;>;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->orderedResults:Z

    return-object p0
.end method

.method public withQuotechar(C)Lcom/opencsv/bean/StatefulBeanToCsvBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)",
            "Lcom/opencsv/bean/StatefulBeanToCsvBuilder<",
            "TT;>;"
        }
    .end annotation

    iput-char p1, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->quotechar:C

    return-object p0
.end method

.method public withSeparator(C)Lcom/opencsv/bean/StatefulBeanToCsvBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)",
            "Lcom/opencsv/bean/StatefulBeanToCsvBuilder<",
            "TT;>;"
        }
    .end annotation

    iput-char p1, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->separator:C

    return-object p0
.end method

.method public withThrowExceptions(Z)Lcom/opencsv/bean/StatefulBeanToCsvBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/opencsv/bean/StatefulBeanToCsvBuilder<",
            "TT;>;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/opencsv/bean/StatefulBeanToCsvBuilder;->throwExceptions:Z

    return-object p0
.end method
