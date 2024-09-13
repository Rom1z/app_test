.class Lorg/apache/commons/beanutils/BeanIntrospectionData;
.super Ljava/lang/Object;
.source "BeanIntrospectionData.java"


# instance fields
.field private final descriptors:[Ljava/beans/PropertyDescriptor;

.field private final writeMethodNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/beans/PropertyDescriptor;)V
    .registers 3

    invoke-static {p1}, Lorg/apache/commons/beanutils/BeanIntrospectionData;->setUpWriteMethodNames([Ljava/beans/PropertyDescriptor;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/beanutils/BeanIntrospectionData;-><init>([Ljava/beans/PropertyDescriptor;Ljava/util/Map;)V

    return-void
.end method

.method constructor <init>([Ljava/beans/PropertyDescriptor;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/beans/PropertyDescriptor;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/beanutils/BeanIntrospectionData;->descriptors:[Ljava/beans/PropertyDescriptor;

    iput-object p2, p0, Lorg/apache/commons/beanutils/BeanIntrospectionData;->writeMethodNames:Ljava/util/Map;

    return-void
.end method

.method private static setUpWriteMethodNames([Ljava/beans/PropertyDescriptor;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/beans/PropertyDescriptor;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_1f

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_1c

    invoke-virtual {v3}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_1f
    return-object v0
.end method


# virtual methods
.method public getDescriptor(Ljava/lang/String;)Ljava/beans/PropertyDescriptor;
    .registers 7

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanIntrospectionData;->getDescriptors()[Ljava/beans/PropertyDescriptor;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_18

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    return-object v3

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_18
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDescriptors()[Ljava/beans/PropertyDescriptor;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanIntrospectionData;->descriptors:[Ljava/beans/PropertyDescriptor;

    return-object v0
.end method

.method public getWriteMethod(Ljava/lang/Class;Ljava/beans/PropertyDescriptor;)Ljava/lang/reflect/Method;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/beans/PropertyDescriptor;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_21

    iget-object v1, p0, Lorg/apache/commons/beanutils/BeanIntrospectionData;->writeMethodNames:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_21

    invoke-virtual {p2}, Ljava/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lorg/apache/commons/beanutils/MethodUtils;->getAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_21

    :try_start_1e
    invoke-virtual {p2, v0}, Ljava/beans/PropertyDescriptor;->setWriteMethod(Ljava/lang/reflect/Method;)V
    :try_end_21
    .catch Ljava/beans/IntrospectionException; {:try_start_1e .. :try_end_21} :catch_21

    :catch_21
    :cond_21
    return-object v0
.end method
