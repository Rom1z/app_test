.class public Lorg/apache/commons/beanutils/BeanPredicate;
.super Ljava/lang/Object;
.source "BeanPredicate.java"

# interfaces
.implements Lorg/apache/commons/collections/Predicate;


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;

.field private predicate:Lorg/apache/commons/collections/Predicate;

.field private propertyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/commons/collections/Predicate;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/BeanPredicate;->log:Lorg/apache/commons/logging/Log;

    iput-object p1, p0, Lorg/apache/commons/beanutils/BeanPredicate;->propertyName:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/commons/beanutils/BeanPredicate;->predicate:Lorg/apache/commons/collections/Predicate;

    return-void
.end method


# virtual methods
.method public evaluate(Ljava/lang/Object;)Z
    .registers 4

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanPredicate;->propertyName:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/commons/beanutils/PropertyUtils;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanPredicate;->predicate:Lorg/apache/commons/collections/Predicate;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result p1
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_c} :catch_37
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_c} :catch_29
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_c} :catch_1b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_c} :catch_d

    return p1

    :catch_d
    move-exception p1

    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanPredicate;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "Property not found."

    invoke-interface {v0, v1, p1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1b
    move-exception p1

    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanPredicate;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "Exception occurred in property\'s getter"

    invoke-interface {v0, v1, p1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_29
    move-exception p1

    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanPredicate;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "Unable to access the property provided."

    invoke-interface {v0, v1, p1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_37
    move-exception p1

    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanPredicate;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "ERROR: Problem during evaluation."

    invoke-interface {v0, v1, p1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getPredicate()Lorg/apache/commons/collections/Predicate;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanPredicate;->predicate:Lorg/apache/commons/collections/Predicate;

    return-object v0
.end method

.method public getPropertyName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanPredicate;->propertyName:Ljava/lang/String;

    return-object v0
.end method

.method public setPredicate(Lorg/apache/commons/collections/Predicate;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/commons/beanutils/BeanPredicate;->predicate:Lorg/apache/commons/collections/Predicate;

    return-void
.end method

.method public setPropertyName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/commons/beanutils/BeanPredicate;->propertyName:Ljava/lang/String;

    return-void
.end method
