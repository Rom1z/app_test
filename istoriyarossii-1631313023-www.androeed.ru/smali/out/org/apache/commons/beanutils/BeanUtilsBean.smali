.class public Lorg/apache/commons/beanutils/BeanUtilsBean;
.super Ljava/lang/Object;
.source "BeanUtilsBean.java"


# static fields
.field private static final BEANS_BY_CLASSLOADER:Lorg/apache/commons/beanutils/ContextClassLoaderLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/beanutils/ContextClassLoaderLocal<",
            "Lorg/apache/commons/beanutils/BeanUtilsBean;",
            ">;"
        }
    .end annotation
.end field

.field private static final INIT_CAUSE_METHOD:Ljava/lang/reflect/Method;


# instance fields
.field private final convertUtilsBean:Lorg/apache/commons/beanutils/ConvertUtilsBean;

.field private final log:Lorg/apache/commons/logging/Log;

.field private final propertyUtilsBean:Lorg/apache/commons/beanutils/PropertyUtilsBean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/apache/commons/beanutils/BeanUtilsBean$1;

    invoke-direct {v0}, Lorg/apache/commons/beanutils/BeanUtilsBean$1;-><init>()V

    sput-object v0, Lorg/apache/commons/beanutils/BeanUtilsBean;->BEANS_BY_CLASSLOADER:Lorg/apache/commons/beanutils/ContextClassLoaderLocal;

    invoke-static {}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getInitCauseMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/beanutils/BeanUtilsBean;->INIT_CAUSE_METHOD:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    new-instance v0, Lorg/apache/commons/beanutils/ConvertUtilsBean;

    invoke-direct {v0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;-><init>()V

    new-instance v1, Lorg/apache/commons/beanutils/PropertyUtilsBean;

    invoke-direct {v1}, Lorg/apache/commons/beanutils/PropertyUtilsBean;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/beanutils/BeanUtilsBean;-><init>(Lorg/apache/commons/beanutils/ConvertUtilsBean;Lorg/apache/commons/beanutils/PropertyUtilsBean;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/beanutils/ConvertUtilsBean;)V
    .registers 3

    new-instance v0, Lorg/apache/commons/beanutils/PropertyUtilsBean;

    invoke-direct {v0}, Lorg/apache/commons/beanutils/PropertyUtilsBean;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/beanutils/BeanUtilsBean;-><init>(Lorg/apache/commons/beanutils/ConvertUtilsBean;Lorg/apache/commons/beanutils/PropertyUtilsBean;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/beanutils/ConvertUtilsBean;Lorg/apache/commons/beanutils/PropertyUtilsBean;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lorg/apache/commons/beanutils/BeanUtils;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    iput-object p1, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->convertUtilsBean:Lorg/apache/commons/beanutils/ConvertUtilsBean;

    iput-object p2, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->propertyUtilsBean:Lorg/apache/commons/beanutils/PropertyUtilsBean;

    return-void
.end method

.method private convertForCopy(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-eqz p1, :cond_6

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/beanutils/BeanUtilsBean;->convert(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    :cond_6
    return-object p1
.end method

.method private static dynaPropertyType(Lorg/apache/commons/beanutils/DynaProperty;Ljava/lang/Object;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/beanutils/DynaProperty;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/DynaProperty;->isMapped()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/DynaProperty;->getType()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_b
    if-nez p1, :cond_10

    const-class p0, Ljava/lang/String;

    goto :goto_14

    :cond_10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    :goto_14
    return-object p0
.end method

.method private static getInitCauseMethod()Ljava/lang/reflect/Method;
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Throwable;

    aput-object v3, v0, v2

    const-class v2, Ljava/lang/Throwable;

    const-string v3, "initCause"

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_11
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_11} :catch_25
    .catchall {:try_start_2 .. :try_end_11} :catchall_12

    return-object v0

    :catchall_12
    move-exception v0

    const-class v2, Lorg/apache/commons/beanutils/BeanUtils;

    invoke-static {v2}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v3

    if-eqz v3, :cond_24

    const-string v3, "Error getting the Throwable initCause() method"

    invoke-interface {v2, v3, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_24
    return-object v1

    :catch_25
    nop

    const-class v0, Lorg/apache/commons/beanutils/BeanUtils;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_37

    const-string v2, "Throwable does not have initCause() method in JDK 1.3"

    invoke-interface {v0, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    :cond_37
    return-object v1
.end method

.method public static getInstance()Lorg/apache/commons/beanutils/BeanUtilsBean;
    .registers 1

    sget-object v0, Lorg/apache/commons/beanutils/BeanUtilsBean;->BEANS_BY_CLASSLOADER:Lorg/apache/commons/beanutils/ContextClassLoaderLocal;

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/ContextClassLoaderLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/beanutils/BeanUtilsBean;

    return-object v0
.end method

.method public static setInstance(Lorg/apache/commons/beanutils/BeanUtilsBean;)V
    .registers 2

    sget-object v0, Lorg/apache/commons/beanutils/BeanUtilsBean;->BEANS_BY_CLASSLOADER:Lorg/apache/commons/beanutils/ContextClassLoaderLocal;

    invoke-virtual {v0, p0}, Lorg/apache/commons/beanutils/ContextClassLoaderLocal;->set(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public cloneBean(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cloning bean: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_26
    instance-of v0, p1, Lorg/apache/commons/beanutils/DynaBean;

    if-eqz v0, :cond_36

    move-object v0, p1

    check-cast v0, Lorg/apache/commons/beanutils/DynaBean;

    invoke-interface {v0}, Lorg/apache/commons/beanutils/DynaBean;->getDynaClass()Lorg/apache/commons/beanutils/DynaClass;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/beanutils/DynaClass;->newInstance()Lorg/apache/commons/beanutils/DynaBean;

    move-result-object v0

    goto :goto_3e

    :cond_36
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    :goto_3e
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->copyProperties(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected convert(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getConvertUtils()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->lookup(Ljava/lang/Class;)Lorg/apache/commons/beanutils/Converter;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v1, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "        USING CONVERTER "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    invoke-interface {v0, p2, p1}, Lorg/apache/commons/beanutils/Converter;->convert(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_24
    return-object p1
.end method

.method public copyProperties(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    if-eqz p1, :cond_dd

    if-eqz p2, :cond_d5

    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BeanUtils.copyProperties("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_2f
    instance-of v0, p2, Lorg/apache/commons/beanutils/DynaBean;

    const/4 v1, 0x0

    if-eqz v0, :cond_66

    move-object v0, p2

    check-cast v0, Lorg/apache/commons/beanutils/DynaBean;

    invoke-interface {v0}, Lorg/apache/commons/beanutils/DynaBean;->getDynaClass()Lorg/apache/commons/beanutils/DynaClass;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/beanutils/DynaClass;->getDynaProperties()[Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v2

    array-length v3, v2

    :goto_40
    if-ge v1, v3, :cond_d4

    aget-object v4, v2, v1

    invoke-virtual {v4}, Lorg/apache/commons/beanutils/DynaProperty;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v5

    invoke-virtual {v5, p2, v4}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->isReadable(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_63

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v5

    invoke-virtual {v5, p1, v4}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->isWriteable(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_63

    invoke-interface {v0, v4}, Lorg/apache/commons/beanutils/DynaBean;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, p1, v4, v5}, Lorg/apache/commons/beanutils/BeanUtilsBean;->copyProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_63
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    :cond_66
    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_98

    check-cast p2, Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_74
    :goto_74
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->isWriteable(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_74

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->copyProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_74

    :cond_98
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getPropertyDescriptors(Ljava/lang/Object;)[Ljava/beans/PropertyDescriptor;

    move-result-object v0

    array-length v2, v0

    :goto_a1
    if-ge v1, v2, :cond_d4

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "class"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b2

    goto :goto_d1

    :cond_b2
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v4

    invoke-virtual {v4, p2, v3}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->isReadable(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d1

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v4

    invoke-virtual {v4, p1, v3}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->isWriteable(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d1

    :try_start_c6
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v4

    invoke-virtual {v4, p2, v3}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getSimpleProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, p1, v3, v4}, Lorg/apache/commons/beanutils/BeanUtilsBean;->copyProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_d1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_c6 .. :try_end_d1} :catch_d1

    :catch_d1
    :cond_d1
    :goto_d1
    add-int/lit8 v1, v1, 0x1

    goto :goto_a1

    :cond_d4
    return-void

    :cond_d5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No origin bean specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_dd
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No destination bean specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public copyProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_6c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  copyProperty("

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

    iget-object v1, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    :cond_6c
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getResolver()Lorg/apache/commons/beanutils/expression/Resolver;

    move-result-object v0

    :goto_74
    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->hasNested(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8c

    :try_start_7a
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v1

    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->next(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->remove(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_8a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7a .. :try_end_8a} :catch_8b

    goto :goto_74

    :catch_8b
    return-void

    :cond_8c
    iget-object v1, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_c0

    iget-object v1, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    Target bean = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    Target name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    :cond_c0
    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->getIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    instance-of v3, p1, Lorg/apache/commons/beanutils/DynaBean;

    if-eqz v3, :cond_e3

    move-object p2, p1

    check-cast p2, Lorg/apache/commons/beanutils/DynaBean;

    invoke-interface {p2}, Lorg/apache/commons/beanutils/DynaBean;->getDynaClass()Lorg/apache/commons/beanutils/DynaClass;

    move-result-object p2

    invoke-interface {p2, v1}, Lorg/apache/commons/beanutils/DynaClass;->getDynaProperty(Ljava/lang/String;)Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object p2

    if-nez p2, :cond_de

    return-void

    :cond_de
    invoke-static {p2, p3}, Lorg/apache/commons/beanutils/BeanUtilsBean;->dynaPropertyType(Lorg/apache/commons/beanutils/DynaProperty;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p2

    goto :goto_118

    :cond_e3
    :try_start_e3
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getPropertyDescriptor(Ljava/lang/Object;Ljava/lang/String;)Ljava/beans/PropertyDescriptor;

    move-result-object p2
    :try_end_eb
    .catch Ljava/lang/NoSuchMethodException; {:try_start_e3 .. :try_end_eb} :catch_1ba

    if-nez p2, :cond_ee

    return-void

    :cond_ee
    invoke-virtual {p2}, Ljava/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object p2

    if-nez p2, :cond_118

    iget-object p1, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result p1

    if-eqz p1, :cond_117

    iget-object p1, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    target type for property \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\' is null, so skipping ths setter"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    :cond_117
    return-void

    :cond_118
    :goto_118
    iget-object v3, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v3

    if-eqz v3, :cond_14e

    iget-object v3, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    target propName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    :cond_14e
    const-string v3, "Cannot set "

    if-ltz v2, :cond_178

    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    invoke-direct {p0, p3, p2}, Lorg/apache/commons/beanutils/BeanUtilsBean;->convertForCopy(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    :try_start_15a
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object p3

    invoke-virtual {p3, p1, v1, v2, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->setIndexedProperty(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_161
    .catch Ljava/lang/NoSuchMethodException; {:try_start_15a .. :try_end_161} :catch_162

    goto :goto_1a3

    :catch_162
    move-exception p1

    new-instance p2, Ljava/lang/reflect/InvocationTargetException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Ljava/lang/reflect/InvocationTargetException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    throw p2

    :cond_178
    if-eqz v0, :cond_198

    :try_start_17a
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object p2

    invoke-virtual {p2, p1, v1, v0, p3}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->setMappedProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_181
    .catch Ljava/lang/NoSuchMethodException; {:try_start_17a .. :try_end_181} :catch_182

    goto :goto_1a3

    :catch_182
    move-exception p1

    new-instance p2, Ljava/lang/reflect/InvocationTargetException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Ljava/lang/reflect/InvocationTargetException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    throw p2

    :cond_198
    invoke-direct {p0, p3, p2}, Lorg/apache/commons/beanutils/BeanUtilsBean;->convertForCopy(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    :try_start_19c
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object p3

    invoke-virtual {p3, p1, v1, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->setSimpleProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1a3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_19c .. :try_end_1a3} :catch_1a4

    :goto_1a3
    return-void

    :catch_1a4
    move-exception p1

    new-instance p2, Ljava/lang/reflect/InvocationTargetException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Ljava/lang/reflect/InvocationTargetException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    throw p2

    :catch_1ba
    return-void
.end method

.method public describe(Ljava/lang/Object;)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    if-nez p1, :cond_8

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1

    :cond_8
    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Describing bean: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_2e
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    instance-of v1, p1, Lorg/apache/commons/beanutils/DynaBean;

    const/4 v2, 0x0

    if-eqz v1, :cond_56

    move-object v1, p1

    check-cast v1, Lorg/apache/commons/beanutils/DynaBean;

    invoke-interface {v1}, Lorg/apache/commons/beanutils/DynaBean;->getDynaClass()Lorg/apache/commons/beanutils/DynaClass;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/beanutils/DynaClass;->getDynaProperties()[Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v1

    array-length v3, v1

    :goto_44
    if-ge v2, v3, :cond_7f

    aget-object v4, v1, v2

    invoke-virtual {v4}, Lorg/apache/commons/beanutils/DynaProperty;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    :cond_56
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getPropertyDescriptors(Ljava/lang/Object;)[Ljava/beans/PropertyDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    array-length v4, v1

    :goto_63
    if-ge v2, v4, :cond_7f

    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v7

    invoke-virtual {v7, v3, v5}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getReadMethod(Ljava/lang/Class;Ljava/beans/PropertyDescriptor;)Ljava/lang/reflect/Method;

    move-result-object v5

    if-eqz v5, :cond_7c

    invoke-virtual {p0, p1, v6}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7c
    add-int/lit8 v2, v2, 0x1

    goto :goto_63

    :cond_7f
    return-object v0
.end method

.method public getArrayProperty(Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_c

    return-object p2

    :cond_c
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_44

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2b

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_2b
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getConvertUtils()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->convert(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_37
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    :cond_44
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6e

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    :goto_55
    if-ge v1, v0, :cond_6d

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_60

    aput-object p2, v2, v1

    goto :goto_6a

    :cond_60
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getConvertUtils()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->convert(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    :goto_6a
    add-int/lit8 v1, v1, 0x1

    goto :goto_55

    :cond_6d
    return-object v2

    :cond_6e
    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getConvertUtils()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->convert(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    return-object p2
.end method

.method public getConvertUtils()Lorg/apache/commons/beanutils/ConvertUtilsBean;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->convertUtilsBean:Lorg/apache/commons/beanutils/ConvertUtilsBean;

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

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getIndexedProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getConvertUtils()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->convert(Ljava/lang/Object;)Ljava/lang/String;

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

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getIndexedProperty(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getConvertUtils()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->convert(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
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

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getMappedProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getConvertUtils()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->convert(Ljava/lang/Object;)Ljava/lang/String;

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

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getMappedProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getConvertUtils()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->convert(Ljava/lang/Object;)Ljava/lang/String;

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

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getNestedProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getConvertUtils()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->convert(Ljava/lang/Object;)Ljava/lang/String;

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

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getNestedProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->propertyUtilsBean:Lorg/apache/commons/beanutils/PropertyUtilsBean;

    return-object v0
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

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getSimpleProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getConvertUtils()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->convert(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public initCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Z
    .registers 7

    sget-object v0, Lorg/apache/commons/beanutils/BeanUtilsBean;->INIT_CAUSE_METHOD:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    if-eqz p2, :cond_10

    const/4 v2, 0x1

    :try_start_8
    new-array v3, v2, [Ljava/lang/Object;

    aput-object p2, v3, v1

    invoke-virtual {v0, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_10

    return v2

    :catchall_10
    :cond_10
    return v1
.end method

.method public populate(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    if-eqz p1, :cond_55

    if-nez p2, :cond_5

    goto :goto_55

    :cond_5
    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BeanUtils.populate("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_30
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_38
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_4d

    goto :goto_38

    :cond_4d
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_38

    :cond_55
    :goto_55
    return-void
.end method

.method public setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6d

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "  setProperty("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_26

    const-string v2, "<NULL>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5f

    :cond_26
    instance-of v2, p3, Ljava/lang/String;

    if-eqz v2, :cond_31

    move-object v2, p3

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5f

    :cond_31
    instance-of v2, p3, [Ljava/lang/String;

    if-eqz v2, :cond_58

    move-object v2, p3

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    :goto_40
    array-length v4, v2

    if-ge v3, v4, :cond_52

    if-lez v3, :cond_4a

    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4a
    aget-object v4, v2, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    :cond_52
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5f

    :cond_58
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5f
    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    :cond_6d
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getResolver()Lorg/apache/commons/beanutils/expression/Resolver;

    move-result-object v0

    :goto_75
    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->hasNested(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_90

    :try_start_7b
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v2

    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->next(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_8a

    return-void

    :cond_8a
    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->remove(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_8e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7b .. :try_end_8e} :catch_8f

    goto :goto_75

    :catch_8f
    return-void

    :cond_90
    iget-object v2, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v2

    if-eqz v2, :cond_c4

    iget-object v2, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    Target bean = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    Target name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    :cond_c4
    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->getIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    instance-of v4, p1, Lorg/apache/commons/beanutils/DynaBean;

    if-eqz v4, :cond_f4

    move-object v0, p1

    check-cast v0, Lorg/apache/commons/beanutils/DynaBean;

    invoke-interface {v0}, Lorg/apache/commons/beanutils/DynaBean;->getDynaClass()Lorg/apache/commons/beanutils/DynaClass;

    move-result-object v0

    invoke-interface {v0, v2}, Lorg/apache/commons/beanutils/DynaClass;->getDynaProperty(Ljava/lang/String;)Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v0

    if-nez v0, :cond_e2

    return-void

    :cond_e2
    invoke-static {v0, p3}, Lorg/apache/commons/beanutils/BeanUtilsBean;->dynaPropertyType(Lorg/apache/commons/beanutils/DynaProperty;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    if-ltz v3, :cond_1ab

    const-class v4, Ljava/util/List;

    invoke-virtual {v4, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1ab

    const-class v0, Ljava/lang/Object;

    goto/16 :goto_1ab

    :cond_f4
    instance-of v4, p1, Ljava/util/Map;

    if-eqz v4, :cond_fc

    const-class v0, Ljava/lang/Object;

    goto/16 :goto_1ab

    :cond_fc
    if-eqz p1, :cond_114

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_114

    if-ltz v3, :cond_114

    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto/16 :goto_1ab

    :cond_114
    :try_start_114
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getPropertyDescriptor(Ljava/lang/Object;Ljava/lang/String;)Ljava/beans/PropertyDescriptor;

    move-result-object v4
    :try_end_11c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_114 .. :try_end_11c} :catch_26a

    if-nez v4, :cond_11f

    return-void

    :cond_11f
    instance-of v5, v4, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;

    const-string v6, "Skipping read-only property"

    if-eqz v5, :cond_141

    check-cast v4, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;

    invoke-virtual {v4}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->getMappedWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_13b

    iget-object p1, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_13a

    iget-object p1, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_13a
    return-void

    :cond_13b
    invoke-virtual {v4}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->getMappedPropertyType()Ljava/lang/Class;

    move-result-object v0

    goto/16 :goto_1ab

    :cond_141
    if-ltz v3, :cond_162

    instance-of v5, v4, Ljava/beans/IndexedPropertyDescriptor;

    if-eqz v5, :cond_162

    check-cast v4, Ljava/beans/IndexedPropertyDescriptor;

    invoke-virtual {v4}, Ljava/beans/IndexedPropertyDescriptor;->getIndexedWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_15d

    iget-object p1, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_15c

    iget-object p1, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_15c
    return-void

    :cond_15d
    invoke-virtual {v4}, Ljava/beans/IndexedPropertyDescriptor;->getIndexedPropertyType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1ab

    :cond_162
    if-ltz v3, :cond_173

    const-class v5, Ljava/util/List;

    invoke-virtual {v4}, Ljava/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_173

    const-class v0, Ljava/lang/Object;

    goto :goto_1ab

    :cond_173
    if-eqz v0, :cond_193

    invoke-virtual {v4}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_189

    iget-object p1, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_188

    iget-object p1, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_188
    return-void

    :cond_189
    if-nez p3, :cond_18e

    const-class v0, Ljava/lang/Object;

    goto :goto_1ab

    :cond_18e
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1ab

    :cond_193
    invoke-virtual {v4}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_1a7

    iget-object p1, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_1a6

    iget-object p1, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_1a6
    return-void

    :cond_1a7
    invoke-virtual {v4}, Ljava/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object v0

    :cond_1ab
    :goto_1ab
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_1e8

    if-gez v3, :cond_1e8

    if-nez p3, :cond_1c4

    const/4 p3, 0x0

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getConvertUtils()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->convert([Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    goto/16 :goto_24a

    :cond_1c4
    instance-of v1, p3, Ljava/lang/String;

    if-eqz v1, :cond_1d2

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getConvertUtils()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->convert(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    goto/16 :goto_24a

    :cond_1d2
    instance-of v1, p3, [Ljava/lang/String;

    if-eqz v1, :cond_1e3

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getConvertUtils()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v1

    check-cast p3, [Ljava/lang/String;

    check-cast p3, [Ljava/lang/String;

    invoke-virtual {v1, p3, v0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->convert([Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_24a

    :cond_1e3
    invoke-virtual {p0, p3, v0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->convert(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_24a

    :cond_1e8
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_224

    instance-of v3, p3, Ljava/lang/String;

    if-nez v3, :cond_215

    if-nez p3, :cond_1f5

    goto :goto_215

    :cond_1f5
    instance-of v3, p3, [Ljava/lang/String;

    if-eqz v3, :cond_20c

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getConvertUtils()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v3

    check-cast p3, [Ljava/lang/String;

    check-cast p3, [Ljava/lang/String;

    aget-object p3, p3, v1

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v3, p3, v0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->convert(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_24a

    :cond_20c
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->convert(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_24a

    :cond_215
    :goto_215
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getConvertUtils()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v1

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, p3, v0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->convert(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_24a

    :cond_224
    instance-of v3, p3, Ljava/lang/String;

    if-eqz v3, :cond_233

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getConvertUtils()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v1

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v1, p3, v0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->convert(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_24a

    :cond_233
    instance-of v3, p3, [Ljava/lang/String;

    if-eqz v3, :cond_246

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getConvertUtils()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v3

    check-cast p3, [Ljava/lang/String;

    check-cast p3, [Ljava/lang/String;

    aget-object p3, p3, v1

    invoke-virtual {v3, p3, v0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->convert(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_24a

    :cond_246
    invoke-virtual {p0, p3, v0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->convert(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    :goto_24a
    :try_start_24a
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_251
    .catch Ljava/lang/NoSuchMethodException; {:try_start_24a .. :try_end_251} :catch_252

    return-void

    :catch_252
    move-exception p1

    new-instance p2, Ljava/lang/reflect/InvocationTargetException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot set "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Ljava/lang/reflect/InvocationTargetException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    throw p2

    :catch_26a
    return-void
.end method
