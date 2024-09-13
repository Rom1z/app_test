.class public final Lorg/apache/commons/beanutils/converters/BooleanArrayConverter;
.super Lorg/apache/commons/beanutils/converters/AbstractArrayConverter;
.source "BooleanArrayConverter.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_CONVERTER:Lorg/apache/commons/beanutils/converters/BooleanConverter;

.field public static final MODEL:Ljava/lang/Class;


# instance fields
.field protected final booleanConverter:Lorg/apache/commons/beanutils/converters/BooleanConverter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/beanutils/converters/BooleanArrayConverter;->MODEL:Ljava/lang/Class;

    new-instance v0, Lorg/apache/commons/beanutils/converters/BooleanConverter;

    invoke-direct {v0}, Lorg/apache/commons/beanutils/converters/BooleanConverter;-><init>()V

    sput-object v0, Lorg/apache/commons/beanutils/converters/BooleanArrayConverter;->DEFAULT_CONVERTER:Lorg/apache/commons/beanutils/converters/BooleanConverter;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/apache/commons/beanutils/converters/AbstractArrayConverter;-><init>()V

    sget-object v0, Lorg/apache/commons/beanutils/converters/BooleanArrayConverter;->DEFAULT_CONVERTER:Lorg/apache/commons/beanutils/converters/BooleanConverter;

    iput-object v0, p0, Lorg/apache/commons/beanutils/converters/BooleanArrayConverter;->booleanConverter:Lorg/apache/commons/beanutils/converters/BooleanConverter;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/beanutils/converters/AbstractArrayConverter;-><init>(Ljava/lang/Object;)V

    sget-object p1, Lorg/apache/commons/beanutils/converters/BooleanArrayConverter;->DEFAULT_CONVERTER:Lorg/apache/commons/beanutils/converters/BooleanConverter;

    iput-object p1, p0, Lorg/apache/commons/beanutils/converters/BooleanArrayConverter;->booleanConverter:Lorg/apache/commons/beanutils/converters/BooleanConverter;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/beanutils/converters/BooleanConverter;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p2}, Lorg/apache/commons/beanutils/converters/AbstractArrayConverter;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/apache/commons/beanutils/converters/BooleanArrayConverter;->booleanConverter:Lorg/apache/commons/beanutils/converters/BooleanConverter;

    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    if-nez p2, :cond_11

    iget-boolean p1, p0, Lorg/apache/commons/beanutils/converters/BooleanArrayConverter;->useDefault:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lorg/apache/commons/beanutils/converters/BooleanArrayConverter;->defaultValue:Ljava/lang/Object;

    return-object p1

    :cond_9
    new-instance p1, Lorg/apache/commons/beanutils/ConversionException;

    const-string p2, "No value specified"

    invoke-direct {p1, p2}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11
    sget-object p1, Lorg/apache/commons/beanutils/converters/BooleanArrayConverter;->MODEL:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_1a

    return-object p2

    :cond_1a
    sget-object p1, Lorg/apache/commons/beanutils/converters/BooleanArrayConverter;->strings:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_5a

    :try_start_27
    move-object p1, p2

    check-cast p1, [Ljava/lang/String;

    check-cast p1, [Ljava/lang/String;

    array-length v0, p1

    new-array v0, v0, [Z

    :goto_2f
    array-length v2, p1

    if-ge v1, v2, :cond_47

    aget-object v2, p1, v1

    iget-object v3, p0, Lorg/apache/commons/beanutils/converters/BooleanArrayConverter;->booleanConverter:Lorg/apache/commons/beanutils/converters/BooleanConverter;

    const-class v4, Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v2}, Lorg/apache/commons/beanutils/converters/BooleanConverter;->convert(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aput-boolean v2, v0, v1
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_44} :catch_48

    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    :cond_47
    return-object v0

    :catch_48
    move-exception p1

    iget-boolean v0, p0, Lorg/apache/commons/beanutils/converters/BooleanArrayConverter;->useDefault:Z

    if-eqz v0, :cond_50

    iget-object p1, p0, Lorg/apache/commons/beanutils/converters/BooleanArrayConverter;->defaultValue:Ljava/lang/Object;

    return-object p1

    :cond_50
    new-instance v0, Lorg/apache/commons/beanutils/ConversionException;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_5a
    :try_start_5a
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/converters/BooleanArrayConverter;->parseElements(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Z

    :goto_68
    if-ge v1, v0, :cond_83

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/commons/beanutils/converters/BooleanArrayConverter;->booleanConverter:Lorg/apache/commons/beanutils/converters/BooleanConverter;

    const-class v5, Ljava/lang/Boolean;

    invoke-virtual {v4, v5, v3}, Lorg/apache/commons/beanutils/converters/BooleanConverter;->convert(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    aput-boolean v3, v2, v1
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_80} :catch_84

    add-int/lit8 v1, v1, 0x1

    goto :goto_68

    :cond_83
    return-object v2

    :catch_84
    move-exception p1

    iget-boolean v0, p0, Lorg/apache/commons/beanutils/converters/BooleanArrayConverter;->useDefault:Z

    if-eqz v0, :cond_8c

    iget-object p1, p0, Lorg/apache/commons/beanutils/converters/BooleanArrayConverter;->defaultValue:Ljava/lang/Object;

    return-object p1

    :cond_8c
    new-instance v0, Lorg/apache/commons/beanutils/ConversionException;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
