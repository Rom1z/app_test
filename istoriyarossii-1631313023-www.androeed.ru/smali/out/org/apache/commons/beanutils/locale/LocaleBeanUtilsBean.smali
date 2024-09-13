.class public Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;
.super Lorg/apache/commons/beanutils/BeanUtilsBean;
.source "LocaleBeanUtilsBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean$Descriptor;
    }
.end annotation


# static fields
.field private static final LOCALE_BEANS_BY_CLASSLOADER:Lorg/apache/commons/beanutils/ContextClassLoaderLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/beanutils/ContextClassLoaderLocal<",
            "Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final localeConvertUtils:Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean$1;

    invoke-direct {v0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean$1;-><init>()V

    sput-object v0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->LOCALE_BEANS_BY_CLASSLOADER:Lorg/apache/commons/beanutils/ContextClassLoaderLocal;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;-><init>()V

    const-class v0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    invoke-direct {v0}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->localeConvertUtils:Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;)V
    .registers 3

    invoke-direct {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;-><init>()V

    const-class v0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    iput-object p1, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->localeConvertUtils:Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;Lorg/apache/commons/beanutils/ConvertUtilsBean;Lorg/apache/commons/beanutils/PropertyUtilsBean;)V
    .registers 4

    invoke-direct {p0, p2, p3}, Lorg/apache/commons/beanutils/BeanUtilsBean;-><init>(Lorg/apache/commons/beanutils/ConvertUtilsBean;Lorg/apache/commons/beanutils/PropertyUtilsBean;)V

    const-class p2, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;

    invoke-static {p2}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    iput-object p1, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->localeConvertUtils:Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    return-void
.end method

.method public static getLocaleBeanUtilsInstance()Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;
    .registers 1

    sget-object v0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->LOCALE_BEANS_BY_CLASSLOADER:Lorg/apache/commons/beanutils/ContextClassLoaderLocal;

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/ContextClassLoaderLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;

    return-object v0
.end method

