.class public abstract Lorg/apache/commons/beanutils/locale/BaseLocaleConverter;
.super Ljava/lang/Object;
.source "BaseLocaleConverter.java"

# interfaces
.implements Lorg/apache/commons/beanutils/locale/LocaleConverter;


# instance fields
.field private defaultValue:Ljava/lang/Object;

.field protected locPattern:Z

.field protected locale:Ljava/util/Locale;

.field private final log:Lorg/apache/commons/logging/Log;

.field protected pattern:Ljava/lang/String;

.field protected useDefault:Z


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Ljava/util/Locale;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/beanutils/locale/BaseLocaleConverter;-><init>(Ljava/lang/Object;Ljava/util/Locale;Ljava/lang/String;Z)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;Ljava/util/Locale;Ljava/lang/String;Z)V
    .registers 11

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/beanutils/locale/BaseLocaleConverter;-><init>(Ljava/lang/Object;Ljava/util/Locale;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/util/Locale;Ljava/lang/String;ZZ)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lorg/apache/commons/beanutils/locale/BaseLocaleConverter;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/locale/BaseLocaleConverter;->log:Lorg/apache/commons/logging/Log;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/beanutils/locale/BaseLocaleConverter;->defaultValue:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/commons/beanutils/locale/BaseLocaleConverter;->useDefault:Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/beanutils/locale/BaseLocaleConverter;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lorg/apache/commons/beanutils/locale/BaseLocaleConverter;->pattern:Ljava/lang/String;

    iput-boolean v1, p0, Lorg/apache/commons/beanutils/locale/BaseLocaleConverter;->locPattern:Z

    if-eqz p4, :cond_22

    iput-object p1, p0, Lorg/apache/commons/beanutils/locale/BaseLocaleConverter;->defaultValue:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/commons/beanutils/locale/BaseLocaleConverter;->useDefault:Z

    :cond_22
    if-eqz p2, :cond_26

    iput-object p2, p0, Lorg/apache/commons/beanutils/locale/BaseLocaleConverter;->locale:Ljava/util/Locale;

    :cond_26
    iput-object p3, p0, Lorg/apache/commons/beanutils/locale/BaseLocaleConverter;->pattern:Ljava/lang/String;

    iput-boolean p5, p0, Lorg/apache/commons/beanutils/locale/BaseLocaleConverter;->locPattern:Z

    return-void
.end method

.method protected constructor <init>(Ljava/util/Locale;Ljava/lang/String;)V
    .registers 9

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/beanutils/locale/BaseLocaleConverter;-><init>(Ljava/lang/Object;Ljava/util/Locale;Ljava/lang/String;ZZ)V

    return-void
.end method

.method protected constructor <init>(Ljava/util/Locale;Ljava/lang/String;Z)V
    .registers 10

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/beanutils/locale/BaseLocaleConverter;-><init>(Ljava/lang/Object;Ljava/util/Locale;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private static checkConversionResult(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
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

    if-nez p0, :cond_3

    return-object p1

    :cond_3
    if-nez p1, :cond_7

    const/4 p0, 0x0

    return-object p0

    :cond_7
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_12
    new-instance p1, Lorg/apache/commons/beanutils/ConversionException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported target type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getDefaultAs(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/beanutils/locale/BaseLocaleConverter;->defaultValue:Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/apache/commons/beanutils/locale/BaseLocaleConverter;->checkConversionResult(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public convert(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
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

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/beanutils/locale/BaseLocaleConverter;->convert(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public convert(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-static {p1}, Lorg/apache/commons/beanutils/ConvertUtils;->primitiveToWrapper(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    if-nez p2, :cond_18

    iget-boolean p2, p0, Lorg/apache/commons/beanutils/locale/BaseLocaleConverter;->useDefault:Z

    if-eqz p2, :cond_f

    invoke-direct {p0, p1}, Lorg/apache/commons/beanutils/locale/BaseLocaleConverter;->getDefaultAs(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_f
    iget-object p1, p0, Lorg/apache/commons/beanutils/locale/BaseLocaleConverter;->log:Lorg/apache/commons/logging/Log;

    const-string p2, "Null value specified for conversion, returing null"

    invoke-interface {p1, p2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    :cond_18
    if-eqz p3, :cond_23

    :try_start_1a
    invoke-virtual {p0, p2, p3}, Lorg/apache/commons/beanutils/locale/BaseLocaleConverter;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/commons/beanutils/locale/BaseLocaleConverter;->checkConversionResult(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_23
    iget-object p3, p0, Lorg/apache/commons/beanutils/locale/BaseLocaleConverter;->pattern:Ljava/lang/String;

    invoke-virtual {p0, p2, p3}, Lorg/apache/commons/beanutils/locale/BaseLocaleConverter;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/commons/beanutils/locale/BaseLocaleConverter;->checkConversionResult(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_2d} :catch_2e

    return-object p1

    :catch_2e
    move-exception p2

    iget-boolean p3, p0, Lorg/apache/commons/beanutils/locale/BaseLocaleConverter;->useDefault:Z

    if-eqz p3, :cond_38

    invoke-direct {p0, p1}, Lorg/apache/commons/beanutils/locale/BaseLocaleConverter;->getDefaultAs(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_38
    instance-of p1, p2, Lorg/apache/commons/beanutils/ConversionException;

    if-eqz p1, :cond_3f

    check-cast p2, Lorg/apache/commons/beanutils/ConversionException;

    throw p2

    :cond_3f
    new-instance p1, Lorg/apache/commons/beanutils/ConversionException;

    invoke-direct {p1, p2}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public convert(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/beanutils/locale/BaseLocaleConverter;->convert(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public convert(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/commons/beanutils/locale/BaseLocaleConverter;->convert(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected abstract parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method
