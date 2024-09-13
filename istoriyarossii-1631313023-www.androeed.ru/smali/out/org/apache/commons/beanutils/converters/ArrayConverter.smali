.class public Lorg/apache/commons/beanutils/converters/ArrayConverter;
.super Lorg/apache/commons/beanutils/converters/AbstractConverter;
.source "ArrayConverter.java"


# instance fields
.field private allowedChars:[C

.field private defaultSize:I

.field private final defaultType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private delimiter:C

.field private final elementConverter:Lorg/apache/commons/beanutils/Converter;

.field private onlyFirstToString:Z


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/commons/beanutils/Converter;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/commons/beanutils/converters/AbstractConverter;-><init>()V

    const/16 v0, 0x2c

    iput-char v0, p0, Lorg/apache/commons/beanutils/converters/ArrayConverter;->delimiter:C

    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_3a

    iput-object v0, p0, Lorg/apache/commons/beanutils/converters/ArrayConverter;->allowedChars:[C

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/beanutils/converters/ArrayConverter;->onlyFirstToString:Z

    if-eqz p1, :cond_31

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_29

    if-eqz p2, :cond_21

    iput-object p1, p0, Lorg/apache/commons/beanutils/converters/ArrayConverter;->defaultType:Ljava/lang/Class;

    iput-object p2, p0, Lorg/apache/commons/beanutils/converters/ArrayConverter;->elementConverter:Lorg/apache/commons/beanutils/Converter;

    return-void

    :cond_21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Component Converter is missing."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_29
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Default type must be an array."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_31
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Default type is missing"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :array_3a
    .array-data 2
        0x2es
        0x2ds
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/commons/beanutils/Converter;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/beanutils/converters/ArrayConverter;-><init>(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V

    iput p3, p0, Lorg/apache/commons/beanutils/converters/ArrayConverter;->defaultSize:I

    if-ltz p3, :cond_10

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, p3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/converters/ArrayConverter;->setDefaultValue(Ljava/lang/Object;)V

    return-void
.end method

.method private parseElements(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/ArrayConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/ArrayConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parsing elements, delimiter=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v2, p0, Lorg/apache/commons/beanutils/converters/ArrayConverter;->delimiter:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "], value=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_31
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    const-string v0, "{"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    const-string v0, "}"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_4f
    :try_start_4f
    new-instance v0, Ljava/io/StreamTokenizer;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/StreamTokenizer;-><init>(Ljava/io/Reader;)V

    iget-char p2, p0, Lorg/apache/commons/beanutils/converters/ArrayConverter;->delimiter:C

    invoke-virtual {v0, p2, p2}, Ljava/io/StreamTokenizer;->whitespaceChars(II)V

    const/16 p2, 0x39

    const/16 v1, 0x30

    invoke-virtual {v0, v1, p2}, Ljava/io/StreamTokenizer;->ordinaryChars(II)V

    invoke-virtual {v0, v1, p2}, Ljava/io/StreamTokenizer;->wordChars(II)V

    iget-object p2, p0, Lorg/apache/commons/beanutils/converters/ArrayConverter;->allowedChars:[C

    array-length v1, p2

    const/4 v2, 0x0

    :goto_6c
    if-ge v2, v1, :cond_79

    aget-char v3, p2, v2

    invoke-virtual {v0, v3, v3}, Ljava/io/StreamTokenizer;->ordinaryChars(II)V

    invoke-virtual {v0, v3, v3}, Ljava/io/StreamTokenizer;->wordChars(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6c

    :cond_79
    const/4 p2, 0x0

    :cond_7a
    :goto_7a
    invoke-virtual {v0}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v1

    const/4 v2, -0x3

    if-eq v1, v2, :cond_dc

    if-lez v1, :cond_84

    goto :goto_dc

    :cond_84
    const/4 v0, -0x1

    if-ne v1, v0, :cond_b4

    if-nez p2, :cond_8d

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    :cond_8d
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/ArrayConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_b3

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/ArrayConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " elements parsed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_b3
    return-object p2

    :cond_b4
    new-instance p2, Lorg/apache/commons/beanutils/ConversionException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encountered token of type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " parsing elements to \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/converters/ArrayConverter;->toString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_dc
    :goto_dc
    iget-object v1, v0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    if-eqz v1, :cond_7a

    if-nez p2, :cond_e7

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_e7
    iget-object v1, v0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_ec
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_ec} :catch_ed

    goto :goto_7a

    :catch_ed
    move-exception p2

    new-instance v0, Lorg/apache/commons/beanutils/ConversionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error converting from String to \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/converters/ArrayConverter;->toString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\': "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method protected convertArray(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    return-object p1
.end method

.method protected convertToCollection(Ljava/lang/Class;Ljava/lang/Object;)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "*>;"
        }
    .end annotation

    instance-of v0, p2, Ljava/util/Collection;

    if-eqz v0, :cond_7

    check-cast p2, Ljava/util/Collection;

    return-object p2

    :cond_7
    instance-of v0, p2, Ljava/lang/Number;

    if-nez v0, :cond_1d

    instance-of v0, p2, Ljava/lang/Boolean;

    if-nez v0, :cond_1d

    instance-of v0, p2, Ljava/util/Date;

    if-eqz v0, :cond_14

    goto :goto_1d

    :cond_14
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/beanutils/converters/ArrayConverter;->parseElements(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1d
    :goto_1d
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method protected convertToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    goto :goto_1f

    :cond_10
    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/beanutils/converters/ArrayConverter;->convertToCollection(Ljava/lang/Class;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v7, v1

    move-object v1, v0

    move v0, v7

    :goto_1f
    if-nez v0, :cond_2a

    const-class p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/converters/ArrayConverter;->getDefault(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_2a
    iget-boolean v2, p0, Lorg/apache/commons/beanutils/converters/ArrayConverter;->onlyFirstToString:Z

    if-eqz v2, :cond_2f

    const/4 v0, 0x1

    :cond_2f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    :goto_35
    if-ge v3, v0, :cond_59

    if-lez v3, :cond_3e

    iget-char v4, p0, Lorg/apache/commons/beanutils/converters/ArrayConverter;->delimiter:C

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3e
    if-nez v1, :cond_45

    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_49

    :cond_45
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    :goto_49
    iget-object v5, p0, Lorg/apache/commons/beanutils/converters/ArrayConverter;->elementConverter:Lorg/apache/commons/beanutils/Converter;

    const-class v6, Ljava/lang/String;

    invoke-interface {v5, v6, v4}, Lorg/apache/commons/beanutils/Converter;->convert(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_56

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_56
    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    :cond_59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected convertToType(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_45

    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    goto :goto_22

    :cond_16
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/beanutils/converters/ArrayConverter;->convertToCollection(Ljava/lang/Class;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    :goto_2b
    if-ge v3, v1, :cond_44

    if-nez v0, :cond_34

    invoke-static {p2, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_38

    :cond_34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    :goto_38
    iget-object v5, p0, Lorg/apache/commons/beanutils/converters/ArrayConverter;->elementConverter:Lorg/apache/commons/beanutils/Converter;

    invoke-interface {v5, p1, v4}, Lorg/apache/commons/beanutils/Converter;->convert(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    :cond_44
    return-object v2

    :cond_45
    new-instance p2, Lorg/apache/commons/beanutils/ConversionException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/beanutils/converters/ArrayConverter;->toString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cannot handle conversion to \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/converters/ArrayConverter;->toString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' (not an array)."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method protected getDefault(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    :cond_a
    invoke-super {p0, p1}, Lorg/apache/commons/beanutils/converters/AbstractConverter;->getDefault(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_11

    return-object v1

    :cond_11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    return-object v0

    :cond_1c
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    iget v0, p0, Lorg/apache/commons/beanutils/converters/ArrayConverter;->defaultSize:I

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected getDefaultType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/beanutils/converters/ArrayConverter;->defaultType:Ljava/lang/Class;

    return-object v0
.end method

.method public setAllowedChars([C)V
    .registers 2

    iput-object p1, p0, Lorg/apache/commons/beanutils/converters/ArrayConverter;->allowedChars:[C

    return-void
.end method

.method public setDelimiter(C)V
    .registers 2

    iput-char p1, p0, Lorg/apache/commons/beanutils/converters/ArrayConverter;->delimiter:C

    return-void
.end method

.method public setOnlyFirstToString(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/apache/commons/beanutils/converters/ArrayConverter;->onlyFirstToString:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/beanutils/converters/ArrayConverter;->toString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[UseDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/ArrayConverter;->isUseDefault()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/beanutils/converters/ArrayConverter;->elementConverter:Lorg/apache/commons/beanutils/Converter;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
