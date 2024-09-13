.class public final Lorg/apache/commons/beanutils/converters/CharacterArrayConverter;
.super Lorg/apache/commons/beanutils/converters/AbstractArrayConverter;
.source "CharacterArrayConverter.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final MODEL:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [C

    sput-object v0, Lorg/apache/commons/beanutils/converters/CharacterArrayConverter;->MODEL:[C

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/apache/commons/beanutils/converters/AbstractArrayConverter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/beanutils/converters/CharacterArrayConverter;->defaultValue:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/beanutils/converters/CharacterArrayConverter;->useDefault:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Lorg/apache/commons/beanutils/converters/AbstractArrayConverter;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/beanutils/converters/CharacterArrayConverter;->defaultValue:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/commons/beanutils/converters/CharacterArrayConverter;->useDefault:Z

    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    if-nez p2, :cond_11

    iget-boolean p1, p0, Lorg/apache/commons/beanutils/converters/CharacterArrayConverter;->useDefault:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lorg/apache/commons/beanutils/converters/CharacterArrayConverter;->defaultValue:Ljava/lang/Object;

    return-object p1

    :cond_9
    new-instance p1, Lorg/apache/commons/beanutils/ConversionException;

    const-string p2, "No value specified"

    invoke-direct {p1, p2}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11
    sget-object p1, Lorg/apache/commons/beanutils/converters/CharacterArrayConverter;->MODEL:[C

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_1e

    return-object p2

    :cond_1e
    sget-object p1, Lorg/apache/commons/beanutils/converters/CharacterArrayConverter;->strings:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_55

    :try_start_2b
    move-object p1, p2

    check-cast p1, [Ljava/lang/String;

    check-cast p1, [Ljava/lang/String;

    array-length v0, p1

    new-array v0, v0, [C

    const/4 v2, 0x0

    :goto_34
    array-length v3, p1

    if-ge v2, v3, :cond_42

    aget-object v3, p1, v2

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, v0, v2
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_3f} :catch_43

    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    :cond_42
    return-object v0

    :catch_43
    move-exception p1

    iget-boolean v0, p0, Lorg/apache/commons/beanutils/converters/CharacterArrayConverter;->useDefault:Z

    if-eqz v0, :cond_4b

    iget-object p1, p0, Lorg/apache/commons/beanutils/converters/CharacterArrayConverter;->defaultValue:Ljava/lang/Object;

    return-object p1

    :cond_4b
    new-instance v0, Lorg/apache/commons/beanutils/ConversionException;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_55
    :try_start_55
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/converters/CharacterArrayConverter;->parseElements(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [C

    const/4 v3, 0x0

    :goto_64
    if-ge v3, v0, :cond_75

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v2, v3
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_72} :catch_76

    add-int/lit8 v3, v3, 0x1

    goto :goto_64

    :cond_75
    return-object v2

    :catch_76
    move-exception p1

    iget-boolean v0, p0, Lorg/apache/commons/beanutils/converters/CharacterArrayConverter;->useDefault:Z

    if-eqz v0, :cond_7e

    iget-object p1, p0, Lorg/apache/commons/beanutils/converters/CharacterArrayConverter;->defaultValue:Ljava/lang/Object;

    return-object p1

    :cond_7e
    new-instance v0, Lorg/apache/commons/beanutils/ConversionException;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
