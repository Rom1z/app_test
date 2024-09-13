.class public Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;
.super Ljava/lang/Object;
.source "HeaderColumnNameMappingStrategy.java"

# interfaces
.implements Lcom/opencsv/bean/MappingStrategy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/opencsv/bean/MappingStrategy<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final INITIAL_CAPACITY:I = 0x100


# instance fields
.field protected annotationDriven:Z

.field protected descriptorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/beans/PropertyDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field protected errorLocale:Ljava/util/Locale;

.field protected fieldMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/opencsv/bean/BeanField;",
            ">;"
        }
    .end annotation
.end field

.field protected header:[Ljava/lang/String;

.field protected indexLookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->indexLookup:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->descriptorMap:Ljava/util/Map;

    iput-object v0, p0, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->fieldMap:Ljava/util/Map;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->errorLocale:Ljava/util/Locale;

    return-void
.end method

.method private loadDescriptors(Ljava/lang/Class;)[Ljava/beans/PropertyDescriptor;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TT;>;)[",
            "Ljava/beans/PropertyDescriptor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/IntrospectionException;
        }
    .end annotation

    invoke-static {p1}, Ljava/beans/Introspector;->getBeanInfo(Ljava/lang/Class;)Ljava/beans/BeanInfo;

    move-result-object p1

    invoke-interface {p1}, Ljava/beans/BeanInfo;->getPropertyDescriptors()[Ljava/beans/PropertyDescriptor;

    move-result-object p1

    return-object p1
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

    invoke-static {p1}, Lorg/apache/commons/lang3/reflect/FieldUtils;->getAllFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_25

    aget-object v3, p1, v2

    const-class v4, Lcom/opencsv/bean/CsvBindByName;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_1f

    const-class v4, Lcom/opencsv/bean/CsvCustomBindByName;

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

    iput-boolean p1, p0, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->annotationDriven:Z

    return-object v0
.end method


# virtual methods
.method public captureHeader(Lcom/opencsv/CSVReader;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;
        }
    .end annotation

    iget-object v0, p0, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->type:Ljava/lang/Class;

    const-string v1, "opencsv"

    if-eqz v0, :cond_b0

    invoke-virtual {p1}, Lcom/opencsv/CSVReader;->readNext()[Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->header:[Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->fieldMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_23
    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/opencsv/bean/BeanField;

    invoke-interface {v3}, Lcom/opencsv/bean/BeanField;->isRequired()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_49
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_50

    return-void

    :cond_50
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_52
    iget-object v3, p0, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->header:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_6b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6b

    iget-object v3, p0, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->header:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_52

    :cond_6b
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_72

    return-void

    :cond_72
    new-instance v2, Lorg/apache/commons/text/StrBuilder;

    const/16 v3, 0x100

    invoke-direct {v2, v3}, Lorg/apache/commons/text/StrBuilder;-><init>(I)V

    const-string v3, ","

    invoke-virtual {v2, p1, v3}, Lorg/apache/commons/text/StrBuilder;->appendWithSeparators(Ljava/lang/Iterable;Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;

    iget-object v4, p0, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->type:Ljava/lang/Class;

    iget-object v5, p0, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->fieldMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/opencsv/bean/BeanField;

    invoke-interface {p1}, Lcom/opencsv/bean/BeanField;->getField()Ljava/lang/reflect/Field;

    move-result-object p1

    iget-object v5, p0, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->errorLocale:Ljava/util/Locale;

    invoke-static {v1, v5}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    const-string v5, "header.required.field.absent"

    invoke-virtual {v1, v5}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v0

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, p1, v0}, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/String;)V

    throw v3

    :cond_b0
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object v0, p0, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->errorLocale:Ljava/util/Locale;

    invoke-static {v1, v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    const-string v1, "type.unset"

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createBean()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->type:Ljava/lang/Class;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->errorLocale:Ljava/util/Locale;

    const-string v2, "opencsv"

    invoke-static {v2, v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    const-string v2, "type.unset"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected createIndexLookup([Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->indexLookup:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    :goto_9
    array-length v1, p1

    if-ge v0, v1, :cond_1a

    iget-object v1, p0, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->indexLookup:Ljava/util/Map;

    aget-object v2, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_1a
    return-void
.end method

.method public findDescriptor(I)Ljava/beans/PropertyDescriptor;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->getColumnName(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->fieldMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/opencsv/bean/BeanField;

    goto :goto_1d

    :cond_1c
    move-object v0, v1

    :goto_1d
    if-eqz v0, :cond_2c

    invoke-interface {v0}, Lcom/opencsv/bean/BeanField;->getField()Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->findDescriptor(Ljava/lang/String;)Ljava/beans/PropertyDescriptor;

    move-result-object p1

    return-object p1

    :cond_2c
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-virtual {p0, p1}, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->findDescriptor(Ljava/lang/String;)Ljava/beans/PropertyDescriptor;

    move-result-object p1

    return-object p1

    :cond_37
    return-object v1
.end method

.method protected findDescriptor(Ljava/lang/String;)Ljava/beans/PropertyDescriptor;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->descriptorMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/beans/PropertyDescriptor;

    return-object p1
.end method

.method public findField(I)Lcom/opencsv/bean/BeanField;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvBadConverterException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->getColumnName(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->fieldMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/opencsv/bean/BeanField;

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    :goto_1c
    return-object p1
.end method

.method public findMaxFieldIndex()I
    .registers 2

    iget-object v0, p0, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->header:[Ljava/lang/String;

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
    .registers 4

    iget-object v0, p0, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->type:Ljava/lang/Class;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->header:[Ljava/lang/String;

    if-nez v0, :cond_23

    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->fieldMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->fieldMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->header:[Ljava/lang/String;

    :cond_23
    iget-object v0, p0, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->header:[Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    :cond_2c
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->errorLocale:Ljava/util/Locale;

    const-string v2, "opencsv"

    invoke-static {v2, v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    const-string v2, "type.before.header"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getColumnIndex(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 4

    iget-object v0, p0, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->header:[Ljava/lang/String;

    if-eqz v0, :cond_10

    invoke-virtual {p0, v0}, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->createIndexLookup([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->indexLookup:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1

    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object v0, p0, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->errorLocale:Ljava/util/Locale;

    const-string v1, "opencsv"

    invoke-static {v1, v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    const-string v1, "header.unread"

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getColumnName(I)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->header:[Ljava/lang/String;

    if-eqz v0, :cond_a

    array-length v1, v0

    if-ge p1, v1, :cond_a

    aget-object p1, v0, p1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return-object p1
.end method

.method public getType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->type:Ljava/lang/Class;

    return-object v0
.end method

.method protected instantiateCustomConverter(Ljava/lang/Class;)Lcom/opencsv/bean/BeanField;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/opencsv/bean/AbstractBeanField;",
            ">;)",
            "Lcom/opencsv/bean/BeanField;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvBadConverterException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/opencsv/bean/BeanField;

    iget-object v1, p0, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->errorLocale:Ljava/util/Locale;

    invoke-interface {v0, v1}, Lcom/opencsv/bean/BeanField;->setErrorLocale(Ljava/util/Locale;)V
    :try_end_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_b} :catch_e
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    :catch_c
    move-exception v0

    goto :goto_f

    :catch_e
    move-exception v0

    :goto_f
    new-instance v1, Lcom/opencsv/exceptions/CsvBadConverterException;

    iget-object v2, p0, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->errorLocale:Ljava/util/Locale;

    const-string v3, "opencsv"

    invoke-static {v3, v2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v2

    const-string v3, "custom.converter.invalid"

    invoke-virtual {v2, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/opencsv/exceptions/CsvBadConverterException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/opencsv/exceptions/CsvBadConverterException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method

.method public isAnnotationDriven()Z
    .registers 2

    iget-boolean v0, p0, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->annotationDriven:Z

    return v0
.end method

.method protected loadDescriptorMap()Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/beans/PropertyDescriptor;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/IntrospectionException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->loadDescriptors(Ljava/lang/Class;)[Ljava/beans/PropertyDescriptor;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_21

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_21
    return-object v0
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

    iput-object v0, p0, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->fieldMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->loadFields(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/reflect/Field;

    const-class v1, Lcom/opencsv/bean/CsvCustomBindByName;

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6a

    const-class v1, Lcom/opencsv/bean/CsvCustomBindByName;

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/opencsv/bean/CsvCustomBindByName;

    invoke-interface {v1}, Lcom/opencsv/bean/CsvCustomBindByName;->column()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4a

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    :cond_4a
    const-class v4, Lcom/opencsv/bean/CsvCustomBindByName;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/opencsv/bean/CsvCustomBindByName;

    invoke-interface {v4}, Lcom/opencsv/bean/CsvCustomBindByName;->converter()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->instantiateCustomConverter(Ljava/lang/Class;)Lcom/opencsv/bean/BeanField;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/opencsv/bean/BeanField;->setField(Ljava/lang/reflect/Field;)V

    invoke-interface {v1}, Lcom/opencsv/bean/CsvCustomBindByName;->required()Z

    move-result v1

    invoke-interface {v4, v1}, Lcom/opencsv/bean/BeanField;->setRequired(Z)V

    iget-object v1, p0, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->fieldMap:Ljava/util/Map;

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    :cond_6a
    const-class v1, Lcom/opencsv/bean/CsvBindByName;

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/opencsv/bean/CsvBindByName;

    invoke-interface {v1}, Lcom/opencsv/bean/CsvBindByName;->required()Z

    move-result v4

    invoke-interface {v1}, Lcom/opencsv/bean/CsvBindByName;->column()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1}, Lcom/opencsv/bean/CsvBindByName;->locale()Ljava/lang/String;

    move-result-object v6

    const-class v1, Lcom/opencsv/bean/CsvDate;

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_c6

    const-class v1, Lcom/opencsv/bean/CsvDate;

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/opencsv/bean/CsvDate;

    invoke-interface {v1}, Lcom/opencsv/bean/CsvDate;->value()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b7

    iget-object v1, p0, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->fieldMap:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/opencsv/bean/BeanFieldDate;

    iget-object v7, p0, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->errorLocale:Ljava/util/Locale;

    move-object v2, v9

    invoke-direct/range {v2 .. v7}, Lcom/opencsv/bean/BeanFieldDate;-><init>(Ljava/lang/reflect/Field;ZLjava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    invoke-interface {v1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_13

    :cond_b7
    iget-object v1, p0, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->fieldMap:Ljava/util/Map;

    new-instance v9, Lcom/opencsv/bean/BeanFieldDate;

    iget-object v7, p0, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->errorLocale:Ljava/util/Locale;

    move-object v2, v9

    invoke-direct/range {v2 .. v7}, Lcom/opencsv/bean/BeanFieldDate;-><init>(Ljava/lang/reflect/Field;ZLjava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    invoke-interface {v1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_13

    :cond_c6
    invoke-static {v8}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e2

    iget-object v1, p0, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->fieldMap:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/opencsv/bean/BeanFieldPrimitiveTypes;

    iget-object v7, p0, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->errorLocale:Ljava/util/Locale;

    invoke-direct {v5, v3, v4, v6, v7}, Lcom/opencsv/bean/BeanFieldPrimitiveTypes;-><init>(Ljava/lang/reflect/Field;ZLjava/lang/String;Ljava/util/Locale;)V

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_13

    :cond_e2
    iget-object v1, p0, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->fieldMap:Ljava/util/Map;

    new-instance v2, Lcom/opencsv/bean/BeanFieldPrimitiveTypes;

    iget-object v5, p0, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->errorLocale:Ljava/util/Locale;

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/opencsv/bean/BeanFieldPrimitiveTypes;-><init>(Ljava/lang/reflect/Field;ZLjava/lang/String;Ljava/util/Locale;)V

    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_13

    :cond_f0
    return-void
.end method

.method protected resetIndexMap()V
    .registers 2

    iget-object v0, p0, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->indexLookup:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public setErrorLocale(Ljava/util/Locale;)V
    .registers 4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->errorLocale:Ljava/util/Locale;

    iget-object v0, p0, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->fieldMap:Ljava/util/Map;

    if-eqz v0, :cond_28

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/opencsv/bean/BeanField;

    invoke-interface {v1, p1}, Lcom/opencsv/bean/BeanField;->setErrorLocale(Ljava/util/Locale;)V

    goto :goto_18

    :cond_28
    return-void
.end method

.method public setType(Ljava/lang/Class;)V
    .registers 5
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

    iput-object p1, p0, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->type:Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->loadFieldMap()V

    :try_start_5
    invoke-virtual {p0}, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->loadDescriptorMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->descriptorMap:Ljava/util/Map;
    :try_end_b
    .catch Ljava/beans/IntrospectionException; {:try_start_5 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p1

    new-instance v0, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;

    iget-object v1, p0, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->errorLocale:Ljava/util/Locale;

    const-string v2, "opencsv"

    invoke-static {v2, v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    const-string v2, "bean.descriptors.uninitialized"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0
.end method

.method public verifyLineLength(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;
        }
    .end annotation

    iget-object v0, p0, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->header:[Ljava/lang/String;

    if-eqz v0, :cond_63

    const/4 v0, 0x0

    move v1, p1

    :goto_6
    iget-object v2, p0, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->header:[Ljava/lang/String;

    array-length v3, v2

    const-string v4, "opencsv"

    if-ge v1, v3, :cond_40

    array-length v3, v2

    if-ne p1, v3, :cond_40

    invoke-virtual {p0, v1}, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->findField(I)Lcom/opencsv/bean/BeanField;

    move-result-object v2

    invoke-interface {v2}, Lcom/opencsv/bean/BeanField;->isRequired()Z

    move-result v3

    if-eqz v3, :cond_3d

    if-nez v0, :cond_2d

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->errorLocale:Ljava/util/Locale;

    invoke-static {v4, v3}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v3

    const-string v4, "multiple.required.field.empty"

    invoke-virtual {v3, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :cond_2d
    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/opencsv/bean/BeanField;->getField()Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_40
    array-length v1, v2

    if-eq p1, v1, :cond_54

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->errorLocale:Ljava/util/Locale;

    invoke-static {v4, p1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object p1

    const-string v1, "header.data.mismatch"

    invoke-virtual {p1, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :cond_54
    if-nez v0, :cond_57

    goto :goto_63

    :cond_57
    new-instance p1, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;

    iget-object v1, p0, Lcom/opencsv/bean/HeaderColumnNameMappingStrategy;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw p1

    :cond_63
    :goto_63
    return-void
.end method