.method public static setInstance(Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;)V
    .registers 2

    sget-object v0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->LOCALE_BEANS_BY_CLASSLOADER:Lorg/apache/commons/beanutils/ContextClassLoaderLocal;

    invoke-virtual {v0, p0}, Lorg/apache/commons/beanutils/ContextClassLoaderLocal;->set(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected calculate(Ljava/lang/Object;Ljava/lang/String;)Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean$Descriptor;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getResolver()Lorg/apache/commons/beanutils/expression/Resolver;

    move-result-object v0

    move-object v3, p1

    move-object v4, p2

    :goto_a
    invoke-interface {v0, v4}, Lorg/apache/commons/beanutils/expression/Resolver;->hasNested(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_23

    :try_start_10
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object p1

    invoke-interface {v0, v4}, Lorg/apache/commons/beanutils/expression/Resolver;->next(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v4}, Lorg/apache/commons/beanutils/expression/Resolver;->remove(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_20
    .catch Ljava/lang/NoSuchMethodException; {:try_start_10 .. :try_end_20} :catch_21

    goto :goto_a

    :catch_21
    const/4 p1, 0x0

    return-object p1

    :cond_23
    iget-object p1, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result p1

    if-eqz p1, :cond_57

    iget-object p1, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Target bean = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Target name = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    :cond_57
    invoke-interface {v0, v4}, Lorg/apache/commons/beanutils/expression/Resolver;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4}, Lorg/apache/commons/beanutils/expression/Resolver;->getIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v4}, Lorg/apache/commons/beanutils/expression/Resolver;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance p1, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean$Descriptor;

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean$Descriptor;-><init>(Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object p1
.end method

.method protected convert(Ljava/lang/Class;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    if-gez p2, :cond_26

    instance-of p2, p3, Ljava/lang/String;

    if-eqz p2, :cond_19

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    check-cast p3, Ljava/lang/String;

    aput-object p3, p2, v1

    invoke-static {p2, p1}, Lorg/apache/commons/beanutils/ConvertUtils;->convert([Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_67

    :cond_19
    instance-of p2, p3, [Ljava/lang/String;

    if-eqz p2, :cond_67

    check-cast p3, [Ljava/lang/String;

    check-cast p3, [Ljava/lang/String;

    invoke-static {p3, p1}, Lorg/apache/commons/beanutils/ConvertUtils;->convert([Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_67

    :cond_26
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result p2

    if-eqz p2, :cond_4e

    instance-of p2, p3, Ljava/lang/String;

    if-eqz p2, :cond_3b

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p3, p1}, Lorg/apache/commons/beanutils/ConvertUtils;->convert(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_67

    :cond_3b
    instance-of p2, p3, [Ljava/lang/String;

    if-eqz p2, :cond_67

    check-cast p3, [Ljava/lang/String;

    check-cast p3, [Ljava/lang/String;

    aget-object p2, p3, v1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/apache/commons/beanutils/ConvertUtils;->convert(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_67

    :cond_4e
    instance-of p2, p3, Ljava/lang/String;

    if-eqz p2, :cond_59

    check-cast p3, Ljava/lang/String;

    invoke-static {p3, p1}, Lorg/apache/commons/beanutils/ConvertUtils;->convert(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_67

    :cond_59
    instance-of p2, p3, [Ljava/lang/String;

    if-eqz p2, :cond_67

    check-cast p3, [Ljava/lang/String;

    check-cast p3, [Ljava/lang/String;

    aget-object p2, p3, v1

    invoke-static {p2, p1}, Lorg/apache/commons/beanutils/ConvertUtils;->convert(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    :cond_67
    :goto_67
    return-object p3
.end method

.method protected convert(Ljava/lang/Class;ILjava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Converting value \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\' to type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    :cond_26
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_54

    if-gez p2, :cond_54

    instance-of p2, p3, Ljava/lang/String;

    if-eqz p2, :cond_43

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    check-cast p3, Ljava/lang/String;

    aput-object p3, p2, v1

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getLocaleConvertUtils()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object p3

    invoke-virtual {p3, p2, p1, p4}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->convert([Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_a5

    :cond_43
    instance-of p2, p3, [Ljava/lang/String;

    if-eqz p2, :cond_a5

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getLocaleConvertUtils()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object p2

    check-cast p3, [Ljava/lang/String;

    check-cast p3, [Ljava/lang/String;

    invoke-virtual {p2, p3, p1, p4}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->convert([Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_a5

    :cond_54
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result p2

    if-eqz p2, :cond_84

    instance-of p2, p3, Ljava/lang/String;

    if-eqz p2, :cond_6d

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getLocaleConvertUtils()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object p2

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p3, p1, p4}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->convert(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_a5

    :cond_6d
    instance-of p2, p3, [Ljava/lang/String;

    if-eqz p2, :cond_a5

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getLocaleConvertUtils()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object p2

    check-cast p3, [Ljava/lang/String;

    check-cast p3, [Ljava/lang/String;

    aget-object p3, p3, v1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p3, p1, p4}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->convert(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_a5

    :cond_84
    instance-of p2, p3, Ljava/lang/String;

    if-eqz p2, :cond_93

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getLocaleConvertUtils()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object p2

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p3, p1, p4}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->convert(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_a5

    :cond_93
    instance-of p2, p3, [Ljava/lang/String;

    if-eqz p2, :cond_a5

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getLocaleConvertUtils()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object p2

    check-cast p3, [Ljava/lang/String;

    check-cast p3, [Ljava/lang/String;

    aget-object p3, p3, v1

    invoke-virtual {p2, p3, p1, p4}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->convert(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    :cond_a5
    :goto_a5
    return-object p3
.end method

.method protected definePropertyType(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    instance-of v0, p1, Lorg/apache/commons/beanutils/DynaBean;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    check-cast p1, Lorg/apache/commons/beanutils/DynaBean;

    invoke-interface {p1}, Lorg/apache/commons/beanutils/DynaBean;->getDynaClass()Lorg/apache/commons/beanutils/DynaClass;

    move-result-object p1

    invoke-interface {p1, p3}, Lorg/apache/commons/beanutils/DynaClass;->getDynaProperty(Ljava/lang/String;)Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object p1

    if-nez p1, :cond_12

    return-object v1

    :cond_12
    invoke-virtual {p1}, Lorg/apache/commons/beanutils/DynaProperty;->getType()Ljava/lang/Class;

    move-result-object p1

    goto :goto_3c

    :cond_17
    :try_start_17
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getPropertyDescriptor(Ljava/lang/Object;Ljava/lang/String;)Ljava/beans/PropertyDescriptor;

    move-result-object p1
    :try_end_1f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_17 .. :try_end_1f} :catch_3d

    if-nez p1, :cond_22

    return-object v1

    :cond_22
    instance-of p2, p1, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;

    if-eqz p2, :cond_2d

    check-cast p1, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;

    invoke-virtual {p1}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->getMappedPropertyType()Ljava/lang/Class;

    move-result-object p1

    goto :goto_3c

    :cond_2d
    instance-of p2, p1, Ljava/beans/IndexedPropertyDescriptor;

    if-eqz p2, :cond_38

    check-cast p1, Ljava/beans/IndexedPropertyDescriptor;

    invoke-virtual {p1}, Ljava/beans/IndexedPropertyDescriptor;->getIndexedPropertyType()Ljava/lang/Class;

    move-result-object p1

    goto :goto_3c

    :cond_38
    invoke-virtual {p1}, Ljava/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object p1

    :goto_3c
    return-object p1

    :catch_3d
    return-object v1
.end method

.method public getApplyLocalized()Z
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getLocaleConvertUtils()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->getApplyLocalized()Z

    move-result v0

    return v0
.end method

.method public getDefaultLocale()Ljava/util/Locale;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getLocaleConvertUtils()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->getDefaultLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getIndexedProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getIndexedProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getIndexedProperty(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getIndexedProperty(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getIndexedProperty(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getIndexedProperty(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getLocaleConvertUtils()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object p2

    invoke-virtual {p2, p1, p4}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->convert(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getIndexedProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getIndexedProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getLocaleConvertUtils()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->convert(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLocaleConvertUtils()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->localeConvertUtils:Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    return-object v0
.end method

.method public getMappedProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getMappedPropertyLocale(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMappedProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getMappedProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMappedProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getMappedProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getLocaleConvertUtils()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object p2

    invoke-virtual {p2, p1, p4}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->convert(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMappedPropertyLocale(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getMappedProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getLocaleConvertUtils()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->convert(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNestedProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getNestedProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNestedProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getNestedProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getLocaleConvertUtils()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->convert(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getNestedProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getNestedProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSimpleProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getSimpleProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSimpleProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getSimpleProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getLocaleConvertUtils()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->convert(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected invokeSetter(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    if-ltz p4, :cond_c

    :try_start_2
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object p3

    invoke-virtual {p3, p1, p2, p4, p5}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->setIndexedProperty(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_1d

    :catch_a
    move-exception p1

    goto :goto_1e

    :cond_c
    if-eqz p3, :cond_16

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object p4

    invoke-virtual {p4, p1, p2, p3, p5}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->setMappedProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1d

    :cond_16
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object p3

    invoke-virtual {p3, p1, p2, p5}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_1d} :catch_a

    :goto_1d
    return-void

    :goto_1e
    new-instance p3, Ljava/lang/reflect/InvocationTargetException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Cannot set "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p1, p2}, Ljava/lang/reflect/InvocationTargetException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    throw p3
.end method

.method public setApplyLocalized(Z)V
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getLocaleConvertUtils()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->setApplyLocalized(Z)V

    return-void
.end method

.method public setDefaultLocale(Ljava/util/Locale;)V
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getLocaleConvertUtils()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->setDefaultLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_6c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  setProperty("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_25

    const-string v1, "<NULL>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5e

    :cond_25
    instance-of v1, p3, Ljava/lang/String;

    if-eqz v1, :cond_30

    move-object v1, p3

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5e

    :cond_30
    instance-of v1, p3, [Ljava/lang/String;

    if-eqz v1, :cond_57

    move-object v1, p3

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_3f
    array-length v3, v1

    if-ge v2, v3, :cond_51

    if-lez v2, :cond_49

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_49
    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    :cond_51
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5e

    :cond_57
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5e
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    :cond_6c
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getResolver()Lorg/apache/commons/beanutils/expression/Resolver;

    move-result-object v0

    move-object v2, p1

    :goto_75
    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->hasNested(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8d

    :try_start_7b
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object p1

    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->next(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->remove(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_8b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7b .. :try_end_8b} :catch_8c

    goto :goto_75

    :catch_8c
    return-void

    :cond_8d
    iget-object p1, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result p1

    if-eqz p1, :cond_c1

    iget-object p1, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    Target bean = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    Target name = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    :cond_c1
    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->getIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, p2, v3}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->definePropertyType(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_db

    invoke-virtual {p0, p1, v5, p3, p4}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->convert(Ljava/lang/Class;ILjava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->invokeSetter(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_db
    return-void
.end method
