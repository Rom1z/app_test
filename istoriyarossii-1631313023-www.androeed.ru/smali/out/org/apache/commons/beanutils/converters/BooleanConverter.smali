.class public final Lorg/apache/commons/beanutils/converters/BooleanConverter;
.super Lorg/apache/commons/beanutils/converters/AbstractConverter;
.source "BooleanConverter.java"


# static fields
.field public static final NO_DEFAULT:Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private falseStrings:[Ljava/lang/String;

.field private trueStrings:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/commons/beanutils/converters/BooleanConverter;->NO_DEFAULT:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    invoke-direct {p0}, Lorg/apache/commons/beanutils/converters/AbstractConverter;-><init>()V

    const-string v0, "true"

    const-string v1, "yes"

    const-string v2, "y"

    const-string v3, "on"

    const-string v4, "1"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/converters/BooleanConverter;->trueStrings:[Ljava/lang/String;

    const-string v0, "false"

    const-string v1, "no"

    const-string v2, "n"

    const-string v3, "off"

    const-string v4, "0"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/converters/BooleanConverter;->falseStrings:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 7

    invoke-direct {p0}, Lorg/apache/commons/beanutils/converters/AbstractConverter;-><init>()V

    const-string v0, "true"

    const-string v1, "yes"

    const-string v2, "y"

    const-string v3, "on"

    const-string v4, "1"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/converters/BooleanConverter;->trueStrings:[Ljava/lang/String;

    const-string v0, "false"

    const-string v1, "no"

    const-string v2, "n"

    const-string v3, "off"

    const-string v4, "0"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/converters/BooleanConverter;->falseStrings:[Ljava/lang/String;

    sget-object v0, Lorg/apache/commons/beanutils/converters/BooleanConverter;->NO_DEFAULT:Ljava/lang/Object;

    if-eq p1, v0, :cond_2a

    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/converters/BooleanConverter;->setDefaultValue(Ljava/lang/Object;)V

    :cond_2a
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;)V
    .registers 8

    invoke-direct {p0}, Lorg/apache/commons/beanutils/converters/AbstractConverter;-><init>()V

    const-string v0, "true"

    const-string v1, "yes"

    const-string v2, "y"

    const-string v3, "on"

    const-string v4, "1"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/converters/BooleanConverter;->trueStrings:[Ljava/lang/String;

    const-string v0, "false"

    const-string v1, "no"

    const-string v2, "n"

    const-string v3, "off"

    const-string v4, "0"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/converters/BooleanConverter;->falseStrings:[Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/commons/beanutils/converters/BooleanConverter;->copyStrings([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/beanutils/converters/BooleanConverter;->trueStrings:[Ljava/lang/String;

    invoke-static {p2}, Lorg/apache/commons/beanutils/converters/BooleanConverter;->copyStrings([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/beanutils/converters/BooleanConverter;->falseStrings:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;)V
    .registers 9

    invoke-direct {p0}, Lorg/apache/commons/beanutils/converters/AbstractConverter;-><init>()V

    const-string v0, "true"

    const-string v1, "yes"

    const-string v2, "y"

    const-string v3, "on"

    const-string v4, "1"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/converters/BooleanConverter;->trueStrings:[Ljava/lang/String;

    const-string v0, "false"

    const-string v1, "no"

    const-string v2, "n"

    const-string v3, "off"

    const-string v4, "0"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/converters/BooleanConverter;->falseStrings:[Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/commons/beanutils/converters/BooleanConverter;->copyStrings([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/beanutils/converters/BooleanConverter;->trueStrings:[Ljava/lang/String;

    invoke-static {p2}, Lorg/apache/commons/beanutils/converters/BooleanConverter;->copyStrings([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/beanutils/converters/BooleanConverter;->falseStrings:[Ljava/lang/String;

    sget-object p1, Lorg/apache/commons/beanutils/converters/BooleanConverter;->NO_DEFAULT:Ljava/lang/Object;

    if-eq p3, p1, :cond_36

    invoke-virtual {p0, p3}, Lorg/apache/commons/beanutils/converters/BooleanConverter;->setDefaultValue(Ljava/lang/Object;)V

    :cond_36
    return-void
.end method

.method private static copyStrings([Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_12

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_12
    return-object v0
.end method


# virtual methods
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

    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    :cond_10
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/beanutils/converters/BooleanConverter;->trueStrings:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1d
    if-ge v4, v2, :cond_31

    aget-object v5, v1, v4

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_31
    iget-object v1, p0, Lorg/apache/commons/beanutils/converters/BooleanConverter;->falseStrings:[Ljava/lang/String;

    array-length v2, v1

    :goto_34
    if-ge v3, v2, :cond_48

    aget-object v4, v1, v3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_45
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    :cond_48
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/beanutils/converters/BooleanConverter;->conversionException(Ljava/lang/Class;Ljava/lang/Object;)Lorg/apache/commons/beanutils/ConversionException;

    move-result-object p1

    throw p1
.end method

.method protected getDefaultType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-class v0, Ljava/lang/Boolean;

    return-object v0
.end method
