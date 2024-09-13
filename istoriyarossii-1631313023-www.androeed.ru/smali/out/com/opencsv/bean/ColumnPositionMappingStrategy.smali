.class public Lcom/opencsv/bean/ColumnPositionMappingStrategy;
.super Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;
.source "ColumnPositionMappingStrategy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/opencsv/bean/HeaderColumnNameMappingStrategy<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private columnMapping:[Ljava/lang/String;

.field private columnsExplicitlySet:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->columnMapping:[Ljava/lang/String;

    iput-boolean v0, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->columnsExplicitlySet:Z

    return-void
.end method

.method private loadFields(Ljava/lang/Class;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TT;>;)",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_25

    aget-object v3, p1, v2

    const-class v4, Lcom/opencsv/bean/CsvBindByPosition;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_1f

    const-class v4, Lcom/opencsv/bean/CsvCustomBindByPosition;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_22

    :cond_1f
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_25
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->annotationDriven:Z

    return-object v0
.end method


# virtual methods
.method public captureHeader(Lcom/opencsv/CSVReader;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public findMaxFieldIndex()I
    .registers 2

    iget-object v0, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->columnMapping:[Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, -0x1

    goto :goto_9

    :cond_6
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_9
    return v0
.end method

.method public generateHeader()[Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getColumnIndex(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 3

    iget-object v0, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->indexLookup:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method

.method public getColumnMapping()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->columnMapping:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->columnMapping:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_8

    aget-object p1, v0, p1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return-object p1
.end method

.method protected loadFieldMap()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvBadConverterException;
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->fieldMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->loadFields(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/reflect/Field;

    const-class v1, Lcom/opencsv/bean/CsvCustomBindByPosition;

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/opencsv/bean/CsvCustomBindByPosition;

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/opencsv/bean/CsvCustomBindByPosition;

    invoke-interface {v2}, Lcom/opencsv/bean/CsvCustomBindByPosition;->converter()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->instantiateCustomConverter(Ljava/lang/Class;)Lcom/opencsv/bean/BeanField;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/opencsv/bean/BeanField;->setField(Ljava/lang/reflect/Field;)V

    invoke-interface {v2}, Lcom/opencsv/bean/CsvCustomBindByPosition;->required()Z

    move-result v2

    invoke-interface {v4, v2}, Lcom/opencsv/bean/BeanField;->setRequired(Z)V

    iget-object v2, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->fieldMap:Ljava/util/Map;

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    :cond_54
    const-class v1, Lcom/opencsv/bean/CsvBindByPosition;

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/opencsv/bean/CsvBindByPosition;

    invoke-interface {v1}, Lcom/opencsv/bean/CsvBindByPosition;->required()Z

    move-result v4

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1}, Lcom/opencsv/bean/CsvBindByPosition;->locale()Ljava/lang/String;

    move-result-object v6

    const-class v1, Lcom/opencsv/bean/CsvDate;

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_92

    const-class v1, Lcom/opencsv/bean/CsvDate;

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/opencsv/bean/CsvDate;

    invoke-interface {v1}, Lcom/opencsv/bean/CsvDate;->value()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->fieldMap:Ljava/util/Map;

    new-instance v9, Lcom/opencsv/bean/BeanFieldDate;

    iget-object v7, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->errorLocale:Ljava/util/Locale;

    move-object v2, v9

    invoke-direct/range {v2 .. v7}, Lcom/opencsv/bean/BeanFieldDate;-><init>(Ljava/lang/reflect/Field;ZLjava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    invoke-interface {v1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    :cond_92
    iget-object v1, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->fieldMap:Ljava/util/Map;

    new-instance v2, Lcom/opencsv/bean/BeanFieldPrimitiveTypes;

    iget-object v5, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->errorLocale:Ljava/util/Locale;

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/opencsv/bean/BeanFieldPrimitiveTypes;-><init>(Ljava/lang/reflect/Field;ZLjava/lang/String;Ljava/util/Locale;)V

    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_13

    :cond_a0
    return-void
.end method

.method public varargs setColumnMapping([Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_9

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    goto :goto_c

    :cond_9
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    :goto_c
    iput-object p1, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->columnMapping:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->resetIndexMap()V

    iget-object p1, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->columnMapping:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->createIndexLookup([Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->columnsExplicitlySet:Z

    return-void
.end method

.method public setType(Ljava/lang/Class;)V
    .registers 6
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

    invoke-super {p0, p1}, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->setType(Ljava/lang/Class;)V

    iget-boolean p1, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->columnsExplicitlySet:Z

    if-nez p1, :cond_c7

    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iget-object v0, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->fieldMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/opencsv/bean/BeanField;

    invoke-interface {v1}, Lcom/opencsv/bean/BeanField;->getField()Ljava/lang/reflect/Field;

    move-result-object v2

    const-class v3, Lcom/opencsv/bean/CsvCustomBindByPosition;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    if-eqz v2, :cond_46

    invoke-interface {v1}, Lcom/opencsv/bean/BeanField;->getField()Ljava/lang/reflect/Field;

    move-result-object v2

    const-class v3, Lcom/opencsv/bean/CsvCustomBindByPosition;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/opencsv/bean/CsvCustomBindByPosition;

    invoke-interface {v2}, Lcom/opencsv/bean/CsvCustomBindByPosition;->position()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    :cond_46
    invoke-interface {v1}, Lcom/opencsv/bean/BeanField;->getField()Ljava/lang/reflect/Field;

    move-result-object v2

    const-class v3, Lcom/opencsv/bean/CsvBindByPosition;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Lcom/opencsv/bean/BeanField;->getField()Ljava/lang/reflect/Field;

    move-result-object v2

    const-class v3, Lcom/opencsv/bean/CsvBindByPosition;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/opencsv/bean/CsvBindByPosition;

    invoke-interface {v2}, Lcom/opencsv/bean/CsvBindByPosition;->position()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    :cond_6a
    invoke-interface {p1}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c2

    invoke-interface {p1}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->columnMapping:[Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_88
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->columnMapping:[Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/opencsv/bean/BeanField;

    invoke-interface {v0}, Lcom/opencsv/bean/BeanField;->getField()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    goto :goto_88

    :cond_b9
    invoke-virtual {p0}, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->resetIndexMap()V

    iget-object p1, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->columnMapping:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->createIndexLookup([Ljava/lang/String;)V

    goto :goto_c7

    :cond_c2
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->columnMapping:[Ljava/lang/String;

    :cond_c7
    :goto_c7
    return-void
.end method

.method public verifyLineLength(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;
        }
    .end annotation

    iget-object v0, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->columnMapping:[Ljava/lang/String;

    if-eqz v0, :cond_4d

    const/4 v0, 0x0

    :goto_5
    iget-object v1, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->columnMapping:[Ljava/lang/String;

    array-length v1, v1

    if-ge p1, v1, :cond_3e

    invoke-virtual {p0, p1}, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->findField(I)Lcom/opencsv/bean/BeanField;

    move-result-object v1

    if-eqz v1, :cond_3b

    invoke-interface {v1}, Lcom/opencsv/bean/BeanField;->isRequired()Z

    move-result v2

    if-eqz v2, :cond_3b

    if-nez v0, :cond_2b

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->errorLocale:Ljava/util/Locale;

    const-string v3, "opencsv"

    invoke-static {v3, v2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v2

    const-string v3, "multiple.required.field.empty"

    invoke-virtual {v2, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :cond_2b
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/opencsv/bean/BeanField;->getField()Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3b
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_3e
    if-nez v0, :cond_41

    goto :goto_4d

    :cond_41
    new-instance p1, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;

    iget-object v1, p0, Lcom/opencsv/bean/ColumnPositionMappingStrategy;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw p1

    :cond_4d
    :goto_4d
    return-void
.end method
