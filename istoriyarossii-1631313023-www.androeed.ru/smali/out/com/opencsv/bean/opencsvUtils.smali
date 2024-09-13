.class public final Lcom/opencsv/bean/opencsvUtils;
.super Ljava/lang/Object;
.source "opencsvUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static determineMappingStrategy(Ljava/lang/Class;Ljava/util/Locale;)Lcom/opencsv/bean/MappingStrategy;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class;",
            "Ljava/util/Locale;",
            ")",
            "Lcom/opencsv/bean/MappingStrategy<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/FieldUtils;->getAllFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v1, :cond_21

    aget-object v4, v0, v3

    const-class v5, Lcom/opencsv/bean/CsvBindByPosition;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_1f

    const-class v5, Lcom/opencsv/bean/CsvCustomBindByPosition;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1c

    goto :goto_1f

    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_1f
    :goto_1f
    const/4 v1, 0x1

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    if-eqz v1, :cond_30

    new-instance v0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;

    invoke-direct {v0}, Lcom/opencsv/bean/ColumnPositionMappingStrategy;-><init>()V

    invoke-virtual {v0, p1}, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->setErrorLocale(Ljava/util/Locale;)V

    invoke-virtual {v0, p0}, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->setType(Ljava/lang/Class;)V

    goto :goto_81

    :cond_30
    new-instance v1, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;

    invoke-direct {v1}, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;-><init>()V

    invoke-virtual {v1, p1}, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->setErrorLocale(Ljava/util/Locale;)V

    invoke-virtual {v1, p0}, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->setType(Ljava/lang/Class;)V

    invoke-virtual {v1}, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->isAnnotationDriven()Z

    move-result p0

    if-nez p0, :cond_80

    new-instance p0, Ljava/util/TreeSet;

    invoke-direct {p0}, Ljava/util/TreeSet;-><init>()V

    array-length v3, v0

    const/4 v4, 0x0

    :goto_48
    if-ge v4, v3, :cond_5c

    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v6

    if-nez v6, :cond_59

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v5}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    :cond_59
    add-int/lit8 v4, v4, 0x1

    goto :goto_48

    :cond_5c
    const/16 v0, 0x2c

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->join(Ljava/lang/Iterable;C)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :try_start_68
    new-instance v0, Lcom/opencsv/CSVReaderBuilder;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Lcom/opencsv/CSVReaderBuilder;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0, p1}, Lcom/opencsv/CSVReaderBuilder;->withErrorLocale(Ljava/util/Locale;)Lcom/opencsv/CSVReaderBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/opencsv/CSVReaderBuilder;->build()Lcom/opencsv/CSVReader;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->captureHeader(Lcom/opencsv/CSVReader;)V

    invoke-virtual {v1, v2}, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->findDescriptor(I)Ljava/beans/PropertyDescriptor;
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_80} :catch_80
    .catch Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException; {:try_start_68 .. :try_end_80} :catch_80

    :catch_80
    :cond_80
    move-object v0, v1

    :goto_81
    return-object v0
.end method

.method public static queueRefuseToAcceptDefeat(Ljava/util/concurrent/BlockingQueue;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/BlockingQueue<",
            "TE;>;TE;)V"
        }
    .end annotation

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_a

    :try_start_3
    invoke-interface {p0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_6} :catch_8

    const/4 v0, 0x0

    goto :goto_1

    :catch_8
    nop

    goto :goto_1

    :cond_a
    return-void
.end method
