.class public final Lorg/apache/commons/beanutils/converters/StringArrayConverter;
.super Lorg/apache/commons/beanutils/converters/AbstractArrayConverter;
.source "StringArrayConverter.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final INT_MODEL:[I

.field private static final MODEL:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lorg/apache/commons/beanutils/converters/StringArrayConverter;->MODEL:[Ljava/lang/String;

    new-array v0, v0, [I

    sput-object v0, Lorg/apache/commons/beanutils/converters/StringArrayConverter;->INT_MODEL:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/apache/commons/beanutils/converters/AbstractArrayConverter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/beanutils/converters/StringArrayConverter;->defaultValue:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/beanutils/converters/StringArrayConverter;->useDefault:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Lorg/apache/commons/beanutils/converters/AbstractArrayConverter;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/beanutils/converters/StringArrayConverter;->defaultValue:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/commons/beanutils/converters/StringArrayConverter;->useDefault:Z

    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    if-nez p2, :cond_11

    iget-boolean p1, p0, Lorg/apache/commons/beanutils/converters/StringArrayConverter;->useDefault:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lorg/apache/commons/beanutils/converters/StringArrayConverter;->defaultValue:Ljava/lang/Object;

    return-object p1

    :cond_9
    new-instance p1, Lorg/apache/commons/beanutils/ConversionException;

    const-string p2, "No value specified"

    invoke-direct {p1, p2}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11
    sget-object p1, Lorg/apache/commons/beanutils/converters/StringArrayConverter;->MODEL:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_1e

    return-object p2

    :cond_1e
    sget-object p1, Lorg/apache/commons/beanutils/converters/StringArrayConverter;->INT_MODEL:[I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_41

    check-cast p2, [I

    check-cast p2, [I

    array-length p1, p2

    new-array p1, p1, [Ljava/lang/String;

    :goto_32
    array-length v0, p2

    if-ge v1, v0, :cond_40

    aget v0, p2, v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    :cond_40
    return-object p1

    :cond_41
    :try_start_41
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/converters/StringArrayConverter;->parseElements(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    :goto_4f
    if-ge v1, v0, :cond_5c

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v2, v1
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_59} :catch_5d

    add-int/lit8 v1, v1, 0x1

    goto :goto_4f

    :cond_5c
    return-object v2

    :catch_5d
    move-exception p1

    iget-boolean v0, p0, Lorg/apache/commons/beanutils/converters/StringArrayConverter;->useDefault:Z

    if-eqz v0, :cond_65

    iget-object p1, p0, Lorg/apache/commons/beanutils/converters/StringArrayConverter;->defaultValue:Ljava/lang/Object;

    return-object p1

    :cond_65
    new-instance v0, Lorg/apache/commons/beanutils/ConversionException;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
