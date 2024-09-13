.class public Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;
.super Ljava/lang/Object;
.source "LocaleConvertUtilsBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean$DelegateFastHashMap;
    }
.end annotation


# instance fields
.field private applyLocalized:Z

.field private defaultLocale:Ljava/util/Locale;

.field private final log:Lorg/apache/commons/logging/Log;

.field private final mapConverters:Lorg/apache/commons/collections/FastHashMap;


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->defaultLocale:Ljava/util/Locale;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->applyLocalized:Z

    const-class v1, Lorg/apache/commons/beanutils/locale/LocaleConvertUtils;

    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean$DelegateFastHashMap;

    invoke-static {}, Lorg/apache/commons/beanutils/BeanUtils;->createCache()Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean$DelegateFastHashMap;-><init>(Ljava/util/Map;Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean$1;)V

    iput-object v1, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->mapConverters:Lorg/apache/commons/collections/FastHashMap;

    invoke-virtual {v1, v0}, Lorg/apache/commons/collections/FastHashMap;->setFast(Z)V

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->deregister()V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lorg/apache/commons/collections/FastHashMap;->setFast(Z)V

    return-void
.end method

.method public static getInstance()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;
    .registers 1

    invoke-static {}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getLocaleBeanUtilsInstance()Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getLocaleConvertUtils()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public convert(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->defaultLocale:Ljava/util/Locale;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->convert(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public convert(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->defaultLocale:Ljava/util/Locale;

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->convert(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public convert(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Convert string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " using "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " locale and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " pattern"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_3f
    invoke-virtual {p0, p2, p3}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->lookup(Ljava/lang/Class;Ljava/util/Locale;)Lorg/apache/commons/beanutils/locale/LocaleConverter;

    move-result-object v0

    if-nez v0, :cond_4d

    const-class p2, Ljava/lang/String;

    invoke-virtual {p0, p2, p3}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->lookup(Ljava/lang/Class;Ljava/util/Locale;)Lorg/apache/commons/beanutils/locale/LocaleConverter;

    move-result-object v0

    const-class p2, Ljava/lang/String;

    :cond_4d
    iget-object p3, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p3}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result p3

    if-eqz p3, :cond_6b

    iget-object p3, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Using converter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    :cond_6b
    invoke-interface {v0, p2, p1, p4}, Lorg/apache/commons/beanutils/locale/LocaleConverter;->convert(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public convert([Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->getDefaultLocale()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->convert([Ljava/lang/String;Ljava/lang/Class;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public convert([Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->getDefaultLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->convert([Ljava/lang/String;Ljava/lang/Class;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public convert([Ljava/lang/String;Ljava/lang/Class;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    :cond_a
    iget-object v0, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Convert String["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] to class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[] using "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " locale and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " pattern"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_4a
    array-length v0, p1

    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    :goto_50
    array-length v2, p1

    if-ge v1, v2, :cond_5f

    aget-object v2, p1, v1

    invoke-virtual {p0, v2, p2, p3, p4}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->convert(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_50

    :cond_5f
    return-object v0
.end method

.method public convert(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->defaultLocale:Ljava/util/Locale;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->convert(Ljava/lang/Object;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public convert(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->defaultLocale:Ljava/util/Locale;

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->convert(Ljava/lang/Object;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public convert(Ljava/lang/Object;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-class v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->lookup(Ljava/lang/Class;Ljava/util/Locale;)Lorg/apache/commons/beanutils/locale/LocaleConverter;

    move-result-object p2

    const-class v0, Ljava/lang/String;

    invoke-interface {p2, v0, p1, p3}, Lorg/apache/commons/beanutils/locale/LocaleConverter;->convert(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method protected create(Ljava/util/Locale;)Lorg/apache/commons/collections/FastHashMap;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean$DelegateFastHashMap;

    invoke-static {}, Lorg/apache/commons/beanutils/BeanUtils;->createCache()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean$DelegateFastHashMap;-><init>(Ljava/util/Map;Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean$1;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/FastHashMap;->setFast(Z)V

    const-class v1, Ljava/math/BigDecimal;

    new-instance v2, Lorg/apache/commons/beanutils/locale/converters/BigDecimalLocaleConverter;

    iget-boolean v3, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->applyLocalized:Z

    invoke-direct {v2, p1, v3}, Lorg/apache/commons/beanutils/locale/converters/BigDecimalLocaleConverter;-><init>(Ljava/util/Locale;Z)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/collections/FastHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Ljava/math/BigInteger;

    new-instance v2, Lorg/apache/commons/beanutils/locale/converters/BigIntegerLocaleConverter;

    iget-boolean v3, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->applyLocalized:Z

    invoke-direct {v2, p1, v3}, Lorg/apache/commons/beanutils/locale/converters/BigIntegerLocaleConverter;-><init>(Ljava/util/Locale;Z)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/collections/FastHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Ljava/lang/Byte;

    new-instance v2, Lorg/apache/commons/beanutils/locale/converters/ByteLocaleConverter;

    iget-boolean v3, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->applyLocalized:Z

    invoke-direct {v2, p1, v3}, Lorg/apache/commons/beanutils/locale/converters/ByteLocaleConverter;-><init>(Ljava/util/Locale;Z)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/collections/FastHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    new-instance v2, Lorg/apache/commons/beanutils/locale/converters/ByteLocaleConverter;

    iget-boolean v3, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->applyLocalized:Z

    invoke-direct {v2, p1, v3}, Lorg/apache/commons/beanutils/locale/converters/ByteLocaleConverter;-><init>(Ljava/util/Locale;Z)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/collections/FastHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Ljava/lang/Double;

    new-instance v2, Lorg/apache/commons/beanutils/locale/converters/DoubleLocaleConverter;

    iget-boolean v3, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->applyLocalized:Z

    invoke-direct {v2, p1, v3}, Lorg/apache/commons/beanutils/locale/converters/DoubleLocaleConverter;-><init>(Ljava/util/Locale;Z)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/collections/FastHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    new-instance v2, Lorg/apache/commons/beanutils/locale/converters/DoubleLocaleConverter;

    iget-boolean v3, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->applyLocalized:Z

    invoke-direct {v2, p1, v3}, Lorg/apache/commons/beanutils/locale/converters/DoubleLocaleConverter;-><init>(Ljava/util/Locale;Z)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/collections/FastHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Ljava/lang/Float;

    new-instance v2, Lorg/apache/commons/beanutils/locale/converters/FloatLocaleConverter;

    iget-boolean v3, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->applyLocalized:Z

    invoke-direct {v2, p1, v3}, Lorg/apache/commons/beanutils/locale/converters/FloatLocaleConverter;-><init>(Ljava/util/Locale;Z)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/collections/FastHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-instance v2, Lorg/apache/commons/beanutils/locale/converters/FloatLocaleConverter;

    iget-boolean v3, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->applyLocalized:Z

    invoke-direct {v2, p1, v3}, Lorg/apache/commons/beanutils/locale/converters/FloatLocaleConverter;-><init>(Ljava/util/Locale;Z)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/collections/FastHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Ljava/lang/Integer;

    new-instance v2, Lorg/apache/commons/beanutils/locale/converters/IntegerLocaleConverter;

    iget-boolean v3, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->applyLocalized:Z

    invoke-direct {v2, p1, v3}, Lorg/apache/commons/beanutils/locale/converters/IntegerLocaleConverter;-><init>(Ljava/util/Locale;Z)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/collections/FastHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v2, Lorg/apache/commons/beanutils/locale/converters/IntegerLocaleConverter;

    iget-boolean v3, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->applyLocalized:Z

    invoke-direct {v2, p1, v3}, Lorg/apache/commons/beanutils/locale/converters/IntegerLocaleConverter;-><init>(Ljava/util/Locale;Z)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/collections/FastHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Ljava/lang/Long;

    new-instance v2, Lorg/apache/commons/beanutils/locale/converters/LongLocaleConverter;

    iget-boolean v3, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->applyLocalized:Z

    invoke-direct {v2, p1, v3}, Lorg/apache/commons/beanutils/locale/converters/LongLocaleConverter;-><init>(Ljava/util/Locale;Z)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/collections/FastHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    new-instance v2, Lorg/apache/commons/beanutils/locale/converters/LongLocaleConverter;

    iget-boolean v3, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->applyLocalized:Z

    invoke-direct {v2, p1, v3}, Lorg/apache/commons/beanutils/locale/converters/LongLocaleConverter;-><init>(Ljava/util/Locale;Z)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/collections/FastHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Ljava/lang/Short;

    new-instance v2, Lorg/apache/commons/beanutils/locale/converters/ShortLocaleConverter;

    iget-boolean v3, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->applyLocalized:Z

    invoke-direct {v2, p1, v3}, Lorg/apache/commons/beanutils/locale/converters/ShortLocaleConverter;-><init>(Ljava/util/Locale;Z)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/collections/FastHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    new-instance v2, Lorg/apache/commons/beanutils/locale/converters/ShortLocaleConverter;

    iget-boolean v3, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->applyLocalized:Z

    invoke-direct {v2, p1, v3}, Lorg/apache/commons/beanutils/locale/converters/ShortLocaleConverter;-><init>(Ljava/util/Locale;Z)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/collections/FastHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Ljava/lang/String;

    new-instance v2, Lorg/apache/commons/beanutils/locale/converters/StringLocaleConverter;

    iget-boolean v3, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->applyLocalized:Z

    invoke-direct {v2, p1, v3}, Lorg/apache/commons/beanutils/locale/converters/StringLocaleConverter;-><init>(Ljava/util/Locale;Z)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/collections/FastHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Ljava/sql/Date;

    new-instance v2, Lorg/apache/commons/beanutils/locale/converters/SqlDateLocaleConverter;

    const-string v3, "yyyy-MM-dd"

    invoke-direct {v2, p1, v3}, Lorg/apache/commons/beanutils/locale/converters/SqlDateLocaleConverter;-><init>(Ljava/util/Locale;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/collections/FastHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Ljava/sql/Time;

    new-instance v2, Lorg/apache/commons/beanutils/locale/converters/SqlTimeLocaleConverter;

    const-string v3, "HH:mm:ss"

    invoke-direct {v2, p1, v3}, Lorg/apache/commons/beanutils/locale/converters/SqlTimeLocaleConverter;-><init>(Ljava/util/Locale;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/collections/FastHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Ljava/sql/Timestamp;

    new-instance v2, Lorg/apache/commons/beanutils/locale/converters/SqlTimestampLocaleConverter;

    const-string v3, "yyyy-MM-dd HH:mm:ss.S"

    invoke-direct {v2, p1, v3}, Lorg/apache/commons/beanutils/locale/converters/SqlTimestampLocaleConverter;-><init>(Ljava/util/Locale;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/collections/FastHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/FastHashMap;->setFast(Z)V

    return-object v0
.end method

.method public deregister()V
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->defaultLocale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->lookup(Ljava/util/Locale;)Lorg/apache/commons/collections/FastHashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->mapConverters:Lorg/apache/commons/collections/FastHashMap;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/commons/collections/FastHashMap;->setFast(Z)V

    iget-object v1, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->mapConverters:Lorg/apache/commons/collections/FastHashMap;

    invoke-virtual {v1}, Lorg/apache/commons/collections/FastHashMap;->clear()V

    iget-object v1, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->mapConverters:Lorg/apache/commons/collections/FastHashMap;

    iget-object v2, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->defaultLocale:Ljava/util/Locale;

    invoke-virtual {v1, v2, v0}, Lorg/apache/commons/collections/FastHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->mapConverters:Lorg/apache/commons/collections/FastHashMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/FastHashMap;->setFast(Z)V

    return-void
.end method

.method public deregister(Ljava/lang/Class;Ljava/util/Locale;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Locale;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->lookup(Ljava/util/Locale;)Lorg/apache/commons/collections/FastHashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/apache/commons/collections/FastHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public deregister(Ljava/util/Locale;)V
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->mapConverters:Lorg/apache/commons/collections/FastHashMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/FastHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getApplyLocalized()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->applyLocalized:Z

    return v0
.end method

.method public getDefaultLocale()Ljava/util/Locale;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->defaultLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public lookup(Ljava/lang/Class;Ljava/util/Locale;)Lorg/apache/commons/beanutils/locale/LocaleConverter;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Locale;",
            ")",
            "Lorg/apache/commons/beanutils/locale/LocaleConverter;"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->lookup(Ljava/util/Locale;)Lorg/apache/commons/collections/FastHashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/apache/commons/collections/FastHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/beanutils/locale/LocaleConverter;

    iget-object p2, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p2}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result p2

    if-eqz p2, :cond_28

    iget-object p2, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocaleConverter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    :cond_28
    return-object p1
.end method

.method protected lookup(Ljava/util/Locale;)Lorg/apache/commons/collections/FastHashMap;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_d

    iget-object p1, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->mapConverters:Lorg/apache/commons/collections/FastHashMap;

    iget-object v0, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->defaultLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Lorg/apache/commons/collections/FastHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/collections/FastHashMap;

    goto :goto_21

    :cond_d
    iget-object v0, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->mapConverters:Lorg/apache/commons/collections/FastHashMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/FastHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/FastHashMap;

    if-nez v0, :cond_20

    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->create(Ljava/util/Locale;)Lorg/apache/commons/collections/FastHashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->mapConverters:Lorg/apache/commons/collections/FastHashMap;

    invoke-virtual {v1, p1, v0}, Lorg/apache/commons/collections/FastHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    move-object p1, v0

    :goto_21
    return-object p1
.end method

.method public register(Lorg/apache/commons/beanutils/locale/LocaleConverter;Ljava/lang/Class;Ljava/util/Locale;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/beanutils/locale/LocaleConverter;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Locale;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p3}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->lookup(Ljava/util/Locale;)Lorg/apache/commons/collections/FastHashMap;

    move-result-object p3

    invoke-virtual {p3, p2, p1}, Lorg/apache/commons/collections/FastHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setApplyLocalized(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->applyLocalized:Z

    return-void
.end method

.method public setDefaultLocale(Ljava/util/Locale;)V
    .registers 2

    if-nez p1, :cond_9

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->defaultLocale:Ljava/util/Locale;

    goto :goto_b

    :cond_9
    iput-object p1, p0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->defaultLocale:Ljava/util/Locale;

    :goto_b
    return-void
.end method
