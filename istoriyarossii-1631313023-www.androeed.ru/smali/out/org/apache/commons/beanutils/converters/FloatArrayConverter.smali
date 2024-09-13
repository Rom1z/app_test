.class public final Lorg/apache/commons/beanutils/converters/FloatArrayConverter;
.super Lorg/apache/commons/beanutils/converters/AbstractArrayConverter;
.source "FloatArrayConverter.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final MODEL:[F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [F

    sput-object v0, Lorg/apache/commons/beanutils/converters/FloatArrayConverter;->MODEL:[F

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/apache/commons/beanutils/converters/AbstractArrayConverter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/beanutils/converters/FloatArrayConverter;->defaultValue:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/beanutils/converters/FloatArrayConverter;->useDefault:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Lorg/apache/commons/beanutils/converters/AbstractArrayConverter;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/beanutils/converters/FloatArrayConverter;->defaultValue:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/commons/beanutils/converters/FloatArrayConverter;->useDefault:Z

    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    if-nez p2, :cond_11

    iget-boolean p1, p0, Lorg/apache/commons/beanutils/converters/FloatArrayConverter;->useDefault:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lorg/apache/commons/beanutils/converters/FloatArrayConverter;->defaultValue:Ljava/lang/Object;

    return-object p1

    :cond_9
    new-instance p1, Lorg/apache/commons/beanutils/ConversionException;

    const-string p2, "No value specified"

    invoke-direct {p1, p2}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11
    sget-object p1, Lorg/apache/commons/beanutils/converters/FloatArrayConverter;->MODEL:[F

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_1e

    return-object p2

    :cond_1e
    sget-object p1, Lorg/apache/commons/beanutils/converters/FloatArrayConverter;->strings:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_54

    :try_start_2b
    move-object p1, p2

    check-cast p1, [Ljava/lang/String;

    check-cast p1, [Ljava/lang/String;

    array-length v0, p1

    new-array v0, v0, [F

    :goto_33
    array-length v2, p1

    if-ge v1, v2, :cond_41

    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_3e} :catch_42

    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    :cond_41
    return-object v0

    :catch_42
    move-exception p1

    iget-boolean v0, p0, Lorg/apache/commons/beanutils/converters/FloatArrayConverter;->useDefault:Z

    if-eqz v0, :cond_4a

    iget-object p1, p0, Lorg/apache/commons/beanutils/converters/FloatArrayConverter;->defaultValue:Ljava/lang/Object;

    return-object p1

    :cond_4a
    new-instance v0, Lorg/apache/commons/beanutils/ConversionException;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_54
    :try_start_54
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/converters/FloatArrayConverter;->parseElements(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [F

    :goto_62
    if-ge v1, v0, :cond_73

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    aput v3, v2, v1
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_70} :catch_74

    add-int/lit8 v1, v1, 0x1

    goto :goto_62

    :cond_73
    return-object v2

    :catch_74
    move-exception p1

    iget-boolean v0, p0, Lorg/apache/commons/beanutils/converters/FloatArrayConverter;->useDefault:Z

    if-eqz v0, :cond_7c

    iget-object p1, p0, Lorg/apache/commons/beanutils/converters/FloatArrayConverter;->defaultValue:Ljava/lang/Object;

    return-object p1

    :cond_7c
    new-instance v0, Lorg/apache/commons/beanutils/ConversionException;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
