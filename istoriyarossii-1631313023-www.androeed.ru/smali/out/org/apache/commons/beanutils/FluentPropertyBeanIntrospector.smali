.class public Lorg/apache/commons/beanutils/FluentPropertyBeanIntrospector;
.super Ljava/lang/Object;
.source "FluentPropertyBeanIntrospector.java"

# interfaces
.implements Lorg/apache/commons/beanutils/BeanIntrospector;


# static fields
.field public static final DEFAULT_WRITE_METHOD_PREFIX:Ljava/lang/String; = "set"


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;

.field private final writeMethodPrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "set"

    invoke-direct {p0, v0}, Lorg/apache/commons/beanutils/FluentPropertyBeanIntrospector;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/FluentPropertyBeanIntrospector;->log:Lorg/apache/commons/logging/Log;

    if-eqz p1, :cond_12

    iput-object p1, p0, Lorg/apache/commons/beanutils/FluentPropertyBeanIntrospector;->writeMethodPrefix:Ljava/lang/String;

    return-void

    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Prefix for write methods must not be null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private createFluentPropertyDescritor(Ljava/lang/reflect/Method;Ljava/lang/String;)Ljava/beans/PropertyDescriptor;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/IntrospectionException;
        }
    .end annotation

    new-instance p2, Ljava/beans/PropertyDescriptor;

    invoke-direct {p0, p1}, Lorg/apache/commons/beanutils/FluentPropertyBeanIntrospector;->propertyName(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1, p1}, Ljava/beans/PropertyDescriptor;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    return-object p2
.end method

.method private propertyName(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/FluentPropertyBeanIntrospector;->getWriteMethodPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1c

    invoke-static {p1}, Ljava/beans/Introspector;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_22

    :cond_1c
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    :goto_22
    return-object p1
.end method


# virtual methods
.method public getWriteMethodPrefix()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/beanutils/FluentPropertyBeanIntrospector;->writeMethodPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public introspect(Lorg/apache/commons/beanutils/IntrospectionContext;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/IntrospectionException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/apache/commons/beanutils/IntrospectionContext;->getTargetClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_5e

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/FluentPropertyBeanIntrospector;->getWriteMethodPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5b

    invoke-direct {p0, v3}, Lorg/apache/commons/beanutils/FluentPropertyBeanIntrospector;->propertyName(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Lorg/apache/commons/beanutils/IntrospectionContext;->getPropertyDescriptor(Ljava/lang/String;)Ljava/beans/PropertyDescriptor;

    move-result-object v5

    if-nez v5, :cond_2e

    :try_start_26
    invoke-direct {p0, v3, v4}, Lorg/apache/commons/beanutils/FluentPropertyBeanIntrospector;->createFluentPropertyDescritor(Ljava/lang/reflect/Method;Ljava/lang/String;)Ljava/beans/PropertyDescriptor;

    move-result-object v4

    invoke-interface {p1, v4}, Lorg/apache/commons/beanutils/IntrospectionContext;->addPropertyDescriptor(Ljava/beans/PropertyDescriptor;)V

    goto :goto_5b

    :cond_2e
    invoke-virtual {v5}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v4

    if-nez v4, :cond_5b

    invoke-virtual {v5, v3}, Ljava/beans/PropertyDescriptor;->setWriteMethod(Ljava/lang/reflect/Method;)V
    :try_end_37
    .catch Ljava/beans/IntrospectionException; {:try_start_26 .. :try_end_37} :catch_38

    goto :goto_5b

    :catch_38
    move-exception v4

    iget-object v5, p0, Lorg/apache/commons/beanutils/FluentPropertyBeanIntrospector;->log:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error when creating PropertyDescriptor for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "! Ignoring this property."

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    iget-object v3, p0, Lorg/apache/commons/beanutils/FluentPropertyBeanIntrospector;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "Exception is:"

    invoke-interface {v3, v5, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_5b
    :goto_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_5e
    return-void
.end method
